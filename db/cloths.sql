/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-17 17:46:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cloths`
-- ----------------------------
DROP TABLE IF EXISTS `cloths`;
CREATE TABLE `cloths` (
  `id` int(11) NOT NULL auto_increment,
  `background` varchar(255) NOT NULL,
  `index` char(255) character set utf8 default 'cloths',
  `image` varchar(255) NOT NULL,
  `description` varchar(255) character set utf8 default NULL,
  `nowprice` float default NULL,
  `origprice` float default NULL,
  `num` int(11) default NULL,
  `image1` varchar(255) default NULL,
  `image2` varchar(255) default NULL,
  `image3` varchar(255) default NULL,
  `image4` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cloths
-- ----------------------------
INSERT INTO `cloths` VALUES ('1', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth1.jpg', ' 玄机出品  武庚纪 哇袜列袜子短袜棉袜礼物 白菜纣王妲己武庚 ', '19.8', '39.8', '6', null, null, null, null);
INSERT INTO `cloths` VALUES ('2', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth2.jpg', ' 玄机出品 秦时明月 系列男士内裤 短裤平角 动漫周边服饰礼物 ', '39', '59', '10', null, null, null, null);
INSERT INTO `cloths` VALUES ('3', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth3.jpg', ' 秦时明月官方正版王道帽/侠道帽 古风休闲防晒遮阳棒球帽动漫周边 ', '49', '99', '3', null, null, null, null);
INSERT INTO `cloths` VALUES ('4', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth4.jpg', ' 玄机出品 秦时明月端木蓉盖聂动漫人物周边围巾动漫周边礼品 ', '68', '98', '10', null, null, null, null);
INSERT INTO `cloths` VALUES ('5', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth5.jpg', ' 玄机出品 秦时明月 芳华初梦星魂指环戒指 阴阳家925纯银动漫饰品 ', '69', '199', '50', null, null, null, null);
INSERT INTO `cloths` VALUES ('6', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth6.jpg', ' 秦时明月官方正版平沿帽古风帽子工艺刺绣休闲防晒动漫周边帽 ', '78', '288', '136', null, null, null, null);
INSERT INTO `cloths` VALUES ('7', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth7.jpg', ' 玄机出品 秦时明月 貔貅卡通女t恤衫秋季龙腾万里动漫国漫周边 ', '89', '189', '520', null, null, null, null);
INSERT INTO `cloths` VALUES ('8', 'http://localhost:1123/images/main/cloths.jpg', 'cloths', 'http://localhost:1123/images/main/cloth8.jpg', ' 玄机出品 秦时明月 团子百家同窗男女t恤衫 可爱情侣装动漫卡通 ', '89', '118', '1314', null, null, null, null);
