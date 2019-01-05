<?php
namespace app\admin\controller;
use think\Controller;

class PhpSource extends Controller {

    /**
     * 首页：
     */
    public function index(){
        return $this->fetch();
    }

}
