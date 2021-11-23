/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : substitute

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/05/2021 20:08:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `ctime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES (1, '开心；高兴；欢喜', '2021-05-21 18:40:17');
INSERT INTO `keyword` VALUES (2, '难过', '2021-05-21 18:40:52');
INSERT INTO `keyword` VALUES (3, '月亮', '2021-05-21 18:41:01');
INSERT INTO `keyword` VALUES (4, '奋斗', '2021-05-21 19:25:20');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID，用于管理以及收藏设置，自动递增',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '用户密码，MD5加密',
  `ctime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '用户注册时间',
  `favorate_v` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '词语收藏',
  `favorate_w` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '名人名言收藏',
  `favorate_p` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '诗歌收藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'Karuma', 'Lee020411', '2021-05-21 20:11:41', '1;2;', NULL, NULL);
INSERT INTO `login` VALUES (10, 'admin', '123456', '2021-05-23 18:05:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for poetry
-- ----------------------------
DROP TABLE IF EXISTS `poetry`;
CREATE TABLE `poetry`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '诗歌编号',
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '诗歌名称',
  `pwriter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '诗歌作者',
  `pwtime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '诗歌创作时间',
  `pwnation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '作者国家',
  `pkeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '搜索用关键词',
  `ctime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of poetry
-- ----------------------------
INSERT INTO `poetry` VALUES (1, '静夜思', '李白', '唐', '中国', '3', '2021-05-08 23:19:41');
INSERT INTO `poetry` VALUES (2, '泊船瓜洲', '王安石 ', '宋', '中国', '3', '2021-05-10 20:27:55');
INSERT INTO `poetry` VALUES (3, '闻官军收河南河北\r\n', '杜甫\r\n', '唐\r\n', '中国', '1', '2021-05-21 19:28:24');

-- ----------------------------
-- Table structure for vocabulary
-- ----------------------------
DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE `vocabulary`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '词汇编号',
  `vname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '词汇名称',
  `vkeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '搜索用关键词',
  `ctime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vocabulary
-- ----------------------------
INSERT INTO `vocabulary` VALUES (1, '欢欣若狂\r\n', '1', '2021-05-07 22:14:21');
INSERT INTO `vocabulary` VALUES (2, '怡然自得\r\n', '1', '2021-05-07 22:25:31');
INSERT INTO `vocabulary` VALUES (3, '喜笑颜开\r\n', '1', '2021-05-08 17:06:58');
INSERT INTO `vocabulary` VALUES (4, '闻过则喜\r\n', '1', '2021-05-08 17:07:07');
INSERT INTO `vocabulary` VALUES (5, '横眉吐气\r\n', '1', '2021-05-21 18:45:31');
INSERT INTO `vocabulary` VALUES (6, '欢呼雀跃\r\n', '1', '2021-05-21 18:45:42');
INSERT INTO `vocabulary` VALUES (7, '冁然而笑\r\n', '1', '2021-05-21 18:45:56');
INSERT INTO `vocabulary` VALUES (8, '载歌载舞\r\n', '1', '2021-05-21 18:46:09');
INSERT INTO `vocabulary` VALUES (9, '喜不自胜\r\n', '1', '2021-05-21 18:46:18');
INSERT INTO `vocabulary` VALUES (10, '开眉展眼\r\n', '1', '2021-05-21 18:46:25');
INSERT INTO `vocabulary` VALUES (11, '泣不成声', '2', '2021-05-21 18:47:43');
INSERT INTO `vocabulary` VALUES (12, '悲痛欲绝', '2', '2021-05-21 19:01:15');
INSERT INTO `vocabulary` VALUES (13, '撕心裂肺', '2', '2021-05-21 19:01:26');

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '名言编号',
  `wwriter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '名言所属名人',
  `wwtime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '名言产生时间',
  `wwnation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '名人所在国家',
  `wkeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '搜索用关键字',
  `ctime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of words
-- ----------------------------
INSERT INTO `words` VALUES (1, '周恩来', '近代', '中国', '4', '2021-05-08 23:25:06');
INSERT INTO `words` VALUES (2, '威廉 莎士比亚', '文艺复兴时期', '英国', '4', '2021-05-10 20:31:41');
INSERT INTO `words` VALUES (3, '丘吉尔', '近代', '英国', '1', '2021-05-21 19:27:11');

SET FOREIGN_KEY_CHECKS = 1;
