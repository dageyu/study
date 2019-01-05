<?php
namespace app\admin\logic;
use think\Controller;
use think\Db;
class CheckLogic extends Controller {

    /**
     * 添加时：验证内容是否重复  无关联字段   
     * @access  public
     * @param   array   $data     包含表名，字段名，验证内容
     * @return  array   $res
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
     * 添加时：验证内容是否重复  有关联字段   
     * @access  public
     * @param   array   $data     包含表名，字段名，验证内容，关联字段，关联字段值
     * @return  array   $res
     */
    public static function checkAddLink($data){
        $list = Db::name($data['tbname'])->where([$data['field'] => $data['content'],$data['linkfield'] => $data['linkval']])->find();
        if($list){
            $res = array('status'=>0,'msg'=>'已被使用，请核对后再次输入！');
        }
        else{
            $res = array('status'=>1,'msg'=>'可以使用！');
        }
        return $res;
    }

    /**
     * 修改时：验证内容是否重复  input   
     * @access  public
     * @param   array   $data     包含表名，字段名，验证内容，主键值，主键字段（是否重复）
     * @return  array   $res
     */
    public static function checkUpdate($data){
        if($data['isrepeat'] == 1){
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
        }
        else{
            $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField($data['field'], $data['content']);
            if($update_msg){
                $res = array('status'=>1,'msg'=>'修改成功！');
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
     * @param   array   $data     包含表名，状态值，状态字段，主键值，主键字段(是否主要，附加字段)
     * @return  array   $res
     */
    public static function updateObjState($data){
        $data['stateval'] == 1 ? $data['state'] = 0 : $data['state'] = 1;
        if($data['ismain'] == 0){
            $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField($data['statefield'], $data['state']);
        } else {
            $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField([$data['statefield'] => $data['state'],$data['appendfield'] => time()]);
        }
        if($update_msg){
            $res = array('status'=>1,'msg'=>'修改成功!');
        }
        else{
            $res = array('status'=>0,'msg'=>'修改失败!');
        }
        return $res;
    }

    /**
     * ajax删除(软删除):一条
     * @access  public
     * @param   array   $data     包含表名，主键值，主键字段
     * @return  array   $res
     */
    public static function deleteObjOne($data){
        $delete_msg = Db::name($data['tbname'])->where($data['idfield'],$data['id'])->setField('is_delete', 1);
        if($delete_msg){
            $res = array('status'=>1,'msg'=>'删除成功!');
        }
        else{
            $res = array('status'=>0,'msg'=>'删除失败!');
        }
        return $res;
    }

    /**
     * 修改时：验证内容是否重复   select  
     * @access  public
     * @param   array   $data     包含主表名，字段名，验证内容，主键值，主键字段（是否重复）,关联表，要查询的字段
     * @return  array   $result
     */
    public static function checkUpdateSelected($data){
        $list = Db::name($data['tbname'])->where($data['idfield'],'<>',$data['idval'])->where($data['field'],$data['newval'])->find();
        if($list){
            $res = array('status'=>0,'msg'=>'已被使用，请核对后再次选择！');
        } else {
            $update_msg = Db::name($data['tbname'])->where($data['idfield'],$data['idval'])->setField($data['field'], $data['newval']);
            if($update_msg){
                $name_arr = Db::name($data['linktb'])->field($data['fieldname'])->where($data['field'], $data['newval'])->find();
                $res = array('status'=>1,'msg'=>'修改成功！','name'=>$name_arr);
            }
            else{
                $res = array('status'=>0,'msg'=>'数据库错误，更新失败！');
            }
        }
        $link_lists = Db::name($data['linktb'])->field($data['fieldval'].','.$data['fieldname'])->select();
        $result = array('res'=>$res,'lists'=>$link_lists);
        return $result;
    }

}
