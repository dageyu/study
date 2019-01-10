<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Session;
use think\facade\Cookie;
use app\admin\model\Admin;
class Logout extends Controller {

    /**
     * 后台退出：ajax更新当前用户的登录时间和ip地址
     */
    public function logout(){
        $up_data = array('admin_time'=>Session::get('admin_lasttime'),'admin_ip'=>Session::get('admin_lastip'));
        $up_msg = Admin::where('admin_id',Session::get('admin_id'))->update($up_data);
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
