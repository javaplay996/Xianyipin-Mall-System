-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootcr443
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785736372 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-15 04:56:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-15 04:56:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-15 04:56:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-15 04:56:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-15 04:56:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-15 04:56:50',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615785736371,'2021-03-15 05:22:16',1615785694578,'广东省梅州市梅江区江南街道梅新路122-1号作新小学','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'lingshixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785819496 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785936528 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-15 04:56:50',1,1,'提问1','回复1',1),(52,'2021-03-15 04:56:50',2,2,'提问2','回复2',2),(53,'2021-03-15 04:56:50',3,3,'提问3','回复3',3),(54,'2021-03-15 04:56:50',4,4,'提问4','回复4',4),(55,'2021-03-15 04:56:50',5,5,'提问5','回复5',5),(56,'2021-03-15 04:56:50',6,6,'提问6','回复6',6),(1615785888245,'2021-03-15 05:24:47',1615785694578,NULL,'请问有蜜饯类的吗',NULL,0),(1615785936527,'2021-03-15 05:25:36',1615785694578,1,NULL,'有的，可直接搜索或按品类查看',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootcr443/upload/1615784833890.jpg'),(2,'picture2','http://localhost:8080/springbootcr443/upload/1615784842254.jpg'),(3,'picture3','http://localhost:8080/springbootcr443/upload/1615785640365.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `lingshimingcheng` varchar(200) DEFAULT NULL COMMENT '零食名称',
  `lingshifenlei` varchar(200) DEFAULT NULL COMMENT '零食分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615786031437 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (41,'2021-03-15 04:56:50','订单编号1','零食名称1','零食分类1','品牌1','1','http://localhost:8080/springbootcr443/upload/1615784773688.jpg','评价内容1','2021-03-15','用户名1','是',''),(42,'2021-03-15 04:56:50','订单编号2','零食名称2','零食分类2','品牌2','1','http://localhost:8080/springbootcr443/upload/1615784781177.jpg','评价内容2','2021-03-15','用户名2','是',''),(43,'2021-03-15 04:56:50','订单编号3','零食名称3','零食分类3','品牌3','1','http://localhost:8080/springbootcr443/upload/1615784790382.jpg','评价内容3','2021-03-15','用户名3','是',''),(44,'2021-03-15 04:56:50','订单编号4','零食名称4','零食分类4','品牌4','1','http://localhost:8080/springbootcr443/upload/1615784800752.jpg','评价内容4','2021-03-15','用户名4','是',''),(45,'2021-03-15 04:56:50','订单编号5','零食名称5','零食分类5','品牌5','1','http://localhost:8080/springbootcr443/upload/1615784811420.jpg','评价内容5','2021-03-15','用户名5','是',''),(46,'2021-03-15 04:56:50','订单编号6','零食名称6','零食分类6','品牌6','1','http://localhost:8080/springbootcr443/upload/1615784821745.jpg','评价内容6','2021-03-15','用户名6','是',''),(1615786031436,'2021-03-15 05:27:10','202131513245818939105','孕味食足混合坚果','益智坚果','孕味食足','5','http://localhost:8080/springbootcr443/upload/1615786013711.jpg','很不错的坚果，里面有6个品种','2021-03-15','1','是','感谢支持');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslingshixinxi`
--

DROP TABLE IF EXISTS `discusslingshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslingshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='零食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslingshixinxi`
--

LOCK TABLES `discusslingshixinxi` WRITE;
/*!40000 ALTER TABLE `discusslingshixinxi` DISABLE KEYS */;
INSERT INTO `discusslingshixinxi` VALUES (111,'2021-03-15 04:56:50',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-15 04:56:50',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-15 04:56:50',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-15 04:56:50',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-15 04:56:50',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-15 04:56:50',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslingshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lingshifenlei`
--

DROP TABLE IF EXISTS `lingshifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lingshifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingshifenlei` varchar(200) NOT NULL COMMENT '零食分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lingshifenlei` (`lingshifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785574684 DEFAULT CHARSET=utf8 COMMENT='零食分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lingshifenlei`
--

LOCK TABLES `lingshifenlei` WRITE;
/*!40000 ALTER TABLE `lingshifenlei` DISABLE KEYS */;
INSERT INTO `lingshifenlei` VALUES (21,'2021-03-15 04:56:50','凉果蜜饯'),(22,'2021-03-15 04:56:50','无糖食品'),(23,'2021-03-15 04:56:50','休闲食品'),(24,'2021-03-15 04:56:50','饼干蛋糕'),(25,'2021-03-15 04:56:50','益智坚果'),(26,'2021-03-15 04:56:50','孕妇专区'),(1615785574683,'2021-03-15 05:19:33','健康膨化');
/*!40000 ALTER TABLE `lingshifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lingshixinxi`
--

DROP TABLE IF EXISTS `lingshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lingshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingshimingcheng` varchar(200) NOT NULL COMMENT '零食名称',
  `lingshifenlei` varchar(200) NOT NULL COMMENT '零食分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `lingshixiangqing` longtext COMMENT '零食详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785630035 DEFAULT CHARSET=utf8 COMMENT='零食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lingshixinxi`
--

LOCK TABLES `lingshixinxi` WRITE;
/*!40000 ALTER TABLE `lingshixinxi` DISABLE KEYS */;
INSERT INTO `lingshixinxi` VALUES (31,'2021-03-15 04:56:50','零食名称1','休闲食品','http://localhost:8080/springbootcr443/upload/1615784689576.jpg','品牌1','规格1','保质期1','<p>零食详情1</p>','2021-03-15 13:18:22',3,99.9),(32,'2021-03-15 04:56:50','零食名称2','凉果蜜饯','http://localhost:8080/springbootcr443/upload/1615784710647.jpg','品牌2','规格2','保质期2','<p>零食详情2</p>','2021-03-15 13:04:53',3,99.9),(33,'2021-03-15 04:56:50','零食名称3','孕妇专区','http://localhost:8080/springbootcr443/upload/1615784722058.jpg','品牌3','规格3','保质期3','<p>零食详情3</p>','2021-03-15 13:05:14',4,99.9),(34,'2021-03-15 04:56:50','零食名称4','无糖食品','http://localhost:8080/springbootcr443/upload/1615784735271.jpg','品牌4','规格4','保质期4','<p>零食详情4</p>','2021-03-15 13:05:26',5,99.9),(35,'2021-03-15 04:56:50','零食名称5','益智坚果','http://localhost:8080/springbootcr443/upload/1615784753935.jpg','品牌5','规格5','保质期5','<p>零食详情5</p>','2021-03-15 13:22:31',11,99.9),(36,'2021-03-15 04:56:50','零食名称6','饼干蛋糕','http://localhost:8080/springbootcr443/upload/1615784765464.jpg','品牌6','规格6','保质期6','<p>零食详情6</p>','2021-03-15 13:23:39',8,99.9),(1615785630034,'2021-03-15 05:20:29','孕味食足混合坚果','益智坚果','http://localhost:8080/springbootcr443/upload/1615785595905.jpg','孕味食足','30g*7','24个月','<p>不添加防腐剂，香精，色素</p><p><img src=\"http://localhost:8080/springbootcr443/upload/1615785627195.jpg\"></p>','2021-03-15 13:26:08',6,39);
/*!40000 ALTER TABLE `lingshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785675169 DEFAULT CHARSET=utf8 COMMENT='零食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-15 04:56:50','标题1','简介1','http://localhost:8080/springbootcr443/upload/1615784853442.jpg','<p>内容1</p>'),(102,'2021-03-15 04:56:50','标题2','简介2','http://localhost:8080/springbootcr443/upload/1615784985738.jpg','<p>内容2</p>'),(103,'2021-03-15 04:56:50','标题3','简介3','http://localhost:8080/springbootcr443/upload/1615784995590.jpg','<p>内容3</p>'),(104,'2021-03-15 04:56:50','标题4','简介4','http://localhost:8080/springbootcr443/upload/1615785005281.jpg','<p>内容4</p>'),(105,'2021-03-15 04:56:50','标题5','简介5','http://localhost:8080/springbootcr443/upload/1615785014682.jpg','<p>内容5</p>'),(106,'2021-03-15 04:56:50','标题6','简介6','http://localhost:8080/springbootcr443/upload/1615785023382.jpg','<p>内容6</p>'),(1615785675168,'2021-03-15 05:21:14','零食优惠活动','优惠','http://localhost:8080/springbootcr443/upload/1615785654401.jpg','<p>全场零食参与618优惠活动</p><p><img src=\"http://localhost:8080/springbootcr443/upload/1615785672864.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'lingshixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785900747 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615785900746,'2021-03-15 05:25:00','202131513245818939105','lingshixinxi',1615785694578,1615785630034,'孕味食足混合坚果','http://localhost:8080/springbootcr443/upload/1615785595905.jpg',3,39,39,117,117,1,'已完成','广东省梅州市梅江区江南街道梅新路122-1号作新小学');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785784086 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','l7quysgqgct77j7wzit1ubj0wxz3d6dd','2021-03-15 05:03:25','2021-03-15 06:27:27'),(2,1615785694578,'1','yonghu','用户','aui93khb50b3ppf8gofmvc0o70tix8gd','2021-03-15 05:21:40','2021-03-15 06:25:50');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-15 04:56:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615785694579 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-15 04:56:50','用户1','123456','姓名1','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-15 04:56:50','用户2','123456','姓名2','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-15 04:56:50','用户3','123456','姓名3','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-15 04:56:50','用户4','123456','姓名4','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-15 04:56:50','用户5','123456','姓名5','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-15 04:56:50','用户6','123456','姓名6','男','http://localhost:8080/springbootcr443/upload/yonghu_touxiang6.jpg','13823888886',100),(1615785694578,'2021-03-15 05:21:34','1','1','陈一','女','http://localhost:8080/springbootcr443/upload/1615785711295.jpg','12312312312',883);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 10:09:03
