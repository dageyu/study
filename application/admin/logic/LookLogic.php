<?php
namespace app\admin\logic;
use think\Controller;
use think\Db;
class LookLogic extends Controller {

    /**
     * 一对一关联：   
     * @access  public
     * @param   string  $table      主表名称
     * @param   string  $alias      表别名
     * @param   string  $field      查询的字段
     * @param   array   $join       关联公共字段  只能使用INNER JOIN
     * @param   string  $where      条件      默认''
     * @param   string  $group      分组      默认''
     * @param   string  $having     分组条件  默认''
     * @param   string  $order      排序      默认''
     * @param   integer $start      截取开始位置  默认0
     * @param   integer $end        截取条数      默认-1 直到取出最后一条数据         
     * @return  array   $res        查询结果
     */
    public static function oneVsOne($table , $alias , $field , $join , $where = '' , $group = '' , $having = '' , $order = ''){
        $res = DB::table($table)->alias($alias)->field($field)->join($join['link'],$join['join'])->where($where)->group($group)->having($having)->order($order)->select();
        return $res;
    }

 

}
