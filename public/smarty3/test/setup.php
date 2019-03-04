<?php
define('DIR_SMARTY',str_ireplace('\\','/',dirname(__FILE__).'/'));
include('/../smarty/Smarty.class.php');
class SmartyBook extends Smarty {
    function __construct(){
        parent::__construct();                       // 运行父类的构造函数，否则报错
        $this->template_dir     = array(DIR_SMARTY.'templates/');     // 设置模板目录
        $this->compile_dir      = DIR_SMARTY.'templates_c/';   // 设置编译目录
        $this->config_dir       = array(DIR_SMARTY.'configs/');       // 设置参数目录
        $this->cache_dir        = DIR_SMARTY.'cache/';         // 设置缓存目录
        $this->left_delimiter   = "<{";              // 设置模板输出左标签
        $this->right_delimiter  = "}>";              // 设置模板输出右标签
        $this->caching          = true;                 // 缓存方式：true(或1)缓存可用
    }
}
    
?>