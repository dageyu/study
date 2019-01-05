<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Session;
class Password extends Controller {

    /**
     * 修改密码：
     */
    public function change(){
        return $this->fetch();
    }

    
}
