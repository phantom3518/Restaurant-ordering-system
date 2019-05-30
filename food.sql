/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : food

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-05-30 14:01:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `byr_buyer`
-- ----------------------------
DROP TABLE IF EXISTS `byr_buyer`;
CREATE TABLE `byr_buyer` (
  `byr_id` int(11) NOT NULL AUTO_INCREMENT,
  `byr_no` varchar(10) NOT NULL,
  `byr_name` varchar(30) NOT NULL,
  `byr_pswd` varchar(32) NOT NULL,
  `byr_tel` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`byr_id`),
  UNIQUE KEY `byr_no` (`byr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of byr_buyer
-- ----------------------------
INSERT INTO `byr_buyer` VALUES ('1', 'tutu', 'tsd', '123456', '18888646393');
INSERT INTO `byr_buyer` VALUES ('2', '001', 'czq', '123456', '18546558956');

-- ----------------------------
-- Table structure for `foodlist`
-- ----------------------------
DROP TABLE IF EXISTS `foodlist`;
CREATE TABLE `foodlist` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(20) DEFAULT NULL,
  `food_price` varchar(20) DEFAULT NULL,
  `food_img` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodlist
-- ----------------------------
INSERT INTO `foodlist` VALUES ('1', '菲力牛排', '45', 'img/west/fl.jpg');
INSERT INTO `foodlist` VALUES ('2', 'T骨牛排', '38', 'img/west/tg.jpg');
INSERT INTO `foodlist` VALUES ('3', '西冷牛排', '35', 'img/west/xl.jpg');
INSERT INTO `foodlist` VALUES ('4', '肉眼牛排', '40', 'img/west/ry.jpg');
INSERT INTO `foodlist` VALUES ('5', 'Spaghetti长形意大利面', '18', 'img/west/01.jpg');
INSERT INTO `foodlist` VALUES ('6', 'Capellini天使的发丝', '25', 'img/west/02.jpg');
INSERT INTO `foodlist` VALUES ('7', 'Penne鹅毛笔通心粉', '20', 'img/west/03.jpg');
INSERT INTO `foodlist` VALUES ('8', 'Farfalle蝴蝶面', '30', 'img/west/04.jpg');

-- ----------------------------
-- Table structure for `food_ad`
-- ----------------------------
DROP TABLE IF EXISTS `food_ad`;
CREATE TABLE `food_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(20) DEFAULT NULL,
  `food_price` varchar(20) DEFAULT NULL,
  `food_img` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `food_num` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_ad
-- ----------------------------
INSERT INTO `food_ad` VALUES ('53', 'T骨牛排', '38', 'img/west/tg.jpg', 'tutu', '1');
INSERT INTO `food_ad` VALUES ('58', 'T骨牛排', '38', 'img/west/tg.jpg', '001', '1');
INSERT INTO `food_ad` VALUES ('59', '菲力牛排', '45', 'img/west/fl.jpg', '001', '6');
INSERT INTO `food_ad` VALUES ('60', '肉眼牛排', '40', 'img/west/ry.jpg', '001', '1');
INSERT INTO `food_ad` VALUES ('61', 'Penne鹅毛笔通心粉', '20', 'img/west/03.jpg', 'tutu', '3');
INSERT INTO `food_ad` VALUES ('62', '菲力牛排', '45', 'img/west/fl.jpg', 'tutu', '3');

-- ----------------------------
-- Table structure for `mm`
-- ----------------------------
DROP TABLE IF EXISTS `mm`;
CREATE TABLE `mm` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm
-- ----------------------------
INSERT INTO `mm` VALUES ('001', '123');
INSERT INTO `mm` VALUES ('tutu', '123');

-- ----------------------------
-- Table structure for `xx`
-- ----------------------------
DROP TABLE IF EXISTS `xx`;
CREATE TABLE `xx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `s_pass` varchar(20) DEFAULT NULL,
  `s_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx
-- ----------------------------
INSERT INTO `xx` VALUES ('1', 'tutu', '123', '18888646393');
INSERT INTO `xx` VALUES ('2', '001', '123', '18212365478');
INSERT INTO `xx` VALUES ('60', 'tutu', '123456', '18888646393');
