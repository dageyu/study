<?php
namespace app\admin\logic;
use think\Controller;
use think\Db;
use app\admin\model\FirstModule as First;
use app\admin\model\SecondModule as Second;
use app\admin\model\ThreeModule as Three;
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

    /**
     * 加载模块时：输出模块名称
     * @access  public
     * @param   string  $table     表名
     * @return  array   $result
     */
    public static function moduleSel($table){
        $fm_list = self::firstModuleFind($table);
        if($fm_list){
            $result = array('first_module_name' => $fm_list, 'second_module_name' => '', 'three_module_name' => '');
        }
        else{
            $sm_list = self::secondModuleFind($table);
            if($sm_list){
                $first_module = self::firstModuleFind2($sm_list['fm_id']);
                $result = array('first_module_name' => $first_module, 'second_module_name' => $sm_list['sm_name'], 'three_module_name' => '');
            }
            else{
                $tm_list = self::threeModuleFind($table);
                if($tm_list){
                    $sm_lists = self::secondModuleFind2($tm_list['sm_id']);
                    $first_modules = self::firstModuleFind2($sm_lists['fm_id']);
                    $result = array('first_module_name' => $first_modules, 'second_module_name' => $sm_lists['sm_name'], 'three_module_name' => $tm_list['tm_name']);
                }
                else{
                    $result = array('first_module_name' => '', 'second_module_name' => '', 'three_module_name' => '');
                }
            }
        }
        return $result;
    }
    //根据表名或者主键值查询模块名称
    public static function firstModuleFind($table){
        $first_modules = First::field('fm_name')->where('tbname' , $table)->find();
        return $first_modules ? $first_modules['fm_name'] : false;
    }
    public static function secondModuleFind($table){
        $second_modules = Second::field('fm_id,sm_name')->where('tbname' , $table)->find();
        return $second_modules ? $second_modules : false;
    }
    public static function threeModuleFind($table){
        $three_modules = Three::field('sm_id,tm_name')->where('tbname' , $table)->find();
        return $three_modules ? $three_modules : false;
    }
    public static function firstModuleFind2($id){
        $first_modules2 = First::field('fm_name')->where('fm_id' , $id)->find();
        return $first_modules2 ? $first_modules2['fm_name'] : false;
    }
    public static function secondModuleFind2($id){
        $second_modules2 = Second::field('fm_id,sm_name')->where('sm_id' , $id)->find();
        return $second_modules2 ? $second_modules2 : false;
    }

}
