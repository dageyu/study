<?php
require('Smarty.class.php');

// The setup.php file is a good place to load
// required application library files, and you
// can do that right here. An example:
// require('guestbook/guestbook.lib.php');是一个很好的加载应用程序的类库文件(就是扩展类)
//例如你可以在index文件里包含它

class Smarty_GuestBook extends Smarty {

 function constant() {
 
 		// Class Constructor. These automatically get set with each new instance.
 //类构造函数.创建实例的时候自动配置

		$this->Smarty();

		$this->template_dir = './templates/';
		$this->compile_dir = './templates_c/';
		$this->config_dir = './configs/';
		$this->cache_dir = './cache/'; 
		
		$this->caching = true;
		$this->assign('app_name','Guest Book');
 }

}

?>