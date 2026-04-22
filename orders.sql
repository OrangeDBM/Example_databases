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

 Date: 22/04/2026 13:24:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT,
  `customer_id` int(0) NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, 1, '2025-05-20', 150.00);
INSERT INTO `orders` VALUES (5, 1, '2025-05-21', 200.50);
INSERT INTO `orders` VALUES (6, 2, '2025-05-20', 99.99);

SET FOREIGN_KEY_CHECKS = 1;
