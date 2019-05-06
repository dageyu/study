<?php
// $serv = new swoole_websocket_server('0.0.0.0',9500);
// //进程的配置
// $serv->set([
//     'worker_num' =>3,//工作进程数
//     'daemonize' => true,//开启守护进程  redis系统进程  mysql 



// ]);
// //打开连接

// 创建一个人类
class Person {
    public $name;  // 人的名子
    public $sex;   // 人的性别
    public $age;   // 人的年龄
 
    // 成员属性初始化
    function __construct($name, $sex, $age) {
        $this->name = $name;
        $this->sex = $sex;
        $this->age = $age;
    }
 
    // 这个人的说话方法
    function say() {
        echo "我的名子叫：" . $this->name . " 性别：" . $this->sex . " 我的年龄是：" . $this->age;
    }
 
    // 这是一个析构函数,在对象销毁前调用
    function __destruct() {
        // echo "再见" . $this->name;
    }
}
 
// 通过构造方法创建3个对象$p1、p2、$p3,分别传入三个不同的实参为姓名、性别和年龄
$p1 = new Person("张三", "男", 20);
$p2 = new Person("李四", "女", 30);
$p3 = new Person("王五", "男", 40);
 // 下面访问$p1对象中的说话方法
$p1->say();
 // 下面访问$p2对象中的说话方法
$p2->say();
 // 下面访问$p3对象中的说话方法
$p3->say();

?>

