/*
Navicat MySQL Data Transfer

Source Server         : win
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : bug

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-01-03 23:18:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bug_detail
-- ----------------------------
DROP TABLE IF EXISTS `bug_detail`;
CREATE TABLE `bug_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `severity` int(11) NOT NULL COMMENT '严重性  1文字错误  2次要错误 3严重错误',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reportUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '报告人',
  `createDte` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bug_detail
-- ----------------------------
INSERT INTO `bug_detail` VALUES ('1', '1', '1', '文字错误', '张三', '2019-01-01 13:58:52');
INSERT INTO `bug_detail` VALUES ('2', '2', '3', '无法找回密码', '李四', '2019-12-03 13:59:51');
INSERT INTO `bug_detail` VALUES ('3', '3', '2', '无法发送图片', '王五', '2019-12-02 14:01:07');
INSERT INTO `bug_detail` VALUES ('4', '1', '2', '页面错误', '王明', '2019-11-30 14:01:57');
INSERT INTO `bug_detail` VALUES ('5', '1', '3', '无法登录', 'admin', '2019-10-01 14:03:02');
INSERT INTO `bug_detail` VALUES ('6', '3', '1', '测试', 'admin', '2019-12-04 20:07:33');
INSERT INTO `bug_detail` VALUES ('10', '3', '3', '测试2', 'admin', '2019-12-04 20:28:25');
INSERT INTO `bug_detail` VALUES ('11', '2', '3', '测试3', 'admin', '2019-12-05 08:28:16');
INSERT INTO `bug_detail` VALUES ('12', '3', '1', '测试4', 'admin', '2019-12-05 11:55:01');

-- ----------------------------
-- Table structure for bug_project
-- ----------------------------
DROP TABLE IF EXISTS `bug_project`;
CREATE TABLE `bug_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bug_project
-- ----------------------------
INSERT INTO `bug_project` VALUES ('1', '图书管理系统');
INSERT INTO `bug_project` VALUES ('2', '员工管理系统');
INSERT INTO `bug_project` VALUES ('3', '网页即时通讯');
