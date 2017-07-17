/*
Navicat MySQL Data Transfer

Source Server         : oa
Source Server Version : 50528
Source Host           : 172.10.3.40:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-12-26 15:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1、产品 2、开发 3 ued 4 测试',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '产品', 'diudiu', '1', '2015-12-01 10:50:30');
INSERT INTO `department` VALUES ('2', '平台研发MT', 'kf1', '2', '2015-12-01 10:50:54');
INSERT INTO `department` VALUES ('3', 'UED', 'ued1', '3', '2015-12-02 10:47:03');
INSERT INTO `department` VALUES ('4', '测试', 'wer', '4', '2015-12-03 15:31:31');
INSERT INTO `department` VALUES ('5', '测试部--12月18号', '测试1218负责人', '4', '2015-12-18 10:34:11');

-- ----------------------------
-- Table structure for `efficiency`
-- ----------------------------
DROP TABLE IF EXISTS `efficiency`;
CREATE TABLE `efficiency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employe_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `employe_code` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `plan_begin_time` datetime DEFAULT NULL,
  `plan_end_time` datetime DEFAULT NULL,
  `plan_hours` int(11) DEFAULT NULL,
  `actual_begin_time` datetime DEFAULT NULL,
  `actual_end_time` datetime DEFAULT NULL,
  `actual_hours` int(11) DEFAULT NULL,
  `output_begin_time` datetime DEFAULT NULL,
  `output_end_time` datetime DEFAULT NULL,
  `output_hours` int(11) DEFAULT NULL,
  `pm` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `efficiency_percentage` double DEFAULT NULL COMMENT '效率百分比',
  `load_rate` double DEFAULT NULL COMMENT '负荷率',
  `project_state` int(11) DEFAULT NULL COMMENT '项目状态 0 进行中 1 完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of efficiency
-- ----------------------------
INSERT INTO `efficiency` VALUES ('234', 'cp2', '产品', null, '51', '1', '118', 'ceshi001', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', 'aaa', '2015-12-15 17:48:26', null, null, '0');
INSERT INTO `efficiency` VALUES ('236', 'ued2', 'UED', null, '62', '3', '118', 'ceshi001', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', 'aaa', '2015-12-15 17:48:26', null, null, '0');
INSERT INTO `efficiency` VALUES ('237', 'cs2', '测试', null, '64', '4', '118', 'ceshi001', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', 'aaa', '2015-12-15 17:48:26', null, null, '0');
INSERT INTO `efficiency` VALUES ('239', 'tt', '产品', null, '79', '1', '119', 'test', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', 'aaa', '2015-12-15 17:50:34', null, null, '0');
INSERT INTO `efficiency` VALUES ('240', 'cp2', '产品', null, '51', '1', '120', 'ttss', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', 'aaa', '2015-12-15 17:51:22', null, null, '0');
INSERT INTO `efficiency` VALUES ('241', 'cp2', '产品', null, '51', '1', '121', 'ttt', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', 'aaa', '2015-12-15 17:52:08', null, null, '0');
INSERT INTO `efficiency` VALUES ('242', 'cp2', '产品', null, '51', '1', '122', '11212123', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', 'aaa', '2015-12-15 17:55:49', null, null, '0');
INSERT INTO `efficiency` VALUES ('243', 'cp2', '产品', null, '51', '1', '123', 'ffff', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '1', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:00:29', null, null, '0');
INSERT INTO `efficiency` VALUES ('244', 'kf2', '平台研发MT', null, '54', '2', '124', '0000000000', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '2', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:01:34', null, null, '0');
INSERT INTO `efficiency` VALUES ('245', 'cp2', '产品', null, '51', '1', '125', 'adfasdf', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '5', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:01:59', null, null, '0');
INSERT INTO `efficiency` VALUES ('246', 'cp2', '产品', null, '51', '1', '126', 'reloadTest', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '11', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:04:43', null, null, '0');
INSERT INTO `efficiency` VALUES ('247', 'cp2', '产品', null, '51', '1', '127', '3333333', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '11', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:06:12', null, null, '0');
INSERT INTO `efficiency` VALUES ('248', 'kf3', '平台研发MT', null, '56', '2', '127', '3333333', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '11', '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, '2015-12-15 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-15 18:06:12', null, null, '0');
INSERT INTO `efficiency` VALUES ('256', 'cp2', '产品', null, '51', '1', '128', 'ddd', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '3', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 18:54:29', null, null, '0');
INSERT INTO `efficiency` VALUES ('257', 'ued3', 'UED', null, '63', '3', '128', 'ddd', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '2', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 18:54:29', null, null, '0');
INSERT INTO `efficiency` VALUES ('258', 'kf2', '平台研发MT', null, '54', '2', '128', 'ddd', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '4', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 18:54:29', null, null, '0');
INSERT INTO `efficiency` VALUES ('259', 'ued2', 'UED', null, '62', '3', '128', 'ddd', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '5', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 18:54:44', null, null, '0');
INSERT INTO `efficiency` VALUES ('260', 'cp2', '产品', null, '51', '1', '129', 'cs99', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '3', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '3', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 19:56:01', null, null, '0');
INSERT INTO `efficiency` VALUES ('261', 'cp2', '产品', null, '51', '1', '130', 'dafdfafad', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '4', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '3', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '2', 'aaa', '2015-12-15 19:59:44', null, null, '1');
INSERT INTO `efficiency` VALUES ('262', 'kf2', '平台研发MT', null, '54', '2', '130', 'dafdfafad', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '5', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '5', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 19:59:44', null, null, '0');
INSERT INTO `efficiency` VALUES ('263', 'cp2', '产品', null, '51', '1', '131', 'cs0000', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '5', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 20:18:49', null, null, '0');
INSERT INTO `efficiency` VALUES ('264', 'kf2', '平台研发MT', null, '54', '2', '131', 'cs0000', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '4', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 20:18:49', null, null, '0');
INSERT INTO `efficiency` VALUES ('265', 'cp2', '产品', null, '51', '1', '132', 'dafdasf', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '4', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '3', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '2', 'aaa', '2015-12-15 21:11:08', null, null, '1');
INSERT INTO `efficiency` VALUES ('266', 'kf3', '平台研发MT', null, '56', '2', '132', 'dafdasf', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '9', '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, '2015-12-15 00:00:00', '2015-12-15 00:00:00', null, 'aaa', '2015-12-15 21:11:28', null, null, '0');
INSERT INTO `efficiency` VALUES ('267', 'cp2', '产品', null, '51', '1', '133', 'cesih666', '2015-12-16 00:00:00', '2015-12-16 00:00:00', '8', '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-16 10:07:38', null, null, '0');
INSERT INTO `efficiency` VALUES ('268', 'kf2', '平台研发MT', null, '54', '2', '133', 'cesih666', '2015-12-16 00:00:00', '2015-12-16 00:00:00', '8', '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-16 10:08:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('269', 'cp2', '产品', null, '51', '1', '134', 'ceshi ', '2016-01-02 00:00:00', '2016-02-03 00:00:00', '2', '2016-01-02 00:00:00', '2016-02-03 00:00:00', '2', '2016-01-02 00:00:00', '2016-02-03 00:00:00', '1', 'aaa', '2015-12-16 11:32:20', null, null, '1');
INSERT INTO `efficiency` VALUES ('270', 'kf2', '平台研发MT', null, '54', '2', '134', 'ceshi ', '2015-12-16 00:00:00', '2015-12-16 00:00:00', '8', '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, 'aaa', '2015-12-16 14:04:28', null, null, '0');
INSERT INTO `efficiency` VALUES ('271', 'cp2', '产品', null, '51', '1', '135', 'test133333333', '2015-12-24 00:00:00', '2015-12-24 00:00:00', '1', '2015-12-24 00:00:00', '2015-12-24 00:00:00', null, '2015-12-24 00:00:00', '2015-12-24 00:00:00', null, 'cp1', '2015-12-16 20:28:10', null, null, '0');
INSERT INTO `efficiency` VALUES ('272', 'kf3', '平台研发MT', null, '56', '2', '135', 'test133333333', '2015-12-17 00:00:00', '2015-12-18 00:00:00', '1', '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, 'cp1', '2015-12-16 20:28:10', null, null, '0');
INSERT INTO `efficiency` VALUES ('273', 'ued2', 'UED', null, '62', '3', '135', 'test133333333', '2015-12-16 00:00:00', '2015-12-16 00:00:00', '11', '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, '2015-12-16 00:00:00', '2015-12-16 00:00:00', null, 'cp1', '2015-12-16 20:28:10', null, null, '0');
INSERT INTO `efficiency` VALUES ('274', 'qqqqqq', '测试', null, '85', '4', '135', 'test133333333', '2015-12-16 00:00:00', '2015-12-17 00:00:00', '1', '2015-12-16 00:00:00', '2015-12-17 00:00:00', null, '2015-12-16 00:00:00', '2015-12-17 00:00:00', null, 'cp1', '2015-12-16 20:28:10', null, null, '0');
INSERT INTO `efficiency` VALUES ('275', 'cp2', '产品', null, '51', '1', '136', 'rtdh', '2015-12-16 00:00:00', '2015-12-31 00:00:00', '44', '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-16 21:42:53', null, null, '0');
INSERT INTO `efficiency` VALUES ('276', 'cp2', '产品', null, '51', '1', '136', 'rtdh', '2016-01-01 00:00:00', '2016-02-05 00:00:00', '666', '2016-01-01 00:00:00', '2016-02-05 00:00:00', null, '2016-01-01 00:00:00', '2016-02-05 00:00:00', null, 'aaa', '2015-12-16 21:42:53', null, null, '0');
INSERT INTO `efficiency` VALUES ('277', 'cp2', '产品', null, '51', '1', '137', 'dafedawfeeawf', '2015-12-16 00:00:00', '2015-12-31 00:00:00', '4', '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('278', 'cp2', '产品', null, '51', '1', '137', 'dafedawfeeawf', '2016-01-01 00:00:00', '2016-01-05 00:00:00', '9', '2016-01-01 00:00:00', '2016-01-05 00:00:00', null, '2016-01-01 00:00:00', '2016-01-05 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('279', 'kf2', '平台研发MT', null, '54', '2', '137', 'dafedawfeeawf', '2015-12-16 00:00:00', '2015-12-31 00:00:00', '7', '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('280', 'kf2', '平台研发MT', null, '54', '2', '137', 'dafedawfeeawf', '2016-01-01 00:00:00', '2016-01-05 00:00:00', '8', '2016-01-01 00:00:00', '2016-01-05 00:00:00', null, '2016-01-01 00:00:00', '2016-01-05 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('281', 'ued2', 'UED', null, '62', '3', '137', 'dafedawfeeawf', '2015-12-16 00:00:00', '2015-12-31 00:00:00', '7', '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('282', 'ffafa', '测试', null, '82', '4', '137', 'dafedawfeeawf', '2015-12-16 00:00:00', '2015-12-31 00:00:00', '8', '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, '2015-12-16 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-16 21:45:40', null, null, '0');
INSERT INTO `efficiency` VALUES ('283', 'tt', '产品', null, '79', '1', '138', 'erewer', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, 'aaa', '2015-12-17 10:01:35', null, null, '0');
INSERT INTO `efficiency` VALUES ('284', 'kf3', '平台研发MT', null, '56', '2', '138', 'erewer', '2015-12-18 00:00:00', '2015-12-31 00:00:00', '4', '2015-12-18 00:00:00', '2015-12-31 00:00:00', null, '2015-12-18 00:00:00', '2015-12-31 00:00:00', null, 'aaa', '2015-12-17 10:01:35', null, null, '0');
INSERT INTO `efficiency` VALUES ('287', 'cp2', '产品', null, '51', '1', '139', 'cs001', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '3', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 12:39:19', null, null, '0');
INSERT INTO `efficiency` VALUES ('288', 'kf2', '平台研发MT', null, '54', '2', '139', 'cs001', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 12:39:44', null, null, '0');
INSERT INTO `efficiency` VALUES ('289', 'ued2', 'UED', null, '62', '3', '139', 'cs001', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '5', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 12:40:11', null, null, '0');
INSERT INTO `efficiency` VALUES ('293', 'cp2', '产品', null, '51', '1', '140', 'uuuu', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '5', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 12:50:49', null, null, '0');
INSERT INTO `efficiency` VALUES ('294', 'cp2', '产品', null, '51', '1', '141', 'rrrr', '2015-12-17 00:00:00', '2015-12-18 00:00:00', '7', '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, 'aaa', '2015-12-17 13:14:08', null, null, '0');
INSERT INTO `efficiency` VALUES ('296', 'ued2', 'UED', null, '62', '3', '141', 'rrrr', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '9', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 13:24:55', null, null, '0');
INSERT INTO `efficiency` VALUES ('297', 'cs2', '测试', null, '64', '4', '141', 'rrrr', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 13:28:19', null, null, '0');
INSERT INTO `efficiency` VALUES ('298', 'kf3', '平台研发MT', null, '56', '2', '142', 'eeee', '2015-12-17 00:00:00', '2015-12-26 00:00:00', '3', '2015-12-17 00:00:00', '2015-12-26 00:00:00', null, '2015-12-17 00:00:00', '2015-12-26 00:00:00', null, 'aaa', '2015-12-17 14:50:21', null, null, '0');
INSERT INTO `efficiency` VALUES ('299', 'kf3', '平台研发MT', null, '56', '2', '143', 'daedaf', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '2', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 14:52:04', null, null, '0');
INSERT INTO `efficiency` VALUES ('300', 'cp2', '产品', null, '51', '1', '144', 'dfasf', '2015-12-18 00:00:00', '2015-12-18 00:00:00', '4', '2015-12-18 00:00:00', '2015-12-18 00:00:00', null, '2015-12-18 00:00:00', '2015-12-18 00:00:00', null, 'aaa', '2015-12-17 14:55:35', null, null, '0');
INSERT INTO `efficiency` VALUES ('301', 'cp2', '产品', null, '51', '1', '145', 'dafd', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '5', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 14:56:22', null, null, '0');
INSERT INTO `efficiency` VALUES ('302', 'kf3', '平台研发MT', null, '56', '2', '146', 'eee', '2015-12-24 00:00:00', '2015-12-30 00:00:00', '4', '2015-12-24 00:00:00', '2015-12-30 00:00:00', null, '2015-12-24 00:00:00', '2015-12-30 00:00:00', null, 'aaa', '2015-12-17 15:05:51', null, null, '0');
INSERT INTO `efficiency` VALUES ('303', 'ffafa', '测试', null, '82', '4', '147', 'ttttt', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '66', '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, 'aaa', '2015-12-17 15:06:21', null, null, '0');
INSERT INTO `efficiency` VALUES ('304', 'kf2', '平台研发MT', null, '54', '2', '148', 'dsf', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, 'aaa', '2015-12-17 15:09:16', null, null, '0');
INSERT INTO `efficiency` VALUES ('305', 'kf3', '平台研发MT', null, '56', '2', '149', 'saefa', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '3', '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, 'aaa', '2015-12-17 15:15:48', null, null, '0');
INSERT INTO `efficiency` VALUES ('308', 'kf3', '平台研发MT', null, '56', '2', '152', 'ttt', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '3', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 15:32:03', null, null, '0');
INSERT INTO `efficiency` VALUES ('309', 'kf3', '平台研发MT', null, '56', '2', '153', 'dafdsaf', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 15:37:06', null, null, '0');
INSERT INTO `efficiency` VALUES ('311', 'cp2', '产品', null, '51', '1', '155', 'eee', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '3', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 17:11:57', null, null, '0');
INSERT INTO `efficiency` VALUES ('312', 'cp2', '产品', null, '51', '1', '156', 'dfas', '2015-12-17 00:00:00', '2015-12-25 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-25 00:00:00', null, '2015-12-17 00:00:00', '2015-12-25 00:00:00', null, 'aaa', '2015-12-17 17:14:10', null, null, '0');
INSERT INTO `efficiency` VALUES ('313', 'tt', '产品', null, '79', '1', '157', 'dafsaf', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '4', '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, '2015-12-17 00:00:00', '2015-12-24 00:00:00', null, 'aaa', '2015-12-17 17:44:26', null, null, '0');
INSERT INTO `efficiency` VALUES ('314', 'ued3', 'UED', null, '63', '3', '158', 'rrrrr', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '5', '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, '2015-12-17 00:00:00', '2015-12-17 00:00:00', null, 'aaa', '2015-12-17 17:44:44', null, null, '0');
INSERT INTO `efficiency` VALUES ('315', 'tt', '产品', null, '79', '1', '159', 'sdfa', '2015-12-17 00:00:00', '2015-12-18 00:00:00', '5', '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, '2015-12-17 00:00:00', '2015-12-18 00:00:00', null, 'aaa', '2015-12-17 18:00:21', null, null, '0');
INSERT INTO `efficiency` VALUES ('316', 'cp2', '产品', null, '51', '1', '159', 'sdfa', '2015-12-18 00:00:00', '2015-12-19 00:00:00', '5', '2015-12-18 00:00:00', '2015-12-19 00:00:00', null, '2015-12-18 00:00:00', '2015-12-19 00:00:00', null, 'aaa', '2015-12-17 18:00:21', null, null, '0');
INSERT INTO `efficiency` VALUES ('322', '曹操1218', '测试部--12月18号', null, '87', '5', '160', '云科农服测试', '2015-12-18 00:00:00', '2015-12-20 00:00:00', '20', '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '测试1218负责人', '2015-12-18 10:47:20', null, null, '0');
INSERT INTO `efficiency` VALUES ('323', '关羽1218', '测试部--12月18号', null, '89', '5', '160', '云科农服测试', '2015-12-18 00:00:00', '2015-12-20 00:00:00', '20', '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '测试1218负责人', '2015-12-18 10:47:20', null, null, '0');
INSERT INTO `efficiency` VALUES ('324', '马超1218', '测试部--12月18号', null, '90', '5', '160', '云科农服测试', '2015-12-18 00:00:00', '2015-12-20 00:00:00', '20', '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '测试1218负责人', '2015-12-18 10:47:20', null, null, '0');
INSERT INTO `efficiency` VALUES ('325', '赵云1218', '测试部--12月18号', null, '91', '5', '160', '云科农服测试', '2015-12-18 00:00:00', '2015-12-20 00:00:00', '20', '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '2015-12-18 00:00:00', '2015-12-20 00:00:00', null, '测试1218负责人', '2015-12-18 10:47:20', null, null, '0');
INSERT INTO `efficiency` VALUES ('326', 'kf2', '平台研发MT', null, '54', '2', '161', 'load', '2015-12-18 00:00:00', '2015-12-18 00:00:00', '6', '2015-12-18 00:00:00', '2015-12-18 00:00:00', '5', '2015-12-18 00:00:00', '2015-12-18 00:00:00', '4', 'aaa', '2015-12-18 11:08:57', '1.5', '0.5', '1');

-- ----------------------------
-- Table structure for `efficiency_result`
-- ----------------------------
DROP TABLE IF EXISTS `efficiency_result`;
CREATE TABLE `efficiency_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employe_id` int(11) DEFAULT NULL,
  `employe_code` varchar(45) DEFAULT NULL,
  `employe_name` varchar(45) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) DEFAULT NULL,
  `project_count` int(11) DEFAULT NULL,
  `plan_hours` int(11) DEFAULT NULL,
  `actual_hours` int(11) DEFAULT NULL,
  `output_hours` int(11) DEFAULT NULL,
  `basic_hours` int(11) DEFAULT NULL,
  `load_rate` double DEFAULT NULL,
  `efficiency_percentage` double DEFAULT NULL,
  `efficiency_total_score` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of efficiency_result
-- ----------------------------
INSERT INTO `efficiency_result` VALUES ('114', '51', '222', 'cp2', '1', '产品', '9', '31', '0', '0', '184', '0', '7.6', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('115', '79', null, 'tt', '1', '产品', '1', '0', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('116', '54', null, 'kf2', '2', '平台研发MT', '2', '6', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('117', '56', null, 'kf3', '2', '平台研发MT', '1', '11', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('118', '62', null, 'ued2', '3', 'UED', '2', '5', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('119', '63', null, 'ued3', '3', 'UED', '1', '2', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('120', '64', null, 'cs2', '4', '测试', '1', '0', '0', '0', '184', '0', '0', '0', '2016-01-01 19:17:12');
INSERT INTO `efficiency_result` VALUES ('121', '51', null, 'cp2', '1', '产品', '17', '104', '9', '4', '184', '2.2', '2600', '390.3', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('122', '79', null, 'tt', '1', '产品', '2', '4', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('123', '54', null, 'kf2', '2', '平台研发MT', '7', '38', '5', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('124', '56', null, 'kf3', '2', '平台研发MT', '4', '25', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('125', '62', null, 'ued2', '3', 'UED', '4', '23', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('126', '63', null, 'ued3', '3', 'UED', '1', '2', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('127', '64', null, 'cs2', '4', '测试', '1', '0', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('128', '82', null, 'ffafa', '4', '测试', '1', '8', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:07');
INSERT INTO `efficiency_result` VALUES ('129', '85', null, 'qqqqqq', '4', '测试', '1', '1', '0', '0', '184', '0', '0', '0', '2016-01-01 10:53:08');

-- ----------------------------
-- Table structure for `employe`
-- ----------------------------
DROP TABLE IF EXISTS `employe`;
CREATE TABLE `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_mt` bit(1) DEFAULT NULL,
  `is_pm` bit(1) DEFAULT NULL,
  `employment_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `is_del` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employe
-- ----------------------------
INSERT INTO `employe` VALUES ('48', '0', 'admin', '0', '0', '0', '', '', null, null, 'admin', 'admin', null, null, '0');
INSERT INTO `employe` VALUES ('49', 'aaa', 'aaa', '1', '产品', '0', '', '', '2015-12-14 11:01:37', '2016-01-01 18:42:03', 'aaa1', '123456', 'aaa@ync365.com', '132000', '0');
INSERT INTO `employe` VALUES ('50', null, 'cp1', '1', '产品', '0', '', '', null, '2016-01-01 18:42:03', 'cp1', '123456', 'lili@163.com', '13131313131', '0');
INSERT INTO `employe` VALUES ('51', null, 'cp2', '1', '产品', '0', '', '', null, '2016-01-01 18:42:03', 'cp2', '123456', 'zhangsan@ync365.com', '15623142635', '0');
INSERT INTO `employe` VALUES ('52', null, 'cp3', '1', '产品', '0', '', '', null, '2016-01-01 18:42:03', 'cp3', '123456', 'zhang@163.com', '13131313131', '0');
INSERT INTO `employe` VALUES ('53', null, 'kf1', '2', '平台研发MT', '0', '', '', null, '2015-12-14 11:05:00', 'kf1', '123456', '1546544854@qq.com', '18565626289', '0');
INSERT INTO `employe` VALUES ('54', null, 'kf2', '2', '平台研发MT', '0', '', '', null, '2015-12-14 11:05:26', 'kf2', '123456', '545656456@qq.com', '18259595689', '0');
INSERT INTO `employe` VALUES ('55', null, 'cs1', '4', '测试', '0', '', '', null, '2016-01-01 19:06:02', 'cs1', '123456', 'chao@163.com', '13131313131', '0');
INSERT INTO `employe` VALUES ('56', null, 'kf3', '2', '平台研发MT', '0', '', '', null, '2015-12-14 11:06:01', 'kf3', '123456', '156966556@qq.com', '18678965236', '0');
INSERT INTO `employe` VALUES ('57', null, 'kf4', '2', '平台研发MT', '0', '', '', null, '2015-12-14 15:39:42', 'kf4', '123456', '1465665@qq.com', '18623657894', '1');
INSERT INTO `employe` VALUES ('58', null, 'pm1', '1', '产品', '0', '', '', null, '2016-01-01 18:42:03', 'pm1', '123456', 'adsfaf@sdf.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('59', null, 'pm2', '1', '产品', '0', '', '', null, '2016-01-01 18:42:03', 'pm2', '123456', 'adsfaf@sdf.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('61', null, 'ued1', '3', 'UED', null, '', '', null, '2015-12-14 12:44:35', 'ued1', '123456', '123456@12.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('62', null, 'ued2', '3', 'UED', null, '', '', null, '2015-12-14 12:44:06', 'ued2', '123456', 'ued2@aa.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('63', null, 'ued3', '3', 'UED', null, '', '', null, '2015-12-14 12:44:06', 'ued3', '123456', 'ued3@qq.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('64', null, 'cs2', '4', '测试', null, '', '', null, '2016-01-01 19:06:02', 'cs2', '123456', 'cs2@qq.com', '13810805678', '0');
INSERT INTO `employe` VALUES ('65', null, 'ued4', '3', 'UED', null, '', '', null, '2015-12-14 12:44:06', 'ddsad', 'ddsad123', 'ddsad@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('78', null, 'kaka', '-1', '其它', null, '', '', null, '2015-12-15 11:21:50', 'kaka', 'kaka123', 'kaka@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('79', null, 'tt', '1', '产品', null, '', '', null, '2016-01-01 18:42:04', 'tt', 'tt123', 'tt@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('80', '121l', 'test2', '21', 'aaa2', 'abc2', '', '', '2015-12-15 13:23:25', '2015-12-15 13:23:25', 'aaa', 'aaa', 'aaa@ync365.com', '1231231321', null);
INSERT INTO `employe` VALUES ('81', null, 'ggg', '1', '产品', null, '', '', null, '2016-01-01 18:42:03', 'ggg', 'ggg123', 'ggg@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('82', null, 'ffafa', '4', '测试', null, '', '', null, '2016-01-01 19:06:02', 'fafaf', 'fafaf123', 'fafaf@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('83', null, 'uuuu', '4', '测试', null, '', '', null, '2016-01-01 19:06:02', 'uuuu', 'uuuu123', 'uuuu@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('84', null, 'wer', '4', '测试', null, '', '', null, '2016-01-01 19:02:54', 'wer', 'wer123', 'wer@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('85', null, 'qqqqqq', '4', '测试', null, '', '', null, '2016-01-01 19:13:42', 'qqqqq', 'qqqqq123', 'qqqqq@ync365.com', '', '0');
INSERT INTO `employe` VALUES ('86', null, '测试1218负责人', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:37:01', 'zhangsan', 'zhangsan123', 'zhansan@ync365.com', '15012345678', '0');
INSERT INTO `employe` VALUES ('87', null, '曹操1218', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:37:48', 'caocao', 'caocao123', 'caocao@ync365.com', '15112345678', '0');
INSERT INTO `employe` VALUES ('88', null, '刘备1218', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:38:30', 'liubei', 'liubei123', 'liubei@ync365.com', '15212345678', '0');
INSERT INTO `employe` VALUES ('89', null, '关羽1218', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:39:06', 'guanyu', 'guanyu123', 'guanyu@ync365.com', '15312345678', '0');
INSERT INTO `employe` VALUES ('90', null, '马超1218', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:39:41', 'machao', 'machao123', 'machao@ync365.com', '15512345678', '0');
INSERT INTO `employe` VALUES ('91', null, '赵云1218', '5', '测试部--12月18号', null, '', '', null, '2015-12-18 10:40:10', 'zhaoyun', 'zhaoyun123', 'zhaoyun@ync365.com', '15612345678', '0');

-- ----------------------------
-- Table structure for `leader_assessment`
-- ----------------------------
DROP TABLE IF EXISTS `leader_assessment`;
CREATE TABLE `leader_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `be_evaluated_id` int(11) DEFAULT NULL,
  `be_evaluated_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `action1_score` double DEFAULT NULL,
  `action2_score` double DEFAULT NULL,
  `action3_score` double DEFAULT NULL,
  `action4_score` double DEFAULT NULL,
  `action5_score` double DEFAULT NULL,
  `total_score` double DEFAULT NULL,
  `comment` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `evaluated_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of leader_assessment
-- ----------------------------
INSERT INTO `leader_assessment` VALUES ('126', '1', '产品', 'diudiu', '49', 'aaa', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('127', '1', '产品', 'diudiu', '51', 'cp2', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('128', '1', '产品', 'diudiu', '52', 'cp3', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('129', '1', '产品', 'diudiu', '58', 'pm1', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('130', '1', '产品', 'diudiu', '59', 'pm2', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('131', '1', '产品', 'diudiu', '79', 'tt', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('132', '1', '产品', 'diudiu', '81', 'ggg', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('133', '2', '平台研发MT', 'kf1', '54', 'kf2', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('134', '2', '平台研发MT', 'kf1', '56', 'kf3', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('135', '2', '平台研发MT', 'kf1', '57', 'kf4', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('136', '3', 'UED', 'ued1', '62', 'ued2', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('137', '3', 'UED', 'ued1', '63', 'ued3', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('138', '3', 'UED', 'ued1', '65', 'ued4', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('139', '4', '测试', 'wer', '55', 'cs1', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('140', '4', '测试', 'wer', '64', 'cs2', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('141', '4', '测试', 'wer', '82', 'ffafa', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('142', '4', '测试', 'wer', '83', 'uuuu', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');
INSERT INTO `leader_assessment` VALUES ('143', '4', '测试', 'wer', '85', 'qqqqqq', null, null, null, null, null, '0', null, null, '2016-01-01 19:19:57');

-- ----------------------------
-- Table structure for `performance_evaluation`
-- ----------------------------
DROP TABLE IF EXISTS `performance_evaluation`;
CREATE TABLE `performance_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `be_evaluated_id` int(11) DEFAULT NULL,
  `be_evaluated_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `efficiency_score` double DEFAULT NULL,
  `specialty_score` double DEFAULT NULL,
  `leader_assessment_score` double DEFAULT NULL,
  `satisfaction_score` double DEFAULT NULL,
  `total_score` double DEFAULT NULL,
  `total_grade` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of performance_evaluation
-- ----------------------------
INSERT INTO `performance_evaluation` VALUES ('59', '51', 'cp2', '1', '产品', '0', '22', '5', '21.7', '48.7', 'B', '2016-01-04 14:29:53', '2015-12-16 12:06:57');
INSERT INTO `performance_evaluation` VALUES ('60', '54', 'kf2', '2', '平台研发MT', '0', '22', '5', '21', '48', '', '2016-01-04 14:29:53', '2016-01-04 14:29:53');
INSERT INTO `performance_evaluation` VALUES ('61', '56', 'kf3', '2', '平台研发MT', '0', '22', '5', '23', '50', '', '2016-01-04 14:29:53', '2016-01-04 14:29:54');
INSERT INTO `performance_evaluation` VALUES ('62', '57', 'kf4', '2', '平台研发MT', '0', '22', '5', '0', '27', '', '2016-01-04 14:29:54', '2016-01-04 14:29:54');
INSERT INTO `performance_evaluation` VALUES ('63', '62', 'ued2', '3', 'UED', '0', '22', '5', '21.5', '48.5', '', '2016-01-04 14:29:54', '2016-01-04 14:29:54');
INSERT INTO `performance_evaluation` VALUES ('64', '63', 'ued3', '3', 'UED', '0', '22', '5', '0', '27', '', '2016-01-04 14:29:54', '2016-01-04 14:29:54');
INSERT INTO `performance_evaluation` VALUES ('65', '64', 'cs2', '4', '测试', '0', '11', '5', '25', '41', 'A', '2016-01-04 14:29:55', '2016-01-04 14:31:32');
INSERT INTO `performance_evaluation` VALUES ('66', '1', '段朝骞', '1', '产品', '30.33', '30', '10.33', '30', '100', 'S', '2016-01-04 10:18:50', '2015-12-16 12:06:55');
INSERT INTO `performance_evaluation` VALUES ('67', '1', '段朝骞', '1', '产品', '30.33', '30', '10.33', '30', '100', 'A', '2016-01-04 10:18:50', '2015-12-16 12:06:56');

-- ----------------------------
-- Table structure for `pe_controller`
-- ----------------------------
DROP TABLE IF EXISTS `pe_controller`;
CREATE TABLE `pe_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `pe_date_department` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pe_controller
-- ----------------------------
INSERT INTO `pe_controller` VALUES ('11', '1', '产品_2015-11', '0', '2015-12-14 11:14:11', '2015-12-14 11:14:11');
INSERT INTO `pe_controller` VALUES ('12', '2', '平台研发MT_2015-11', '1', '2015-12-14 11:14:11', '2015-12-15 13:23:28');
INSERT INTO `pe_controller` VALUES ('13', '3', 'UED_2015-11', '0', '2015-12-14 11:14:11', '2015-12-14 11:14:11');
INSERT INTO `pe_controller` VALUES ('14', '4', '测试_2015-11', '0', '2015-12-14 11:14:11', '2015-12-14 11:14:11');
INSERT INTO `pe_controller` VALUES ('19', '1', '产品_2015-12', '0', '2016-01-01 11:40:45', '2016-01-01 11:40:45');
INSERT INTO `pe_controller` VALUES ('20', '2', '平台研发MT_2015-12', '0', '2016-01-01 11:40:45', '2016-01-01 11:40:45');
INSERT INTO `pe_controller` VALUES ('21', '3', 'UED_2015-12', '0', '2016-01-01 11:40:45', '2016-01-01 11:40:45');
INSERT INTO `pe_controller` VALUES ('22', '4', '测试_2015-12', '0', '2016-01-01 11:40:45', '2016-01-01 11:40:45');
INSERT INTO `pe_controller` VALUES ('23', '1', '产品_2016-02', '0', '2016-03-01 11:00:04', '2016-03-01 11:00:04');
INSERT INTO `pe_controller` VALUES ('24', '2', '平台研发MT_2016-02', '0', '2016-03-01 11:00:04', '2016-03-01 11:00:04');
INSERT INTO `pe_controller` VALUES ('25', '3', 'UED_2016-02', '0', '2016-03-01 11:00:04', '2016-03-01 11:00:04');
INSERT INTO `pe_controller` VALUES ('26', '4', '测试_2016-02', '0', '2016-03-01 11:00:04', '2016-03-01 11:00:04');
INSERT INTO `pe_controller` VALUES ('27', '5', '测试部--12月18号_2016-02', '0', '2016-03-01 11:00:04', '2016-03-01 11:00:04');

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `project_personnel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pm` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `project_begin_time` datetime DEFAULT NULL,
  `project_end_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `pm_id` int(11) DEFAULT NULL COMMENT '项目管理员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('118', 'ceshi001', 'cp2,ued2,cs2', 'aaa', '2015-12-15 00:00:00', '2015-12-15 00:00:00', '0', '2015-12-15 17:48:26', '49');
INSERT INTO `project` VALUES ('119', 'test', 'tt', 'aaa', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 17:50:34', '49');
INSERT INTO `project` VALUES ('120', 'ttss', 'cp2', 'aaa', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 17:51:22', '49');
INSERT INTO `project` VALUES ('121', 'ttt', 'cp2', 'aaa', '2015-12-15 00:00:00', '2015-12-16 00:00:00', '0', '2015-12-15 17:52:08', '49');
INSERT INTO `project` VALUES ('149', 'saefa', 'kf3', 'aaa', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '0', '2015-12-17 15:15:48', '49');
INSERT INTO `project` VALUES ('152', 'ttt', 'kf3', 'aaa', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '0', '2015-12-17 15:32:03', '49');
INSERT INTO `project` VALUES ('153', 'dafdsaf', 'kf3', 'aaa', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '0', '2015-12-17 15:37:06', '49');
INSERT INTO `project` VALUES ('155', 'eee', 'cp2', 'aaa', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '0', '2015-12-17 17:11:57', '49');
INSERT INTO `project` VALUES ('156', 'dfas', 'cp2', 'aaa', '2015-12-17 00:00:00', '2015-12-25 00:00:00', '0', '2015-12-17 17:14:10', '49');
INSERT INTO `project` VALUES ('157', 'dafsaf', 'tt', 'aaa', '2015-12-17 00:00:00', '2015-12-24 00:00:00', '0', '2015-12-17 17:44:26', '49');
INSERT INTO `project` VALUES ('158', 'rrrrr', 'ued3', 'aaa', '2015-12-17 00:00:00', '2015-12-17 00:00:00', '0', '2015-12-17 17:44:44', '49');
INSERT INTO `project` VALUES ('159', 'sdfa', 'tt,cp2', 'aaa', '2015-12-17 00:00:00', '2015-12-19 00:00:00', '0', '2015-12-17 18:00:21', '49');
INSERT INTO `project` VALUES ('160', '云科农服测试', '曹操1218,关羽1218,马超1218,赵云1218', '测试1218负责人', '2015-12-18 00:00:00', '2015-12-20 00:00:00', '0', '2015-12-18 10:46:53', '86');
INSERT INTO `project` VALUES ('161', 'load', 'kf2', 'aaa', '2015-12-18 00:00:00', '2015-12-18 00:00:00', '1', '2015-12-18 11:08:57', '49');

-- ----------------------------
-- Table structure for `project_change`
-- ----------------------------
DROP TABLE IF EXISTS `project_change`;
CREATE TABLE `project_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `change_before` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '改变之前',
  `change_after` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更改之后',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `opt_name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '操作员名字',
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `efficiency_id` int(11) DEFAULT NULL COMMENT '参加项目人员记录',
  `employe_id` int(11) DEFAULT NULL COMMENT '相关人员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of project_change
-- ----------------------------
INSERT INTO `project_change` VALUES ('180', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时23', '2015-12-15 17:49:12', 'aaa', '118', '234', '51');
INSERT INTO `project_change` VALUES ('182', null, 'ued2,UED,周期2015-12-15至2015-12-15,工时22', '2015-12-15 17:49:12', 'aaa', '118', '236', '62');
INSERT INTO `project_change` VALUES ('183', null, 'cs2,测试,周期2015-12-15至2015-12-15,工时22', '2015-12-15 17:49:12', 'aaa', '118', '237', '64');
INSERT INTO `project_change` VALUES ('185', null, 'tt,产品,周期2015-12-15至2015-12-15,工时8', '2015-12-15 17:50:34', 'aaa', '119', '239', '79');
INSERT INTO `project_change` VALUES ('186', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时1', '2015-12-15 17:51:22', 'aaa', '120', '240', '51');
INSERT INTO `project_change` VALUES ('187', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时1', '2015-12-15 17:52:08', 'aaa', '121', '241', '51');
INSERT INTO `project_change` VALUES ('188', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时11', '2015-12-15 17:55:49', 'aaa', '122', '242', '51');
INSERT INTO `project_change` VALUES ('189', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时1', '2015-12-15 18:00:29', 'aaa', '123', '243', '51');
INSERT INTO `project_change` VALUES ('190', null, 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时2', '2015-12-15 18:01:34', 'aaa', '124', '244', '54');
INSERT INTO `project_change` VALUES ('191', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时5', '2015-12-15 18:02:00', 'aaa', '125', '245', '51');
INSERT INTO `project_change` VALUES ('192', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时11', '2015-12-15 18:04:43', 'aaa', '126', '246', '51');
INSERT INTO `project_change` VALUES ('193', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时11', '2015-12-15 18:06:12', 'aaa', '127', '247', '51');
INSERT INTO `project_change` VALUES ('194', null, 'kf3,平台研发MT,周期2015-12-15至2015-12-15,工时11', '2015-12-15 18:06:12', 'aaa', '127', '248', '56');
INSERT INTO `project_change` VALUES ('202', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时3', '2015-12-15 18:54:44', 'aaa', '128', '256', '51');
INSERT INTO `project_change` VALUES ('203', null, 'ued3,UED,周期2015-12-15至2015-12-15,工时2', '2015-12-15 18:54:44', 'aaa', '128', '257', '63');
INSERT INTO `project_change` VALUES ('204', null, 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时4', '2015-12-15 18:54:44', 'aaa', '128', '258', '54');
INSERT INTO `project_change` VALUES ('205', null, 'ued2,UED,周期2015-12-15至2015-12-15,工时5', '2015-12-15 18:54:44', 'aaa', '128', '259', '62');
INSERT INTO `project_change` VALUES ('206', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时3', '2015-12-15 19:56:01', 'aaa', '129', '260', '51');
INSERT INTO `project_change` VALUES ('207', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时0', '2015-12-15 19:57:06', 'aaa', '129', '260', '51');
INSERT INTO `project_change` VALUES ('208', 'cp2,产品,周期2015-12-15至2015-12-15,工时3', 'cp2,产品,周期2015-12-15至2015-12-15,工时2', '2015-12-15 19:59:44', 'aaa', '130', '261', '51');
INSERT INTO `project_change` VALUES ('209', null, 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时5', '2015-12-15 19:59:44', 'aaa', '130', '262', '54');
INSERT INTO `project_change` VALUES ('210', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时1', '2015-12-15 20:18:49', 'aaa', '131', '263', '51');
INSERT INTO `project_change` VALUES ('211', null, 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时4', '2015-12-15 20:18:49', 'aaa', '131', '264', '54');
INSERT INTO `project_change` VALUES ('212', 'cp2,产品,周期2015-12-15至2015-12-15,工时1', 'cp2,产品,周期2015-12-15至2015-12-15,工时5', '2015-12-15 20:19:05', 'aaa', '131', '263', '51');
INSERT INTO `project_change` VALUES ('213', 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时4', 'kf2,平台研发MT,周期2015-12-15至2015-12-15,工时4', '2015-12-15 20:19:05', 'aaa', '131', '264', '54');
INSERT INTO `project_change` VALUES ('214', null, 'cp2,产品,周期2015-12-15至2015-12-15,工时3', '2015-12-15 21:11:11', 'aaa', '132', '265', '51');
INSERT INTO `project_change` VALUES ('215', null, 'kf3,平台研发MT,周期2015-12-15至2015-12-15,工时5', '2015-12-15 21:11:34', 'aaa', '132', '266', '56');
INSERT INTO `project_change` VALUES ('216', 'cp2,产品,周期2015-12-15至2015-12-15,工时3', 'cp2,产品,周期2015-12-15至2015-12-15,工时4', '2015-12-15 21:12:01', 'aaa', '132', '265', '51');
INSERT INTO `project_change` VALUES ('217', 'kf3,平台研发MT,周期2015-12-15至2015-12-15,工时5', 'kf3,平台研发MT,周期2015-12-15至2015-12-15,工时9', '2015-12-15 21:12:12', 'aaa', '132', '266', '56');
INSERT INTO `project_change` VALUES ('218', 'cp2,产品,周期2015-12-15至2015-12-15,工时4', 'cp2,产品,周期2015-12-15至2015-12-15,工时4', '2015-12-15 21:12:35', 'aaa', '132', '265', '51');
INSERT INTO `project_change` VALUES ('219', 'cp2,产品,周期2015-12-15至2015-12-15,工时4', 'cp2,产品,周期2015-12-15至2015-12-15,工时3', '2015-12-15 21:12:55', 'aaa', '132', '265', '51');
INSERT INTO `project_change` VALUES ('220', 'cp2,产品,周期2015-12-15至2015-12-15,工时3', 'cp2,产品,周期2015-12-15至2015-12-15,工时2', '2015-12-15 21:13:20', 'aaa', '132', '265', '51');
INSERT INTO `project_change` VALUES ('221', null, 'cp2,产品,周期2015-12-16至2015-12-16,工时5', '2015-12-16 10:08:29', 'aaa', '133', '267', '51');
INSERT INTO `project_change` VALUES ('222', null, 'kf2,平台研发MT,周期2015-12-16至2015-12-16,工时5', '2015-12-16 10:08:51', 'aaa', '133', '268', '54');
INSERT INTO `project_change` VALUES ('223', 'cp2,产品,周期2015-12-16至2015-12-16,工时5', 'cp2,产品,周期2015-12-16至2015-12-16,工时8', '2015-12-16 10:09:33', 'aaa', '133', '267', '51');
INSERT INTO `project_change` VALUES ('224', 'kf2,平台研发MT,周期2015-12-16至2015-12-16,工时5', 'kf2,平台研发MT,周期2015-12-16至2015-12-16,工时8', '2015-12-16 10:09:46', 'aaa', '133', '268', '54');
INSERT INTO `project_change` VALUES ('225', null, 'cp2,产品,周期2016-01-02至2016-02-03,工时2', '2015-12-16 11:32:21', 'aaa', '134', '269', '51');
INSERT INTO `project_change` VALUES ('226', 'cp2,产品,周期2016-01-02至2016-02-03,工时2', 'cp2,产品,周期2016-01-02至2016-02-03,工时2', '2015-12-16 13:57:57', 'aaa', '134', '269', '51');
INSERT INTO `project_change` VALUES ('227', null, 'kf2,平台研发MT,周期2015-12-16至2015-12-16,工时8', '2015-12-16 14:04:28', 'aaa', '134', '270', '54');
INSERT INTO `project_change` VALUES ('228', 'cp2,产品,周期2016-01-02至2016-02-03,工时2', 'cp2,产品,周期2016-01-02至2016-02-03,工时2', '2015-12-16 14:04:28', 'aaa', '134', '269', '51');
INSERT INTO `project_change` VALUES ('229', 'cp2,产品,周期2016-01-02至2016-02-03,工时2', 'cp2,产品,周期2016-01-02至2016-02-03,工时1', '2015-12-16 14:04:59', 'aaa', '134', '269', '51');
INSERT INTO `project_change` VALUES ('230', null, 'cp2,产品,周期2015-12-24至2015-12-24,工时1', '2015-12-16 20:28:10', 'cp1', '135', '271', '51');
INSERT INTO `project_change` VALUES ('231', null, 'kf3,平台研发MT,周期2015-12-17至2015-12-18,工时1', '2015-12-16 20:28:10', 'cp1', '135', '272', '56');
INSERT INTO `project_change` VALUES ('232', null, 'ued2,UED,周期2015-12-16至2015-12-16,工时11', '2015-12-16 20:28:10', 'cp1', '135', '273', '62');
INSERT INTO `project_change` VALUES ('233', null, 'qqqqqq,测试,周期2015-12-16至2015-12-17,工时1', '2015-12-16 20:28:10', 'cp1', '135', '274', '85');
INSERT INTO `project_change` VALUES ('234', null, 'cp2,产品,周期2015-12-16至2015-12-31,工时44', '2015-12-16 21:42:53', 'aaa', '136', '275', '51');
INSERT INTO `project_change` VALUES ('235', null, 'cp2,产品,周期2016-01-01至2016-02-05,工时666', '2015-12-16 21:42:53', 'aaa', '136', '276', '51');
INSERT INTO `project_change` VALUES ('236', null, 'cp2,产品,周期2015-12-16至2015-12-31,工时4', '2015-12-16 21:45:40', 'aaa', '137', '277', '51');
INSERT INTO `project_change` VALUES ('237', null, 'cp2,产品,周期2016-01-01至2016-01-05,工时9', '2015-12-16 21:45:40', 'aaa', '137', '278', '51');
INSERT INTO `project_change` VALUES ('238', null, 'kf2,平台研发MT,周期2015-12-16至2015-12-31,工时7', '2015-12-16 21:45:40', 'aaa', '137', '279', '54');
INSERT INTO `project_change` VALUES ('239', null, 'kf2,平台研发MT,周期2016-01-01至2016-01-05,工时8', '2015-12-16 21:45:40', 'aaa', '137', '280', '54');
INSERT INTO `project_change` VALUES ('240', null, 'ued2,UED,周期2015-12-16至2015-12-31,工时7', '2015-12-16 21:45:40', 'aaa', '137', '281', '62');
INSERT INTO `project_change` VALUES ('241', null, 'ffafa,测试,周期2015-12-16至2015-12-31,工时8', '2015-12-16 21:45:40', 'aaa', '137', '282', '82');
INSERT INTO `project_change` VALUES ('242', null, 'tt,产品,周期2015-12-17至2015-12-24,工时4', '2015-12-17 10:01:35', 'aaa', '138', '283', '79');
INSERT INTO `project_change` VALUES ('243', null, 'kf3,平台研发MT,周期2015-12-18至2015-12-31,工时4', '2015-12-17 10:01:35', 'aaa', '138', '284', '56');
INSERT INTO `project_change` VALUES ('244', null, 'kf2,平台研发MT,周期2015-12-17至2015-12-17;工时4小时', '2015-12-17 12:38:02', 'aaa', '139', '286', '54');
INSERT INTO `project_change` VALUES ('245', null, 'cp2,产品,周期2015-12-17至2015-12-17;工时3小时', '2015-12-17 12:39:25', 'aaa', '139', '287', '51');
INSERT INTO `project_change` VALUES ('246', null, 'kf2,平台研发MT,周期2015-12-17至2015-12-17;工时4小时', '2015-12-17 12:39:54', 'aaa', '139', '288', '54');
INSERT INTO `project_change` VALUES ('247', null, 'ued2,UED,周期2015-12-17至2015-12-17;工时5小时', '2015-12-17 12:40:28', 'aaa', '139', '289', '62');
INSERT INTO `project_change` VALUES ('248', 'cp2,产品,周期2015-12-17至2015-12-17;工时3小时', null, '2015-12-17 12:40:51', 'aaa', '139', '285', '51');
INSERT INTO `project_change` VALUES ('249', 'kf2,平台研发MT,周期2015-12-17至2015-12-17;工时4小时', null, '2015-12-17 12:40:57', 'aaa', '139', '286', '54');
INSERT INTO `project_change` VALUES ('250', null, 'kf2,平台研发MT,周期2015-12-17至2015-12-17;工时4小时', '2015-12-17 12:45:00', 'aaa', '140', '291', '54');
INSERT INTO `project_change` VALUES ('251', 'cp2,产品,周期2015-12-17至2015-12-18;工时1小时', null, '2015-12-17 12:46:36', 'aaa', '140', '290', '51');
INSERT INTO `project_change` VALUES ('252', null, 'ued2,UED,周期2015-12-17至2015-12-17;工时5小时', '2015-12-17 12:48:04', 'aaa', '140', '292', '62');
INSERT INTO `project_change` VALUES ('253', 'kf2,平台研发MT,周期2015-12-17至2015-12-17;工时4小时', null, '2015-12-17 12:49:42', 'aaa', '140', '291', '54');
INSERT INTO `project_change` VALUES ('254', null, 'cp2,产品,周期2015-12-17至2015-12-17;工时5小时', '2015-12-17 12:50:53', 'aaa', '140', '293', '51');
INSERT INTO `project_change` VALUES ('255', 'ued2,UED,周期2015-12-17至2015-12-17;工时5小时', null, '2015-12-17 12:51:47', 'aaa', '140', '292', '62');
INSERT INTO `project_change` VALUES ('256', 'cp2,产品,周期2015-12-17至2015-12-17;工时1小时', 'cp2,产品,周期2015-12-17至2015-12-18;工时7小时', '2015-12-17 13:15:21', 'aaa', '141', '294', '51');
INSERT INTO `project_change` VALUES ('257', null, 'kf2,平台研发MT,周期2015-12-17至2015-12-18;工时5小时', '2015-12-17 13:22:37', 'aaa', '141', '295', '54');
INSERT INTO `project_change` VALUES ('258', null, 'ued2,UED,周期2015-12-17至2015-12-17;工时6小时', '2015-12-17 13:25:41', 'aaa', '141', '296', '62');
INSERT INTO `project_change` VALUES ('259', null, 'cs2,测试,周期2015-12-17至2015-12-17;工时4小时', '2015-12-17 13:28:21', 'aaa', '141', '297', '64');
INSERT INTO `project_change` VALUES ('260', 'kf2,平台研发MT,周期2015-12-17至2015-12-18;工时5小时', null, '2015-12-17 13:28:42', 'aaa', '141', '295', '54');
INSERT INTO `project_change` VALUES ('261', 'ued2,UED,周期2015-12-17至2015-12-17;工时6小时', 'ued2,UED,周期2015-12-17至2015-12-17;工时9小时', '2015-12-17 13:29:14', 'aaa', '141', '296', '62');
INSERT INTO `project_change` VALUES ('267', null, '曹操1218,测试部--12月18号,周期2015-12-18至2015-12-20,工时20', '2015-12-18 10:47:20', '测试1218负责人', '160', '322', '87');
INSERT INTO `project_change` VALUES ('268', null, '关羽1218,测试部--12月18号,周期2015-12-18至2015-12-20,工时20', '2015-12-18 10:47:20', '测试1218负责人', '160', '323', '89');
INSERT INTO `project_change` VALUES ('269', null, '马超1218,测试部--12月18号,周期2015-12-18至2015-12-20,工时20', '2015-12-18 10:47:20', '测试1218负责人', '160', '324', '90');
INSERT INTO `project_change` VALUES ('270', null, '赵云1218,测试部--12月18号,周期2015-12-18至2015-12-20,工时20', '2015-12-18 10:47:20', '测试1218负责人', '160', '325', '91');

-- ----------------------------
-- Table structure for `properties`
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES ('1', 'efficiency_score', '30');
INSERT INTO `properties` VALUES ('2', 'leader_assessment_score', '11');
INSERT INTO `properties` VALUES ('3', 'satisfaction_score', '30');
INSERT INTO `properties` VALUES ('4', 'specialty_score', '29');
INSERT INTO `properties` VALUES ('9', 'hr_username', 'admin,hr');

-- ----------------------------
-- Table structure for `satisfaction`
-- ----------------------------
DROP TABLE IF EXISTS `satisfaction`;
CREATE TABLE `satisfaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `project_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `evaluated_id` int(11) DEFAULT NULL,
  `evaluated_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `evaluated_department_id` int(11) DEFAULT NULL,
  `evaluated_department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `be_evaluated_id` int(11) DEFAULT NULL,
  `be_evaluated_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `be_evaluated_department_id` int(11) DEFAULT NULL,
  `be_evaluated_department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `evaluated_time` datetime DEFAULT NULL,
  `score` double DEFAULT NULL,
  `comment` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of satisfaction
-- ----------------------------
INSERT INTO `satisfaction` VALUES ('206', '118', 'ceshi001', '51', 'cp2', '1', '产品', '64', 'cs2', '4', '测试', null, null, null, '2015-12-15 17:48:26');
INSERT INTO `satisfaction` VALUES ('209', '118', 'ceshi001', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 17:48:26');
INSERT INTO `satisfaction` VALUES ('211', '127', '3333333', '56', 'kf3', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 18:06:12');
INSERT INTO `satisfaction` VALUES ('215', '128', 'ddd', '63', 'ued3', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 18:54:29');
INSERT INTO `satisfaction` VALUES ('216', '128', 'ddd', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 18:54:29');
INSERT INTO `satisfaction` VALUES ('217', '128', 'ddd', '54', 'kf2', '2', '平台研发MT', '63', 'ued3', '3', 'UED', null, null, null, '2015-12-15 18:54:29');
INSERT INTO `satisfaction` VALUES ('218', '128', 'ddd', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 18:54:44');
INSERT INTO `satisfaction` VALUES ('219', '128', 'ddd', '54', 'kf2', '2', '平台研发MT', '62', 'ued2', '3', 'UED', null, null, null, '2015-12-15 18:54:44');
INSERT INTO `satisfaction` VALUES ('220', '130', 'dafdfafad', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 19:59:44');
INSERT INTO `satisfaction` VALUES ('221', '131', 'cs0000', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 20:18:49');
INSERT INTO `satisfaction` VALUES ('222', '132', 'dafdasf', '56', 'kf3', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-15 21:11:34');
INSERT INTO `satisfaction` VALUES ('223', '133', 'cesih666', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 10:09:05');
INSERT INTO `satisfaction` VALUES ('224', '134', 'ceshi ', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 14:04:28');
INSERT INTO `satisfaction` VALUES ('225', '135', 'test133333333', '51', 'cp2', '1', '产品', '85', 'qqqqqq', '4', '测试', null, null, null, '2015-12-16 20:28:10');
INSERT INTO `satisfaction` VALUES ('226', '135', 'test133333333', '56', 'kf3', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 20:28:10');
INSERT INTO `satisfaction` VALUES ('227', '135', 'test133333333', '56', 'kf3', '2', '平台研发MT', '62', 'ued2', '3', 'UED', null, null, null, '2015-12-16 20:28:10');
INSERT INTO `satisfaction` VALUES ('228', '135', 'test133333333', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 20:28:10');
INSERT INTO `satisfaction` VALUES ('229', '135', 'test133333333', '85', 'qqqqqq', '4', '测试', '56', 'kf3', '2', '平台研发MT', null, null, null, '2015-12-16 20:28:10');
INSERT INTO `satisfaction` VALUES ('230', '137', 'dafedawfeeawf', '51', 'cp2', '1', '产品', '82', 'ffafa', '4', '测试', null, null, null, '2015-12-16 21:45:40');
INSERT INTO `satisfaction` VALUES ('231', '137', 'dafedawfeeawf', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 21:45:40');
INSERT INTO `satisfaction` VALUES ('232', '137', 'dafedawfeeawf', '54', 'kf2', '2', '平台研发MT', '62', 'ued2', '3', 'UED', null, null, null, '2015-12-16 21:45:40');
INSERT INTO `satisfaction` VALUES ('233', '137', 'dafedawfeeawf', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-16 21:45:40');
INSERT INTO `satisfaction` VALUES ('234', '137', 'dafedawfeeawf', '82', 'ffafa', '4', '测试', '54', 'kf2', '2', '平台研发MT', null, null, null, '2015-12-16 21:45:40');
INSERT INTO `satisfaction` VALUES ('235', '138', 'erewer', '56', 'kf3', '2', '平台研发MT', '79', 'tt', '1', '产品', null, null, null, '2015-12-17 10:01:35');
INSERT INTO `satisfaction` VALUES ('237', '139', 'cs001', '54', 'kf2', '2', '平台研发MT', '51', 'cp2', '1', '产品', null, null, null, '2015-12-17 12:41:03');
INSERT INTO `satisfaction` VALUES ('238', '139', 'cs001', '54', 'kf2', '2', '平台研发MT', '62', 'ued2', '3', 'UED', null, null, null, '2015-12-17 12:41:03');
INSERT INTO `satisfaction` VALUES ('239', '139', 'cs001', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-17 12:41:03');
INSERT INTO `satisfaction` VALUES ('243', '141', 'rrrr', '62', 'ued2', '3', 'UED', '51', 'cp2', '1', '产品', null, null, null, '2015-12-17 13:26:44');
INSERT INTO `satisfaction` VALUES ('245', '141', 'rrrr', '51', 'cp2', '1', '产品', '64', 'cs2', '4', '测试', null, null, null, '2015-12-17 13:29:29');

-- ----------------------------
-- Table structure for `satisfaction_result`
-- ----------------------------
DROP TABLE IF EXISTS `satisfaction_result`;
CREATE TABLE `satisfaction_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `be_evaluated_department_id` int(11) DEFAULT NULL,
  `be_evaluated_department_name` varchar(45) DEFAULT NULL,
  `be_evaluated_id` int(11) DEFAULT NULL,
  `be_evaluated_name` varchar(45) DEFAULT NULL,
  `project_num` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `evaluated_time` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of satisfaction_result
-- ----------------------------
INSERT INTO `satisfaction_result` VALUES ('209', '4', '测试', '64', 'cs2', '3', '15.7', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('210', '1', '产品', '51', 'cp2', '9', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('211', '2', '平台研发MT', '54', 'kf2', '4', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('212', '2', '平台研发MT', '56', 'kf3', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('213', '1', '产品', '50', 'cp1', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('214', '3', 'UED', '62', 'ued2', '4', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('215', '1', '产品', '52', 'cp3', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('216', '3', 'UED', '63', 'ued3', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('217', '4', '测试', '55', 'cs1', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('218', '123', '测试', '321', '孙轶凡', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('219', '4', '测试', '4', 'wanglix', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('220', '1', '产品', '1', 'liugd', '2', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('221', '3', 'UED', '3', 'buzd', '1', '11', '2015-12-01', '2016-01-01 14:58:46');
INSERT INTO `satisfaction_result` VALUES ('222', '2', '开发', '2', 'sunyf', '1', '11', '2015-12-01', '2016-01-01 14:58:46');

-- ----------------------------
-- Table structure for `specialty`
-- ----------------------------
DROP TABLE IF EXISTS `specialty`;
CREATE TABLE `specialty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `specialty_id` int(11) DEFAULT NULL,
  `specialty_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `score` double DEFAULT NULL,
  `evaluate_id` int(11) DEFAULT NULL,
  `evaluate_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `be_evaluated_id` int(11) DEFAULT NULL,
  `be_evaluated_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `evaluate_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `mt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=974 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of specialty
-- ----------------------------
INSERT INTO `specialty` VALUES ('784', '2', '平台研发MT', '16', '认真负责111', null, null, null, '54', 'kf2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('785', '2', '平台研发MT', '16', '认真负责111', null, null, null, '56', 'kf3', null, '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('786', '2', '平台研发MT', '16', '认真负责111', null, null, null, '57', 'kf4', null, '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('787', '2', '平台研发MT', '17', '快速高效', null, null, null, '54', 'kf2', null, '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('788', '2', '平台研发MT', '17', '快速高效', null, null, null, '56', 'kf3', null, '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('789', '2', '平台研发MT', '17', '快速高效', null, null, null, '57', 'kf4', null, '2015-10-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('790', '1', '产品', '18', '耐挫勿傲', null, null, null, '49', 'aaa', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('791', '1', '产品', '18', '耐挫勿傲', null, null, null, '50', 'cp1', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('792', '1', '产品', '18', '耐挫勿傲', null, null, null, '51', 'cp2', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('793', '1', '产品', '18', '耐挫勿傲', null, null, null, '52', 'cp3', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('794', '1', '产品', '18', '耐挫勿傲', null, null, null, '58', 'pm1', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('795', '1', '产品', '18', '耐挫勿傲', null, null, null, '59', 'pm2', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('796', '1', '产品', '19', '专注目标', null, null, null, '49', 'aaa', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('797', '1', '产品', '19', '专注目标', null, null, null, '50', 'cp1', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('798', '1', '产品', '19', '专注目标', null, null, null, '51', 'cp2', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('799', '1', '产品', '19', '专注目标', null, null, null, '52', 'cp3', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('800', '1', '产品', '19', '专注目标', null, null, null, '58', 'pm1', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('801', '1', '产品', '19', '专注目标', null, null, null, '59', 'pm2', null, '2015-10-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('802', '3', 'UED', '20', '积极向上', null, null, null, '62', 'ued2', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('803', '3', 'UED', '20', '积极向上', null, null, null, '63', 'ued3', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('804', '3', 'UED', '20', '积极向上', null, null, null, '65', 'ued4', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('805', '3', 'UED', '21', '乐观阳光', null, null, null, '62', 'ued2', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('806', '3', 'UED', '21', '乐观阳光', null, null, null, '63', 'ued3', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('807', '3', 'UED', '21', '乐观阳光', null, null, null, '65', 'ued4', null, '2015-10-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('808', '4', '测试', '24', '测试01', null, null, null, '64', 'cs2', null, '2015-10-01 10:38:55', null, null, '张三');
INSERT INTO `specialty` VALUES ('809', '2', '平台研发MT', '16', '认真负责111', null, null, null, '54', 'kf2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('810', '2', '平台研发MT', '16', '认真负责111', null, null, null, '56', 'kf3', null, '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('811', '2', '平台研发MT', '16', '认真负责111', null, null, null, '57', 'kf4', null, '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('812', '2', '平台研发MT', '17', '快速高效', null, null, null, '54', 'kf2', null, '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('813', '2', '平台研发MT', '17', '快速高效', null, null, null, '56', 'kf3', null, '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('814', '2', '平台研发MT', '17', '快速高效', null, null, null, '57', 'kf4', null, '2015-11-01 10:38:55', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('815', '1', '产品', '18', '耐挫勿傲', null, null, null, '49', 'aaa', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('816', '1', '产品', '18', '耐挫勿傲', null, null, null, '50', 'cp1', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('817', '1', '产品', '18', '耐挫勿傲', null, null, null, '51', 'cp2', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('818', '1', '产品', '18', '耐挫勿傲', null, null, null, '52', 'cp3', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('819', '1', '产品', '18', '耐挫勿傲', null, null, null, '58', 'pm1', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('820', '1', '产品', '18', '耐挫勿傲', null, null, null, '59', 'pm2', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('821', '1', '产品', '19', '专注目标', null, null, null, '49', 'aaa', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('822', '1', '产品', '19', '专注目标', null, null, null, '50', 'cp1', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('823', '1', '产品', '19', '专注目标', null, null, null, '51', 'cp2', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('824', '1', '产品', '19', '专注目标', null, null, null, '52', 'cp3', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('825', '1', '产品', '19', '专注目标', null, null, null, '58', 'pm1', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('826', '1', '产品', '19', '专注目标', null, null, null, '59', 'pm2', null, '2015-11-01 10:38:55', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('827', '3', 'UED', '20', '积极向上', null, null, null, '62', 'ued2', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('828', '3', 'UED', '20', '积极向上', null, null, null, '63', 'ued3', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('829', '3', 'UED', '20', '积极向上', null, null, null, '65', 'ued4', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('830', '3', 'UED', '21', '乐观阳光', null, null, null, '62', 'ued2', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('831', '3', 'UED', '21', '乐观阳光', null, null, null, '63', 'ued3', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('832', '3', 'UED', '21', '乐观阳光', null, null, null, '65', 'ued4', null, '2015-11-01 10:38:55', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('833', '4', '测试', '24', '测试01', null, null, null, '64', 'cs2', null, '2015-11-01 10:38:55', null, null, '张三');
INSERT INTO `specialty` VALUES ('842', '2', '平台研发MT', '16', '认真负责111', '14', '53', 'kf1', '54', 'kf2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-12-01 13:23:31', '2015-12-03 15:58:19', null, 'kf1');
INSERT INTO `specialty` VALUES ('843', '2', '平台研发MT', '16', '认真负责111', null, null, null, '56', 'kf3', null, '2015-12-01 13:23:31', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('844', '2', '平台研发MT', '16', '认真负责111', null, null, null, '57', 'kf4', null, '2015-12-01 13:23:31', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('845', '2', '平台研发MT', '17', '快速高效', '13', '53', 'kf1', '54', 'kf2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-12-01 13:23:31', '2015-12-03 15:58:19', null, 'kf1');
INSERT INTO `specialty` VALUES ('846', '2', '平台研发MT', '17', '快速高效', null, null, null, '56', 'kf3', null, '2015-12-01 13:23:31', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('847', '2', '平台研发MT', '17', '快速高效', null, null, null, '57', 'kf4', null, '2015-12-01 13:23:31', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('848', '1', '产品', '18', '耐挫勿傲', null, null, null, '49', 'aaa', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('849', '1', '产品', '18', '耐挫勿傲', null, null, null, '50', 'cp1', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('850', '1', '产品', '18', '耐挫勿傲', '15', '50', 'cp1', '51', 'cp2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-12-01 13:23:31', '2015-12-03 15:56:16', null, 'diudiu');
INSERT INTO `specialty` VALUES ('851', '1', '产品', '18', '耐挫勿傲', null, null, null, '52', 'cp3', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('852', '1', '产品', '18', '耐挫勿傲', null, null, null, '58', 'pm1', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('853', '1', '产品', '18', '耐挫勿傲', null, null, null, '59', 'pm2', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('854', '1', '产品', '18', '耐挫勿傲', null, null, null, '79', 'tt', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('855', '1', '产品', '19', '专注目标', null, null, null, '49', 'aaa', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('856', '1', '产品', '19', '专注目标', null, null, null, '50', 'cp1', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('857', '1', '产品', '19', '专注目标', '14', '50', 'cp1', '51', 'cp2', '测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度测试评语长度', '2015-12-01 13:23:31', '2015-12-03 15:56:16', null, 'diudiu');
INSERT INTO `specialty` VALUES ('858', '1', '产品', '19', '专注目标', null, null, null, '52', 'cp3', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('859', '1', '产品', '19', '专注目标', null, null, null, '58', 'pm1', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('860', '1', '产品', '19', '专注目标', null, null, null, '59', 'pm2', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('861', '1', '产品', '19', '专注目标', null, null, null, '79', 'tt', null, '2015-12-01 13:23:31', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('862', '3', 'UED', '20', '积极向上', null, null, null, '62', 'ued2', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('863', '3', 'UED', '20', '积极向上', null, null, null, '63', 'ued3', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('864', '3', 'UED', '20', '积极向上', null, null, null, '65', 'ued4', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('865', '3', 'UED', '21', '乐观阳光', null, null, null, '62', 'ued2', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('866', '3', 'UED', '21', '乐观阳光', null, null, null, '63', 'ued3', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('867', '3', 'UED', '21', '乐观阳光', null, null, null, '65', 'ued4', null, '2015-12-01 13:23:31', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('868', '4', '测试', '24', '测试01', null, null, null, '64', 'cs2', null, '2015-12-01 13:23:31', null, null, '张三');
INSERT INTO `specialty` VALUES ('869', '2', '平台研发MT', '16', '认真负责1601', null, null, null, '54', 'kf2', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('870', '2', '平台研发MT', '16', '认真负责1601', null, null, null, '56', 'kf3', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('871', '2', '平台研发MT', '16', '认真负责1601', null, null, null, '57', 'kf4', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('872', '2', '平台研发MT', '17', '快速高效1601', null, null, null, '54', 'kf2', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('873', '2', '平台研发MT', '17', '快速高效1601', null, null, null, '56', 'kf3', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('874', '2', '平台研发MT', '17', '快速高效1601', null, null, null, '57', 'kf4', null, '2016-01-01 14:52:35', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('875', '1', '产品', '18', '耐挫勿傲1601', null, null, null, '51', 'cp2', null, '2016-01-01 14:52:35', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('876', '1', '产品', '18', '耐挫勿傲1601', null, null, null, '52', 'cp3', null, '2016-01-01 14:52:35', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('877', '1', '产品', '18', '耐挫勿傲1601', null, null, null, '58', 'pm1', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('878', '1', '产品', '18', '耐挫勿傲1601', null, null, null, '59', 'pm2', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('879', '1', '产品', '18', '耐挫勿傲1601', null, null, null, '79', 'tt', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('880', '1', '产品', '19', '专注目标1601', null, null, null, '51', 'cp2', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('881', '1', '产品', '19', '专注目标1601', null, null, null, '52', 'cp3', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('882', '1', '产品', '19', '专注目标1601', null, null, null, '58', 'pm1', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('883', '1', '产品', '19', '专注目标1601', null, null, null, '59', 'pm2', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('884', '1', '产品', '19', '专注目标1601', null, null, null, '79', 'tt', null, '2016-01-01 14:52:36', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('885', '3', 'UED', '20', '积极向上1601', null, null, null, '62', 'ued2', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('886', '3', 'UED', '20', '积极向上1601', null, null, null, '63', 'ued3', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('887', '3', 'UED', '20', '积极向上1601', null, null, null, '65', 'ued4', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('888', '3', 'UED', '21', '乐观阳光1601', null, null, null, '62', 'ued2', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('889', '3', 'UED', '21', '乐观阳光1601', null, null, null, '63', 'ued3', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('890', '3', 'UED', '21', '乐观阳光1601', null, null, null, '65', 'ued4', null, '2016-01-01 14:52:36', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('891', '4', '测试', '24', '测试011601', null, null, null, '64', 'cs2', null, '2016-01-01 14:52:36', null, null, '张三');
INSERT INTO `specialty` VALUES ('892', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '54', 'kf2', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('893', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '56', 'kf3', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('894', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '57', 'kf4', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('895', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '54', 'kf2', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('896', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '56', 'kf3', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('897', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '57', 'kf4', null, '2016-02-01 09:59:14', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('898', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '49', 'aaa', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('899', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '51', 'cp2', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('900', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '52', 'cp3', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('901', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '58', 'pm1', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('902', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '59', 'pm2', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('903', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '79', 'tt', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('904', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '81', 'ggg', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('905', '1', '产品', '19', '专注目标201602', null, null, null, '49', 'aaa', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('906', '1', '产品', '19', '专注目标201602', null, null, null, '51', 'cp2', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('907', '1', '产品', '19', '专注目标201602', null, null, null, '52', 'cp3', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('908', '1', '产品', '19', '专注目标201602', null, null, null, '58', 'pm1', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('909', '1', '产品', '19', '专注目标201602', null, null, null, '59', 'pm2', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('910', '1', '产品', '19', '专注目标201602', null, null, null, '79', 'tt', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('911', '1', '产品', '19', '专注目标201602', null, null, null, '81', 'ggg', null, '2016-02-01 09:59:14', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('912', '3', 'UED', '20', '积极向上201602', null, null, null, '62', 'ued2', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('913', '3', 'UED', '20', '积极向上201602', null, null, null, '63', 'ued3', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('914', '3', 'UED', '20', '积极向上201602', null, null, null, '65', 'ued4', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('915', '3', 'UED', '21', '乐观阳光201602', null, null, null, '62', 'ued2', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('916', '3', 'UED', '21', '乐观阳光201602', null, null, null, '63', 'ued3', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('917', '3', 'UED', '21', '乐观阳光201602', null, null, null, '65', 'ued4', null, '2016-02-01 09:59:14', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('918', '4', '测试', '24', '测试01201602', null, null, null, '55', 'cs1', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('919', '4', '测试', '24', '测试01201602', null, null, null, '64', 'cs2', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('920', '4', '测试', '24', '测试01201602', null, null, null, '82', 'ffafa', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('921', '4', '测试', '24', '测试01201602', null, null, null, '83', 'uuuu', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('922', '4', '测试', '24', '测试01201602', null, null, null, '85', 'qqqqqq', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('923', '4', '测试', '29', '测试02201602', null, null, null, '55', 'cs1', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('924', '4', '测试', '29', '测试02201602', null, null, null, '64', 'cs2', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('925', '4', '测试', '29', '测试02201602', null, null, null, '82', 'ffafa', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('926', '4', '测试', '29', '测试02201602', null, null, null, '83', 'uuuu', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('927', '4', '测试', '29', '测试02201602', null, null, null, '85', 'qqqqqq', null, '2016-02-01 09:59:14', null, null, 'wer');
INSERT INTO `specialty` VALUES ('928', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '54', 'kf2', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('929', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '56', 'kf3', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('930', '2', '平台研发MT', '16', '认真负责201602', null, null, null, '57', 'kf4', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('931', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '54', 'kf2', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('932', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '56', 'kf3', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('933', '2', '平台研发MT', '17', '快速高效201602', null, null, null, '57', 'kf4', null, '2016-03-01 11:00:05', null, null, 'kf1');
INSERT INTO `specialty` VALUES ('934', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '49', 'aaa', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('935', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '51', 'cp2', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('936', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '52', 'cp3', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('937', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '58', 'pm1', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('938', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '59', 'pm2', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('939', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '79', 'tt', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('940', '1', '产品', '18', '耐挫勿傲201602', null, null, null, '81', 'ggg', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('941', '1', '产品', '19', '专注目标201602', null, null, null, '49', 'aaa', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('942', '1', '产品', '19', '专注目标201602', null, null, null, '51', 'cp2', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('943', '1', '产品', '19', '专注目标201602', null, null, null, '52', 'cp3', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('944', '1', '产品', '19', '专注目标201602', null, null, null, '58', 'pm1', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('945', '1', '产品', '19', '专注目标201602', null, null, null, '59', 'pm2', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('946', '1', '产品', '19', '专注目标201602', null, null, null, '79', 'tt', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('947', '1', '产品', '19', '专注目标201602', null, null, null, '81', 'ggg', null, '2016-03-01 11:00:05', null, null, 'diudiu');
INSERT INTO `specialty` VALUES ('948', '3', 'UED', '20', '积极向上201602', null, null, null, '62', 'ued2', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('949', '3', 'UED', '20', '积极向上201602', null, null, null, '63', 'ued3', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('950', '3', 'UED', '20', '积极向上201602', null, null, null, '65', 'ued4', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('951', '3', 'UED', '21', '乐观阳光201602', null, null, null, '62', 'ued2', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('952', '3', 'UED', '21', '乐观阳光201602', null, null, null, '63', 'ued3', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('953', '3', 'UED', '21', '乐观阳光201602', null, null, null, '65', 'ued4', null, '2016-03-01 11:00:05', null, null, 'ued1');
INSERT INTO `specialty` VALUES ('954', '4', '测试', '24', '测试01201602', null, null, null, '55', 'cs1', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('955', '4', '测试', '24', '测试01201602', null, null, null, '64', 'cs2', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('956', '4', '测试', '24', '测试01201602', null, null, null, '82', 'ffafa', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('957', '4', '测试', '24', '测试01201602', null, null, null, '83', 'uuuu', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('958', '4', '测试', '24', '测试01201602', null, null, null, '85', 'qqqqqq', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('959', '4', '测试', '29', '测试02201602', null, null, null, '55', 'cs1', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('960', '4', '测试', '29', '测试02201602', null, null, null, '64', 'cs2', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('961', '4', '测试', '29', '测试02201602', null, null, null, '82', 'ffafa', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('962', '4', '测试', '29', '测试02201602', null, null, null, '83', 'uuuu', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('963', '4', '测试', '29', '测试02201602', null, null, null, '85', 'qqqqqq', null, '2016-03-01 11:00:05', null, null, 'wer');
INSERT INTO `specialty` VALUES ('964', '5', '测试部--12月18号', '30', '测试专业性01--1218', null, null, null, '87', '曹操1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('965', '5', '测试部--12月18号', '30', '测试专业性01--1218', null, null, null, '88', '刘备1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('966', '5', '测试部--12月18号', '30', '测试专业性01--1218', null, null, null, '89', '关羽1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('967', '5', '测试部--12月18号', '30', '测试专业性01--1218', null, null, null, '90', '马超1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('968', '5', '测试部--12月18号', '30', '测试专业性01--1218', null, null, null, '91', '赵云1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('969', '5', '测试部--12月18号', '31', '测试专业性02--1218', null, null, null, '87', '曹操1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('970', '5', '测试部--12月18号', '31', '测试专业性02--1218', null, null, null, '88', '刘备1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('971', '5', '测试部--12月18号', '31', '测试专业性02--1218', null, null, null, '89', '关羽1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('972', '5', '测试部--12月18号', '31', '测试专业性02--1218', null, null, null, '90', '马超1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');
INSERT INTO `specialty` VALUES ('973', '5', '测试部--12月18号', '31', '测试专业性02--1218', null, null, null, '91', '赵云1218', null, '2016-03-01 11:00:05', null, null, '测试1218负责人');

-- ----------------------------
-- Table structure for `specialty_history`
-- ----------------------------
DROP TABLE IF EXISTS `specialty_history`;
CREATE TABLE `specialty_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of specialty_history
-- ----------------------------
INSERT INTO `specialty_history` VALUES ('245', '16', '认真负责111', '2', '平台研发MT', '开发1', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('246', '17', '快速高效', '2', '平台研发MT', '开发1', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('247', '18', '耐挫勿傲', '1', '产品', '赵七', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('248', '19', '专注目标', '1', '产品', '赵七', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('249', '20', '积极向上', '3', 'UED', '李小六', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('250', '21', '乐观阳光', '3', 'UED', '李小六', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('251', '24', '测试01', '4', '测试', '张三', '2015-10-01 10:38:55');
INSERT INTO `specialty_history` VALUES ('252', '16', '认真负责111', '2', '平台研发MT', '开发1', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('253', '17', '快速高效', '2', '平台研发MT', '开发1', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('254', '18', '耐挫勿傲', '1', '产品', '赵七', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('255', '19', '专注目标', '1', '产品', '赵七', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('256', '20', '积极向上', '3', 'UED', '李小六', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('257', '21', '乐观阳光', '3', 'UED', '李小六', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('258', '24', '测试01', '4', '测试', '张三', '2015-11-01 10:40:03');
INSERT INTO `specialty_history` VALUES ('259', '16', '认真负责111', '2', '平台研发MT', '开发1', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('260', '17', '快速高效', '2', '平台研发MT', '开发1', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('261', '18', '耐挫勿傲', '1', '产品', '赵七', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('262', '19', '专注目标', '1', '产品', '赵七', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('263', '20', '积极向上', '3', 'UED', '李小六', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('264', '21', '乐观阳光', '3', 'UED', '李小六', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('265', '24', '测试01', '4', '测试', '张三', '2015-12-01 13:23:30');
INSERT INTO `specialty_history` VALUES ('267', '16', '认真负责1601', '2', '平台研发MT', '开发1', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('268', '17', '快速高效1601', '2', '平台研发MT', '开发1', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('269', '18', '耐挫勿傲1601', '1', '产品', '赵七', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('270', '19', '专注目标1601', '1', '产品', '赵七', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('271', '20', '积极向上1601', '3', 'UED', '李小六', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('272', '21', '乐观阳光1601', '3', 'UED', '李小六', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('273', '24', '测试011601', '4', '测试', '张三', '2016-01-01 14:52:35');
INSERT INTO `specialty_history` VALUES ('274', '16', '认真负责201602', '2', '平台研发MT', '开发1', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('275', '17', '快速高效201602', '2', '平台研发MT', '开发1', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('276', '18', '耐挫勿傲201602', '1', '产品', '赵七', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('277', '19', '专注目标201602', '1', '产品', '赵七', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('278', '20', '积极向上201602', '3', 'UED', '李小六', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('279', '21', '乐观阳光201602', '3', 'UED', '李小六', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('280', '24', '测试01201602', '4', '测试', '张三', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('281', '29', '测试02201602', '4', '测试', '张三', '2016-02-01 09:59:14');
INSERT INTO `specialty_history` VALUES ('282', '16', '认真负责201602', '2', '平台研发MT', '开发1', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('283', '17', '快速高效201602', '2', '平台研发MT', '开发1', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('284', '18', '耐挫勿傲201602', '1', '产品', '赵七', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('285', '19', '专注目标201602', '1', '产品', '赵七', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('286', '20', '积极向上201602', '3', 'UED', '李小六', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('287', '21', '乐观阳光201602', '3', 'UED', '李小六', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('288', '24', '测试01201602', '4', '测试', '张三', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('289', '29', '测试02201602', '4', '测试', '张三', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('290', '30', '测试专业性01--1218', '5', '测试部--12月18号', '测试1218负责人', '2016-03-01 11:00:04');
INSERT INTO `specialty_history` VALUES ('291', '31', '测试专业性02--1218', '5', '测试部--12月18号', '测试1218负责人', '2016-03-01 11:00:04');

-- ----------------------------
-- Table structure for `specialty_manager`
-- ----------------------------
DROP TABLE IF EXISTS `specialty_manager`;
CREATE TABLE `specialty_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of specialty_manager
-- ----------------------------
INSERT INTO `specialty_manager` VALUES ('16', '认真负责201602', '2', '平台研发MT', '开发1', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('17', '快速高效201602', '2', '平台研发MT', '开发1', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('18', '耐挫勿傲201602', '1', '产品', '赵七', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('19', '专注目标201602', '1', '产品', '赵七', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('20', '积极向上201602', '3', 'UED', '李小六', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('21', '乐观阳光201602', '3', 'UED', '李小六', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('24', '测试01201602', '4', '测试', '张三', '2015-12-02 16:01:42');
INSERT INTO `specialty_manager` VALUES ('29', '测试02201602', '4', '测试', '张三', '2015-12-03 16:11:53');
INSERT INTO `specialty_manager` VALUES ('30', '测试专业性01--1218', '5', '测试部--12月18号', '测试1218负责人', '2015-12-18 10:50:42');
INSERT INTO `specialty_manager` VALUES ('31', '测试专业性02--1218', '5', '测试部--12月18号', '测试1218负责人', '2015-12-18 10:50:56');
