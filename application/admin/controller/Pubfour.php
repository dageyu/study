<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Config;
use app\admin\logic\CheckLogic;
class Pubfour extends Base {

    /**
     * 首页：
     * @param   string  $tbname    表名
     */
    public function index(){
        $tbname = $this->request->param('tbname');
        if(strpos($tbname,Config::get('database.prefix')) === false){ 
            $table = $tbname;
            $tbname = Config::get('database.prefix') . $tbname;
        } else {
            $table = str_replace(Config::get('database.prefix'),'',$tbname);
        }
        $lists = Db::table($tbname)->field('id,sort,title,zn_name,checked,addtime,sign,is_ok')->where('is_delete',0)->order('sort asc,addtime desc')->select();
        $modules = CheckLogic::moduleSel($tbname);
        return $this->fetch('index',compact('lists','tbname','table','modules'));
    }

    /**
     * 添加内容：
     * @param   string  $tbname    表名
     * @param   array   $data      数据
     * @return  array   $res       添加结果
     */
    public function add(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $tbname = $data['tbname'];
            unset($data['tbname']);
            $flag = Db::name($tbname)->insert($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'添加成功');
            } else {
                $res = array('status'=>0,'msg'=>'添加失败');
            }
            return $res;
        }
        else{
            $data = $this->request->param('tbname');
            $modules = CheckLogic::moduleSel($data);
            $tbname = str_replace(Config::get('database.prefix'),'',$data);
            $list = tbfields($tbname);
            return $this->fetch('add',compact('list','tbname','modules'));
        }
    }

    /**
     * 修改内容：
     * @param   string  $tbname    表名
     * @param   integer $id        主键值
     * @param   array   $data      数据
     * @return  array   $res       添加结果
     */
    public function update(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $tbname = $data['tbname'];
            unset($data['tbname']);
            $flag = Db::name($tbname)->update($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'修改成功');
            } else {
                $res = array('status'=>0,'msg'=>'修改失败');
            }
            return $res;
        }
        else{
            $data = $this->request->param();
            $modules = CheckLogic::moduleSel($data['tbname']);
            $tbname = str_replace(Config::get('database.prefix'),'',$data['tbname']);
            $list = Db::name($tbname)->field('id,title,zn_name,content')->where('id',$data['id'])->find();
            return $this->fetch('update',compact('list','tbname','modules'));
        }
    }

}
