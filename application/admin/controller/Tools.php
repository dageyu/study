<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Config;
use think\facade\Session;
class Tools extends Base {

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
		if($this->request->isPost() && !empty($tables) && is_array($tables)){
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
            else {  //创建锁文件
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
        $sql .= "-- Host     : " . Config::get('database.hostname') . "\n";
        $sql .= "-- Port     : " . Config::get('database.hostport') . "\n";
        $sql .= "-- Database : " . Config::get('database.database') . "\n";
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
    private function backup($table, $start){
        //备份表结构
        if(0 == $start){
            $result = Db::query("SHOW CREATE TABLE `{$table}`");
            $sql  = "\n";
            $sql .= "-- -----------------------------\n";
            $sql .= "-- Table structure for {$table}\n";
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
                $sql .= "-- Records of {$table}\n";
                $sql .= "-- -----------------------------\n";
                $this->write($sql);
            }
            //备份数据记录
            $result = Db::query("SELECT * FROM `{$table}` LIMIT {$start}, 1000");
            foreach ($result as $row) {
                $row = array_map(array($this,'changeType'), $row);
                $sql = "INSERT INTO `{$table}` VALUES (" . rtrim(implode(' ',$row),',') . ");\n";
                if(false === $this->write($sql)){
                    return false;
                }
            }
        }
        //备份下一表
        return 0;
    }

    /**
     * 数据类型转化
     */
    function changeType($val){
        if(is_int($val)){
            $val = $val.',';
        }
        else{
            $val = '\''.$val.'\',';
        }
        return $val;
    }

    /**
     * 优化表  修复表
     * @param  string  $table 表名
     * @param  string  $type  类型：优化  修复
     * @return boolean        0 - 失败  1 - 成功
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

    /**
     * 还原表结构：首页
     * @return  array       $lists      文件清单
     * @return  integer     $filenum    文件数量
     * @return  float       $total      空间大小   
     */
    public function restore(){
		$path = Config::get('DATA_BACKUP_PATH');
		if(!is_dir($path)){
			mkdir($path, 0755, true);
		}
		$path = realpath($path);
		$flag = \FilesystemIterator::KEY_AS_FILENAME;
		$glob = new \FilesystemIterator($path,  $flag);
		$list = array();$filenum = $total = 0;
		foreach ($glob as $name => $file) {
			if(preg_match('/^\d{8,8}-\d{6,6}-\d+\.sql$/', $name)){
				$name = sscanf($name, '%4s%2s%2s-%2s%2s%2s-%d');
				$date = "{$name[0]}-{$name[1]}-{$name[2]}";
				$time = "{$name[3]}:{$name[4]}:{$name[5]}";
                $part = $name[6];
				$info = pathinfo($file);
				if(isset($list["{$date} {$time}"])){
					$info = $list["{$date} {$time}"];
					$info['part'] = max($info['part'], $part);
					$info['size'] = $info['size'] + $file->getSize();
				} else {
					$info['part'] = $part;
					$info['size'] = $file->getSize();
				}
				$info['compress'] = ($info['extension'] === 'sql') ? '-' : $info['extension'];
				$info['time']  = strtotime("{$date} {$time}");
				$filenum++;
				$total += $info['size'];
				$list["{$date} {$time}"] = $info;
			}
		}
		$this->assign('lists', $list);
		$this->assign('filenum',$filenum);
		$this->assign('total',$total);
		return $this->fetch();
	}

	/**
	 * 执行还原数据库操作
	 * @param   integer  $time  备份时间
	 * @param   null integer    $start
     * @param   integer    $start
	 */
	public function recoverSql($time = 0, $start = null){
		function_exists('set_time_limit') && set_time_limit(0);
		if(is_numeric($time) && is_null($start)){ 
			//获取备份文件信息
			$name  = date('Ymd-His', $time) . '-*.sql';
			$path  = realpath(Config::get('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR . $name;
			$files = glob($path);
			foreach($files as $name){
				$basename = basename($name);
			}
			if($name){
                Session::set('recover_file', $name); //缓存备份列表
                return array('status' => 1,'msg' => '初始化完成！','start' => 0);
			} else {
                return array('status' => 0,'msg' => '备份文件可能已经损坏，请检查！');
            }
		} elseif(is_numeric($start)) {
            $name  = Session::get('recover_file');
            $start = $this->importSql($name,$start);
			if(false === $start){
                return array('status' => 0,'msg' => '还原数据出错！');
            } elseif(0 === $start){
                Session::set('recover_file',null);
                return array('status' => 2,'msg' => '还原完成！');
            } else {
				if($start[1]){
					$rate = floor(100 * ($start[0] / $start[1]));
                    return array('status' => 1,'msg' => "正在还原... ({$rate}%)" ,'start' => $start[0]);
				} 
			}
		} else {
            return array('status' => 0 , 'msg'=>'参数错误!');
		}
    }

    /**
	 * 执行还原数据库
	 * @param   string   $file  还原文件
	 * @param   integer  $start
	 */
    private function importSql($file,$start){
        $size = filesize($file);
        $gz   = fopen($file, 'r');
        $sql  = '';
        if($start){
            fseek($gz, $start);
        }
        for($i = 0; $i < 1000; $i++){
            $sql .= fgets($gz);
            if(preg_match('/.*;$/', trim($sql))){
                if(false !== Db::execute($sql)){
                    $start += strlen($sql);
                } else {
                    return false;
                }
                $sql = '';
            } else if(feof($gz)){
                return 0;
            }
        }
        return array($start, $size);
    }

	/**
	 * 下载
	 * @param  integer $time 备份时间
	 */
	public function downSql($time = 0) {
		$name  = date('Ymd-His', $time) . '-*.sql*';
		$path  = realpath(Config::get('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR . $name;
        $files = glob($path);
		if(is_array($files)){
			foreach ($files as $filePath){
                $filename = basename($filePath);
                header("Content-type: application/octet-stream");
                header('Content-Disposition: attachment; filename="' . $filename . '"');
                header("Content-Length: " . filesize($filePath));
                readfile($filePath);
			}
        }
	}

	/**
	 * 删除备份文件
	 * @param  integer $time 备份时间
     * @return array   $res
	 */
	public function deleteSql($time = 0){
		if($time){
			$name  = date('Ymd-His', $time) . '-*.sql*';
			$path  = realpath(Config::get('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR . $name;
			array_map("unlink", glob($path));
			if(count(glob($path))){
			    $res = array('status' => 0 , 'msg' => '删除失败!');
            } else {
                $res = array('status' => 1 , 'msg' => '删除成功!');
            }
		} else {
			$res = array('status' => 0 , 'msg' => '参数错误!');
        }
        return $res;
    }

    /**
     * 导入Excel文件示例页
     */
    public function importData(){
        return $this->fetch();
    }

    /**
	 * 导入文件
     * @param  integer $tbname 表名
     * @return array   $fileName 文件名
	 */
	public function uploadFile(){
        header("Content-type:text/html;charset=utf-8");
        $fileName = $this->request->param('file');
        if(!file_exists($fileName)){
            return "文件不存在";
        }
        //引入PHPExcel
        require_once '../extend/PHPExcel.php';
        require_once '../extend/PHPExcel/IOFactory.php';
        // //载入当前文件
        $phpExcel = \PHPExcel_IOFactory::load($fileName);
        //获取表格数量
        //$sheetCount = $phpExcel->getSheetCount();
        //设置为默认表，获取表中的第一个工作表，如果要获取第二个，把0改为1，依次类推
        $phpExcel->setActiveSheetIndex(0);
        //获取行数
        $row = $phpExcel->getActiveSheet()->getHighestRow();
        //获取列数
        //$column = $phpExcel->getActiveSheet()->getHighestColumn();
        // return "表格的数目为：$sheetCount"."表格的行数：$row"."列数：$column";
        //行数循环
        $str    = '';
        $data   = [];
        $count  = 0;
        for($i = 1; $i <= $row; $i++){
            //列数不能循环，只能指定
            $data['book_id']    = $phpExcel->getActiveSheet()->getCell('A'.$i)->getValue();//返回每一个单元格的值
            $data['sort']       = $phpExcel->getActiveSheet()->getCell('B'.$i)->getValue();//返回每一个单元格的值
            $data['title']      = $phpExcel->getActiveSheet()->getCell('C'.$i)->getValue();//返回每一个单元格的值
            $data['content']    = $phpExcel->getActiveSheet()->getCell('D'.$i)->getValue();//返回每一个单元格的值
            $data['checked']    = $phpExcel->getActiveSheet()->getCell('E'.$i)->getValue();//返回每一个单元格的值
            $data['addtime']    = $phpExcel->getActiveSheet()->getCell('F'.$i)->getValue();//返回每一个单元格的值
            $data['sign']       = $phpExcel->getActiveSheet()->getCell('G'.$i)->getValue();//返回每一个单元格的值
            $data['is_ok']      = $phpExcel->getActiveSheet()->getCell('H'.$i)->getValue();//返回每一个单元格的值
            $data['is_delete']  = $phpExcel->getActiveSheet()->getCell('I'.$i)->getValue();//返回每一个单元格的值
            $count += Db::table('study_book_knows')->insert($data);
        }
        if($count){
            $res = array('status' => 1 , 'msg' => "您往表中成功导入了$count"."条记录！");
        }
        else{
            $res = array('status' => 0 , 'msg' => '导入失败');
        }
        return $res;
    }

    
}