<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\PhpFunctions;
use app\admin\model\PhpErrors;
use app\admin\model\PhpOperators;
use app\admin\model\PhpQuestions;
use app\admin\model\PhpExtends;
use app\admin\model\PhpOthers;
class PhpSourceCode extends Controller {

    /**
     * 函数管理：
     */
    public function phpFunctions(){
        $lists = PhpFunctions::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 报错总结：
     */
    public function phpErrors(){
        $lists = PhpErrors::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 符号详解:
     */
    public function phpOperators(){
        $lists = PhpOperators::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 问题总结:
     */
    public function phpQuestions(){
        $lists = PhpQuestions::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 扩展知识:
     */
    public function phpExtends(){
        $lists = PhpExtends::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 其他管理:
     */
    public function phpOthers(){
        $lists = PhpOthers::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }




}
