<?php
namespace app\admin\controller;
use think\Controller;
use model\FirstModule as First;
/**
 * 后台公用基础控制器
 */
class Base extends Controller {

    protected function _initialize() {
        parent::_initialize();

    }
    
    /**
     * 验证是否登录
     */
    protected function checkAdmin(){
        return $this->fetch();
    }

    /**
     * 获取侧边栏菜单
     */
    protected function getMenu(){
        $menu     = [];
        $admin_id = Session::get('admin_id');
        $auth     = new Auth();

        $auth_rule_list = Db::name('auth_rule')->where('status', 1)->order(['sort' => 'DESC', 'id' => 'ASC'])->select();

        foreach ($auth_rule_list as $value) {
            if ($auth->check($value['name'], $admin_id) || $admin_id == 1) {
                $menu[] = $value;
            }
        }
        $menu = !empty($menu) ? array2tree($menu) : [];

        $this->assign('menu', $menu);
    }
}
