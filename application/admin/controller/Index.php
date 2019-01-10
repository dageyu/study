<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Session;
class Index extends Base {

    public function index(){
        $sys_info = $this->get_sys_info();
        $this->assign('sys_info',$sys_info);
        return $this->fetch();
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
