<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\logic\CheckLogic;
/**
 * 后台公用控制器
 */
class Check extends Controller {

    /**
     * 添加时：验证内容是否重复
     */
    public function checkAdd(){
        $data = $this->request->param();
        $res = CheckLogic::checkAdd($data);
        return $res;
    }

    /**
     * 修改时：验证内容是否重复
     */
    public function checkUpdate(){
        $data = $this->request->param();
        $res = CheckLogic::checkUpdate($data);
        return $res;
    }

    /**
     * ajax修改状态
     */
    public function updateObjState(){
        $data = $this->request->param();
        $res = CheckLogic::updateObjState($data);
        return $res;
    }


    
}
