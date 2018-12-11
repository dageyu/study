<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Index extends Controller {
    
    public function index(){
        $sys_info = $this->get_sys_info();
        return $this->fetch('index',compact('sys_info'));
    }

    /**
     * 系统配置信息
     */
    public function get_sys_info(){
        $sys_info['os']             = PHP_OS;
        $sys_info['web_server']     = $_SERVER['SERVER_SOFTWARE'];
        $sys_info['domain'] 		= $_SERVER['HTTP_HOST'];
        $sys_info['ip'] 			= GetHostByName($_SERVER['SERVER_NAME']);
		$sys_info['phpv']           = phpversion();    
		$mysqlinfo                  = Db::query("SELECT VERSION() as version");
		$sys_info['mysql_version']  = $mysqlinfo[0]['version'];
        return $sys_info;
    }

    
}
