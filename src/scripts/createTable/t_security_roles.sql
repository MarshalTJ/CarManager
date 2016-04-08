/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-04-08 09:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_security_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_security_roles`;
CREATE TABLE `t_security_roles` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `fauthority` varchar(50) DEFAULT NULL,
  `fdescrition` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_security_roles
-- ----------------------------
INSERT INTO `t_security_roles` VALUES ('1', 'ROLE_USER', 'user');
