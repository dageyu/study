<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\PlugType;
use app\admin\model\PlugAct;
use app\admin\model\PlugErrors;
use app\admin\model\PlugQuestions;
use app\admin\model\PlugExtends;
use app\admin\model\PlugOthers;
use app\admin\model\PlugSpecialsAct;
class Plugs extends Controller {

    /**
     * 分类管理:
     */
    public function plugType(){
        $lists = PlugType::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 使用管理:
     */
    public function plugAct(){
        $lists = PlugAct::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 报错总结:
     */
    public function plugErrors(){
        $lists = PlugErrors::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 问题总结:
     */
    public function plugQuestions(){
        $lists = PlugQuestions::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 扩展知识:
     */
    public function plugExtends(){
        $lists = PlugExtends::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 其他管理:
     */
    public function plugOthers(){
        $lists = PlugOthers::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 特殊功能:
     */
    public function plugSpecialsAct(){
        $lists = PlugSpecialsAct::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    

}
