<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Config;
use think\facade\Session;
use think\facade\Cookie;
use app\admin\model\Admin;
class Login extends controller {

    /**
     * 后台登录：首页
     */
    public function index(){
        if(Cookie::has('auth')){
            $now = time();
            list($identifier, $token) = explode(':', Cookie::get('auth'));
            if (ctype_alnum($identifier) && ctype_alnum($token)){
                $clean['identifier'] = $identifier;
                $clean['token'] = $token;
            }
            $sel_msg = Admin::field('admin_name,token,timeout')->where($clean)->find();
            if($sel_msg){
                if($sel_msg['token'] == $clean['token'] && $now < $sel_msg['timeout'] && $clean['identifier'] = md5(Config::get('salt') . md5($sel_msg['admin_name'] . Config::get('salt')))){
                    $this->redirect('admin/index/index');
                }
            }
        }
        if(Session::has('admin_id')){
            $this->redirect('admin/index/index');
        }
        return $this->fetch();
    }

    /**
     * 后台登录：登录
     */
    public function login(){
        $datas = $this->request->param();
        $data['admin_name'] = $datas['admin_name'];
        $data['admin_password'] = strrev(md5($datas['admin_password'] . Config::get('salt')));
        $sel_msg = Admin::where($data)->find();
        if($sel_msg){
            $up_data['admin_lasttime'] = time();
            $up_data['admin_lastip'] = $this->request->ip();
            $up_data['identifier'] = md5(Config::get('salt') . md5($data['admin_name'] . Config::get('salt')));
            $up_data['token'] = md5(uniqid(rand(), TRUE));
            $up_data['timeout'] = time() + 60 * 60 * 1;
            Admin::where('admin_id',$sel_msg['admin_id'])->update($up_data);
            Session::set('admin_id', $sel_msg['admin_id']);
            Session::set('admin_name', $sel_msg['admin_name']);
            Session::set('admin_vip', $sel_msg['admin_vip']);
            Session::set('admin_lasttime', $sel_msg['admin_lasttime']);
            Session::set('admin_lastip', $sel_msg['admin_lastip']);
            if(in_array('remember',$datas)){
                $identifier = $up_data['identifier'];
                $token = $up_data['token'];
                $timeout = $up_data['timeout'];
                Cookie::set('auth', "$identifier:$token", $timeout);
            }
            $res = array('status' => 1, 'msg' => '登录成功!');
        }
        else{
            $res = array('status' => 0, 'msg' => '登录失败!');
        }
        return $res;
    }

    /**
     * 后台登录：找回密码
     */
    public function backPassword(){
        $data = $this->request->param();
        $sel_msg = Admin::where('admin_email', $data['email'])->find();
        if($sel_msg){
            $new_password = 'study'.getRandomString(6);
            $save_password = strrev(md5($new_password.Config::get('salt')));
            $update_msg = Admin::where('admin_id', $sel_msg['admin_id'])->setField('admin_password',$save_password);
            if($update_msg){
                $content = '您的新密码：'.$new_password;
                $toemail = $data['email'];
                $subject = '编程语言学习总结系统：找回密码';
                $send_msg = sendEmail($content, $toemail, $subject);
                if($send_msg == 1){
                    $res = array('status'=>1,'msg'=>'发送成功,请前往邮箱查找并找回密码！');
                }
                else{
                    $res = array('status'=>0,'msg'=>'发送失败，请核对后再次输入！');
                }
            }
            else{
                $res = array('status'=>0,'msg'=>'发送失败，数据库更新失败！');
            }
        }
        else{
            $res = array('status'=>0,'msg'=>'数据库查找邮箱失败！');
        }
        return $res;
    }

    /**
     * 后台登录：注册
     */
    public function register(){
        $data = $this->request->param();
        $data['admin_password'] = strrev(md5($data['admin_password'].Config::get('salt')));
        $sel_msg = Admin::where('admin_secret',$data['admin_secret'])->find();
        if($sel_msg){
            $add_data['admin_name']     = $data['admin_name'];
            $add_data['admin_password'] = $data['admin_password'];
            $add_data['admin_email']    = $data['admin_email'];
            $add_data['parent_id']      = $sel_msg['admin_id'];
            $add_msg = Admin::insert($add_data);
            if($add_msg){
                $res = array('status' => 1, 'msg' => '注册成功!');
            }
            else{
                $res = array('status' => 0, 'msg' => '注册失败!');
            }
        }
        else{
            $res = array('status' => 0, 'msg' => '口令错误，注册失败!');
        }
        return $res;
    }

}
