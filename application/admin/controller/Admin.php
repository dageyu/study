<?php
namespace app\admin\controller;
use app\admin\model\Admin;
use think\Controller;
use think\facade\Config;
use think\facade\Session;
class Admin extends Controller {

    /**
     * 用户管理：首页列表
     */
    public function index(){
        if(Session::get('admin_vip') == 1){
            $lists = Admin::where('admin_id',Session::get('admin_id'))->select();
        }
        else{
            $lists = Admin::select();
        }
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 用户管理：添加用户
     */
    public function add(){
        if($this->request->isPost()){
            $data = $this->request->except(['admin_checkpassword']);
            $data['admin_password'] = strrev(md5($data['admin_password'].Config::get('salt')));
            $dtat['parent_id'] = Session::get('admin.admin_id');
            $save_msg = Admin::insert($data);
            if($save_msg){
                $res = array('status'=>1,'msg'=>'添加成功！');
            }
            else{
                $res = array('status'=>0,'msg'=>'添加失败！');
            }
            return $res;
        }
        return $this->fetch();
    }


    
}
