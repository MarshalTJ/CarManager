/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-04-08 09:46:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_security_users
-- ----------------------------
DROP TABLE IF EXISTS `t_security_users`;
CREATE TABLE `t_security_users` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `fusername` varchar(100) DEFAULT NULL,
  `fpassword` varchar(300) DEFAULT NULL,
  `fenabled` varchar(1) NOT NULL DEFAULT '1',
  `fcompanyid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_security_users
-- ----------------------------
INSERT INTO `t_security_users` VALUES ('1', '13652398890', '123', '1', '1');
