<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Role;
use app\admin\model\FirstModule as First;
use app\admin\logic\LookLogic as Look;
use think\facade\Config;
/**角色管理 */
class Role extends Base {

    /**
     * 列表清单:
     * @return array $lists
     */
    public function index(){
        $fm_listfs = First::where('is_delete' , 0)->order('fm_sort')->select();
        $table = Config::get('database.prefix').'role';
        $table_link = Config::get('database.prefix').'first_module';
        $alias = 'a'; 
        $field = 'a.*,fm_name';
        $join = ['link' => $table_link.' b' , 'join'=> 'a.fm_id = b.fm_id'];
        $where = 'a.is_delete = 0 and b.is_delete = 0';
        $order = 'a.role_addtime desc';
        $lists = Look::oneVsOne($table,$alias,$field,$join,$where,'','',$order);
        return $this->fetch('index',compact('lists','fm_listfs'));
    }

    /**
     * 添加角色:
     * @return array $res
     */
    public function add(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $flag = Role::insert($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'添加成功');
            } else {
                $res = array('status'=>0,'msg'=>'添加失败');
            }
            return $res;
        } else {
            $fm_listfs = First::where('is_delete' , 0)->order('fm_sort')->select();
            return $this->fetch('add',compact('fm_listfs'));
        }
    }
    
}
