<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\PhpWamp;
use app\admin\model\PhpPhpstudy;
use app\admin\model\PhpLamp;
class PhpEnvConfig extends Controller {

    /**
     * 环境wamp64:
     */
    public function phpWamp(){
        $lists = PhpWamp::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 环境phpstudy:
     */
    public function phpPhpstudy(){
        $lists = PhpPhpstudy::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 环境lamp:
     */
    public function phpLamp(){
        $lists = PhpLamp::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

}
