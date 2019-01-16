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
     * 添加时：验证内容是否重复
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function checkAddLink(){
        $data = $this->request->param();
        $res = CheckLogic::checkAddLink($data);
        return $res;
    }

    /**
     * 修改时：验证内容是否重复  input
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

    /**
     * 修改时：验证内容是否重复  select
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function checkUpdateSelected(){
        $data = $this->request->param();
        $res = CheckLogic::checkUpdateSelected($data);
        return $res;
    }

    /**
     * 验证内容是否正确
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function checkObjTrue(){
        $data = $this->request->param();
        $res = CheckLogic::checkObjTrue($data);
        return $res;
    }

    /**
     * 验证内容是否正确
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function updateCheckObj(){
        $data = $this->request->param();
        $res = CheckLogic::updateCheckObj($data);
        return $res;
    }

    /**
     * 恢复记录
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function recoverObj(){
        $data = $this->request->param();
        $res = CheckLogic::recoverObj($data);
        return $res;
    }

    /**
     * ajax删除:永久删除
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function deleteObj(){
        $data = $this->request->param();
        $res = CheckLogic::deleteObj($data);
        return $res;
    }

    /**
     * ajax删除多个:修改删除状态
     * @access  public
     * @param   array   $data
     * @return  array   $res
     */
    public function deleteObjMore(){
        $data = $this->request->param();
        $res = CheckLogic::deleteObjMore($data);
        return $res;
    }
    
}
