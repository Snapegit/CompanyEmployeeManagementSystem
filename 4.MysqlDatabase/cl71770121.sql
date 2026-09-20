-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl71770121
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
-- Current Database: `cl71770121`
--

/*!40000 DROP DATABASE IF EXISTS `cl71770121`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl71770121` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl71770121`;

--
-- Table structure for table `bumenxinxi`
--

DROP TABLE IF EXISTS `bumenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `suoshugongsi` varchar(200) DEFAULT NULL COMMENT '所属公司',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `bumenchengyuan` longtext COMMENT '部门成员',
  `bumentupian` longtext COMMENT '部门图片',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xiabanshijian` varchar(200) DEFAULT NULL COMMENT '下班时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='部门信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenxinxi`
--

LOCK TABLES `bumenxinxi` WRITE;
/*!40000 ALTER TABLE `bumenxinxi` DISABLE KEYS */;
INSERT INTO `bumenxinxi` VALUES (41,'2024-03-03 08:25:48','部门名称1','部门编号1','所属公司1','部门负责人1','19819881111','部门成员1','file/bumenxinxiBumentupian1.jpg,file/bumenxinxiBumentupian2.jpg,file/bumenxinxiBumentupian3.jpg','上班时间1','下班时间1'),(42,'2024-03-03 08:25:48','部门名称2','部门编号2','所属公司2','部门负责人2','19819881112','部门成员2','file/bumenxinxiBumentupian2.jpg,file/bumenxinxiBumentupian3.jpg,file/bumenxinxiBumentupian4.jpg','上班时间2','下班时间2'),(43,'2024-03-03 08:25:48','部门名称3','部门编号3','所属公司3','部门负责人3','19819881113','部门成员3','file/bumenxinxiBumentupian3.jpg,file/bumenxinxiBumentupian4.jpg,file/bumenxinxiBumentupian5.jpg','上班时间3','下班时间3'),(44,'2024-03-03 08:25:48','部门名称4','部门编号4','所属公司4','部门负责人4','19819881114','部门成员4','file/bumenxinxiBumentupian4.jpg,file/bumenxinxiBumentupian5.jpg,file/bumenxinxiBumentupian6.jpg','上班时间4','下班时间4'),(45,'2024-03-03 08:25:48','部门名称5','部门编号5','所属公司5','部门负责人5','19819881115','部门成员5','file/bumenxinxiBumentupian5.jpg,file/bumenxinxiBumentupian6.jpg,file/bumenxinxiBumentupian7.jpg','上班时间5','下班时间5'),(46,'2024-03-03 08:25:48','部门名称6','部门编号6','所属公司6','部门负责人6','19819881116','部门成员6','file/bumenxinxiBumentupian6.jpg,file/bumenxinxiBumentupian7.jpg,file/bumenxinxiBumentupian8.jpg','上班时间6','下班时间6');
/*!40000 ALTER TABLE `bumenxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzifafang`
--

DROP TABLE IF EXISTS `gongzifafang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzifafang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `dixin` double DEFAULT NULL COMMENT '低薪',
  `jiabangongzi` double DEFAULT NULL COMMENT '加班工资',
  `jixiaogongzi` double DEFAULT NULL COMMENT '绩效工资',
  `chidao` double DEFAULT NULL COMMENT '迟到',
  `zaotui` double DEFAULT NULL COMMENT '早退',
  `queqin` double DEFAULT NULL COMMENT '缺勤',
  `qingjia` double DEFAULT NULL COMMENT '请假',
  `quanqin` double DEFAULT NULL COMMENT '全勤',
  `shebaodaijiao` double DEFAULT NULL COMMENT '社保代缴',
  `shifagongzi` double DEFAULT NULL COMMENT '实发工资',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='工资发放';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzifafang`
--

LOCK TABLES `gongzifafang` WRITE;
/*!40000 ALTER TABLE `gongzifafang` DISABLE KEYS */;
INSERT INTO `gongzifafang` VALUES (121,'2024-03-03 08:25:48','月份1','账号1','姓名1','岗位1',1,1,1,1,1,1,1,1,1,1),(122,'2024-03-03 08:25:48','月份2','账号2','姓名2','岗位2',2,2,2,2,2,2,2,2,2,2),(123,'2024-03-03 08:25:48','月份3','账号3','姓名3','岗位3',3,3,3,3,3,3,3,3,3,3),(124,'2024-03-03 08:25:48','月份4','账号4','姓名4','岗位4',4,4,4,4,4,4,4,4,4,4),(125,'2024-03-03 08:25:48','月份5','账号5','姓名5','岗位5',5,5,5,5,5,5,5,5,5,5),(126,'2024-03-03 08:25:48','月份6','账号6','姓名6','岗位6',6,6,6,6,6,6,6,6,6,6);
/*!40000 ALTER TABLE `gongzifafang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiabanshenqing`
--

DROP TABLE IF EXISTS `jiabanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiabanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `jiabankaishishijian` datetime DEFAULT NULL COMMENT '加班开始时间',
  `jiabanjieshushijian` datetime DEFAULT NULL COMMENT '加班结束时间',
  `jiabanyuanyin` varchar(200) DEFAULT NULL COMMENT '加班原因',
  `jiabanfaqiriqi` date DEFAULT NULL COMMENT '加班发起日期',
  `shhf` longtext COMMENT '回复内容',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='加班申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiabanshenqing`
--

LOCK TABLES `jiabanshenqing` WRITE;
/*!40000 ALTER TABLE `jiabanshenqing` DISABLE KEYS */;
INSERT INTO `jiabanshenqing` VALUES (81,'2024-03-03 08:25:48','账号1','姓名1','手机1','岗位1','部门名称1','部门编号1','部门负责人1','部门联系电话1','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因1','2024-03-03','','是'),(82,'2024-03-03 08:25:48','账号2','姓名2','手机2','岗位2','部门名称2','部门编号2','部门负责人2','部门联系电话2','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因2','2024-03-03','','是'),(83,'2024-03-03 08:25:48','账号3','姓名3','手机3','岗位3','部门名称3','部门编号3','部门负责人3','部门联系电话3','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因3','2024-03-03','','是'),(84,'2024-03-03 08:25:48','账号4','姓名4','手机4','岗位4','部门名称4','部门编号4','部门负责人4','部门联系电话4','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因4','2024-03-03','','是'),(85,'2024-03-03 08:25:48','账号5','姓名5','手机5','岗位5','部门名称5','部门编号5','部门负责人5','部门联系电话5','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因5','2024-03-03','','是'),(86,'2024-03-03 08:25:48','账号6','姓名6','手机6','岗位6','部门名称6','部门编号6','部门负责人6','部门联系电话6','2024-03-03 16:25:48','2024-03-03 16:25:48','加班原因6','2024-03-03','','是');
/*!40000 ALTER TABLE `jiabanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqinxinxi`
--

DROP TABLE IF EXISTS `kaoqinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `chuqincishu` varchar(200) DEFAULT NULL COMMENT '出勤次数',
  `jiabancishu` varchar(200) DEFAULT NULL COMMENT '加班次数',
  `chidaocishu` varchar(200) DEFAULT NULL COMMENT '迟到次数',
  `zaotuicishu` varchar(200) DEFAULT NULL COMMENT '早退次数',
  `queqincishu` varchar(200) DEFAULT NULL COMMENT '缺勤次数',
  `waichucishu` varchar(200) DEFAULT NULL COMMENT '外出次数',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='考勤信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqinxinxi`
--

LOCK TABLES `kaoqinxinxi` WRITE;
/*!40000 ALTER TABLE `kaoqinxinxi` DISABLE KEYS */;
INSERT INTO `kaoqinxinxi` VALUES (111,'2024-03-03 08:25:48','账号1','姓名1','手机1','岗位1','部门名称1','部门编号1','出勤次数1','加班次数1','迟到次数1','早退次数1','缺勤次数1','外出次数1','2024-03-03 16:25:48'),(112,'2024-03-03 08:25:48','账号2','姓名2','手机2','岗位2','部门名称2','部门编号2','出勤次数2','加班次数2','迟到次数2','早退次数2','缺勤次数2','外出次数2','2024-03-03 16:25:48'),(113,'2024-03-03 08:25:48','账号3','姓名3','手机3','岗位3','部门名称3','部门编号3','出勤次数3','加班次数3','迟到次数3','早退次数3','缺勤次数3','外出次数3','2024-03-03 16:25:48'),(114,'2024-03-03 08:25:48','账号4','姓名4','手机4','岗位4','部门名称4','部门编号4','出勤次数4','加班次数4','迟到次数4','早退次数4','缺勤次数4','外出次数4','2024-03-03 16:25:48'),(115,'2024-03-03 08:25:48','账号5','姓名5','手机5','岗位5','部门名称5','部门编号5','出勤次数5','加班次数5','迟到次数5','早退次数5','缺勤次数5','外出次数5','2024-03-03 16:25:48'),(116,'2024-03-03 08:25:48','账号6','姓名6','手机6','岗位6','部门名称6','部门编号6','出勤次数6','加班次数6','迟到次数6','早退次数6','缺勤次数6','外出次数6','2024-03-03 16:25:48');
/*!40000 ALTER TABLE `kaoqinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-03 08:25:48','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common1\",\"menu\":\"管理员管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\"}],\"fontClass\":\"icon-user1\",\"menu\":\"员工管理\",\"unicode\":\"&#xef97;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\"],\"menu\":\"工资发放\",\"menuJump\":\"列表\",\"tableName\":\"gongzifafang\"}],\"fontClass\":\"icon-common23\",\"menu\":\"工资发放管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"考勤信息\",\"menuJump\":\"列表\",\"tableName\":\"kaoqinxinxi\"}],\"fontClass\":\"icon-common13\",\"menu\":\"考勤信息管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"外出统计\",\"首页总数\",\"首页统计\"],\"menu\":\"外出申请\",\"menuJump\":\"列表\",\"tableName\":\"waichushenqing\"}],\"fontClass\":\"icon-common33\",\"menu\":\"外出申请管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"下班统计\",\"首页总数\",\"首页统计\"],\"menu\":\"下班打卡\",\"menuJump\":\"列表\",\"tableName\":\"xiabandaka\"}],\"fontClass\":\"icon-common22\",\"menu\":\"下班打卡管理\",\"unicode\":\"&#xee04;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"考勤人数\",\"首页统计\",\"上班打卡统计\",\"首页总数\"],\"menu\":\"上班打卡\",\"menuJump\":\"列表\",\"tableName\":\"shangbandaka\"}],\"fontClass\":\"icon-common42\",\"menu\":\"上班打卡管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"加班统计\",\"首页统计\",\"首页总数\"],\"menu\":\"加班申请\",\"menuJump\":\"列表\",\"tableName\":\"jiabanshenqing\"}],\"fontClass\":\"icon-common39\",\"menu\":\"加班申请管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"请假类型\",\"menuJump\":\"列表\",\"tableName\":\"qingjialeixing\"}],\"fontClass\":\"icon-common15\",\"menu\":\"请假类型管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"请假统计\",\"首页统计\",\"首页总数\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"fontClass\":\"icon-common15\",\"menu\":\"请假申请管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"部门统计\"],\"menu\":\"部门信息\",\"menuJump\":\"列表\",\"tableName\":\"bumenxinxi\"}],\"fontClass\":\"icon-common11\",\"menu\":\"部门信息管理\",\"unicode\":\"&#xeded;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common25\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common44\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xef28;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"上班打卡\",\"下班打卡\",\"请假\",\"加班\",\"外出\"],\"menu\":\"部门信息\",\"menuJump\":\"列表\",\"tableName\":\"bumenxinxi\"}],\"menu\":\"部门信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"工资发放\",\"menuJump\":\"列表\",\"tableName\":\"gongzifafang\"}],\"fontClass\":\"icon-common23\",\"menu\":\"工资发放管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"考勤信息\",\"menuJump\":\"列表\",\"tableName\":\"kaoqinxinxi\"}],\"fontClass\":\"icon-common13\",\"menu\":\"考勤信息管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"外出申请\",\"menuJump\":\"列表\",\"tableName\":\"waichushenqing\"}],\"fontClass\":\"icon-common33\",\"menu\":\"外出申请管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"下班打卡\",\"menuJump\":\"列表\",\"tableName\":\"xiabandaka\"}],\"fontClass\":\"icon-common22\",\"menu\":\"下班打卡管理\",\"unicode\":\"&#xee04;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\"],\"menu\":\"上班打卡\",\"menuJump\":\"列表\",\"tableName\":\"shangbandaka\"}],\"fontClass\":\"icon-common42\",\"menu\":\"上班打卡管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"加班申请\",\"menuJump\":\"列表\",\"tableName\":\"jiabanshenqing\"}],\"fontClass\":\"icon-common39\",\"menu\":\"加班申请管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"fontClass\":\"icon-common15\",\"menu\":\"请假申请管理\",\"unicode\":\"&#xedfc;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"上班打卡\",\"下班打卡\",\"请假\",\"加班\",\"外出\"],\"menu\":\"部门信息\",\"menuJump\":\"列表\",\"tableName\":\"bumenxinxi\"}],\"menu\":\"部门信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"员工\",\"tableName\":\"yuangong\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2024-03-03 08:25:48','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(132,'2024-03-03 08:25:48','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(133,'2024-03-03 08:25:48','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(134,'2024-03-03 08:25:48','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(135,'2024-03-03 08:25:48','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(136,'2024-03-03 08:25:48','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjialeixing`
--

DROP TABLE IF EXISTS `qingjialeixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjialeixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='请假类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjialeixing`
--

LOCK TABLES `qingjialeixing` WRITE;
/*!40000 ALTER TABLE `qingjialeixing` DISABLE KEYS */;
INSERT INTO `qingjialeixing` VALUES (71,'2024-03-03 08:25:48','类型1'),(72,'2024-03-03 08:25:48','类型2'),(73,'2024-03-03 08:25:48','类型3'),(74,'2024-03-03 08:25:48','类型4'),(75,'2024-03-03 08:25:48','类型5'),(76,'2024-03-03 08:25:48','类型6');
/*!40000 ALTER TABLE `qingjialeixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `qingjiayuanyin` varchar(200) DEFAULT NULL COMMENT '请假原因',
  `qingjiakaishishijian` datetime DEFAULT NULL COMMENT '请假开始时间',
  `qingjiajieshushijian` datetime DEFAULT NULL COMMENT '请假结束时间',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiafaqishijian` date DEFAULT NULL COMMENT '请假发起时间',
  `shhf` longtext COMMENT '回复内容',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (61,'2024-03-03 08:25:48','账号1','姓名1','手机1','岗位1','部门名称1','部门编号1','部门负责人1','部门联系电话1','请假原因1','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型1','2024-03-03','','是'),(62,'2024-03-03 08:25:48','账号2','姓名2','手机2','岗位2','部门名称2','部门编号2','部门负责人2','部门联系电话2','请假原因2','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型2','2024-03-03','','是'),(63,'2024-03-03 08:25:48','账号3','姓名3','手机3','岗位3','部门名称3','部门编号3','部门负责人3','部门联系电话3','请假原因3','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型3','2024-03-03','','是'),(64,'2024-03-03 08:25:48','账号4','姓名4','手机4','岗位4','部门名称4','部门编号4','部门负责人4','部门联系电话4','请假原因4','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型4','2024-03-03','','是'),(65,'2024-03-03 08:25:48','账号5','姓名5','手机5','岗位5','部门名称5','部门编号5','部门负责人5','部门联系电话5','请假原因5','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型5','2024-03-03','','是'),(66,'2024-03-03 08:25:48','账号6','姓名6','手机6','岗位6','部门名称6','部门编号6','部门负责人6','部门联系电话6','请假原因6','2024-03-03 16:25:48','2024-03-03 16:25:48','请假类型6','2024-03-03','','是');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangbandaka`
--

DROP TABLE IF EXISTS `shangbandaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangbandaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `shangbandakashijian` datetime DEFAULT NULL COMMENT '上班打卡时间',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='上班打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangbandaka`
--

LOCK TABLES `shangbandaka` WRITE;
/*!40000 ALTER TABLE `shangbandaka` DISABLE KEYS */;
INSERT INTO `shangbandaka` VALUES (51,'2024-03-03 08:25:48','账号1','姓名1','手机1','岗位1','部门名称1','部门编号1','部门负责人1','部门联系电话1','上班时间1','2024-03-03 16:25:48','2024-03-03'),(52,'2024-03-03 08:25:48','账号2','姓名2','手机2','岗位2','部门名称2','部门编号2','部门负责人2','部门联系电话2','上班时间2','2024-03-03 16:25:48','2024-03-03'),(53,'2024-03-03 08:25:48','账号3','姓名3','手机3','岗位3','部门名称3','部门编号3','部门负责人3','部门联系电话3','上班时间3','2024-03-03 16:25:48','2024-03-03'),(54,'2024-03-03 08:25:48','账号4','姓名4','手机4','岗位4','部门名称4','部门编号4','部门负责人4','部门联系电话4','上班时间4','2024-03-03 16:25:48','2024-03-03'),(55,'2024-03-03 08:25:48','账号5','姓名5','手机5','岗位5','部门名称5','部门编号5','部门负责人5','部门联系电话5','上班时间5','2024-03-03 16:25:48','2024-03-03'),(56,'2024-03-03 08:25:48','账号6','姓名6','手机6','岗位6','部门名称6','部门编号6','部门负责人6','部门联系电话6','上班时间6','2024-03-03 16:25:48','2024-03-03');
/*!40000 ALTER TABLE `shangbandaka` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','a7oaz7w19ubw60s80fzndx4g1y55fj2h','2024-03-03 08:55:32','2024-03-03 09:55:33');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-03 08:25:48','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waichushenqing`
--

DROP TABLE IF EXISTS `waichushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waichushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `waichukaishishijian` datetime DEFAULT NULL COMMENT '外出开始时间',
  `waichujieshushijian` datetime DEFAULT NULL COMMENT '外出结束时间',
  `waichufaqiriqi` date DEFAULT NULL COMMENT '外出发起日期',
  `shhf` longtext COMMENT '回复内容',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='外出申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waichushenqing`
--

LOCK TABLES `waichushenqing` WRITE;
/*!40000 ALTER TABLE `waichushenqing` DISABLE KEYS */;
INSERT INTO `waichushenqing` VALUES (101,'2024-03-03 08:25:48','账号1','姓名1','手机1','岗位1','部门名称1','部门编号1','部门负责人1','部门联系电话1','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是'),(102,'2024-03-03 08:25:48','账号2','姓名2','手机2','岗位2','部门名称2','部门编号2','部门负责人2','部门联系电话2','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是'),(103,'2024-03-03 08:25:48','账号3','姓名3','手机3','岗位3','部门名称3','部门编号3','部门负责人3','部门联系电话3','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是'),(104,'2024-03-03 08:25:48','账号4','姓名4','手机4','岗位4','部门名称4','部门编号4','部门负责人4','部门联系电话4','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是'),(105,'2024-03-03 08:25:48','账号5','姓名5','手机5','岗位5','部门名称5','部门编号5','部门负责人5','部门联系电话5','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是'),(106,'2024-03-03 08:25:48','账号6','姓名6','手机6','岗位6','部门名称6','部门编号6','部门负责人6','部门联系电话6','2024-03-03 16:25:48','2024-03-03 16:25:48','2024-03-03','','是');
/*!40000 ALTER TABLE `waichushenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiabandaka`
--

DROP TABLE IF EXISTS `xiabandaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiabandaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `xiabandakashijian` datetime DEFAULT NULL COMMENT '下班打卡时间',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `bumenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '部门联系电话',
  `xiabanshijian` varchar(200) DEFAULT NULL COMMENT '下班时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='下班打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiabandaka`
--

LOCK TABLES `xiabandaka` WRITE;
/*!40000 ALTER TABLE `xiabandaka` DISABLE KEYS */;
INSERT INTO `xiabandaka` VALUES (91,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称1','部门编号1','部门负责人1','部门联系电话1','下班时间1','账号1','姓名1','手机1','岗位1'),(92,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称2','部门编号2','部门负责人2','部门联系电话2','下班时间2','账号2','姓名2','手机2','岗位2'),(93,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称3','部门编号3','部门负责人3','部门联系电话3','下班时间3','账号3','姓名3','手机3','岗位3'),(94,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称4','部门编号4','部门负责人4','部门联系电话4','下班时间4','账号4','姓名4','手机4','岗位4'),(95,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称5','部门编号5','部门负责人5','部门联系电话5','下班时间5','账号5','姓名5','手机5','岗位5'),(96,'2024-03-03 08:25:48','2024-03-03','2024-03-03 16:25:48','部门名称6','部门编号6','部门负责人6','部门联系电话6','下班时间6','账号6','姓名6','手机6','岗位6');
/*!40000 ALTER TABLE `xiabandaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `gongzuojingli` varchar(200) DEFAULT NULL COMMENT '工作经历',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1709456150310 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (31,'2024-03-03 08:25:48','账号1','123456','姓名1','19819881111','年龄1','男','学历1','工作经历1','部门1','岗位1','file/yuangongTouxiang1.jpg'),(32,'2024-03-03 08:25:48','账号2','123456','姓名2','19819881112','年龄2','男','学历2','工作经历2','部门2','岗位2','file/yuangongTouxiang2.jpg'),(33,'2024-03-03 08:25:48','账号3','123456','姓名3','19819881113','年龄3','男','学历3','工作经历3','部门3','岗位3','file/yuangongTouxiang3.jpg'),(34,'2024-03-03 08:25:48','账号4','123456','姓名4','19819881114','年龄4','男','学历4','工作经历4','部门4','岗位4','file/yuangongTouxiang4.jpg'),(35,'2024-03-03 08:25:48','账号5','123456','姓名5','19819881115','年龄5','男','学历5','工作经历5','部门5','岗位5','file/yuangongTouxiang5.jpg'),(36,'2024-03-03 08:25:48','账号6','123456','姓名6','19819881116','年龄6','男','学历6','工作经历6','部门6','岗位6','file/yuangongTouxiang6.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 18:12:25
