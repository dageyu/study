<?php
namespace app\admin\controller;
use think\Controller;
use think\Config;
use think\Db;
use think\Session;
class Admin extends Controller {

    /**
     * 用户管理：首页列表
     */
    public function index(){
        if(Session::get('admin.admin_vip') == 1){
            $lists = Db::name('admin')->where('admin_id',Session::get('admin.admin_id'))->select();
        }
        else{
            $lists = Db::name('admin')->select();
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
            $save_msg = Db::name('admin')->insert($data);
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
