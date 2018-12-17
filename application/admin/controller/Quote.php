<?php
namespace app\admin\controller;
use think\Controller;
class Quote extends Controller {

    /**
     * 引用管理：
     */
    public function index(){
        return $this->fetch();
    }

    /**
     * 图标展示：
     */
    public function icon(){
        return $this->fetch();
    }
}