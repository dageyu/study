<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Session;
use think\facade\Config;
use app\admin\model\Admin;
class Password extends Base {

    /**
     * 修改密码：只能修改当前用户
     */
    public function change(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $newpassword = strrev(md5($data['admin_checkpassword'] . Config::get('salt')));
            $update_msg = Admin::where('admin_id',Session::get('admin_id'))->setField('admin_password', $newpassword);
            if($update_msg){
                $res = array('status'=>1,'msg'=>'修改成功');
            } else {
                $res = array('status'=>0,'msg'=>'修改失败');
            }
            return $res;
        }
        else {
            return $this->fetch();
        }
    }
    
}
