<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Config;
class Quote extends Controller {

    /**
     * 引用管理：
     */
    public function index(){
        // return $this->fetch();
        // var_dump(Config::get());
        echo $_SERVER['SCRIPT_FILENAME'];
        // return Config::get('runtimePath');
    }

    /**
     * 图标展示：
     */
    public function icon(){
        return $this->fetch();
    }
}