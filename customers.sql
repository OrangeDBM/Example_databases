/*
 Navicat Premium Data Transfer

 Source Server         : oci1_10.0.0.188
 Source Server Type    : MySQL
 Source Server Version : 80408
 Source Host           : 10.0.0.188:3306
 Source Schema         : employee

 Target Server Type    : MySQL
 Target Server Version : 80408
 File Encoding         : 65001

 Date: 22/04/2026 13:24:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `customer_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_bin NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_bin NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO `customers` VALUES (2, 'Jane Smith', 'jane@example.com', '0987654321');
INSERT INTO `customers` VALUES (5, 'Blau Hoss', 'Blau@example.com', '11111111');

SET FOREIGN_KEY_CHECKS = 1;
