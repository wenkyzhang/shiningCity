/*
Navicat SQLite Data Transfer

Source Server         : test
Source Server Version : 30808
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 30808
File Encoding         : 65001

Date: 2015-06-07 01:34:12
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for mentor_group
-- ----------------------------
DROP TABLE IF EXISTS "main"."mentor_group";
CREATE TABLE "mentor_group" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"name"  TEXT,
"photo"  TEXT,
"title"  TEXT,
"tags"  TEXT,
"introduction"  TEXT,
"images"  TEXT
);

-- ----------------------------
-- Records of mentor_group
-- ----------------------------
