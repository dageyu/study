<?php
namespace smarty;
require('libs/Smarty.class.php');
class Smartybook extends Smarty {
    function __construct(){
        $this->template_dir     = 'templates/';     // 设置模板目录
        $this->compile_dir      = 'templates_c/';   // 设置编译目录
        $this->config_dir       = 'configs/';       // 设置参数目录
        $this->cache_dir        = 'cache/';         // 设置缓存目录
        $this->left_delimiter   = "<{";             // 设置模板输出左标签
        $this->right_delimiter  = "}>";             // 设置模板输出右标签
        $this->caching          = true;             // 缓存方式
    }
}
    
?>