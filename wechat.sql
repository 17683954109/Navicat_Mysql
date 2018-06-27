/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : wechat

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 27/06/2018 20:33:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quanxian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'all', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', '17683954109', NULL, '2018-06-25 10:50:43', '2018-06-25 10:50:45');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (11, '', '3252383294@qq.com', '2018-06-24 16:36:22', '2018-06-24 16:39:35');
INSERT INTO `cart` VALUES (10, '', '17683954109', '2018-06-23 15:07:57', '2018-06-27 14:22:26');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '入门', 'PHP入门', '2018-06-16 11:25:12', '2018-06-16 11:25:15', '1', 'PHP');
INSERT INTO `class` VALUES (2, '实战', 'PHP实战', '2018-06-16 11:27:50', '2018-06-16 11:27:53', '1', 'PHP');
INSERT INTO `class` VALUES (3, 'Java基础', 'Java基础入门', '2018-06-16 11:28:38', '2018-06-16 11:28:41', '2', 'JAVA');
INSERT INTO `class` VALUES (4, '进阶', 'Java进阶', '2018-06-16 11:29:15', '2018-06-16 11:29:18', '2', 'JAVA');
INSERT INTO `class` VALUES (5, 'js入门', 'js入门相关', '2018-06-16 11:30:11', '2018-06-16 11:30:14', '3', 'JS');
INSERT INTO `class` VALUES (7, '公众号营销', '微信公众号营销', '2018-06-16 11:31:32', '2018-06-16 11:31:35', '4', 'WeChat');
INSERT INTO `class` VALUES (8, '小程序', '微信小程序开发', '2018-06-16 15:09:26', '2018-06-16 15:09:30', '4', 'WeChat');

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES (1, 'Java基础入门', '由传智播客高教产品研发部编著的《Java基础入门》为Java基础入门教材，让初学者能达到熟悉Java语言并灵活运用的程度。针对每一个所 讲解的知识点都进行了深入分析，并使用生动形象的情境化举例，将原本复杂的、难于理解的知识点和问题进行简化，真正遵循了由浅入深 、由易到难的学习规律。针对每个知识点，精心设计了相应的经典案例，让学习者不但能掌握和理解这些知识点，并且还可以清楚地知道在 实际工作中如何去运用。', 1, '2018-06-18 14:07:34', '2018-06-26 16:44:53');
INSERT INTO `detail` VALUES (2, 'Java语言程序设计', 'Java语言的经典教材，多年来畅销不衰。本书全面整合了Java 8的特性，采用“基础优先，问题驱动”的教学方式，循序渐进地介绍了程序设计基础、解决问题的方法、面向对象程序设计、图形用户界面设计、异常处理、I/O和递归等内容。', 2, '2018-06-18 14:08:43', '2018-06-26 17:42:12');
INSERT INTO `detail` VALUES (3, 'Java service实战', '畅销书全新优化和升级，阿里云资深大数据架构师/Java技术专家撰写，Java RESTful Web Service领域独一著作\n\n　　深刻解读JAX-RS的标准和API设计；Jersey的使用要点和实现原理，以及基于REST的Web服务的设计思想和原则\n\n　　自第1版发行后，Jersey的版本由2.9更新到了2.22.2，此间REST服务得到了更广泛的认可和使用。与此同时，Java 8、Spring Boot和Docker的爆发式发展，使得Java领域的RESTful开发有了新的发展。', 3, '2018-06-18 14:10:00', '2018-06-26 16:42:42');
INSERT INTO `detail` VALUES (4, 'Java核心技术精讲', '视频讲解 49小时大型同步视频讲解（光盘中），把市场价值1000元的名师课堂搬回家；\r\n　　案例教学 全书有506个实例、6大案例源程序分析，用实例、案例学习最快捷；\r\n　　实战应用 以实战应用、就业实践为目的，拒绝纸上谈兵；\r\n　　名师编著 由具有多年软件开发和培训经验、著有教材4部、北京魔乐科技实训中心知名实战派讲师李兴华编著，确保图书的实战性及优良品质；\r\n　　配套完善 网站或者光盘提供了电子教案、教学课件、习题答案、交流论坛、源程序等大量学习资源。赠送Oracle数据库学习视频。', 4, '2018-06-18 14:11:04', '2018-06-18 14:11:06');
INSERT INTO `detail` VALUES (5, 'Java web开发技术详解', '《Tomcat与Java Web开发技术详解（第2版）》语言深入浅出、通俗易懂，无论对于Java Web开发的新手还是行家来说，《Tomcat与Java Web开发技术详解》都是精通Tomcat和开发Java Web应用的必备的实用手册。《Tomcat与Java Web开发技术详解（第2版）》还可作为高校相关专业学生学习Java Web开发的参考书，以及企业Java Web培训教材，也可作为SUN公司的SCWCD（SUN Certified Web Component Developer）认证的辅导教材。', 5, '2018-06-18 14:12:19', '2018-06-18 14:12:21');
INSERT INTO `detail` VALUES (6, 'Java8函数式编程', '对于有经验的Java程序员来说，全面了解Java 8引入的Lambda表达式是当务之急。本书作者是资深Java开发者、英国伦敦Java社区负责人，英文原版深受好评，被誉为学习Lambda表达式的必读佳作。这本书言简意赅，示例精到，全面介绍了因为Lambda表达式的引入，Java这门世界上流行的语言都发生了哪些重大变化，以及匿名函数将如何重塑Java的编程范式。全书篇幅不长，环环相扣，读来令人手不释卷。\r\n　　函数式编程的确能大幅提升编程效率，但它也并不高深，绝非少数人的游戏。本书可以让所有Java程序员平', 6, '2018-06-18 14:13:16', '2018-06-18 14:13:19');
INSERT INTO `detail` VALUES (7, 'Java程序设计基础', '各方好评：该书是“中国书刊发行协会”鼎力推荐的教材，曾被该协会评为优秀教材之一。自该书问世以来就受到读者的热烈好评，累计印刷23次，销售100000余册。已被全国120多所高校选作教材，好评如潮。\n\n结构合理：该教材除了通俗易懂、由浅入深、循序渐进的优点外，还彰显了抓住关键，突出重点，分解难点的编写特色，每个例题都突出一个编程知识点，正是这种对知识点的透彻分析和灵活实用的举例而深受读者的欢迎，使读者感到学习Java编程是一种兴趣，而兴趣又成为学习动力，这些都归功于教材对内容的精选和组织结构的合理性，充份性。', 7, '2018-06-18 14:14:11', '2018-06-26 16:43:38');
INSERT INTO `detail` VALUES (8, '深入理解JavaScript', '本书针对JavaScript初学者，帮助读者掌握JavaScript开发的精髓。每一章从教授语言的一个主题开始，给出了实践以及解决实际缺陷的指南，然后深入到相关的信息。本书帮助入门的程序员理解基础知识，掌握核心实践，甚至深入了解一些实践方法的优缺点，做到知其然且知其所以然。\r\n《JavaScript启示录》一书作者Cody Lindley鼎力推荐\r\n喜欢，又或是不喜欢，JavaScript都在那里，日夜相随，不离不弃。JavaScript正越来越多地出现在我们的生活中，从浏览器到服务端，再到移动端。想要学', 8, '2018-06-18 14:15:05', '2018-06-18 14:15:07');
INSERT INTO `detail` VALUES (9, 'JavaScript框架设计', '本书全面讲解了JavaScript框架设计及相关的知识，主要内容包括种子模块、语言模块、浏览器嗅探与特征侦测、类工厂、选择器引擎、节点模块、数据缓存模块、样式模块、属性模块、PC端和移动端的事件系统、jQuery的事件系统、异步模型、数据交互模块、动画引擎、MVVM、前端模板（静态模板）、MVVM的动态模板、性能墙与复杂墙、组件、jQuery时代的组件方案、avalon2的组件方案、react的组件方案等。 \n本书适合前端设计人员、JavaScript开发者、移动UI设计者、程序员和项目经理阅读，也可作为后端程序员的参考用书。', 9, '2018-06-18 14:15:55', '2018-06-27 14:52:11');
INSERT INTO `detail` VALUES (10, 'JavaScript之美', '本书由多位JavaScript专家倾情奉献，他们将带你以独特的视角了解JavaScript。每章的作者都是相关领域的专家，比如Jacob Thornton、Ariya Hidayat和Sara Chipps。JavaScript是他们的挚爱。他们分享了自己喜欢JavaScript的哪些特点，将JavaScript令人兴奋的特征转换为有用的工具或将其作为自我表达的工具。', 10, '2018-06-18 14:16:41', '2018-06-18 14:16:44');
INSERT INTO `detail` VALUES (11, '你不知道的JavaScript', 'JavaScript语言有很多复杂的概念，但却用简单的方式体现出来（比如回调函数），因此，JavaScript开发者无需理解语言内部的原理，就能编写出功能全面的程序。然而，JavaScript的这些复杂精妙的概念才是语言的精髓，即使是经验丰富的JavaScript开发者，如果没有认真学习，也无法真正理解语言本身的特性。正是因为绝大多数人不求甚解，一遇到出乎意料的行为就认为是语言本身有缺陷，进而把相关的特性加入黑名单，久而久之就排除了这门语言的多样性，人为地使它变得不完整、不安全。\n\n“你不知道的JavaScript\"', 11, '2018-06-18 14:17:32', '2018-06-27 14:33:44');
INSERT INTO `detail` VALUES (12, 'JavaScript语言精粹', 'JavaScript 曾是“世界上误解的语言”，因为它担负太多的特性，包括糟糕的交互和失败的设计，但随着Ajax 的到来，JavaScript“从受误解的编程语言演变为非常流行的语言”，这除了幸运之外，也证明了它其实是一门优秀的语言。Douglas Crockford 在本书中剥开了JavaScript 沾污的外衣，抽离出一个具有更好可靠性、可读性和可维护性的JavaScript 子集，让你看到一门优雅的、轻量级的和非常富有表现力的语言。作者从语法、对象、函数、继承、数组、正则表达式、方法、样式和优美的特点。', 12, '2018-06-18 14:18:20', '2018-06-26 16:16:25');
INSERT INTO `detail` VALUES (13, 'JavaScript设计模式', '《JavaScript设计模式》是JavaScript设计模式的学习指南。全书分为14章。首先介绍了什么是模式、模式的结构、类别、模式的分类、如何编写模式等等；然后，集中介绍了很多流行的设计模式在JavaScript中的应用，包括Module（模块）模式、Observer（观察者）模式、Facade（外观）模式和Mediator（中介者）模式；最后，还探讨了模块化的JavaScript模式、jQuery及其插件中的设计模式。\n　　《JavaScript设计模式》适合专业的Web开发人员和前端工程师阅读。', 13, '2018-06-18 14:19:07', '2018-06-26 16:17:34');
INSERT INTO `detail` VALUES (14, 'JavaScript动态网页编程', '       JavaScript是用于Web开发的主要脚本语言，可以应用于客户端编程、服务器端编程以及Ajax应用开发。本书详细地介绍了动态网页编程技术及其在Web开发中的应用。本书共分11章，主要内容包括：使用基础、HTML语言、CSS样式表、语言基础、流程控制语句、面向对象编程、流览器对象模型、文档对象模型、事件处理、表单与表单域、XMLHttpRequest对象。本书结构合理、论述准确、内容翔实，通过大量的实例深入浅出、循序渐进地引导读者学习，每章后面均配有习题和上机实验。\n本书可作为中等、高等职业院校计算机相关专业或培训班的资料参考。', 14, '2018-06-18 14:20:28', '2018-06-26 16:19:34');
INSERT INTO `detail` VALUES (15, 'PHP从入门到精通', '《PHP 7从入门到精通（视频教学版）》循序渐进地介绍了PHP 7开发动态网站的主要知识和技能，提供了大量的PHP应用实例供读者实践。每一章节都清晰讲述了代码作用及其编写思路，使读者能在*短时间内迅速掌握PHP的应用开发技能。\n\n　　全书共23章，分别介绍了PHP 7的基本概念、PHP服务器环境配置、PHP的基本语法、PHP的语言结构、字符串和正则表达式、数组、时间和日期、面向对象编程、错误处理和异常处理、PHP与Web页面交互、文件与目录操作、图形图像处理、Cookie和会话管理、MySQL数据库基础。', 15, '2018-06-18 14:21:16', '2018-06-26 15:46:26');
INSERT INTO `detail` VALUES (16, 'PHP7编程实战', 'PHP 7挟大量的、强大的新功能和工具迅猛而来，使用这些功能和工具可以优化代码，编写出比旧PHP版本程序速度更快的程序。本书着重介绍了PHP 7相关的中高级PHP编程技术。书中的所有范例程序都源于现实情况，旨在帮助PHP开发者解决经常遇到的现实问题。此外，本书还介绍了向下兼容性故障，并在需要修改PHP 5代码的情况中提供了大量的指导意见，也介绍了*新的PHP 7.X功能。学过本书介绍的知识后，你将拥有必备的工具和技术，从而能够为网站开发出高效的应用程序。', 16, '2018-06-18 14:22:19', '2018-06-18 14:22:22');
INSERT INTO `detail` VALUES (17, '从零开始学PHP', '《从零开始学PHP（第3版）》是关于PHP 的入门教程。PHP 作为一种被广泛应用的Web 语言，由于其自身的优秀特性，已经有越来越多的网站采用PHP 技术开发，尤其Web 2.0 网站对它格外垂青。本书共4 篇，包括22 章的内容。第一篇主要讲解了PHP 程序语言，包括PHP 环境的搭建、基础知识、常用流程控制、常用函数、数组的操作。第二篇主要分析了PHP 的一些参考函数，讲解了浏览器和输入/输出、文件目录类、数据处理类、图形图表类、电子邮件类和数据库类。第三篇详细介绍了PHP 高级开发的内容，主要包括', 17, '2018-06-18 14:23:06', '2018-06-18 14:23:08');
INSERT INTO `detail` VALUES (18, 'PHP编程实战', 'Web网站的专门化和多元化发展趋势，要求网页编程语言必须满足编写出运行速度快、节省资源且具有较高安全性动态网页的需求。本书介绍的PHP 7网页编程语言就是其中的佼佼者。本书由13章构成，详细介绍了PHP 7的新增功能和中高级PHP技术，包括安装和配置PHP 7开发环境的入门知识、PHP 7的新增功能、PHP中的函数式编程功能、PHP面向对象编程功能的基础知识、使用命名空间和特性（trait）的方式、从数据库读取数据和向数据库中写入数据的方式、创建HTML表单元素的类的方式、过滤与验证数据的方式、实现SOA', 18, '2018-06-18 14:24:08', '2018-06-18 14:24:10');
INSERT INTO `detail` VALUES (19, 'PHP程序设计', '《PHP程序设计》从初学者的角度出发，使用通俗易懂的语言，内容丰富的例子，全面细致地介绍了基于PHP语言和MySOL数据库的动态网站开发技术。全书共分17章，主要内容包括：HTML的基本语法、CSS的基本用法、PHP概述与入行、PHP的数据类型和运算符、PHP的基本控制语句、PHP实用小程序、MySQL数据库管理、图形化管理MySQL-phpMyAdmin、PHP与MyASQL的协同工作、用户注册登录系统、网上调查系统、用户留言系统、图片上传系统、聊天室系统、新闻及搜索系统，以及PHP的面向对象编程。\r\n', 19, '2018-06-18 14:25:09', '2018-06-18 14:25:12');
INSERT INTO `detail` VALUES (20, 'PHP从入门到精通', '《php从入门到精通（第4版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用PHP进行网络开发应该掌握的各方面技术。《php从入门到精通（第4版）》共分4篇25章，其中，基础知识篇包括初识PHP、PHP环境搭建和开发工具、PHP语言基础、流程控制语句、字符串操作、正则表达式、PHP数组、PHP与Web页面交互、PHP与JavaScript交互、日期和时间；核心技术篇包括Cookie与Session、图形图像处理技术、文件系统、面向对象、PHP加密技术、MySQL数据库基础、phpM', 20, '2018-06-18 14:26:09', '2018-06-18 14:26:12');
INSERT INTO `detail` VALUES (21, 'PHP与MySQL权威指南', '《PHP与MySQL指南》是目前为止全面的关于PHP与MySQL开发技术的书籍之一，系统而全面地讲解了PHP与MySQL技术的方方面面，适合初中级的PHP程序员系统地[0学0]习；本书也是目前为止[0首0]本系统而深入地讲解UCenter、Discuz!、UCHome、ShopNC、PHPCMS等PHP产[0品0]的二次开发技术的著作，适合有一定开发经验、需要[0学0]习PHP二次开发技术的中高级程序员。\r\n《PHP与MySQL指南》分为五个部分：部分[0首0]先介绍了PHP常用的服务器Apache的工作', 21, '2018-06-18 14:26:55', '2018-06-18 14:26:58');
INSERT INTO `detail` VALUES (22, '微信小程序', '零基础学习微信小程序开发，精选5个案例详细讲解，手把手带领读者快速入门小程序开发。\r\n\r\n　　从开发思路、技术，到使用工具与案例，涉及小程序开发的方方面面\r\n\r\n　　本书精选了5个案例：电影、驾考、打赏、日程表、电商；案例由浅入深，可以拿来即用，涉及登录态、支付流程、第三方API接入等常用技术点。本书在小程序技术基础上增加了基本CSS布局知识点，讲解细腻，手把手带领读者快速入门小程序开发。', 22, '2018-06-18 14:27:42', '2018-06-18 14:27:45');
INSERT INTO `detail` VALUES (23, '微信小程序运营实战', '本书为以下企业人员提供阅读帮助：\r\n\r\n　　服务类垂直领域的企业\r\n\r\n　　满足用户低频、非刚性需求的企业\r\n\r\n　　创业公司、小微企业\r\n\r\n　　想要实施或正在实施互联网化转型的传统企业\r\n\r\n　　数据要求不复杂的企业\r\n\r\n　　餐馆、酒店等线下场景中的企业', 23, '2018-06-18 14:28:28', '2018-06-18 14:28:31');
INSERT INTO `detail` VALUES (24, '微信公众号营销一本通', '\'微信公众号营销一本通\'详细介绍了微信公众号营销的各种理念和技巧。以微信公众号为切入点 精xuan多个微信公众号营销的成功实例构建全文。全书共分基础篇、运用篇和实践篇三篇 全面解析微信公众号的基础知识、运营思路、营销战术 以及推广方法和步骤 是*具实操性的微信营销、宣传、创业的宝典。', 24, '2018-06-18 14:29:18', '2018-06-18 14:29:20');
INSERT INTO `detail` VALUES (38, '色色色的', '水阿哥忽悠的固有', 40, '2018-06-27 17:23:51', '2018-06-27 17:23:51');

