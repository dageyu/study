<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Config;
use app\admin\logic\CheckLogic;
class Pubsix extends Base {

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
        $list = tbfields($table);
        $linktb = Config::get('database.prefix').$list['linktb'];
        $lists = Db::table($tbname)->field($tbname.".id as id,sort,title,checked,".$tbname.".addtime as addtime,sign,is_ok,".Config::get('database.prefix').$list['linkfield'])
                ->join($linktb,$tbname.'.'.$list['onfield'].' = '.$linktb.'.id')->where($tbname.'.is_delete',0)->order('sort asc,'.$tbname.'.addtime desc')->select();
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
            $link_lists = Db::name($list['linktb'])->field('id,name')->where('is_delete',0)->select();
            return $this->fetch('add',compact('list','tbname','modules','link_lists'));
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
            $lists = tbfields($tbname);
            $link_field = $lists['onfield'];
            $list = Db::name($tbname)->field('id,title,content,'.$link_field.' as type_id')->where('id',$data['id'])->find();
            $link_lists = Db::name($lists['linktb'])->field('id,name')->where('is_delete',0)->select();
            return $this->fetch('update',compact('list','tbname','modules','link_lists','link_field'));
        }
    }

    /**
     * 生成静态页：
     * @param   string  $tbname    表名
     * @param   array   $data      数据
     * @return  array   $res       添加结果
     */
    public function web_html(){
        header("content-type:text/html;charset=utf-8");
        if($this->request->isPost()){
            $data = $this->request->param();
            $tbname = $data['tbname'];
            $id = $data['id'];
            $idfield = $data['idfield'];
            unset($data['tbname']);unset($data['id']);unset($data['idfield']);
            
            $res = array('id'=>$id,'tbname'=>$tbname,'idfield'=>$idfield);
            // if($flag){
            //     $res = array('status'=>1,'msg'=>'添加成功');
            // } else {
            //     $res = array('status'=>0,'msg'=>'添加失败');
            // }
            return $res;
        }
    }

}