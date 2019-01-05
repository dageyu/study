<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Session;
use think\facade\Config;
class Checkcontent extends Controller {

    public function index(){
        // $result = Db::query("SHOW CREATE TABLE `study_first_module`");
        // return var_dump($result);
        // Session::set('tt',1);
        // Session::set('tt',Session::get('tt') + 1);
        // echo realpath();
        // return realpath('20181214-180802-1.sql');
        // $path = Config::get('DATA_BACKUP_PATH');
        // if(!is_dir($path)){
        //     // mkdir($path, 0755, true);
        //     echo 11111;
        // }
			//读取备份配置
		// 	$config = array(
		// 			'path'     => realpath($path) . DIRECTORY_SEPARATOR,
		// 			'part'     => Config::get('DATA_BACKUP_PART_SIZE')
		// 	);
        // return __FILE__;
        // echo readfile();

        $name  = date('Ymd-His', 1545729295) . '-*.sql*';
        $path  = realpath(Config::get('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR . $name;
        echo $path.'<br/>';
        $files = glob($path);
        var_dump($files);
        echo '<br/><br/><br/><br/><br/>';
		if(is_array($files)){
			foreach ($files as $filePath){
                readfile($filePath);
				// if (!file_exists($filePath)) {
                //     $res = array('status' => 0 , 'msg' => '该文件不存在，可能是被删除!');
				// }else{
                //     $filename = basename($filePath);
                //     echo $filename;
                //     echo '<br/><br/><br/><br/><br/>';
                //     echo filesize($filePath);
				// 	header("Content-type: application/octet-stream");
				// 	header('Content-Disposition: attachment; filename="' . $filename . '"');
				// 	header("Content-Length: " . filesize($filePath));
				// 	// readfile($filePath);
                // }
                echo '<br/><br/><br/><br/><br/>';
                echo strlen(readfile($filePath),'utf-8');
			}
		}

    }
    public function indexf(){
        $result = Db::query("SELECT COUNT(*) AS count FROM `study_first_module`");
        return var_dump($result);
    }

    public function recoverSql($time = 1545812900, $part = null, $start = null){
		function_exists('set_time_limit') && set_time_limit(0);
		// if(is_numeric($time) && is_null($part) && is_null($start)){ 
			//获取备份文件信息
			$name  = date('Ymd-His', $time) . '-*.sql';
			$path  = realpath(Config::get('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR . $name;
            $files = glob($path);
            echo $name.'<br/>';
			foreach($files as $name){
				$basename = basename($name);
				// $match    = sscanf($basename, '%4s%2s%2s-%2s%2s%2s-%d');
            }
            echo $basename.'<br/>';
            // var_dump($match);
            // echo '<br/>';
            // echo '<br/>';
            echo $name.'<br/>';
            $gz   = fopen($name, 'r');
            $sql = '';
            // $sql .= fgets($gz);
            // echo $sql;
            for($i = 0; $i < 51; $i++){
                $sql .= fgets($gz);
                if(preg_match('/.*;$/', trim($sql))){
                    if(false !== Db::execute($sql)){
                        $start += strlen($sql);
                    } else {
                        echo 1;
                    }
                    $sql = '';
                }
                else{
                    echo 0;
                } 
                // else if(feof($gz)){
                //     return 0;
                
                // }
            }
            echo $start.'<br/>';
            echo $sql;
			// if(count($list) === $last[0]){
            //     Session::set('backup_list', $list); //缓存备份列表
            //     return array('status' => 1,'msg' => '初始化完成！','part' => 1, 'start' => 0);
			// } else {
            //     return array('status' => 0,'msg' => '备份文件可能已经损坏，请检查！');
            // }
		// } elseif(is_numeric($part) && is_numeric($start)) {
		// 	$list  = Session::get('backup_list');
		// 	$db = new Backup($list[$part], array(
		// 			'path'     => realpath(C('DATA_BACKUP_PATH')) . DIRECTORY_SEPARATOR,
		// 			'compress' => $list[$part][2]));
		// 	$start = $db->import($start);
		// 	if(false === $start){
		// 		$this->error('还原数据出错！');
		// 	} elseif(0 === $start) { //下一卷
		// 		if(isset($list[++$part])){
		// 			$data = array('part' => $part, 'start' => 0);
		// 			$this->success("正在还原...#{$part}", null, $data);
		// 		} else {
		// 			session('backup_list', null);
		// 			$this->success('还原完成！');
		// 		}
		// 	} else {
		// 		$data = array('part' => $part, 'start' => $start[0]);
		// 		if($start[1]){
		// 			$rate = floor(100 * ($start[0] / $start[1]));
		// 			$this->success("正在还原...#{$part} ({$rate}%)", null, $data);
		// 		} else {
		// 			$data['gz'] = 1;
		// 			$this->success("正在还原...#{$part}", null, $data);
		// 		}
		// 	}
		// } else {
        //     $res = array('status' => 0 , 'msg'=>'参数错误!');
		// }
    }

    public function ttt(){
        $table = Config::get('database.prefix').'role';
        $table_link = Config::get('database.prefix').'first_module';
        $alias = [$table => 'a' , $table_link => 'b']; 
        $field = 'a.*,fm_name';
        $join = ['link' => 'b' , 'join'=> 'a.fm_id = b.fm_id'];
        $where = 'a.is_delete = 0 and b.is_delete = 0';
        $order = 'a.role_addtime desc';
        // $lists = Look::oneVsOne($table,$alias,$field,$join,$where,'','',$order);
        echo $table;
        echo '<br/>';
        var_dump($alias);
        echo '<br/>';
        var_dump($join);
    }

    function changetype($val){
        if(is_int($val)){
            $val = $val.',';
        }
        else{
            $val = '\''.$val.'\',';
        }
        return $val;
    }

    public function shuzhi(){
        //字符串类型的数值，看看执行的是真还是假
        $str = '18.8';
        if(is_numeric($str)){
            echo '执行真区间';
        }
        echo '<br/>';
        if(is_int($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';

        $str = 7;
        if(is_numeric($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';
        if(is_int($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';

        $str = 7.5;
        if(is_numeric($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';
        if(is_int($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';

        $str = '';
        if(is_null($str)){
            echo '执行真区间';
        }else{
            echo '执行假区间';
        }
        echo '<br/>';
        // if(is_int($str)){
        //     echo '执行真区间';
        // }else{
        //     echo '执行假区间';
        // }
        // echo '<br/>';


        
    }
}
