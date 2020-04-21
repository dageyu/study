<?php
header('Content-type:text/html;charset=utf8');

// echo apache_get_version();
// echo '<br/>';
// echo zend_version();
// echo '<br/>';
// echo 10%-3;
//echo ini_get('default_socket_timeout');
// echo '<br/>';
// ini_set('allow_url_include',1);
// echo ini_get('allow_url_include');
// echo $_SERVER['HTTP_USER_AGENT'];
// print_r(ini_get_all());
// echo count(ini_get_all());
// $a = 10;
// $b = 3;
// echo $a / $b;

// echo PHP_OS;
// echo sys_get_temp_dir();

// $url = 'http://www.php.cn/php-weizijiaocheng-377847.html';
// ini_set('default_socket_timeout', 0.1); 
// if($data = file_get_contents($url)){
//     echo 222;
// }
// else {
//     echo 'timeout';
// }

// phpinfo();
class Person{
 
    private $name;
    public $age;
    public $sex;
    public $addrs;
    public $time;
 
    function __construct($name,$age,$sex,$addrs){
        //parent::__construct();
        $this->name = $name;
        $this->age = $age;
        $this->sex = $sex;
        $this->addrs = $addrs;
    }
 
    function __get($pri_name){
        if(isset($this->$pri_name)){
            echo "pri_name:".$this->$pri_name."<br>";
            return $this->$pri_name."<br>";
        }else{
            echo "不存在".$pri_name;
            return null;
        }
    }
 
    function __set($pri_name,$value){
        echo $pri_name."的值为:".$value."<br>";
        $this->$pri_name = $value;
    }
 
    function user($time){
        $this->time = $time;
        echo "我叫:".$this->name."，今年:".$this->age."岁，性别:".$this->sex."，地址是:".$this->addrs."，--".$this->time."<br>";
    }
 
    function __destruct(){
        echo "再见:".$this->name."<br>";
    }
 
}
 
    $Person = new Person("xy404","22","男","湖北");
    $Person->user(404);
    echo $Person->name;
    

    
    
?>