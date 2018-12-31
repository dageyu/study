<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\OthersType;
use app\admin\model\OthersQuestions;
class Others extends Controller {

    /**
     * 分类管理:
     */
    public function othersType(){
        $lists = OthersType::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 问题总结:
     */
    public function othersQuestions(){
        $lists = OthersQuestions::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

}
