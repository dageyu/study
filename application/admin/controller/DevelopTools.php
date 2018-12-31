<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\PhpDevelopType as PDT;
use app\admin\model\PhpDevelopPlug as PDP;
use app\admin\model\PhpDevelopQuestions as PDQ;
class DevelopTools extends Controller {

    /**
     * 分类管理:
     */
    public function phpDevelopType(){
        $lists = PDT::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 插件管理:
     */
    public function phpDevelopPlug(){
        $lists = PDP::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 问题总结:
     */
    public function phpDevelopQuestions(){
        $lists = PDQ::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

}
