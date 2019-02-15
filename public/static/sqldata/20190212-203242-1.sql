-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : study
-- 
-- Part : #{ 1
-- Date : 2019-02-12 20:32:43
-- -----------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for study_admin
-- -----------------------------
DROP TABLE IF EXISTS `study_admin`;
CREATE TABLE `study_admin` (
  `admin_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `admin_name` varchar(20) NOT NULL COMMENT '用户名',
  `admin_password` varchar(32) NOT NULL COMMENT '密码',
  `admin_email` varchar(32) NOT NULL COMMENT '邮箱',
  `admin_nickname` varchar(20) DEFAULT '' COMMENT '昵称',
  `admin_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `admin_ip` varchar(15) DEFAULT '' COMMENT '上次登录ip',
  `admin_image` varchar(50) DEFAULT '' COMMENT '管理员头像',
  `admin_lasttime` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `admin_lastip` varchar(15) DEFAULT '' COMMENT '最后登录ip',
  `admin_vip` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户等级 0高级 默认1普通',
  `admin_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 默认1启用0禁用',
  `admin_addtime` int(10) DEFAULT '0' COMMENT '注册时间',
  `admin_secret` varchar(100) DEFAULT '' COMMENT '口令',
  `parent_id` tinyint(4) DEFAULT '0' COMMENT '介绍人id',
  `identifier` varchar(32) DEFAULT '' COMMENT '第二身份标识',
  `token` varchar(32) DEFAULT '' COMMENT '永久登录标识',
  `timeout` int(10) DEFAULT '0' COMMENT '永久登录超时时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`admin_id`) USING BTREE,
  UNIQUE KEY `admin_email` (`admin_email`) USING BTREE,
  KEY `admin_vip` (`admin_vip`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员表';

-- -----------------------------
-- Records of study_admin
-- -----------------------------
INSERT INTO `study_admin` VALUES (1, 'admin', '1e78f717bd679a083d54142517a667f5', 'cuiyu1478@126.com', '大哥玉', 1543809193, '', '', 1543842113, '0.0.0.0', 0, 1, 1543809193, '你妈喊你回家吃饭了。', 1, 'c44b5f1d055fc53d72bacdabc153c11a', '6d489690e421c5be4c811bb4841b52f8', 1543843000, 0);
INSERT INTO `study_admin` VALUES (2, 'cuiyu1478', '07a0ac3365a4efd51b90556101f08481', 'cuiyu1478@163.com', '小青龙', 1549077689, '::1', '', 1549968395, '::1', 1, 1, 1543809193, '长生，你妈喊你回家吃饭了', 1, 'ad7f1e6a7e0f6bc94df9b4a373435a85', '2efa3c1fb1781427861049666e7597c7', 1549971995, 0);

-- -----------------------------
-- Table structure for study_book_knows
-- -----------------------------
DROP TABLE IF EXISTS `study_book_knows`;
CREATE TABLE `study_book_knows` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `book_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `content` text NOT NULL COMMENT '方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='课本知识使用管理表';

-- -----------------------------
-- Records of study_book_knows
-- -----------------------------
INSERT INTO `study_book_knows` VALUES (1, 2, 2, '第3章    对象', '&lt;p&gt;1. 实例化：使用类创建对象的过程。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 类：是一个抽象模板，用于创建彼此相似的对象。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 类的实例方法表示：根据类创建对象的行为。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 实例方法：特定对象的行为。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 类方法：属于该类的所有对象的行为。&lt;br&gt;&lt;/p&gt;', 0, 1549079333, 0, 0, 0);
INSERT INTO `study_book_knows` VALUES (2, 1, 1, '第5章    PHP语言结构', '&lt;h5&gt;    &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;        &lt;span style=&quot;font-weight: bold;&quot;&gt;5.1&lt;/span&gt;&amp;nbsp; &amp;nbsp;        &lt;span style=&quot;font-weight: bold;&quot;&gt;变量&lt;/span&gt;    &lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;变量由$和变量名组成；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 变量名可以包含字母、数字以及下划线（_），但不能包含空格；    &lt;span style=&quot;font-weight: bold;&quot;&gt;变量名必须以一个字母或一个下划线开始&lt;/span&gt;。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;5.1.1&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;全局变量&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 变量的作用域：局部作用域（默认），    &lt;span style=&quot;font-weight: bold;&quot;&gt;全局变量（使用global修饰）。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;5.1.2&amp;nbsp; &amp;nbsp; 超全局变量&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_GET：&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了通过GET方法提供给一个脚本的任何变量；    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_POST：&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了通过POST方法提供给一个脚本的任何变量；    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_COOKIE：&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了通过cookie提供给一个脚本的任何变量；    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_FILES：&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了通过文件上传提供给一个脚本的任何变量；    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_SERVER：&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了像标头、文件路径和脚本位置等信息；    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$_ENV：&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;包含了作为服务器环境的一部分提交给一个脚本的任何变量；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_REQUEST：&amp;nbsp; &amp;nbsp;包含了通过GET、POST或COOKIE输入机制提供给一个脚本的任何变量；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $_SESSION：&amp;nbsp; &amp;nbsp; 包含了在一个会话中当前注册的任何变量；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;使用超全局变量对于创建安全的应用程序很重要，因为超全局变量&lt;span style=&quot;color: rgb(77, 128, 191);&quot;&gt;减少了用户注入式攻击&lt;/span&gt;进入到脚本的可能性。&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;-------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;        &lt;span style=&quot;font-weight: bold;&quot;&gt;5.2&lt;/span&gt;&amp;nbsp; &amp;nbsp;        &lt;span style=&quot;font-weight: bold;&quot;&gt;数据类型&lt;/span&gt;    &lt;/span&gt;&lt;/h5&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; 八大数据类型：    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 4中标量类型：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Boolean，Integer，Float或Double，String    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2中复合类型：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Object：类的一个实例    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Array&amp;nbsp; ：键值对    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2中特殊：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Resource：对一个第三方资源（如数据库）的引用    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; NULL&amp;nbsp; &amp;nbsp; &amp;nbsp; ：一个未初始化的变量    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;Resource类型经常由处理外部应用程序或文件的函数返回。&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;NULL类型是为了那些已经声明但还没用赋值的变量保留的。&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;注意：使用php-development.ini而不是php-production.ini的时候，注意（Notice）会默认地打开。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;5.2.1&amp;nbsp; &amp;nbsp; 使用settype()来改变变量的数据类型&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; settype(var , newtype)参考Php管理-&amp;gt;源码管理-&amp;gt;函数管理    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;任何非0的数字转换为布尔值时都会变为1（true）。&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;5.3&amp;nbsp; &amp;nbsp; 操作符和表达式&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; =操作符赋值；==操作符测试相等性；===测试值以及类型的相等性。&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;5.4&amp;nbsp; &amp;nbsp; 常量&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 惯例：常量的名字应该大写；默认情况下，常量名是区分大小写的；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 保持常量区分大小写并且使用大写字母来定义它们才是最安全的。&amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 1, 1549425539, 1, 0, 0);
INSERT INTO `study_book_knows` VALUES (5, 1, 1, '第8章    使用数组', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;8.1&amp;nbsp; &amp;nbsp; 数组&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 数组用来存储和组织数据。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 创建数组：array()函数或数组操作符[ ]。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 关联数组与数字索引数组的唯一区别就是键名，在数字索引数组中，键名是数字；在关联数组中，键名是单词。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;8.2&amp;nbsp; &amp;nbsp; 相关函数&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; count()&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;sizeof()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; each()&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;list()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; foreach()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; reset()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_push()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_pop()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_unshift()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_shift()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_merge()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_keys()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; array_values()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; shuffle()&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 0, 1549625924, 0, 0, 0);
INSERT INTO `study_book_knows` VALUES (3, 1, 1, '第6章    PHP的流程控制功能', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;6.1&amp;nbsp; &amp;nbsp; 转换流程&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;PHP所采用的编码标准都使用elseif，而不是else if。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; switch的使用：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $a = 'sad';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; switch($a){&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; case 'ddd';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo 'ffffff11111';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; break;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; case 'sad';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo 'ffffff33333';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; break;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; default:&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo 'ddd33333';&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; break;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; //'ffffff33333’&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; default：&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; break语句将结束switch语句的执行。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 三元操作符： 条件&amp;nbsp; ?&amp;nbsp; return true&amp;nbsp; :&amp;nbsp; return false ;&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;6.2&amp;nbsp; &amp;nbsp; 循环&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; while语句只要在表达式结果为true的情况下就执行。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; do...while语句的测试表达式应该始终以一个分号结束。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; for语句的圆括号内的表达式用分号分隔开。第一个表达式初始化一个计数器变量，第二个表达式是循环的检测条件，第三个表达式递增计数器变量。使用&lt;span style=&quot;font-weight: bold;&quot;&gt;break跳出所有代码块&lt;/span&gt;。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; for语句中的所有表达式都可以省略，但是必须保留分隔的分号。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 提示：在PHP里用一个数除以零不会导致一个致命的错误。相反，PHP产生一个警告并继续执行。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;continue语句结束当前迭代的执行，但不会导致整个循环结束。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 如果想要执行的代码作为控制结构的一部分，且这个控制结构仅由一个单独的行组成，那么可以省略方括号。然而，不管结构的长度有多长，总是使用开始和结束的方括号是一个好习惯。&lt;/p&gt;', 1, 1549972086, 1, 0, 0);
INSERT INTO `study_book_knows` VALUES (4, 1, 1, '第7章    使用函数', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.1&amp;nbsp; &amp;nbsp; 函数&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 函数是一个自包含的代码块，可以由脚本调用。&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.2&amp;nbsp; &amp;nbsp; 调用函数&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; print()和echo()函数并不是真正的函数，它们是用来设计把字符串输出到浏览器的语言构造。&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.3&amp;nbsp; &amp;nbsp; 定义函数&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; function 函数名(&amp;nbsp; ){&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 即便函数不需要参数，也必须提供括号。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 函数名字不能包含空格，必须以一个字母或一个下划线开头；和变量名不同，函数名是不区分大小写的。&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.4&amp;nbsp; &amp;nbsp; return&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; return语句停止了当前函数的执行并且把值返回给调用函数的代码。（return可以返回一个值或什么也不返回）&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.5&amp;nbsp; &amp;nbsp; 变量作用域及global&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; （默认）变量作用域：在函数中声明的变量在函数外是不可用的；在函数外声明的变量将不能自动在函数中使用。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 使用global修饰变量可作为全局变量，但在一个函数中修改一个全局变量，则会修改原始值而不是副本。&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.6&amp;nbsp; &amp;nbsp; static记住变量的值&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 使用static语句在函数调用之间记住一个变量的值。&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.7&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;更多内容&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1.为参数设置默认值&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 当我们给一个可选参数赋一个默认值时，所有后续的参数也都应该给定默认值。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2.把变量引用传递给函数&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 使用一个函数定义，把参数通过引用传递给函数。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 第一种：不使用&amp;amp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; function addFive($num){&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;(return)&amp;nbsp; &amp;nbsp; $num += 5;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $orignum = 10;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; addFive($orignum);&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo $orignum;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//10&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 说明：虽然addFive函数接受一个单独的值并且将它加上5，但是它不返回什么，所以还是原值&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 第二种：使用&amp;amp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; function addFive(&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;&amp;amp;&lt;/span&gt;$num){&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$num += 5;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$orignum = 10;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;addFive($orignum);&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo $orignum;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //15&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; 说明：把参数通过引用(&amp;amp;)传递给函数，就是把变量名和值全部传进去。&lt;/span&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;7.8&amp;nbsp; &amp;nbsp; 测试函数是否存在&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; function_exists()函数来检查函数的可用性，返回的结果是true或false。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 测试函数存在的目的：验证关键功能是否可用。&lt;/p&gt;', 1, 1549438866, 1, 0, 0);
INSERT INTO `study_book_knows` VALUES (6, 1, 1, '第9章    使用对象', '&lt;p&gt;对象用来存储和组织数据。理论上是盒子，这些事物(变量、函数等)都存在于叫做类(class)的一个模板式结构中。&lt;/p&gt;&lt;p&gt;使用对象的全部目标就是创建可以重用的代码。&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;9.1&amp;nbsp; &amp;nbsp; 对象&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; is_object()函数来测试某物是否是一个对象。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 在对象中声明的变量叫做属性。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public：任意地方都可以访问；&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;protected：在类自身或父类或继承类中可以访问；&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;private：只能由该类自身访问。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;-&amp;gt;操作符用来在脚本中调用对象方法；只要类中定义了变量，方法都能够访问它们以供自己使用。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;$this用来引用当前实例化的对象，如果一个对象引用自身，都必须使用$this变量。&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; 一个对象能够修改自己的属性。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 声明类，使用class关键字。&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;9.2&amp;nbsp; &amp;nbsp; 构造方法&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;9.3&amp;nbsp; &amp;nbsp; var声明变量&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;在PHP较早版本中，var用来在类中声明属性。为了向后兼容，如果你的代码中仍然使用var，会将其当作public对待而不会引发引发任何问题。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1549972030, 0, 0, 0);
INSERT INTO `study_book_knows` VALUES (7, 1, 0, '第10章    使用字符串、日期和事件', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1549972690, 0, 0, 0);

-- -----------------------------
-- Table structure for study_book_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_book_questions`;
CREATE TABLE `study_book_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `book_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `content` text NOT NULL COMMENT '方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='课本知识问题表';


-- -----------------------------
-- Table structure for study_book_type
-- -----------------------------
DROP TABLE IF EXISTS `study_book_type`;
CREATE TABLE `study_book_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='课本分类表';

-- -----------------------------
-- Records of study_book_type
-- -----------------------------
INSERT INTO `study_book_type` VALUES (1, 'PHP、MySQL和Apache入门经典（第5版）', 'PHP4的“生命尽头”终于到了。', 1549078973, 0);
INSERT INTO `study_book_type` VALUES (2, '21天学通JAVA（第7版）', '有些革命出其不意地吸引了全世界的眼球。', 1549079206, 0);
INSERT INTO `study_book_type` VALUES (3, 'MySQL从入门到精髓', '不闻不若闻之，闻之不若见之，见之不若知之，知之不若行之。', 1549088332, 0);

-- -----------------------------
-- Table structure for study_csst_act
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_act`;
CREATE TABLE `study_csst_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ct_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3使用管理表';

-- -----------------------------
-- Records of study_csst_act
-- -----------------------------
INSERT INTO `study_csst_act` VALUES (1, 2, 0, '选择器及符号解析', '&lt;h4&gt;
    &lt;span style=&quot;font-weight: bold;&quot;&gt;CSS3符号说明书：&lt;/span&gt;
&lt;/h4&gt;
&lt;div&gt;
    &lt;table border=&quot;none&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
        &lt;tbody&gt;
            &lt;tr&gt;
                &lt;th width=&quot;15%&quot;&gt;&amp;nbsp;符号&lt;/th&gt;
                &lt;th width=&quot;25%&quot;&gt;说明&amp;nbsp;&lt;/th&gt;
                &lt;th width=&quot;20%&quot;&gt;举例&amp;nbsp;&lt;/th&gt;
                &lt;th&gt;描述&amp;nbsp;&lt;/th&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;*&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;所有元素&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;* {display:none}&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;所有元素不显示&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
                &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;/tr&gt;
        &lt;/tbody&gt;
    &lt;/table&gt;
    &lt;p&gt;
        &lt;br&gt;
    &lt;/p&gt;
&lt;/div&gt;', 0, 1548086308, 0, 0, 0);
INSERT INTO `study_csst_act` VALUES (2, 3, 0, 'display的各种应用及注意事项', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;定义：&lt;/span&gt;规定元素应该生成的框的类型&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;说明：&lt;/span&gt;这个属性用于定义建立布局时元素生成的显示框类型。对于 HTML 等文档类型，如果使用 display 不谨慎会很危险，因为可能违反 HTML 中已经定义的显示层次结构。对于 XML，由于 XML 没有内置的这种层次结构，所有 display 是绝对必要的&lt;/p&gt;&lt;p&gt;属性值：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;none&lt;/span&gt;: 此元素不会被显示(同jQuery中的hide()方法)；&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; inline:&amp;nbsp;&lt;/span&gt;默认。此元素会被显示为内联元素，元素前后&lt;span style=&quot;font-weight: bold;&quot;&gt;没有换行符。&lt;/span&gt;元素则前后不会产生换行，一系列inline元素都在一行内显示，直到该行排满。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;block&lt;/span&gt;: 此元素将显示为块级元素，此元素前后会带&lt;span style=&quot;font-weight: bold;&quot;&gt;有换行符&lt;/span&gt;。通常被现实为独立的一块，会单独换一行&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;inline-block: &lt;/span&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;行内块元素，具有block的宽度高度特性又具有inline的同行特性&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548143333, 0, 0, 0);

-- -----------------------------
-- Table structure for study_csst_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_errors`;
CREATE TABLE `study_csst_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ct_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3报错总结表';


-- -----------------------------
-- Table structure for study_csst_others
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_others`;
CREATE TABLE `study_csst_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3其他管理表';

-- -----------------------------
-- Records of study_csst_others
-- -----------------------------
INSERT INTO `study_csst_others` VALUES (1, 0, 'CSS Hack详解', '&lt;p&gt;&lt;/p&gt;&lt;h4&gt;&lt;span style=&quot;background-color: rgb(249, 150, 59); font-weight: bold;&quot;&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot;&gt;总结：&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot;&gt;css hack 并不是标准的css，所以应该尽量少使用hack。&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h5&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot;&gt;链接地址 ：&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;http://www.divcss5.com/css-hack/c50275.shtml&lt;/span&gt;&lt;/p&gt;&lt;/h5&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;详解如下&lt;/span&gt;&lt;/h4&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;摘要：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;在我们制作页面时CSS hack由于不同的浏览器，比如Internet Explorer,Mozilla Firefox等，对CSS的解析认识不一样，因此会导致生成的页面效果不一样，得不到我们所需要的页面效果。 这个时候我们就需要针对不同的浏览器去写不同的CSS，&lt;span style=&quot;font-weight: bold;&quot;&gt;让它能够同时兼容不同的浏览器&lt;/span&gt;，能在不同的浏览器中也能得到我们想要的页面效果。&lt;p&gt;&lt;/p&gt;&lt;p&gt;　　CSS Hack大致有3种表现形式，属性级Hack、选择器Hack以及IE条件Hack&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;注意：尽可能减少对CSS Hack的使用&lt;/span&gt;。&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;原理：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;由于不同的浏览器对CSS的支持及解析结果不一样，还由于CSS中的优先级的关系。我们就可以根据这个来针对不同的浏览器来写不同的CSS。&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;说明：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;选择不同的浏览器及版本，通常如未作特别说明，所有的代码和示例的默认运行环境都为标准模式。&lt;br&gt;一些CSS Hack由于浏览器存在交叉认识，所以需要通过层层覆盖的方式来实现对不同浏览器进行Hack的。&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;1.实际应用：&lt;/span&gt;    &lt;span style=&quot;color: rgb(77, 128, 191);&quot;&gt;选择器&lt;/span&gt;&lt;/h5&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;&amp;nbsp;&lt;hack&gt; selector{ sRules }    &lt;span style=&quot;font-family: &quot; open=&quot;&quot; sans&quot;;=&quot;&quot; font-size:=&quot;&quot; 13px;&quot;=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/hack&gt;&lt;/h5&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;举例：&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/h5&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;* html .test{color:#090;} /* For IE6 and earlier */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;* + html .test{color:#ff0;} /* For IE7 */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.test:lang(zh-cn){color:#f00;} /* For IE8+ and not IE */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.test:nth-child(1){color:#0ff;} /* For IE9+ and not IE */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;:root .test {background-color:green;} /* For IE9 and Opera */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;@media screen and (-webkit-min-device-pixel-ratio:0) {.test {color:gray;}} /* For Chrome and Safari */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;@-moz-document url-prdfix() {.test {color:#fff}} /* For Forefox */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;* 上述代码中的3,4两行就是典型的利用能力来进行选择的CSS Hack。&amp;nbsp;&lt;/div&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;IE条件Hack:&lt;/span&gt;        &lt;br&gt;    &lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&amp;nbsp;&lt;/span&gt;&lt;/h5&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;!--[if &lt;keywords&gt;? IE &lt;version&gt;?]&gt;    &lt;br&gt;    HTML代码块    &lt;br&gt;    &lt;![endif]--&gt;&amp;nbsp;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;取值：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;keywords&gt;　&lt;span style=&quot;font-weight: bold;&quot;&gt;if条件共包含6种选择方式：是否、大于、大于或等于、小于、小于或等于、非指定版本&lt;/span&gt;&amp;nbsp;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;是否：&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 指定是否IE或IE某个版本。关键字：空    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 大于：&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 选择大于指定版本的IE版本。关键字：gt（greater than）    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 大于或等于：选择大于或等于指定版本的IE版本。关键字：gte（greater than or equal）    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 小于：&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 选择小于指定版本的IE版本。关键字：lt（less than）    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 小于或等于：选择小于或等于指定版本的IE版本。关键字：lte（less than or equal）    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 非指定版本：选择除指定版本外的所有IE版本。关键字：!    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;version&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;目前的常用IE版本为6.0及以上&amp;nbsp;&lt;/span&gt;&amp;nbsp;    &lt;br&gt;&lt;/version&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;说明：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;由于选择IE浏览器及IE的不同版本if条件Hack是HTML级别的（包含但不仅是CSS的Hack，可以选择任何HTML代&amp;nbsp; &amp;nbsp;码块），如不想在非IE中看到某区域，可这样写：&lt;p&gt;&lt;/p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;!--[if IE]&gt;&lt;br&gt;    &lt;p&gt;你在非IE中将看不到我的身影&lt;/p&gt;&lt;br&gt;&lt;p&gt;    &lt;![endif]--&gt;&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;上述p代码块，将只在IE中可见。&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;2.实际应用：&lt;/span&gt;    &lt;span style=&quot;color: rgb(77, 128, 191); font-weight: bold;&quot;&gt;属性级&lt;/span&gt;    &lt;br&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;selector{&lt;hack&gt;property:value;}或者selector{property:value&lt;hack&gt;;}&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;取值：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;_：选择IE6及以下。连接线（中划线）（-）亦可使用，为了避免与某些带中划线的属性混淆，所以使用下划线（_）更为合适。&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*：选择IE7及以下。诸如：（+）与（#）之类的均可使用，不过业界对（*）的认知度更高&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;/9：选择IE6+，可以区别所有IE和FireFox。&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;/0：选择IE8+和Opera&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;[;property:value;];：选择webkit核心浏览器（Chrome,Safari）。IE7及以下也能识别。中括号内外的3个分号必须保留，第一个分号前可以是任意规则或任意多个规则&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;[;color:#f00;]; 与 [color:#f00;color:#f00;]; 与 [margin:0;padding:0;color:#f00;]; 是等价的。生效的始终是中括号内的最后一条规则，所以通常选用第一种写法最为简洁。&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;注意：!important并不是一个hack手段，他是被用来改变css的优先级的，因为ie6是不识别!important,所以就被拿来当做css hack的一种，这是错误的。&lt;br&gt;&lt;h5&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;说明：&lt;/span&gt;&lt;/h5&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;选择不同的浏览器及版本，浏览器优先级别:FF&lt;/span&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;一些CSS Hack由于浏览器存在交叉认识，所以需要通过层层覆盖的方式来实现对不同浏览器进行Hack的。如下面这个例子：&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;如想同一段文字在IE6,7,8显示为不同颜色，可这样写：&lt;/span&gt;&lt;p style=&quot;font-weight: bold;&quot;&gt;&lt;/p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.test{&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;color:#090/9; /* For IE8+ */&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*color:#f00; /* For IE7 and earlier */&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;_color:#ff0; /* For IE6 and earlier */&lt;/span&gt;&lt;br&gt;&lt;p style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/p&gt;&lt;p style=&quot;font-weight: bold;&quot;&gt;    &lt;span style=&quot;background-color: rgb(70, 172, 200);&quot;&gt;* 上述Hack均需运行在标准模式下，若在怪异模式下运行，这些Hack将会被不同版本的IE相互识别，导致失效。&amp;nbsp;&amp;nbsp;&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;p style=&quot;font-weight: bold;&quot;&gt;HACK Demo:&lt;/p&gt;&lt;p style=&quot;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp; . demo&amp;nbsp; {&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; color:#f1ee18;/*所有识别*/&amp;nbsp;&lt;/p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; background-color:#00deff/9; /*IE6、7、8识别*/&amp;nbsp;&lt;br&gt;&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;+background-color:#a200ff;/*IE6、7识别*/&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;_background-color:#1e0bd1/*IE6识别*/&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;    &lt;br&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;@media screen and (-webkit-min-device-pixel-ratio:0){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;background-color:#f1ee18&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}{} /* Safari(Chrome) 有效 */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;@media all and (min-width: 0px){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;background-color:#f1ee18;/*opera and Safari(Chrome) and firefox*/&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;background-color:#4cac70/0;}/* 仅 Opera 有效 */&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;}&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;}{}&amp;nbsp;    &lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;.demo, x:-moz-any-link, x:default{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;background-color:#4eff00;/*IE7、Firefox3.5及以下 识别 */&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;}&amp;nbsp;    &lt;br&gt;@-moz-document url-prefix(){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;background-color:#4eff00;/*仅 Firefox 识别 */&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;}&amp;nbsp;    &lt;br&gt;* +html .demo{background-color:#a200ff;}/* 仅IE7 识别 */    &lt;br&gt;/* 一般情况下 我们区分IE7 只用 +background-color 配合 _background-color 就行了 如果必须写 .demo, x:-moz-any-link, x:default 这样的代码区分 Firefox3.5及以下 则谨记此写法对IE7也有效，故在其中要再重写一次 +background-color 或者使用 * +html .demo{background-color:blue;} 方法仅对 IE7 有效。可使用 @-moz-document url-prefix(){}方法独立区分所有 firefox */    &lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo, x:-moz-any-link, x:default{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display:block;/*IE7 firefox3.5及以下 识别 */&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;+display:none/*再区分一次IE7*/&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;    &lt;br&gt;@-moz-document url-prefix(){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display:block;/*仅 firefox 识别 */&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;}&amp;nbsp;    &lt;br&gt;@media screen and (-webkit-min-device-pixel-ratio:0){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display:block;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;}{} /* safari(Chrome) 有效 */&amp;nbsp;    &lt;br&gt;@media all and (min-width: 0px){&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.demo{&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display:none/0;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;} /* 仅 Opera 有效 */&amp;nbsp;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/div&gt;&lt;div&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&amp;nbsp;}{}&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;h4&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;font-weight: bold;&quot;&gt;总结：&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;css hack 并不是标准的css，所以应该尽量少使用hack。&lt;/span&gt;&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;&lt;/h4&gt;&lt;p&gt;&lt;keywords&gt;&lt;hack&gt;&lt;hack&gt;&lt;ie9&lt;ie8&lt;ie7&lt;ie6，css hack书写顺序一般为ff=&quot;&quot; ie9=&quot;&quot; ie8=&quot;&quot; ie7=&quot;&quot; ie6&lt;=&quot;&quot; span=&quot;&quot; style=&quot;&quot;&gt;链接地址 ：&lt;/ie9&lt;ie8&lt;ie7&lt;ie6，css&gt;&lt;/hack&gt;&lt;/hack&gt;&lt;/keywords&gt;http://www.divcss5.com/css-hack/c50275.shtml&lt;/p&gt;&lt;/div&gt;', 0, 1547895303, 0, 0, 0);

-- -----------------------------
-- Table structure for study_csst_plug_act
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_act`;
CREATE TABLE `study_csst_plug_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件使用管理表';


-- -----------------------------
-- Table structure for study_csst_plug_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_errors`;
CREATE TABLE `study_csst_plug_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件报错总结管理表';


-- -----------------------------
-- Table structure for study_csst_plug_others
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_others`;
CREATE TABLE `study_csst_plug_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件其他管理表';


-- -----------------------------
-- Table structure for study_csst_plug_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_questions`;
CREATE TABLE `study_csst_plug_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '解决方案',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件问题总结管理表';


-- -----------------------------
-- Table structure for study_csst_plug_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_specials`;
CREATE TABLE `study_csst_plug_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件特殊功能管理表';


-- -----------------------------
-- Table structure for study_csst_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_type`;
CREATE TABLE `study_csst_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3插件分类表';


-- -----------------------------
-- Table structure for study_csst_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_questions`;
CREATE TABLE `study_csst_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ct_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3问题总结表';

-- -----------------------------
-- Records of study_csst_questions
-- -----------------------------
INSERT INTO `study_csst_questions` VALUES (1, 1, 0, 'css样式属性加前加*什么意思', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;举例：&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/h5&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;.layui-laypage {&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display: inline-block;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*display: inline;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*zoom: 1;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;vertical-align: middle;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;margin: 10px 0;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;font-size: 0&lt;/div&gt;&lt;div&gt;}&lt;/div&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;说明：display为css的属性，inline为属性值&lt;/span&gt;&lt;/h5&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;解答：此写法属于&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;CSSHACKS&lt;/span&gt;，为了兼容IE6/7等低版本浏览器&lt;/span&gt;&lt;/h5&gt;&lt;/divcourier&gt;&lt;/divcourier&gt;', 0, 1547891508, 0, 0, 0);
INSERT INTO `study_csst_questions` VALUES (2, 1, 0, '如何让两个甚至多个DIV在同一行显示？', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1.设置两个div,如下：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;div&amp;gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;div&amp;gt;div1&amp;lt;/div&amp;gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;div&amp;gt;div2&amp;lt;/div&amp;gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;/div&amp;gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;使用浮动float(float:left或float:right) 可解决问题。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注意：&lt;/span&gt;&lt;strong&gt;DIV&lt;/strong&gt;是层叠样式表中的定位技术，全称DIVision，即为划分。有时可以称其为图层。DIV在编程中又叫做整除，即只得商的整数。 DIV元素是用来为HTML（标准通用标记语言下的一个应用）文档内大块（block-level）的内容提供结构和背景的元素。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 0, 1548140140, 0, 0, 0);
INSERT INTO `study_csst_questions` VALUES (3, 1, 0, 'block，inline和inline-block用法和区别', '&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：http://www.php.cn/div-tutorial-374042.html&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;总体概念：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;block元素(块级元素)通常被现实为独立的一块，会单独换一行；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;inline元素&amp;nbsp;(内联元素)则前后不会产生换行，一系列inline元素都在一行内显示，直到该行排满&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;常见的块级元素有 DIV, FORM, TABLE, P, PRE, H1~H6, DL, OL, UL 等；&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;常见的内联元素有 SPAN, A, STRONG, EM, LABEL, INPUT, SELECT, TEXTAREA, IMG, BR 等。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;block元素可以包含block元素和inline元素；但inline元素只能包含inline元素。要注意的是这个是个大概的说法，每个特定的元素能包含的元素也是特定的，所以具体到个别元素上，这条规律是不适用的。比如 P 元素，只能包含inline元素，而不能包含block元素。&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;一般来说，可以通过display:inline和display:block的设置，改变元素的布局级别。&lt;/p&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;细节对比：&lt;/span&gt;&lt;/h5&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; 一般我们会用display:block，display:inline或者display:inline-block来调整元素的布局级别，其实display的参数远远不止这三种，仅仅是比较常用而已。    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;IE（低版本IE）本来是不支持inline-block的，所以在IE中对内联元素使用display:inline-block，理论上IE是不识别的，但使用display:inline-block在IE下会触发layout，从而使内联元素拥有了display:inline-block属性的表象。&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;简单来说就是将对象呈现为inline对象，但是对象的内容作为block对象呈现。之后的内联对象会被排列在同一行内。比如我们可以给一个link（a元素）    &lt;span style=&quot;font-weight: bold;&quot;&gt;inline-block属性值，使其既具有block的宽度高度特性又具有inline的同行特性。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;inline元素不会独占一行，多个相邻的行内元素会排列在同一行里，直到一行排列不下，才会新换一行，其宽度随元素的内容而变化。&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;inline元素设置width,height属性无效。&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; inline元素的margin和padding属性，水平方向的padding-left, padding-right, margin-left, margin-right都产生边距效果；但竖直方向的padding-top, padding-bottom, margin-top, margin-bottom不会产生边距效果。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; block元素会独占一行，多个block元素会各自新起一行。    &lt;span style=&quot;font-weight: bold;&quot;&gt;默认情况下，block元素宽度自动填满其父元素宽度&lt;/span&gt;。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; block元素可以设置width,height属性。块级元素即使设置了宽度,仍然是独占一行。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; block元素可以设置margin和padding属性。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;使用inline-block出现的问题解决方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 链接地址：http://www.php.cn/css-tutorial-386188.html    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 例子：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;p style=&quot;background-color:green&quot;&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;&quot;&amp;gt;&amp;lt;/p&amp;gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;&quot;&amp;gt;&amp;lt;/p&amp;gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;&quot;&amp;gt;&amp;lt;/p&amp;gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;/p&amp;gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/csst_questions/20190122\ea00ac6638b94d4ebeea3f465c533609.png&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;采取inline-block进行布局,神奇的事情就发生了&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;p style=&quot;background-color:green&quot;&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;display:inline-block&quot;&amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;display:inline-block&quot;&amp;gt;&amp;lt;/p&amp;gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;p style=&quot;width:40px;heigth:30px;background-color:red;display:inline-block&quot;&amp;gt;&amp;lt;/p&amp;gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;/p&amp;gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;img src=&quot;/study/public/uploads/csst_questions/20190122\2289c373eb8c51f382e3f4b3cb06ec46.png&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;原本的3个p并排在一起,因为3个p变成了行内元素,所以也应该并排在一起 ,但是子p与父p之间有一个4px的间距，&lt;/p&gt;&lt;p&gt;&amp;nbsp;子p与子p之间有一个间距，出现的原因：因为 inline-block水平呈现的元素间，换行显示或空格分隔的情况下会有间距。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;解决办法：给父p添加css属性{font-size:0;-webkit-text-size-adjust:none;}就可以了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;注意：不能使用margin-right和margin-bottom,因为块级元素之间的间距不是固定值。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;background-color: rgb(70, 172, 200);&quot;&gt;-webkit-text-size-adjust是什么?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;webkit内核的浏览器(chrome)中,当在css中定义的中文font-size小于12px的时候,浏览器仍然使用12px,这时就可以用-webkit-text-size-adjust:none;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 0, 1548148365, 0, 0, 0);

-- -----------------------------
-- Table structure for study_csst_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_specials`;
CREATE TABLE `study_csst_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ct_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3特殊功能表';

-- -----------------------------
-- Records of study_csst_specials
-- -----------------------------
INSERT INTO `study_csst_specials` VALUES (1, 3, 0, 'box-sizing', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：https://www.cnblogs.com/ooooevan/p/5470982.html&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;定义：&lt;/span&gt;盒摸类型，允许以特定的方式定义匹配单独区域的特定元素。&lt;/p&gt;
&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;属性值：&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;1&lt;/span&gt;.&lt;span style=&quot;font-weight: bold;&quot;&gt;content-box&lt;/span&gt;：默认值，标准盒模型。&lt;span style=&quot;font-weight: bold;&quot;&gt;(外撑)&lt;/span&gt;&lt;/p&gt;
&lt;span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;元素的宽度/高度（width/height）（所占空间）等于元素边框宽度（border）加上元素内边距（padding）加上元素内容宽度 /高度（content width/height）即：Element Width/Height = border+padding+content width/height。&lt;/span&gt;&amp;nbsp;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;background-color: rgb(249, 150, 59);&quot;&gt;注意：

内容区大小不会变，加上padding、margin、border的话，就会往外撑开，从而破坏布局结构&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;2&lt;/span&gt;.&lt;strong&gt;border-box&lt;/strong&gt;：让元素维持IE6及以下版本盒模型。&lt;span style=&quot;font-weight: bold;&quot;&gt;(内撑)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;元素的宽度/高度（所占空间）等于元素内容的宽度/高度。这里的content width/height包含了元素的border,padding,内容的width/height。即：Element Width/Height&amp;nbsp;=width /height-border-padding。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold; background-color: rgb(249, 150, 59);&quot;&gt;注意：元素所占空间不会变，加了padding、border的话，会往内挤，保持外面容器不被破坏，但&lt;/span&gt;&lt;span style=&quot;background-color: rgb(249, 150, 59); font-weight: bold;&quot;&gt;margin不包含在元素空间，加了margin会向外撑开&lt;/span&gt;&lt;br&gt;&lt;/p&gt;
&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;strong&gt;3.inherit&lt;/strong&gt;：继承父元素的盒模型模式&lt;/p&gt;&lt;p&gt;&lt;strong&gt;兼容性：&lt;/strong&gt;IE8+及其他主流浏览器均支持box-sizing。其中IE6及以下默认是以类似border-box盒模型来计算尺寸。&lt;/p&gt;&lt;p&gt;&amp;nbsp;（ps：Firefox浏览器，box-sizing还可以设置一个padding-box，指定元素的宽度/高度等于内容的宽度/高度和內距，&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;即：Element Width/Height = content width/height+padding。）&lt;/p&gt;&lt;/div&gt;', 0, 1548141942, 0, 0, 0);

-- -----------------------------
-- Table structure for study_csst_type
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_type`;
CREATE TABLE `study_csst_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3分类管理表';

-- -----------------------------
-- Records of study_csst_type
-- -----------------------------
INSERT INTO `study_csst_type` VALUES (1, '其他', '特殊情况，可能都有', 1547891426, 0);
INSERT INTO `study_csst_type` VALUES (2, '选择器', '选择器是一种模式，用于选择需要添加样式的元素', 1548086244, 0);
INSERT INTO `study_csst_type` VALUES (3, '属性', '', 1548141903, 0);

-- -----------------------------
-- Table structure for study_first_module
-- -----------------------------
DROP TABLE IF EXISTS `study_first_module`;
CREATE TABLE `study_first_module` (
  `fm_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `fm_sort` tinyint(4) DEFAULT '0' COMMENT '显示位置排序',
  `fm_icon` varchar(30) NOT NULL COMMENT '前置标签',
  `fm_name` varchar(30) NOT NULL COMMENT '模块名称',
  `fm_controller` varchar(20) DEFAULT '' COMMENT '控制器名称/文件夹名称',
  `fm_method` varchar(20) DEFAULT '' COMMENT '方法名称  默认输出页',
  `fm_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `is_parent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '有无子类  默认0否1是',
  `fm_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  `tbname` varchar(30) DEFAULT '' COMMENT '表名',
  `is_powerf` tinyint(1) DEFAULT '0' COMMENT '是否设为权限  默认0否1是',
  `is_openf` tinyint(1) DEFAULT '0' COMMENT '是否公开  默认0否1是',
  PRIMARY KEY (`fm_id`) USING BTREE,
  KEY `fm_sort` (`fm_id`,`fm_sort`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理一级表';

-- -----------------------------
-- Records of study_first_module
-- -----------------------------
INSERT INTO `study_first_module` VALUES (1, 1, 'icon-dashboard', '控制平台', 'Index', 'index', 1, 0, 1545386748, 0, 'study_', 0, 1);
INSERT INTO `study_first_module` VALUES (2, 2, 'icon-user', '用户管理', 'Admin', 'index', 1, 0, 1545381827, 0, 'study_admin', 0, 1);
INSERT INTO `study_first_module` VALUES (3, 3, 'icon-key', '修改密码', 'Password', 'change', 1, 0, 1545381829, 0, '', 0, 1);
INSERT INTO `study_first_module` VALUES (4, 4, 'fas fa-database', '数据管理', 'Tools', 'index', 1, 1, 1545391981, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (5, 5, 'fas fa-user-tie', '权限管理', 'Power', 'index', 1, 0, 1545381833, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (6, 7, 'fab fa-php', 'Php管理', '', 'index', 1, 1, 1545395468, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (7, 8, 'icon-dribbble', '开发工具', '', 'index', 1, 1, 1545395467, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (8, 9, 'icon-save', '存储管理', '', 'index', 1, 1, 1546341844, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (9, 6, 'icon-retweet', '原理分析', 'Theory', 'index', 1, 0, 1546342288, 0, 'study_theory', 1, 0);
INSERT INTO `study_first_module` VALUES (10, 10, 'fab fa-js', 'Js管理', '', 'index', 1, 1, 1546400997, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (11, 11, 'icon-html5', 'H5管理', '', 'index', 1, 1, 1546402399, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (12, 12, 'icon-css3', 'Css3管理', '', 'index', 1, 1, 1546403195, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (13, 13, 'icon-compass', '软件管理', '', 'index', 1, 1, 1546403464, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (14, 14, 'icon-bell', '命令管理', '', 'index', 1, 1, 1546403465, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (15, 15, 'fas fa-plug', '插件管理', '', 'index', 1, 1, 1546403465, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (16, 16, 'icon-zoom-in', '其他知识', '', 'index', 1, 1, 1546403466, 0, '', 1, 0);
INSERT INTO `study_first_module` VALUES (17, 17, 'icon-star', '其他管理', 'Extra', 'index', 1, 0, 1546425683, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (18, 18, 'icon-trash', '回收站点', 'Recover', 'index', 1, 0, 1546425684, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (19, 19, 'icon-renren', '角色管理', 'Role', 'index', 0, 0, 1547709203, 0, 'study_role', 0, 0);
INSERT INTO `study_first_module` VALUES (20, 20, 'icon-ticket', '单独功能', 'Check', 'index', 0, 0, 1547709204, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (21, 21, 'icon-file-alt', '其他页面', 'Alone', 'index', 0, 0, 1547709206, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (22, 22, 'icon-tag', '更多页面', 'Check', 'index', 1, 0, 1549625230, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (23, 21, 'icon-book', '课本知识', 'Pubsix', 'index', 1, 1, 1549078951, 0, '', 0, 0);

-- -----------------------------
-- Table structure for study_htmlf_attrs
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_attrs`;
CREATE TABLE `study_htmlf_attrs` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `zn_name` varchar(100) NOT NULL,
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5属性管理表';


-- -----------------------------
-- Table structure for study_htmlf_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_errors`;
CREATE TABLE `study_htmlf_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5报错总结表';


-- -----------------------------
-- Table structure for study_htmlf_others
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_others`;
CREATE TABLE `study_htmlf_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5其他管理表';

-- -----------------------------
-- Records of study_htmlf_others
-- -----------------------------
INSERT INTO `study_htmlf_others` VALUES (1, 0, '【HTML】如何判断当前浏览器是否是IE', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;http://www.cnblogs.com/HDK2016/p/7414567.html&lt;/span&gt;&lt;/h5&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;参考地址：&lt;/font&gt;&lt;/font&gt;http://www.cnblogs.com/liuyanxia/p/5855760.html&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;HTML里：&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=HTML%E4%BB%A3%E7%A0%81&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;HTML代码&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;中，关系编写在&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E7%BD%91%E9%A1%B5%E4%BB%A3%E7%A0%81&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;|网页代码&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;时，浏览各种器的&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E5%85%BC%E5%AE%B9%E6%80%A7&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;兼容性&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;的英文个必须考虑的问题，有些时候无法找到适合所有浏览器的写法&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，就只能写根据浏览器种类区别的代码&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，这时就要用来判断代码了。在&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=HTML%E4%BB%A3%E7%A0%81&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;HTML代码&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;中，区别各种浏览器的代码如下，以ie6为例&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ -  [if IE 6]&amp;gt;仅IE6可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ - [if IE IE 6]&amp;gt; IE6及其以下版本可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ -  [if lt IE 6]&amp;gt; IE6以下版本可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ - [if gte IE 6]&amp;gt; IE6及其以上版本可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ -  [if gt IE 6]&amp;gt; IE6以上版本可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ - [if IE]&amp;gt;所有的IE可识别&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　以上这些代码写法都是针对即各版本浏览器的，在其他浏览器中这些代码都会被解释为&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=Html%E6%B3%A8%E9%87%8A&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Html注释&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;而直接无视掉。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;body&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！ -  [if IE 6]&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;div&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　IE6中才可以看到&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;/ div&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;！[endif]  - &amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;div&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　其他&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;/ div&amp;gt; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　&amp;lt;/ body&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;　　所以要想些针针对firefox之类的非&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=ie%E6%B5%8F%E8%A7%88%E5%99%A8&amp;amp;tn=44039180_cpr&amp;amp;fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1d9nvRYnHf1uHbsn16snjmz0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1TknHfvPHfYPH0Yn10drHcY&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;ie浏览器&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，需要这么写：&amp;lt;！ -  [if！IE]&amp;gt; &amp;lt;！ - &amp;gt;除IE外都可识别&amp;lt;！ -  &amp;lt;！[endif]  - &amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;JS里：&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;今天在写一个代码复制功能的时候，发现的这个问题，IE11也不支持的document.all，看来以后越来越标准了&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;今天碰到一个奇怪的问题，有一个页面，想指定用IE浏览器打开，在VS开发环境没有问题，但部署到服务器上，即使是用IE打开页面，还是提示“仅支持IE”，真是晕啊！&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;判断是否IE浏览器用的是window.navigator.userAgent，跟踪这个信息，发现在开发环境，识别为IE10，但访问服务器则识别为IE11，但IE11的的userAgent里是没有MSIE标志的，原因就是这个了。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;把判断IE浏览器的方法改成如下就可以了。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;原来的函数写法：对于新版的IE11已经不支持了&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;    &lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;pre&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function isIE（）{ &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（window.navigator.userAgent.indexOf（“MSIE”）&amp;gt; = 1 &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;）  &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;return &lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;true &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;; &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;否则&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;返回&lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;false &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/pre&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;IE10及以上不支持即浏览器的判断了，因为IE11已经不支持的document.all了，下面是支持IE11的版本的，当然ie6-8也是支持的&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;pre&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function isIE（）{ &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;// &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;ie？&lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（!! window.ActiveXObject ||“ActiveXObject” &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;窗口中）   &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;return&lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;true &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;  &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;else&lt;/font&gt;&lt;/font&gt;  &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;return&lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;false &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt; }&lt;/font&gt;&lt;/font&gt;&lt;/pre&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;', 0, 1547896404, 0, 0, 0);
INSERT INTO `study_htmlf_others` VALUES (2, 0, 'js代码判断浏览器种类IE、FF、Opera、Safari、', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;因为IE10-IE11的版本问题，不再支持的document.all判断，所以即判断函数要重新写了&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div&gt;&lt;div&gt;&lt;div id=&quot;highlighter_333461&quot;&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;3&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;4&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;五&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;6&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/td&gt;&lt;td&gt;&lt;div&gt;&lt;div&gt;&lt;code&gt;function&lt;/code&gt;&amp;nbsp;&lt;code&gt;isIE() { &lt;/code&gt;&lt;code&gt;//ie?&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;if&lt;/code&gt;&amp;nbsp;&lt;code&gt;(!!window.ActiveXObject || &lt;/code&gt;&lt;code&gt;&quot;ActiveXObject&quot;&lt;/code&gt;&amp;nbsp;&lt;code&gt;in&lt;/code&gt;&amp;nbsp;&lt;code&gt;window)&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;true&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;else&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;false&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;}&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第一种，只区分浏览器，不考虑版本&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div id=&quot;code30982&quot;&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera” &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Firefox”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“FF”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Chrome”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;return“Chrome”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Safari”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Safari”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; isOpera）{ return“IE”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var mb = myBrowser（）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“IE”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“FF”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Chrome”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Chrome”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Opera”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Opera”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Safari”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第二种，区分浏览器，并考虑IE5.5 6 7 8&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div id=&quot;code8955&quot;&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isIE = userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！isOpera; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isFF = userAgent.indexOf（“Firefox”）&amp;gt; -1; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isSafari = userAgent.indexOf（“Safari”）&amp;gt; -1; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isIE）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var IE5 = IE55 = IE6 = IE7 = IE8 = false; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var reIE = new RegExp（“MSIE（\\ d + \\。\\ d +）;”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; reIE.test（的userAgent）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var fIEVersion = parseFloat（RegExp [“$ 1”]）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE55 = fIEVersion == 5.5;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE7 = fIEVersion == 7.0; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE8 = fIEVersion == 8.0; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE55）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE55”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE6）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE6”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE7）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE7”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE8）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE8”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } // isIE end &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if if（isFF）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“FF”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera”; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} // myBrowser（）end &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“FF”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Opera”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“Safari”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE55”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE5.5”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE6”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE6”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE7”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE7”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE8”）{ &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE8”）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;下面给出一个判断当前浏览器是IE的JS代码。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;原理是利用了IE与标准浏览器在处理数组的的toString方法的差异做成的。对于标准游览器，如果数组里面最后一个字符为逗号，JS引擎会自动剔除它。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;lt;script type =“text / javascript”&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;！[CDATA [&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var ie =！ -  [1，]; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;alert（ie）; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;]]&amp;gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;lt;/ script&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1547896535, 0, 0, 1);

-- -----------------------------
-- Table structure for study_htmlf_plug_act
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_act`;
CREATE TABLE `study_htmlf_plug_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件使用管理表';


-- -----------------------------
-- Table structure for study_htmlf_plug_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_errors`;
CREATE TABLE `study_htmlf_plug_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件报错总结管理表';


-- -----------------------------
-- Table structure for study_htmlf_plug_others
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_others`;
CREATE TABLE `study_htmlf_plug_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件其他管理表';


-- -----------------------------
-- Table structure for study_htmlf_plug_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_questions`;
CREATE TABLE `study_htmlf_plug_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '解决方案',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件问题总结管理表';


-- -----------------------------
-- Table structure for study_htmlf_plug_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_specials`;
CREATE TABLE `study_htmlf_plug_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件特殊功能管理表';


-- -----------------------------
-- Table structure for study_htmlf_plug_theory
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_theory`;
CREATE TABLE `study_htmlf_plug_theory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `hpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件原理解析表';


-- -----------------------------
-- Table structure for study_htmlf_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_type`;
CREATE TABLE `study_htmlf_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5插件分类表';


-- -----------------------------
-- Table structure for study_htmlf_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_questions`;
CREATE TABLE `study_htmlf_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5问题总结表';

-- -----------------------------
-- Records of study_htmlf_questions
-- -----------------------------
INSERT INTO `study_htmlf_questions` VALUES (1, 0, 'html中a标签怎么调用js中的function方法', '&lt;p&gt;链接地址：https://zhidao.baidu.com/question/138894196091766805.html&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small;&quot;&gt;常用的在a标签中有点击事件：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;1.&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;a href=&quot;javascript:js_method();&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small;&quot;&gt;这是我们平台上常用的方法，但是这种方法在传递this等参数的时候很容易出问题，而且javascript:协议作为a的href属性的时候不仅会导致不必要的触发window.onbeforeunload事件，在IE里面更会使&lt;a href=&quot;https://www.baidu.com/s?wd=gif%E5%8A%A8%E7%94%BB&amp;amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot;&gt;gif动画&lt;/a&gt;图片停止播放。&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=W3C%E6%A0%87%E5%87%86&amp;amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot;&gt;W3C标准&lt;/a&gt;不推荐在href里面执行javascript语句&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;2.&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: small; font-weight: bold; color: rgb(194, 79, 74);&quot;&gt;a href=&quot;javascript:void(0);&quot; onclick=&quot;js_method()&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small;&quot;&gt;这种方法是很多网站&lt;span style=&quot;font-weight: bold;&quot;&gt;最常用的方法，也是最周全的方法&lt;/span&gt;，onclick方法负责执行js函数，而void是一个操作符，void(0)返回undefined，地址不发生跳转。而且这种方法不会像第一种方法一样直接将js方法暴露在浏览器的状态栏。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;3.&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small; font-weight: bold; color: rgb(194, 79, 74);&quot;&gt;a href=&quot;javascript:;&quot; onclick=&quot;js_method()&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small;&quot;&gt;这种方法跟跟2种类似，区别只是&lt;span style=&quot;font-weight: bold;&quot;&gt;执行了一条空的&lt;a href=&quot;https://www.baidu.com/s?wd=js%E4%BB%A3%E7%A0%81&amp;amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot;&gt;js代码&lt;/a&gt;&lt;/span&gt;。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;4.&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;a href=&quot;#&quot; onclick=&quot;js_method()&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small;&quot;&gt;这种方法也是网上很常见的代码，#是标签内置的一个方法，代表top的作用。所以用这种方法&lt;span style=&quot;font-weight: bold;&quot;&gt;点击后网页后返回到页面的最顶端。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;5.&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;a href=&quot;#&quot; onclick=&quot;js_method();return false;&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: small;&quot;&gt;这种方法点击执行了js函数后return false，&lt;span style=&quot;font-weight: bold;&quot;&gt;页面不发生跳转，执行后还是在页面的当前位置。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small;&quot;&gt;此外还可以用js(jquery)单独给标签绑定&lt;a href=&quot;https://www.baidu.com/s?wd=click%E4%BA%8B%E4%BB%B6&amp;amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot;&gt;click事件&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;【总结】&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;常用，周全的写法：href=&quot;javascript:void(0);&quot; onclick=&quot;js_method()&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 或者：&lt;span style=&quot;font-weight: bold;&quot;&gt;href=&quot;javascript:;&quot; onclick=&quot;js_method()&quot;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 1, 1548939603, 1, 1, 0);

-- -----------------------------
-- Table structure for study_htmlf_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_specials`;
CREATE TABLE `study_htmlf_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5特殊功能表';


-- -----------------------------
-- Table structure for study_htmlf_tags
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_tags`;
CREATE TABLE `study_htmlf_tags` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `zn_name` varchar(100) NOT NULL,
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5标签管理表';


-- -----------------------------
-- Table structure for study_js_actions
-- -----------------------------
DROP TABLE IF EXISTS `study_js_actions`;
CREATE TABLE `study_js_actions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js使用管理表';


-- -----------------------------
-- Table structure for study_js_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_js_errors`;
CREATE TABLE `study_js_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js报错总结表';


-- -----------------------------
-- Table structure for study_js_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_js_extends`;
CREATE TABLE `study_js_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js扩展知识表';

-- -----------------------------
-- Records of study_js_extends
-- -----------------------------
INSERT INTO `study_js_extends` VALUES (1, 3, 'ddeeee', '&lt;h3&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;ggrrr&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h3&gt;', 1, 1547143995, 1, 1, 0);

-- -----------------------------
-- Table structure for study_js_frame_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_errors`;
CREATE TABLE `study_js_frame_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架报错总结表';


-- -----------------------------
-- Table structure for study_js_frame_event
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_event`;
CREATE TABLE `study_js_frame_event` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '事件名称',
  `zn_name` varchar(60) NOT NULL COMMENT '事件中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架事件管理表';


-- -----------------------------
-- Table structure for study_js_frame_functions
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_functions`;
CREATE TABLE `study_js_frame_functions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `zn_name` varchar(100) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架函数管理表';

-- -----------------------------
-- Records of study_js_frame_functions
-- -----------------------------
INSERT INTO `study_js_frame_functions` VALUES (1, 1, 0, 'each', '遍历对象', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548403781, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_frame_others
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_others`;
CREATE TABLE `study_js_frame_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架其他管理表';

-- -----------------------------
-- Records of study_js_frame_others
-- -----------------------------
INSERT INTO `study_js_frame_others` VALUES (1, 1, 0, ':contains 选择器', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;定义：&lt;/span&gt;:contains 选择器选取包含指定字符串的元素。&lt;/p&gt;&lt;p&gt;该字符串可以是直接包含在元素中的文本，或者被包含于子元素中。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;举例：&lt;/span&gt;选择所有包含 &quot;is&quot; 的 &amp;lt;p&amp;gt; 元素：&amp;nbsp;&lt;span style=&quot;background-color: rgb(245, 245, 245); color: rgb(51, 51, 51); font-family: Monaco, Menlo, Consolas, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;$(&quot;p:contains(is)&quot;)&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;&lt;span style=&quot;background-color: rgb(245, 245, 245); color: rgb(51, 51, 51); font-family: Monaco, Menlo, Consolas, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;$(&quot;:contains(&lt;/span&gt;&lt;i style=&quot;color: rgb(51, 51, 51); font-family: Monaco, Menlo, Consolas, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;text&lt;/i&gt;&lt;span style=&quot;background-color: rgb(245, 245, 245); color: rgb(51, 51, 51); font-family: Monaco, Menlo, Consolas, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;)&quot;)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 参数：text&amp;nbsp; &amp;nbsp;必需，规定要查找的文本&lt;span style=&quot;background-color: rgb(245, 245, 245); color: rgb(51, 51, 51); font-family: Monaco, Menlo, Consolas, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; background-color: rgb(249, 150, 59);&quot;&gt;作用：搜索时进行模糊匹配&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548061635, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_frame_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_questions`;
CREATE TABLE `study_js_frame_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架问题总结表';

-- -----------------------------
-- Records of study_js_frame_questions
-- -----------------------------
INSERT INTO `study_js_frame_questions` VALUES (1, 1, 0, 'JS中用var声明变量和不用的区别', '&lt;p&gt;    &lt;strong&gt;链接地址：&lt;/strong&gt;https://blog.csdn.net/lxiang222/article/details/73129099&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;1.&amp;nbsp;&lt;/span&gt;    &lt;strong&gt;在函数内部声明变量&lt;/strong&gt;&amp;nbsp;    &lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;用var声明的是局部变量，在函数外部访问不到，&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;没var声明的是全局变量。在函数外部是可以访问到的。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2. 在函数外部声明变量&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;用var声明的变量，在函数外部可以访问到，但在函数内访问，不可以。&lt;/strong&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;没var声明的是全局变量。在函数内部是可以访问到的。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;strong&gt;总结：&lt;/strong&gt;&lt;strong&gt;用var声明的变量，只能在本作用域使用（作用域分为函数作用域和函数外作用域）；&lt;/strong&gt;&lt;strong&gt;没var声明的是全局变量，那都可以使用。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;3.补充说明&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;javascript声明变量的时候，虽然用var关键字声明和不用关键字声明，很多时候运行并没有问题，但是这两种方式还是有区别的。可以正常运行的代码并不代表是合适的代码。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;var num = 1；&lt;br&gt;是在当前域中声明变量. 如果在方法中声明，则为局部变量（local variable）；如果是在全局域中声明，则为全局变量。&lt;br&gt;而 num = 1；&lt;br&gt;事实上是对属性赋值操作。首先，它会尝试在当前作用域链（如在方法中声明，则当前作用域链代表全局作用域和方法局部作用域etc。。。）中解析 num； 如果在任何当前作用域链中找到num，则会执行对num属性赋值； 如果没有找到num，它才会在全局对象（即当前作用域链的最顶层对象，如window对象）中创造num属性并赋值。&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注意！它并不是声明了一个全局变量，而是创建了一个全局对象的属性。&lt;/span&gt;&lt;br&gt;即便如此，可能你还是很难明白“变量声明”跟“创建对象属性”在这里的区别。事实上，javascript的变量声明、创建属性以及每个javascript中的每个属性都有一定的标志说明它们的属性----如只读（ReadOnly）不可枚举（DontEnum）不可删除（DontDelete）等等。&lt;br&gt;当使用var声明一个变量时，创建的这个属性是不可配置的，也就是说无法通过delete运算符删除&lt;br&gt;&lt;/p&gt;&lt;p&gt;var name=1 &amp;nbsp; &amp;nbsp;-&amp;gt;不可删除&lt;/p&gt;&lt;p&gt;sex=”girl“ &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; -&amp;gt;可删除&lt;/p&gt;&lt;p&gt;this.age=22 &amp;nbsp; &amp;nbsp;-&amp;gt;可删除&lt;/p&gt;&lt;p&gt;    &lt;br&gt;&lt;/p&gt;', 0, 1548239330, 0, 0, 1);
INSERT INTO `study_js_frame_questions` VALUES (2, 1, 0, 'JS中声明变量的三种方式 const var let', '&lt;p&gt;&lt;strong&gt;链接地址：&lt;/strong&gt;https://blog.csdn.net/mengyuying16/article/details/54910372&lt;/p&gt;&lt;p&gt;&lt;strong&gt;const&lt;/strong&gt;：用于声明&lt;strong&gt;常量&lt;/strong&gt;。注意：定义的变量的时候，必须同时初始化，且其值之后不可以修改。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;var&lt;/span&gt;：最常用的声明变量关键字。&amp;nbsp;定义的变量的时候，若没有初始化，不报错，会输出undefined。其值之后可以修改。&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var可以用来声明全局变量，也可以声明局部变量，依据它们声明的位置：&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;全局变量：在函数外定义的变量；（注意：若没有使用关键字声明的变量，默认为全局变量。）作用域是整个代码文件。&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;局部变量：在函数内定义的变量。作用域是当前的函数内部。&lt;/p&gt;&lt;strong&gt;let&lt;/strong&gt;：&lt;strong&gt;块级&lt;/strong&gt;作用域 。在块级{}里面用let定义的变量，离开当前的块{}之后，就不能使用（有点像局部变量，但作用域不一样）。注意：{...}一对花括弧就就是一个特定的代码块，包括直接的{}，流程语句的{}，函数的{},....。函数声明时本身就带有{}，也是属于一个代码块&amp;nbsp;&amp;nbsp;', 0, 1548240930, 0, 0, 1);

-- -----------------------------
-- Table structure for study_js_frame_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_specials`;
CREATE TABLE `study_js_frame_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架特殊功能表';

-- -----------------------------
-- Records of study_js_frame_specials
-- -----------------------------
INSERT INTO `study_js_frame_specials` VALUES (1, 1, 0, 'jQuery2.0.3  表格的相关功能', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;1.获取表格隐藏的行数&lt;/span&gt;：$(&quot;#Tableid&quot;).find(&quot;tr[style='display: none;']&quot;).length&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;2.获取表格&amp;gt;行&amp;gt;单元格(第3个)&amp;gt;input的值：&lt;/span&gt;&lt;/p&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;$&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;span&gt;&quot;tbody tr&quot;&lt;/span&gt;&lt;span&gt;).&lt;/span&gt;&lt;span&gt;each&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;span&gt;function&lt;/span&gt;&lt;span&gt;(){&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp; $(this).children('td:eq(2)').each(function(){&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;alert($(this).find(&quot;input&quot;).val());&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp; })&lt;/div&gt;&lt;p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; });&lt;/span&gt;&lt;/div&gt;', 0, 1548086114, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_frame_type
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_type`;
CREATE TABLE `study_js_frame_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架分类表';

-- -----------------------------
-- Records of study_js_frame_type
-- -----------------------------
INSERT INTO `study_js_frame_type` VALUES (1, 'jQuery', 'jQuery 是一个“写的更少，但做的更多”的轻量级 JavaScript 库', 1548051768, 0);

-- -----------------------------
-- Table structure for study_js_nouns
-- -----------------------------
DROP TABLE IF EXISTS `study_js_nouns`;
CREATE TABLE `study_js_nouns` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '名词名称',
  `zn_name` varchar(100) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js名词解释表';

-- -----------------------------
-- Records of study_js_nouns
-- -----------------------------
INSERT INTO `study_js_nouns` VALUES (1, 0, 'each', '遍历对象', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548403443, 0, 0, 1);
INSERT INTO `study_js_nouns` VALUES (2, 0, '对象(Object)', '编程术语，其广义指的是在内存上一段有意义的区域，称作为一个对象。', '&lt;div label-module=&quot;para&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;链接地址：&lt;/span&gt;https://baike.baidu.com/item/对象/2331271&lt;br&gt;&lt;/div&gt;&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;描述：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;广义：在内存上一段有意义的区域，称作为一个对象。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在Ç中，具有特定长度的类型，可以称作为对象类型，函数不具有特定长度，所以不是对象类型。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在显式支持&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1/2262089&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;面向对象&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;的语言中，“对象”一般是指类在内存中装载的实例&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，具有相关的成员变量&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;和成员函数（也称为：方法）。&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;a name=&quot;1_2&quot;&gt;&lt;/a&gt;&lt;a name=&quot;sub10666278_1_2&quot;&gt;&lt;/a&gt;&lt;a name=&quot;扩展&quot;&gt;&lt;/a&gt;&lt;a name=&quot;1-2&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div label-module=&quot;para-title&quot;&gt;&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;扩展：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;/div&gt;&lt;h5&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;面向对象&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（Object Oriented，OO）是当前计算机界关心的重点，它是90年代&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E6%96%B9%E6%B3%95&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;软件开发方法&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;的主流。面向对象的概念和应用已超越了程序设计和软件开发，扩展到很宽的范围。如&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%95%B0%E6%8D%AE%E5%BA%93%E7%B3%BB%E7%BB%9F&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;数据库系统&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，交互式界面，应用结构，应用平台，&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%88%86%E5%B8%83%E5%BC%8F%E7%B3%BB%E7%BB%9F&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;分布式系统&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，网络管理结构，CAD技术，人工智能等领域。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;', 0, 1548681608, 0, 0, 0);
INSERT INTO `study_js_nouns` VALUES (3, 0, '文档对象模型(DOM)', '是W3C组织推荐的处理可扩展置标语言的标准编程接口', '&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：h&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;ttps://baike.baidu.com/item/文档对象模型&lt;/h5&gt;&lt;h4&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;定义：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;                    &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;                                        &lt;/h4&gt;&lt;h5&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;文档对象模型（Document Object Model&amp;nbsp;，简称DOM），是&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/W3C%E7%BB%84%E7%BB%87/11005671&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;W3C组织&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;推荐的处理&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%8F%AF%E6%89%A9%E5%B1%95%E7%BD%AE%E6%A0%87%E8%AF%AD%E8%A8%80&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;柯林斯扩展置标语言&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;的标准&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BC%96%E7%A8%8B%E6%8E%A5%E5%8F%A3&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;编程接口&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;是它与一种平台个人文库个人文库个人文库语言状语从句：无关的&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E6%8E%A5%E5%8F%A3&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;应用程序接口&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（API），它可以动态地访问程序和脚本，更新其内容，结构和万维网文档的风格（目前，HTML和XML文档是通过说明部分定义的）。文档可以进一步被处理，处理的结果可以加入到当前的页面&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。 DOM是一种基于树的API文档，它要求在处理过程中整个文档都表示在&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%AD%98%E5%82%A8%E5%99%A8&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;存储器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;中。另外一种简单的API是基于事件的SAX，它可以用于处理很大的XML文档，由于大，所以不适合全部放在存储器中处理。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/W3C%E7%BB%84%E7%BB%87/11005671&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/a&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%8F%AF%E6%89%A9%E5%B1%95%E7%BD%AE%E6%A0%87%E8%AF%AD%E8%A8%80&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/a&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BC%96%E7%A8%8B%E6%8E%A5%E5%8F%A3&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/a&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E6%8E%A5%E5%8F%A3&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/a&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%AD%98%E5%82%A8%E5%99%A8&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/a&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/W3C%E7%BB%84%E7%BB%87/11005671&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/a&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%8F%AF%E6%89%A9%E5%B1%95%E7%BD%AE%E6%A0%87%E8%AF%AD%E8%A8%80&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/a&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BC%96%E7%A8%8B%E6%8E%A5%E5%8F%A3&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/a&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E6%8E%A5%E5%8F%A3&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/a&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;            &lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%AD%98%E5%82%A8%E5%99%A8&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;/font&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/a&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;/font&gt;                        &lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;&amp;nbsp;&amp;nbsp;&lt;/font&gt;    &lt;/font&gt;&lt;/h5&gt;&lt;div&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;h5&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;b&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;DOM树结点语义扩展&lt;/font&gt;&lt;/font&gt;&lt;/b&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;为了增加DOM树结点与页面主题信息相关程度的语义信息，计算结点内容的重要度，将HTML标签的类别（类别），非链接文字数（WordNum），超链接数（LinkNum），属性集（ Attibution）和影响度因子（影响）等属性添加到结点中，扩展其语义.HTML标签依据其作用可分为5类：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;ul&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;描述标题及页面概要信息的标签：如&amp;lt;标题&amp;gt;，&amp;lt;元&amp;gt;等。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;规划网页布局的标签：如&amp;lt;TABLE&amp;gt; &amp;lt;TR&amp;gt; &amp;lt;TD&amp;gt;，&amp;lt;P&amp;gt;，&amp;lt;DIV&amp;gt;等，其作用是描述网页内容的布局结构。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;描述显示特点的标签：如&amp;lt;B&amp;gt;，&amp;lt;I&amp;gt;，&amp;lt;强&amp;gt;，&amp;lt;H1&amp;gt;  -  &amp;lt;H6&amp;gt;等，其作用是强调重点内容，引起人们注意。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;超链接相关的标签，表示网页间的内容相关性信息。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;其他标签，如设置图像的标签&amp;lt;IMG&amp;gt;，在文本提取时将忽略这类标签。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;/ul&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;根据HTML标签在刻画网页特征时的语义功能，将DOM树结点分为6种类别：标题类（TITLE），正文类（内容），视觉类（VISION），分块类（BLOCK），超链类（LINK）和其他类（其他），不同类的结点对网络信息提取的重要度不同。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;ul&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;标题类（TITLE）：指HTML文档中标题标签的专有类别。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;正文类（CONTENT）：指包含网页正文内容的标签类别，如包含文字的&amp;lt;TD&amp;gt;标签。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;视觉类（VISION）：指描述页面显示特性的标签类别，如&amp;lt;B&amp;gt;，&amp;lt;强&amp;gt;等。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;分块类（BLOCK）：指用于网页内容分块的标签类别，如&amp;lt;TABLE&amp;gt;，&amp;lt;TR&amp;gt;等。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;超链类（LINK）：指包含超链接的标签类别，如&amp;lt;A&amp;gt;。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;其他类（其他）：指不属于以上5种类别的标签类型。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/li&gt;&lt;/ul&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;以上6类结点对页面主题的重要度依次降低。扩展后的DOM树结点结构如图&lt;/font&gt;&lt;/font&gt;&lt;div&gt;&lt;img src=&quot;/study/public/uploads/js_nouns/20190128\be1299034ad6435d148b840d42c4e8fd.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;所示。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;b&gt;结点影响度因子&lt;/b&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;Web页面的有效内容大多存在DOM树的叶结点中，DOM树中的其余结点主要用于表示内容分块及页面的外观特性。在已有的页面信息提取方法中，对这些结点往往只考虑内容分块作用，而忽略了视觉结点对页面内容的影响。实际上，网页设计者通常会利用显示标签以及标签属性强调重点内容，不妨称其为强调标签和标签强调属性，例如〈b〉标签，或〈font〉标签的size属性。此外，不同类别结点对其子孙结点内容块的影响也是不同的。例如，以标题类结点为祖先结点的内容块，其重要程度应更高。为了评判DOM树中结点对内容的影响程度，定义了结点影响度因子。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;定义1(DOM树结点影响度因子)表示结点对内容影响的相对程度，用Influence(node)表示，Influence(node) ∈[0，1]。该值越大，表明影响程度越高。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;结点影响度因子的确定要综合考虑结点类别和标签强调属性，其初值按TITLE，CONTENT，VISION，BLOCK，LINK，OTHER类别降序排列。可构造影响度因子初值向量Initvlale。同时结点影响度因子具有传递性，即某结点的影响度因子值应向其子结点传递。因此，叶结点的影响度因子可由下式计算:Influence(leaf) =∑ki=Influence(Ancestori)其中，Ancestori是叶结点的祖先结点，k为祖先结点数。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;接口：&lt;/span&gt;&lt;/h4&gt;&lt;div label-module=&quot;para&quot;&gt;主要的接口有&lt;div&gt;&lt;img src=&quot;/study/public/uploads/js_nouns/20190128\dbb34b8f318f1d2481d7cbe11d5faf3b.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/div&gt;：&lt;/div&gt;&lt;ul&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Node接口：它是文档中节点的基类型。定义了基本的访问和改变文档结构的方法。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Document接口：它代表整个文档。可创建文档中的各种节点(元素、注释、处理指令等)，创建的节点中带有一个OwnerDoculnent属性表示创建它们的Document对象。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;DocumentFragment接口：它代表文档树的子树，相当一个小型文档。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Attr接口：它代表元素节点的属性。有意思的是它并不认为是该元素节点的子节点，不构成DOM树的一部分。同时也不是DocumentFragment节点的直接子节点。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;CharacterData接口：它维护了DOMsitrgn字符串并提供读写操作的接口。但不直接对应文档的某种类型节点。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Text接口：它从CharacterData继承而来。代表元素或属性的一段连续的文本内容。它有一个派生的接口CDATAsection，目的是：CDATASeciton节点的内容将不会作任何转化;使用Node中的nomraliez方法时相邻的Text节点会合并成一个节点，但使用CDATASeciton可避免合并。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Comment接口：它也从CharacterData继承而来。代表注释中的文本内容。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;NodeList接口：用于管理有序的节点集。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Entity接口：它代表实体;EntityReference代表实体的引用。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;NamedNodeMap接口：用于管理无序的节点集。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;DOMImplementation接口：它提供与DOM模型的实例无关的接口。CreateDocument可创建一个Document对象;haseFature可判断DOM实现是否支持某一模块。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;Notation接口：它代表文档中的符号定义。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;ProcessingInstruction接口：它代表处理指令。&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div label-module=&quot;para&quot;&gt;DOMException接口：异常处理。由于程序中的逻辑错误、数据丢失或DOM实现本身不稳定引起的错误。在程序处理过程中，由方法返回一个错误值。接口之间的继承关系可参看图。&lt;/div&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h4&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;特征：&lt;/span&gt;&lt;/h4&gt;&lt;div&gt;&lt;div label-module=&quot;para&quot;&gt;Document Object Model的历史可以追溯至1990年代后期微软与&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/Netscape/2778944&quot;&gt;Netscape&lt;/a&gt;的“&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%B5%8F%E8%A7%88%E5%99%A8%E5%A4%A7%E6%88%98/8488119&quot;&gt;浏览器大战&lt;/a&gt;”&lt;sup&gt;&amp;nbsp;[3]&lt;/sup&gt;&lt;a name=&quot;ref_[3]_758570&quot;&gt;&amp;nbsp;&lt;/a&gt;&amp;nbsp;（browser wars），双方为了在JavaScript与&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/JScript/750992&quot;&gt;JScript&lt;/a&gt;一决生死，于是大规模的赋予浏览器强大的功能。微软在网页技术上加入了不少专属事物，计有&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/VBScript/473081&quot;&gt;VBScript&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/ActiveX/529325&quot;&gt;ActiveX&lt;/a&gt;、以及微软自家的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/DHTML/224929&quot;&gt;DHTML&lt;/a&gt;格式等，使不少网页使用非微软平台及浏览器无法正常显示。DOM即是当时蕴酿出来的杰作。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;DOM分为HTML DOM和XML DOM两种。它们分别定义了访问和操作HTML/XML文档的标准方法，并将对应的文档呈现为带有元素、属性和文本的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%A0%91%E7%BB%93%E6%9E%84/3399688&quot;&gt;树结构&lt;/a&gt;（节点树），如下图所示：&lt;div&gt;&lt;img src=&quot;/study/public/uploads/js_nouns/20190128\edafabdb6b7ecc503f27e944d77a7cd3.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/div&gt;&amp;nbsp;1）DOM树定义了HTML/XML文档的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E9%80%BB%E8%BE%91%E7%BB%93%E6%9E%84&quot;&gt;逻辑结构&lt;/a&gt;，给出了一种应用程序访问和处理XML文档的方法。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;2）在DOM树中，有一个根节点，所有其他的节点都是根节点的后代。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;3) 在应用过程中，基于DOM的HTML/XML分析器将一个HTML/XML文档转换成一棵DOM树，应用程序通过对DOM树的操作，来实现对HTML/XML文档数据的操作&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/h5&gt;        &lt;/font&gt;    &lt;/font&gt;&lt;/div&gt;', 0, 1548681692, 0, 0, 0);
INSERT INTO `study_js_nouns` VALUES (4, 0, '浏览器对象模型(BOM)', '用于描述这种对象与对象之间层次关系的模型', '&lt;h5&gt;&lt;p&gt;链接地址：https://baike.baidu.com/item/BOM/1801&lt;/p&gt;&lt;/h5&gt;&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;定义：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;BOM（Browser Object Model&amp;nbsp; ）是指浏览器对象模型，是用于描述这种对象与对象之间层次关系的模型，浏览器对象模型提供了独立于内容的，可以与浏览器窗口进行互动的对象结构.BOM由多个对象组成，其中代表&lt;span style=&quot;font-weight: bold;&quot;&gt;浏览器窗口的&lt;/span&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Window&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;对象是BOM的顶层对象，其他对象都是该对象的子对象&lt;/span&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;主要功能：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;h5&gt;1. 弹出新浏览器窗口的能力；&lt;br&gt;2. 移动、关闭和更改浏览器窗口大小的能力；&lt;br&gt;3. 可提供WEB浏览器详细信息的导航对象；&lt;br&gt;4.可提供浏览器载入页面详细信息的本地对象；&lt;br&gt;5 .可提供用户屏幕分辨率详细信息的屏幕对象；&lt;br&gt;6. 支持Cookies；&lt;br&gt;7. Internet Explorer对BOM进行扩展以包括ActiveX对象类，可以通过JavaScript来实现ActiveX对象。&lt;/h5&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;其他事项：&lt;/span&gt;&lt;/h4&gt;&lt;h5&gt;由于BOM没有相关标准，每个浏览器都有其自己对BOM的实现方式。BOM有窗口对象、导航对象等一些实际上已经默认的标准，但对于这些对象和其它一些对象，每个浏览器都定义了自己的属性和方式。&amp;nbsp;&amp;nbsp;&lt;/h5&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;', 0, 1548681548, 0, 0, 0);
INSERT INTO `study_js_nouns` VALUES (5, 0, '接口(interface)', '两个不同系统(或子程序)交接并通过它彼此作用的部分', '&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;定义：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;接口泛指实体把自己提供给外界的一种&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%8A%BD%E8%B1%A1%E5%8C%96/10844295&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;抽象艺术艺术化&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;物（可以为另一实体），用以由内部操作分离出外部沟通方法&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，使其能被内部修改而不影响外界其他实体与其交互的&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;方式&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;人类与电脑等信息机器或人类与程序之间的接口称为&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%94%A8%E6%88%B7%E7%95%8C%E9%9D%A2/6582461&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;用户界面&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。电脑等信息机器硬件组件间的接口叫&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%A1%AC%E4%BB%B6%E6%8E%A5%E5%8F%A3/444711&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;硬件接口&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。电脑等信息机器软件组件间的接口叫&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E8%BD%AF%E4%BB%B6%E6%8E%A5%E5%8F%A3/7318744&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;软件接口&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在计算机中，接口是计算机系统中两个独立的部件进行信息交换的共享边界。这种交换可以发生在计算机软，硬件，外部设备或进行操作的人之间，也可以是它们的结合。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;IT：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;两个不同系统（或子程序）交接并通过它彼此作用的部分&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;作为名词，

interface&amp;nbsp; （接口）是指：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1.用户接口，由一套刻度盘，球形把手，操作系统命令，绘图显示形式和其它装置组成，设置这些网求允许用户使用计算机或者程序通信一个图形用户&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/GUI&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;界面&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/GUI&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;GUI&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;）提供给他的用户或多或少的“画图导向”方法。对于计算机系统而言，GUI通常是一个较令人满意的或者用户友好的界面&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2.程序接口，由一套陈述，功能，选项，其它表达程序结构的形式，以及程序师使用的程序或者程序语言提供的数据组成&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;3.自然的，合理的，支持任何设置到连接器或者到其它设备的附加装置&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;作为动词，接口意味着与另一个人或者物体的通话。和硬件设备一起，接口指生成一个合适的物理连接以至于两个设备能够通话或者有效合作&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/GUI&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/GUI&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;', 0, 1548682022, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_operators
-- -----------------------------
DROP TABLE IF EXISTS `study_js_operators`;
CREATE TABLE `study_js_operators` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '符号名称',
  `zn_name` varchar(60) NOT NULL COMMENT '符号中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js符号详解表';

-- -----------------------------
-- Records of study_js_operators
-- -----------------------------
INSERT INTO `study_js_operators` VALUES (1, 0, '简单运算符', 'JavaScript 运算符+-*%', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;规则：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;; font-size: 13px;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;如果把数字与字符串相加，结果将成为字符串。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;=&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 赋值&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;+&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 数字相加，字符串拼接&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;-&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 减&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;*&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 乘&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;/&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;％&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;求余数（保留整数）&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;++&amp;nbsp; &amp;nbsp; &amp;nbsp;累加&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;--&amp;nbsp; &amp;nbsp; &amp;nbsp; 递减&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;特殊赋值运算符：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;+=&amp;nbsp; &amp;nbsp; &amp;nbsp;x+=y&amp;nbsp; &amp;nbsp;相当于x=x+y&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;-=&amp;nbsp; &amp;nbsp; &amp;nbsp;x-=y&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;相当于x=x-y&lt;/p&gt;&lt;p&gt;&amp;nbsp;*=&amp;nbsp; &amp;nbsp; &amp;nbsp;x*=y&amp;nbsp; &amp;nbsp;相当于x=x*y&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;/=&amp;nbsp; &amp;nbsp; &amp;nbsp;x/=y&amp;nbsp; &amp;nbsp;相当于x=x/y&lt;/p&gt;&lt;p&gt;%=&amp;nbsp; &amp;nbsp; &amp;nbsp;x%=y&amp;nbsp; &amp;nbsp;相当于x=x%y&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;问题：y++与++y的区别(y的值为y+1)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; var&amp;nbsp; a = 3;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; var b = ++a;&amp;nbsp; &amp;nbsp;//将a +1 的值赋给b，即b = a + 1 ,之后再执行a = a + 1&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; var c = a++;&amp;nbsp; &amp;nbsp;//将a的值赋给c， 即c = a,之后再执行a = a + 1&lt;br&gt;&lt;/p&gt;&lt;p&gt;【总结】：&lt;/p&gt;&lt;p&gt;&amp;nbsp;1：后置++ 是将自身的值赋给变量，之后自身再加1；&lt;/p&gt;&lt;p&gt;&amp;nbsp;2：前置++ 是将自身+1 后的值赋给变量，同时自身加1；&lt;/p&gt;', 0, 1548764538, 0, 0, 0);
INSERT INTO `study_js_operators` VALUES (2, 0, '条件运算符', '三元运算符', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;
    
        变量名 =（条件）?&amp;nbsp; value1 ：value2 ;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1548766393, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_others
-- -----------------------------
DROP TABLE IF EXISTS `study_js_others`;
CREATE TABLE `study_js_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js其他管理表';

-- -----------------------------
-- Records of study_js_others
-- -----------------------------
INSERT INTO `study_js_others` VALUES (1, 0, 'js代码判断浏览器种类IE、FF、Opera、Safari、chrome及版本', '&lt;p&gt;&lt;/p&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;https &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//www.cnblogs.com/qingsong/p/5289521.html&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;因为IE10-IE11的版本问题，不再支持的的的document.all判断，所以即判断函数要重新写了&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div&gt;&lt;div&gt;&lt;div id=&quot;highlighter_333461&quot;&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;3&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;4&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;五&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;6&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/td&gt;&lt;td&gt;&lt;div&gt;&lt;div&gt;&lt;code&gt;function&lt;/code&gt;&amp;nbsp;&lt;code&gt;isIE() { &lt;/code&gt;&lt;code&gt;//ie?&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;if&lt;/code&gt;&amp;nbsp;&lt;code&gt;(!!window.ActiveXObject || &lt;/code&gt;&lt;code&gt;&quot;ActiveXObject&quot;&lt;/code&gt;&amp;nbsp;&lt;code&gt;in&lt;/code&gt;&amp;nbsp;&lt;code&gt;window)&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;true&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;else&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;false&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;}&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第一种，只区分浏览器，不考虑版本&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div id=&quot;code30982&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera” &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Firefox”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“FF”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Chrome”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;return“Chrome”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Safari”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Safari”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; isOpera）{return“IE”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var mb = myBrowser（）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“IE”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“FF”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Chrome”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Chrome”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Opera”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Opera”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Safari”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第二种，区分浏览器，并考虑IE5.5 6 7 8&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div id=&quot;code8955&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isIE = userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！isOpera; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isFF = userAgent.indexOf（“Firefox”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isSafari = userAgent.indexOf（“Safari”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isIE）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var IE5 = IE55 = IE6 = IE7 = IE8 = false; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var reIE = new RegExp（“MSIE（\\ d + \\。\\ d +）;”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; reIE.test（的的userAgent）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var fIEVersion = parseFloat（RegExp [“$ 1”]）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE55 = fIEVersion == 5.5;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE7 = fIEVersion == 7.0; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE8 = fIEVersion == 8.0; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE55）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE55”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE6）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE6”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE7）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE7”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE8）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE8”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //结束isIE &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 如果如果（isFF）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 返回“FF”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} // myBrowser（）end &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“FF”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 警报（“我是歌剧”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“Safari”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE55”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE5.5”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE6”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE6”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE7”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE7”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE8”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE8”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;下面给出一个判断当前浏览器是IE的JS代码。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;原理是利用了IE与标准浏览器在处理数组的的的的toString方法的差异做成的。对于标准游览器，如果数组里面最后一个字符为逗号，JS引擎会自动剔除它。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;lt;script type =“text / javascript”&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;！[CDATA [&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var ie =！ -  [1，]; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;alert(ie); &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;]]&amp;gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;lt;/ script&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1547971898, 0, 0, 0);
INSERT INTO `study_js_others` VALUES (2, 0, 'Javascript分号，代码，对大小写敏感，空格，注释，变量', '&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold; font-size: medium;&quot;&gt;分号：&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在JavaScript的中，用分号来结束语句是&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;可选&lt;/span&gt;的。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold; font-size: medium;&quot;&gt;代码：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;font-weight: bold; vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;JavaScript代码（或者只有JavaScript）是JavaScript语句的序列。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;font-size: medium; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;浏览器会按照编写顺序来执行每条语句。&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;JavaScript的是脚本语言。浏览器会在读取代码时，&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;逐行地执行&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;脚本代码&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-weight: bold; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;对大小写敏感：&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt; 函数名与变量名都对大小写是敏感的。&lt;/span&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium; font-weight: bold;&quot;&gt;空格：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: medium;&quot;&gt;ĴavaScript会&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;忽略&lt;/span&gt;多余的空格，可以向脚本添加空格，来提高其可读性。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-size: medium; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;注释：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt;&amp;nbsp;添加注释来对Ĵavascript进行解释，它不会执行注释，注释可用于提高代码的可读性。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: medium;&quot;&gt;// 单行注释，可放到行的结尾处；/*&amp;nbsp; */ 多行注释&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-size: medium; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;变量：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: medium; color: rgb(249, 150, 59);&quot;&gt;必须以字母开头；&lt;/span&gt;&lt;span style=&quot;font-size: medium; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt; 也能以$和_符号开头（不推荐）；&lt;/span&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: medium;&quot;&gt;对大小写敏感。&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;', 0, 1548751377, 0, 0, 0);
INSERT INTO `study_js_others` VALUES (3, 0, 'Javascript数据类型的介绍', '&lt;h5&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;七大数据类型&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;字符串，数字，布尔，数组，对象，Null，Undefined&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: medium; color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;注意：Undefined表示变量不含有值，可以通过将变量的值设置为null来清空变量。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;重点介绍：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;数组：与PHP声明数组基本相同（js不能使用array()）&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; var&amp;nbsp; a = [ 'aaa' , 3 , 'eer' ];&amp;nbsp; 或者&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;a &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;new &lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Array &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;'wd' &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2 &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;'r4' &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;）;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;对象：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: medium;&quot;&gt;对象由花括号分隔。在括号内部，对象的属性以名称和值对的形式（name：value）来定义。属性由逗号分隔。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;在JavaScript中，对象是数据（变量），拥有属性和方法 。&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在面向对象的语言中，属性和方法常被称为对象的成员。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: medium;&quot;&gt; 访问属性与方法，都是通过点语法实现。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1548772264, 0, 0, 0);
INSERT INTO `study_js_others` VALUES (4, 0, 'Javascript函数的注意事项', '&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数就是包裹在花括号中的代码块，前面使用了关键词function;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; color: rgb(249, 150, 59);&quot;&gt;提示：JavaScript对大小写敏感。关键词function必须是小写的，并且必须以与函数名称相同的大小写来调用函数。&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在调用函数时,&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;变量和参数必须以一致的顺序出现。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: medium; color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;带有返回值的函数，使用return语句实现，&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在使用返回语句时，函数会停止执行，并返回指定的值，&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数调用将被返回值取代。只使用收益，仅代表函数停止执行或退出函数。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在JavaScript函数内部声明的变量（使用var）是&lt;/font&gt;&lt;/font&gt;&lt;em&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;局部&lt;/font&gt;&lt;/font&gt;&lt;/em&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;变量，所以只能在函数内部访问它。（该变量的作用域是局部的）。&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;您可以在不同的函数中使用名称相同的局部变量，因为只有声明过该变量的函数才能识别出该变量。&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;只要函数运行完毕，本地变量就会被删除。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数在外声明的变量的英文&lt;/font&gt;&lt;/font&gt;&lt;em&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;全局&lt;/font&gt;&lt;/font&gt;&lt;/em&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;变量，网页上的所有脚本和函数都能访问它&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;JavaScript变量的生命期从它们被声明的时间开始。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium; color: rgb(249, 150, 59);&quot;&gt;局部变量会在函数运行以后被删除。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium; color: rgb(249, 150, 59);&quot;&gt;全局变量会在页面关闭后被删除。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;如果您把值赋给尚未声明的变量，该变量将被自动作为全局变量声明。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;提示：请记住，没有返回值的函数真正返回的都是 undefined。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;', 0, 1548772230, 0, 0, 0);
INSERT INTO `study_js_others` VALUES (5, 0, '提示', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：JavaScript与Java是两种完全不同的语言，无论在概念还是设计上。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Java（由Sun发明）是更复杂的编程语言。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;ECMA-262是JavaScript标准的官方名称。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JavaScript由Brendan Eich发明。它于1995年出现在Netscape中（该浏览器已停止更新），并于1997年被ECMA（一个标准协会）采纳。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：&lt;span style=&quot;font-weight: bold;&quot;&gt;使用代码块&lt;/span&gt;被认为是一种最佳的编程实践，即使要执行的代码只有一行这样做可以使每个条件要执行什么一目了然。&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：JavaScript对&lt;span style=&quot;font-weight: bold;&quot;&gt;大小写敏感&lt;/span&gt;。关键词function必须是小写的，并且必须以与函数名称相同的大小写来调用函数。&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：在面向对象的语言中，属性和方法常被称为对象的成员。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：在面向对象的语言中，使用camel-case标记法的函数是很常见的。您会经常看到someMethod（）这样的函数名，而不是some_method（）。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：您可以把变量看做存储数据的容器。&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：JavaScript语句和JavaScript变量都对大小写敏感。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：一个好的编程习惯是，在代码开始处，统一对需要的变量进行声明。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在JavaScript中，用分号来结束语句是可选的。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：JavaScript是脚本语言。浏览器会在读取代码时，逐行地执行脚本代码。而对于传统编程来说，会在执行前对所有代码进行编译。&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：外部脚本不能包含&amp;lt;script&amp;gt;标签。&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;提示：您只能在HTML输出中使用document.write。如果您在文档加载后使用该方法，会覆盖整个文档。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1548771435, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_plug_act
-- -----------------------------
DROP TABLE IF EXISTS `study_js_plug_act`;
CREATE TABLE `study_js_plug_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js插件使用表';


-- -----------------------------
-- Table structure for study_js_plug_others
-- -----------------------------
DROP TABLE IF EXISTS `study_js_plug_others`;
CREATE TABLE `study_js_plug_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `jpt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js插件其他管理表';


-- -----------------------------
-- Table structure for study_js_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_js_plug_type`;
CREATE TABLE `study_js_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js插件分类表';


-- -----------------------------
-- Table structure for study_js_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_js_questions`;
CREATE TABLE `study_js_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js问题总结表';

-- -----------------------------
-- Records of study_js_questions
-- -----------------------------
INSERT INTO `study_js_questions` VALUES (1, 0, 'javascript变量声明 及作用域', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;http://www.cnblogs.com/silentjesse/p/4024536.html&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1.变量声明提升：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;JavaScript的变量声明具有hoisting&amp;nbsp;(提升) 机制，JavaScript的引擎在执行的时候，所有会把变量的声明都提升到&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;当前作用域&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;的最前面。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1.1声明，定义与初始化&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;声明宣称一个名字的存在，定义则为这个名字分配存储空间，而初始化则是为名字分配的存储空间赋初值。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JavaScript的为动态语言，其变量并没有固定的类型，其存储空间大小会随初始化与赋值而变化，所以其变量的“定义”就不像传统的静态语言一样了，其定义显得无关紧要。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;1.2&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;声明提升(var a,&amp;nbsp; b,...，f2(){},..)&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;当前作用域内的声明都会提升到作用域的最前面，包括变量和函数的声明。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 但函数表达式不会被提升，&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;function&amp;nbsp; 函数名(){ }&amp;nbsp; &amp;nbsp; :函数的声明&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;其余的为函数表达式&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;1.3&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;名字解析顺序&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; JavaScript的中一个名字（名字）以四种方式进入作用域（范围），其优先级顺序如下：&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1，语言内置：所有的作用域中都有this&amp;nbsp; 和arguments&amp;nbsp; 关键字&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2，形式参数：函数的参数在函数作用域中都是有效的&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3，函数声明：形如function foo(){ } &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4，变量声明：形如var bar;&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;如果一个变量的名字与函数的名字相同，那么函数的名字会覆盖变量的名字，无论其在代码中的顺序如何。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;但名字的初始化却是按其在代码中书写的顺序进行的，不受以上优先级的影响(初始化不会改变值)。&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 如果形式参数中有多个同名变量，那么最后一个同名参数会覆盖其他同名参数，即使最后一个同名参数并没有定义。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;以上的名字解析优先级存在例外，比如可以覆盖语言内置的名字arguments&amp;nbsp; 。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;1.4&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;命名函数表达式&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;可以像函数声明一样为函数表达式指定一个名字，但这并不会使函数表达式成为函数声明。命名函数表达式的名字不会进入名字空间，也不会被提升。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;命名函数表达式的名字只在该函数的作用域内部有效 。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2.作用域与作用域链详解&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h5&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;font-weight: bold; vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 链接地址：&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;https://blog.csdn.net/yueguanghaidao/article/details/9568071&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 2.1函数的作用域&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;所谓函数作用域就是说： - “变量在声明它们的函数体以及这个函数体嵌套的任意函数体内都是有定义的。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;由于函数作用域的特性，局部变量在整个函数体始终是由定义的，我们可以将变量声明”提前“到函数体顶部，同时变量初始化还在原来位置&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 举例：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;scope &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;“global” &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;function &lt;/font&gt;&lt;/font&gt; &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;t &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）{  &lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; console.&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;log &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（scope）;  &lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;scope &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;“local”&lt;/font&gt;&lt;/font&gt;  &lt;/div&gt;&lt;div&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; console.&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;log &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（scope）;  &lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/divcourier&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;运行t（）; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;显示&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;undefined&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; '&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;local&amp;nbsp;'&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;2.2变量作用域&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当使用VAR声明一个变量时，创建的这个属性是不可配置的，也就是说无法通过删除运算符删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var name = 1  - &amp;gt;不可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;sex =“girl” - &amp;gt;可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;this.age = 22  - &amp;gt;可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; 2.3作用域链&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;举例：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;name &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;“lwy” &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;function &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;t &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）{&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;name &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;“tlwy” &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;function &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;s &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）{&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;name &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;= &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;“slwy” &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; console.&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;log &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（name）;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;function &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;ss &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）{&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; console.&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;log &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（name）;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;s &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;ss &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（）;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;运行t（）; &lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;显示&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;' &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;slwy''tlwy'&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当执行s时，将创建函数s的执行环境(调用对象),并将该对象置于链表开头，然后将函数t的调用对象链接在之后，最后是全局对象。然后从链表开头寻找变量name,很明显&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;name是&quot;slwy&quot;。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;但执行ss()时，作用域链是： ss()-&amp;gt;t()-&amp;gt;window,所以name是”tlwy&quot;&lt;/p&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;', 0, 1548239953, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (2, 0, 'JS中函数表达式与函数声明的区别', '&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数声明：function 函数名（）{}&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数表达式：function 函数名（可写可不写）（）{};&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（不写名叫做匿名函数表达式。写名叫做命名函数表达式。推荐用匿名的。）&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;举例：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数声明：function aaa（）{}（这种就是函数声明，上下文啥也木有。）&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;函数表达式：&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var a = function aaa（）{}：命名函数表达式&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var a = function（）{}：匿名函数表达式&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（function aaa（）{}）：表达式 &lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;位运算符：&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;〜funtion aaa（）{}：表达式 &lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;-funtion aaa（）{}：表达式 &lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;+ funtion aaa（）{}：表达式 &lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;！funtion aaa（）{}：表达式&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;（有上面的这些表现形式的都是函数表达式）&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;区别：&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1.函数表达式可以直接后面加括号执行而函数声明是不可以。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function aaa（）{}（）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//不可以执行必须得通过函数名调用aaa（）;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var a = function aaa（）{}（）; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//加括号就可以直接执行  &lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2.函数声明可以提前被解析出来。表达式不可以。&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;比如，&lt;span style=&quot;font-weight: bold;&quot;&gt;只要你声明过函数，不管函数是在哪个位置声明的，它都会被提前解析出来，所以在任何地方调用都不会有问题。&lt;/span&gt;但是函数表达式不会被提前解析，所以你能在函数表达式之前就调用它。&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;aaa（）; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//可以调用&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;a（）; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//调用会出错&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function aaa（）{}; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//函数声明&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var a = function aaa（）{}; &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//函数表达式&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;主要的就是这两方面的区别，相对于函数声明，表达式可以让我们不用费劲想那么多函数名，代码也更简单，等到我写闭包的时候，会体现它的优点。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;', 0, 1548234707, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (3, 0, 'JS中用var声明变量和不用的区别', '&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt; https &lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt; //blog.csdn.net/lxiang222/article/details/73129099&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; background-color: rgb(249, 150, 59);&quot;&gt;var:局部&amp;nbsp; &amp;nbsp; 不使用var:全局&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1.&amp;nbsp; &lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;在函数内部声明变量&lt;/font&gt;&lt;/strong&gt;&lt;/font&gt;&amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;用VAR声明的是局部变量，在函数外部访问不到，&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;没变种声明的是全局变量。在函数外部是可以访问到的。&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2.在函数外部声明变量&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;用VAR声明的变量，在函数外部可以访问到，但在函数内访问，不可以。&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;没变种声明的是全局变量。在函数内部是可以访问到的。&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;总结：&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;用VAR声明的变量，只能在本作用域使用（作用域分为函数作用域和函数外作用域）; &lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;没变种声明的是全局变量，那都可以使用。&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;3.补充说明&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JavaScript的声明变量的时候，虽然用VAR关键字声明和不用关键字声明，很多时候运行并没有问题，但是这两种方式还是有区别的。可以正常运行的代码并不代表是合适的代码。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;var num = 1; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;是在当前域中声明变量。&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;如果在方法中声明，则为局部变量（local variable）;如果是在全局域中声明，则为全局变量。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;而num = 1; &lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;事实上是对属性赋值操作。首先，它会尝试在当前作用域（如在方法中声明，则当前作用域链代表全局作用域和方法局部作用域等...）中解析num;如果在任何当前作用域链中找到num，则会执行对num属性赋值;如果没有找到NUM，它才会在全局对象（即当前作用域链的最顶层对象，如窗口对象）中创造NUM属性并赋值。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;注意！它并不是声明了一个全局变量，而是创建了一个全局对象的属性。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;即便如此，可能你还是很难明白“变量声明”跟“创建对象属性”在这里的区别。事实上，javascript中的变量声明，创建属性以及每个的JavaScript中的每个属性都有一定的标志说明它们的属性----如只读（只读）不可枚举（DontEnum）不可删除（DontDelete）等等。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;当使用v &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;AR声明一个变量时，创建的这个属性是不可配置的，也就是说无法通过删除运算符删除&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var name = 1  - &amp;gt;不可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;sex =“girl” - &amp;gt;可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;this.age = 22  - &amp;gt;可删除&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1548240698, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (4, 0, 'JS中声明变量的三种方式 const var let', '&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt; https &lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt; //blog.csdn.net/mengyuying16/article/details/54910372&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;const&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：用于&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;声明&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;常量&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;。注意：定义的变量的时候，必须同时初始化，且其值之后不可以修改。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;var &lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：最常用的声明变量关键字。定义的变量的时候，若没有初始化，不报错，会输出undefined。其值之后可以修改。&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 可以用来声明全局变量，也可以声明局部变量，依据它们声明的位置：&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;全局变量：在函数外定义的变量;（注意：若没有使用关键字声明的变量，默认为全局变量）。作用域是整个代码文件&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;局部变量：在函数内定义的变量作用域是当前的函数内部。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;let&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;块级&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;作用域。在块级{}里面用let定义的变量，离开当前的块{}之后，就不能使用（有点像局部变量，但作用域不一样）。注意：{...}一对花括弧就就是一个特定的代码块&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;，包括直接的{}，流程语句的{}，函数的{}，.....函数声明时本身就带有{}，也是属于一个代码块&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 0, 1548240852, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (5, 0, '为什么在js里面不推荐使用i++', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-size: medium;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Javascript语言精粹有这个说法，我这个运算符可以前置又可以后置使得自由度过大，如果出现++ c，你很难弄明白前面那个代码是什么意思。这个++或者 -- 运算符怂恿过于诡异的写法而促使出现糟糕的代码。除了错误的架构外，它们是导致病毒和其他安全威胁的第二大元凶。所以JsLint有个选项plusplus是检测是否禁止使用了这些运算符。&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548765709, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (6, 0, '被认为false的情况', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;0，-0，null，“”，false，undefined或者NaN转化为false，其他为true&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548767033, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (7, 0, '!!与!的区别,用法', '&lt;p&gt;!&amp;nbsp; &amp;nbsp; :not&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;！可将变量转换成boolean类型，null、undefined和空字符串取反都为false，其余都为true。&lt;/p&gt;&lt;p&gt;&amp;nbsp; !null = true;&amp;nbsp; &amp;nbsp;!undefined = true;&amp;nbsp; &amp;nbsp; !'' = true;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; !100 = false&lt;br&gt;&lt;/p&gt;&lt;p&gt;举例：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; var a;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; if(a != null &amp;amp;&amp;amp; typeof(a) !=undefined &amp;amp;&amp;amp; a != ''){&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //a有内容才执行的代码&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;br&gt;&lt;/p&gt;&lt;p&gt;可以改写成：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; if(!!a){&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//a有内容才执行的代码&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;br&gt;&lt;/p&gt;&lt;p&gt;a是有实际含义的变量才执行方法，否则变量null，undefined和''空串都不会执行以下代码 。&lt;/p&gt;&lt;p&gt;&amp;nbsp;【总结】“！”是逻辑与运算，并且可以与任何变量进行逻辑与将其转化为布尔值，“!!”则是逻辑与的取反运算，尤其后者在判断类型时代码简洁高效，省去了多次判断null、undefined和空字符串的冗余代码。&lt;br&gt;&lt;/p&gt;', 0, 1548769660, 0, 0, 0);
INSERT INTO `study_js_questions` VALUES (8, 0, 'if...else语句的特殊情况', '&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;特殊情况：&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（条件1）{&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 当条件1为真时执行的代码&lt;/font&gt;
    &lt;/font&gt;
    &lt;br&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;else if（条件2）{&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 当条件2为真时执行的代码&lt;/font&gt;
    &lt;/font&gt;
    &lt;br&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;else{&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; 当条件1和条件2都不为真时执行的代码&lt;/font&gt;
    &lt;/font&gt;
    &lt;br&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;
        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;
    &lt;/font&gt;
&lt;/p&gt;', 0, 1548771251, 0, 0, 0);

-- -----------------------------
-- Table structure for study_js_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_js_specials`;
CREATE TABLE `study_js_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js特殊功能表';


-- -----------------------------
-- Table structure for study_others_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_others_questions`;
CREATE TABLE `study_others_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ot_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识问题总结表';

-- -----------------------------
-- Records of study_others_questions
-- -----------------------------
INSERT INTO `study_others_questions` VALUES (1, 1, 0, '怎样设置电脑的开机启动项', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：https://jingyan.baidu.com/article/a501d80c37da83ec620f5e4b.html&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法一：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1.首先左击电脑左下角的“开始”按钮（或按下键盘win+R键），在弹出的菜单右侧找到“运行...”单击。&lt;/p&gt;&lt;p&gt;2.单击之后在弹出的框中输入“msconfig”，点击“确定”或按回车键。&lt;/p&gt;&lt;p&gt;3.弹出“系统配置”窗口之后，在最上面一行里面点击“启动”按钮，然后点击“任务管理器”，弹出窗口，点击“启动按钮”，就可以看见启动项列表，然后点击“状态”即可。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法二：&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;1.打开360安全卫士，选择优化加速，点击左下角的“启动项”。&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2.将不必要的启动项禁止掉，就可以禁止开机启动项了。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法三：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1.按下键盘win+R键，输入regedit并按确定。&lt;/p&gt;&lt;p&gt;2.在注册表中依次打开HKEY-LOCAL-MACHINE/Software/Microsoft/Windows/CurrentVersion/Run文件夹后删除启动项即可。&lt;/p&gt;', 1, 1547910910, 1, 1, 0);
INSERT INTO `study_others_questions` VALUES (2, 1, 0, '电脑快捷键', '&lt;p&gt;1.“运行”= WIN+R；&lt;/p&gt;
&lt;table border=&quot;0&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;th style=&quot;width:10%&quot;&gt;&amp;nbsp;序号&lt;/th&gt;
            &lt;th style=&quot;width:20%&quot;&gt;名称&amp;nbsp; &amp;nbsp;&lt;/th&gt;
            &lt;th style=&quot;width:20%&quot;&gt;快捷键&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/th&gt;
            &lt;th style=&quot;width:10%&quot;&gt;&amp;nbsp;序号&lt;/th&gt;
            &lt;th style=&quot;width:20%&quot;&gt;名称&amp;nbsp;&lt;/th&gt;
            &lt;th style=&quot;width:20%&quot;&gt;快捷键&amp;nbsp;&lt;/th&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;1&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;运行&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;WIN+R&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;
    &lt;br&gt;
&lt;/p&gt;', 0, 1547910914, 1, 0, 0);
INSERT INTO `study_others_questions` VALUES (3, 2, 0, 'wangEditor设置高度', '&lt;p&gt;官网提供的默认高度300px ，api文档也没有说明怎么设置。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：https://blog.csdn.net/qq_31384551/article/details/83240188&lt;/span&gt;&lt;/p&gt;&lt;p&gt;原因：富文本区域有一个class类名w-e-text-containe的属性height:300px;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;重新编写样式进行覆盖&lt;/p&gt;&lt;p&gt;&amp;lt;style&amp;gt;&lt;/p&gt;&lt;p&gt;.w-e-text-containe&amp;nbsp; {&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; height:600px !important;&lt;br&gt;&lt;/p&gt;&lt;p&gt;}&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;lt;/style&amp;gt;&lt;/p&gt;', 0, 1547972136, 0, 0, 1);
INSERT INTO `study_others_questions` VALUES (4, 3, 0, 'Navicat for MySQL 12中文破解版', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：http://www.3322.cc/soft/39234.html&lt;/span&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;安装教程：&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;1.下载好数据包后，直接解压用鼠标双击“navicat120_mysql_cs_x64.exe”打开进入安装向导，点击“下一步”&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\238d4b6b5080f731b1e9c3240181a137.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2.点击同意相关协议&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\238292eb343c21ade894f353d02e4229.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;3.选择安装位置，默认路径为“C:\Program Files\PremiumSoft\Navicat 12 for MySQL”&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\afdfb0cede204cdcdb7e8ce22e4f9418.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;4.在“create a desktopicon”创建桌面快捷方式前面勾上，不然等软件安装好后在你的电脑桌面找不到软件哦&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\6af1b43b108de40060dcb4d1ecbc656d.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;5.等待安装完成即可&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\e35fe79b29eec9a6a2c0708f85285b24.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;破解教程：（断网，否则破解不成功）&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;1.安装完成后先不要运行软件回到刚才下载的数据包中运行破解补丁“Navicat_Keygen_Patch_v3.4_By_DFoX_URET.exe”点patch&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\fb201b88c02db8ccadb67776943c0471.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2.弹窗窗口，选择安装目录“C:\Program Files\PremiumSoft\Navicat 12 for MySQL”里面的navicat.exe&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\53c67a67f39fd6a2d00ab03ac9c920ef.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;3.随后就会提示破解成功了&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\b2abac618913263a792c5cd454b060ce.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;4.回到注册机，选择我们要注册的MYSQL，选择中文版，选择site license，完了后点击“Generate”生成序列号&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\93b94bacebce47764e198a50d700e61f.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;5.回到桌面运行软件，此时，点注册&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\e1607ae7a86815eb922c8e0692c0a1fc.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;6.将刚生成的keygen输入到软件“键”，点激活&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\63f16f451bf32def7003eafca92b2c68.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;7.继续点手动激活&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\cb467934cf3d645dec453d805d5c3345.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;8.这一步骤比较关键，如图所以步骤操作&lt;br&gt;（1）将请求码复制到注册机，&lt;br&gt;（2）点击注册机左下角的“Generate”生成激活码，&lt;br&gt;（3）将注册机生成的激活码复制到Navicat 12.0.23 for SQL Server上的激活码处，&lt;br&gt;&lt;p&gt;（4）点击“激活”按钮。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\df126f97f2ee580070a9655321098eb9.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;9.提示已激活，点确定&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\8bc1a00beeb3924ca9dce0193d78bdcd.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/p&gt;&lt;p&gt;10.打开软件，点帮助，查看激活，提示已经激活了&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/others_questions/20190120\a200f048c95799bccbe0ee8986997ca9.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547991338, 0, 0, 0);
INSERT INTO `study_others_questions` VALUES (5, 4, 0, '在thinkphp5.1中使用wangeditor上传图片时报错', '&lt;p&gt;原因：在配置文件app.php中的配置'app_trace'              =&amp;gt;&amp;nbsp;true,(thinkphp5.1使用了追踪器，导致返回的结果出现一部分)&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;解决办法：'app_trace'&amp;nbsp;=&amp;gt;&amp;nbsp;false&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 1, 1548149028, 0, 1, 1);
INSERT INTO `study_others_questions` VALUES (6, 1, 0, '字符编码，字符集？', '&lt;p&gt;计划搜索&lt;/p&gt;', 0, 1548927412, 0, 0, 0);

-- -----------------------------
-- Table structure for study_others_type
-- -----------------------------
DROP TABLE IF EXISTS `study_others_type`;
CREATE TABLE `study_others_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识分类管理表';

-- -----------------------------
-- Records of study_others_type
-- -----------------------------
INSERT INTO `study_others_type` VALUES (1, '电脑', '电脑的操作', 1547909753, 0);
INSERT INTO `study_others_type` VALUES (2, 'wangEditor', '富文本编辑器', 1547972092, 0);
INSERT INTO `study_others_type` VALUES (3, 'Navicat for MySQL', '数据库', 1547991312, 0);
INSERT INTO `study_others_type` VALUES (4, 'thinkphp5.1与wangeditor', '功能存在冲突', 1548148544, 0);

-- -----------------------------
-- Table structure for study_others_uses
-- -----------------------------
DROP TABLE IF EXISTS `study_others_uses`;
CREATE TABLE `study_others_uses` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ot_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `content` text NOT NULL COMMENT '方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识使用管理表';


-- -----------------------------
-- Table structure for study_php_develop_configs
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_configs`;
CREATE TABLE `study_php_develop_configs` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `zn_name` varchar(255) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具配置问题表';


-- -----------------------------
-- Table structure for study_php_develop_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_errors`;
CREATE TABLE `study_php_develop_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具报错总结表';


-- -----------------------------
-- Table structure for study_php_develop_menus
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_menus`;
CREATE TABLE `study_php_develop_menus` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具菜单操作表';


-- -----------------------------
-- Table structure for study_php_develop_others
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_others`;
CREATE TABLE `study_php_develop_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具其他内容表';


-- -----------------------------
-- Table structure for study_php_develop_plug
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_plug`;
CREATE TABLE `study_php_develop_plug` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `zn_name` varchar(100) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具插件表';


-- -----------------------------
-- Table structure for study_php_develop_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_questions`;
CREATE TABLE `study_php_develop_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具问题表';


-- -----------------------------
-- Table structure for study_php_develop_theory
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_theory`;
CREATE TABLE `study_php_develop_theory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具原理解析表';


-- -----------------------------
-- Table structure for study_php_develop_type
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_type`;
CREATE TABLE `study_php_develop_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开发工具分类表';


-- -----------------------------
-- Table structure for study_php_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_php_errors`;
CREATE TABLE `study_php_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决办法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php报错总结表';

-- -----------------------------
-- Records of study_php_errors
-- -----------------------------
INSERT INTO `study_php_errors` VALUES (2, 0, 'html页面使用include导入php文件后多出一空白行', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：&lt;/span&gt;https://www.jb51.net/web/77886.html&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;参考地址：&lt;/span&gt;https://blog.csdn.net/jinbiao520/article/details/7878356&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;解决方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;1&lt;/span&gt;.使用margin-top,但不彻底，使用include次数不一样，无法固定值；&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;2.&lt;/span&gt;Unicode签名（bom)引起的，打开footer 或header，然后在Dreamweaver里 点“修改”，选择“页面属性”，“标题/编码”，把 包括unicode签名(bom) 的勾取消就好了。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; （用DW打开包含文件，修改工具栏 --&amp;gt; 页面属性 -&amp;gt; 标题编码 -&amp;gt; 包括Unicode 签名(BOM) 前面的复选框去掉&lt;/p&gt;&lt;p&gt;这样的话，不管哪里包含都不会出现这样的问题。当然也可以用其他编辑器去掉。）&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;分析原因：&lt;/strong&gt;&lt;br&gt;&lt;h5&gt;　文件以UTF-8编码保存时，有两种情情况：带Unicode签名（BOM）和不带Unicode签名。BOM信息是文件开头的一串隐藏的字符，用于让某些编辑器识别这是个UTF-8编码的文件。&amp;nbsp;&lt;br&gt;&lt;h5&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;但对于 PHP来说，PHP在设计时就没有考虑BOM的问题，不会忽略UTF-8编码的文件开头BOM的那三个字符，会把BOM作为该文件开头正文的一部分。由于必须在&amp;lt;?或者&amp;lt;?php后面的代码才会作为PHP代码执行，所以将会造成在页面上输出这三个字符，显示效果就要看浏览器了，一般是一个空行或是一个乱码。由于在html一开头有这3个字符的存在，即使页面的 top padding 设置为0，也无法让整个网页紧贴浏览器顶部。由于受COOKIE送出机制的限制，在这些文件开头已经有BOM的文件中，COOKIE无法送出（因为在 COOKIE送出前PHP已经送出了文件头），所以登入和登出功能失效。一切依赖COOKIE、SESSION实现的功能全部无效。&amp;nbsp;&amp;nbsp;&lt;/h5&gt;&lt;/h5&gt;&lt;/p&gt;', 0, 1548349748, 1, 0, 0);

-- -----------------------------
-- Table structure for study_php_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_php_extends`;
CREATE TABLE `study_php_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php扩展知识表';

-- -----------------------------
-- Records of study_php_extends
-- -----------------------------
INSERT INTO `study_php_extends` VALUES (1, 0, '配置信息：mbstring', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548901203, 0, 0, 0);

-- -----------------------------
-- Table structure for study_php_frame_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_errors`;
CREATE TABLE `study_php_frame_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决办法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架报错总结表';

-- -----------------------------
-- Records of study_php_frame_errors
-- -----------------------------
INSERT INTO `study_php_frame_errors` VALUES (1, 2, 9, 'dd', 'ggg', 1, 1547204990, 1, 1, 0);

-- -----------------------------
-- Table structure for study_php_frame_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_extends`;
CREATE TABLE `study_php_frame_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架扩展知识表';

-- -----------------------------
-- Records of study_php_frame_extends
-- -----------------------------
INSERT INTO `study_php_frame_extends` VALUES (1, 1, 1, '的点点', '&lt;p&gt;反反复复付&lt;br&gt;&lt;/p&gt;', 1, 1547203572, 1, 1, 0);
INSERT INTO `study_php_frame_extends` VALUES (2, 2, 0, 'sss', '&lt;p&gt;dddddd&lt;br&gt;&lt;/p&gt;', 0, 1547203545, 0, 0, 0);

-- -----------------------------
-- Table structure for study_php_frame_functions
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_functions`;
CREATE TABLE `study_php_frame_functions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '函数名称',
  `zn_name` varchar(60) NOT NULL COMMENT '函数中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架函数管理表';

-- -----------------------------
-- Records of study_php_frame_functions
-- -----------------------------
INSERT INTO `study_php_frame_functions` VALUES (1, 1, 0, 'join', '连接查询', '&lt;h2&gt;&lt;span style=&quot;text-decoration: line-through;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;是是是是是是所所所所所所所所所&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;/h2&gt;', 1, 1547197066, 1, 1, 0);
INSERT INTO `study_php_frame_functions` VALUES (2, 1, 0, '对对对', '发发发', '&lt;p&gt;滚滚滚&lt;br&gt;&lt;/p&gt;', 0, 1547198367, 0, 0, 0);

-- -----------------------------
-- Table structure for study_php_frame_others
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_others`;
CREATE TABLE `study_php_frame_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架其他管理表';


-- -----------------------------
-- Table structure for study_php_frame_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_questions`;
CREATE TABLE `study_php_frame_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架问题总结表';

-- -----------------------------
-- Records of study_php_frame_questions
-- -----------------------------
INSERT INTO `study_php_frame_questions` VALUES (1, 1, 0, '关闭中页面的SHOW_PAGE_TRACE调试功能', '&lt;p&gt;方法：&lt;/p&gt;&lt;p&gt;找到配置文件app.php,&lt;/p&gt;&lt;p&gt;1.'app_trace'              =&amp;gt; false,为关闭状态；&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 'app_trace'&amp;nbsp;=&amp;gt;&amp;nbsp;true,为开启状态；&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 1, 1547993197, 0, 1, 0);
INSERT INTO `study_php_frame_questions` VALUES (2, 1, 0, '如何在模板中使用common.php公共文件里面的自定义函数', '&lt;p&gt;&lt;strong&gt;重点说明：{&amp;nbsp;和&amp;nbsp;$ 符号之间不能有空格，后面参数的空格就没有问题；&lt;br&gt;&lt;br&gt;　　　　　　　###表示模板变量本身的参数位置&amp;nbsp;；&lt;br&gt;&lt;br&gt;　　　　　　　支持多个函数，函数之间支持空格&amp;nbsp;；&lt;br&gt;&lt;br&gt;　　　　　　　支持函数屏蔽功能，在配置文件中可以配置禁止使用的函数列表&amp;nbsp;；&lt;br&gt;&lt;br&gt;　　　　　　　支持变量缓存功能，重复变量字串不多次解析。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;　　　　&lt;/strong&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;简单的自定义函数和使用php函数基本一致。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;举例：&lt;/strong&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;/**&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * 实现中文字串截取无乱码的方法&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; */&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;function&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;getSubstr&lt;/span&gt;&lt;span&gt;($string, $start, $length){&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;if&lt;/span&gt;&lt;span&gt; (&lt;/span&gt;&lt;span&gt;mb_strlen&lt;/span&gt;&lt;span&gt;($string, &lt;/span&gt;&lt;span&gt;'utf-8'&lt;/span&gt;&lt;span&gt;) &lt;/span&gt;&lt;span&gt;&amp;gt;&lt;/span&gt;&lt;span&gt; $length) {&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;$str &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;mb_substr&lt;/span&gt;&lt;span&gt;($string, $start, $length, &lt;/span&gt;&lt;span&gt;'utf-8'&lt;/span&gt;&lt;span&gt;);&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;return&lt;/span&gt;&lt;span&gt; $str &lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;'...'&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;} &lt;/span&gt;&lt;span&gt;else&lt;/span&gt;&lt;span&gt; {&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;return&lt;/span&gt;&lt;span&gt; $string;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;}&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;}&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;在模板中使用：&lt;/span&gt;{$list.title|getSubstr=###,0,35}&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;*&lt;/span&gt;如果只需要当前对象作为参数，可以写成：{$list.size|format_bytes}&lt;/p&gt;&lt;div&gt;&lt;span&gt;/**&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * 格式化字节大小&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@param&lt;/span&gt;&lt;span&gt;  &lt;/span&gt;&lt;span&gt;number&lt;/span&gt;&lt;span&gt; $size      字节数&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@param&lt;/span&gt;&lt;span&gt;  &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt; $delimiter 数字和单位分隔符&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@return&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt;            格式化后的带单位的大小&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; */&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;function&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;format_bytes&lt;/span&gt;&lt;span&gt;($size, $delimiter &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;''&lt;/span&gt;&lt;span&gt;) {&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$units &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;span&gt;'B'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'KB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'MB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'GB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'TB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'PB'&lt;/span&gt;&lt;span&gt;);&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span&gt;for&lt;/span&gt;&lt;span&gt; ($i &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;0&lt;/span&gt;&lt;span&gt;; $size &lt;/span&gt;&lt;span&gt;&amp;gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;1024&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;&amp;amp;&amp;amp;&lt;/span&gt;&lt;span&gt; $i &lt;/span&gt;&lt;span&gt;&amp;lt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;5&lt;/span&gt;&lt;span&gt;; $i&lt;/span&gt;&lt;span&gt;++&lt;/span&gt;&lt;span&gt;) $size &lt;/span&gt;&lt;span&gt;/=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;1024&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span&gt;return&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;round&lt;/span&gt;&lt;span&gt;($size, &lt;/span&gt;&lt;span&gt;2&lt;/span&gt;&lt;span&gt;) &lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;span&gt; $delimiter &lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;span&gt; $units[$i];&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;}&lt;/span&gt;&lt;/div&gt;', 1, 1548671575, 1, 1, 0);

-- -----------------------------
-- Table structure for study_php_frame_type
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_type`;
CREATE TABLE `study_php_frame_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架分类表';

-- -----------------------------
-- Records of study_php_frame_type
-- -----------------------------
INSERT INTO `study_php_frame_type` VALUES (1, 'thinkphp5.1', '本项目使用版本为5.1.29', 1547196461, 0);
INSERT INTO `study_php_frame_type` VALUES (2, 'level', 'ffffffff', 1547200722, 0);

-- -----------------------------
-- Table structure for study_php_frame_uses
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_uses`;
CREATE TABLE `study_php_frame_uses` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pft_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '功能标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架功能总结表';


-- -----------------------------
-- Table structure for study_php_functions
-- -----------------------------
DROP TABLE IF EXISTS `study_php_functions`;
CREATE TABLE `study_php_functions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '函数名称',
  `zn_name` varchar(50) NOT NULL COMMENT '函数中文名称',
  `content` text NOT NULL COMMENT '使用说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php函数管理表';

-- -----------------------------
-- Records of study_php_functions
-- -----------------------------
INSERT INTO `study_php_functions` VALUES (1, 4, 'substr()', 'string：截取字符串,返回截取的部分', '&lt;h5&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;语法：substr(        &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;string&lt;/span&gt;,        &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;start&lt;/span&gt;,length):返回字符串，不改变string的初始值&lt;/span&gt;&lt;/h5&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold; color: rgb(70, 172, 200); background-color: rgb(238, 236, 224);&quot;&gt;注意：if (start&amp;nbsp; &amp;lt; 0&amp;nbsp; &amp;amp;&amp;amp;&amp;nbsp;&amp;nbsp;length&amp;nbsp;&amp;lt;=&amp;nbsp;start ){&amp;nbsp;length&amp;nbsp;== 0 }&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;color: rgb(194, 79, 74);&quot;&gt;参数：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; --对象    &lt;span style=&quot;color: rgb(194, 79, 74);&quot;&gt;        &lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; --负数，从结尾开始的指定位置开始；其他从开头指定位置开始（包含开始位置）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;如果开始参数 &amp;gt; 实际长度，返回空&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: rgb(194, 79, 74);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; length --截取的长度，如果没有，就一直到尾；负数，从结尾开始（参数长度 &amp;gt; 实际长度，直接到尾）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; 0是没有长度&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;color: rgb(194, 79, 74);&quot;&gt;验证：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;/span&gt;$a = '123456';&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;/span&gt;echo substr($a , 2);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; // '3456'&amp;nbsp; &amp;nbsp;2-字符串下标，值为3&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt; echo substr($a , 2 , 3);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// '345'&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; echo substr($a , 2 , -3);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// '3'&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo substr($a , 2 , -5);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// 为空&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3开始，-5以后的字符（倒序）&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;echo substr($a , -2);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// '56'&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 开始位置从结尾算起，长度到尾&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;echo substr($a , -2 , 3);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; // '56'&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 参数长度 &amp;gt; 实际长度，直接到尾&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo substr($a , -5 , -2);&amp;nbsp; &amp;nbsp; &amp;nbsp; // '234'&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2开始，-2以后的字符（倒序）&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp;echo substr($a , -2 , -5);&amp;nbsp; &amp;nbsp; &amp;nbsp;//&amp;nbsp; 空&lt;/p&gt;', 1, 1548423722, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (2, 4, 'strpos()', 'string：查找字符串在另一字符串中第一次出现的位置', '&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: 700;&quot;&gt;拆分：string position(位置)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold; font-size: small;&quot;&gt;定义：查找字符串在另一字符串中&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;第一次&lt;/span&gt;出现的位置&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-size: small;&quot;&gt;        &lt;span style=&quot;font-weight: bold;&quot;&gt;注意：&lt;/span&gt;        &lt;span style=&quot;font-weight: bold;&quot;&gt;strpos() 函数对大小写敏感。&lt;/span&gt;    &lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-size: small;&quot;&gt;        &lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;&amp;nbsp;strpos(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,&lt;span style=&quot;font-weight: bold;&quot;&gt;find&lt;/span&gt;,start)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;参数：&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --要搜索的字符串&lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; find&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--要查找的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; &amp;nbsp; --在何处开始搜索&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;返回值：&lt;/span&gt;integer&amp;nbsp; 如果没有找到字符串则返回 FALSE&lt;/p&gt;', 1, 1548851747, 0, 1, 0);
INSERT INTO `study_php_functions` VALUES (3, 4, 'explode()', 'string：把字符串打散为一维数组并返回一维数组', '&lt;h5&gt;    &lt;/h5&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;explode(&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;separator &lt;/span&gt;, &lt;span style=&quot;font-weight: bold;&quot;&gt;sthing&lt;/span&gt;&amp;nbsp;&lt;/span&gt;, limit):返回一维数组&lt;/h5&gt;&lt;h5&gt;    &lt;span style=&quot;font-weight: bold; color: rgb(194, 79, 74); background-color: rgb(238, 236, 224);&quot;&gt;注意：separator不能为''或&quot;&quot;，可以' '或&quot; &quot;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;span style=&quot;color: rgb(194, 79, 74);&quot;&gt;参数：&lt;/span&gt;    &lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;separator&lt;/span&gt;&amp;nbsp; &amp;nbsp; --&lt;span style=&quot;font-weight: bold;&quot;&gt;分隔符，不能是空字符串&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;string&amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;--对象&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    &lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; limit&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;--返回的数组元素的数目&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;gt;0，返回包含最多&amp;nbsp;limit&amp;nbsp;个元素的数组&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; =0，返回包含一个元素的数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;0，返回包含除了最后的 -limit&amp;nbsp;个元素以外的所有元素的数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(194, 79, 74); font-weight: bold;&quot;&gt;验证：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;$a = '1 2 3 4 5';&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;print_r(explode(' ' , $a));&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //Array(    [0] =&amp;gt; 1    [1] =&amp;gt; 2    [2] =&amp;gt; 3    [3] =&amp;gt; 4    [4] =&amp;gt; 5)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;print_r(explode(' ' , $a , 2));&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// Array(    [0] =&amp;gt; 1    [1] =&amp;gt; 2 3 4 5)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;print_r(explode(' ' , $a , 0));&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// Array(    [0] =&amp;gt; 1 2 3 4 5)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;print_r(explode(' ' , $a , -2));&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//Array(    [0] =&amp;gt; 1    [1] =&amp;gt; 2    [2] =&amp;gt; 3)&lt;/p&gt;', 1, 1548999302, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (4, 4, 'strlen()', 'string：计算并返回字符串的长度(字节数)', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;语法：strlen(string):返回字符串的长度(字节数)&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;注意：string为空，返回0&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;参数：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --对象&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;验证：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = '1 2 3';&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; echo strlen($a);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;// 5&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $b = '';&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo strlen($b);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; // 0&lt;/p&gt;', 1, 1548901528, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (5, 5, 'implode()', 'array：把数组元素取出来拼接成字符串', '&lt;p&gt;定义：返回由数组元素组合成的字符串&lt;/p&gt;&lt;p&gt;语法：implode(&lt;span style=&quot;font-weight: bold;&quot;&gt;separator , array&lt;/span&gt;)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; separator&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --拼接符。默认是 &quot;&quot;（空字符串）。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注释：implode() 函数的&amp;nbsp;&lt;i&gt;separator&lt;/i&gt;&amp;nbsp;参数是可选的。但是为了向后兼容，推荐您使用使用两个参数。&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1549005799, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (6, 2, 'isset()', 'boolean：检测变量是否设置并且非 NULL', '&lt;p&gt;检测变量是否定义。&lt;/p&gt;&lt;p&gt;&lt;strong&gt;如果变量未定义，isset()会返回FLASE；&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;如果变量设置成null，isset()会返回FLASE；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;如果已经使用 unset() 释放了一个变量之后，&amp;nbsp;isset()会返回FLASE；&lt;/span&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;strong&gt;警告: isset() 只能用于变量，因为传递任何其它参数都将造成解析错误。&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 1, 1548817448, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (7, 4, 'trim()', 'string：移除字符串两侧的空白字符或其他预定义字符', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;定义：移除字符串&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;两侧&lt;/span&gt;的空白字符或其他预定义字符，返回被修改的字符串&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;语法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; trim(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,charlist);&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;参数：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --规定要检查的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; charlist&amp;nbsp; &amp;nbsp; &amp;nbsp; --可选。规定从字符串中删除哪些字符。如果被省略，则移除以下所有字符：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;&quot;\0&quot; - NULL&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\t&quot; - 制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&quot;\n&quot; - 换行&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\x0B&quot; - 垂直制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&quot;\r&quot; - 回车&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot; &quot; - 空格&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;注意：以上这些字符只有在使用双引号&quot;&quot;的时候才能起作用，空格都可以。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;所以trim()函数优先去掉字符首尾的空白字符，再过滤掉给定的要去除的字符(列表)，&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 1, 1548832538, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (8, 5, 'var_dump()', 'array：打印数组', '&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = array(1, 2, array(&quot;adf&quot;, &quot;b&quot;, &quot;c&quot;));&lt;/p&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; var_dump($a);&lt;/div&gt;&lt;p&gt;输出结果：&lt;/p&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array (size=3)&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;0 =&amp;gt; int 1&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;1&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;=&amp;gt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;int&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;2&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;2&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;=&amp;gt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;array&lt;/span&gt;&lt;span&gt; (&lt;/span&gt;&lt;span&gt;size&lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt;3&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;0&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;=&amp;gt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;'adf'&lt;/span&gt;&lt;span&gt; (&lt;/span&gt;&lt;span&gt;length&lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt;3&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;1&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;=&amp;gt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;'b'&lt;/span&gt;&lt;span&gt; (&lt;/span&gt;&lt;span&gt;length&lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt;1&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2 =&amp;gt; string 'c' (length=1)&lt;/div&gt;&lt;p&gt;【总结】&lt;span style=&quot;font-weight: bold;&quot;&gt;var_dump打印出的结果包括：元素的数量，键值对，元素的类型、长度。&lt;/span&gt;&lt;/p&gt;', 1, 1549006046, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (9, 5, 'count()', 'array：返回数组中元素的数目或对象中的属性个数', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;定义：返回数组中元素的数目或对象中的属性个数&lt;/span&gt;&lt;/p&gt;&lt;p&gt;语法：count(&lt;span style=&quot;font-weight: bold;&quot;&gt;array &lt;/span&gt;, mode)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; mode&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--模式&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;0 - 默认。不对多维数组中的所有元素进行计数&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;1 - 递归地计数数组中元素的数目（计算多维数组中的所有元素）&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span style=&quot;font-size: small;&quot;&gt;说明：&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;count() 函数计算数组中的单元数目或对象中的属性个数。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;对于数组，返回其元素的个数，对于其他值，返回 1。如果参数是变量而变量没有定义，则返回 0。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;如果&amp;nbsp;mode&amp;nbsp;被设置为 1，则会递归底计算多维数组中的数组的元素个数。&lt;/p&gt;', 1, 1548998123, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (10, 5, 'sort()', 'array：对索引数组进行升序排序', '&lt;p&gt;定义：对
    &lt;span style=&quot;font-weight: bold;&quot;&gt;索引&lt;/span&gt;数组进行
    &lt;span style=&quot;font-weight: bold;&quot;&gt;升序&lt;/span&gt;排序&lt;/p&gt;
&lt;p&gt;语法：sort(
    &lt;span style=&quot;font-weight: bold;&quot;&gt;array，&lt;/span&gt;sortingtype)&lt;/p&gt;
&lt;p&gt;参数：&lt;/p&gt;
&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;--数组
    &lt;br&gt;&lt;/p&gt;
&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; sortingtype&amp;nbsp; &amp;nbsp; &amp;nbsp; --规定如何比较数组的元素/项目
    &lt;br&gt;&lt;/p&gt;
&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;可能的值：&lt;/p&gt;
&lt;ul style=&quot;margin-left:150px&quot;&gt;
    &lt;li&gt;0 - 默认。把每一项按常规顺序排列（Standard ASCII，不改变类型）&lt;/li&gt;
    &lt;li&gt;1 - 按&lt;span style=&quot;font-weight: bold;&quot;&gt;数字&lt;/span&gt;排序。&lt;/li&gt;
    &lt;li&gt;2 - 按&lt;span style=&quot;font-weight: bold;&quot;&gt;字符串&lt;/span&gt;排序。&lt;/li&gt;
    &lt;li&gt;3 - 把每一项作为字符串来处理，基于当前区域设置（可通过 setlocale() 进行更改）。&lt;/li&gt;
    &lt;li&gt;4 - 把每一项作为字符串来处理，使用类似 natsort() 的自然排序。&lt;/li&gt;
    &lt;li&gt;5 - 可以结合（按位或）2 或 4 对字符串进行排序，不区分大小写。&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注释：本函数为数组中的单元赋予新的键名。原有的键名将被删除。&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;返回值：如果成功则返回 TRUE，否则返回 FALSE。&lt;/span&gt;&lt;/p&gt;', 1, 1548938169, 0, 1, 0);
INSERT INTO `study_php_functions` VALUES (11, 1, 'floor()', 'float：对数值往下取整(如3.1取3，-5.2取-6，6取6)', '&lt;p&gt;定义：&lt;span style=&quot;font-weight: bold;&quot;&gt;向下舍入为最接近的整数&lt;/span&gt;&lt;/p&gt;&lt;p&gt;语法：floor(&lt;span style=&quot;font-weight: bold;&quot;&gt;x&lt;/span&gt;)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;x&amp;nbsp; &amp;nbsp; --一个数&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $a = 3.1 , $b = -5.3 , $c = 6 ;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo floor($a);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //3&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo floor($b);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //-6&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo floor($c);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //6&lt;/p&gt;&lt;p&gt;注意：&amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;floor() 返回的类型仍然是 float，因为 float 值的范围通常比 integer 要大。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1548900362, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (12, 1, 'ceil()', 'float：对数值往上取整(如3.1取4，-5.2取-5，6取6)', '&lt;p&gt;定义：&lt;span style=&quot;font-weight: bold;&quot;&gt;向上舍入为最接近的整数&lt;/span&gt;&lt;/p&gt;&lt;p&gt;语法：ceil(&lt;span style=&quot;font-weight: bold;&quot;&gt;x&lt;/span&gt;)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;x&amp;nbsp; &amp;nbsp; --一个数&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = 3.1 , $b = -5.2;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; echo ceil($a);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //4&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; echo ceil($b);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //-5&lt;br&gt;&lt;/p&gt;&lt;p&gt;注意：&lt;span style=&quot;font-weight: bold;&quot;&gt;ceil() 返回的类型仍然是 float，因为 float 值的范围通常比 integer 要大。&lt;/span&gt;&lt;/p&gt;', 1, 1548899556, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (13, 6, 'date()', 'date：打印时间', '&lt;p&gt;详解：https://www.cnblogs.com/zhengwk/p/5810373.html&lt;/p&gt;&lt;p&gt;定义：格式化本地日期和时间，并返回已格式化的日期字符串&lt;/p&gt;&lt;p&gt;语法：date(    &lt;span style=&quot;font-weight: bold;&quot;&gt;formart&lt;/span&gt;, timestamp)&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;返回值：如果成功则返回格式化的日期字符串，如果失败则报 E_WARNING 错并返回 FALSE。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; timestamp&amp;nbsp; &amp;nbsp; --时间戳。默认是当前的本地时间（time()）。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; formart&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--输出日期字符串的格式。可使用下列字符：    &lt;br&gt;&lt;/p&gt;&lt;ul style=&quot;margin-left:150px&quot;&gt;    &lt;li&gt;d - 一个月中的第几天（从 01 到 31）&lt;/li&gt;    &lt;li&gt;D - 星期几的文本表示（用三个字母表示）&lt;/li&gt;    &lt;li&gt;j - 一个月中的第几天，不带前导零（1 到 31）&lt;/li&gt;    &lt;li&gt;l（'L' 的小写形式）- 星期几的完整的文本表示&lt;/li&gt;    &lt;li&gt;N - 星期几的 ISO-8601 数字格式表示（1表示Monday[星期一]，7表示Sunday[星期日]）&lt;/li&gt;    &lt;li&gt;S - 一个月中的第几天的英语序数后缀（2 个字符：st、nd、rd 或 th。与 j 搭配使用）&lt;/li&gt;    &lt;li&gt;w - 星期几的数字表示（0 表示 Sunday[星期日]，6 表示 Saturday[星期六]）&lt;/li&gt;    &lt;li&gt;z - 一年中的第几天（从 0 到 365）&lt;/li&gt;    &lt;li&gt;W - 用 ISO-8601 数字格式表示一年中的星期数字（每周从 Monday[星期一]开始）&lt;/li&gt;    &lt;li&gt;F - 月份的完整的文本表示（January[一月份] 到 December[十二月份]）&lt;/li&gt;    &lt;li&gt;m - 月份的数字表示（从 01 到 12）&lt;/li&gt;    &lt;li&gt;M - 月份的短文本表示（用三个字母表示）&lt;/li&gt;    &lt;li&gt;n - 月份的数字表示，不带前导零（1 到 12）&lt;/li&gt;    &lt;li&gt;t - 给定月份中包含的天数&lt;/li&gt;    &lt;li&gt;L - 是否是闰年（如果是闰年则为 1，否则为 0）&lt;/li&gt;    &lt;li&gt;o - ISO-8601 标准下的年份数字&lt;/li&gt;    &lt;li&gt;Y - 年份的四位数表示&lt;/li&gt;    &lt;li&gt;y - 年份的两位数表示&lt;/li&gt;    &lt;li&gt;a - 小写形式表示：am 或 pm&lt;/li&gt;    &lt;li&gt;A - 大写形式表示：AM 或 PM&lt;/li&gt;    &lt;li&gt;B - Swatch Internet Time（000 到 999）&lt;/li&gt;    &lt;li&gt;g - 12 小时制，不带前导零（1 到 12）&lt;/li&gt;    &lt;li&gt;G - 24 小时制，不带前导零（0 到 23）&lt;/li&gt;    &lt;li&gt;h - 12 小时制，带前导零（01 到 12）&lt;/li&gt;    &lt;li&gt;H - 24 小时制，带前导零（00 到 23）&lt;/li&gt;    &lt;li&gt;i - 分，带前导零（00 到 59）&lt;/li&gt;    &lt;li&gt;s - 秒，带前导零（00 到 59）&lt;/li&gt;    &lt;li&gt;u - 微秒（PHP 5.2.2 中新增的）&lt;/li&gt;    &lt;li&gt;e - 时区标识符（例如：UTC、GMT、Atlantic/Azores）&lt;/li&gt;    &lt;li&gt;I（i 的大写形式）- 日期是否是在夏令时（如果是夏令时则为 1，否则为 0）&lt;/li&gt;    &lt;li&gt;O - 格林威治时间（GMT）的差值，单位是小时（实例：+0100）&lt;/li&gt;    &lt;li&gt;P - 格林威治时间（GMT）的差值，单位是 hours:minutes（PHP 5.1.3 中新增的）&lt;/li&gt;    &lt;li&gt;T - 时区的简写（实例：EST、MDT）&lt;/li&gt;    &lt;li&gt;Z - 以秒为单位的时区偏移量。UTC 以西时区的偏移量为负数（-43200 到 50400）&lt;/li&gt;    &lt;li&gt;c - ISO-8601 标准的日期（例如 2013-05-05T16:34:42+00:00）&lt;/li&gt;    &lt;li&gt;r - RFC 2822 格式的日期（例如 Fri, 12 Apr 2013 12:01:05 +0200）&lt;/li&gt;    &lt;li&gt;U - 自 Unix 纪元（January 1 1970 00:00:00 GMT）以来经过的秒数&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;同时，也可使用下列预定义常量（从 PHP 5.1.0 开始可用）：&lt;span style=&quot;font-weight: bold;&quot;&gt;date(DATE_ATOM)不加引号&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;margin-left:150px&quot;&gt;    &lt;li&gt;DATE_ATOM - Atom（例如：2013-04-12T15:52:01+00:00）&lt;/li&gt;    &lt;li&gt;DATE_COOKIE - HTTP Cookies（例如：Friday, 12-Apr-13 15:52:01 UTC）&lt;/li&gt;    &lt;li&gt;DATE_ISO8601 - ISO-8601（例如：2013-04-12T15:52:01+0000）&lt;/li&gt;    &lt;li&gt;DATE_RFC822 - RFC 822（例如：Fri, 12 Apr 13 15:52:01 +0000）&lt;/li&gt;    &lt;li&gt;DATE_RFC850 - RFC 850（例如：Friday, 12-Apr-13 15:52:01 UTC）&lt;/li&gt;    &lt;li&gt;DATE_RFC1036 - RFC 1036（例如：Fri, 12 Apr 13 15:52:01 +0000）&lt;/li&gt;    &lt;li&gt;DATE_RFC1123 - RFC 1123（例如：Fri, 12 Apr 2013 15:52:01 +0000）&lt;/li&gt;    &lt;li&gt;DATE_RFC2822 - RFC 2822（Fri, 12 Apr 2013 15:52:01 +0000）&lt;/li&gt;    &lt;li&gt;DATE_RFC3339 - 与 DATE_ATOM 相同（从 PHP 5.1.3 开始）&lt;/li&gt;    &lt;li&gt;DATE_RSS - RSS（Fri, 12 Aug 2013 15:52:01 +0000）&lt;/li&gt;    &lt;li&gt;DATE_W3C - 万维网联盟（例如：2013-04-12T15:52:01+00:00）&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1549006263, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (14, 2, 'empty()', 'boolean：检查一个变量是否为空', '&lt;p&gt;empty() 判断一个变量是否被认为是空的。当一个变量并不存在，或者它的值等同于 FALSE，那么它会被认为不存在。
    &lt;span style=&quot;font-weight: bold;&quot;&gt;如果变量不存在的话，empty()并不会产生警告。&lt;/span&gt;&amp;nbsp;&amp;nbsp;
    &lt;br&gt;&lt;/p&gt;
&lt;p&gt;
    &lt;span style=&quot;font-weight: bold;&quot;&gt;empty() 5.5 版本之后支持表达式了，而不仅仅是变量。&amp;nbsp;&lt;/span&gt;
&lt;/p&gt;
&lt;p&gt;empty() 并不会产生警告，哪怕变量并不存在。 这意味着&amp;nbsp;empty()&amp;nbsp;本质上与&amp;nbsp;!isset($var) || $var == false&amp;nbsp;等价。&lt;/p&gt;
&lt;h3&gt;返回值&lt;/h3&gt;
&lt;p&gt;当 var 存在，并且是一个非空非零的值时返回 FALSE 否则返回 TRUE。&lt;/p&gt;
&lt;p&gt;以下的变量会被认为是空的：&lt;/p&gt;
&lt;ul&gt;
    &lt;li&gt;
        &lt;em&gt;&quot;&quot;&lt;/em&gt;&amp;nbsp;(空字符串)&lt;/li&gt;
    &lt;li&gt;
        &lt;em&gt;0&lt;/em&gt;&amp;nbsp;(作为整数的0)&lt;/li&gt;
    &lt;li&gt;
        &lt;em&gt;0.0&lt;/em&gt;&amp;nbsp;(作为浮点数的0)&lt;/li&gt;
    &lt;li&gt;
        &lt;em&gt;&quot;0&quot;&lt;/em&gt;&amp;nbsp;(作为字符串的0)&lt;/li&gt;
    &lt;li&gt;
        
           NULL
        
    &lt;/li&gt;
    &lt;li&gt;
        
            FALSE
        
    &lt;/li&gt;
    &lt;li&gt;
        &lt;em&gt;array()&lt;/em&gt;&amp;nbsp;(一个空数组)&lt;/li&gt;
    &lt;li&gt;
        &lt;em&gt;$var;&lt;/em&gt;&amp;nbsp;(一个声明了，但是没有值的变量)&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&amp;nbsp;
    &lt;br&gt;&lt;/p&gt;', 1, 1548818266, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (15, 7, 'json_encode()', 'json：对变量进行JSON编码，只对UTF-8编码的数据有效，返回json格式', '&lt;p&gt;定义：用于对变量进行JSON编码，该函数如果执行成功返回JSON数据，否则返回FALSE&lt;/p&gt;&lt;p&gt;语法：json_encode(    &lt;span style=&quot;font-weight: bold;&quot;&gt;val&lt;/span&gt;, type)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; val&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --要编码的值。该函数只对UTF-8编码的数据有效。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; type&amp;nbsp; &amp;nbsp; &amp;nbsp; --由以下常量组成的二进制掩码：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_HEX_QUOT，所有的 &quot; 转换成 \u0022&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_HEX_TAG，所有的 &amp;lt; 和 &amp;gt; 转换成 \u003C 和 \u003E&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_HEX_AMP，所有的 &amp;amp; 转换成 \u0026&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_HEX_APOS，所有的 ' 转换成 \u0027&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_NUMERIC_CHECK，将所有(数字字符串)编码成数字（numbers）&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_PRETTY_PRINT，用空白字符格式化返回的数据&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_UNESCAPED_SLASHES，不要编码&amp;nbsp;&lt;em&gt;/&lt;/em&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_FORCE_OBJECT, 使一个非关联数组输出一个类（Object）而非数组    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; JSON_UNESCAPED_UNICODE&lt;/span&gt;，不使用转码，原样输出（中文转码），&lt;span style=&quot;font-weight: bold;&quot;&gt;防止中文乱码用之&lt;/span&gt;&lt;/p&gt;&lt;p&gt;        &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JSON_BIGINT_AS_STRING，将大数字编码成原始字符原来的值&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1549015566, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (16, 7, 'json_decode()', 'json：用于对 JSON 格式的字符串进行解码，并转换为 PHP 变量', '&lt;p&gt;定义：用于对 JSON 格式的字符串进行解码，并转换为 PHP 变量&lt;/p&gt;&lt;p&gt;语法：json_decode(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt; , assoc) 暂不考虑另外两个参数&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --待解码的 JSON 字符串，必须是 UTF-8 编码数据&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; assoc&amp;nbsp; &amp;nbsp; --当该参数为 TRUE 时，将返回数组，FALSE 时返回对象，默认false&lt;br&gt;&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $json = '{&quot;a&quot;:1,&quot;b&quot;:2,&quot;c&quot;:3,&quot;d&quot;:4,&quot;e&quot;:5}';&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var_dump(json_decode($json));&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 输出：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;object(stdClass)[1]&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public 'a' =&amp;gt; int 1&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public 'b' =&amp;gt; int 2&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public 'c' =&amp;gt; int 3&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public 'd' =&amp;gt; int 4&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public 'e' =&amp;gt; int 5&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var_dump(json_decode($json, true));&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 输出：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array (size=5)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;'a' =&amp;gt; int 1&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;'b' =&amp;gt; int 2&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;'c' =&amp;gt; int 3&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;'d' =&amp;gt; int 4&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;'e' =&amp;gt; int 5&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1549016381, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (17, 17, 'intval()', 'int：返回整数值，但不改变初始值', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709473, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (18, 28, 'compact()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1548908549, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (19, 27, 'die()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709575, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (20, 26, 'exit()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709590, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (21, 25, 'define()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709607, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (22, 4, 'ltrim()', 'string：移除字符串左侧的空白字符或其他预定义字符', '&lt;p&gt;定义：移除字符串左侧的空白字符或其他预定义字符。&lt;/p&gt;&lt;p&gt;语法：ltrim(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,charlist)&lt;/p&gt;&lt;p&gt;参数：&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; charlist&amp;nbsp; &amp;nbsp; &amp;nbsp; --要移除的字符串，如果省略，则移除以下字符：&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &quot;\0&quot; - NULL&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\t&quot; - 制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\n&quot; - 换行&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\x0B&quot; - 垂直制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\r&quot; - 回车&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot; &quot; - 空格&lt;/p&gt;&lt;p&gt;注意：以上这些字符只有在使用双引号&quot;&quot;的时候才能起作用，空格都可以。&lt;/p&gt;&lt;p&gt;返回值：返回已修改的字符串。&lt;/p&gt;', 1, 1548853389, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (23, 4, 'rtrim()', 'string：移除字符串右侧的空白字符或其他预定义字符', '&lt;p&gt;定义：移除字符串右侧的空白字符或其他预定义字符&lt;/p&gt;&lt;p&gt;语法：rtrim(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,charlist)&lt;/p&gt;&lt;p&gt;参数：&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; charlist&amp;nbsp; &amp;nbsp; &amp;nbsp; --要移除的字符串，如果省略，则移除以下字符：&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &quot;\0&quot; - NULL&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\t&quot; - 制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\n&quot; - 换行&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\x0B&quot; - 垂直制表符&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot;\r&quot; - 回车&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&quot; &quot; - 空格&lt;/p&gt;&lt;p&gt;注意：以上这些字符只有在使用双引号&quot;&quot;的时候才能起作用，空格都可以。&lt;/p&gt;&lt;p&gt;返回值：返回已修改的字符串。&lt;/p&gt;', 1, 1548853609, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (24, 4, 'mb_substr()', 'string：获取部分字符串(参考：substr())', '&lt;p&gt;定义：获取部分字符串(参考：substr())&lt;/p&gt;&lt;p&gt;语法：mb_substr(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt; , &lt;span style=&quot;font-weight: bold;&quot;&gt;start&lt;/span&gt; , length , encoding)&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;如果start &amp;lt; 0 &amp;amp;&amp;amp; length &amp;lt;= start ,则length == 0&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --要截取的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --开始位置&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; length&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--截取长度&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; encoding&amp;nbsp; --字符编码&lt;br&gt;&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; echo mb_internal_encoding();&amp;nbsp; &amp;nbsp; //UTF-8&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$str=&quot;D.C is 中国人&quot;;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_substr($str,1);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //.C is 中国人&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_substr($str,1,6);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//.C is&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_substr($str,1,-5);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//.C i&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_substr($str,-1,-6);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //空&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_substr($str,-6,-2);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //is 中&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注意： 编码：gbk时，一个中文字符为1.5个字节，容易出现乱码&lt;/span&gt;&lt;/p&gt;', 1, 1548914482, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (25, 4, 'mb_strlen()', 'string：计算中文字符串的长度(字节数)，php的mbstring扩展函数', '&lt;p&gt;定义：计算中文字符串的长度(字节数)，php的mbstring扩展函数&lt;/p&gt;&lt;p&gt;语法：mb_strlen(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,encoding)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --要计算的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; encoding&amp;nbsp; --字符编码。如果省略，则使用内部字符编码&lt;br&gt;&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $str=&quot;D.C is 中国人&quot;; &lt;br&gt;&lt;/p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_strlen($str,&quot;utf-8&quot;);&amp;nbsp; &amp;nbsp; //10&amp;nbsp; &amp;nbsp; &amp;nbsp;(一个中文字符相当于一个字符)&lt;br&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_strlen($str,&quot;gbk&quot;);&amp;nbsp; &amp;nbsp; &amp;nbsp; //12&amp;nbsp; &amp;nbsp; &amp;nbsp;(一个中文字符相当于1.5个字符)&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;说明：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当mb_strlen的内码选择为&lt;span style=&quot;font-weight: bold;&quot;&gt;UTF-8的时候，则会将中文字符当成一个字符&lt;/span&gt;,所以为3+1+2+1+3=10;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当mb_strlen的内码选择为&lt;span style=&quot;font-weight: bold;&quot;&gt;gbk的时候，一个中文字符当成1.5个字符&lt;/span&gt;来处理来处理,最后就是:3+1+2+1+4.5=11.5&lt;/p&gt;&lt;p&gt;参考：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;mb_internal_encoding()会得到当前PHP使用的内部编码&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;/divcourier&gt;', 1, 1548914483, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (26, 20, 'round()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709753, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (27, 19, 'setcookie()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709785, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (28, 18, 'serialize()', '序列化', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709818, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (29, 4, 'md5()', 'string：加密，计算字符串的MD5散列', '&lt;p&gt;语法：md5(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,raw)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --要加密或计算的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; raw&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --输出格式&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; true&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;:原始16字符二进制格式&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; false&amp;nbsp; &amp;nbsp; :默认，32字符十六进制数&lt;br&gt;&lt;/p&gt;&lt;p&gt;返回值：如果成功则返回已计算的 MD5 散列，如果失败则返回 FALSE。&lt;/p&gt;', 1, 1548852446, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (30, 4, 'strripos()', 'string：查找字符串在另一字符串中最后一次出现的位置（不区分大小写）', '&lt;p&gt;定义：查找字符串在另一字符串中&lt;span style=&quot;font-weight: bold;&quot;&gt;最后一次&lt;/span&gt;出现的位置（&lt;span style=&quot;font-weight: bold;&quot;&gt;不区分大小写&lt;/span&gt;）&lt;/p&gt;&lt;p&gt;语法：&amp;nbsp;strripos(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,&lt;span style=&quot;font-weight: bold;&quot;&gt;find&lt;/span&gt;,start)&lt;/p&gt;&lt;p&gt;参数：&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --要搜索的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; find&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--要查找的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; &amp;nbsp; --在何处开始搜索&lt;br&gt;&lt;/p&gt;&lt;p&gt;返回值：integer&amp;nbsp; 如果没有找到字符串则返回 FALSE&lt;/p&gt;', 1, 1548925150, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (31, 4, 'stripos()', 'string：查找字符串在另一字符串中第一次出现的位置（不区分大小写）', '&lt;p&gt;定义：查找字符串在另一字符串中第一次出现的位置（不区分大小写）&lt;/p&gt;&lt;p&gt;语法：&amp;nbsp;stripos(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,&lt;span style=&quot;font-weight: bold;&quot;&gt;find&lt;/span&gt;,start)&lt;/p&gt;&lt;p&gt;参数：&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --要搜索的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; find&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--要查找的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; &amp;nbsp; --在何处开始搜索&lt;br&gt;&lt;/p&gt;&lt;p&gt;返回值：integer&amp;nbsp; 如果没有找到字符串则返回 FALSE&lt;/p&gt;', 1, 1548851477, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (32, 4, 'strrpos()', 'string：查找字符串在另一字符串中最后一次出现的位置', '&lt;p&gt;定义：查找字符串在另一字符串中&lt;span style=&quot;font-weight: bold;&quot;&gt;最后一次&lt;/span&gt;出现的位置&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;注意：strrpos() 函数对大小写敏感。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;语法：&amp;nbsp;strrpos(&lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;,&lt;span style=&quot;font-weight: bold;&quot;&gt;find&lt;/span&gt;,start)&lt;/p&gt;&lt;p&gt;参数：&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; --要搜索的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; find&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;--要查找的字符串&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; start&amp;nbsp; &amp;nbsp; &amp;nbsp; --在何处开始搜索&lt;br&gt;&lt;/p&gt;&lt;p&gt;返回值：integer&amp;nbsp; 如果没有找到字符串则返回 FALSE&lt;/p&gt;', 1, 1548925110, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (33, 4, 'mb_strcut()', 'string：获取部分字符串(参考：mb_substr())', '&lt;p&gt;定义与语法与mb_strcut()基本相同，唯一的不同是：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;mb_substr()以字符来分割；&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;mb_strcut()以字节来分割。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;但是都不会产生半个字符的现象 。&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 1, 1548927238, 0, 1, 0);
INSERT INTO `study_php_functions` VALUES (34, 5, 'array_map()', 'array：将用户自定义函数作用到数组中的每个值上，并返回用户自定义函数作用后的带有新值的数组', '&lt;p&gt;定义：将用户自定义函数作用到数组中的每个值上，并返回用户自定义函数作用后的带有新值的数组&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;回调函数接受的参数数目应该和传递给 array_map() 函数的数组数目一致。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;提示&lt;/span&gt;：您可以向函数输入一个或者多个数组。&lt;/p&gt;&lt;p&gt;语法：array_map(&lt;span style=&quot;font-weight: bold;&quot;&gt;myfunction&lt;/span&gt; , &lt;span style=&quot;font-weight: bold;&quot;&gt;array1&lt;/span&gt; , array2 , array3 , ...)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; myfunction&amp;nbsp; &amp;nbsp; --用户自定义函数的名称，或者是 null&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array1&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array2&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array3&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;在php源码中的使用方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;function myfunction($v){&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return ($v*$v);&lt;/p&gt;&lt;p&gt;}&lt;/p&gt;&lt;p&gt;$a=array(1,2,3,4,5);    &lt;br&gt;&lt;/p&gt;&lt;p&gt;print_r(array_map(&quot;myfunction&quot; , $a));&amp;nbsp; &amp;nbsp; &amp;nbsp;//Array ( [0] =&amp;gt; 1 [1] =&amp;gt; 4 [2] =&amp;gt; 9 [3] =&amp;gt; 16 [4] =&amp;gt; 25 )&lt;/p&gt;&lt;p&gt;或者&lt;/p&gt;&lt;p&gt;function myfunction($v1,$v2){&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return ($v1*$v2);&lt;/p&gt;&lt;p&gt;}&lt;/p&gt;&lt;p&gt;$a=array(1,2,3,4,5);&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;$b=array(12,13);&lt;/p&gt;&lt;p&gt;print_r(array_map(&quot;myfunction&quot; , $a , $b));&amp;nbsp; &amp;nbsp; &amp;nbsp;//Array ( [0] =&amp;gt; 12 [1] =&amp;gt; 26 [2] =&amp;gt; 0 [3] =&amp;gt; 0 [4] =&amp;gt; 0 )&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;在thinkphp5.1中的使用方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;public function my_method(){&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = array(1,2,3,4,5);&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;array_map(array($this,'myfunction'), $a);&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;print_r&amp;nbsp;($a);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//Array ( [0] =&amp;gt; 1 [1] =&amp;gt; 4 [2] =&amp;gt; 9 [3] =&amp;gt; 16 [4] =&amp;gt; 25 )&lt;br&gt;&lt;/p&gt;&lt;p&gt;}&lt;/p&gt;&lt;p&gt;function myfunction($v){&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return ($v*$v);&lt;/p&gt;&lt;p&gt;}&lt;/p&gt;', 1, 1548940467, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (35, 5, 'array_intersect()', 'array：返回两个或多个数组的交集数组', '&lt;p&gt;定义：用于比较两个（或更多个）数组的键值，并返回交集&lt;/p&gt;&lt;p&gt;语法：array_intersect(&lt;span style=&quot;font-weight: bold;&quot;&gt;array1 , array2 &lt;/span&gt;, array3 , ...)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array1&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array2&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;array3&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;说明：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;该函数比较两个（或更多个）数组的键值，并返回交集数组，该数组包括了所有在被比较的数组（&lt;i&gt;array1&lt;/i&gt;）中，同时也在任何其他参数数组（&lt;i&gt;array2&lt;/i&gt;&amp;nbsp;或&amp;nbsp;&lt;i&gt;array3&lt;/i&gt;&amp;nbsp;等等）中的键值。&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 结果数组包含了所有在被比较数组中，也同时出现在所有其他参数数组中的值，键名保留不变。&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a1=array(&quot;a&quot;=&amp;gt;&quot;red&quot;,&quot;b&quot;=&amp;gt;&quot;green&quot;,&quot;c&quot;=&amp;gt;&quot;blue&quot;,&quot;d&quot;=&amp;gt;&quot;yellow&quot;);&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$a2=array(&quot;e&quot;=&amp;gt;&quot;red&quot;,&quot;f&quot;=&amp;gt;&quot;black&quot;,&quot;g&quot;=&amp;gt;&quot;purple&quot;);&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$a3=array(&quot;a&quot;=&amp;gt;&quot;red&quot;,&quot;b&quot;=&amp;gt;&quot;black&quot;,&quot;h&quot;=&amp;gt;&quot;yellow&quot;);&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$result=array_intersect($a1,$a2,$a3);&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;print_r($result);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//Array ( [a] =&amp;gt; red )&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1548943042, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (36, 5, 'array_column()', 'array：返回输入数组中某个单一列的值，返回的是数组', '&lt;p&gt;定义：&lt;span style=&quot;font-weight: bold;&quot;&gt;返回输入数组中某个单一列的值（返回数组）&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;语法：array_column(&lt;span style=&quot;font-weight: bold;&quot;&gt;array , column_key , &lt;/span&gt;index_key)&lt;/p&gt;&lt;p&gt;参数：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; array&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --数组&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; column_key --需要返回值的列。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;可以是索引数组的列的整数索引，或者是关联数组的列的字符串键值。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;该参数也可以是 NULL，此时将返回整个数组（配合 index_key 参数来重置数组键的时候，非常有用）。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;index_key&amp;nbsp; &amp;nbsp; --用作返回数组的索引/键的列&lt;br&gt;&lt;/p&gt;&lt;p&gt;验证：&lt;/p&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;$a &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&amp;nbsp;'id' =&amp;gt; 5698&amp;nbsp;,&amp;nbsp; 'first_name' =&amp;gt; 'Bill' , 'last_name' =&amp;gt; 'Gates' ),&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&amp;nbsp;'id' =&amp;gt; 4767,&amp;nbsp; &amp;nbsp;'first_name' =&amp;gt; 'Steve',&amp;nbsp;'last_name' =&amp;gt; 'Jobs' ),&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&amp;nbsp;&lt;/span&gt;'id' =&amp;gt; 3809,&amp;nbsp; &amp;nbsp;'first_name' =&amp;gt; 'Mark',&amp;nbsp; 'last_name' =&amp;gt; 'Zuckerberg' )&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;);&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;$last_names &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;array_column&lt;/span&gt;&lt;span&gt;($a, &lt;/span&gt;&lt;span&gt;'last_name'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'id'&lt;/span&gt;&lt;span&gt;);&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;print_r&lt;/span&gt;&lt;span&gt;($last_names);&lt;/span&gt;&amp;nbsp; &amp;nbsp; //Array ( [5698] =&amp;gt; Gates [4767] =&amp;gt; Jobs [3809] =&amp;gt; Zuckerberg )&lt;/div&gt;&lt;p&gt;说明：id列的值为下标，last_name列的值为值。&lt;/p&gt;
', 1, 1548944035, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (37, 4, 'htmlspecialchars_decode()', 'string：把预定义的字符转换为 HTML 实体', '&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;定义：&lt;/font&gt;        &lt;/font&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;把预定义的字符转换为HTML实体&lt;/font&gt;        &lt;/font&gt;    &lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;语法：&lt;/font&gt;            &lt;/font&gt;        &lt;/font&gt;    &lt;/font&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;htmlspecialchars_decode（            &lt;span style=&quot;font-weight: bold;&quot;&gt;string&lt;/span&gt;, flags）&lt;/font&gt;    &lt;/font&gt;&lt;/p&gt;&lt;p&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;参数：&lt;/font&gt;            &lt;/font&gt;        &lt;/font&gt;    &lt;/font&gt;&lt;/p&gt;&lt;p&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; string&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --&lt;/font&gt;                    &lt;/font&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;要解码的字符串&lt;/font&gt;                    &lt;/font&gt;                    &lt;br&gt;                &lt;/font&gt;            &lt;/font&gt;        &lt;/font&gt;    &lt;/font&gt;&lt;/p&gt;&lt;p&gt;    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                    &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                        &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                            &lt;font style=&quot;vertical-align: inherit;&quot;&gt;                                &lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; flags&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; --&lt;/font&gt;                            &lt;/font&gt;规定如何处理引号以及使用哪种文档类型。                            &lt;br&gt;&lt;/font&gt;                    &lt;/font&gt;                &lt;/font&gt;            &lt;/font&gt;        &lt;/font&gt;    &lt;/font&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 可用的引号类型：&lt;/p&gt;&lt;ul style=&quot;margin-left:150px&quot;&gt;    &lt;li&gt;ENT_COMPAT - 默认。仅解码双引号。&lt;/li&gt;    &lt;li&gt;ENT_QUOTES - 解码双引号和单引号。&lt;/li&gt;    &lt;li&gt;ENT_NOQUOTES - 不解码任何引号。&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 规定使用的文档类型的附加 flags：&lt;/p&gt;&lt;ul style=&quot;margin-left:150px&quot;&gt;    &lt;li&gt;ENT_HTML401 - 默认。作为 HTML 4.01 处理代码。&lt;/li&gt;    &lt;li&gt;ENT_HTML5 - 作为 HTML 5 处理代码。&lt;/li&gt;    &lt;li&gt;ENT_XML1 - 作为 XML 1 处理代码。&lt;/li&gt;    &lt;li&gt;ENT_XHTML - 作为 XHTML 处理代码。&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;htmlspecialchars_decode() 函数是 htmlspecialchars() 函数的反函数&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 0, 1549165906, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (38, 2, 'is_*()', 'boolean：检测变量的类型', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;返回值：true或false&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_array  - 检测变量是否是数组&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_bool  - 检测变量是否是布尔型&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_callable  - 检测参数是否为合法的可调用结构&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_dir  - 判断给定文件名是否是一个目录&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_double  -&amp;nbsp;  &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;a href=&quot;mk:@MSITStore:E:\handbook\PHP\php%E6%89%8B%E5%86%8C2016.3.chm::/res/function.is-float.html&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_float（）&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/a&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;  &amp;nbsp;的别名&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_float  - 检测变量是否是浮点型&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_file  - 判断给定文件名是否为一个正常的文件&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_int  - 检测变量是否是整数&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_null  - 检测变量是否为&amp;nbsp;  &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;NULL&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_numeric  - 检测变量是否为数字或数字字符串&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_object  - 检测变量是否是一个对象&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;is_string  - 检测变量是否是字符串&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1549174569, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (39, 5, 'get_defined_constants()', 'array：返回当前所有已定义的常量名和值', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;定义：返回名称和值的所有当前定义的常量这包括设立的扩展以及创建的定义（）函数。&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;语法：的print_r（get_defined_constants（真））;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;打印：太多约2106条&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 1, 1549175899, 0, 1, 0);
INSERT INTO `study_php_functions` VALUES (40, 0, 'strtoupper()', 'string：把字符串的内容更改为大写字母', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1549432343, 0, 0, 0);

-- -----------------------------
-- Table structure for study_php_lamp
-- -----------------------------
DROP TABLE IF EXISTS `study_php_lamp`;
CREATE TABLE `study_php_lamp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `zn_name` varchar(30) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php环境lamp表';


-- -----------------------------
-- Table structure for study_php_operators
-- -----------------------------
DROP TABLE IF EXISTS `study_php_operators`;
CREATE TABLE `study_php_operators` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '符号名称',
  `zn_name` varchar(30) NOT NULL COMMENT '符号中文名称',
  `content` text NOT NULL COMMENT '使用说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php符号详解表';


-- -----------------------------
-- Table structure for study_php_others
-- -----------------------------
DROP TABLE IF EXISTS `study_php_others`;
CREATE TABLE `study_php_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php其他管理表';


-- -----------------------------
-- Table structure for study_php_phpstudy
-- -----------------------------
DROP TABLE IF EXISTS `study_php_phpstudy`;
CREATE TABLE `study_php_phpstudy` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `zn_name` varchar(30) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php环境phpstudy表';

-- -----------------------------
-- Records of study_php_phpstudy
-- -----------------------------
INSERT INTO `study_php_phpstudy` VALUES (1, 1, 'ddddd', 'ggghhh', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;hhh&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 1, 1547144621, 1, 1, 0);

-- -----------------------------
-- Table structure for study_php_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_php_questions`;
CREATE TABLE `study_php_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题办法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php问题总结表';

-- -----------------------------
-- Records of study_php_questions
-- -----------------------------
INSERT INTO `study_php_questions` VALUES (1, 0, 'isset()与empty()的使用区别详解', '&lt;p&gt;链接地址：https://www.jb51.net/article/105165.htm&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;empty()的解释如下&lt;/span&gt;：&lt;/p&gt;&lt;p&gt;描述bool empty( mixed var )&lt;/p&gt;&lt;p&gt;如果 var 是非空或非零的值，则 empty() 返回 FALSE。换句话说，&quot;&quot;、0、&quot;0&quot;、NULL、FALSE、array()、var $var; 以及没有任何属性的对象都将被认为是空的，如果 var 为空，则返回 TRUE。&lt;/p&gt;&lt;p&gt;&lt;strong&gt;isset()的解释如下：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;isset()检测变量是否设置&lt;/p&gt;&lt;p&gt;描述bool isset ( mixed var [, mixed var [, ...]] )&lt;/p&gt;&lt;p&gt;如果 var 存在则返回 TRUE，否则返回 FALSE。&lt;/p&gt;&lt;p&gt;如果已经使用 unset() 释放了一个变量之后，它将不再是 isset()。若使用 isset() 测试一个被设置成 NULL的变量，将返回 FALSE。同时要注意的是一个 NULL 字节（&quot;\0&quot;）并不等同于 PHP 的 NULL 常数。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;区别：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;如果变量为0，则empty()会返回TRUE，isset()会返回TRUE；&lt;/strong&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;如果变量为空字符串，则empty()会返回TRUE，isset()会返回TRUE；&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;如果变量未定义，则empty()会返回TRUE，isset()会返回FLASE；&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;&lt;strong&gt;警告: isset() 只能用于变量，因为传递任何其它参数都将造成解析错误。若想检测常量是否已设置，可使用defined()函数。&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;当要 判断一个变量是否已经声明的时候 可以使用 isset 函数&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;当要 判断一个变量是否已经赋予数据且不为空 可以用 empty 函数&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;当要 判断 一个变量 存在且不为空 先isset 函数 再用 empty 函数&lt;/strong&gt;&lt;/p&gt;', 1, 1548839525, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (2, 0, '\0与null的区别', '
        &lt;h5&gt;&lt;span style=&quot;font-weight: bold; color: rgb(249, 150, 59);&quot;&gt;&lt;span lang=&quot;zh-cn&quot; xml:lang=&quot;zh-cn&quot;&gt;null不是&lt;/span&gt;
        &lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot;&gt;0&lt;/span&gt;
        &lt;span lang=&quot;zh-cn&quot; xml:lang=&quot;zh-cn&quot;&gt;，是空指针&lt;/span&gt;&amp;nbsp;;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot;&gt;'\0'&lt;/span&gt;
        &lt;span lang=&quot;zh-cn&quot; xml:lang=&quot;zh-cn&quot;&gt;是真正的&lt;/span&gt;
        &lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot;&gt;int 0&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-weight: bold; font-size: small;&quot;&gt;字符'\0' :char c='\0',它的ASCII码值为0，表示一个字符串结束的标志（转义字符）&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;如果计算长度，'\0'长度为2，null的长度为0 ；&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;使用isset(),empty()进行检测：&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; $a = '\0';&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; $b = null;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; isset($a);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //true&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; isset($b);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //false&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small; font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; empty($a);&amp;nbsp; &amp;nbsp; &amp;nbsp;//false&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp; &amp;nbsp; empty($b);&amp;nbsp; &amp;nbsp; //true&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot; style=&quot;font-size: small;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span lang=&quot;en-us&quot; xml:lang=&quot;en-us&quot;&gt;&amp;nbsp;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;', 1, 1548839521, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (3, 0, '在检索中，为什么找不到匹配0的结果', '&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;原因：在php中变量是以C语言的结构体来存储的，其中空字符串，null，false都是以值为0来存储的。在php中，空字符串的类型是string，null的类型是null，false的类型是boolean。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;C语言中的0在php中衍生出三种形态：&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;空字符串，null，false&lt;/span&gt;；在使用empty()函数时会把0转化为三种形态而过滤掉，所以检索不到关于0的内容。&lt;/span&gt;&lt;/p&gt;', 1, 1548839517, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (4, 0, '@符号的作用', '&lt;p&gt;&lt;span style=&quot;font-weight: bold; font-size: medium;&quot;&gt;@是错误控制运算符，用屏蔽错误提示&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;
    &lt;span style=&quot;font-size: medium;&quot;&gt;@是可以
        &lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;屏蔽函数执行过程中遇到问题而产生的一些错误、警告信息&lt;/span&gt;，这样用户就看不到程序的出错信息。这样除了用户界面会友好一些外，更重要的是安全性，因为屏蔽了出错文件的路径等信息。&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
    &lt;span style=&quot;font-size: medium;&quot;&gt;但是在使用时，有可能出现警告或错误信息，&lt;/span&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;span style=&quot;font-size: medium;&quot;&gt;解决办法：在程序顶部增加 ini_set( 'display_errors', 'off' );代码块即可&lt;/span&gt;
&lt;/p&gt;', 1, 1548839513, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (5, 0, 'public,protected,private,static,final,self,parent关键字的解释', '&lt;p&gt;    &lt;span style=&quot;font-size: small;&quot;&gt;public的权限最大，既可以让子类使用，也可以支持实例化之后的调用，&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-size: small;&quot;&gt;protected表示的是受保护的，访问的权限是只有在子类和本类中才可以被访问到&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-size: small;&quot;&gt;private 表示的是私有，只能够是在当前的类中可以被访问到&lt;/span&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-size: small; font-weight: bold;&quot;&gt;类的属性和方法修饰符，类的修饰符：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 公有类型，本类内、子类内、外部都可使用；&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在子类中可以通过self::var调用public方法或属性,parent::method调用父类方法&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;　　　　&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在实例中可以能过$obj-&amp;gt;var 来调用public类型的方法或属性&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;protected：受保护类型，只能本类内、子类内使用；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; 在子类中可以通过self::var调用protected方法或属性,parent::method调用父类方法&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在实例中    &lt;span style=&quot;font-weight: bold;&quot;&gt;不能&lt;/span&gt;通过$obj-&amp;gt;var 来调用 protected类型的方法或属性&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;但有一个例外，可以在子类的公共方法中调用父类protected类型的方法或属性，在外部直接调用子类的公共方法，但不能使用子类对象直接调用父类protected类型的方法或属性&lt;/span&gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;private：&amp;nbsp; &amp;nbsp; 私有类型，仅限本类内使用；&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; 该类型的属性或方法只能在该类中使用&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;static：&amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;实现值或者方法在类中不需实例化的情况下调用&lt;/span&gt;，同时static修饰的变量具有与值存储的功能，&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;用来修饰变量，此行只运行1次。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;final：&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;    &lt;span style=&quot;font-weight: bold;&quot;&gt;只能够用来修饰class与function，使用了final之后就不能够被继承&lt;/span&gt;，&amp;nbsp;&amp;nbsp;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;font-weight: bold;&quot;&gt;self 和parent 的区别&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;a).在子类中常用到这两个对像。他们的主要区别在于    &lt;span style=&quot;font-weight: bold;&quot;&gt;self可以调用父类中的公有或受保护的属性&lt;/span&gt;，但parent不可以&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; b).    &lt;span style=&quot;font-weight: bold;&quot;&gt;self:: 它表示当前类的静态成员(方法和属性)&lt;/span&gt;与 $this不同,$this是指当前对象&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59); font-weight: bold;&quot;&gt;* parent　只能调用父类中的公有或受保护的方法，不能调用父类中的属性&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(249, 150, 59); font-weight: bold;&quot;&gt; * self 　可以调用父类中除私有类型的方法和属性外的所有数据&lt;/span&gt;&lt;/p&gt;', 1, 1548840768, 1, 0, 0);
INSERT INTO `study_php_questions` VALUES (6, 0, '使用ajax添加内容，走error方法的原因', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;在使用ajax添加内容时，走error方法，其原因是添加的内容超过数据库设计的长度，修改设计长度即可解决&lt;/span&gt;&lt;/h5&gt;', 1, 1548845532, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (7, 0, 'strlen和mb_strlen的区别', '&lt;p&gt;链接地址：https://www.cnblogs.com/bing-yu12/p/6600153.html&lt;/p&gt;&lt;p&gt;举例：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_internal_encoding();&amp;nbsp; &amp;nbsp; //UTF-8&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$str=&quot;D.C is 中国人&quot;;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo strlen($str);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //16&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_strlen($str,&quot;utf-8&quot;);&amp;nbsp; &amp;nbsp; &amp;nbsp;//10&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo mb_strlen($str,&quot;gbk&quot;);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//12&lt;br&gt;&lt;/p&gt;&lt;p&gt;说明：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在strlen计算中，对待一个UTF8的中文字符，处理为3个字节长度，所以为3+1+2+1+9=16个&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当mb_strlen的内码选择为UTF-8的时候，则会将中文字符当成一个字符,所以为3+1+2+1+3=10;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;当mb_strlen的内码选择为gbk的时候，一个中文字符当成1.5个字符来处理来处理,最后就是:3+1+2+1+4.5=11.5&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;函数：&lt;span style=&quot;font-weight: bold;&quot;&gt;mb_internal_encoding()会得到当前PHP使用的内部编码&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;strlen,得到的是字符串所占的字节数，所以在查看一个字符串的长度的时候，strlen并不能得到我们需要的真实值&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;mb_strlen 函数可以很好的处理这一点&lt;/p&gt;&lt;p&gt;注意：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;mb_strlen函数并不是php的核心函数，只是PHP的一个扩展函数，&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;使用之前要判断是否加在的mbstring扩展模块，在Php.ini文件中可以查看相关配置&lt;/p&gt;', 1, 1548904105, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (8, 0, '使用json_encode()函数出现的问题及解决办法', '&lt;p&gt;问题1：对数组进行json编码时，未打印出json格式&lt;/p&gt;&lt;p&gt;描述1：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $arr = array('0'=&amp;gt;'a','1'=&amp;gt;'b','2'=&amp;gt;'c','3'=&amp;gt;'d');&lt;/p&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; echo json_encode($arr);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//[&quot;a&quot;,&quot;b&quot;,&quot;c&quot;,&quot;d&quot;]&lt;/div&gt;&lt;p&gt;解决1：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $arr = array('0'=&amp;gt;'a','1'=&amp;gt;'b','2'=&amp;gt;'c','3'=&amp;gt;'d');&lt;br&gt;&lt;/p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo json_encode(&lt;span style=&quot;font-weight: bold;&quot;&gt;(object)&lt;/span&gt;$arr);&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //{&quot;0&quot;:&quot;a&quot;,&quot;1&quot;:&quot;b&quot;,&quot;2&quot;:&quot;c&quot;,&quot;3&quot;:&quot;d&quot;}&lt;/div&gt;&lt;div&gt;----------------------------------------------------------------------------------------&lt;/div&gt;&lt;div&gt;问题2：中文转码变成“\u****”不可读格式&lt;/div&gt;&lt;div&gt;&lt;p&gt;描述2：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $a = array('ddd'=&amp;gt;'刷苏uus','ssss'=&amp;gt;'地沟油也会');&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo json_encode($a);&amp;nbsp; &amp;nbsp; //{&quot;ddd&quot;:&quot;\u5237\u82cfuus&quot;,&quot;ssss&quot;:&quot;\u5730\u6c9f\u6cb9\u4e5f\u4f1a&quot;}&lt;/p&gt;&lt;p&gt;解决2：&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$a = array('ddd'=&amp;gt;'刷苏uus','ssss'=&amp;gt;'地沟油也会');&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo json_encode($a , &lt;span style=&quot;font-weight: bold;&quot;&gt;JSON_UNESCAPED_UNICODE&lt;/span&gt;);&amp;nbsp; &amp;nbsp; //{&quot;ddd&quot;:&quot;刷苏uus&quot;,&quot;ssss&quot;:&quot;地沟油也会&quot;}&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;/divcourier&gt;', 0, 1549011215, 1, 0, 0);
INSERT INTO `study_php_questions` VALUES (9, 0, '使用settype改变变量的类型与类型转换的区别', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;区别：类型转换会生成一个拷贝，而保持原来的变量不动。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;使用&lt;span style=&quot;font-weight: bold;&quot;&gt;settype&lt;/span&gt;改变变量的类型：&lt;span style=&quot;font-weight: bold;&quot;&gt;原值变动&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = '222ststtstt';&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;settype($a,'integer');&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo $a;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //222&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;类型转换：原值不变&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $a = '222ststtstt';&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$b = (integer)$a;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo $a;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//'222ststtstt'&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;echo $b;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;//222&lt;br&gt;&lt;/p&gt;', 1, 1549097920, 1, 1, 0);
INSERT INTO `study_php_questions` VALUES (10, 0, 'gettype()与is_*的区别', '&lt;p&gt;提示：不要使用gettype()来测试某个变量的数据类型，因为这可能很慢并且该函数可能在未来的版本中被弃用。在正式的情况下，使用is_*函数来测试变量的数据类型。&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 0, 1549173310, 1, 0, 0);
INSERT INTO `study_php_questions` VALUES (11, 0, 'php中的PHP_EOL换行符详细解析', '&lt;p&gt;链接地址：https://www.jb51.net/article/42424.htm&lt;/p&gt;&lt;p&gt;echo PHP_EOL;&lt;/p&gt;&lt;p&gt;//windows平台相当于    echo &quot;\r\n&quot;;&lt;/p&gt;&lt;p&gt;//unix\linux平台相当于    echo &quot;\n&quot;;&lt;/p&gt;&lt;p&gt;//mac平台相当于    echo &quot;\r&quot;;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PHP中可以用PHP_EOL来替代，以提高代码的源代码级可移植性。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;用函数get_defined_constants()来获取所有PHP常量。&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, 1549174358, 1, 0, 0);

-- -----------------------------
-- Table structure for study_php_uses
-- -----------------------------
DROP TABLE IF EXISTS `study_php_uses`;
CREATE TABLE `study_php_uses` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '功能标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php功能总结表';

-- -----------------------------
-- Records of study_php_uses
-- -----------------------------
INSERT INTO `study_php_uses` VALUES (2, 0, '实现中文字串截取无乱码的方法', '&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;/**&lt;/div&gt;&lt;div&gt; * 实现中文字串截取无乱码的方法&lt;/div&gt;&lt;div&gt; */&lt;/div&gt;&lt;div&gt;function getSubstr($string, $start, $length){&lt;/div&gt;&lt;div&gt;    &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if (mb_strlen($string, 'utf-8') &amp;gt; $length) {&lt;/div&gt;&lt;div&gt;        &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$str = mb_substr($string, $start, $length, 'utf-8');&lt;/div&gt;&lt;div&gt;        &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return $str . '...';&lt;/div&gt;&lt;div&gt;    &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;} else {&lt;/div&gt;&lt;div&gt;        &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return $string;&lt;/div&gt;&lt;div&gt;    &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&lt;/div&gt;&lt;div&gt;}&lt;/div&gt;&lt;/divcourier&gt;', 0, 1548671283, 0, 0, 0);
INSERT INTO `study_php_uses` VALUES (3, 0, '计算字节数', '&lt;div&gt;&lt;span&gt;/**&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * 格式化字节大小&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@param&lt;/span&gt;&lt;span&gt;  &lt;/span&gt;&lt;span&gt;number&lt;/span&gt;&lt;span&gt; $size      字节数&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@param&lt;/span&gt;&lt;span&gt;  &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt; $delimiter 数字和单位分隔符&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; * &lt;/span&gt;&lt;span&gt;@return&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;string&lt;/span&gt;&lt;span&gt;            格式化后的带单位的大小&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt; */&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;function&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;format_bytes&lt;/span&gt;&lt;span&gt;($size, $delimiter &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;''&lt;/span&gt;&lt;span&gt;) {&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;$units &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;array&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;span&gt;'B'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'KB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'MB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'GB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'TB'&lt;/span&gt;&lt;span&gt;, &lt;/span&gt;&lt;span&gt;'PB'&lt;/span&gt;&lt;span&gt;);&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span&gt;for&lt;/span&gt;&lt;span&gt; ($i &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;0&lt;/span&gt;&lt;span&gt;; $size &lt;/span&gt;&lt;span&gt;&amp;gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;1024&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;&amp;amp;&amp;amp;&lt;/span&gt;&lt;span&gt; $i &lt;/span&gt;&lt;span&gt;&amp;lt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;5&lt;/span&gt;&lt;span&gt;; $i&lt;/span&gt;&lt;span&gt;++&lt;/span&gt;&lt;span&gt;) $size &lt;/span&gt;&lt;span&gt;/=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;1024&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span&gt;return&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;round&lt;/span&gt;&lt;span&gt;($size, &lt;/span&gt;&lt;span&gt;2&lt;/span&gt;&lt;span&gt;) &lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;span&gt; $delimiter &lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;span&gt; $units[$i];&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;/divcourier&gt;&lt;/p&gt;&lt;div&gt;&lt;span&gt;}&lt;/span&gt;&lt;/div&gt;', 0, 1548671385, 0, 0, 0);
INSERT INTO `study_php_uses` VALUES (4, 0, '签名，32位随机字符串', '&lt;div&gt;&lt;span&gt;/**&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;     * 随机32位字符串&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;     */&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;function&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;nonce_str&lt;/span&gt;&lt;span&gt;(){&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;$result &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;''&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;$str &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;'QWERTYUIOPASDFGHJKLZXVBNMqwertyuioplkjhgfdsamnbvcxz123456789'&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;for&lt;/span&gt;&lt;span&gt; ($i &lt;/span&gt;&lt;span&gt;=&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;0&lt;/span&gt;&lt;span&gt;; $i &lt;/span&gt;&lt;span&gt;&amp;lt;&lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt;32&lt;/span&gt;&lt;span&gt;; $i&lt;/span&gt;&lt;span&gt;++&lt;/span&gt;&lt;span&gt;) {&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;$result &lt;/span&gt;&lt;span&gt;.=&lt;/span&gt;&lt;span&gt; $str[&lt;/span&gt;&lt;span&gt;rand&lt;/span&gt;&lt;span&gt;(&lt;/span&gt;&lt;span&gt;0&lt;/span&gt;&lt;span&gt;,&amp;nbsp;&lt;/span&gt;strlen($str)-1&lt;span&gt;)];&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span&gt;}&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span&gt;&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span&gt;return&lt;/span&gt;&lt;span&gt; $result;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp;}&lt;/div&gt;', 0, 1548672551, 0, 0, 0);

-- -----------------------------
-- Table structure for study_php_wamp
-- -----------------------------
DROP TABLE IF EXISTS `study_php_wamp`;
CREATE TABLE `study_php_wamp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `zn_name` varchar(30) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php环境wamp64表';


-- -----------------------------
-- Table structure for study_plug_act
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_act`;
CREATE TABLE `study_plug_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件使用管理表';


-- -----------------------------
-- Table structure for study_plug_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_errors`;
CREATE TABLE `study_plug_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件报错总结表';


-- -----------------------------
-- Table structure for study_plug_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_extends`;
CREATE TABLE `study_plug_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件扩展知识表';


-- -----------------------------
-- Table structure for study_plug_others
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_others`;
CREATE TABLE `study_plug_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件其他管理表';


-- -----------------------------
-- Table structure for study_plug_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_questions`;
CREATE TABLE `study_plug_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件问题总结表';

-- -----------------------------
-- Records of study_plug_questions
-- -----------------------------
INSERT INTO `study_plug_questions` VALUES (1, 1, 0, '在thinkphp5.1中使用wangeditor上传图片时报错', '&lt;p&gt;原因：在配置文件app.php中的配置'app_trace' =&amp;gt;&amp;nbsp;true,(thinkphp5.1使用了追踪器，导致返回的结果出现一部分)&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;解决办法：'app_trace'&amp;nbsp;=&amp;gt;&amp;nbsp;false&lt;/span&gt;&lt;/p&gt;', 1, 1548149464, 0, 1, 0);
INSERT INTO `study_plug_questions` VALUES (2, 1, 0, 'wangEditor设置编辑区高度', '&lt;p&gt;官网提供的默认高度300px ，api文档也没有说明怎么设置。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：https://blog.csdn.net/qq_31384551/article/details/83240188&lt;/span&gt;&lt;/p&gt;&lt;p&gt;原因：富文本区域有一个class类名w-e-text-containe的属性height:300px;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;方法：&lt;/p&gt;&lt;p&gt;重新编写样式进行覆盖&lt;/p&gt;&lt;p&gt;&amp;lt;style&amp;gt;&lt;/p&gt;&lt;p&gt;.w-e-text-containe&amp;nbsp; {&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; height:600px !important;&lt;br&gt;&lt;/p&gt;&lt;p&gt;}&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;lt;/style&amp;gt;&lt;/p&gt;', 1, 1548149460, 0, 1, 0);

-- -----------------------------
-- Table structure for study_plug_specials_act
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_specials_act`;
CREATE TABLE `study_plug_specials_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件特殊功能表';


-- -----------------------------
-- Table structure for study_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_type`;
CREATE TABLE `study_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件分类管理表';

-- -----------------------------
-- Records of study_plug_type
-- -----------------------------
INSERT INTO `study_plug_type` VALUES (1, 'wangEditor', '轻量级的一款富文本编辑器', 1548149086, 0);

-- -----------------------------
-- Table structure for study_role
-- -----------------------------
DROP TABLE IF EXISTS `study_role`;
CREATE TABLE `study_role` (
  `role_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_content` varchar(255) DEFAULT '' COMMENT '角色描述',
  `fm_id` tinyint(4) NOT NULL COMMENT '一级模块id',
  `role_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `role_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色管理表';

-- -----------------------------
-- Records of study_role
-- -----------------------------
INSERT INTO `study_role` VALUES (1, 'PHP管理员', '全部的php管理模块', 6, 1, 1546518185, 0);
INSERT INTO `study_role` VALUES (2, 'JS管理员', '全部的JS管理模块', 10, 1, 1546496364, 0);
INSERT INTO `study_role` VALUES (3, '数据库管理员', '存储数据管理', 8, 1, 1546443324, 0);
INSERT INTO `study_role` VALUES (4, 'CSS3管理员', '全部的CSS3管理模块', 12, 1, 1546536882, 0);
INSERT INTO `study_role` VALUES (5, '开发管理员', '针对开发工具的管理及各种插件的使用', 7, 1, 1546536883, 0);
INSERT INTO `study_role` VALUES (6, '原理分析师', '分析各种编程语言的原理', 9, 1, 1546536883, 0);
INSERT INTO `study_role` VALUES (7, '软件管理员', '各种软件的使用原理及使用方法，寻求解决问题的快捷方法', 13, 1, 1546536884, 0);
INSERT INTO `study_role` VALUES (8, '数据管理员', '备份文件', 4, 1, 1546536885, 0);
INSERT INTO `study_role` VALUES (9, '命令管理员', '系统命令管理', 14, 1, 1546536886, 0);
INSERT INTO `study_role` VALUES (10, '插件管理员', '管理插件，插件主要使用在外面,整个项目使用，如layer', 15, 1, 1546536887, 0);
INSERT INTO `study_role` VALUES (11, '外知识管理员', '其他知识的总结管理', 16, 1, 1546536888, 0);
INSERT INTO `study_role` VALUES (12, 'H5管理员', 'Html5管理', 11, 1, 1546537514, 0);
INSERT INTO `study_role` VALUES (13, '角色管理员', '操作角色的权限', 19, 1, 1546537515, 1);
INSERT INTO `study_role` VALUES (14, '权限管理员', '针对管理员进行权限分配', 5, 1, 1546537516, 1);

-- -----------------------------
-- Table structure for study_rule
-- -----------------------------
DROP TABLE IF EXISTS `study_rule`;
CREATE TABLE `study_rule` (
  `admin_id` tinyint(4) NOT NULL COMMENT '管理员id',
  `role_id` tinyint(4) NOT NULL COMMENT '角色id',
  `fm_id` tinyint(4) NOT NULL COMMENT '一级模块id',
  `sm_id` tinyint(4) NOT NULL COMMENT '二级模块id',
  `tm_id` tinyint(4) NOT NULL COMMENT '三级模块id',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='规则管理表';


-- -----------------------------
-- Table structure for study_save_actions
-- -----------------------------
DROP TABLE IF EXISTS `study_save_actions`;
CREATE TABLE `study_save_actions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储基本操作表';


-- -----------------------------
-- Table structure for study_save_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_save_errors`;
CREATE TABLE `study_save_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储报错总结表';


-- -----------------------------
-- Table structure for study_save_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_save_extends`;
CREATE TABLE `study_save_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储扩展知识表';


-- -----------------------------
-- Table structure for study_save_functions
-- -----------------------------
DROP TABLE IF EXISTS `study_save_functions`;
CREATE TABLE `study_save_functions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '函数名称',
  `zn_name` varchar(60) NOT NULL COMMENT '函数中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储函数管理表';


-- -----------------------------
-- Table structure for study_save_operators
-- -----------------------------
DROP TABLE IF EXISTS `study_save_operators`;
CREATE TABLE `study_save_operators` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '符号名称',
  `zn_name` varchar(60) NOT NULL COMMENT '符号中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储符号详解表';


-- -----------------------------
-- Table structure for study_save_orders
-- -----------------------------
DROP TABLE IF EXISTS `study_save_orders`;
CREATE TABLE `study_save_orders` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储命令使用表';


-- -----------------------------
-- Table structure for study_save_others
-- -----------------------------
DROP TABLE IF EXISTS `study_save_others`;
CREATE TABLE `study_save_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储其他管理表';

-- -----------------------------
-- Records of study_save_others
-- -----------------------------
INSERT INTO `study_save_others` VALUES (1, 1, 0, '破解Navicat for MySQL 12激活码', '&lt;p&gt;链接地址：http://www.3322.cc/soft/39234.html&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;安装教程：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1.下载好数据包后，直接解压用鼠标双击“navicat120_mysql_cs_x64.exe”打开进入安装向导，点击“下一步”&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\81d1b132ec84d54959bc8a136e9467c3.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2.点击同意相关协议&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\1f545ae3079a507a9c346266bc09835e.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3.选择安装位置，默认路径为“C:\Program Files\PremiumSoft\Navicat 12 for MySQL”&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\7fe8f1e3bd0ad4dfc51cafcafbd95ca5.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4.在“create a desktopicon”创建桌面快捷方式前面勾上，不然等软件安装好后在你的电脑桌面找不到软件哦&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\d30a4df015fc8aed80c9252ad594ecdc.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;5.等待安装完成即可&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\40d5d9dd195de8627ccd470a71396922.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;6.当安装结束后，点击“完成”即可退出安装向导&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;破解教程：（必须断网）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1.安装完成后先不要运行软件回到刚才下载的数据包中运行破解补丁“Navicat_Keygen_Patch_v3.4_By_DFoX_URET.exe”点patch，languages选择“simple chinese”&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\24ff359cce8bacb67d5fbc1841203714.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2..弹窗窗口，选择安装目录“C:\Program Files\PremiumSoft\Navicat 12 for MySQL”里面的navicat.exe&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\19a665f36880210af23bbcf785bde60f.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3.随后就会提示破解成功了&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\0174938e562dc47dc91b7a0d38b75633.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4.回到注册机，选择我们要注册的MYSQL，选择中文版，选择site license，完了后点击“Generate”生成序列号&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\e7d4837e8e54833a561ba85391a0e36e.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;5.回到桌面运行软件，此时，点注册&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\eb1295e00a4b98d1418ed98c9c23dee5.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;6.将刚生成的keygen输入到软件“键”，点激活&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\4463f06bd60a43e7be15641fe8d16889.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;7.继续点手动激活&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\d677edbab10927f544abf4d41ce5b8aa.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;8.这一步骤比较关键，如图所以步骤操作&lt;/p&gt;（1）将请求码复制到注册机，&lt;br&gt;（2）点击注册机左下角的“Generate”生成激活码，&lt;br&gt;（3）将注册机生成的激活码复制到Navicat 12.0.23 for SQL Server上的激活码处，&lt;br&gt;（4）点击“激活”按钮。&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\009bd4a7c140ac1e0e195131b90f8119.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;9.提示已激活，点确定&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\9fc9bb775229d9bc6a9ac8fa689c973b.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;10.打开软件，点帮助，查看激活，提示已经激活了&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/study/public/uploads/save_others/20190130\b19f16a58e5749cab1f9d1452f29cef4.jpg&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1, 1548845123, 1, 1, 0);

-- -----------------------------
-- Table structure for study_save_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_save_questions`;
CREATE TABLE `study_save_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决问题方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储问题总结表';


-- -----------------------------
-- Table structure for study_save_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_save_specials`;
CREATE TABLE `study_save_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储特殊语句表';


-- -----------------------------
-- Table structure for study_save_specials_act
-- -----------------------------
DROP TABLE IF EXISTS `study_save_specials_act`;
CREATE TABLE `study_save_specials_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储特殊功能表';


-- -----------------------------
-- Table structure for study_save_type
-- -----------------------------
DROP TABLE IF EXISTS `study_save_type`;
CREATE TABLE `study_save_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储分类表';

-- -----------------------------
-- Records of study_save_type
-- -----------------------------
INSERT INTO `study_save_type` VALUES (1, 'MySql', '数据库', 1548842836, 0);

-- -----------------------------
-- Table structure for study_save_uses
-- -----------------------------
DROP TABLE IF EXISTS `study_save_uses`;
CREATE TABLE `study_save_uses` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储使用管理表';


-- -----------------------------
-- Table structure for study_second_module
-- -----------------------------
DROP TABLE IF EXISTS `study_second_module`;
CREATE TABLE `study_second_module` (
  `sm_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `fm_id` tinyint(4) NOT NULL COMMENT '一级模块id',
  `sm_sort` tinyint(4) DEFAULT '0' COMMENT '显示位置排序',
  `sm_icon` varchar(30) NOT NULL COMMENT '前置标签',
  `sm_name` varchar(30) NOT NULL COMMENT '二级模块名称',
  `sm_controller` varchar(20) DEFAULT '' COMMENT '控制器名称/文件夹名称',
  `sm_method` varchar(20) DEFAULT '' COMMENT '方法名称  默认输出页',
  `sm_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `is_parents` tinyint(1) NOT NULL DEFAULT '0' COMMENT '有无子类  默认0否1是',
  `sm_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  `tbname` varchar(30) DEFAULT '' COMMENT '表名',
  `is_powers` tinyint(1) DEFAULT '0' COMMENT '是否设为权限  默认0否1是',
  `is_opens` tinyint(1) DEFAULT '0' COMMENT '是否公开  默认0否1是',
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理二级表';

-- -----------------------------
-- Records of study_second_module
-- -----------------------------
INSERT INTO `study_second_module` VALUES (1, 4, 1, 'fas fa-table', '数据列表', 'Tools', 'index', 1, 0, 1545395467, 0, '', 0, 0);
INSERT INTO `study_second_module` VALUES (2, 4, 2, 'fas fa-history', '还原列表', 'Tools', 'restore', 1, 0, 1545395467, 0, '', 0, 0);
INSERT INTO `study_second_module` VALUES (3, 6, 1, 'fab fa-themeco', '源码管理', '', '', 1, 1, 1545395467, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (4, 7, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1545395464, 0, 'study_php_develop_type', 1, 0);
INSERT INTO `study_second_module` VALUES (5, 6, 2, 'fas fa-cog', '环境配置', '', '', 1, 1, 1545813458, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (6, 6, 3, 'icon-building', '框架管理', '', '', 1, 1, 1546313074, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (7, 8, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546345412, 0, 'study_save_type', 1, 0);
INSERT INTO `study_second_module` VALUES (8, 8, 2, 'icon-facebook', '函数管理', 'Pubfive', 'index', 1, 0, 1546400999, 0, 'study_save_functions', 1, 0);
INSERT INTO `study_second_module` VALUES (9, 8, 3, 'icon-book', '基本操作', 'Pubseven', 'index', 1, 0, 1546401000, 0, 'study_save_actions', 1, 0);
INSERT INTO `study_second_module` VALUES (10, 8, 4, 'fas fa-ad', '符号详解', 'Pubfive', 'index', 1, 0, 1546401001, 0, 'study_save_operators', 1, 0);
INSERT INTO `study_second_module` VALUES (11, 8, 5, 'icon-bell-alt', '命令使用', 'Pubseven', 'index', 1, 0, 1546401001, 0, 'study_save_orders', 1, 0);
INSERT INTO `study_second_module` VALUES (12, 8, 6, 'icon-info-sign', '特殊语句', 'Pubseven', 'index', 1, 0, 1546401002, 0, 'study_save_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (13, 8, 7, 'icon-question', '问题总结', 'Pubseven', 'index', 1, 0, 1546401003, 0, 'study_save_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (14, 8, 8, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1546401003, 0, 'study_save_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (15, 8, 9, 'fab fa-sistrix', '扩展知识', 'Pubseven', 'index', 1, 0, 1546401004, 0, 'study_save_extends', 1, 0);
INSERT INTO `study_second_module` VALUES (16, 8, 10, 'icon-info', '特殊功能', 'Pubseven', 'index', 1, 0, 1546401005, 0, 'study_save_specials_act', 1, 0);
INSERT INTO `study_second_module` VALUES (17, 8, 11, 'icon-zoom-in', '其他管理', 'Pubseven', 'index', 1, 0, 1546401006, 0, 'study_save_others', 1, 0);
INSERT INTO `study_second_module` VALUES (18, 10, 1, 'fas fa-language', '名词解释', 'Pubone', 'index', 1, 0, 1546405315, 0, 'study_js_nouns', 1, 0);
INSERT INTO `study_second_module` VALUES (19, 10, 2, 'fas fa-ad', '符号详解', 'Pubone', 'index', 1, 0, 1546405316, 0, 'study_js_operators', 1, 0);
INSERT INTO `study_second_module` VALUES (20, 10, 3, 'icon-road', '使用管理', 'Pubthree', 'index', 1, 0, 1546405317, 0, 'study_js_actions', 1, 0);
INSERT INTO `study_second_module` VALUES (21, 10, 4, 'icon-question', '问题总结', 'Pubthree', 'index', 1, 0, 1546405318, 0, 'study_js_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (22, 10, 5, 'icon-info', '特殊功能', 'Pubthree', 'index', 1, 0, 1546405318, 0, 'study_js_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (23, 10, 6, 'fab fa-sistrix', '扩展知识', 'Pubthree', 'index', 1, 0, 1546405319, 0, 'study_js_extends', 1, 0);
INSERT INTO `study_second_module` VALUES (24, 10, 7, 'icon-remove', '报错总结', 'Pubtwo', 'index', 1, 0, 1546405320, 0, 'study_js_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (25, 10, 8, 'fas fa-plug', '插件管理', '', '', 1, 1, 1546401550, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (26, 10, 9, 'icon-building', '框架管理', '', '', 1, 1, 1546401834, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (27, 11, 1, 'icon-code', '标签说明', 'Pubone', 'index', 1, 0, 1546405299, 0, 'study_htmlf_tags', 1, 0);
INSERT INTO `study_second_module` VALUES (28, 11, 2, 'fab fa-amazon', '属性说明', 'Pubone', 'index', 1, 0, 1546405302, 0, 'study_htmlf_attrs', 1, 0);
INSERT INTO `study_second_module` VALUES (29, 11, 3, 'icon-question', '问题总结', 'Pubtwo', 'index', 1, 0, 1546405300, 0, 'study_htmlf_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (30, 11, 4, 'icon-info', '特殊功能', 'Pubtwo', 'index', 1, 0, 1546405301, 0, 'study_htmlf_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (31, 11, 5, 'icon-remove', '报错总结', 'Pubtwo', 'index', 1, 0, 1546405301, 0, 'study_htmlf_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (32, 11, 6, 'fas fa-plug', '插件管理', '', '', 1, 1, 1546402758, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (33, 11, 7, 'icon-zoom-in', '其他管理', 'Pubtwo', 'index', 1, 0, 1546405296, 0, 'study_htmlf_others', 1, 0);
INSERT INTO `study_second_module` VALUES (34, 16, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546403608, 0, 'study_others_type', 1, 0);
INSERT INTO `study_second_module` VALUES (35, 16, 2, 'icon-question', '问题总结', 'Pubsix', 'index', 1, 0, 1546403608, 0, 'study_others_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (36, 15, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546405275, 0, 'study_plug_type', 1, 0);
INSERT INTO `study_second_module` VALUES (37, 15, 2, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 0, 1546405276, 0, 'study_plug_act', 1, 0);
INSERT INTO `study_second_module` VALUES (38, 15, 3, 'icon-question', '问题总结', 'Pubseven', 'index', 1, 0, 1546405276, 0, 'study_plug_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (39, 15, 4, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1546405279, 0, 'study_plug_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (40, 15, 5, 'fab fa-sistrix', '扩展知识', 'Pubseven', 'index', 1, 0, 1546405285, 0, 'study_plug_extends', 1, 0);
INSERT INTO `study_second_module` VALUES (41, 15, 6, 'icon-info', '特殊功能', 'Pubseven', 'index', 1, 0, 1546405288, 0, 'study_plug_specials_act', 1, 0);
INSERT INTO `study_second_module` VALUES (42, 15, 7, 'icon-zoom-in', '其他管理', 'Pubseven', 'index', 1, 0, 1546405286, 0, 'study_plug_others', 1, 0);
INSERT INTO `study_second_module` VALUES (43, 14, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546405274, 0, 'study_system_type', 1, 0);
INSERT INTO `study_second_module` VALUES (44, 14, 2, 'fas fa-language', '名词解释', 'Pubfive', 'index', 1, 0, 1546405273, 0, 'study_system_nouns', 1, 0);
INSERT INTO `study_second_module` VALUES (45, 14, 3, 'fas fa-ad', '符号详解', 'Pubfive', 'index', 1, 0, 1546405272, 0, 'study_system_operators', 1, 0);
INSERT INTO `study_second_module` VALUES (46, 14, 4, 'icon-bell-alt', '命令使用', 'Pubseven', 'index', 1, 0, 1546405271, 0, 'study_system_orders', 1, 0);
INSERT INTO `study_second_module` VALUES (47, 14, 5, 'icon-info-sign', '特殊语句', 'Pubseven', 'index', 1, 0, 1546405270, 0, 'study_system_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (48, 14, 6, 'icon-question', '问题总结', 'Pubseven', 'index', 1, 0, 1546405269, 0, 'study_system_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (49, 14, 7, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1546405268, 0, 'study_system_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (50, 14, 8, 'fab fa-sistrix', '扩展知识', 'Pubseven', 'index', 1, 0, 1546405268, 0, 'study_system_extends', 1, 0);
INSERT INTO `study_second_module` VALUES (51, 14, 9, 'icon-info', '特殊功能', 'Pubseven', 'index', 1, 0, 1546405259, 0, 'study_system_specials_act', 1, 0);
INSERT INTO `study_second_module` VALUES (52, 14, 10, 'icon-zoom-in', '其他管理', 'Pubseven', 'index', 1, 0, 1546405260, 0, 'study_system_others', 1, 0);
INSERT INTO `study_second_module` VALUES (53, 13, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546405940, 0, 'study_software_type', 1, 0);
INSERT INTO `study_second_module` VALUES (54, 13, 2, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 0, 1546405941, 0, 'study_software_act', 1, 0);
INSERT INTO `study_second_module` VALUES (55, 13, 3, 'fab fa-sistrix', '扩展知识', 'Pubsix', 'index', 1, 0, 1546405942, 0, 'study_software_extends', 1, 0);
INSERT INTO `study_second_module` VALUES (56, 13, 4, 'icon-info', '特殊功能', 'Pubsix', 'index', 1, 0, 1546405942, 0, 'study_software_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (57, 13, 5, 'icon-zoom-in', '其他管理', 'Pubtwo', 'index', 1, 0, 1546405943, 0, 'study_software_others', 1, 0);
INSERT INTO `study_second_module` VALUES (58, 12, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 0, 1546405939, 0, 'study_csst_type', 1, 0);
INSERT INTO `study_second_module` VALUES (59, 12, 2, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 0, 1546405938, 0, 'study_csst_act', 1, 0);
INSERT INTO `study_second_module` VALUES (60, 12, 3, 'icon-question', '问题总结', 'Pubsix', 'index', 1, 0, 1546405937, 0, 'study_csst_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (61, 12, 4, 'icon-info', '特殊功能', 'Pubsix', 'index', 1, 0, 1546405937, 0, 'study_csst_specials', 1, 0);
INSERT INTO `study_second_module` VALUES (62, 12, 5, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1546405935, 0, 'study_csst_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (63, 12, 6, 'fas fa-plug', '插件管理', '', '', 1, 1, 1546405924, 0, '', 1, 0);
INSERT INTO `study_second_module` VALUES (64, 12, 7, 'icon-zoom-in', '其他管理', 'Pubtwo', 'index', 1, 0, 1546406245, 0, 'study_csst_others', 1, 0);
INSERT INTO `study_second_module` VALUES (65, 7, 2, 'fas fa-plug', '插件使用', 'Pubeight', 'index', 1, 0, 1546679692, 0, 'study_php_develop_plug', 1, 0);
INSERT INTO `study_second_module` VALUES (66, 7, 3, 'icon-question', '问题总结', 'Pubsix', 'index', 1, 0, 1546679693, 0, 'study_php_develop_questions', 1, 0);
INSERT INTO `study_second_module` VALUES (67, 13, 6, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1547547621, 0, 'study_software_errors', 1, 0);
INSERT INTO `study_second_module` VALUES (68, 4, 3, 'icon-table', '建立表格', 'Tools', 'index', 1, 0, 1547468135, 1, '', 0, 0);
INSERT INTO `study_second_module` VALUES (69, 7, 4, 'icon-retweet', '原理解析', 'Pubsix', 'index', 1, 0, 1547626383, 0, 'study_php_develop_theory', 0, 0);
INSERT INTO `study_second_module` VALUES (70, 7, 5, 'icon-align-left', '菜单操作', 'Pubsix', 'index', 1, 0, 1547626384, 0, 'study_php_develop_menus', 0, 0);
INSERT INTO `study_second_module` VALUES (71, 7, 6, 'fas fa-cog', '配置问题', 'Pubeight', 'index', 1, 0, 1547626384, 0, 'study_php_develop_configs', 0, 0);
INSERT INTO `study_second_module` VALUES (72, 7, 7, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 0, 1547626385, 0, 'study_php_develop_errors', 0, 0);
INSERT INTO `study_second_module` VALUES (73, 7, 8, 'icon-zoom-in', '其他内容', 'Pubsix', 'index', 1, 0, 1547626385, 0, 'study_php_develop_others', 0, 0);
INSERT INTO `study_second_module` VALUES (74, 8, 12, 'icon-road', '使用管理', 'Pubsix', 'index', 0, 0, 1547626641, 0, 'study_save_uses', 0, 0);
INSERT INTO `study_second_module` VALUES (75, 16, 3, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 0, 1547627652, 0, 'study_others_uses', 0, 0);
INSERT INTO `study_second_module` VALUES (76, 10, 10, 'icon-zoom-in', '其他管理', 'Pubtwo', 'index', 1, 0, 1547897194, 0, 'study_js_others', 0, 0);
INSERT INTO `study_second_module` VALUES (77, 23, 1, 'icon-eur', '课本分类', 'Pubten', 'index', 1, 0, 1549078247, 0, 'study_book_type', 0, 0);
INSERT INTO `study_second_module` VALUES (78, 23, 2, 'icon-book', '知识列表', 'Pubnine', 'index', 1, 0, 1549078248, 0, 'study_book_knows', 0, 0);
INSERT INTO `study_second_module` VALUES (79, 23, 3, 'icon-question', '课本问题', 'Pubnine', 'index', 1, 0, 1549078923, 0, 'study_book_questions', 0, 0);

-- -----------------------------
-- Table structure for study_software_act
-- -----------------------------
DROP TABLE IF EXISTS `study_software_act`;
CREATE TABLE `study_software_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件使用管理表';


-- -----------------------------
-- Table structure for study_software_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_software_errors`;
CREATE TABLE `study_software_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件报错总结表';


-- -----------------------------
-- Table structure for study_software_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_software_extends`;
CREATE TABLE `study_software_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件扩展知识表';


-- -----------------------------
-- Table structure for study_software_others
-- -----------------------------
DROP TABLE IF EXISTS `study_software_others`;
CREATE TABLE `study_software_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件其他管理表';


-- -----------------------------
-- Table structure for study_software_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_software_specials`;
CREATE TABLE `study_software_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `st_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件特殊功能表';


-- -----------------------------
-- Table structure for study_software_type
-- -----------------------------
DROP TABLE IF EXISTS `study_software_type`;
CREATE TABLE `study_software_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件分类管理表';

-- -----------------------------
-- Records of study_software_type
-- -----------------------------
INSERT INTO `study_software_type` VALUES (1, 'Navicat 12 for MySQL', '嗯嗯嗯嫩嗯嗯嗯嫩嫩恩恩嫩嗯嗯嗯嗯呢讷讷呢睡觉睡觉睡觉睡觉睡觉睡觉睡觉睡觉睡觉', 1547188375, 0);

-- -----------------------------
-- Table structure for study_system_errors
-- -----------------------------
DROP TABLE IF EXISTS `study_system_errors`;
CREATE TABLE `study_system_errors` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '错误标题',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令报错总结表';


-- -----------------------------
-- Table structure for study_system_extends
-- -----------------------------
DROP TABLE IF EXISTS `study_system_extends`;
CREATE TABLE `study_system_extends` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '扩展知识名称',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令扩展知识表';


-- -----------------------------
-- Table structure for study_system_nouns
-- -----------------------------
DROP TABLE IF EXISTS `study_system_nouns`;
CREATE TABLE `study_system_nouns` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '名词名称',
  `zn_name` varchar(100) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令名词解释表';


-- -----------------------------
-- Table structure for study_system_operators
-- -----------------------------
DROP TABLE IF EXISTS `study_system_operators`;
CREATE TABLE `study_system_operators` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '符号名称',
  `zn_name` varchar(100) NOT NULL COMMENT '符号中文名称',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令符号详解表';


-- -----------------------------
-- Table structure for study_system_orders
-- -----------------------------
DROP TABLE IF EXISTS `study_system_orders`;
CREATE TABLE `study_system_orders` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令使用表';


-- -----------------------------
-- Table structure for study_system_others
-- -----------------------------
DROP TABLE IF EXISTS `study_system_others`;
CREATE TABLE `study_system_others` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令其他管理表';


-- -----------------------------
-- Table structure for study_system_questions
-- -----------------------------
DROP TABLE IF EXISTS `study_system_questions`;
CREATE TABLE `study_system_questions` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '问题名称',
  `content` text NOT NULL COMMENT '解决方法',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令问题总结表';


-- -----------------------------
-- Table structure for study_system_specials
-- -----------------------------
DROP TABLE IF EXISTS `study_system_specials`;
CREATE TABLE `study_system_specials` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令特殊语句表';


-- -----------------------------
-- Table structure for study_system_specials_act
-- -----------------------------
DROP TABLE IF EXISTS `study_system_specials_act`;
CREATE TABLE `study_system_specials_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `syt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '详述',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令特殊功能表';


-- -----------------------------
-- Table structure for study_system_type
-- -----------------------------
DROP TABLE IF EXISTS `study_system_type`;
CREATE TABLE `study_system_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='命令分类管理表';


-- -----------------------------
-- Table structure for study_theory
-- -----------------------------
DROP TABLE IF EXISTS `study_theory`;
CREATE TABLE `study_theory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` text NOT NULL COMMENT '简介',
  `content` longtext NOT NULL COMMENT '内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码原理分析表';

-- -----------------------------
-- Records of study_theory
-- -----------------------------
INSERT INTO `study_theory` VALUES (4, 0, 'javascript', 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，用来给HTML网页增加动态功能。', '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;JavaScript一种&lt;span style=&quot;font-weight: bold;&quot;&gt;直译式脚本语言&lt;/span&gt;，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，&lt;span style=&quot;font-weight: bold;&quot;&gt;为浏览器的一部分&lt;/span&gt;，广泛用于客户端的脚本语言，最早是在&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/HTML&quot;&gt;HTML&lt;/a&gt;（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;为了取得技术优势，&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%BE%AE%E8%BD%AF/124767&quot;&gt;微软&lt;/a&gt;推出了&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/JScript&quot;&gt;JScript&lt;/a&gt;，CEnvi推出ScriptEase，与JavaScript同样可在浏览器上运行。为了统一规格，因为&lt;span style=&quot;font-weight: bold;&quot;&gt;JavaScript兼容于ECMA标准，因此也称为&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/ECMAScript&quot;&gt;ECMAScript&lt;/a&gt;&lt;/span&gt;。&amp;nbsp;&lt;/p&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;组成部分：&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/ECMAScript&quot;&gt;ECMAScript&lt;/a&gt;，描述了该语言的语法和基本&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%AF%B9%E8%B1%A1/2331271&quot;&gt;对象&lt;/a&gt;。&lt;/p&gt;&lt;p&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%96%87%E6%A1%A3%E5%AF%B9%E8%B1%A1%E6%A8%A1%E5%9E%8B&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;文档对象模型&lt;/a&gt;（DOM），描述处理网页内容的方法和接口。&lt;/p&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;浏览器对象模型（&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/BOM/1801&quot;&gt;BOM&lt;/a&gt;），描述与浏览器进行交互的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%96%B9%E6%B3%95/3009367&quot;&gt;方法&lt;/a&gt;和&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%8E%A5%E5%8F%A3&quot;&gt;接口&lt;/a&gt;。&lt;/div&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;img src=&quot;/study/public/uploads/Theroy/20190128\472d0d4f3562e8e7cbc5f8aebdab52d5.jpg&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;基本特点：&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1.是一种解释性脚本语言（代码不进行&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E9%A2%84%E7%BC%96%E8%AF%91&quot;&gt;预编译&lt;/a&gt;）。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2.主要用来向&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/HTML&quot;&gt;HTML&lt;/a&gt;（&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%A0%87%E5%87%86%E9%80%9A%E7%94%A8%E6%A0%87%E8%AE%B0%E8%AF%AD%E8%A8%80&quot;&gt;标准通用标记语言&lt;/a&gt;下的一个应用）页面添加交互行为。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 3.可以直接嵌入HTML页面，但写成单独的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/js/10687961&quot;&gt;js&lt;/a&gt;文件有利于结构和行为的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%88%86%E7%A6%BB&quot;&gt;分离&lt;/a&gt;。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4.跨平台特性，在绝大多数浏览器的支持下，可以在多种平台下运行（如&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/Windows&quot;&gt;Windows&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/Linux&quot;&gt;Linux&lt;/a&gt;、Mac、Android、iOS等）。&lt;/p&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Javascript提供了四种基本的数据类型和两种特殊数据类型用来处理数据和文字。而变量提供存放信息的地方，表达式则可以完成较复杂的信息处理。&lt;/div&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;日常用途：&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1.嵌入&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%8A%A8%E6%80%81%E6%96%87%E6%9C%AC&quot;&gt;动态文本&lt;/a&gt;于HTML页面。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2.对浏览器事件做出响应。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 3.读写&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/HTML%E5%85%83%E7%B4%A0&quot;&gt;HTML元素&lt;/a&gt;。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 4.在数据被提交到服务器之前验证数据。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 5.检测访客的浏览器信息。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 6.控制&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/cookies/187064&quot;&gt;cookies&lt;/a&gt;，包括创建和修改等。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 7.基于Node.js技术进行服务器端编程。&lt;/p&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;特性：&lt;/span&gt;&lt;/h4&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;JavaScript脚本语言具有以下特点:&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;(1)&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E8%84%9A%E6%9C%AC%E8%AF%AD%E8%A8%80&quot;&gt;脚本语言&lt;/a&gt;。JavaScript是一种解释型的脚本语言,C、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/C%2B%2B&quot;&gt;C++&lt;/a&gt;等语言先&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BC%96%E8%AF%91&quot;&gt;编译&lt;/a&gt;后执行,而JavaScript是在程序的运行过程中逐行进行解释。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;(2)基于对象。JavaScript是一种基于对象的脚本语言,它不仅可以创建对象,也能使用现有的对象。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;(3)简单。JavaScript语言中采用的是弱类型的变量类型,对使用的数据类型未做出严格的要求,是基于Java基本语句和控制的脚本语言,其设计简单紧凑。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;(4)动态性。JavaScript是一种采用事件驱动的脚本语言,它不需要经过Web服务器就可以对用户的输入做出响应。在访问一个网页时,鼠标在网页中进行鼠标点击或上下移、窗口移动等操作JavaScript都可直接对这些事件给出相应的响应。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;(5)跨平台性。&lt;span style=&quot;font-weight: bold;&quot;&gt;JavaScript脚本语言不依赖于操作系统,仅需要浏览器的支持&lt;/span&gt;。因此&lt;span style=&quot;font-weight: bold;&quot;&gt;一个JavaScript脚本在编写后可以带到任意机器上使用,前提是机器上的浏览器支 持JavaScript脚本语言,目前JavaScript已被大多数的浏览器所支持&lt;/span&gt;。&lt;a name=&quot;ref_3&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;不同于服务器端脚本语言，例如&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/PHP/9337&quot;&gt;PHP&lt;/a&gt;与&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/ASP/128906&quot;&gt;ASP&lt;/a&gt;，JavaScript主要被作为客户端脚本语言在用户的浏览器上运行，不需要服务器的支持。所以在早期程序员比较青睐于JavaScript以减少对服务器的负担，而与此同时也带来另一个问题：安全性。&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;而随着服务器的强壮，虽然程序员更喜欢运行于服务端的脚本以保证安全，但JavaScript仍然以其跨平台、容易上手等优势大行其道。同时，有些特殊功能（如&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/AJAX/8425&quot;&gt;AJAX&lt;/a&gt;）必须依赖Javascript在客户端进行支持。随着引擎如V8和框架如&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/Node.js&quot;&gt;Node.js&lt;/a&gt;的发展，及其事件驱动及&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%BC%82%E6%AD%A5IO&quot;&gt;异步IO&lt;/a&gt;等特性，JavaScript逐渐被用来编写服务器端程序。&lt;/div&gt;&lt;h4&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;编程：&lt;/span&gt;&lt;/h4&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;JavaScript是一种脚本语言，其源代码在发往客户端运行之前不需经过&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BC%96%E8%AF%91&quot;&gt;编译&lt;/a&gt;，而是将文本格式的字符代码发送给浏览器由浏览器解释运行。直译语言的弱点是安全性较差，而且在JavaScript中，如果一条运行不了，那么下面的语言也无法运行。而其解决办法就是于使用try{}catch(){}︰&lt;/div&gt;&lt;div&gt;&lt;div id=&quot;highlighter_372292&quot;&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;div&gt;1&lt;/div&gt;&lt;div&gt;2&lt;/div&gt;&lt;div&gt;3&lt;/div&gt;&lt;div&gt;4&lt;/div&gt;&lt;div&gt;5&lt;/div&gt;&lt;div&gt;6&lt;/div&gt;&lt;div&gt;7&lt;/div&gt;&lt;div&gt;8&lt;/div&gt;&lt;div&gt;9&lt;/div&gt;&lt;div&gt;10&lt;/div&gt;&lt;div&gt;11&lt;/div&gt;&lt;div&gt;12&lt;/div&gt;&lt;div&gt;13&lt;/div&gt;&lt;/td&gt;&lt;td&gt;&lt;div&gt;&lt;div&gt;&lt;code&gt;console.log(&lt;/code&gt;&lt;code&gt;&quot;a&quot;&lt;/code&gt;&lt;code&gt;);&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　console.log(&lt;/code&gt;&lt;code&gt;&quot;b&quot;&lt;/code&gt;&lt;code&gt;);&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　console.logg(&lt;/code&gt;&lt;code&gt;&quot;c&quot;&lt;/code&gt;&lt;code&gt;);&lt;/code&gt;&lt;code&gt;//这是错误的，并且到这里会停下来&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　console.log(&lt;/code&gt;&lt;code&gt;&quot;d&quot;&lt;/code&gt;&lt;code&gt;);&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　console.log(&lt;/code&gt;&lt;code&gt;&quot;e&quot;&lt;/code&gt;&lt;code&gt;);&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;/*解决办法*/&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;try&lt;/code&gt;&lt;code&gt;{console.log(&lt;/code&gt;&lt;code&gt;&quot;a&quot;&lt;/code&gt;&lt;code&gt;);}&lt;/code&gt;&lt;code&gt;catch&lt;/code&gt;&lt;code&gt;(e){}&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;try&lt;/code&gt;&lt;code&gt;{console.log(&lt;/code&gt;&lt;code&gt;&quot;b&quot;&lt;/code&gt;&lt;code&gt;);}&lt;/code&gt;&lt;code&gt;catch&lt;/code&gt;&lt;code&gt;(e){}&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;try&lt;/code&gt;&lt;code&gt;{console.logg(&lt;/code&gt;&lt;code&gt;&quot;c&quot;&lt;/code&gt;&lt;code&gt;);}&lt;/code&gt;&lt;code&gt;catch&lt;/code&gt;&lt;code&gt;(e){}&lt;/code&gt;&lt;code&gt;//这是错误的，但是到这里不会停下来，而是跳过&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;try&lt;/code&gt;&lt;code&gt;{console.log(&lt;/code&gt;&lt;code&gt;&quot;d&quot;&lt;/code&gt;&lt;code&gt;);}&lt;/code&gt;&lt;code&gt;catch&lt;/code&gt;&lt;code&gt;(e){}&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;code&gt;try&lt;/code&gt;&lt;code&gt;{console.log(&lt;/code&gt;&lt;code&gt;&quot;e&quot;&lt;/code&gt;&lt;code&gt;);}&lt;/code&gt;&lt;code&gt;catch&lt;/code&gt;&lt;code&gt;(e){}&lt;/code&gt;&lt;code&gt;//这是正确的&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;　&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;div label-module=&quot;para&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;Javascript被归类为直译语言，因为主流的引擎都是每次运行时加载代码并解译。&lt;/span&gt;V8是将所有代码解译后再开始运行，其他引擎则是逐行解译（&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/SpiderMonkey&quot;&gt;SpiderMonkey&lt;/a&gt;会将解译过的指令暂存，以提高性能，称为实时编译），但由于V8的核心部份多数用Javascript撰写（而SpiderMonkey是用&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/C%2B%2B&quot;&gt;C++&lt;/a&gt;），因此在不同的测试上，两者性能互有优劣。与其相对应的是编译语言，例如&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/C%E8%AF%AD%E8%A8%80&quot;&gt;C语言&lt;/a&gt;，以编译语言编写的程序在运行之前，必须经过编译，将代码编译为机器码，再加以运行&lt;/span&gt;。&lt;/div&gt;', 0, 1548668705, 0, 0);

-- -----------------------------
-- Table structure for study_three_module
-- -----------------------------
DROP TABLE IF EXISTS `study_three_module`;
CREATE TABLE `study_three_module` (
  `tm_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sm_id` tinyint(4) NOT NULL COMMENT '二级模块id',
  `tm_sort` tinyint(4) DEFAULT '0' COMMENT '显示位置排序',
  `tm_icon` varchar(30) NOT NULL COMMENT '前置标签',
  `tm_name` varchar(30) NOT NULL COMMENT '三级模块名称',
  `tm_controller` varchar(20) NOT NULL COMMENT '控制器名称/文件夹名称',
  `tm_method` varchar(20) NOT NULL COMMENT '方法名称  默认输出页',
  `tm_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `tm_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  `tbname` varchar(30) DEFAULT '' COMMENT '表名',
  `is_powert` tinyint(1) DEFAULT '0' COMMENT '是否设为权限  默认0否1是',
  `is_opent` tinyint(1) DEFAULT '0' COMMENT '是否公开  默认0否1是',
  PRIMARY KEY (`tm_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理三级表';

-- -----------------------------
-- Records of study_three_module
-- -----------------------------
INSERT INTO `study_three_module` VALUES (3, 3, 1, 'icon-facebook', '函数管理', 'Pubone', 'index', 1, 1546313609, 0, 'study_php_functions', 1, 0);
INSERT INTO `study_three_module` VALUES (4, 3, 2, 'icon-remove', '报错总结', 'Pubtwo', 'index', 1, 1546332771, 0, 'study_php_errors', 1, 0);
INSERT INTO `study_three_module` VALUES (5, 3, 3, 'fas fa-ad', '符号详解', 'Pubone', 'index', 1, 1546337574, 0, 'study_php_operators', 1, 0);
INSERT INTO `study_three_module` VALUES (6, 3, 4, 'icon-question', '问题总结', 'Pubthree', 'index', 1, 1546337663, 0, 'study_php_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (7, 3, 5, 'fas fa-neuter', '扩展知识', 'Pubthree', 'index', 1, 1546337780, 0, 'study_php_extends', 1, 0);
INSERT INTO `study_three_module` VALUES (8, 3, 6, 'icon-zoom-in', '其他内容', 'Pubthree', 'index', 1, 1546337968, 0, 'study_php_others', 1, 0);
INSERT INTO `study_three_module` VALUES (9, 5, 1, 'icon-foursquare', 'phpstudy', 'Pubfour', 'index', 1, 1546339475, 0, 'study_php_phpstudy', 1, 0);
INSERT INTO `study_three_module` VALUES (10, 5, 2, 'icon-won', 'wamp64', 'Pubfour', 'index', 1, 1546339476, 0, 'study_php_wamp', 1, 0);
INSERT INTO `study_three_module` VALUES (11, 5, 3, 'icon-linux', 'lamp', 'Pubfour', 'index', 1, 1546339477, 0, 'study_php_lamp', 1, 0);
INSERT INTO `study_three_module` VALUES (12, 6, 1, 'icon-eur', '框架分类', 'Pubzero', 'index', 1, 1546341420, 0, 'study_php_frame_type', 1, 0);
INSERT INTO `study_three_module` VALUES (13, 6, 2, 'icon-facebook', '函数管理', 'Pubfive', 'index', 1, 1546341422, 0, 'study_php_frame_functions', 1, 0);
INSERT INTO `study_three_module` VALUES (14, 6, 3, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 1546341423, 0, 'study_php_frame_errors', 1, 0);
INSERT INTO `study_three_module` VALUES (15, 6, 4, 'icon-question', '问题总结', 'Pubseven', 'index', 1, 1546341423, 0, 'study_php_frame_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (16, 6, 5, 'fab fa-sistrix', '扩展知识', 'Pubseven', 'index', 1, 1546341424, 0, 'study_php_frame_extends', 1, 0);
INSERT INTO `study_three_module` VALUES (17, 6, 6, 'icon-zoom-in', '其他内容', 'Pubseven', 'index', 1, 1546341425, 0, 'study_php_frame_others', 1, 0);
INSERT INTO `study_three_module` VALUES (18, 4, 3, 'icon-question', '问题总结', 'Develop', 'index', 1, 1546341846, 0, 'study_php_develop_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (19, 25, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 1546405312, 0, 'study_js_plug_type', 1, 0);
INSERT INTO `study_three_module` VALUES (20, 25, 2, 'icon-road', '使用管理', 'Pubseven', 'index', 1, 1546405313, 0, 'study_js_plug_act', 1, 0);
INSERT INTO `study_three_module` VALUES (21, 25, 3, 'icon-zoom-in', '其他管理', 'Pubseven', 'index', 1, 1546405313, 0, 'study_js_plug_others', 1, 0);
INSERT INTO `study_three_module` VALUES (22, 26, 1, 'icon-eur', '框架分类', 'Pubzero', 'index', 1, 1546405305, 0, 'study_js_frame_type', 1, 0);
INSERT INTO `study_three_module` VALUES (23, 26, 2, 'icon-envelope', '事件管理', 'Pubfive', 'index', 1, 1546405307, 0, 'study_js_frame_event', 1, 0);
INSERT INTO `study_three_module` VALUES (24, 26, 3, 'icon-question', '问题总结', 'Pubseven', 'index', 1, 1546405307, 0, 'study_js_frame_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (25, 26, 4, 'icon-info', '特殊功能', 'Pubseven', 'index', 1, 1546405308, 0, 'study_js_frame_specials', 1, 0);
INSERT INTO `study_three_module` VALUES (26, 26, 5, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 1546405309, 0, 'study_js_frame_errors', 1, 0);
INSERT INTO `study_three_module` VALUES (27, 26, 6, 'icon-zoom-in', '其他管理', 'Pubseven', 'index', 1, 1546405310, 0, 'study_js_frame_others', 1, 0);
INSERT INTO `study_three_module` VALUES (28, 32, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 1546405292, 0, 'study_htmlf_plug_type', 1, 0);
INSERT INTO `study_three_module` VALUES (29, 32, 2, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 1546405293, 0, 'study_htmlf_plug_act', 1, 0);
INSERT INTO `study_three_module` VALUES (30, 32, 3, 'icon-question', '问题总结', 'Pubsix', 'index', 1, 1546405294, 0, 'study_htmlf_plug_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (31, 32, 4, 'icon-info', '特殊功能', 'Pubsix', 'index', 1, 1546405294, 0, 'study_htmlf_plug_specials', 1, 0);
INSERT INTO `study_three_module` VALUES (32, 32, 5, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 1546405295, 0, 'study_htmlf_plug_errors', 1, 0);
INSERT INTO `study_three_module` VALUES (33, 32, 6, 'icon-zoom-in', '其他管理', 'Pubsix', 'index', 1, 1546405296, 0, 'study_htmlf_plug_others', 1, 0);
INSERT INTO `study_three_module` VALUES (34, 63, 1, 'icon-eur', '分类管理', 'Pubzero', 'index', 1, 1546406240, 0, 'study_csst_plug_type', 1, 0);
INSERT INTO `study_three_module` VALUES (35, 63, 2, 'icon-road', '使用管理', 'Pubsix', 'index', 1, 1546406241, 0, 'study_csst_plug_act', 1, 0);
INSERT INTO `study_three_module` VALUES (36, 63, 3, 'icon-question', '问题总结', 'Pubsix', 'index', 1, 1546406242, 0, 'study_csst_plug_questions', 1, 0);
INSERT INTO `study_three_module` VALUES (37, 63, 4, 'icon-info', '特殊功能', 'Pubsix', 'index', 1, 1546406242, 0, 'study_csst_plug_specials', 1, 0);
INSERT INTO `study_three_module` VALUES (38, 63, 5, 'icon-remove', '报错总结', 'Pubsix', 'index', 1, 1546406243, 0, 'study_csst_plug_errors', 1, 0);
INSERT INTO `study_three_module` VALUES (39, 63, 6, 'icon-zoom-in', '其他管理', 'Pubsix', 'index', 1, 1546406246, 0, 'study_csst_plug_others', 1, 0);
INSERT INTO `study_three_module` VALUES (40, 3, 7, 'icon-info', '功能总结', 'Pubtwo', 'index', 1, 1547625449, 0, 'study_php_uses', 0, 0);
INSERT INTO `study_three_module` VALUES (41, 6, 7, 'icon-info', '功能总结', 'Pubsix', 'index', 1, 1547625447, 0, 'study_php_frame_uses', 0, 0);
INSERT INTO `study_three_module` VALUES (42, 26, 7, 'icon-facebook', '函数管理', 'Pubfive', 'index', 1, 1547628924, 0, 'study_js_frame_functions', 0, 0);
INSERT INTO `study_three_module` VALUES (43, 32, 7, 'icon-retweet', '原理解析', 'Pubsix', 'index', 1, 1547636366, 0, 'study_htmlf_plug_theory', 0, 0);
