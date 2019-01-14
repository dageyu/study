<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\FirstModule as First;
use app\admin\model\SecondModule as Second;
use app\admin\model\ThreeModule as Three;
use think\facade\Session;
/**
 * 后台公用基础控制器
 */
class Base extends Controller {

    public function initialize() {
        $this->checkAdmin();
        $this->getMenu();
        $navid = $this->request->param('navid') ? $this->request->param('navid') : 'fm1';
        $level = $this->request->param('level') ? $this->request->param('level') : 1;
        $misparent = $this->request->param('misparent') ? $this->request->param('misparent') : 0;
        $this->assign('navid', $navid);
        $this->assign('level', $level);
        $this->assign('misparent', $misparent);
    }
    
    /**
     * 验证是否登录
     */
    public function checkAdmin(){
        if(!Session::has('admin_id')){
            $this->redirect('admin/Login/index');
        }
    }

    /**
     * 获取侧边栏菜单
     */
    public function getMenu(){
        $fm_lists = First::where('is_delete = 0 and fm_state = 1')->order('fm_sort')->select();
        $sm_lists = Second::where('is_delete = 0 and sm_state = 1')->select();
        $tm_lists = Three::where('is_delete = 0 and tm_state = 1')->select();
        $this->assign('fm_lists', $fm_lists);
        $this->assign('sm_lists', $sm_lists);
        $this->assign('tm_lists', $tm_lists);
    }

}
