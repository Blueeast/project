/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-17 17:46:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `background` varchar(255) default NULL,
  `index` char(255) character set utf8 default 'books',
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', 'http://localhost:1123/images/main/book.jpg', 'books', 'http://localhost:1123/images/main/book1.jpg', ' 玄机出品 秦时明月 典藏水墨画卷挂画海报壁纸石兰张良颜路少司命 ', '20', '60', '55', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('2', 'http://localhost:1123/images/main/book.jpg', 'books', 'http://localhost:1123/images/main/book2.jpg', ' 玄机出品 天行九歌 典藏水墨海报 画卷挂画壁纸 动漫周边礼物 ', '20', '60', '35', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('3', '', 'books', 'http://localhost:1123/images/main/book3.jpg', '玄机出品 秦时明月 龙腾万里卷筒小挂画 墙壁纸海报 貔貅盖聂卫庄 ', '25', '90', '10', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('4', '', 'books', 'http://localhost:1123/images/main/book4.jpg', '玄机出品 秦时明月 动漫原著正版小说 秦时明月图书全集 ', '25', '99', '36', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('5', '', 'books', 'http://localhost:1123/images/main/book5.jpg', '玄机出品 秦时明月 第一代女群像人物挂画 动漫卷轴壁挂 海报周边 ', '35', '66', '64', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('6', '', 'books', 'http://localhost:1123/images/main/book6.jpg', '玄机出品 天行九歌 男群像新代人物挂画 动漫卷轴壁挂 海报周边 ', '35', '78', '38', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('7', '', 'books', 'http://localhost:1123/images/main/book7.jpg', '玄机出品 秦时明月 男群像新代人物挂画 动漫卷轴壁挂 海报周边 ', '35', '70', '96', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('8', '', 'books', 'http://localhost:1123/images/main/book8.jpg', '玄机出品 天行九歌 新代女群像人物挂画  动漫卷轴壁挂 海报周边 ', '70', '199', '323', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('9', null, 'books', 'http://localhost:1123/images/main/book3.jpg', '玄机出品 秦时明月 男群像新代人物挂画 动漫卷轴壁挂 海报周边', '56', '99', '126', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('10', null, 'books', 'http://localhost:1123/images/main/book8.jpg', '玄机出品 秦时明月 男群像新代人物挂画 动漫卷轴壁挂 海报周边', '89', '199', '32', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('11', null, 'books', 'http://localhost:1123/images/main/book3.jpg', '玄机出品 秦时明月 动漫原著正版小说 秦时明月图书全集 ', '25', '88', '36', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('12', null, 'books', 'http://localhost:1123/images/main/book1.jpg', '玄机出品 秦时明月 动漫原著正版小说 秦时明月图书全集 ', '20', '46', '10', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('13', null, 'books', 'http://localhost:1123/images/main/book3.jpg', '玄机出品 天行九歌 新代女群像人物挂画  动漫卷轴壁挂 海报周边 ', '12', '134', '50', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('14', null, 'books', 'http://localhost:1123/images/main/book2.jpg', '玄机出品 秦时明月 男群像新代人物挂画 动漫卷轴壁挂 海报周边 ', '12', '12', '8', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', 'http://localhost:1123/images/main/book8.jpg');
INSERT INTO `books` VALUES ('15', null, 'books', 'http://localhost:1123/images/main/book8.jpg', '玄机出品 秦时明月 龙腾万里卷筒小挂画 墙壁纸海报 貔貅盖聂卫庄 ', '99', '189', '36', 'http://localhost:1123/images/main/book4.jpg', 'http://localhost:1123/images/main/book1.jpg', 'http://localhost:1123/images/main/book3.jpg', null);
