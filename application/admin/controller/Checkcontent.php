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
        $path = Config::get('DATA_BACKUP_PATH');
        // if(!is_dir($path)){
        //     // mkdir($path, 0755, true);
        //     echo 11111;
        // }
			//读取备份配置
			$config = array(
					'path'     => realpath($path) . DIRECTORY_SEPARATOR,
					'part'     => Config::get('DATA_BACKUP_PART_SIZE')
			);
        return __FILE__;

    }
    public function indexf(){
        $result = Db::query("SELECT COUNT(*) AS count FROM `study_first_module`");
        return var_dump($result);
    }
}
