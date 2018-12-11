<?php
namespace app\admin\model;

use think\Model;

class Admin extends Model {

    protected $pk = 'admin_id';

    public function getAdminVipAttr($value){
        $admin_vip = [0=>'高级',1=>'普通'];
        return $admin_vip[$value];
    }
}
