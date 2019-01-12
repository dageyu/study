<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Admin;
use app\admin\model\FirstModule as First;
use app\admin\model\SecondModule as Second;
use app\admin\model\ThreeModule as Three;
use think\facade\Config;
use app\admin\logic\LookLogic as Look;
class Power extends Base {

    /**
     * 权限管理:权限分配
     * @access public
     * @return array  $lists     管理员清单
     * @return array  $ro_lists  角色清单
     * @return array  $fm_lists  一级模块
     * @return array  $sm_lists  二级模块
     */
    public function index(){
        $lists = Admin::field('admin_id,admin_name,admin_nickname')->where(['admin_vip'=>1,'admin_state'=>1,'is_delete'=>0])->select();
        $table = Config::get('database.prefix').'first_module';
        $table_link = Config::get('database.prefix').'role';
        $alias = 'a'; 
        $field = 'a.*,role_name';
        $join = ['link' => $table_link.' b' , 'join'=> 'a.fm_id = b.fm_id'];
        $where = 'a.is_delete = 0 and b.is_delete = 0';
        $order = 'a.fm_addtime desc';
        $ro_lists = Look::oneVsOne($table,$alias,$field,$join,$where,'','',$order);
        $pfm_lists = First::field('fm_id,fm_name,is_parent')->where(['is_delete' => 0, 'fm_state' => 1, 'is_powerf' => 1])->order('fm_sort')->select();
        $psm_lists = Second::field('sm_id,fm_id,sm_name,is_parents')->where(['is_delete' => 0, 'sm_state' => 1, 'is_powers' => 1])->order('sm_sort')->select();
        return $this->fetch('index',compact('lists','pfm_lists','psm_lists','ro_lists'));
    }

    
}
