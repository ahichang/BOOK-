/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-12-13 09:06:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(20) NOT NULL,
  `admin_passwd` varchar(20) NOT NULL,
  `admin_realname` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  UNIQUE KEY `admin_username` (`admin_username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '石崇', '123', '石崇');
INSERT INTO `admin` VALUES ('2', '冯志金', '234', '冯志金');
INSERT INTO `admin` VALUES ('3', '冀康欣', '3456', '冀康欣');
INSERT INTO `admin` VALUES ('6', '张壮壮', '12345', '张壮壮');
INSERT INTO `admin` VALUES ('7', '王中禹', '23456', '王中禹');
INSERT INTO `admin` VALUES ('8', '方昱程', '23478', '方昱程');
INSERT INTO `admin` VALUES ('9', '郭嘉兴', '99383', '郭嘉兴');
INSERT INTO `admin` VALUES ('10', '刘云飞', '10234', '刘云飞');
INSERT INTO `admin` VALUES ('11', '志群', '11234', '志群');
INSERT INTO `admin` VALUES ('12', '崔庆伟', '12456', '崔庆伟');
INSERT INTO `admin` VALUES ('13', '王晟宇', '13246', '王晟宇');
INSERT INTO `admin` VALUES ('14', '肖明晨', '142345', '肖明晨');
INSERT INTO `admin` VALUES ('15', '孙业恒', '87635', '孙业恒');
INSERT INTO `admin` VALUES ('16', '高明建', '12578', '高明建');
INSERT INTO `admin` VALUES ('17', '岳重阳', '123864', '岳重阳');
INSERT INTO `admin` VALUES ('18', 'Nike', '72753', 'NIke');
INSERT INTO `admin` VALUES ('19', 'Bob', '23740', 'Bob');
INSERT INTO `admin` VALUES ('21', '王利', '12345', '王莉');
INSERT INTO `admin` VALUES ('22', '忘语', '12342', '宏鑫');

-- ----------------------------
-- Table structure for `cartitem`
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchandise_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `order_detail_id` int(11) DEFAULT NULL,
  `shoppingCart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_id` (`order_detail_id`),
  KEY `merchandise_id` (`merchandise_id`),
  CONSTRAINT `cartitem_fk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`order_detail_id`),
  CONSTRAINT `cartitem_fk1` FOREIGN KEY (`merchandise_id`) REFERENCES `merchandise` (`merchandise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartitem
-- ----------------------------
INSERT INTO `cartitem` VALUES ('2', '1', '6', '56', null);
INSERT INTO `cartitem` VALUES ('3', '1', '1', null, null);
INSERT INTO `cartitem` VALUES ('4', '1', '2', null, '14');
INSERT INTO `cartitem` VALUES ('6', '1', '1', null, '18');
INSERT INTO `cartitem` VALUES ('7', '1', '1', null, null);
INSERT INTO `cartitem` VALUES ('8', '4', '1', null, null);
INSERT INTO `cartitem` VALUES ('9', '1', '2', null, null);
INSERT INTO `cartitem` VALUES ('10', '4', '2', null, null);
INSERT INTO `cartitem` VALUES ('11', '8', '3', null, null);
INSERT INTO `cartitem` VALUES ('12', '1', '1', null, null);
INSERT INTO `cartitem` VALUES ('13', '1', '1', null, null);
INSERT INTO `cartitem` VALUES ('14', '1', '1', '112', null);
INSERT INTO `cartitem` VALUES ('15', '4', '1', '112', null);
INSERT INTO `cartitem` VALUES ('16', '9', '1', '113', null);
INSERT INTO `cartitem` VALUES ('17', '10', '3', '113', null);
INSERT INTO `cartitem` VALUES ('18', '1', '1', '113', null);
INSERT INTO `cartitem` VALUES ('19', '14', '1', '113', null);
INSERT INTO `cartitem` VALUES ('20', '24', '3', '114', null);

-- ----------------------------
-- Table structure for `merchandise`
-- ----------------------------
DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise` (
  `merchandise_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchandise_name` char(20) NOT NULL,
  `merchandise_auth` char(20) NOT NULL,
  `merchandise_price` double(15,3) NOT NULL,
  `merchandise_imgurl` char(20) NOT NULL,
  PRIMARY KEY (`merchandise_id`),
  UNIQUE KEY `book_id` (`merchandise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchandise
-- ----------------------------
INSERT INTO `merchandise` VALUES ('1', '计算机导论', '张亮', '9.000', 'Images/book_01.jpg');
INSERT INTO `merchandise` VALUES ('4', 'C++', '李莉', '3.000', 'Images/book_02.jpg');
INSERT INTO `merchandise` VALUES ('8', '数据结构', '王辉', '6.000', 'Images/book_03.jpg');
INSERT INTO `merchandise` VALUES ('9', '离散数学', '涨潮', '7.000', 'Images/book_04.jpg');
INSERT INTO `merchandise` VALUES ('10', '悲惨世界', '雨果', '8.000', 'Images/book_05.jpg');
INSERT INTO `merchandise` VALUES ('11', ' 白鹿原', '红尘', '9.000', 'Images/book_06.jpg');
INSERT INTO `merchandise` VALUES ('12', '活着', '韩立', '10.000', 'Images/book_07.jpg');
INSERT INTO `merchandise` VALUES ('13', '射雕英雄传', '田小剑', '11.000', 'Images/book_08.jpg');
INSERT INTO `merchandise` VALUES ('14', '老人与海', '上官虹', '12.000', 'Images/book_09.jpg');
INSERT INTO `merchandise` VALUES ('15', '穆斯林的葬礼', '禹堕', '13.000', 'Images/book_10.jpg');
INSERT INTO `merchandise` VALUES ('16', '挪威的森林', '李丽霞', '14.000', 'Images/book_11.jpg');
INSERT INTO `merchandise` VALUES ('17', '平凡的世界', '石超', '15.000', 'Images/book_12.jpg');
INSERT INTO `merchandise` VALUES ('18', '红高粱', '侯雄', '16.000', 'Images/book_13.jpg');
INSERT INTO `merchandise` VALUES ('19', '黄金时代', '张辉', '35.000', 'Images/book_14.jpg');
INSERT INTO `merchandise` VALUES ('20', '围城', '石家', '99.000', 'Images/book_15.jpg');
INSERT INTO `merchandise` VALUES ('21', '西游记', '王奎', '99.000', 'Images/book_16.jpg');
INSERT INTO `merchandise` VALUES ('22', '文学回忆录', '尚高', '17.000', 'Images/book_17.jpg');
INSERT INTO `merchandise` VALUES ('23', '月亮和六便士', '梁查', '18.000', 'Images/book_18.jpg');
INSERT INTO `merchandise` VALUES ('24', '追风筝的人', '张章', '19.000', 'Images/book_19.jpg');
INSERT INTO `merchandise` VALUES ('25', '边城', '朝奎', '29.000', 'Images/book_20.jpg');
INSERT INTO `merchandise` VALUES ('26', '间爱', '褫夺', '123.000', 'Images/book_21.jpg');
INSERT INTO `merchandise` VALUES ('27', '苏菲的世界', '丹妮', '54.000', 'Images/book_22.jpg');
INSERT INTO `merchandise` VALUES ('28', '红楼梦', '曹雪芹', '29.000', 'images/book_02.jsp');

-- ----------------------------
-- Table structure for `merchandise_type`
-- ----------------------------
DROP TABLE IF EXISTS `merchandise_type`;
CREATE TABLE `merchandise_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` char(20) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_id` (`type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchandise_type
-- ----------------------------
INSERT INTO `merchandise_type` VALUES ('15', '专业书');
INSERT INTO `merchandise_type` VALUES ('5', '专题汇集');
INSERT INTO `merchandise_type` VALUES ('14', '儿童读物');
INSERT INTO `merchandise_type` VALUES ('18', '剧本');
INSERT INTO `merchandise_type` VALUES ('19', '历史唯物主义');
INSERT INTO `merchandise_type` VALUES ('7', '哲学');
INSERT INTO `merchandise_type` VALUES ('20', '宗教');
INSERT INTO `merchandise_type` VALUES ('13', '小说');
INSERT INTO `merchandise_type` VALUES ('16', '工具书');
INSERT INTO `merchandise_type` VALUES ('9', '意识论');
INSERT INTO `merchandise_type` VALUES ('22', '戏曲');
INSERT INTO `merchandise_type` VALUES ('17', '手册');
INSERT INTO `merchandise_type` VALUES ('4', '手记');
INSERT INTO `merchandise_type` VALUES ('10', '摄影绘画集');
INSERT INTO `merchandise_type` VALUES ('21', '日记');
INSERT INTO `merchandise_type` VALUES ('8', '物质论');
INSERT INTO `merchandise_type` VALUES ('3', '诗词');
INSERT INTO `merchandise_type` VALUES ('6', '语录');
INSERT INTO `merchandise_type` VALUES ('1', '选集、文集');
INSERT INTO `merchandise_type` VALUES ('2', '马克思主义');

-- ----------------------------
-- Table structure for `mmt`
-- ----------------------------
DROP TABLE IF EXISTS `mmt`;
CREATE TABLE `mmt` (
  `merchandise_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`merchandise_id`,`type_id`),
  KEY `book_id` (`merchandise_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `book-book_type_fk` FOREIGN KEY (`merchandise_id`) REFERENCES `merchandise` (`merchandise_id`),
  CONSTRAINT `book-book_type_fk1` FOREIGN KEY (`type_id`) REFERENCES `merchandise_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmt
-- ----------------------------
INSERT INTO `mmt` VALUES ('1', '1');
INSERT INTO `mmt` VALUES ('1', '2');
INSERT INTO `mmt` VALUES ('1', '3');
INSERT INTO `mmt` VALUES ('1', '4');
INSERT INTO `mmt` VALUES ('1', '5');
INSERT INTO `mmt` VALUES ('1', '6');
INSERT INTO `mmt` VALUES ('4', '1');
INSERT INTO `mmt` VALUES ('4', '13');
INSERT INTO `mmt` VALUES ('4', '19');
INSERT INTO `mmt` VALUES ('8', '1');
INSERT INTO `mmt` VALUES ('9', '1');
INSERT INTO `mmt` VALUES ('10', '1');
INSERT INTO `mmt` VALUES ('11', '1');
INSERT INTO `mmt` VALUES ('12', '1');
INSERT INTO `mmt` VALUES ('13', '1');
INSERT INTO `mmt` VALUES ('14', '1');
INSERT INTO `mmt` VALUES ('15', '1');
INSERT INTO `mmt` VALUES ('16', '1');
INSERT INTO `mmt` VALUES ('17', '1');
INSERT INTO `mmt` VALUES ('18', '1');
INSERT INTO `mmt` VALUES ('19', '1');
INSERT INTO `mmt` VALUES ('20', '1');
INSERT INTO `mmt` VALUES ('21', '1');
INSERT INTO `mmt` VALUES ('22', '1');
INSERT INTO `mmt` VALUES ('23', '1');
INSERT INTO `mmt` VALUES ('24', '1');
INSERT INTO `mmt` VALUES ('25', '1');
INSERT INTO `mmt` VALUES ('25', '2');
INSERT INTO `mmt` VALUES ('25', '3');
INSERT INTO `mmt` VALUES ('25', '4');
INSERT INTO `mmt` VALUES ('25', '5');
INSERT INTO `mmt` VALUES ('25', '6');
INSERT INTO `mmt` VALUES ('26', '2');
INSERT INTO `mmt` VALUES ('27', '2');
INSERT INTO `mmt` VALUES ('28', '2');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_state` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `orders_fk` (`user_id`),
  CONSTRAINT `orders_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('55', '15', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('56', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('58', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('59', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('60', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('64', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('65', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('67', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('68', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('69', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('71', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('72', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('74', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('75', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('76', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('77', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('78', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('79', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('80', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('81', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('82', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('83', '14', '2017-10-21 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('84', '14', '2017-10-21 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('85', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('90', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('91', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('92', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('93', '14', '2017-10-17 00:00:00', '已支付');
INSERT INTO `orders` VALUES ('94', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('95', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('96', '14', '2017-10-17 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('97', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('98', '14', '2017-10-17 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('99', '14', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('100', '18', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('101', '19', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('103', '19', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('107', '21', '2017-11-27 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('108', '16', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('110', '16', '2017-11-27 00:00:00', '未支付');
INSERT INTO `orders` VALUES ('111', '16', '2017-11-27 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('112', '22', '2017-11-27 00:00:00', '已完成');
INSERT INTO `orders` VALUES ('113', '8', '2017-12-07 00:00:00', '宸叉敮浠�');
INSERT INTO `orders` VALUES ('114', '8', '2017-12-07 00:00:00', '鏈敮浠�');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `consigneeName` varchar(20) DEFAULT NULL,
  `consigneePhoneNum` int(11) DEFAULT NULL,
  `consigneeAdress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_detail_id` (`order_detail_id`),
  CONSTRAINT `order_detail_fk` FOREIGN KEY (`order_detail_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('55', '王亮', '12345', '石家庄');
INSERT INTO `order_detail` VALUES ('56', '王五', '12560', '石家庄');
INSERT INTO `order_detail` VALUES ('64', '李杰', '18964', '石家庄');
INSERT INTO `order_detail` VALUES ('99', '张弛', '849024223', '石家庄');
INSERT INTO `order_detail` VALUES ('100', '志群', '84359403', '石家庄');
INSERT INTO `order_detail` VALUES ('101', '王凡', '8829203', '石家庄');
INSERT INTO `order_detail` VALUES ('103', '韩立', '2234567', '石家庄');
INSERT INTO `order_detail` VALUES ('107', '李晓', '37834567', '天津');
INSERT INTO `order_detail` VALUES ('108', '伟明', '78345', '北京');
INSERT INTO `order_detail` VALUES ('110', '碧莲', '37829', '衡水');
INSERT INTO `order_detail` VALUES ('111', '步妖艳', '7823456', '邯郸');
INSERT INTO `order_detail` VALUES ('112', '冯志金', '802467', '辛集');
INSERT INTO `order_detail` VALUES ('113', '张三', '123451', '石家庄');
INSERT INTO `order_detail` VALUES ('114', '张三', '123451', '石家庄');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `shoppingcart_fk` FOREIGN KEY (`id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('8');
INSERT INTO `shoppingcart` VALUES ('14');
INSERT INTO `shoppingcart` VALUES ('16');
INSERT INTO `shoppingcart` VALUES ('18');
INSERT INTO `shoppingcart` VALUES ('19');
INSERT INTO `shoppingcart` VALUES ('21');
INSERT INTO `shoppingcart` VALUES ('22');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(20) NOT NULL,
  `user_passwd` varchar(20) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_telephone` varchar(20) NOT NULL,
  `user_address` varchar(20) NOT NULL,
  `posttime` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_username` (`user_username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('8', '张三', '12345', '12345d', '123451', '石家庄', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('9', '李四', 'abcde', '12345c', '123452', '石家庄', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('10', '王五', '12345', '12345b', '123453', '天津', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('11', '马六', 'asded', '12345a', '123454', '北京', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('12', '王驰', '1234567', '12345e', '123458', '上海', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('13', '王朝', '12345', '12345c', '123458', '石家庄', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('14', '马汉', '12345x', '12345de', '123456', '上海', '1111-11-11 11:11:11');
INSERT INTO `users` VALUES ('15', '张龙', '12345sd', '12345wer', '1234589', '天津', '2017-10-17 00:00:00');
INSERT INTO `users` VALUES ('16', '赵虎', '12345sdf', '12345we', '1234578', '北京', '2017-11-13 00:00:00');
INSERT INTO `users` VALUES ('17', '田丽', '12345sw', '12345se', '1234587', '上海', '2017-11-22 00:00:00');
INSERT INTO `users` VALUES ('18', '李莉', '123453dd', '12345ae', '456231', '广东', '2017-11-27 00:00:00');
INSERT INTO `users` VALUES ('19', '孙佳', '12345cmv', '12345aew', '369852', '福建', '2017-11-27 00:00:00');
INSERT INTO `users` VALUES ('21', '范睢', '12345smn', '12345ewrs', '741258', '浙江', '2017-11-27 00:00:00');
INSERT INTO `users` VALUES ('22', '周武', '12345msn', '12345we', '159357', '江苏', '2017-11-27 00:00:00');
INSERT INTO `users` VALUES ('23', '红莲', '123456', '147258@128', '12395135789', '石家庄', '2017-12-11 00:00:00');
INSERT INTO `users` VALUES ('24', '张丽艳', '1593578256', '258369@126', '12369854789', '衡水', '2017-12-11 00:00:00');
