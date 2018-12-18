<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\FirstModule as First;
use app\admin\model\SecondModule as Second;
use app\admin\model\ThreeModule as Three;

/**菜单管理 */
class Menu extends Controller {

    /**
     * 菜单列表
     * @return array  $fm_lists  一级模块
     * @return array  $sm_lists  二级模块
     */
    public function index(){
        $fm_lists = First::where('fm_state',1)->select();
        $sm_lists = Second::where('sm_state',1)->select();
        return $this->fetch('index',compact('fm_lists','sm_lists'));
    }

    /**
     * 添加一级菜单
     * @return array  $fm_lists  一级模块
     */
    public function addFirst(){
        $fm_lists = First::where('fm_state',1)->select();
        $sm_lists = Second::where('sm_state',1)->select();
        return $this->fetch('add',compact('fm_lists','sm_lists'));
    }

    /**
     * 添加二级菜单
     * @return array  $fm_lists  一级模块
     */
    public function addSecond(){
        $fm_lists = First::where('fm_state',1)->select();
        $sm_lists = Second::where('sm_state',1)->select();
        return $this->fetch('add',compact('fm_lists','sm_lists'));
    }

    /**
     * 添加三级菜单
     * @return array  $fm_lists  一级模块
     */
    public function addThree(){
        $fm_lists = First::where('fm_state',1)->select();
        $sm_lists = Second::where('sm_state',1)->select();
        return $this->fetch('add',compact('fm_lists','sm_lists'));
    }
    
}
