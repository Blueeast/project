/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-17 17:47:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) character set utf8 NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '', '', '', '0');
INSERT INTO `user` VALUES ('2', '', '', '', '0');
INSERT INTO `user` VALUES ('3', '', '', '', '0');
INSERT INTO `user` VALUES ('4', 'asd', 'asd@qq.com', 'asd', '0');
INSERT INTO `user` VALUES ('5', 'asd', '21@qq.com', '12', '0');
INSERT INTO `user` VALUES ('6', '1234', '123@qq.com', '123', '0');
INSERT INTO `user` VALUES ('7', '1234', '123@qq.com', '123', '0');
INSERT INTO `user` VALUES ('8', '1234', '123@qq.com', '123', '0');
INSERT INTO `user` VALUES ('9', '456', '456@qq.com', '123', '0');
INSERT INTO `user` VALUES ('10', 'qw', 'qw@qq.com', '123', '0');
INSERT INTO `user` VALUES ('11', 'qw', 'qw@qq.com', '123', '0');
INSERT INTO `user` VALUES ('12', 'xiaoyaojing', '2393546391@qq.com', '520520', '0');
INSERT INTO `user` VALUES ('13', 'xiaoyaojing', '2393546391@qq.com', '520520', '0');
INSERT INTO `user` VALUES ('14', '', '', '', '0');
INSERT INTO `user` VALUES ('15', '', '', '', '0');
INSERT INTO `user` VALUES ('16', '', '', '', '0');
INSERT INTO `user` VALUES ('17', '', '', '', '0');
INSERT INTO `user` VALUES ('18', '', '', '', '0');
INSERT INTO `user` VALUES ('19', '', '', '', '0');
INSERT INTO `user` VALUES ('20', '', '', '', '0');
INSERT INTO `user` VALUES ('21', '', '', '', '0');
INSERT INTO `user` VALUES ('22', '', '', '', '0');
INSERT INTO `user` VALUES ('23', '', '', '', '0');
INSERT INTO `user` VALUES ('24', '', '', '', '0');
INSERT INTO `user` VALUES ('25', '', '', '', '0');
INSERT INTO `user` VALUES ('26', '', '', '', '0');
INSERT INTO `user` VALUES ('27', '', '', '', '0');
INSERT INTO `user` VALUES ('28', '', '', '', '0');
INSERT INTO `user` VALUES ('29', '', '', '', '0');
INSERT INTO `user` VALUES ('30', '', '', '', '0');
INSERT INTO `user` VALUES ('31', '', '', '', '0');
INSERT INTO `user` VALUES ('32', '', '', '', '0');
INSERT INTO `user` VALUES ('33', '', '', '', '0');
INSERT INTO `user` VALUES ('34', '????', 'xiaoming@163.com', 'xiaoming', '0');
INSERT INTO `user` VALUES ('35', '', '', '', '0');
INSERT INTO `user` VALUES ('36', '', '', '', '0');
INSERT INTO `user` VALUES ('37', '', '', '', '0');
INSERT INTO `user` VALUES ('38', '', '', '', '0');
INSERT INTO `user` VALUES ('39', '', '', '', '0');
INSERT INTO `user` VALUES ('40', '', '', '', '0');
INSERT INTO `user` VALUES ('41', '', '', '', '0');
INSERT INTO `user` VALUES ('42', '', '', '', '0');
INSERT INTO `user` VALUES ('43', '', '', '', '0');
INSERT INTO `user` VALUES ('44', '', '', '', '0');
INSERT INTO `user` VALUES ('45', '', '', '', '0');
INSERT INTO `user` VALUES ('46', '', '', '', '0');
INSERT INTO `user` VALUES ('47', '', '', '', '0');
INSERT INTO `user` VALUES ('48', '', '', '', '0');
INSERT INTO `user` VALUES ('49', '', '', '', '0');
INSERT INTO `user` VALUES ('50', '', '', '', '0');
INSERT INTO `user` VALUES ('51', '', '', '', '0');
INSERT INTO `user` VALUES ('52', '', '', '', '0');
INSERT INTO `user` VALUES ('53', '', '', '', '0');
INSERT INTO `user` VALUES ('54', '', '', '', '0');
INSERT INTO `user` VALUES ('55', '', '', '', '0');
INSERT INTO `user` VALUES ('56', '', '', '', '0');
INSERT INTO `user` VALUES ('57', '', '', '', '0');
INSERT INTO `user` VALUES ('58', '', '', '', '0');
INSERT INTO `user` VALUES ('59', '', '', '', '0');
INSERT INTO `user` VALUES ('60', '', '', '', '0');
INSERT INTO `user` VALUES ('61', '', '', '', '0');
INSERT INTO `user` VALUES ('62', '', '', '', '0');
INSERT INTO `user` VALUES ('63', '', '', '', '0');
INSERT INTO `user` VALUES ('64', '', '', '', '0');
INSERT INTO `user` VALUES ('65', '', '', '', '0');
INSERT INTO `user` VALUES ('66', '', '', '', '0');
INSERT INTO `user` VALUES ('67', '', '', '', '0');
INSERT INTO `user` VALUES ('68', '', '', '', '0');
INSERT INTO `user` VALUES ('69', '', '', '', '0');
INSERT INTO `user` VALUES ('70', '', '', '', '0');
INSERT INTO `user` VALUES ('71', '', '', '', '0');
INSERT INTO `user` VALUES ('72', '', '', '', '0');
INSERT INTO `user` VALUES ('73', '', '', '', '0');
INSERT INTO `user` VALUES ('74', '', '', '', '0');
INSERT INTO `user` VALUES ('75', '', '', '', '0');
INSERT INTO `user` VALUES ('76', '', '', '', '0');
INSERT INTO `user` VALUES ('77', '', '', '', '0');
INSERT INTO `user` VALUES ('78', '', '', '', '0');
INSERT INTO `user` VALUES ('79', '', '', '', '0');
INSERT INTO `user` VALUES ('80', '', '', '', '0');
INSERT INTO `user` VALUES ('81', '', '', '', '0');
INSERT INTO `user` VALUES ('82', '', '', '', '0');
INSERT INTO `user` VALUES ('83', '', '', '', '0');
INSERT INTO `user` VALUES ('84', '', '', '', '0');
INSERT INTO `user` VALUES ('85', '', '', '', '0');
INSERT INTO `user` VALUES ('86', '', '', '', '0');
INSERT INTO `user` VALUES ('87', '', '', '', '0');
INSERT INTO `user` VALUES ('88', '', '', '', '0');
INSERT INTO `user` VALUES ('89', '', '', '', '0');
INSERT INTO `user` VALUES ('90', '', '', '', '0');
INSERT INTO `user` VALUES ('91', '', '', '', '0');
INSERT INTO `user` VALUES ('92', '', '', '', '0');
INSERT INTO `user` VALUES ('93', '', '', '', '0');
INSERT INTO `user` VALUES ('94', '', '', '', '0');
INSERT INTO `user` VALUES ('95', '', '', '', '0');
INSERT INTO `user` VALUES ('96', '', '', '', '0');
INSERT INTO `user` VALUES ('97', '', '', '', '0');
INSERT INTO `user` VALUES ('98', '', '', '', '0');
INSERT INTO `user` VALUES ('99', '', '', '', '0');
INSERT INTO `user` VALUES ('100', '', '', '', '0');
INSERT INTO `user` VALUES ('101', '', '', '', '0');
INSERT INTO `user` VALUES ('102', '', '', '', '0');
INSERT INTO `user` VALUES ('103', '', '', '', '0');
INSERT INTO `user` VALUES ('104', '', '', '', '0');
INSERT INTO `user` VALUES ('105', '', '', '', '0');
INSERT INTO `user` VALUES ('106', '', '', '', '0');
INSERT INTO `user` VALUES ('107', '', '', '', '0');
INSERT INTO `user` VALUES ('108', '', '', '', '0');
INSERT INTO `user` VALUES ('109', '', '', '', '0');
INSERT INTO `user` VALUES ('110', '', '', '', '0');
INSERT INTO `user` VALUES ('111', '', '', '', '0');
INSERT INTO `user` VALUES ('112', '', '', '', '0');
INSERT INTO `user` VALUES ('113', '', '', '', '0');
INSERT INTO `user` VALUES ('114', '', '', '', '0');
INSERT INTO `user` VALUES ('115', '', '', '', '0');
INSERT INTO `user` VALUES ('116', '', '', '', '0');
INSERT INTO `user` VALUES ('117', '', '', '', '0');
INSERT INTO `user` VALUES ('118', '', '', '', '0');
INSERT INTO `user` VALUES ('119', '', '', '', '0');
INSERT INTO `user` VALUES ('120', '', '', '', '0');
INSERT INTO `user` VALUES ('121', '', '', '', '0');
INSERT INTO `user` VALUES ('122', '', '', '', '0');
INSERT INTO `user` VALUES ('123', '', '', '', '0');
INSERT INTO `user` VALUES ('124', '', '', '', '0');
INSERT INTO `user` VALUES ('125', '', '', '', '0');
INSERT INTO `user` VALUES ('126', '', '', '', '0');
INSERT INTO `user` VALUES ('127', '', '', '', '0');
INSERT INTO `user` VALUES ('128', '', '', '', '0');
INSERT INTO `user` VALUES ('129', '', '', '', '0');
INSERT INTO `user` VALUES ('130', '', '', '', '0');
INSERT INTO `user` VALUES ('131', '', '', '', '0');
INSERT INTO `user` VALUES ('132', '', '', '', '0');
INSERT INTO `user` VALUES ('133', '', '', '', '0');
INSERT INTO `user` VALUES ('134', '', '', '', '0');
INSERT INTO `user` VALUES ('135', '', '', '', '0');
INSERT INTO `user` VALUES ('136', '', '', '', '0');
INSERT INTO `user` VALUES ('137', '', '', '', '0');
INSERT INTO `user` VALUES ('138', '', '', '', '0');
INSERT INTO `user` VALUES ('139', '', '', '', '0');
INSERT INTO `user` VALUES ('140', '', '', '', '0');
INSERT INTO `user` VALUES ('141', '', '', '', '0');
INSERT INTO `user` VALUES ('142', '', '', '', '0');
INSERT INTO `user` VALUES ('143', '', '', '', '0');
INSERT INTO `user` VALUES ('144', '', '', '', '0');
INSERT INTO `user` VALUES ('145', '', '', '', '0');
INSERT INTO `user` VALUES ('146', '', '', '', '0');
INSERT INTO `user` VALUES ('147', '', '', '', '0');
INSERT INTO `user` VALUES ('148', '', '', '', '0');
INSERT INTO `user` VALUES ('149', '', '', '', '0');
INSERT INTO `user` VALUES ('150', '', '', '', '0');
INSERT INTO `user` VALUES ('151', '', '', '', '0');
INSERT INTO `user` VALUES ('152', '', '', '', '0');
INSERT INTO `user` VALUES ('153', '', '', '', '0');
INSERT INTO `user` VALUES ('154', '', '', '', '0');
INSERT INTO `user` VALUES ('155', '', '', '', '0');
INSERT INTO `user` VALUES ('156', '', '', '', '0');
INSERT INTO `user` VALUES ('157', '', '', '', '0');
INSERT INTO `user` VALUES ('158', '', '', '', '0');
INSERT INTO `user` VALUES ('159', '', '', '', '0');
INSERT INTO `user` VALUES ('160', '', '', '', '0');
INSERT INTO `user` VALUES ('161', '', '', '', '0');
INSERT INTO `user` VALUES ('162', '', '', '', '0');
INSERT INTO `user` VALUES ('163', '', '', '', '0');
INSERT INTO `user` VALUES ('164', '', '', '', '0');
INSERT INTO `user` VALUES ('165', '', '', '', '0');
INSERT INTO `user` VALUES ('166', '', '', '', '0');
INSERT INTO `user` VALUES ('167', '', '', '', '0');
INSERT INTO `user` VALUES ('168', '', '', '', '0');
INSERT INTO `user` VALUES ('169', '', '', '', '0');
INSERT INTO `user` VALUES ('170', '', '', '', '0');
INSERT INTO `user` VALUES ('171', '', '', '', '0');
INSERT INTO `user` VALUES ('172', '', '', '', '0');
INSERT INTO `user` VALUES ('173', '', '', '', '0');
INSERT INTO `user` VALUES ('174', '', '', '', '0');
INSERT INTO `user` VALUES ('175', '', '', '', '0');
INSERT INTO `user` VALUES ('176', '', '', '', '0');
INSERT INTO `user` VALUES ('177', '', '', '', '0');
INSERT INTO `user` VALUES ('178', '', '', '', '0');
INSERT INTO `user` VALUES ('179', '', '', '', '0');
INSERT INTO `user` VALUES ('180', '', '', '', '0');
INSERT INTO `user` VALUES ('181', '', '', '', '0');
INSERT INTO `user` VALUES ('182', '', '', '', '0');
INSERT INTO `user` VALUES ('183', '', '', '', '0');
INSERT INTO `user` VALUES ('184', '', '', '', '0');
INSERT INTO `user` VALUES ('185', '', '', '', '0');
INSERT INTO `user` VALUES ('186', '', '', '', '0');
INSERT INTO `user` VALUES ('187', '', '', '', '0');
INSERT INTO `user` VALUES ('188', '', '', '', '0');
INSERT INTO `user` VALUES ('189', '', '', '', '0');
INSERT INTO `user` VALUES ('190', '', '', '', '0');
INSERT INTO `user` VALUES ('191', '', '', '', '0');
INSERT INTO `user` VALUES ('192', '', '', '', '0');
INSERT INTO `user` VALUES ('193', '456789', '13@qq.com', '1213', '0');
INSERT INTO `user` VALUES ('194', '456789', '13@qq.com', '1213', '0');
INSERT INTO `user` VALUES ('195', '456789', '13@qq.com', '123456', '0');
INSERT INTO `user` VALUES ('196', '123456', '123@qq.com', '123456', '0');
INSERT INTO `user` VALUES ('197', '', '', '', '0');
INSERT INTO `user` VALUES ('198', '', '', '', '0');
INSERT INTO `user` VALUES ('199', '', '', '', '0');
INSERT INTO `user` VALUES ('200', '', '', '', '0');
INSERT INTO `user` VALUES ('201', '', '', '', '0');
INSERT INTO `user` VALUES ('202', '', '', '', '0');
INSERT INTO `user` VALUES ('203', '', '', '', '0');
INSERT INTO `user` VALUES ('204', '', '', '', '0');
INSERT INTO `user` VALUES ('205', '', '', '', '0');
INSERT INTO `user` VALUES ('206', '', '', '', '0');
INSERT INTO `user` VALUES ('207', '', '', '', '0');
INSERT INTO `user` VALUES ('208', '', '', '', '0');
INSERT INTO `user` VALUES ('209', '', '', '', '0');
INSERT INTO `user` VALUES ('210', '', '', '', '0');
INSERT INTO `user` VALUES ('211', '', '', '', '0');
INSERT INTO `user` VALUES ('212', '', '', '', '0');
INSERT INTO `user` VALUES ('213', '', '', '', '0');
INSERT INTO `user` VALUES ('214', '', '', '', '0');
INSERT INTO `user` VALUES ('215', '', '', '', '0');
INSERT INTO `user` VALUES ('216', '', '', '', '0');
INSERT INTO `user` VALUES ('217', '', '', '', '0');
INSERT INTO `user` VALUES ('218', '', '', '', '0');
INSERT INTO `user` VALUES ('219', '', '', '', '0');
INSERT INTO `user` VALUES ('220', '', '', '', '0');
INSERT INTO `user` VALUES ('221', '', '', '', '0');
INSERT INTO `user` VALUES ('222', '', '', '', '0');
INSERT INTO `user` VALUES ('223', '', '', '', '0');
INSERT INTO `user` VALUES ('224', '', '', '', '0');
INSERT INTO `user` VALUES ('225', '', '', '', '0');
INSERT INTO `user` VALUES ('226', '', '', '', '0');
INSERT INTO `user` VALUES ('227', '', '', '', '0');
INSERT INTO `user` VALUES ('228', '', '', '', '0');
INSERT INTO `user` VALUES ('229', '', '', '', '0');
INSERT INTO `user` VALUES ('230', '', '', '', '0');
INSERT INTO `user` VALUES ('231', '', '', '', '0');
INSERT INTO `user` VALUES ('232', '', '', '', '0');
INSERT INTO `user` VALUES ('233', '', '', '', '0');
INSERT INTO `user` VALUES ('234', '', '', '', '0');
INSERT INTO `user` VALUES ('235', '', '', '', '0');
INSERT INTO `user` VALUES ('236', '', '', '', '0');
INSERT INTO `user` VALUES ('237', '', '', '', '0');
INSERT INTO `user` VALUES ('238', '', '', '', '0');
INSERT INTO `user` VALUES ('239', '', '', '', '0');
INSERT INTO `user` VALUES ('240', '', '', '', '0');
INSERT INTO `user` VALUES ('241', '', '', '', '0');
INSERT INTO `user` VALUES ('242', '', '', '', '0');
INSERT INTO `user` VALUES ('243', '', '', '', '0');
INSERT INTO `user` VALUES ('244', '', '', '', '0');
INSERT INTO `user` VALUES ('245', '', '', '', '0');
INSERT INTO `user` VALUES ('246', '', '', '', '0');
