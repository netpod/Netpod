/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.66
Source Server Version : 50505
Source Host           : 192.168.1.66:3306
Source Database       : netpod

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-06-22 22:13:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `python_container`
-- ----------------------------
DROP TABLE IF EXISTS `python_container`;
CREATE TABLE `python_container` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cover_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='图表容器表';

-- ----------------------------
-- Records of python_container
-- ----------------------------

-- ----------------------------
-- Table structure for `python_data`
-- ----------------------------
DROP TABLE IF EXISTS `python_data`;
CREATE TABLE `python_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `container_id` int(11) DEFAULT NULL COMMENT '容器ID',
  `chart_type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图表类型',
  `chart_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chart_style` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图表样式',
  `chart_sort` int(11) DEFAULT NULL COMMENT '排序号',
  `cover_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT 0 COMMENT '原始图标ID ',
  `del_flag` int(1) NOT NULL DEFAULT 0,
  `chart_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图表名字',
  `data_source` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户图表';

-- ----------------------------
-- Records of python_data
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` tinyint(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT 0 COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '连接方式', 'connectType', '1', '双绞线', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '连接方式', 'connectType', '2', '光纤线', '1', '', '0');
INSERT INTO `sys_dict` VALUES ('3', '连接方式', 'connectType', '3', '虚拟线路', '3', '', '0');
INSERT INTO `sys_dict` VALUES ('4', '监控类型', 'monitorType', '1', 'Linux', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('6', '监控类型', 'monitorType', '3', 'Mysql', '0', '', '0');
INSERT INTO `sys_dict` VALUES ('7', '监控类型', 'monitorType', '4', 'Windows', '0', '', '0');
INSERT INTO `sys_dict` VALUES ('8', '监控类型', 'monitorType', '5', 'Tomcat', '0', '', '0');
INSERT INTO `sys_dict` VALUES ('9', '监控类型', 'monitorType', '6', '应用系统', '1', '', '0');
INSERT INTO `sys_dict` VALUES ('10', '监控类型', 'monitorType', '8', 'oracle', '8', '', '0');
INSERT INTO `sys_dict` VALUES ('12', '监控类型', 'monitorType', '77', '数据链路', '77', '', '0');
INSERT INTO `sys_dict` VALUES ('14', '监控类型', 'monitorType', '78', '经纬度', '78', '', '0');
INSERT INTO `sys_dict` VALUES ('15', '监控类型', 'monitorType', '79', '人脸识别', '79', '', '0');
INSERT INTO `sys_dict` VALUES ('16', '监控类型', 'monitorType', '10', '达梦', '10', '', '0');
INSERT INTO `sys_dict` VALUES ('17', '监控类型', 'monitorType', '9', '金蝶AAS', '9', '金蝶中间件AAS', '0');
INSERT INTO `sys_dict` VALUES ('18', '监控类型', 'monitorType', '21', 'Juniper', '21', 'Juniper交换机', '0');
INSERT INTO `sys_dict` VALUES ('19', '监控类型', 'monitorType', '22', 'Enterasys', '22', '凯创交换机', '0');
INSERT INTO `sys_dict` VALUES ('20', '监控类型', 'monitorType', '23', 'Huawei', '23', '华为交换机', '0');
INSERT INTO `sys_dict` VALUES ('21', '监控类型', 'monitorType', '24', 'DPtech', '24', '迪普交换机', '0');
INSERT INTO `sys_dict` VALUES ('22', '监控类型', 'monitorType', '25', 'Cisco', '25', '思科交换机', '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(19) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='系统日志 ';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `p_id` bigint(19) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(10) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(10) DEFAULT NULL COMMENT '排序',
  `open_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '窗口的打开方式（0-默认，1-全屏）',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COMMENT='系统菜单 ';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('15', '0', '平台底座', '', '', '0', 'xitong-gl', '99', '0');
