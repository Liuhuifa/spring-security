/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : novel

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 03/05/2020 17:28:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for novel_book
-- ----------------------------
DROP TABLE IF EXISTS `novel_book`;
CREATE TABLE `novel_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `writer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `money` float NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `is_putway` int(1) NOT NULL,
  `sore_num` int(11) NOT NULL,
  `sore` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_book
-- ----------------------------
INSERT INTO `novel_book` VALUES (1, '红楼梦', '曹雪芹', 'http://www.baidu.com', 100, '2020-04-01 22:03:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (3, '济南的夏天', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (4, '济南的秋天', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (5, '济南的春天', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (6, '济南的春天', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (7, '济南的四季', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (8, '冬天来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (9, '秋天来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (10, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (11, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (12, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (13, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (14, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (15, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (16, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (17, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (18, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (19, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (20, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (21, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (22, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (23, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (24, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);
INSERT INTO `novel_book` VALUES (25, '老子来了', '老舍', 'http://www.baidu.com', 200, '2020-04-02 02:33:00', 1, 0, 0);

-- ----------------------------
-- Table structure for novel_book_type
-- ----------------------------
DROP TABLE IF EXISTS `novel_book_type`;
CREATE TABLE `novel_book_type`  (
  `book_id` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  UNIQUE INDEX `FK_novel_book_key`(`book_id`, `type_id`) USING BTREE,
  INDEX `FK_novel_type_key`(`type_id`) USING BTREE,
  CONSTRAINT `FK_novel_book_key` FOREIGN KEY (`book_id`) REFERENCES `novel_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_novel_type_key` FOREIGN KEY (`type_id`) REFERENCES `novel_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '小说类型关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_book_type
-- ----------------------------

-- ----------------------------
-- Table structure for novel_carousel
-- ----------------------------
DROP TABLE IF EXISTS `novel_carousel`;
CREATE TABLE `novel_carousel`  (
  `id` int(11) NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carousel_sid` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for novel_evalueate
-- ----------------------------
DROP TABLE IF EXISTS `novel_evalueate`;
CREATE TABLE `novel_evalueate`  (
  `id` int(11) NOT NULL,
  `evaluate_uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `flag` int(1) NOT NULL,
  `is_good` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_evalueate_sid_key`(`sid`) USING BTREE,
  INDEX `FK_evalueate_uid_key`(`evaluate_uid`) USING BTREE,
  CONSTRAINT `FK_evalueate_sid_key` FOREIGN KEY (`sid`) REFERENCES `novel_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_evalueate_uid_key` FOREIGN KEY (`evaluate_uid`) REFERENCES `novel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_evalueate
-- ----------------------------

-- ----------------------------
-- Table structure for novel_notice
-- ----------------------------
DROP TABLE IF EXISTS `novel_notice`;
CREATE TABLE `novel_notice`  (
  `id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `place` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_notice
-- ----------------------------

-- ----------------------------
-- Table structure for novel_order_form
-- ----------------------------
DROP TABLE IF EXISTS `novel_order_form`;
CREATE TABLE `novel_order_form`  (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `order_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `price` float NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_order_uid_key`(`uid`) USING BTREE,
  CONSTRAINT `FK_order_uid_key` FOREIGN KEY (`uid`) REFERENCES `novel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_order_form
-- ----------------------------

-- ----------------------------
-- Table structure for novel_order_form_info
-- ----------------------------
DROP TABLE IF EXISTS `novel_order_form_info`;
CREATE TABLE `novel_order_form_info`  (
  `id` int(11) NOT NULL,
  `shopping_id` int(11) NOT NULL,
  `info_order_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_order_info_oid_key`(`info_order_id`) USING BTREE,
  INDEX `FK_order_info_sid_key`(`shopping_id`) USING BTREE,
  CONSTRAINT `FK_order_info_oid_key` FOREIGN KEY (`info_order_id`) REFERENCES `novel_order_form` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_order_info_sid_key` FOREIGN KEY (`shopping_id`) REFERENCES `novel_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_order_form_info
-- ----------------------------

-- ----------------------------
-- Table structure for novel_shipping_info
-- ----------------------------
DROP TABLE IF EXISTS `novel_shipping_info`;
CREATE TABLE `novel_shipping_info`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `consignee` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `district` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_default` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_user_address_key`(`user_id`) USING BTREE,
  CONSTRAINT `FK_user_address_key` FOREIGN KEY (`user_id`) REFERENCES `novel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_shipping_info
-- ----------------------------

-- ----------------------------
-- Table structure for novel_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `novel_shopping_cart`;
CREATE TABLE `novel_shopping_cart`  (
  `id` int(11) NOT NULL,
  `novel_uid` int(11) NOT NULL,
  `novel_bid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_shopping_bid_key`(`novel_bid`) USING BTREE,
  INDEX `FK_shopping_uid_key`(`novel_uid`) USING BTREE,
  CONSTRAINT `FK_shopping_bid_key` FOREIGN KEY (`novel_bid`) REFERENCES `novel_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_shopping_uid_key` FOREIGN KEY (`novel_uid`) REFERENCES `novel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for novel_sore
-- ----------------------------
DROP TABLE IF EXISTS `novel_sore`;
CREATE TABLE `novel_sore`  (
  `id` int(11) NOT NULL,
  `sore_uid` int(11) NOT NULL,
  `sore_sid` int(11) NOT NULL,
  `sore` float NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sore_sid_key`(`sore_sid`) USING BTREE,
  INDEX `FK_sore_uid_key`(`sore_uid`) USING BTREE,
  CONSTRAINT `FK_sore_sid_key` FOREIGN KEY (`sore_sid`) REFERENCES `novel_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sore_uid_key` FOREIGN KEY (`sore_uid`) REFERENCES `novel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_sore
-- ----------------------------

-- ----------------------------
-- Table structure for novel_type
-- ----------------------------
DROP TABLE IF EXISTS `novel_type`;
CREATE TABLE `novel_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_type
-- ----------------------------

-- ----------------------------
-- Table structure for novel_user
-- ----------------------------
DROP TABLE IF EXISTS `novel_user`;
CREATE TABLE `novel_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varbinary(255) NOT NULL,
  `nick_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `real_name` varbinary(5) NOT NULL,
  `phone` varbinary(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wx_open_id` varbinary(255) NULL DEFAULT NULL,
  `qq_open_id` varbinary(255) NULL DEFAULT NULL,
  `vip` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商城用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of novel_user
-- ----------------------------

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_used` timestamp(0) NOT NULL,
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for sys_per
-- ----------------------------
DROP TABLE IF EXISTS `sys_per`;
CREATE TABLE `sys_per`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `per_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限名字',
  `per` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限',
  `per_ico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限图标',
  `compoment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件名字',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求路径',
  `type` int(1) NULL DEFAULT NULL COMMENT '0 菜单 1按钮',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父类id',
  `is_del` int(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_per
-- ----------------------------
INSERT INTO `sys_per` VALUES (1, '系统管理', 'PER_SYSTEM', 'el-icon-setting\r\nel-icon-setting\r\nel-icon-setting', '', '/sys', 0, 0, 0);
INSERT INTO `sys_per` VALUES (2, '用户管理', 'PER_SYSUSER', NULL, 'SysUser', '/sys/user', 0, 1, 0);
INSERT INTO `sys_per` VALUES (3, '角色管理', 'PER_SYSROLE', NULL, 'SysRole', '/sys/role', 0, 1, 0);
INSERT INTO `sys_per` VALUES (4, '权限管理', 'PER_SYSPER', NULL, 'SysPer', '/sys/per', 0, 1, 0);
INSERT INTO `sys_per` VALUES (5, '人事管理', 'PER_PERSONNEL', 'el-icon-user', NULL, '/personnel', 0, 0, 0);
INSERT INTO `sys_per` VALUES (6, '基本资料', 'PER_BASIC_DATA', NULL, 'DataBasic', '/personnel/basic', 0, 5, 0);
INSERT INTO `sys_per` VALUES (7, '高级资料', 'PER_HIGH_DATA', NULL, 'DataHigh', '/personnel/high', 0, 5, 0);
INSERT INTO `sys_per` VALUES (8, '添加', 'ADD', NULL, NULL, NULL, 1, 2, 0);
INSERT INTO `sys_per` VALUES (9, '财务管理', 'MONEY_MANAGER', 'el-icon-money', '', '', 0, 0, 0);
INSERT INTO `sys_per` VALUES (10, '修改', 'MODIFY', '', '', '', 1, 2, 0);
INSERT INTO `sys_per` VALUES (11, '添加', 'ADD', '', '', '', 1, 3, 0);
INSERT INTO `sys_per` VALUES (12, '查看', 'LOOK', NULL, NULL, NULL, 1, 0, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名',
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色',
  `role_ico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色图标',
  `is_del` int(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'ADMIN', 'el-icon-ice-cream-round', 0);
INSERT INTO `sys_role` VALUES (2, '管理员', 'ROOT', 'el-icon-cold-drink', 0);
INSERT INTO `sys_role` VALUES (3, '员工', 'STAFF', 'el-icon-user', 0);
INSERT INTO `sys_role` VALUES (8, '主管', 'ZHUGUAN', 'el-icon-goods', 0);
INSERT INTO `sys_role` VALUES (10, '总经理', 'MANAGER', 'el-icon-coordinate', 0);
INSERT INTO `sys_role` VALUES (11, '人事经理', 'MANAGER_VHR', 'el-icon-magic-stick', 0);

-- ----------------------------
-- Table structure for sys_role_per
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_per`;
CREATE TABLE `sys_role_per`  (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `per_id` int(11) NOT NULL COMMENT '权限id',
  UNIQUE INDEX `rid_pid_index`(`role_id`, `per_id`) USING BTREE,
  INDEX `role_per_pid`(`per_id`) USING BTREE,
  CONSTRAINT `role_per_pid` FOREIGN KEY (`per_id`) REFERENCES `sys_per` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_per_rid` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_per
-- ----------------------------
INSERT INTO `sys_role_per` VALUES (1, 1);
INSERT INTO `sys_role_per` VALUES (2, 1);
INSERT INTO `sys_role_per` VALUES (3, 1);
INSERT INTO `sys_role_per` VALUES (8, 1);
INSERT INTO `sys_role_per` VALUES (10, 1);
INSERT INTO `sys_role_per` VALUES (1, 2);
INSERT INTO `sys_role_per` VALUES (2, 2);
INSERT INTO `sys_role_per` VALUES (8, 2);
INSERT INTO `sys_role_per` VALUES (10, 2);
INSERT INTO `sys_role_per` VALUES (1, 3);
INSERT INTO `sys_role_per` VALUES (10, 3);
INSERT INTO `sys_role_per` VALUES (1, 4);
INSERT INTO `sys_role_per` VALUES (1, 5);
INSERT INTO `sys_role_per` VALUES (10, 5);
INSERT INTO `sys_role_per` VALUES (11, 5);
INSERT INTO `sys_role_per` VALUES (1, 6);
INSERT INTO `sys_role_per` VALUES (10, 6);
INSERT INTO `sys_role_per` VALUES (11, 6);
INSERT INTO `sys_role_per` VALUES (1, 7);
INSERT INTO `sys_role_per` VALUES (10, 7);
INSERT INTO `sys_role_per` VALUES (11, 7);
INSERT INTO `sys_role_per` VALUES (1, 8);
INSERT INTO `sys_role_per` VALUES (2, 8);
INSERT INTO `sys_role_per` VALUES (1, 10);
INSERT INTO `sys_role_per` VALUES (2, 10);
INSERT INTO `sys_role_per` VALUES (1, 11);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `real_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '真实姓名',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `is_lock` int(1) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定',
  `is_del` int(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (6, 'admin', '$2a$10$YKT1CN95.0/sAG6hvE7mh.eWrKhYprvAH7lQbrtutSpquNd3jU4Yq', '刘会发', '1490030544@qq.com', NULL, '13091326585', 0, 0, NULL);
INSERT INTO `sys_user` VALUES (12, 'root', '$2a$10$ALi8Y9OvLUvgpRGZi14PU.g8dmMK1zaermyjCVYADxtc/rsY/2Wau', '张三', '1490030544@qq.com', NULL, '13091326585', 0, 0, NULL);
INSERT INTO `sys_user` VALUES (13, 'lhf', NULL, '刘会发', '1490030544@qq.com', NULL, '1325', 0, 1, NULL);
INSERT INTO `sys_user` VALUES (38, 'zhangduo', '$2a$10$IHHQ1.TFQasZxqAndDcG3uh6Qpbq9asmrFulS9Fpl28GL1F5y2HzK', '张铎', '623694948@qq.com', NULL, '13091326585', 1, 0, '2020-03-16 09:33:44');
INSERT INTO `sys_user` VALUES (39, 'zhangyu', '$2a$10$jf23Hn/ca5v0Sbz0I6onre9Pg06UsQPAmjG1FwUWNKlASJX7Yxoee', '张宇', '1490030544@qq.com', NULL, '13091326585', 1, 0, '2020-03-16 09:53:29');
INSERT INTO `sys_user` VALUES (40, 'jiaming', '$2a$10$bvdMJNpFAkrX1PR1piyfROArlYQRZm2ccsEh1OIwdZYv5xwt/RKqK', '佳明', '1490030544@qq.com', NULL, '13091326585', 1, 0, '2020-03-16 09:55:34');
INSERT INTO `sys_user` VALUES (41, 'cmy', '$2a$10$eX1wPttKjlThBKl9I1/WC..0D5M3YnS7uGhQ86vM6ksQKHOu9SrqK', '迟明阳', '1490030544@qq.com', NULL, '13091326585', 0, 0, '2020-03-16 10:05:45');
INSERT INTO `sys_user` VALUES (42, 'wanglinchao', '$2a$10$J2FuFtkWprt./TwHcuJxXOcj/zrvfTcOIuBDEalWvP0HqmZ9oSHqG', '王林超', '1490030544@qq.com', NULL, '13091326585', 0, 0, '2020-03-16 10:07:47');
INSERT INTO `sys_user` VALUES (43, 'zhaojiashi', '$2a$10$/m1mQToXqu/PeM1bwysYvu4wCawvXCBO6HounGTTl1jvqxCV6bwYa', '赵家诗', '1490030544@qq.com', NULL, '18032316816', 0, 0, '2020-03-16 12:32:51');
INSERT INTO `sys_user` VALUES (44, 'guoxiaoxiao', '$2a$10$wo0gIFoUw.d8XYjFIrAipeEinwT/BUwws/Zuh9eSUr5XPQKU7B/K6', '郭晓晓', '1490030544@qq.com', NULL, '13091326585', 1, 0, '2020-03-16 12:34:54');
INSERT INTO `sys_user` VALUES (45, 'guochenyang', '$2a$10$8XMITqEbMnrNT2zYXlS1UOlgoQe.IqnydyapDv78HHu3u7uSknC9i', '郭晨阳', '1490030544@qq.com', NULL, '13091326585', 0, 0, '2020-03-16 12:36:04');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  UNIQUE INDEX `uid_rid_index`(`user_id`, `role_id`) USING BTREE,
  INDEX `user_role_rid`(`role_id`) USING BTREE,
  CONSTRAINT `user_role_rid` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_uid` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (6, 1);
INSERT INTO `sys_user_role` VALUES (43, 1);
INSERT INTO `sys_user_role` VALUES (6, 2);
INSERT INTO `sys_user_role` VALUES (12, 2);
INSERT INTO `sys_user_role` VALUES (40, 2);
INSERT INTO `sys_user_role` VALUES (44, 2);
INSERT INTO `sys_user_role` VALUES (45, 2);
INSERT INTO `sys_user_role` VALUES (6, 3);
INSERT INTO `sys_user_role` VALUES (12, 3);
INSERT INTO `sys_user_role` VALUES (13, 3);
INSERT INTO `sys_user_role` VALUES (38, 3);
INSERT INTO `sys_user_role` VALUES (39, 3);
INSERT INTO `sys_user_role` VALUES (40, 3);
INSERT INTO `sys_user_role` VALUES (41, 3);
INSERT INTO `sys_user_role` VALUES (42, 3);
INSERT INTO `sys_user_role` VALUES (43, 3);
INSERT INTO `sys_user_role` VALUES (44, 3);

-- ----------------------------
-- Procedure structure for delete_book
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_book`;
delimiter ;;
CREATE PROCEDURE `delete_book`(IN book_id int)
BEGIN
	DELETE FROM novel_book WHERE id = book_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
