<?php
namespace app\admin\controller;
use think\facade\Config;
class Clean {

    /**
     * 清理缓存:
     */
    public function cleanCache(){
        if(deldir(Config::get('runtime_path'))){
            $res = array('status'=>1,'msg'=>'清除缓存成功');
        }
        else{
            $res = array('status'=>0,'msg'=>'清除缓存失败');
        }
        return $res;
    }
    
}