INSERT INTO `sys_menu` VALUES ('16', '15', '用户管理', 'system/user', '', '1', 'yonghu-gl', '1', '0');
INSERT INTO `sys_menu` VALUES ('17', '16', '新增', '', 'sys:user:save,sys:role:select', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('18', '16', '修改', '', 'sys:user:update,sys:role:select', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('19', '16', '删除', '', 'sys:user:delete', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('20', '16', '查看', '', 'sys:user:list,sys:user:info,sys:user:select', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('21', '15', '角色管理', 'system/role', '', '1', 'juese-gl', '2', '0');
INSERT INTO `sys_menu` VALUES ('22', '21', '新增', '', 'sys:role:save,sys:menu:list', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('23', '21', '修改', '', 'sys:role:update,sys:menu:list', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('24', '21', '删除', '', 'sys:role:delete', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('25', '21', '查看', '', 'sys:role:list,sys:role:info', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('26', '15', '菜单管理', 'system/menu', '', '1', 'jiankongxiang-gl', '4', '0');
INSERT INTO `sys_menu` VALUES ('27', '26', '新增', '', 'sys:menu:save,sys:menu:select', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('28', '26', '修改', '', 'sys:menu:update,sys:menu:select', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('29', '26', '删除', '', 'sys:menu:delete', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('30', '26', '查看', '', 'sys:menu:list,sys:menu:info', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('38', '15', '系统日志', 'system/log', 'sys:log:list', '1', 'xitong-rizhi', '6', '0');
INSERT INTO `sys_menu` VALUES ('39', '15', '组织机构', 'system/org', '', '1', 'zuzhi-jigou', '3', '0');
INSERT INTO `sys_menu` VALUES ('40', '39', '查看', '', 'sys:org:list,sys:org:info,sys:org:treeData,sys:org:tree', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('41', '39', '修改', '', 'sys:org:update', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('42', '39', '删除', '', 'sys:org:delete', '2', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('70', '95', '查看', null, 'asset:asset:list,asset:asset:info', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('71', '95', '新增', null, 'asset:asset:save', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('72', '95', '修改', null, 'asset:asset:update', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('73', '95', '删除', null, 'asset:asset:delete', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('95', '0', '资产管理', 'asset/asset', 'asset:classify:list,asset:classify:info,asset:classify:save,asset:classify:update,asset:classify:delete', '1', 'zichan-gl', '6', '0');
INSERT INTO `sys_menu` VALUES ('120', '1', '运维日志', 'asset/joblog', null, '1', 'config', '6', '0');
INSERT INTO `sys_menu` VALUES ('121', '120', '查看', null, 'asset:joblog:list,asset:joblog:info', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('122', '120', '新增', null, 'asset:joblog:save', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('123', '120', '修改', null, 'asset:joblog:update', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('124', '120', '删除', null, 'asset:joblog:delete', '2', null, '6', '0');
INSERT INTO `sys_menu` VALUES ('135', '0', '运维报表', '/monitor/monitor-list', '', '1', 'dp-jiankong', '4', '0');
INSERT INTO `sys_menu` VALUES ('179', '15', '数据字典', 'system/dict', '', '1', 'shuju-zidian', '5', '0');
INSERT INTO `sys_menu` VALUES ('180', '179', '查看', '', 'sys:dict:list,sys:dict:info,sys:dict:getTypelist', '2', '', '0', '0');

-- ----------------------------
-- Table structure for `sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '组织ID',
  `node` int(11) DEFAULT NULL COMMENT '所在节点 1',
  `org_name` varchar(128) DEFAULT NULL COMMENT '组织名称 昆明供电局',
  `ATTR` varchar(255) DEFAULT NULL,
  `p_id` int(32) DEFAULT NULL COMMENT '上级组织的ID',
  `org_code` varchar(32) DEFAULT NULL COMMENT '编码 050100',
  `UNICODE` varchar(32) DEFAULT NULL COMMENT '统一编码 050000-2900',
  `FOUND_DATE` datetime DEFAULT NULL COMMENT '成立时间 1963-12-31 16:00:00:000000',
  `RETRACT_DATE` datetime DEFAULT NULL COMMENT '收回时间 2199-11-05 16:00:00:000000',
  `SYSDATAID` int(11) DEFAULT NULL,
  `SYSCODE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `DOMAIN` varchar(255) DEFAULT NULL,
  `ORG_SHORT_NAME` varchar(255) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `ORG_ENGLISH_NAME` varchar(128) DEFAULT NULL COMMENT '组织的英文名称',
  `ADDRESS` varchar(128) DEFAULT NULL COMMENT '机构地址 云南省昆明市',
  `POSTAL_CODE` varchar(32) DEFAULT NULL COMMENT '邮政编码 650000',
  `LINKMAN_EMAIL` varchar(32) DEFAULT NULL COMMENT '联系人邮箱',
  `LINKMAN_FAX` varchar(32) DEFAULT NULL COMMENT '联系人传真',
  `LINKMAN_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `PERSONNEL_NO` varchar(32) DEFAULT NULL,
  `FUNC_TYPE` varchar(32) DEFAULT NULL,
  `PROVINCE_ID` varchar(32) DEFAULT NULL,
  `FULL_PATH` varchar(1024) DEFAULT NULL COMMENT '全称 中国南方电网有限责任公司云南电网有限责任公司昆明供电局',
  `FULL_PATH_ORGID` varchar(512) DEFAULT NULL COMMENT '全称编码 1173B22DDA0135B7DE055000000000001173B22DDA0145B7DE055000000000001',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '备注',
  `PRIMARY_BUSINESS` varchar(3072) DEFAULT NULL,
  `FLAG` int(11) DEFAULT NULL,
  `APPID` varchar(32) DEFAULT NULL,
  `OPERATOR_ID` varchar(32) DEFAULT NULL,
  `OPERATOR_NAME` varchar(32) DEFAULT NULL,
  `OPERATOR_TYPE` varchar(32) DEFAULT NULL,
  `ORGPATH` varchar(128) DEFAULT NULL COMMENT '组织路径 >云南电网有限责任公司>昆明供电局',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8 COMMENT='组织机构 ';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('318', null, 'netpod科技集团', null, '0', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('319', null, '信息中心', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('320', null, '安全组', null, '319', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('321', null, '网络组', null, '319', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('322', null, '应用组', null, '319', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('323', null, '客服组', null, '319', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('324', null, '战略规划部', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('325', null, '市场营销部', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('326', null, '安全生产部', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('327', null, '后勤保障部', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `sys_org` VALUES ('328', null, '平昌县泓源水务集团', null, '318', '', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(128) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `create_user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='角色 ';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '系统维护、管理', null, null);
INSERT INTO `sys_role` VALUES ('25', 'sm', '系统管理员', null, null);
INSERT INTO `sys_role` VALUES ('26', '系统演示查看', '', null, null);

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2800 DEFAULT CHARSET=utf8 COMMENT='角色菜单 ';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2730', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('2731', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('2732', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('2733', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('2734', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('2735', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('2736', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('2737', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('2738', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('2739', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('2740', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('2741', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('2742', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('2743', '1', '28');
INSERT INTO `sys_role_menu` VALUES ('2744', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('2745', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('2746', '1', '38');
INSERT INTO `sys_role_menu` VALUES ('2747', '1', '39');
INSERT INTO `sys_role_menu` VALUES ('2748', '1', '40');
INSERT INTO `sys_role_menu` VALUES ('2749', '1', '41');
INSERT INTO `sys_role_menu` VALUES ('2750', '1', '42');
INSERT INTO `sys_role_menu` VALUES ('2751', '1', '179');
INSERT INTO `sys_role_menu` VALUES ('2752', '1', '180');
INSERT INTO `sys_role_menu` VALUES ('2753', '1', '95');
INSERT INTO `sys_role_menu` VALUES ('2754', '1', '70');
INSERT INTO `sys_role_menu` VALUES ('2755', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('2756', '1', '72');
INSERT INTO `sys_role_menu` VALUES ('2757', '1', '73');
INSERT INTO `sys_role_menu` VALUES ('2758', '1', '121');
INSERT INTO `sys_role_menu` VALUES ('2759', '1', '135');
INSERT INTO `sys_role_menu` VALUES ('2760', '1', '-666666');
INSERT INTO `sys_role_menu` VALUES ('2761', '1', '120');
INSERT INTO `sys_role_menu` VALUES ('2762', '25', '15');
INSERT INTO `sys_role_menu` VALUES ('2763', '25', '16');
INSERT INTO `sys_role_menu` VALUES ('2764', '25', '17');
INSERT INTO `sys_role_menu` VALUES ('2765', '25', '18');
INSERT INTO `sys_role_menu` VALUES ('2766', '25', '19');
INSERT INTO `sys_role_menu` VALUES ('2767', '25', '20');
INSERT INTO `sys_role_menu` VALUES ('2768', '25', '21');
INSERT INTO `sys_role_menu` VALUES ('2769', '25', '22');
INSERT INTO `sys_role_menu` VALUES ('2770', '25', '23');
INSERT INTO `sys_role_menu` VALUES ('2771', '25', '24');
INSERT INTO `sys_role_menu` VALUES ('2772', '25', '25');
INSERT INTO `sys_role_menu` VALUES ('2773', '25', '26');
INSERT INTO `sys_role_menu` VALUES ('2774', '25', '27');
INSERT INTO `sys_role_menu` VALUES ('2775', '25', '28');
INSERT INTO `sys_role_menu` VALUES ('2776', '25', '29');
INSERT INTO `sys_role_menu` VALUES ('2777', '25', '30');
INSERT INTO `sys_role_menu` VALUES ('2778', '25', '38');
INSERT INTO `sys_role_menu` VALUES ('2779', '25', '39');
INSERT INTO `sys_role_menu` VALUES ('2780', '25', '40');
INSERT INTO `sys_role_menu` VALUES ('2781', '25', '41');
INSERT INTO `sys_role_menu` VALUES ('2782', '25', '42');
INSERT INTO `sys_role_menu` VALUES ('2783', '25', '179');
INSERT INTO `sys_role_menu` VALUES ('2784', '25', '180');
INSERT INTO `sys_role_menu` VALUES ('2785', '25', '95');
INSERT INTO `sys_role_menu` VALUES ('2786', '25', '70');
INSERT INTO `sys_role_menu` VALUES ('2787', '25', '71');
INSERT INTO `sys_role_menu` VALUES ('2788', '25', '72');
INSERT INTO `sys_role_menu` VALUES ('2789', '25', '73');
INSERT INTO `sys_role_menu` VALUES ('2790', '25', '-666666');
INSERT INTO `sys_role_menu` VALUES ('2791', '26', '20');
INSERT INTO `sys_role_menu` VALUES ('2792', '26', '70');
INSERT INTO `sys_role_menu` VALUES ('2793', '26', '121');
INSERT INTO `sys_role_menu` VALUES ('2794', '26', '135');
INSERT INTO `sys_role_menu` VALUES ('2795', '26', '-666666');
INSERT INTO `sys_role_menu` VALUES ('2796', '26', '15');
INSERT INTO `sys_role_menu` VALUES ('2797', '26', '16');
INSERT INTO `sys_role_menu` VALUES ('2798', '26', '95');
INSERT INTO `sys_role_menu` VALUES ('2799', '26', '120');

-- ----------------------------
-- Table structure for `sys_token`
-- ----------------------------
DROP TABLE IF EXISTS `sys_token`;
CREATE TABLE `sys_token` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `token` varchar(128) DEFAULT NULL COMMENT '令牌',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='令牌 ';

-- ----------------------------
-- Records of sys_token
-- ----------------------------
INSERT INTO `sys_token` VALUES ('2', '61005c9bd367a760499cac86269b6802', '2021-06-22 10:27:32', '2021-06-22 09:27:32');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(128) DEFAULT NULL COMMENT '用户名',
  `psw` varchar(64) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `head_img_id` varchar(32) DEFAULT NULL COMMENT '头像',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '组织ID',
  `org_name` varchar(128) DEFAULT NULL COMMENT '组织全路径 >云南电网有限责任公司>云南电网物资有限公司>采购服务部',
  `is_duty` tinyint(4) DEFAULT 0 COMMENT '是否为值班人员',
  `ACCOUNT_EMAIL` varchar(255) DEFAULT NULL,
  `USER_CODE` varchar(255) DEFAULT NULL,
  `HR_ID` int(11) DEFAULT NULL,
  `PKI_EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户信息 ';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2', 'ops', '1786535e5138ab9d98158db5c627c3cc', '13999999999', 'ops@gmail.com', '958', '1', '318', 'netpod科技集团', '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('7', '信息中心', '1786535e5138ab9d98158db5c627c3cc', '18800000000', 'test@qq.com', '587', '26', '318', 'netpod科技集团', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '03a1d0de88454adab40d29b4c49376be', '1');
INSERT INTO `sys_user_role` VALUES ('2', 'YX4AZZ97D21481E0533YX4ARYAb07971', '1');
INSERT INTO `sys_user_role` VALUES ('3', '8aef8b615b1b6572015c1e87dd4a12e7', '2');
INSERT INTO `sys_user_role` VALUES ('4', '7c49064093ea4412b8b1e4dd8115aeeb', '3');
INSERT INTO `sys_user_role` VALUES ('5', '5263fe5ee67c4357b7e451989653ad7b', '3');
INSERT INTO `sys_user_role` VALUES ('6', '35bf0ca47ef64d8c9b263271b79eb3f2', '2');
INSERT INTO `sys_user_role` VALUES ('7', '0000e70e45c54a99b8a78510aaa2a208', '1');
INSERT INTO `sys_user_role` VALUES ('9', '000590b1ea1746fdb338cd74f61bcd9e', '1');
INSERT INTO `sys_user_role` VALUES ('10', '000237f1908a47fcbe08c8f6a429ac55', '1');
INSERT INTO `sys_user_role` VALUES ('11', '5c7ac09854aa73ca015529d499851194', '1');
INSERT INTO `sys_user_role` VALUES ('12', '5c7ac09854aa73ca015529d595651197', '1');
INSERT INTO `sys_user_role` VALUES ('13', '5c7ac09854aa73ca015529d689f9119a', '1');
INSERT INTO `sys_user_role` VALUES ('14', '5cb19ba84b4742d39f591006899ec16d', '1');
INSERT INTO `sys_user_role` VALUES ('15', 'wsgdj15925122071', '1');

-- ----------------------------
-- Table structure for `tb_alarm_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_alarm_info`;
CREATE TABLE `tb_alarm_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_id` int(11) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `alarm_level` smallint(6) DEFAULT NULL COMMENT '报警等级（1-error,2-warn,3-info）',
  `alarm_desc` varchar(512) DEFAULT '' COMMENT '报警信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='报警信息表';

-- ----------------------------
-- Records of tb_alarm_info
-- ----------------------------
INSERT INTO `tb_alarm_info` VALUES ('14', '50', '2021-04-26 14:40:50', '1', '\"http-nio-80\": 大于10秒(最长响应时间: 1881 吞吐量: 2280 错误数: 1872)');
INSERT INTO `tb_alarm_info` VALUES ('36', '105', '2021-04-27 11:03:36', '1', '/mnt: 大于99%(Size_GB 622M Used_GB 622M Free_GB 0)');
INSERT INTO `tb_alarm_info` VALUES ('37', '104', '2021-04-27 11:05:36', '1', 'Active: 包含inactive');
INSERT INTO `tb_alarm_info` VALUES ('46', '158', '2021-04-29 10:13:48', '1', '\"http-nio-80\": 大于10秒(最长响应时间: 36 吞吐量: 34 错误数: 1)');

-- ----------------------------
-- Table structure for `tb_article`
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `resource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `update_time` datetime DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_article
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_asset`
-- ----------------------------
DROP TABLE IF EXISTS `tb_asset`;
CREATE TABLE `tb_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `asset_name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '资产名称',
  `asset_classify` int(11) DEFAULT 0 COMMENT '资产父分类',
  `asset_ip` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '资产IP',
  `port` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '端口',
  `reseau_id` int(11) DEFAULT NULL COMMENT '所属网格',
  `error` varchar(320) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '监控不到的原因（错误）',
  `errors_time` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '错误发生的时间',
  `available` smallint(6) DEFAULT NULL COMMENT '监控状态(0,1,2)',
  `zabbix_id` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL,
  `data_source` int(11) DEFAULT NULL COMMENT '数据来源(1-agent,2-snmp,3-ipmi,4-jmx)',
  `maintenance_time` date DEFAULT NULL COMMENT '下一次维保时间',
  `guard_advance` int(11) DEFAULT NULL COMMENT '提前预警天数',
  `org_id` int(11) DEFAULT NULL COMMENT '组织机构的ID（添加资产的人员所在的组织机构的ID）',
  PRIMARY KEY (`id`),
  KEY `asset_ip` (`asset_ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='资产表 ';

-- ----------------------------
-- Records of tb_asset
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_asset_label`
-- ----------------------------
DROP TABLE IF EXISTS `tb_asset_label`;
CREATE TABLE `tb_asset_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `label_name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '标签名',
  `label_content` text COLLATE utf8mb4_bin DEFAULT NULL COMMENT '标签内容',
  `label_desc` varchar(1024) COLLATE utf8mb4_bin DEFAULT '' COMMENT '标签描述',
  `label_belong` int(11) NOT NULL DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='标签表 ';

-- ----------------------------
-- Records of tb_asset_label
-- ----------------------------
INSERT INTO `tb_asset_label` VALUES ('1', '领用记录', 0x5B7B2276616C7565223A7B2276616C7565223A22E6989FE69C9FE4BA94222C226B6579223A302C2274696D65223A313632333232303039353639352C22617661746172223A6E756C6C7D2C2274797065223A307D2C7B2276616C7565223A7B2274657874223A22E59BBEE78987E6B58BE8AF95E9A1B5222C22696D67223A3933342C226B6579223A322C2274696D65223A313632333232333038313034392C22617661746172223A6E756C6C7D2C2274797065223A317D5D, '电视机的领用记录——电子化', '10', '0', '2021-06-09 14:28:44');
INSERT INTO `tb_asset_label` VALUES ('2', '维修记录', 0x5B7B2276616C7565223A7B2276616C7565223A22323032312D362D3132EFBC8CE78E8B7878EFBC8CE69BB4E68DA2E794B5E6BA90222C226B6579223A302C2274696D65223A313632333930323633383237312C22617661746172223A6E756C6C7D2C2274797065223A307D2C7B2276616C7565223A7B2276616C7565223A22323032312D362D3132EFBC8CE69D8E7878EFBC8CE69BB4E68DA2E794B5E6BA9032222C226B6579223A312C2274696D65223A313632333930323636313230372C22617661746172223A6E756C6C7D2C2274797065223A307D5D, '', '20', '2', '2021-06-17 12:04:38');

-- ----------------------------
-- Table structure for `tb_classify`
-- ----------------------------
DROP TABLE IF EXISTS `tb_classify`;
CREATE TABLE `tb_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `classify_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '分类名称',
  `classify_desc` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '分类描述',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级分类',
  `create_time` datetime DEFAULT NULL,
  `classify_icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `monitor_type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='资产分类表 ';

-- ----------------------------
-- Records of tb_classify
-- ----------------------------
INSERT INTO `tb_classify` VALUES ('2', 'web服务器', '', '0', '2020-08-12 15:38:39', 'server', null);
INSERT INTO `tb_classify` VALUES ('3', '数据库', '', '0', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('4', '中间件', '', '0', '2020-08-12 15:38:39', 'zhongjianjian1', null);
INSERT INTO `tb_classify` VALUES ('5', '网络设备', '', '0', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('6', '存储设备', '', '0', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('7', '安全设备', '', '0', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('13', 'Windows', '', '2', '2020-08-12 15:38:39', 'server-Windows', '4');
INSERT INTO `tb_classify` VALUES ('14', 'AIX', '', '2', '2020-08-12 15:38:39', 'server', null);
INSERT INTO `tb_classify` VALUES ('16', 'MySQL', '', '3', '2020-08-12 15:38:39', 'database-MySQL', '3');
INSERT INTO `tb_classify` VALUES ('17', '交换机', '', '5', '2020-08-12 15:38:39', 'layer-three-switch', '2');
INSERT INTO `tb_classify` VALUES ('18', '路由器', '', '5', '2020-08-12 15:38:39', 'switch', null);
INSERT INTO `tb_classify` VALUES ('19', '防火墙', '', '7', '2020-08-12 15:38:39', 'firewall', null);
INSERT INTO `tb_classify` VALUES ('30', '磁盘阵列', '', '6', '2020-08-12 15:38:39', 'server-1', null);
INSERT INTO `tb_classify` VALUES ('31', '虚拟带库', '', '6', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('32', '物理带库', '', '6', '2020-08-12 15:38:39', null, null);
INSERT INTO `tb_classify` VALUES ('33', 'IPS', '', '7', '2020-08-12 15:38:39', 'router', null);
INSERT INTO `tb_classify` VALUES ('34', 'Tomcat', '', '4', '2020-08-12 15:38:39', 'middleware-Tomcat', '5');
INSERT INTO `tb_classify` VALUES ('35', 'ORACLE', '', '3', '2020-08-12 15:38:39', 'database-ORACLE', '8');
INSERT INTO `tb_classify` VALUES ('40', '应用系统', ' ', '0', '2021-01-16 18:12:00', 'application-system', '6');
INSERT INTO `tb_classify` VALUES ('57', '远程控制卡', '', '0', null, 'wangka', '7');
INSERT INTO `tb_classify` VALUES ('58', 'Linux', '', '2', null, 'server-Linux', '1');
INSERT INTO `tb_classify` VALUES ('64', '经纬度', '', '57', null, 'wangka', '78');
INSERT INTO `tb_classify` VALUES ('65', '人脸识别', '', '57', null, 'wangka', '79');
INSERT INTO `tb_classify` VALUES ('66', '数据链路', '', '57', null, 'wangka', '77');
INSERT INTO `tb_classify` VALUES ('67', '达梦', '', '3', null, 'database-DM', '10');
INSERT INTO `tb_classify` VALUES ('69', '金蝶AAS', '', '4', null, 'zhongjianjian1', '9');
INSERT INTO `tb_classify` VALUES ('70', '医疗设备', '', '0', null, 'zhongjianjian1', null);
INSERT INTO `tb_classify` VALUES ('71', '物联网设备', '', '0', null, 'wangka', null);
INSERT INTO `tb_classify` VALUES ('89', '基础设施', '', '0', null, 'dalou', null);
INSERT INTO `tb_classify` VALUES ('109', '建筑', '', '89', null, 'medical-in-hospital', null);
INSERT INTO `tb_classify` VALUES ('113', '卫计委', '', '70', null, 'medical-Outpatient-service', null);
INSERT INTO `tb_classify` VALUES ('114', '医保', '', '70', null, 'medical-Health-care', null);
INSERT INTO `tb_classify` VALUES ('115', '数据库审计', '', '3', null, 'database-DM', null);
INSERT INTO `tb_classify` VALUES ('118', '网闸', '', '5', null, 'medical-wangzha', null);
INSERT INTO `tb_classify` VALUES ('119', 'CT', '', '70', null, 'medical-CT', null);
INSERT INTO `tb_classify` VALUES ('120', 'CR', '', '70', null, 'medical-CR', null);
INSERT INTO `tb_classify` VALUES ('121', 'DSA', '', '70', null, 'medical-DSA', null);
INSERT INTO `tb_classify` VALUES ('122', 'JOB', '', '70', null, 'medical-JOB', null);
INSERT INTO `tb_classify` VALUES ('123', 'MRI', '', '70', null, 'medical-MRI', null);
INSERT INTO `tb_classify` VALUES ('124', 'NUM', '', '70', null, 'medical-NUM', null);
INSERT INTO `tb_classify` VALUES ('126', '医院大楼', '', '89', null, 'medical-hospital', null);
INSERT INTO `tb_classify` VALUES ('127', '堡垒机器', '', '3', null, 'server', null);
INSERT INTO `tb_classify` VALUES ('132', 'Juniper', '', '17', null, 'switch', '21');
INSERT INTO `tb_classify` VALUES ('133', 'Enterasys', '', '17', null, 'switch', '22');
INSERT INTO `tb_classify` VALUES ('136', 'Huawei', '', '17', null, 'layer-three-switch', '23');
INSERT INTO `tb_classify` VALUES ('137', 'Cisco', '', '17', null, 'layer-three-switch', '25');
INSERT INTO `tb_classify` VALUES ('139', 'DPtech', '', '17', null, 'switch', '24');

-- ----------------------------
-- Table structure for `tb_connect`
-- ----------------------------
DROP TABLE IF EXISTS `tb_connect`;
CREATE TABLE `tb_connect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT 0,
  `target_id` int(11) DEFAULT NULL,
  `connect_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_connect
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_home`
-- ----------------------------
DROP TABLE IF EXISTS `tb_home`;
CREATE TABLE `tb_home` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '图片',
  `title` varchar(64) DEFAULT '' COMMENT '名字',
  `sort` smallint(6) DEFAULT NULL COMMENT '排序',
  `description` varchar(256) DEFAULT '' COMMENT '描述信息',
  `type` smallint(11) DEFAULT NULL COMMENT '类别（1-banner，2-业务系统，3-软件，4-文件）',
  `url` varchar(128) DEFAULT NULL COMMENT '跳转链接',
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_home
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_monitor_data`
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitor_data`;
CREATE TABLE `tb_monitor_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_id` int(11) NOT NULL COMMENT '监控项ID',
  `time` datetime NOT NULL COMMENT '采集时间',
  `key_name` varchar(1024) DEFAULT '' COMMENT '图表展示的名字（英文）',
  `value` varchar(2048) DEFAULT '' COMMENT '值',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `info` varchar(2048) DEFAULT '' COMMENT '额外信息',
  `alarm_status` smallint(6) DEFAULT NULL COMMENT '数据的报警状态（0-正常，1,2,3——同报警的级别）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控数据';

-- ----------------------------
-- Records of tb_monitor_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_monitor_item`
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitor_item`;
CREATE TABLE `tb_monitor_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '监控项的id',
  `item_name` varchar(64) DEFAULT NULL COMMENT '脚本名称',
  `item_title` varchar(256) DEFAULT NULL COMMENT '监控项名称',
  `cycle_time` int(5) DEFAULT NULL COMMENT '采集周期（分钟）',
  `store_time` int(11) DEFAULT NULL COMMENT '存储时长（天）',
  `item_status` smallint(6) DEFAULT NULL COMMENT '监控项状态（启用—1、停止—0）',
  `error_threshold` varchar(64) DEFAULT NULL COMMENT '阀值（严重）',
  `warn_threshold` varchar(64) DEFAULT NULL COMMENT '阀值（警告）',
  `info_threshold` varchar(64) DEFAULT NULL COMMENT '阀值（一般）',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产ID',
  PRIMARY KEY (`id`),
  KEY `asset_id` (`asset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控项';

-- ----------------------------
-- Records of tb_monitor_item
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工单id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(1024) DEFAULT '' COMMENT '描述信息',
  `user_id` int(11) NOT NULL COMMENT '用户id（创建人、处理人）',
  `send_time` datetime NOT NULL COMMENT '时间（创建时间/处理时间）',
  `annex` varchar(64) DEFAULT '' COMMENT '附件',
  `belong_object` varchar(128) DEFAULT '' COMMENT '工单所属对象（网格/资产）',
  `belong_order` int(11) DEFAULT NULL COMMENT '所属的订单（处理内容）',
  `receiver_id` varchar(128) DEFAULT NULL COMMENT '接收人',
  `appraisal` varchar(256) DEFAULT NULL COMMENT '评价内容',
  `status` smallint(6) NOT NULL DEFAULT 0 COMMENT '状态（0-待处理，1-处理中，2-待评价，3-已关闭）',
  `score` smallint(6) DEFAULT NULL COMMENT '评价打分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_reseau`
-- ----------------------------
DROP TABLE IF EXISTS `tb_reseau`;
CREATE TABLE `tb_reseau` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reseau_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '网格名称',
  `reseau_desc` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '网格描述',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '网格负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='网格表 ';

-- ----------------------------
-- Records of tb_reseau
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_risk_shell_lib`
-- ----------------------------
DROP TABLE IF EXISTS `tb_risk_shell_lib`;
CREATE TABLE `tb_risk_shell_lib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_name` varchar(108) NOT NULL DEFAULT '' COMMENT '风险指令的名称',
  `risk_level` varchar(2) DEFAULT NULL COMMENT '风险等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='风险指令库';

-- ----------------------------
-- Records of tb_risk_shell_lib
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_ssh_record`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ssh_record`;
CREATE TABLE `tb_ssh_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT NULL COMMENT '资产id',
  `asset_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '资产IP',
  `user_id` int(11) NOT NULL COMMENT '操作者id',
  `user_name` varchar(30) DEFAULT '' COMMENT '操作者名字',
  `ip_address` varchar(20) DEFAULT '' COMMENT '登陆的IP地址',
  `opt_order` varchar(2048) DEFAULT NULL COMMENT '操作指令',
  `opt_shot` longtext DEFAULT NULL COMMENT '操作截图（base64）',
  `login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `logout_time` datetime DEFAULT NULL,
  `state` tinyint(4) DEFAULT 1 COMMENT '状态（1、登陆失败，2，在线，3，下线）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ssh_record
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_topological`
-- ----------------------------
DROP TABLE IF EXISTS `tb_topological`;
CREATE TABLE `tb_topological` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拓扑图id',
  `flow_data` longtext NOT NULL COMMENT '流程数据',
  `name` varchar(128) NOT NULL COMMENT '拓扑图名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_topological
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_unit_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_unit_info`;
CREATE TABLE `tb_unit_info` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tel` varchar(32) DEFAULT NULL COMMENT '电话',
  `copyright` varchar(128) DEFAULT NULL COMMENT '版权信息',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单位信息';

-- ----------------------------
-- Records of tb_unit_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_upload_file`
-- ----------------------------
DROP TABLE IF EXISTS `tb_upload_file`;
CREATE TABLE `tb_upload_file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `create_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `new_file_name` varchar(128) DEFAULT NULL COMMENT '新的文件名',
  `original_file_name` varchar(128) DEFAULT NULL COMMENT '原始文件名',
  `suffix` varchar(10) DEFAULT NULL COMMENT '后缀',
  `file_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=972 DEFAULT CHARSET=utf8 COMMENT='上传的文件 ';

-- ----------------------------
-- Records of tb_upload_file
-- ----------------------------
