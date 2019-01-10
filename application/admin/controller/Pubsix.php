<?php
namespace app\admin\controller;
use think\Controller;

class Pubsix extends Base {

    /**
     * 首页：
     */
    public function index(){
        $tbname = $this->request->param('tbname');
        return $this->fetch();
    }

}
