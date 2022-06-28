/*
 Navicat Premium Data Transfer

 Source Server         : phpmyadmin
 Source Server Type    : MySQL
 Source Server Version : 100121
 Source Host           : localhost:3306
 Source Schema         : arcturus

 Target Server Type    : MySQL
 Target Server Version : 100121
 File Encoding         : 65001

 Date: 17/07/2020 16:10:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `codes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '#000000',
  `min_rank` int(11) NULL DEFAULT 1,
  `purchasable` enum('0','1') CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_colors
-- ----------------------------
DROP TABLE IF EXISTS `users_colors`;
CREATE TABLE `users_colors`  (
  `user_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_purchased_colors
-- ----------------------------
DROP TABLE IF EXISTS `users_purchased_colors`;
CREATE TABLE `users_purchased_colors`  (
  `user_id` int(11) NOT NULL,
  `purchased_color_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
