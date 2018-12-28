-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : study
-- 
-- Part : #{ 1
-- Date : 2018-12-28 17:27:54
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
  PRIMARY KEY (`admin_id`) USING BTREE,
  UNIQUE KEY `admin_email` (`admin_email`) USING BTREE,
  KEY `admin_vip` (`admin_vip`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员表';

-- -----------------------------
-- Records of study_admin
-- -----------------------------
INSERT INTO `study_admin` VALUES (1, 'admin', '1e78f717bd679a083d54142517a667f5', 'cuiyu1478@126.com', '大哥玉', 1543809193, '', '', 1543842113, '0.0.0.0', 0, 1, 1543809193, '你妈喊你回家吃饭了。', 1, 'c44b5f1d055fc53d72bacdabc153c11a', '6d489690e421c5be4c811bb4841b52f8', 1543843000);
INSERT INTO `study_admin` VALUES (2, 'cuiyu1478', '07a0ac3365a4efd51b90556101f08481', 'cuiyu1478@163.com', '小青龙', 0, '', '', 1544514749, '::1', 1, 1, 1543809193, '长生，你妈喊你回家吃饭了', 1, 'ad7f1e6a7e0f6bc94df9b4a373435a85', 'd82905d8fb6eccbc77216ab02af5aee9', 1544518349);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_csst_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_plug_type`;
CREATE TABLE `study_csst_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_csst_type
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_type`;
CREATE TABLE `study_csst_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_first_module
-- -----------------------------
DROP TABLE IF EXISTS `study_first_module`;
CREATE TABLE `study_first_module` (
  `fm_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `fm_sort` tinyint(4) DEFAULT '0' COMMENT '显示位置排序',
  `fm_icon` varchar(30) NOT NULL COMMENT '前置标签',
  `fm_name` varchar(30) NOT NULL COMMENT '模块名称',
  `fm_controller` varchar(20) NOT NULL COMMENT '控制器名称/文件夹名称',
  `fm_method` varchar(20) NOT NULL COMMENT '方法名称  默认输出页',
  `fm_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `is_parent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '有无子类  默认0否1是',
  `fm_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`fm_id`) USING BTREE,
  KEY `fm_sort` (`fm_id`,`fm_sort`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- -----------------------------
-- Records of study_first_module
-- -----------------------------
INSERT INTO `study_first_module` VALUES (1, 1, 'icon-dashboard', '控制平台', 'Index', 'index', 1, 0, 1545386748);
INSERT INTO `study_first_module` VALUES (2, 2, 'icon-user', '用户管理', 'Admin', 'list', 1, 0, 1545381827);
INSERT INTO `study_first_module` VALUES (3, 3, 'icon-key', '修改密码', 'Password', 'change', 1, 0, 1545381829);
INSERT INTO `study_first_module` VALUES (4, 4, 'fas fa-database', '数据管理', 'Tools', 'index', 1, 1, 1545391981);
INSERT INTO `study_first_module` VALUES (5, 5, 'fas fa-user-tie', '权限管理', 'Power', 'index', 1, 0, 1545381833);
INSERT INTO `study_first_module` VALUES (6, 6, 'fab fa-php', 'Php管理', 'Php', 'index', 1, 1, 1545395468);
INSERT INTO `study_first_module` VALUES (7, 7, 'fab fa-connectdevelop', '开发工具', 'Develop', 'index', 1, 1, 1545395467);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_htmlf_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_htmlf_plug_type`;
CREATE TABLE `study_htmlf_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_js_frame_type
-- -----------------------------
DROP TABLE IF EXISTS `study_js_frame_type`;
CREATE TABLE `study_js_frame_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_js_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_js_plug_type`;
CREATE TABLE `study_js_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_others_type
-- -----------------------------
DROP TABLE IF EXISTS `study_others_type`;
CREATE TABLE `study_others_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_php_develop_plug
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_plug`;
CREATE TABLE `study_php_develop_plug` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pdt_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '标题',
  `zn_name` varchar(100) NOT NULL COMMENT '中文名称',
  `content` text NOT NULL COMMENT '说明',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_php_develop_type
-- -----------------------------
DROP TABLE IF EXISTS `study_php_develop_type`;
CREATE TABLE `study_php_develop_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_php_frame_type
-- -----------------------------
DROP TABLE IF EXISTS `study_php_frame_type`;
CREATE TABLE `study_php_frame_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_plug_type
-- -----------------------------
DROP TABLE IF EXISTS `study_plug_type`;
CREATE TABLE `study_plug_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_role
-- -----------------------------
DROP TABLE IF EXISTS `study_role`;
CREATE TABLE `study_role` (
  `role_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `role_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_rule
-- -----------------------------
DROP TABLE IF EXISTS `study_rule`;
CREATE TABLE `study_rule` (
  `admin_id` tinyint(4) NOT NULL COMMENT '管理员id',
  `role_id` tinyint(4) NOT NULL COMMENT '角色id',
  `fm_id` tinyint(4) NOT NULL COMMENT '一级模块id',
  `sm_id` tinyint(4) NOT NULL COMMENT '二级模块id',
  `tm_id` tinyint(4) NOT NULL COMMENT '三级模块id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_save_type
-- -----------------------------
DROP TABLE IF EXISTS `study_save_type`;
CREATE TABLE `study_save_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '说明',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  `sm_controller` varchar(20) NOT NULL COMMENT '控制器名称/文件夹名称',
  `sm_method` varchar(20) DEFAULT '' COMMENT '方法名称  默认输出页',
  `sm_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态  默认0否1是',
  `is_parents` tinyint(1) NOT NULL DEFAULT '0' COMMENT '有无子类  默认0否1是',
  `sm_addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- -----------------------------
-- Records of study_second_module
-- -----------------------------
INSERT INTO `study_second_module` VALUES (1, 4, 1, 'fas fa-table', '数据列表', 'Tools', 'index', 1, 0, 1545395467);
INSERT INTO `study_second_module` VALUES (2, 4, 2, 'fas fa-history', '还原列表', 'Tools', 'list', 1, 0, 1545395467);
INSERT INTO `study_second_module` VALUES (3, 6, 1, 'fab fa-themeco', 'Php源码管理', 'Php', 'index', 1, 1, 1545395467);
INSERT INTO `study_second_module` VALUES (4, 7, 1, 'fas fa-clipboard-list', '分类管理', 'type', 'index', 1, 1, 1545395464);
INSERT INTO `study_second_module` VALUES (5, 6, 2, 'fas fa-cog', 'Php环境配置', 'dddd', 'index', 1, 1, 1545813458);
INSERT INTO `study_second_module` VALUES (6, 6, 4, 'ffff', 'ddddd', 'ffff', 'index', 1, 1, 0);
INSERT INTO `study_second_module` VALUES (7, 6, 3, 'ggg', 'fff', 'ddd', 'index', 0, 0, 0);
INSERT INTO `study_second_module` VALUES (8, 6, 5, 'ss', 'dd', 'gg', 'index', 0, 0, 0);
INSERT INTO `study_second_module` VALUES (9, 6, 0, 'rr', 'hh', 'ff', 'index', 0, 0, 0);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_software_type
-- -----------------------------
DROP TABLE IF EXISTS `study_software_type`;
CREATE TABLE `study_software_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for study_system_type
-- -----------------------------
DROP TABLE IF EXISTS `study_system_type`;
CREATE TABLE `study_system_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '分类名称',
  `content` text NOT NULL COMMENT '详述',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


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
  PRIMARY KEY (`tm_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- -----------------------------
-- Records of study_three_module
-- -----------------------------
INSERT INTO `study_three_module` VALUES (1, 4, 1, 'fab fa-foursquare', '函数管理', 'type', 'index', 1, 1545395461);
INSERT INTO `study_three_module` VALUES (2, 4, 2, 'fas fa-plug', '插件使用', 'type', 'index', 1, 1545394592);
