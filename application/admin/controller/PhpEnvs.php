<?php
namespace app\admin\controller;
use think\Controller;

class PhpEnvs extends Controller {

    /**
     * 首页：
     */
    public function index(){
        return $this->fetch();
    }

}
