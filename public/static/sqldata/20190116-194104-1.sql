-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : study
-- 
-- Part : #{ 1
-- Date : 2019-01-16 19:41:05
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
INSERT INTO `study_admin` VALUES (2, 'cuiyu1478', '07a0ac3365a4efd51b90556101f08481', 'cuiyu1478@163.com', '小青龙', 1547048227, '::1', '', 1547624334, '::1', 1, 1, 1543809193, '长生，你妈喊你回家吃饭了', 1, 'ad7f1e6a7e0f6bc94df9b4a373435a85', 'ddd3901d44231de6ee3bb0e7188b0f01', 1547627934, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3其他管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3问题总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='CSS3分类管理表';


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
INSERT INTO `study_first_module` VALUES (19, 19, 'icon-renren', '角色管理', 'Role', 'index', 1, 0, 1546435159, 0, 'study_role', 0, 0);
INSERT INTO `study_first_module` VALUES (20, 20, 'icon-ticket', '单独功能', 'Check', 'index', 1, 0, 1547474059, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (21, 21, 'icon-file-alt', '其他页面', 'Alone', 'index', 1, 0, 1547474060, 0, '', 0, 0);
INSERT INTO `study_first_module` VALUES (22, 22, 'icon-tag', '更多页面', 'Check', 'index', 1, 0, 1547474061, 0, '', 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='h5其他管理表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识问题总结表';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='其他知识分类管理表';


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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='php函数管理表';

-- -----------------------------
-- Records of study_php_functions
-- -----------------------------
INSERT INTO `study_php_functions` VALUES (1, 1, 'substr()', '字符串：截取字符串,返回字符串的一部分', '&lt;h4&gt;语法：&lt;span style=&quot;font-weight: bold;&quot;&gt;substr(string,start,length)&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;sssssssss&lt;/p&gt;', 1, 1547140585, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (2, 2, 'strpos()', '函数查找字符串在另一字符串中第一次出现的位置', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 1547123414, 1, 0, 0);
INSERT INTO `study_php_functions` VALUES (3, 1, 'explode()', '函数把字符串打散为数组', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547125892, 1, 1, 0);
INSERT INTO `study_php_functions` VALUES (4, 5, 'strlen()', '返回字符串的长度', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1547124322, 0, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块管理二级表';

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
