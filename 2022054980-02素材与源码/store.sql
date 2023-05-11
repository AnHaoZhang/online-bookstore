/*
 Navicat Premium Data Transfer

 Source Server         : 比赛服务器mysql
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : 43.138.187.107:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 09/05/2022 01:31:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 书籍信息表
-- ----------------------------
DROP TABLE IF EXISTS `书籍信息表`;
CREATE TABLE `书籍信息表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `书籍名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍类型` int(0) NOT NULL,
  `作者` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `出版社信息` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `商铺信息` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `价格` double(30, 2) NOT NULL,
  `库存` int(0) NOT NULL,
  `书籍封面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页一` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页二` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页三` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页四` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页五` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `书籍底面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍详情信息` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `书籍类型`(`书籍类型`) USING BTREE,
  INDEX `商铺信息`(`商铺信息`) USING BTREE,
  CONSTRAINT `书籍信息表_ibfk_1` FOREIGN KEY (`书籍类型`) REFERENCES `书籍类型` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `书籍信息表_ibfk_2` FOREIGN KEY (`商铺信息`) REFERENCES `商铺信息表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 书籍信息表
-- ----------------------------
INSERT INTO `书籍信息表` VALUES (1, '红楼梦', 1, '曹雪芹', '中国文联出版社', '4jDO6HMBZVGOEGm4uvwb', 26.80, 34, '/upload/honglou.jpg', '/upload/honglou1.jpg', '/upload/honglou1.jpg', '/upload/honglou1.jpg', '/upload/honglou1.jpg', '/upload/555.png', '/upload/honglou2.jpg', '《红楼梦》，中国古代章回体长篇小说，中国古典四大名著之一，通行本共120回，一般认为前80回是清代作家曹雪芹所著，后40回作者为无名氏，整理者为程伟元、高鹗。小说以贾、史、王、薛四大家族的兴衰为背景，以富贵公子贾宝玉为视角，以贾宝玉与林黛玉、薛宝钗的爱情婚姻悲剧为主线，描绘了一些举止见识出于须眉之上的闺阁佳人的人生百态，展现了真正的人性美和悲剧美，可以说是一部从各个角度展现女性美以及中国古代社会世态百相的史诗性著作。');
INSERT INTO `书籍信息表` VALUES (2, '西游记', 1, '吴承恩', '延边大学出版社', '4jDO6HMBZVGOEGm4uvwb', 29.00, 39, '/upload/xiyouji(1).jpg', '/upload/xiyouji(2).jpg', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/xiyouji(3).jpg', '《西游记》是中国古代第一部浪漫主义章回体长篇神魔小说。 [54]  现存明刊百回本《西游记》均无作者署名，鲁迅、胡适等人从《天启淮安府志》所载断定淮安府人吴承恩即是章回小说《西游记》作者 [55]  。\r\n全书主要描写了孙悟空出世及大闹天宫后，遇见了唐僧、猪八戒、沙僧和白龙马，西行取经，一路上历经艰险，降妖除魔，经历了九九八十一难，终于到达西天见到如来佛祖，最终五圣成真的故事。该小说以“玄奘取经”这一历史事件为蓝本，经作者的艺术加工，深刻地描绘出明代百姓的社会生活状况。');
INSERT INTO `书籍信息表` VALUES (3, '童年', 1, '高尔基', '人民文学出版社', '4jDO6HMBZVGOEGm4uvwb', 14.80, 45, '/upload/tongnian(1).jpg', '/upload/tongnian(2).jpg', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/tongnian(3).jpg', '《童年》是高尔基以自身经历为原型创作的自传体小说三部曲中的第一部（其他两部分别为《在人间》、《我的大学》）。讲述了阿廖沙（高尔基的乳名）三岁到十岁这一时期的童年生活，生动地再现了19世纪七八十年代前苏联下层人民的生活状况，写出了高尔基对苦难的认识，对社会人生的独特见解，字里行间涌动着一股生生不息的热望与坚强。');
INSERT INTO `书籍信息表` VALUES (4, '三asaca', 11, '三asaca', 'sn', 'rg8ZrDaBg3b5mRmTRQKR', 15.00, 250, '/upload/code.jpg', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/555.png', '/upload/人力资源部组织结构图.jpg', 'soacascxa');

-- ----------------------------
-- Table structure for 书籍回收表
-- ----------------------------
DROP TABLE IF EXISTS `书籍回收表`;
CREATE TABLE `书籍回收表`  (
  `编号` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `作者` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `出版社信息` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `用户信息` int(0) NOT NULL,
  `书籍封面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页一` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页二` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页三` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页四` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页五` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍底面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍状态` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `积分` double(100, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `用户信息`(`用户信息`) USING BTREE,
  CONSTRAINT `书籍回收表_ibfk_1` FOREIGN KEY (`用户信息`) REFERENCES `用户表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 书籍回收表
-- ----------------------------
INSERT INTO `书籍回收表` VALUES ('aRV0DNwV5f', '悲惨世界', '维克多·雨果', '中国文联出版社', 4, '/recovery/tb_image_share_1651844128804.jpg', '/recovery/tb_image_share_1651844149186.jpg', '/recovery/tb_image_share_1651844131469.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/tb_image_share_1651844136321.jpg', '已售卖', 20.50);
INSERT INTO `书籍回收表` VALUES ('LOSNKBJiaW', '测试', '啦啦啦', '啦啦啦', 4, '/recovery/code.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/人力资源部组织结构图.jpg', '审核通过', 14.00);
INSERT INTO `书籍回收表` VALUES ('UQuxNrPW8R', '白夜行', '东野圭吾', '南海出版社', 4, '/recovery/tb_image_share_1651844584947.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/tb_image_share_1651844578103.jpg', '审核未通过', NULL);
INSERT INTO `书籍回收表` VALUES ('vaR6cC7gTz', '书画', 'bfb', 'gdfgdg', 7, '/recovery/人力资源部组织结构图.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/人力资源部组织结构图.jpg', '待审核', NULL);
INSERT INTO `书籍回收表` VALUES ('ya3lW3Pwum', 'aa', 'aa', 'aa', 9, '/recovery/人力资源部组织结构图.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/12.jpg', '待审核', NULL);
INSERT INTO `书籍回收表` VALUES ('zKKJobGtMf', 'ss', 'hh', 'ddd', 8, '/recovery/12.jpg', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/555.png', '/recovery/12.jpg', '待审核', NULL);

-- ----------------------------
-- Table structure for 书籍捐赠表
-- ----------------------------
DROP TABLE IF EXISTS `书籍捐赠表`;
CREATE TABLE `书籍捐赠表`  (
  `编号` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `作者` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `出版社信息` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `用户信息` int(0) NOT NULL,
  `书籍封面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `内页一` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页二` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页三` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页四` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `内页五` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `书籍底面` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍状态` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `爱心积分` double(50, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `用户信息`(`用户信息`) USING BTREE,
  CONSTRAINT `书籍捐赠表_ibfk_1` FOREIGN KEY (`用户信息`) REFERENCES `用户表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 书籍捐赠表
-- ----------------------------
INSERT INTO `书籍捐赠表` VALUES ('Bc1gRih2ye', '测试', 'sas', 'saa', 4, '/donation/人力资源部组织结构图.jpg', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/tb_image_share_1651844584947.jpg', '已签收', 20.00);
INSERT INTO `书籍捐赠表` VALUES ('Cy7nFraoRy', 'aa', 'aa', 'aa', 9, '/donation/12.jpg', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/12.jpg', '待审核', NULL);
INSERT INTO `书籍捐赠表` VALUES ('eCnB31PAYL', 'fsef', 'gdd', 'gsgs', 7, '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '审核通过', 17.00);
INSERT INTO `书籍捐赠表` VALUES ('H2BgG9xfNn', 'ff', 'hh', 'hh', 8, '/donation/12.jpg', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/555.png', '/donation/12.jpg', '待审核', NULL);

-- ----------------------------
-- Table structure for 书籍类型
-- ----------------------------
DROP TABLE IF EXISTS `书籍类型`;
CREATE TABLE `书籍类型`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `类型` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 书籍类型
-- ----------------------------
INSERT INTO `书籍类型` VALUES (1, '文学名著');
INSERT INTO `书籍类型` VALUES (2, '科幻小说');
INSERT INTO `书籍类型` VALUES (3, '社会科学');
INSERT INTO `书籍类型` VALUES (4, '自然科学');
INSERT INTO `书籍类型` VALUES (5, '政治和法律');
INSERT INTO `书籍类型` VALUES (6, '经济');
INSERT INTO `书籍类型` VALUES (7, '文化');
INSERT INTO `书籍类型` VALUES (8, '教育');
INSERT INTO `书籍类型` VALUES (9, '艺术');
INSERT INTO `书籍类型` VALUES (10, '历史');
INSERT INTO `书籍类型` VALUES (11, '地理');
INSERT INTO `书籍类型` VALUES (12, '哲学');
INSERT INTO `书籍类型` VALUES (13, '医学');
INSERT INTO `书籍类型` VALUES (14, '军事');
INSERT INTO `书籍类型` VALUES (15, '体育');
INSERT INTO `书籍类型` VALUES (16, '数理科学和化学');
INSERT INTO `书籍类型` VALUES (17, '杂志');
INSERT INTO `书籍类型` VALUES (18, '小说');
INSERT INTO `书籍类型` VALUES (19, '漫画');
INSERT INTO `书籍类型` VALUES (20, '画集');
INSERT INTO `书籍类型` VALUES (21, '小人书');

-- ----------------------------
-- Table structure for 商铺信息表
-- ----------------------------
DROP TABLE IF EXISTS `商铺信息表`;
CREATE TABLE `商铺信息表`  (
  `编号` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `商铺名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `负责人` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `密码` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `邮箱` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `电话` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `创建时间` date NOT NULL,
  `信誉等级` double NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 商铺信息表
-- ----------------------------
INSERT INTO `商铺信息表` VALUES ('4jDO6HMBZVGOEGm4uvwb', '菜鸟书屋', '王婧', 'z47K157ynfLucUtEhlFcv07Cu', '1526454166@qq.com', '13745213944', '2022-04-30', 10);
INSERT INTO `商铺信息表` VALUES ('rg8ZrDaBg3b5mRmTRQKR', '雅书阁', '夏佳佳', 'SVrdmF6DdyEdKKa077W5Hdpnq', '2871035002@qq.com', '14789635215', '2022-04-28', 10);

-- ----------------------------
-- Table structure for 商铺申请表
-- ----------------------------
DROP TABLE IF EXISTS `商铺申请表`;
CREATE TABLE `商铺申请表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `商铺名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `负责人` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `邮箱` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `电话` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `申请状态` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 商铺申请表
-- ----------------------------
INSERT INTO `商铺申请表` VALUES (1, '颜如玉', '夏佳佳', '1526454166@qq.com', '14789635213', '审核通过');
INSERT INTO `商铺申请表` VALUES (2, '黄金屋', '张晓霞', '623645793@qq.com', '14789635214', '待审核');
INSERT INTO `商铺申请表` VALUES (4, '菜鸟书屋', '王婧', '1526454166@qq.com', '13745213953', '审核通过');
INSERT INTO `商铺申请表` VALUES (5, '安全屋', '张巧艳', '3392571058@qq.com', '13265894569', '待审核');
INSERT INTO `商铺申请表` VALUES (6, '安全屋', '张巧艳', '3392571058@qq.com', '13265894569', '待审核');
INSERT INTO `商铺申请表` VALUES (7, '撒会的', '啦啦啦', '3392598058@qq.com', '15423695896', '待审核');
INSERT INTO `商铺申请表` VALUES (8, '撒会的', '啦啦啦', '3392598058@qq.com', '15423695896', '待审核');

-- ----------------------------
-- Table structure for 地址表
-- ----------------------------
DROP TABLE IF EXISTS `地址表`;
CREATE TABLE `地址表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `用户信息` int(0) NOT NULL,
  `收货人` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `电话` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `详细地址` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `用户信息`(`用户信息`) USING BTREE,
  CONSTRAINT `地址表_ibfk_1` FOREIGN KEY (`用户信息`) REFERENCES `用户表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 地址表
-- ----------------------------
INSERT INTO `地址表` VALUES (1, 4, '王天宇', '15487265260', '浙江省/丽水市/青田县；详细地址：啊飒飒小');
INSERT INTO `地址表` VALUES (2, 4, '张巧艳', '12354879632', '浙江省/丽水市/青田县；详细地址：菜市场书籍库存能接受的');
INSERT INTO `地址表` VALUES (15, 7, '彭晓', '15997227612', '天津市/东丽区；详细地址：联赛的');
INSERT INTO `地址表` VALUES (16, 8, 'ss', '14578964758', '河北省/廊坊市/大城县；详细地址：bfghgf');
INSERT INTO `地址表` VALUES (17, 9, 'aa', '15997227612', '安徽省/宿州市；详细地址：asa');

-- ----------------------------
-- Table structure for 审核员表
-- ----------------------------
DROP TABLE IF EXISTS `审核员表`;
CREATE TABLE `审核员表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `姓名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `密码` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `入职时间` date NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 审核员表
-- ----------------------------
INSERT INTO `审核员表` VALUES (1, '廖丹雯', '7777', '2022-03-15');
INSERT INTO `审核员表` VALUES (2, '王雨欣', '5555', '2022-03-25');
INSERT INTO `审核员表` VALUES (3, '雅柏菲卡', '520520', '2022-04-12');

-- ----------------------------
-- Table structure for 用户表
-- ----------------------------
DROP TABLE IF EXISTS `用户表`;
CREATE TABLE `用户表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `用户名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `密码` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `邮箱` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `积分` double(100, 2) NOT NULL,
  `是否实名` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 用户表
-- ----------------------------
INSERT INTO `用户表` VALUES (1, '三生', '26478399', '154793659@qq.com', 0.00, '否');
INSERT INTO `用户表` VALUES (2, '白敬亭', '1243659757', '123654825@qq.com', 0.00, '否');
INSERT INTO `用户表` VALUES (3, '小樱', '21473245', '12544783@qq.com', 0.00, '已实名');
INSERT INTO `用户表` VALUES (4, '张巧艳1', '123456', '3392598058@qq.com', 58.50, '已实名');
INSERT INTO `用户表` VALUES (5, '胡东璟', '123', '623645793@qq.com', 0.00, '否');
INSERT INTO `用户表` VALUES (7, '彭晓妍', '123456', '131@qq.com', 0.00, '已实名');
INSERT INTO `用户表` VALUES (8, 'sss', '123', '123654825@qq.com', 0.00, '已实名');
INSERT INTO `用户表` VALUES (9, 'aaa', 'aa', '1365@qq.com', 0.00, '已实名');
INSERT INTO `用户表` VALUES (10, '饼干', '2236892428', '2236892428@qq.com', 0.00, '否');

-- ----------------------------
-- Table structure for 管理员表
-- ----------------------------
DROP TABLE IF EXISTS `管理员表`;
CREATE TABLE `管理员表`  (
  `编号` int(0) NOT NULL AUTO_INCREMENT,
  `姓名` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `密码` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `入职时间` date NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 管理员表
-- ----------------------------
INSERT INTO `管理员表` VALUES (1, '王婧', '0000', '2022-02-22');
INSERT INTO `管理员表` VALUES (2, '胡东璟', '11111', '2022-02-17');
INSERT INTO `管理员表` VALUES (5, '张巧艳', '1234', '2022-04-07');
INSERT INTO `管理员表` VALUES (7, '杨媛媛', '8888', '2022-04-10');

-- ----------------------------
-- Table structure for 置换信息表
-- ----------------------------
DROP TABLE IF EXISTS `置换信息表`;
CREATE TABLE `置换信息表`  (
  `编号` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍信息` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `地址信息` int(0) NOT NULL,
  `订单积分` double NOT NULL,
  `订单时间` date NOT NULL,
  `订单状态` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `书籍信息`(`书籍信息`) USING BTREE,
  INDEX `地址信息`(`地址信息`) USING BTREE,
  CONSTRAINT `置换信息表_ibfk_1` FOREIGN KEY (`书籍信息`) REFERENCES `书籍回收表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `置换信息表_ibfk_2` FOREIGN KEY (`地址信息`) REFERENCES `地址表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 置换信息表
-- ----------------------------
INSERT INTO `置换信息表` VALUES ('5ovAUOLpxr', 'aRV0DNwV5f', 2, 20.5, '2022-05-07', '已收货');

-- ----------------------------
-- Table structure for 规则信息表
-- ----------------------------
DROP TABLE IF EXISTS `规则信息表`;
CREATE TABLE `规则信息表`  (
  `规则` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `详细内容` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`规则`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 规则信息表
-- ----------------------------
INSERT INTO `规则信息表` VALUES ('审核规则', 'cslkdmvl;akmcpo;asjcmpaisvdfpao dib bbdlvenka');
INSERT INTO `规则信息表` VALUES ('捐赠规则', '吃不吃吧');
INSERT INTO `规则信息表` VALUES ('积分规则', '啦啦啦啦');
INSERT INTO `规则信息表` VALUES ('管理规则', '你弟哈哈的父爱');
INSERT INTO `规则信息表` VALUES ('购买规则', '打死你覅军句或付uuuuuuuuuuuuuuuuuuuuuuuuuaidh');

-- ----------------------------
-- Table structure for 订单信息表
-- ----------------------------
DROP TABLE IF EXISTS `订单信息表`;
CREATE TABLE `订单信息表`  (
  `编号` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `书籍信息` int(0) NOT NULL,
  `数量` int(0) NOT NULL,
  `地址信息` int(0) NOT NULL,
  `订单金额` double(50, 2) NOT NULL,
  `订单时间` date NOT NULL,
  `订单状态` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`编号`) USING BTREE,
  INDEX `书籍信息`(`书籍信息`) USING BTREE,
  INDEX `地址信息`(`地址信息`) USING BTREE,
  CONSTRAINT `订单信息表_ibfk_1` FOREIGN KEY (`书籍信息`) REFERENCES `书籍信息表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `订单信息表_ibfk_2` FOREIGN KEY (`地址信息`) REFERENCES `地址表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 订单信息表
-- ----------------------------
INSERT INTO `订单信息表` VALUES ('cgIu72tCFPIgBALBU2fJ', 4, 1, 2, 15.00, '2022-05-07', '待支付');
INSERT INTO `订单信息表` VALUES ('CZG6KNl9KDQpdVpvbbIP', 1, 1, 1, 27.00, '2022-05-05', '已收货');
INSERT INTO `订单信息表` VALUES ('JaXOYoMUdvbj8LILGLJQ', 4, 1, 2, 15.00, '2022-05-08', '待支付');
INSERT INTO `订单信息表` VALUES ('m2hOvSAArG8zNr2gzoVd', 2, 1, 15, 29.00, '2022-05-08', '待发货');
INSERT INTO `订单信息表` VALUES ('pCxzGOjRlFF1mIZ6gqto', 2, 1, 1, 29.00, '2022-05-05', '已收货');
INSERT INTO `订单信息表` VALUES ('QKi0aqlTGMSM2PmCBtxk', 3, 1, 2, 14.80, '2022-05-08', '已收货');
INSERT INTO `订单信息表` VALUES ('UpDHMILg7od67ZmiUmQR', 1, 1, 16, 26.80, '2022-05-08', '待发货');
INSERT INTO `订单信息表` VALUES ('uXeohynGnQC8b6GWAN4P', 1, 1, 17, 26.80, '2022-05-08', '待发货');
INSERT INTO `订单信息表` VALUES ('vtVYb91qIPc3mPLUYtn1', 1, 1, 1, 26.80, '2022-05-07', '待发货');

-- ----------------------------
-- Table structure for 购物车
-- ----------------------------
DROP TABLE IF EXISTS `购物车`;
CREATE TABLE `购物车`  (
  `用户编号` int(0) NOT NULL,
  `书籍编号` int(0) NOT NULL,
  PRIMARY KEY (`用户编号`, `书籍编号`) USING BTREE,
  INDEX `书籍编号`(`书籍编号`) USING BTREE,
  CONSTRAINT `购物车_ibfk_1` FOREIGN KEY (`用户编号`) REFERENCES `用户表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `购物车_ibfk_2` FOREIGN KEY (`书籍编号`) REFERENCES `书籍信息表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 购物车
-- ----------------------------
INSERT INTO `购物车` VALUES (3, 1);
INSERT INTO `购物车` VALUES (10, 1);
INSERT INTO `购物车` VALUES (3, 2);
INSERT INTO `购物车` VALUES (4, 2);
INSERT INTO `购物车` VALUES (4, 3);

-- ----------------------------
-- Table structure for 超级管理员
-- ----------------------------
DROP TABLE IF EXISTS `超级管理员`;
CREATE TABLE `超级管理员`  (
  `姓名` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `密码` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`姓名`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 超级管理员
-- ----------------------------
INSERT INTO `超级管理员` VALUES ('pxy', '011013');

SET FOREIGN_KEY_CHECKS = 1;
