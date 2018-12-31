<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\PhpFrameType as PFT;
use app\admin\model\PhpFrameFunctions as PFF;
use app\admin\model\PhpFrameErrors as PFE;
use app\admin\model\PhpFrameQuestions as PFQ;
use app\admin\model\PhpFrameExtends as PFES;
use app\admin\model\PhpFrameOthers as PFO;
class PhpFrame extends Controller {

    /**
     * 框架分类:
     */
    public function phpFrameType(){
        $lists = PFT::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 框架函数:
     */
    public function phpFrameFunctions(){
        $lists = PFF::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 框架报错总结:
     */
    public function phpFrameErrors(){
        $lists = PFE::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 框架问题总结:
     */
    public function phpFrameQuestions(){
        $lists = PFQ::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 框架扩展知识:
     */
    public function phpFrameExtends(){
        $lists = PFES::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

    /**
     * 框架其他管理:
     */
    public function phpFrameOthers(){
        $lists = PFO::where('is_delete',0)->select();
        return $this->fetch('index',compact('lists'));
    }

}
