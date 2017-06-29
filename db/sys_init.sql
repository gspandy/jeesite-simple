/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.229
Source Server Version : 50616
Source Host           : 192.168.2.229:3306
Source Database       : exhibition_new

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-02-23 15:33:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2016-02-23 09:54:32', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('fa0df351c2fc460295d1e8d229bb72c6', 'COMMON_MENU', '普通菜单', 'menu_mark', '普通菜单', '20', '0', '1', '2017-06-23 14:40:13', '1', '2017-06-23 14:40:13', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('d68b323e285941fd9205fe75c01e582d', 'GROUP_MENU', '组菜单', 'menu_mark', '组菜单', '10', '0', '1', '2017-06-23 14:39:32', '1', '2017-06-23 14:39:32', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('f3261a02be30405c9ca98190ee7abf32', 'RESOURCE', '资源', 'menu_mark', '资源', '30', '0', '1', '2017-06-23 14:40:37', '1', '2017-06-23 14:40:37', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('d29b599c0f9944448abccd8875f6384a', 'aldb-ops', 'Alading Bank 运营平台', 'sys_code', 'Alading Bank 运营平台', '40', '0', '4', '2017-06-28 10:27:55', '1', '2017-06-28 15:37:21', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('867fc613db594d5991663a9594c1298b', 'daohang', '个人导航', 'sys_code', '导航', '110', '0', '1', '2017-06-28 14:34:38', '1', '2017-06-29 10:40:43', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('d717dc206b2a45eaaf74395daf0feb3d', 'jd_sys', '京东', 'sys_code', '京东商城', '60', '0', '1', '2017-06-19 16:38:13', '1', '2017-06-19 16:38:13', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('08765a5b059d498495d945f9b628cb61', 'magicloan_ops', '借吧', 'sys_code', '借吧后台管理系统', '20', '0', '1', '2017-06-14 09:09:11', '1', '2017-06-19 15:16:21', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('a4f2a50439da43fd9c6abd9dce6bacb3', 'magicmall_ops', '商城', 'sys_code', '商城后台管理系统', '30', '0', '1', '2017-06-14 09:07:58', '1', '2017-06-19 15:16:14', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('9c162c9c01074d858f39dc39bc2d0b49', 'tmall_sys', '天猫', 'sys_code', '天猫商城', '70', '0', '1', '2017-06-19 16:41:26', '1', '2017-06-19 16:41:26', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('83d973b4e0ea47d38bd4b9e509977755', 'daohang', '导航', 'sys_code', '导航', '110', '0', '4', '2017-06-28 14:05:08', '4', '2017-06-28 14:05:08', '', '1');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('fb29d6a34a0c46d8be13819cae289a4f', 'daohang', '导航', 'sys_code', '导航', '110', '0', '1', '2017-06-28 14:18:43', '1', '2017-06-28 14:18:43', '', '1');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('1a044b3aefcf41838df2cbbdad3bf261', 'dangdang_sys', '当当书城', 'sys_code', '当当书城', '80', '0', '1', '2017-06-19 16:42:15', '1', '2017-06-19 16:42:15', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('de297627dcf0433e9e244d49a7d2eb41', 'sina_sys', '新浪', 'sys_code', '新浪', '50', '0', '1', '2017-06-19 16:27:15', '1', '2017-06-19 16:27:35', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('57a088f6593e411eb4f1c26a08f6966c', 'test1', '菜单测试1', 'sys_code', '菜单测试1', '130', '0', '1', '2017-06-28 16:07:46', '1', '2017-06-28 16:08:28', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('6ae786bf1f334a138aa9ab29acedd5db', 'auth_sys', '菜单管理系统', 'sys_code', '权限管理系统', '10000', '0', '1', '2017-06-14 09:31:04', '1', '2017-06-19 15:15:50', '', '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `proj_code` varchar(50) DEFAULT NULL COMMENT '子系统code，取值字典表sys_code',
  `menu_mark` varchar(20) DEFAULT NULL comment '菜单标识，取值字典表menu_mark',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表'

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('3b83ce1cfcb74754b0ce34dc34226ec1', 'ac0dfa58a1ac4f6a9982e92c9fa48a39', '0,1,ac0dfa58a1ac4f6a9982e92c9fa48a39,', '运营系统-index', '30', 'http://10.148.16.27:8380/aldb-ops', '', '', '1', '', '1', '2017-06-28 10:32:42', '1', '2017-06-28 10:32:42', '', '0', 'aldb-ops', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('ac0dfa58a1ac4f6a9982e92c9fa48a39', '1', '0,1,', '运营系统', '1230', '', '', '', '1', '', '1', '2017-06-28 10:31:48', '1', '2017-06-28 10:31:48', '', '0', 'aldb-ops', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('1', '0', '0,', '子系统菜单', '0', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '', '0', 'auth_sys', '0');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('2', '1', '0,1,', '系统设置', '900', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '', '0', 'auth_sys', '0');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('22', '20', '0,1,3,20,', '修改', '40', '', '', '', '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '', '0', 'auth_sys', '0');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('67', '2', '0,1,2,', '日志查询', '985', '', '', '', '1', '', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', '', '0', 'auth_sys', '0');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('68', '67', '0,1,2,67,', '日志查询', '30', '/sys/log', '', 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', '', '0', 'auth_sys', '0');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('4', '3', '0,1,3,', '菜单管理', '40', 'http://10.148.16.27:8380/jeesite-simple/a/sys/menu/list', '', 'list-alt', '1', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2017-06-19 14:26:38', '', '0', 'auth_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('7', '3', '0,1,3,', '角色管理', '30', 'http://10.148.16.27:8380/jeesite-simple/a/sys/role/', '', 'lock', '1', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2017-06-19 15:04:04', '', '0', 'auth_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('10', '3', '0,1,3,', '字典管理', '60', 'http://10.148.16.27:8380/jeesite-simple/a/sys/dict/', '', 'th-list', '1', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2017-06-19 15:04:21', '', '0', 'auth_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('20', '3', '0,1,3,', '用户管理', '20', 'http://10.148.16.27:8380/jeesite-simple/a/sys/user/list', '', 'user', '1', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2017-06-28 09:50:33', '', '0', 'auth_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('3', '1', '0,1,', '系统设置', '980', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2017-06-19 14:27:23', '', '0', 'auth_sys', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('6', '4', '0,1,3,4,', '修改', '40', '', '', '', '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2017-06-23 14:41:26', '', '0', 'auth_sys', 'RESOURCE');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('9', '7', '0,1,3,7,', '修改', '40', '', '', '', '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2017-06-23 14:41:16', '', '0', 'auth_sys', 'RESOURCE');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('12', '10', '0,1,3,10,', '修改', '40', '', '', '', '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2017-06-23 14:41:33', '', '0', 'auth_sys', 'RESOURCE');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('33538198c8204de19354ba39f52accc5', '10cbbac8d01d471790089f55648058d5', '0,1,10cbbac8d01d471790089f55648058d5,', '当当-index', '30', 'http://www.dangdang.com/', '', '', '1', '', '1', '2017-06-19 16:44:47', '1', '2017-06-19 16:44:47', '', '0', 'dangdang_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('10cbbac8d01d471790089f55648058d5', '1', '0,1,', '当当', '1200', '', '', '', '1', '', '1', '2017-06-19 16:44:11', '1', '2017-06-19 16:44:11', '', '0', 'dangdang_sys', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('29', '28', '0,1,28,', '个人信息-index', '30', 'http://10.148.16.27:8380/jeesite-simple/a/sys/user/info', '', 'user', '1', '', '1', '2013-05-27 08:00:00', '1', '2017-06-28 15:34:29', '', '0', 'daohang', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('45ee138234fd4feba2afdaff91939d45', '28', '0,1,28,', '修改密码', '60', 'http://10.148.16.27:8380/jeesite-simple/a/sys/user/modifyPwd', '', '', '1', '', '1', '2017-06-28 15:35:32', '1', '2017-06-28 15:35:32', '', '0', 'daohang', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('28', '1', '0,1,', '个人信息', '30', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2017-06-28 14:35:21', '', '0', 'daohang', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('df5a68e74b1945b1915decced7b372fa', '200e821b60004c73aafdfc6528637d3e', '0,1,200e821b60004c73aafdfc6528637d3e,', '京东商城', '30', 'http://www.jd.com/', '', '', '1', '', '1', '2017-06-19 16:39:16', '1', '2017-06-19 16:39:16', '', '0', 'jd_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('200e821b60004c73aafdfc6528637d3e', '1', '0,1,', '京东', '1140', '', '', '', '1', '', '1', '2017-06-19 16:38:45', '1', '2017-06-19 16:38:45', '', '0', 'jd_sys', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('c111212b816e490a8201b323be9b423b', '62a5d8e929a14572bb7abe6920523cfb', '0,1,62a5d8e929a14572bb7abe6920523cfb,', '借吧-index', '1020', 'http://10.148.16.27:8180/magicloan-ops', '', '', '1', '', '1', '2017-06-14 09:41:50', '1', '2017-06-19 15:17:43', '', '0', 'magicloan_ops', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('62a5d8e929a14572bb7abe6920523cfb', '1', '0,1,', '借吧', '1080', '', '', '', '1', '', '1', '2017-06-19 15:08:18', '1', '2017-06-19 15:08:18', '', '0', 'magicloan_ops', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('df37d4eb4762465b9d0fd098637bf438', '0a630c6c54f641b0a84a9c01f85f01a8', '0,1,0a630c6c54f641b0a84a9c01f85f01a8,', '商城-index', '930', 'http://10.148.15.12:8680/magicmall-ops/index', '_blank', '', '1', '', '1', '2017-06-13 09:08:36', '1', '2017-06-19 15:17:27', '', '0', 'magicmall_ops', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('0a630c6c54f641b0a84a9c01f85f01a8', '1', '0,1,', '商城', '1050', '', '', '', '1', '', '1', '2017-06-19 15:07:06', '1', '2017-06-19 15:12:16', '', '0', 'magicmall_ops', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('a4d847881cb64be49fa0ca37b28737f4', 'eabdfdf28ca14a3388e2ac92fa926db2', '0,1,eabdfdf28ca14a3388e2ac92fa926db2,', '新浪系统', '990', 'http://www.sina.com/', '_blank', '', '1', '', '1', '2017-06-14 09:26:18', '1', '2017-06-19 16:29:16', '', '0', 'sina_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('eabdfdf28ca14a3388e2ac92fa926db2', '1', '0,1,', '新浪', '1110', '', '', '', '1', '', '1', '2017-06-19 16:29:05', '1', '2017-06-19 16:29:05', '', '0', 'sina_sys', 'GROUP_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('b39786b31d954813ae33db7965387185', '2b5bd0042eb748ee8679680d2fd95fcb', '0,1,2b5bd0042eb748ee8679680d2fd95fcb,', '天猫', '30', 'https://www.tmall.com/', '', '', '1', '', '1', '2017-06-19 16:43:47', '1', '2017-06-19 16:43:47', '', '0', 'tmall_sys', 'COMMON_MENU');
INSERT INTO `sys_menu` (`id`, `parent_id`, `parent_ids`, `name`, `sort`, `href`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`, `proj_code`, `menu_mark`) VALUES ('2b5bd0042eb748ee8679680d2fd95fcb', '1', '0,1,', '天猫商城', '1170', '', '', '', '1', '', '1', '2017-06-19 16:42:53', '1', '2017-06-19 16:42:53', '', '0', 'tmall_sys', 'GROUP_MENU');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', null, null, '8', '1', '1', '1', '2016-02-22 16:47:16', '1', '2016-02-23 15:13:04', '', '0');
INSERT INTO `sys_role` VALUES ('2', '运营人员', null, null, '1', '1', '1', '1', '2016-02-22 16:37:23', '1', '2016-02-23 15:13:46', '', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '71');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user 密码 admin
-- ----------------------------
INSERT INTO `sys_user` (`id`, `login_name`, `password`, `no`, `name`, `email`, `phone`, `mobile`, `user_type`, `photo`, `login_ip`, `login_date`, `login_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('1', 'thinkgem', '5644f49f9c2d4a44bb27aa5076352f15d43d62b28f6b2e11df417b0e', '0001', '系统管理员', '', '', '', '', '', '192.168.6.99', '2017-06-29 10:40:24', '1', '1', '2013-05-27 08:00:00', '1', '2017-06-28 09:51:06', '最高管理员', '0');
INSERT INTO `sys_user` (`id`, `login_name`, `password`, `no`, `name`, `email`, `phone`, `mobile`, `user_type`, `photo`, `login_ip`, `login_date`, `login_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('2', 'test', '5644f49f9c2d4a44bb27aa5076352f15d43d62b28f6b2e11df417b0e', NULL, 'test运营人员', '', '', '', '', '', '192.168.6.99', '2017-06-23 15:25:26', '1', '1', '2016-02-23 15:15:31', '1', '2017-06-14 16:15:02', '', '0');
INSERT INTO `sys_user` (`id`, `login_name`, `password`, `no`, `name`, `email`, `phone`, `mobile`, `user_type`, `photo`, `login_ip`, `login_date`, `login_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('3', 'test1', '5644f49f9c2d4a44bb27aa5076352f15d43d62b28f6b2e11df417b0e', NULL, '运营人员', NULL, '', '', '', '', '0:0:0:0:0:0:0:1', '2016-02-23 15:28:14', '1', '1', '2016-02-23 15:20:46', '1', '2016-02-23 15:20:46', '', '0');
INSERT INTO `sys_user` (`id`, `login_name`, `password`, `no`, `name`, `email`, `phone`, `mobile`, `user_type`, `photo`, `login_ip`, `login_date`, `login_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`) VALUES ('4', 'admin', '5644f49f9c2d4a44bb27aa5076352f15d43d62b28f6b2e11df417b0e', NULL, '管理员', NULL, '8675', '8675', '', '', '192.168.6.99', '2017-06-28 14:20:47', '1', '1', '2013-05-27 08:00:00', '1', '2016-02-23 15:19:13', '管理员', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
