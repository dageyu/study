<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\SecondModule as Second;
use app\admin\model\FirstModule as First;

/**菜单管理 */
class Menu extends Controller {

    /**
     * 菜单列表
     * @return array  $lists
     */
    public function index(){
        $fm_lists = First::where('fm_state',1)->select();
        $sm_lists = Second::where('sm_state',1)->select();
        return $this->fetch('index',compact('fm_lists','sm_lists'));
    }
    
}
