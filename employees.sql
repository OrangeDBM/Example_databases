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

 Date: 22/04/2026 13:23:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `EmployeeID` int(0) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DateOfBirth` date NULL DEFAULT NULL,
  `Gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DepartmentID` int(0) NULL DEFAULT NULL,
  `Salary` decimal(10, 2) NULL DEFAULT NULL,
  `HireDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE,
  INDEX `DepartmentID`(`DepartmentID`) USING BTREE,
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'John', 'Smith', '1980-05-15', 'Male', 3, 60000.00, '2020-01-15');
INSERT INTO `employees` VALUES (2, 'Sarah', 'Johnson', '1990-07-20', 'Female', 2, 55000.00, '2019-08-10');
INSERT INTO `employees` VALUES (3, 'Michael', 'Williams', '1985-02-10', 'Male', 3, 62000.00, '2021-03-22');
INSERT INTO `employees` VALUES (4, 'Emily', 'Brown', '1992-11-30', 'Female', 4, 58000.00, '2022-05-18');
INSERT INTO `employees` VALUES (5, 'David', 'Jones', '1988-09-05', 'Male', 5, 65000.00, '2018-12-01');
INSERT INTO `employees` VALUES (6, 'Olivia', 'Davis', '1995-04-12', 'Female', 2, 54000.00, '2023-02-10');
INSERT INTO `employees` VALUES (7, 'James', 'Wilson', '1983-03-25', 'Male', 6, 70000.00, '2017-07-15');
INSERT INTO `employees` VALUES (8, 'Sophia', 'Anderson', '1991-08-17', 'Female', 4, 59000.00, '2019-10-30');
INSERT INTO `employees` VALUES (9, 'Liam', 'Miller', '1979-12-01', 'Male', 3, 61000.00, '2020-11-05');
INSERT INTO `employees` VALUES (10, 'Emma', 'Taylor', '1993-06-28', 'Female', 5, 63000.00, '2022-04-02');
INSERT INTO `employees` VALUES (11, 'Robert', 'Johnson', '1982-09-14', 'Male', 4, 58000.00, '2020-06-15');
INSERT INTO `employees` VALUES (12, 'Mia', 'Moore', '1987-03-03', 'Female', 5, 67000.00, '2019-05-10');
INSERT INTO `employees` VALUES (13, 'William', 'Clark', '1984-04-20', 'Male', 3, 61000.00, '2022-09-12');
INSERT INTO `employees` VALUES (14, 'Charlotte', 'Anderson', '1994-01-07', 'Female', 2, 55000.00, '2019-11-28');
INSERT INTO `employees` VALUES (15, 'Daniel', 'Davis', '1989-08-25', 'Male', 4, 59000.00, '2020-08-03');
INSERT INTO `employees` VALUES (16, 'Sophia', 'Turner', '1990-12-12', 'Female', 5, 64000.00, '2018-10-15');
INSERT INTO `employees` VALUES (17, 'Matthew', 'Parker', '1986-06-08', 'Male', 6, 66000.00, '2022-02-20');
INSERT INTO `employees` VALUES (18, 'Ava', 'Williams', '1993-03-15', 'Female', 2, 57000.00, '2021-04-10');

SET FOREIGN_KEY_CHECKS = 1;
