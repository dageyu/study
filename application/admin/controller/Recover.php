<?php
namespace app\admin\controller;
use think\Controller;

class Recover extends Base {

    /**
     * 首页:
     */
    public function index(){
        return $this->fetch();
    }

}
