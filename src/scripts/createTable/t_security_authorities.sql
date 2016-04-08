/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-04-08 09:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_security_authorities
-- ----------------------------
DROP TABLE IF EXISTS `t_security_authorities`;
CREATE TABLE `t_security_authorities` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `fuserid` bigint(20) DEFAULT NULL,
  `froleid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_security_authorities
-- ----------------------------
INSERT INTO `t_security_authorities` VALUES ('1', '1', '1');
