-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : study
-- 
-- Part : #{ 1
-- Date : 2019-01-20 18:55:26
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
INSERT INTO `study_admin` VALUES (2, 'cuiyu1478', '07a0ac3365a4efd51b90556101f08481', 'cuiyu1478@163.com', '小青龙', 1547048227, '::1', '', 1547969705, '::1', 1, 1, 1543809193, '长生，你妈喊你回家吃饭了', 1, 'ad7f1e6a7e0f6bc94df9b4a373435a85', '1bf9d6d4e04055497d08980b0d01f111', 1547973305, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3使用管理表';


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3问题总结表';

-- -----------------------------
-- Records of study_csst_questions
-- -----------------------------
INSERT INTO `study_csst_questions` VALUES (1, 1, 0, 'css样式属性加前加*什么意思', '&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;举例：&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/h5&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;divcourier new',=&quot;&quot; monospace;font-weight:=&quot;&quot; normal;font-size:=&quot;&quot; 14px;line-height:=&quot;&quot; 19px;white-space:=&quot;&quot; pre;&quot;=&quot;&quot;&gt;&lt;div&gt;.layui-laypage {&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;display: inline-block;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*display: inline;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;*zoom: 1;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;vertical-align: middle;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;margin: 10px 0;&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;font-size: 0&lt;/div&gt;&lt;div&gt;}&lt;/div&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;说明：display为css的属性，inline为属性值&lt;/span&gt;&lt;/h5&gt;&lt;h5&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;解答：此写法属于&lt;span style=&quot;color: rgb(249, 150, 59);&quot;&gt;CSSHACKS&lt;/span&gt;，为了兼容IE6/7等低版本浏览器&lt;/span&gt;&lt;/h5&gt;&lt;/divcourier&gt;&lt;/divcourier&gt;', 0, 1547891508, 0, 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3特殊功能表';


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3分类管理表';

-- -----------------------------
-- Records of study_csst_type
-- -----------------------------
INSERT INTO `study_csst_type` VALUES (1, '其他', '特殊情况，可能都有', 1547891426, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理一级表';

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
INSERT INTO `study_first_module` VALUES (22, 22, 'icon-tag', '更多页面', 'Check', 'index', 0, 0, 1547709208, 0, '', 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5问题总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架函数管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架其他管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架问题总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架特殊功能表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js框架分类表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js名词解释表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js符号详解表';


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js其他管理表';

-- -----------------------------
-- Records of study_js_others
-- -----------------------------
INSERT INTO `study_js_others` VALUES (1, 0, 'js代码判断浏览器种类IE、FF、Opera、Safari、chrome及版本', '&lt;p&gt;&lt;/p&gt;&lt;h5&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit; font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;链接地址：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;https &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//www.cnblogs.com/qingsong/p/5289521.html&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;因为IE10-IE11的版本问题，不再支持的的的document.all判断，所以即判断函数要重新写了&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div&gt;&lt;div&gt;&lt;div id=&quot;highlighter_333461&quot;&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;1&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;2&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;3&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;4&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;五&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;6&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;/td&gt;&lt;td&gt;&lt;div&gt;&lt;div&gt;&lt;code&gt;function&lt;/code&gt;&amp;nbsp;&lt;code&gt;isIE() { &lt;/code&gt;&lt;code&gt;//ie?&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;if&lt;/code&gt;&amp;nbsp;&lt;code&gt;(!!window.ActiveXObject || &lt;/code&gt;&lt;code&gt;&quot;ActiveXObject&quot;&lt;/code&gt;&amp;nbsp;&lt;code&gt;in&lt;/code&gt;&amp;nbsp;&lt;code&gt;window)&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;true&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;else&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;return&lt;/code&gt;&amp;nbsp;&lt;code&gt;false&lt;/code&gt;&lt;code&gt;;&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/code&gt;&lt;code&gt;}&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第一种，只区分浏览器，不考虑版本&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div id=&quot;code30982&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera” &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Firefox”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“FF”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Chrome”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;return“Chrome”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“Safari”）&amp;gt; -1）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Safari”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; isOpera）{return“IE”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; }; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;var mb = myBrowser（）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“IE”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“FF”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Chrome”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Chrome”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Opera”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Opera”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（“Safari”== mb）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;第二种，区分浏览器，并考虑IE5.5 6 7 8&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;代码如下：&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;div id=&quot;code8955&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;function myBrowser（）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var userAgent = navigator.userAgent; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//取得浏览器的userAgent字符串&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isOpera = userAgent.indexOf（“Opera”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Opera浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isIE = userAgent.indexOf（“compatible”）&amp;gt; -1 &amp;amp;&amp;amp; userAgent.indexOf（“MSIE”）&amp;gt; -1 &amp;amp;&amp;amp;！isOpera; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否IE浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isFF = userAgent.indexOf（“Firefox”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Firefox浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; var isSafari = userAgent.indexOf（“Safari”）&amp;gt; -1; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//判断是否Safari浏览器&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isIE）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var IE5 = IE55 = IE6 = IE7 = IE8 = false; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var reIE = new RegExp（“MSIE（\\ d + \\。\\ d +）;”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; reIE.test（的的userAgent）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; var fIEVersion = parseFloat（RegExp [“$ 1”]）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE55 = fIEVersion == 5.5;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE7 = fIEVersion == 7.0; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; IE8 = fIEVersion == 8.0; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE55）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE55”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE6）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE6”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE7）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE7”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（IE8）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“IE8”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } //结束isIE &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 如果如果（isFF）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 返回“FF”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; if（isOpera）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; return“Opera”; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; } &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} // myBrowser（）end &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;//以下是调用上面的函数&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“FF”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Firefox”）;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 警报（“我是歌剧”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“Safari”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是Safari”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE55”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE5.5”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE6”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE6”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE7”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE7”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;} &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;if（myBrowser（）==“IE8”）{ &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; alert（“我是IE8”）; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;}&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&amp;nbsp;&lt;strong&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;下面给出一个判断当前浏览器是IE的JS代码。&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;原理是利用了IE与标准浏览器在处理数组的的的的toString方法的差异做成的。对于标准游览器，如果数组里面最后一个字符为逗号，JS引擎会自动剔除它。&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;lt;script type =“text / javascript”&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;！[CDATA [&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;var ie =！ -  [1，]; &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;alert(ie); &lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;]]&amp;gt;&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&amp;nbsp;&lt;br&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&amp;nbsp;&amp;lt;/ script&amp;gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;', 0, 1547971898, 0, 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='js问题总结表';


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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识问题总结表';

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
INSERT INTO `study_others_questions` VALUES (3, 2, 0, 'wangEditor设置高度', '&lt;p&gt;官网提供的默认高度300px ，api文档也没有说明怎么设置。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;链接地址：https://blog.csdn.net/qq_31384551/article/details/83240188&lt;/span&gt;&lt;/p&gt;&lt;p&gt;原因：富文本区域有一个class类名w-e-text-containe的属性height:300px;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;方法：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;重新编写样式进行覆盖&lt;/p&gt;&lt;p&gt;&amp;lt;style&amp;gt;&lt;/p&gt;&lt;p&gt;.w-e-text-containe&amp;nbsp; {&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; height:600px !important;&lt;br&gt;&lt;/p&gt;&lt;p&gt;}&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;lt;/style&amp;gt;&lt;/p&gt;', 0, 1547972136, 0, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识分类管理表';

-- -----------------------------
-- Records of study_others_type
-- -----------------------------
INSERT INTO `study_others_type` VALUES (1, '电脑', '电脑的操作', 1547909753, 0);
INSERT INTO `study_others_type` VALUES (2, 'wangEditor', '富文本编辑器', 1547972092, 0);

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
INSERT INTO `study_php_errors` VALUES (2, 0, 'ddddd', '&lt;p&gt;xxxx&lt;/p&gt;', 0, 1547634619, 0, 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php扩展知识表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php框架问题总结表';


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
INSERT INTO `study_php_frame_type` VALUES (1, 'thinkphp', '最新版本为5.1.29', 1547196461, 0);
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
  `zn_name` varchar(30) NOT NULL COMMENT '函数中文名称',
  `content` text NOT NULL COMMENT '使用说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php函数管理表';

-- -----------------------------
-- Records of study_php_functions
-- -----------------------------
INSERT INTO `study_php_functions` VALUES (1, 1, 'substr()', '字符串：截取字符串,返回字符串的一部分', '&lt;h4&gt;语法：&lt;span style=&quot;font-weight: bold;&quot;&gt;substr(string,start,length)&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;sssssssss&lt;/p&gt;', 1, 1547140585, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (2, 3, 'strpos()', '函数查找字符串在另一字符串中第一次出现的位置', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547123414, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (3, 2, 'explode()', '把字符串打散为数组', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547125892, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (4, 4, 'strlen()', '返回字符串的长度', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547124322, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (5, 12342, 'implode()', '拼接字符串', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547706049, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (6, 6, 'isset()', '检测变量是否设置', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547706221, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (7, 7, 'trim()', '去掉特殊字符串', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547706533, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (8, 8, 'var_dump()', '打印数组', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547707760, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (9, 9, 'count()', '计算数量', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547707803, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (10, 10, 'sort()', '排序', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547707846, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (11, 11, 'floor()', '取证', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547707979, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (12, 14, 'ceil()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547708787, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (13, 13, 'date()', '日期', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547708805, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (14, 12, 'empty()', '检测变量是否为空', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547708839, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (15, 15, 'json_encode', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709079, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (16, 16, 'json_decode', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709123, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (17, 17, 'intval()', '返回整数值，但不改变初始值', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709473, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (18, 28, 'compact()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709541, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (19, 27, 'die()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709575, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (20, 26, 'exit()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709590, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (21, 25, 'define()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709607, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (22, 24, 'ltrim()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709636, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (23, 23, 'rtrim()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709670, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (24, 22, 'mb_substr()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709685, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (25, 21, 'mb_strlen()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709726, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (26, 20, 'round()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709753, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (27, 19, 'setcookie()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547709785, 0, 0, 0);
INSERT INTO `study_php_functions` VALUES (28, 18, 'serialize()', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547709818, 0, 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php问题总结表';


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php功能总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件问题总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件分类管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储其他管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储分类表';


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
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理二级表';

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码原理分析表';


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
