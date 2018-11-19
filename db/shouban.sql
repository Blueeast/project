/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-17 17:46:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shouban`
-- ----------------------------
DROP TABLE IF EXISTS `shouban`;
CREATE TABLE `shouban` (
  `id` int(11) NOT NULL auto_increment,
  `background` varchar(255) default NULL,
  `index` char(255) character set utf8 default 'shouban',
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
-- Records of shouban
-- ----------------------------
INSERT INTO `shouban` VALUES ('1', 'http://localhost:1123/images/main/shouban.jpg', 'shouban', 'http://localhost:1123/images/main/shouban1.jpg', ' 玄机出品 秦时明月 珍藏限量版少司命BJD娃娃 鬼契人型人偶 包邮 ', '3880', '4999', '53', null, null, null, null);
INSERT INTO `shouban` VALUES ('2', '', 'shouban', 'http://localhost:1123/images/main/shouban2.jpg', ' 玄机出品 武庚纪  亚克力人物立牌动漫人物周边百货礼物 ', '39', '99', '12', null, null, null, null);
INSERT INTO `shouban` VALUES ('3', '', 'shouban', 'http://localhost:1123/images/main/shouban3.jpg', ' 玄机出品 秦时明月 沉沙手办盖聂少羽天明卫庄 动漫手办公仔 ', '38', '88', '30', null, null, null, null);
INSERT INTO `shouban` VALUES ('4', '', 'shouban', 'http://localhost:1123/images/main/shouban4.jpg', ' 玄机出品 秦时明月 Q版手办 模型公仔少司命颜路张良高月汽车摆件 ', '49', '99', '124', null, null, null, null);
INSERT INTO `shouban` VALUES ('5', '', 'shouban', 'http://localhost:1123/images/main/shouban5.jpg', ' 玄机出品 武庚纪动漫兵器武器模型纣王剑模型 ', '49.9', '199', '36', null, null, null, null);
INSERT INTO `shouban` VALUES ('6', '', 'shouban', 'http://localhost:1123/images/main/shouban6.jpg', ' 玄机出品 秦时明月q版手办第二弹扭蛋盒蛋模型雪女张良星魂 ', '68', '88', '162', null, null, null, null);
INSERT INTO `shouban` VALUES ('7', '', 'shouban', 'http://localhost:1123/images/main/shouban7.jpg', ' 玄机出品 秦时明月q版手办扭蛋盒蛋模型端木蓉少司命高渐离 ', '68', '188', '536', null, null, null, null);
INSERT INTO `shouban` VALUES ('8', '', 'shouban', 'http://localhost:1123/images/main/shouban8.jpg', ' 玄机出品 秦时明月 亚克力人物立牌动漫人物周边百货礼物 ', '49', '99', '208', null, null, null, null);
