<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\FirstModule as First;
use app\admin\model\SecondModule as Second;
use app\admin\model\ThreeModule as Three;
use think\Db;
use think\facade\Config;
/**菜单管理 */
class Menu extends Controller {

    /**
     * 菜单列表
     * @access public
     * @return array  $fm_lists  一级模块
     * @return array  $sm_lists  二级模块
     * @return array  $tm_lists  三级模块
     */
    public function index(){
        $fm_lists = First::where('is_delete' , 0)->order('fm_sort')->select();
        $sm_lists = Second::where('is_delete' , 0)->select();
        $tm_lists = Three::where('is_delete' , 0)->select();
        return $this->fetch('index',compact('fm_lists','sm_lists','tm_lists'));
    }

    /**
     * 添加菜单：
     * @param  integer  $is_parent      父类:0 不存在,1 存在
     * @param  string   $tbname         表名
     * @param  string   $field          字段
     * @param  integer  $parent_id      父类id:0 不存在,其他 存在
     * @param  string   $parent_field   父类字段:空 不存在,其他 存在
     * @return array    
     */
    public function add(){
        if($this->request->isPost()){
            $data = $this->request->param();
            if(array_key_exists("fm_id",$data)){
                $tbname = 'second_module';
            } else if(array_key_exists("sm_id",$data)){
                $tbname = 'three_module';
            } else {
                $tbname = 'first_module';
            }
            $flag = Db::name($tbname)->insert($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'添加成功');
            } else {
                $res = array('status'=>0,'msg'=>'添加失败');
            }
            return $res;
        } else {
            $data = $this->request->param();
            $tables = Db::query('SHOW TABLE STATUS');
            $dirs = array_diff(scandir(Config::get('controller_dir')), ['.', '..']);
            $dirs = array_map(array($this,'subObj'),$dirs);
            return $this->fetch('add',compact('data','tables','dirs'));
        }
    }

    /**
     * 截取字符串：
     * @param  string   $val   数组元素
     * @return string    
     */
    function subObj($val){
        $val = str_replace('.php','',$val);
        return $val;
    }
    
}
