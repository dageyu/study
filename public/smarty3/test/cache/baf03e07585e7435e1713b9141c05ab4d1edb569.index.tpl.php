<?php
/* Smarty version 3.1.33, created on 2019-02-28 19:43:36
  from 'D:\wamp64\www\study\public\smarty3\test\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c77c96804c145_79500049',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7666528d6b53ebc7850a1352ef85a0831e714478' => 
    array (
      0 => 'D:\\wamp64\\www\\study\\public\\smarty3\\test\\templates\\index.tpl',
      1 => 1551350120,
      2 => 'file',
    ),
  ),
  'cache_lifetime' => 3600,
),true)) {
function content_5c77c96804c145_79500049 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
</head>
<body>

<h3>Smarty使用方法</h3>
&lt;p&gt;设置：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $this-&amp;gt;left_delimiter&amp;nbsp; &amp;nbsp; &amp;nbsp;= &quot;&amp;lt;{&quot;；&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //模板输出左标签    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; $this-&amp;gt;right_delimiter&amp;nbsp; &amp;nbsp;= &quot;}&amp;gt;&quot;；&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; //模板输出右标签    &lt;br&gt;&lt;/p&gt;&lt;p&gt;1.注释：模板注释使用*包围，如：{* this is a comments of Smarty *}&lt;/p&gt;&lt;p&gt;    2.在模板里无论是内建函数还是自定义函数都有相同的语法：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 内建函数将在smarty内部工作，例如&amp;lt;{if}&amp;gt;,&amp;lt;{section}&amp;gt;,&amp;lt;{strlen}&amp;gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 自定义函数通过插件机制起作用，它们是附加函数，例如&amp;lt;{html_options}&amp;gt;,&amp;lt;{html_select_date}&amp;gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：&amp;lt;{$content|strlen|format_bytes}&amp;gt;&amp;nbsp; &amp;nbsp; //12.5KB    &lt;br&gt;&lt;/p&gt;&lt;p&gt;3.属性：静态数值不需要加引号，但是字符串建议使用引号，如果用变量作属性或引用boolean值，它们也不能加引号，与自定义函数的参数写法相同。&lt;/p&gt;&lt;p&gt;4.绝对引用符是单引号，相对引用符是双引号：双引号可识别变量，与php用法相同。&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;5&lt;/span&gt;.数学运算可以直接应用到变量。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;6.变量：可以直接被输出或者作为函数属性和修饰符的参数，或者用于内部的条件表达式等。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 例如：&amp;lt;{$Name}&amp;gt;,&amp;lt;{$Contacts[row].Phone}&amp;gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;7&lt;/span&gt;.从配置文件中读取变量：配置文件中的变量需要通过两个#或者是smarty的保留变量$smarty.config来调用。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 例如：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;8&lt;/span&gt;.变量调节器：（以变量作为参数使用函数，与thinkphp相同）&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 变量调节器用于变量，自定义函数和字符串，使用|符号和调节器名称。变量调节器由赋予的参数值决定其行为，参数由：符号分开。    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 只想要调节器用一个值调节整个数组，必须在调节器名字前加上@符号。例如：&amp;lt;{$articleTitle|@count}&amp;gt;    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;9.组合修改器：以|作为它们之间的分隔符，函数从左到右依次调用，与thinkphp相同。&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;10&lt;/span&gt;.foreach的应用：（循环）&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;    &lt;span style=&quot;background-color: rgb(194, 79, 74);&quot;&gt;11&lt;/span&gt;.include的应用：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：&lt;/p&gt;&lt;p&gt;12.include_php的应用：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;13.section的应用：（循环）&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;14.config_load的应用：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 验证：&lt;/p&gt;&lt;p&gt;15.smarty自带的自定义函数的应用：(在模板中使用)&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1)    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 语法：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 属性说明：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 验证：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;16.方法：（在实例化的对象中进行调用）&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1)    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 语法：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 参数：    &lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 验证：&lt;/p&gt;&lt;p&gt;注意：(1)生成静态页必须清除缓存，否则使用的缓存都一样。&lt;/p&gt;
</body>
</html><?php }
}