-- ----------------------------
-- Table structure for email_reg
-- ----------------------------
DROP TABLE IF EXISTS `email_reg`;
CREATE TABLE `email_reg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_reg
-- ----------------------------
INSERT INTO `email_reg` VALUES (1, '935915822@qq.com', '865244', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');
INSERT INTO `email_reg` VALUES (2, '726555132@qq.com', '300439', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');
INSERT INTO `email_reg` VALUES (3, '987164020@qq.com', '520158', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');
INSERT INTO `email_reg` VALUES (4, '17683954109@163.com', '693991', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');
INSERT INTO `email_reg` VALUES (5, '3252383294@qq.com', '729061', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');
INSERT INTO `email_reg` VALUES (6, '935925822@qq.com', '474056', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f');

-- ----------------------------
-- Table structure for emcode
-- ----------------------------
DROP TABLE IF EXISTS `emcode`;
CREATE TABLE `emcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` int(6) NULL DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emcode
-- ----------------------------
INSERT INTO `emcode` VALUES (1, '17683954109@163.com', 975807, '2018-06-13 13:35:39');
INSERT INTO `emcode` VALUES (2, '935915822@qq.com', 119357, '2018-06-14 16:05:17');
INSERT INTO `emcode` VALUES (3, '726555132@qq.com', 405504, '2018-06-14 16:04:31');
INSERT INTO `emcode` VALUES (4, '3029832639@qq.com', 999309, '2018-06-14 14:19:52');

-- ----------------------------
-- Table structure for main_class
-- ----------------------------
DROP TABLE IF EXISTS `main_class`;
CREATE TABLE `main_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_class
-- ----------------------------
INSERT INTO `main_class` VALUES (1, 'PHP', '服务器脚本语言', '2018-06-16 09:18:02', '2018-06-16 09:18:07');
INSERT INTO `main_class` VALUES (2, 'JAVA', '优秀的编程语言', '2018-06-16 09:23:03', '2018-06-16 09:23:07');
INSERT INTO `main_class` VALUES (3, 'JS', '客户端脚本语言', '2018-06-16 09:23:40', '2018-06-16 09:23:43');
INSERT INTO `main_class` VALUES (4, 'WeChat', '微信官方小程序', '2018-06-16 10:33:28', '2018-06-16 10:33:31');
INSERT INTO `main_class` VALUES (6, 'opensuse', 'linux152', '2018-06-27 14:06:32', '2018-06-27 19:56:14');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `member_sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (11, '1529068405', '2018-06-15 21:13:25', '男', NULL, '17683954109', '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-15 21:13:25');
INSERT INTO `member` VALUES (12, '1529116251', '2018-06-16 10:30:51', '男', '987164020@qq.com', NULL, '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-16 10:30:51');
INSERT INTO `member` VALUES (6, '1529040302', '2018-06-15 13:25:02', '男', '726555132@qq.com', NULL, '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-15 13:25:02');
INSERT INTO `member` VALUES (9, '1529067829', '2018-06-15 21:03:49', '男', '935915822@qq.com', NULL, '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-15 21:03:49');
INSERT INTO `member` VALUES (13, '1529150895', '2018-06-16 20:08:15', '男', '17683954109@163.com', NULL, '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-16 20:08:15');
INSERT INTO `member` VALUES (14, '1529829372', '2018-06-24 16:36:12', '女', '3252383294@qq.com', NULL, '41c03b9519a8eb7b098908ce1d68a0e9fe92327f', NULL, '2018-06-24 16:36:12');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '201806231312291770610137', 'pay', '2018-06-23 13:12:29', '2018-06-23 13:12:29', '17683954109', '21:50,18:1,16:1,9:2,14:1,25:1,23:1,22:1');
INSERT INTO `order` VALUES (7, '201806241547218007492522', 'no pay', '2018-06-24 15:47:21', '2018-06-24 15:47:21', '17683954109', '5:1,6:1,7:1');
INSERT INTO `order` VALUES (12, '201806241630355820628028', 'no pay', '2018-06-24 16:30:35', '2018-06-24 16:30:35', '17683954109', '5:1');
INSERT INTO `order` VALUES (15, '201806241636434427142525', 'no pay', '2018-06-24 16:36:43', '2018-06-24 16:36:43', '3252383294@qq.com', '18:1,21:1');
INSERT INTO `order` VALUES (16, '201806241639354189727804', 'no pay', '2018-06-24 16:39:35', '2018-06-24 16:39:35', '3252383294@qq.com', '18:1');

-- ----------------------------
-- Table structure for order_shutcut
-- ----------------------------
DROP TABLE IF EXISTS `order_shutcut`;
CREATE TABLE `order_shutcut`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_shutcut
-- ----------------------------
INSERT INTO `order_shutcut` VALUES (1, '201806231312291770610137', '21:64.80,18:52.90,16:45.90,9:39.50,14:39.40,25:36.70,23:45.50,22:56.30', '2018-06-23 13:12:29', '2018-06-23 13:12:29');
INSERT INTO `order_shutcut` VALUES (7, '201806241547218007492522', '5:35.50,6:42.80,7:35.80', '2018-06-24 15:47:21', '2018-06-24 15:47:21');
INSERT INTO `order_shutcut` VALUES (12, '201806241630355820628028', '5:35.50', '2018-06-24 16:30:35', '2018-06-24 16:30:35');
INSERT INTO `order_shutcut` VALUES (15, '201806241636434427142525', '18:52.90,21:64.80', '2018-06-24 16:36:43', '2018-06-24 16:36:43');
INSERT INTO `order_shutcut` VALUES (16, '201806241639354189727804', '18:52.90', '2018-06-24 16:39:35', '2018-06-24 16:39:35');

-- ----------------------------
-- Table structure for pre_img
-- ----------------------------
DROP TABLE IF EXISTS `pre_img`;
CREATE TABLE `pre_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detail_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pre_img
-- ----------------------------
INSERT INTO `pre_img` VALUES (1, '/images/product/java01.jpg', '2018-06-17 12:15:38', '2018-06-17 12:15:42', 1);
INSERT INTO `pre_img` VALUES (2, '/images/product/java02.jpg', '2018-06-17 12:16:02', '2018-06-17 12:16:05', 2);
INSERT INTO `pre_img` VALUES (3, '/images/product/java03.jpg', '2018-06-17 12:16:22', '2018-06-17 12:16:26', 3);
INSERT INTO `pre_img` VALUES (4, '/images/product/java04.jpg', '2018-06-17 12:16:51', '2018-06-17 12:16:55', 4);
INSERT INTO `pre_img` VALUES (5, '/images/product/java05.jpg', '2018-06-17 12:17:09', '2018-06-17 12:17:13', 5);
INSERT INTO `pre_img` VALUES (6, '/images/product/java06.jpg', '2018-06-17 12:17:28', '2018-06-17 12:17:32', 6);
INSERT INTO `pre_img` VALUES (7, '/images/product/java07.jpg', '2018-06-17 12:18:00', '2018-06-17 12:18:04', 7);
INSERT INTO `pre_img` VALUES (8, '/images/product/js01.jpg', '2018-06-17 12:18:28', '2018-06-17 12:18:31', 8);
INSERT INTO `pre_img` VALUES (10, '/images/product/js03.jpg', '2018-06-17 12:19:10', '2018-06-17 12:19:13', 10);
INSERT INTO `pre_img` VALUES (12, '/images/product/js05.jpg', '2018-06-17 12:19:55', '2018-06-17 12:19:58', 12);
INSERT INTO `pre_img` VALUES (13, '/images/product/js06.jpg', '2018-06-17 12:20:17', '2018-06-17 12:20:20', 13);
INSERT INTO `pre_img` VALUES (15, '/images/product/php01.jpg', '2018-06-17 12:21:00', '2018-06-17 12:21:03', 15);
INSERT INTO `pre_img` VALUES (16, '/images/product/php02.jpg', '2018-06-17 12:21:16', '2018-06-17 12:21:20', 16);
INSERT INTO `pre_img` VALUES (17, '/images/product/php03.jpg', '2018-06-17 12:21:38', '2018-06-17 12:21:42', 17);
INSERT INTO `pre_img` VALUES (18, '/images/product/php04.jpg', '2018-06-17 12:21:57', '2018-06-17 12:22:01', 18);
INSERT INTO `pre_img` VALUES (19, '/images/product/php05.jpg', '2018-06-17 12:22:16', '2018-06-17 12:22:19', 19);
INSERT INTO `pre_img` VALUES (20, '/images/product/php06.jpg', '2018-06-17 12:23:41', '2018-06-17 12:23:45', 20);
INSERT INTO `pre_img` VALUES (21, '/images/product/php07.jpg', '2018-06-17 12:24:04', '2018-06-17 12:24:07', 21);
INSERT INTO `pre_img` VALUES (22, '/images/product/wechat01.jpg', '2018-06-17 12:24:27', '2018-06-17 12:24:30', 22);
INSERT INTO `pre_img` VALUES (23, '/images/product/wechat02.jpg', '2018-06-17 12:24:57', '2018-06-17 12:25:01', 23);
INSERT INTO `pre_img` VALUES (24, '/images/product/wechat03.jpg', '2018-06-17 12:25:19', '2018-06-17 12:25:23', 24);
INSERT INTO `pre_img` VALUES (66, '/upload/jpg/49c651d0a9a7dc6c1294adbea81d0fb6.jpg', '2018-06-27 19:06:39', '2018-06-27 19:06:39', 15);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prview_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Java基础入门', '/images/product/java01.jpg', '2018-06-17 12:36:03', '2018-06-17 12:36:06', 43.50, 3);
INSERT INTO `product` VALUES (2, 'Java语言程序设计', '/images/product/java02.jpg', '2018-06-17 12:36:40', '2018-06-17 12:36:44', 37.80, 3);
INSERT INTO `product` VALUES (3, 'Java service实战', '/images/product/java03.jpg', '2018-06-17 12:37:21', '2018-06-17 12:37:25', 42.30, 3);
INSERT INTO `product` VALUES (4, 'Java核心技术精讲', '/images/product/java04.jpg', '2018-06-17 12:38:08', '2018-06-17 12:38:11', 32.80, 4);
INSERT INTO `product` VALUES (5, 'Java web开发技术详解', '/images/product/java05.jpg', '2018-06-17 12:38:54', '2018-06-17 12:38:58', 35.50, 4);
INSERT INTO `product` VALUES (6, 'Java8函数式编程', '/images/product/java06.jpg', '2018-06-17 12:39:30', '2018-06-17 12:39:34', 42.80, 4);
INSERT INTO `product` VALUES (7, 'Java程序设计基础', '/images/product/java07.jpg', '2018-06-17 12:40:02', '2018-06-17 12:40:05', 35.80, 4);
INSERT INTO `product` VALUES (8, '深入理解JavaScript', '/images/product/js01.jpg', '2018-06-17 12:40:36', '2018-06-17 12:40:39', 42.90, 5);
INSERT INTO `product` VALUES (10, 'JavaScript之美', '/images/product/js03.jpg', '2018-06-17 12:41:34', '2018-06-17 12:41:38', 52.90, 5);
INSERT INTO `product` VALUES (12, 'JavaScript语言精粹', '/images/product/js05.jpg', '2018-06-17 12:42:43', '2018-06-17 12:42:47', 42.90, 5);
INSERT INTO `product` VALUES (13, 'JavaScript设计模式', '/images/product/js06.jpg', '2018-06-17 12:43:09', '2018-06-17 12:43:12', 53.50, 5);
INSERT INTO `product` VALUES (15, 'PHP从入门到精通', '/images/product/php01.jpg', '2018-06-17 12:44:09', '2018-06-26 15:46:26', 52.30, 1);
INSERT INTO `product` VALUES (16, 'PHP7编程实战', '/images/product/php02.jpg', '2018-06-17 12:44:40', '2018-06-17 12:44:42', 45.90, 2);
INSERT INTO `product` VALUES (17, '从零开始学PHP', '/images/product/php03.jpg', '2018-06-17 12:45:17', '2018-06-17 12:45:20', 39.40, 1);
INSERT INTO `product` VALUES (18, 'PHP编程实战', '/images/product/php04.jpg', '2018-06-17 12:45:50', '2018-06-17 12:45:53', 52.90, 2);
INSERT INTO `product` VALUES (19, 'PHP程序设计', '/images/product/php05.jpg', '2018-06-17 12:46:18', '2018-06-17 12:46:22', 76.20, 1);
INSERT INTO `product` VALUES (20, 'PHP从入门到精通', '/images/product/php06.jpg', '2018-06-17 12:46:49', '2018-06-17 12:46:52', 53.60, 1);
INSERT INTO `product` VALUES (21, 'PHP与MySQL权威指南', '/images/product/php07.jpg', '2018-06-17 12:47:22', '2018-06-17 12:47:25', 64.80, 2);
INSERT INTO `product` VALUES (22, '微信小程序入门', '/images/product/wechat01.jpg', '2018-06-17 12:47:52', '2018-06-17 12:47:54', 56.30, 8);
INSERT INTO `product` VALUES (23, '微信小程序运营实战', '/images/product/wechat02.jpg', '2018-06-17 12:48:23', '2018-06-17 12:48:25', 45.50, 8);
INSERT INTO `product` VALUES (24, '微信公众号营销一本通', '/images/product/wechat03.jpg', '2018-06-17 12:48:59', '2018-06-17 12:49:03', 53.90, 7);

-- ----------------------------
-- Table structure for telcode
-- ----------------------------
DROP TABLE IF EXISTS `telcode`;
CREATE TABLE `telcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` int(6) NULL DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of telcode
-- ----------------------------
INSERT INTO `telcode` VALUES (1, '17683954109', 455069, '2018-06-15 21:17:55');
INSERT INTO `telcode` VALUES (2, '13403007220', 557822, '2018-06-14 10:46:50');

-- ----------------------------
-- Table structure for temp_img
-- ----------------------------
DROP TABLE IF EXISTS `temp_img`;
CREATE TABLE `temp_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temp_img
-- ----------------------------
INSERT INTO `temp_img` VALUES (10, '/upload/jpg/571eb1edd9330ad9e4b029f45bcbc78d.jpg', '2018-06-27 10:43:47', '2018-06-27 10:43:47');
INSERT INTO `temp_img` VALUES (7, '/upload/jpg/ac1f46870931b212c1a174a7454110da.jpg', '2018-06-27 10:25:43', '2018-06-27 10:25:43');

SET FOREIGN_KEY_CHECKS = 1;
