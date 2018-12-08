<?php
namespace app\admin\controller;
use think\Db;
use think\Session;
use think\Cookie;
class Logout {

    /**
     * 后台退出：ajax更新当前用户的登录时间和ip地址
     */
    public function logout(){
        $up_data = array('admin_time'=>Session::get('admin.admin_lasttime'),'admin_ip'=>Session::get('admin.admin_lastip'));
        $up_msg = Db::name('admin')->where('admin_id',Session::get('admin.admin_id'))->update($up_data);
        if($up_msg){
            Session::clear();
            Cookie::delete('auth');
            $res = array('status' => 1, 'msg' => '退出成功!');
        }
        else{
            $res = array('status' => 0, 'msg' => '退出失败!');
        }
        return $res;
    }

}
