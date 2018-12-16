-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 
-- Port     : 
-- Database : 
-- 
-- Part : #{ 1
-- Date : 2018-12-14 20:08:16
-- -----------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for `study_admin`
-- -----------------------------
DROP TABLE IF EXISTS `study_admin`;
CREATE TABLE `study_admin` (
  `admin_id` smallint(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `admin_name` varchar(20) NOT NULL COMMENT '用户名',
  `admin_password` varchar(32) NOT NULL COMMENT '密码',
  `admin_email` varchar(32) NOT NULL COMMENT '邮箱',
  `admin_nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `admin_time` int(11) DEFAULT NULL COMMENT '上次登录时间',
  `admin_ip` varchar(15) DEFAULT NULL COMMENT '上次登录ip',
  `admin_image` varchar(50) DEFAULT NULL COMMENT '管理员头像',
  `admin_lasttime` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `admin_lastip` varchar(15) DEFAULT NULL COMMENT '最后登录ip',
  `admin_vip` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户等级 0高级 默认1普通',
  `admin_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 默认1启用0禁用',
  `admin_addtime` int(10) DEFAULT NULL COMMENT '注册时间',
  `admin_secret` varchar(100) DEFAULT NULL COMMENT '口令',
  `parent_id` tinyint(4) DEFAULT NULL COMMENT '介绍人id',
  `identifier` varchar(32) DEFAULT NULL COMMENT '第二身份标识',
  `token` varchar(32) DEFAULT NULL COMMENT '永久登录标识',
  `timeout` int(10) DEFAULT NULL COMMENT '永久登录超时时间',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_email` (`admin_email`),
  KEY `admin_vip` (`admin_vip`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `study_admin`
-- -----------------------------
INSERT INTO `study_admin` VALUES ('1', 'admin', '1e78f717bd679a083d54142517a667f5', 'cuiyu1478@126.com', '大哥玉', '1543809193', '', '', '1543842113', '0.0.0.0', '0', '1', '', '你妈喊你回家吃饭了。', '', 'c44b5f1d055fc53d72bacdabc153c11a', '6d489690e421c5be4c811bb4841b52f8', '1543843000');
INSERT INTO `study_admin` VALUES ('2', 'cuiyu1478', '07a0ac3365a4efd51b90556101f08481', 'cuiyu1478@163.com', '小青龙', '', '', '', '1544514749', '::1', '1', '1', '', '长生，你妈喊你回家吃饭了', '', 'ad7f1e6a7e0f6bc94df9b4a373435a85', 'd82905d8fb6eccbc77216ab02af5aee9', '1544518349');

-- -----------------------------
-- Table structure for `study_csst_act`
-- -----------------------------
DROP TABLE IF EXISTS `study_csst_act`;
CREATE TABLE `study_csst_act` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ct_id` tinyint(4) NOT NULL COMMENT '分类id',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '使用手册',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证状态  默认0否1是',
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '标记  默认0普通1重要',
  `is_ok` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解决  默认0否1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

