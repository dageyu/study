<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Config;
use think\facade\Session;
class Tools extends Controller {

	/**
     * 当前打开文件大小
     * @var integer
     */
	private $size = 0;

	/**
     * 文件指针
     * @var resource
     */
    private $fp;

    /**
     * 数据管理：首页
     */
    public function index(){
        $dbtables = Db::query('SHOW TABLE STATUS');
        $total = 0;
        foreach ($dbtables as $k => $v) {
            $dbtables[$k]['size'] = format_bytes($v['Data_length'] + $v['Index_length']);
            $total += $v['Data_length'] + $v['Index_length'];
        }
        $this->assign('lists', $dbtables);
        $this->assign('total', format_bytes($total));
        $this->assign('tableNum', count($dbtables));
		return $this->fetch();
    }
    
    /**
     * 表结构初始化
     * @param  string  $tables 表名数组
     * @param  integer $id     表名键
     * @param  integer $start  起始行数
     * @return boolean        false - 初始化失败
     */
	public function export($tables = null, $id = null, $start = null){
		//防止备份数据过程超时
		function_exists('set_time_limit') && set_time_limit(0);
		if($this->request->isPost() && !empty($tables) && is_array($tables)){ //初始化
			$path = Config::get('DATA_BACKUP_PATH');
			if(!is_dir($path)){
				mkdir($path, 0755, true);
			}
			//读取备份配置
			$config = array(
					'path'     => realpath($path) . DIRECTORY_SEPARATOR,
					'part'     => Config::get('DATA_BACKUP_PART_SIZE')
			);
			//检查是否有正在执行的任务
			$lock = "{$config['path']}backup.lock";
			if(is_file($lock)){
				return array('info'=>'检测到有一个备份任务正在执行，请稍后再试！', 'status'=>0, 'url'=>'');
            } 
            else {
				file_put_contents($lock, $_SERVER['REQUEST_TIME']);
			}
			//检查备份目录是否可写
			if(!is_writeable($config['path'])){
				return array('info'=>'备份目录不存在或不可写，请检查后重试！', 'status'=>0, 'url'=>'');
			}
			Session::set('backup_config', $config);
			//生成备份文件信息
			$file = array(
				'name' => date('Ymd-His', $_SERVER['REQUEST_TIME']),
				'part' => 1,
			);
			Session::set('backup_file', $file);
			//缓存要备份的表
            Session::set('backup_tables', $tables);
			//创建备份文件
			if(false !== $this->create()){
				$tab = array('id' => 0, 'start' => 0);
				return array('tables' => $tables, 'tab' => $tab, 'info'=>'初始化成功！', 'status'=>1, 'url'=>'');
			} else {
				return array('info'=>'初始化失败，备份文件创建失败！', 'status'=>0, 'url'=>'');
			}
        } 
        else if ($this->request->isGet() && is_numeric($id) && is_numeric($start)) { //备份数据
			$tables = Session::get('backup_tables');
			//备份指定表
			$start  = $this->backup($tables[$id], $start);
            if(false === $start){ //出错
                return array('info'=>'备份出错！', 'status'=>0, 'url'=>'');
            } 
            else if (0 === $start) { //下一表
				if(isset($tables[++$id])){
					$tab = array('id' => $id, 'start' => 0);
					$rate = floor(100 * ($id / count($tables)));
					return array('tab' => $tab, 'info'=>"正在备份...({$rate}%)", 'status'=>1, 'url'=>'');
				} else { //备份完成，清空缓存
					unlink(Session::get('backup_config.path') . 'backup.lock');
					Session::set('backup_tables', null);
					Session::set('backup_file', null);
                    Session::set('backup_config', null);
                    return array('info'=>'备份完成！', 'status'=>2, 'url'=>'');
				}
            } 
        } 
		else {
			return array('info'=>'参数错误！', 'status'=>0, 'url'=>'');
		}
	}

