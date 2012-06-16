/*
Navicat MySQL Data Transfer

Source Server         : trinity
Source Server Version : 50509
Source Host           : localhost:3306
Source Database       : characters2

Target Server Type    : MYSQL
Target Server Version : 50509
File Encoding         : 65001

Date: 2012-06-16 11:23:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `warden_action`
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warden_action
-- ----------------------------
