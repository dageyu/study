<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Theory;
use think\Db;
/**原理分析 */
class Theory extends Base {

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
            $theoryModel = new Theory;
            $flag = $theoryModel->save($data);
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
     * 修改内容：
     */
    public function update(){
        if($this->request->isPost()){
            $data = $this->request->param();
            $flag = Theory::update($data);
            if($flag){
                $res = array('status'=>1,'msg'=>'修改成功');
            } else {
                $res = array('status'=>0,'msg'=>'修改失败');
            }
            return $res;
        } else {
            $data = $this->request->param();
            $list = Db::name('theory')->field('id,name,intro,content')->where('id',$data['id'])->find();
            return $this->fetch('update',compact('list'));
        }
    }
}
