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

 Date: 22/04/2026 13:23:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `DepartmentID` int(0) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'HR');
INSERT INTO `departments` VALUES (2, 'Finance');
INSERT INTO `departments` VALUES (3, 'Engineering');
INSERT INTO `departments` VALUES (4, 'Sales');
INSERT INTO `departments` VALUES (5, 'Marketing');
INSERT INTO `departments` VALUES (6, 'IT');
INSERT INTO `departments` VALUES (7, 'Operations');
INSERT INTO `departments` VALUES (8, 'Customer Service');
INSERT INTO `departments` VALUES (9, 'Research and Department');
INSERT INTO `departments` VALUES (10, 'Legal');
INSERT INTO `departments` VALUES (11, 'Quality Assurance');

SET FOREIGN_KEY_CHECKS = 1;
