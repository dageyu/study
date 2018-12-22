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
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function checkAdd(){
        $data = $this->request->param();
        $res = CheckLogic::checkAdd($data);
        return $res;
    }

    /**
     * 修改时：验证内容是否重复
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function checkUpdate(){
        $data = $this->request->param();
        $res = CheckLogic::checkUpdate($data);
        return $res;
    }

    /**
     * ajax修改状态:
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function updateObjState(){
        $data = $this->request->param();
        $res = CheckLogic::updateObjState($data);
        return $res;
    }

    /**
     * ajax删除:
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function deleteObjOne(){
        $data = $this->request->param();
        $res = CheckLogic::deleteObjOne($data);
        return $res;
    }


    
}