	/**
     * 写入初始数据
     * @return boolean true - 写入成功，false - 写入失败
     */
    private function create(){
        $sql  = "-- -----------------------------\n";
        $sql .= "-- Think MySQL Data Transfer \n";
        $sql .= "-- \n";
        $sql .= "-- Host     : " . Config::get('hostname') . "\n";
        $sql .= "-- Port     : " . Config::get('hostport') . "\n";
        $sql .= "-- Database : " . Config::get('database') . "\n";
        $sql .= "-- \n";
        $sql .= "-- Part : #{ " . Session::get('backup_file.part') . "\n";
        $sql .= "-- Date : " . date("Y-m-d H:i:s") . "\n";
        $sql .= "-- -----------------------------\n\n";
        $sql .= "SET FOREIGN_KEY_CHECKS = 0;\n\n";
        return $this->write($sql);
	}
	
    /**
     * 写入SQL语句
     * @param  string $sql 要写入的SQL语句
     * @return boolean     true - 写入成功，false - 写入失败！
     */
    private function write($sql){
        $size = strlen($sql);
        $this->open($size);
        return @fwrite($this->fp, $sql);
    }

	/**
     * 打开一个卷，用于写入数据
     * @param  integer $size 写入数据的大小
     */
    private function open($size){
		if($this->fp){
            $this->size += $size;
            if($this->size > Session::get('backup_config.part')){
                @fclose($this->fp);
                $this->fp = null;
                Session::set('backup_file.part',Session::get('backup_file.part') + 1);
                Session::set('backup_file', Session::get('backup_file'));
                $this->create();
            }
        } else {
			$backuppath = Session::get('backup_config.path');
			$filename  = $backuppath.Session::get('backup_file.name') . "-" . Session::get('backup_file.part') . ".sql";
			$this->fp = @fopen($filename, 'a');
			$this->size = filesize($filename) + $size;
		}
	}
	
	/**
     * 备份表结构
     * @param  string  $table 表名
     * @param  integer $start 起始行数
     * @return boolean        false - 备份失败
     */
    public function backup($table, $start){
        //备份表结构
        if(0 == $start){
            $result = Db::query("SHOW CREATE TABLE `{$table}`");
            $sql  = "\n";
            $sql .= "-- -----------------------------\n";
            $sql .= "-- Table structure for `{$table}`\n";
            $sql .= "-- -----------------------------\n";
            $sql .= "DROP TABLE IF EXISTS `{$table}`;\n";
            $sql .= trim($result[0]['Create Table']) . ";\n\n";
            if(false === $this->write($sql)){
                return false;
            }
        }
        //数据总数
        $result = Db::query("SELECT COUNT(*) AS count FROM `{$table}`");
        $count  = $result['0']['count'];
        //备份表数据
        if($count){
            //写入数据注释
            if(0 == $start){
                $sql  = "-- -----------------------------\n";
                $sql .= "-- Records of `{$table}`\n";
                $sql .= "-- -----------------------------\n";
                $this->write($sql);
            }
            //备份数据记录
            $result = Db::query("SELECT * FROM `{$table}` LIMIT {$start}, 1000");
            foreach ($result as $row) {
                $row = array_map('addslashes', $row);
                $sql = "INSERT INTO `{$table}` VALUES ('" . str_replace(array("\r","\n"),array('\r','\n'),implode("', '", $row)) . "');\n";
                if(false === $this->write($sql)){
                    return false;
                }
            }
        }
        //备份下一表
        return 0;
    }

    /**
     * 优化表  修复表
     * @param  string  $table 表名
     * @param  string  $type  类型：优化  修复
     * @return boolean        0 - 失败
     */
    public function manage($table, $type){
        $strTable = is_array($table) ? implode(',', $table) : $table;
        if($type == 'optimize'){
            if (!DB::query("OPTIMIZE TABLE {$strTable} ")) {
                $res = array('status' => 0 , 'msg' => '优化表失败!');
            }
            else{
                $res = array('status' => 1 , 'msg' => '优化表成功!');
            }
        }
        else{
            if (!DB::query("REPAIR TABLE {$strTable} ")) {
                $res = array('status' => 0 , 'msg' => '修复表失败!');
            }
            else{
                $res = array('status' => 1 , 'msg' => '修复表成功!');
            }
        }
    	return $res;
    }

	
}