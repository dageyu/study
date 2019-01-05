<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Theory;
use think\Db;
/**原理分析 */
class Theory extends Controller {

    /**
     * 分析列表
     * @access public
     * @return array  $lists  内容清单
     */
    public function index(){
        $lists = Theory::where('is_delete' , 0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 添加内容：
     */
    public function add(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $flag = Theory::insert($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'添加成功');
            } else {
                $res = array('status'=>0,'msg'=>'添加失败');
            }
            return $res;
        } else {
            return $this->fetch();
        }
    }

    /**
     * 查看详情
     * @access public
     * @return array  $list  内容详情
     */
    public function look(){
        $data = $this->request->param();
        $list = Theory::where($data)->find();
        return $this->fetch('look',compact('list'));
    }
    
    /**
     * 修改内容：
     */
    public function update(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $flag = Theory::where($data)->save();
            if($flag){
                $res = array('status'=>1,'msg'=>'修改成功');
            } else {
                $res = array('status'=>0,'msg'=>'修改失败');
            }
            return $res;
        } else {
            return $this->fetch();
        }
    }
}
