<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\facade\Config;
class Recover extends Base {

    /**
     * 首页:
     */
    public function index(){
        $database = Config::get('database.database'); $field_name = 'name'; $field_title = 'title'; $field_is_delete = 'is_delete';
        $arrs_name = Db::query("select table_name from information_schema.columns where table_schema = '$database' and column_name='$field_name'");
        $arrs_title = Db::query("select table_name from information_schema.columns where table_schema = '$database' and column_name='$field_title'");
        $arrs_is_delete = Db::query("select table_name from information_schema.columns where table_schema = '$database' and column_name='$field_is_delete'");
        $arr_name = array_column($arrs_name, 'table_name');
        $arr_title = array_column($arrs_title, 'table_name');
        $arr_is_delete = array_column($arrs_is_delete, 'table_name');
        $array_name = array_intersect($arr_name,$arr_is_delete);
        $array_title = array_intersect($arr_title,$arr_is_delete);
        $where = ' where is_delete = 1 order by addtime)';
        for($i = 0; $i < count($array_name); $i++){
            $name_array[] = '(select id,name,"'.$array_name[$i].'" as tbname,addtime from '.$array_name[$i].$where;
        }
        for($i = 0; $i < count($array_title); $i++){
            $title_array[] = '(select id,title as name,"'.$array_title[$i].'" as tbname,addtime from '.$array_title[$i].$where;
        }
        $names = implode(' union ',$name_array);
        $titles = implode(' union ',$title_array);
        $sql = $names.' union '.$titles;
        $lists = Db::query($sql);
        return $this->fetch('index',compact('lists'));
    }

}
