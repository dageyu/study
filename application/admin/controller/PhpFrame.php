<?php
namespace app\admin\controller;
use think\Controller;

class PhpFrame extends Controller {

     /**
     * 首页：
     */
    public function index(){
        return $this->fetch();
    }

}
