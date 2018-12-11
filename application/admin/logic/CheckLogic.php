<?php
namespace app\admin\logic;
use think\Controller;
use think\Db;
class CheckLogic extends Controller {

    /**
     * 添加时：验证内容是否重复     
     * @access  public
     * @param   array   $data     包含表名，字段名，验证内容
     */
    public static function checkAdd($data){
        $list = Db::name($data['tbname'])->where($data['field'],$data['content'])->find();
        if($list){
            $res = array('status'=>0,'msg'=>'已被使用，请核对后再次输入！');
        }
        else{
            $res = array('status'=>1,'msg'=>'可以使用！');
        }
        return $res;
    }

    /**
     * 修改时：验证内容是否重复     
     * @access  public
     * @param   array   $data     包含表名，字段名，验证内容，主键值，主键字段
     */
    public static function checkUpdate($data){
        $list = Db::name($data['tbname'])->where($data['idfield'],'<>',$data['id'])->where($data['field'],$data['content'])->find();
        if($list){
            $res = array('status'=>0,'msg'=>'已被使用，请核对后再次输入！');
        }
        else{
            $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField($data['field'], $data['content']);
            if($update_msg){
                $res = array('status'=>1,'msg'=>'可以使用！');
            }
            else{
                $res = array('status'=>0,'msg'=>'数据库错误，更新失败！');
            }
        }
        return $res;
    }

    /**
     * ajax修改状态：0 or 1     
     * @access  public
     * @param   array   $data     包含表名，状态值，状态字段，主键值，主键字段
     */
    public static function updateObjState($data){
        $data['stateval'] == 1 ? $data['state'] = 0 : $data['state'] = 1;
        $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField($data['statefield'], $data['state']);
        if($update_msg){
            $res = array('status'=>1,'msg'=>'修改成功!');
        }
        else{
            $res = array('status'=>0,'msg'=>'修改失败!');
        }
        return $res;
    }

}
