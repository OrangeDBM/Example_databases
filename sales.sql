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

 Date: 22/04/2026 13:23:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `SaleID` int(0) NOT NULL,
  `EmployeeID` int(0) NULL DEFAULT NULL,
  `Department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Sales` decimal(10, 2) NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  PRIMARY KEY (`SaleID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, 101, 'Electronics', 500.00, '2023-08-01');
INSERT INTO `sales` VALUES (2, 102, 'Electronics', 300.00, '2023-08-03');
INSERT INTO `sales` VALUES (3, 101, 'Furniture', 150.00, '2023-08-02');
INSERT INTO `sales` VALUES (4, 103, 'Electronics', 250.00, '2023-08-04');
INSERT INTO `sales` VALUES (5, 104, 'Furniture', 200.00, '2023-08-02');

SET FOREIGN_KEY_CHECKS = 1;
