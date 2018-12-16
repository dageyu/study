<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\FirstModule as First;

/**菜单管理 */
class Menu extends Controller {

    /**
     * 菜单列表
     * @return array  $lists
     */
    public function index(){
        $lists = First::where('fm_state',1)->select();
        return $this->fetch('index',compact('lists'));
    }
    
}
