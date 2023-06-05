/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.28 : Database - yygh_order
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yygh_order` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `yygh_order`;

/*Table structure for table `order_info` */

DROP TABLE IF EXISTS `order_info`;

CREATE TABLE `order_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint DEFAULT NULL,
  `out_trade_no` varchar(300) DEFAULT NULL COMMENT '订单交易号',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `depcode` varchar(30) DEFAULT NULL COMMENT '科室编号',
  `depname` varchar(20) DEFAULT NULL COMMENT '科室名称',
  `title` varchar(20) DEFAULT NULL COMMENT '医生职称',
  `hos_schedule_id` varchar(50) DEFAULT NULL COMMENT '排班编号（医院自己的排班主键）',
  `reserve_date` date DEFAULT NULL COMMENT '安排日期',
  `reserve_time` tinyint DEFAULT '0' COMMENT '安排时间（0：上午 1：下午）',
  `patient_id` bigint DEFAULT NULL COMMENT '就诊人id',
  `patient_name` varchar(20) DEFAULT NULL COMMENT '就诊人名称',
  `patient_phone` varchar(11) DEFAULT NULL COMMENT '就诊人手机',
  `hos_record_id` varchar(30) DEFAULT NULL COMMENT '预约记录唯一标识（医院预约记录主键）',
  `number` int DEFAULT NULL COMMENT '预约号序',
  `fetch_time` varchar(50) DEFAULT NULL COMMENT '建议取号时间',
  `fetch_address` varchar(255) DEFAULT NULL COMMENT '取号地点',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '医事服务费',
  `quit_time` datetime DEFAULT NULL COMMENT '退号时间',
  `order_status` tinyint DEFAULT NULL COMMENT '订单状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_out_trade_no` (`out_trade_no`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_hoscode` (`hoscode`),
  KEY `idx_hos_schedule_id` (`hos_schedule_id`),
  KEY `idx_hos_record_id` (`hos_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='订单表';

/*Data for the table `order_info` */

insert  into `order_info`(`id`,`user_id`,`out_trade_no`,`hoscode`,`hosname`,`depcode`,`depname`,`title`,`hos_schedule_id`,`reserve_date`,`reserve_time`,`patient_id`,`patient_name`,`patient_phone`,`hos_record_id`,`number`,`fetch_time`,`fetch_address`,`amount`,`quit_time`,`order_status`,`create_time`,`update_time`,`is_deleted`) values (12,10,'168287367747538','1000_1','北京协和医院','200040878','多发性硬化专科门诊','副主任医师','644e9c41ce58ee7e41295996','2023-05-01',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-04-30 15:30:00',0,'2023-05-01 00:54:37','2023-05-01 00:54:37',0),(13,10,'168287501961679','1000_1','北京协和医院','200040878','多发性硬化专科门诊','副主任医师','644e9c41ce58ee7e41295996','2023-05-01',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-04-30 15:30:00',0,'2023-05-01 01:16:59','2023-05-01 01:16:59',0),(14,10,'168287510274284','1000_1','北京协和医院','200040878','多发性硬化专科门诊','副主任医师','644e9c41ce58ee7e41295996','2023-05-01',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-04-30 15:30:00',1,'2023-05-01 01:18:22','2023-05-01 01:18:22',0),(15,10,'168287513212526','1000_1','北京协和医院','200040878','多发性硬化专科门诊','副主任医师','644e9c41ce58ee7e41295996','2023-05-01',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-04-30 15:30:00',0,'2023-05-01 01:18:52','2023-05-01 01:18:52',0),(16,10,'168287532758323','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 01:22:07','2023-05-01 01:22:07',0),(17,10,'168292521643325','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:13:37','2023-05-01 15:13:37',0),(18,10,'168292531381284','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:15:13','2023-05-01 15:15:13',0),(19,10,'16829256790086','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:21:19','2023-05-01 15:21:19',0),(20,10,'168292570922382','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:21:49','2023-05-01 15:21:49',0),(21,10,'168292582160938','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:23:41','2023-05-01 15:23:41',0),(22,10,'168292598542027','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:26:25','2023-05-01 15:26:25',0),(23,10,'168292678634829','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:39:46','2023-05-01 15:39:46',0),(24,10,'168292690282241','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:41:42','2023-05-01 15:41:42',0),(25,10,'168292700329374','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:43:23','2023-05-01 15:43:23',0),(26,10,'168292708653042','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:44:46','2023-05-01 15:44:46',0),(27,10,'168292708918623','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:44:49','2023-05-01 15:44:49',0),(28,10,'168292720328716','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:46:43','2023-05-01 15:46:43',0),(29,10,'168292734960169','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:49:09','2023-05-01 15:49:09',0),(30,10,'168292746011097','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:51:00','2023-05-01 15:51:00',0),(31,10,'168292750761925','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:51:47','2023-05-01 15:51:47',0),(32,10,'168292782900344','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:57:09','2023-05-01 15:57:09',0),(33,10,'168292793363368','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 15:58:53','2023-05-01 15:58:53',0),(34,10,'168292800333653','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 16:00:03','2023-05-01 16:00:03',0),(35,10,'168292963468198','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 16:27:14','2023-05-01 16:27:14',0),(36,10,'168292976434042','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 16:29:24','2023-05-01 16:29:24',0),(37,10,'168293217849178','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 17:09:38','2023-05-01 17:09:38',0),(38,10,'168293224574077','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 17:10:45','2023-05-01 17:10:45',0),(39,10,'16829329175038','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 17:21:57','2023-05-01 17:21:57',0),(40,10,'168293654577624','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:22:25','2023-05-01 18:22:25',0),(41,10,'168293697446196','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:29:34','2023-05-01 18:29:34',0),(42,10,'168293711120638','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:31:51','2023-05-01 18:31:51',0),(43,10,'168293838452383','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:53:04','2023-05-01 18:53:04',0),(44,10,'168293846975990','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:54:29','2023-05-01 18:54:29',0),(45,10,'168293870679995','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 18:58:26','2023-05-01 18:58:26',0),(46,10,'168295112232895','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595',NULL,NULL,NULL,NULL,'100','2023-05-01 15:30:00',0,'2023-05-01 22:25:22','2023-05-01 22:25:22',0),(47,10,'168295174000464','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595','12',12,'2023-05-0209:00前','一层114窗口','100','2023-05-01 15:30:00',0,'2023-05-01 22:35:40','2023-05-01 22:36:02',0),(48,10,'168295179102842','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595','13',13,'2023-05-0209:00前','一层114窗口','100','2023-05-01 15:30:00',0,'2023-05-01 22:36:31','2023-05-01 22:36:31',0),(49,10,'168295249790530','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595','14',14,'2023-05-0209:00前','一层114窗口','100','2023-05-01 15:30:00',0,'2023-05-01 22:48:18','2023-05-01 22:48:18',0),(50,10,'16829525372192','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,9,'小张','14575456457','15',15,'2023-05-0209:00前','一层114窗口','100','2023-05-01 15:30:00',0,'2023-05-01 22:48:57','2023-05-01 22:48:57',0),(51,10,'168295298253336','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','644e8e3c6b781b59ca2157cc','2023-05-02',0,10,'林俊航','15917222595','16',16,'2023-05-0209:00前','一层114窗口','100','2023-05-01 15:30:00',0,'2023-05-01 22:56:22','2023-05-01 22:56:23',0),(52,10,'168304337194999','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','6451336a4ca16106f8d13e36','2023-05-03',0,10,'林俊航','15917222595','17',12,'2023-05-0309:00前','一层114窗口','100','2023-05-02 15:30:00',0,'2023-05-03 00:02:52','2023-05-03 00:02:54',0),(53,10,'168319183659689','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','6453779c0a8c25085d26ded1','2023-05-05',0,10,'林俊航','15917222595','18',12,'2023-05-0509:00前','一层114窗口','100','2023-05-04 15:30:00',-1,'2023-05-04 17:17:16','2023-05-04 17:17:18',0),(54,10,'168319466369749','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','6453779c0a8c25085d26ded1','2023-05-05',0,10,'林俊航','15917222595','19',12,'2023-05-0509:00前','一层114窗口','100','2023-05-04 15:30:00',-1,'2023-05-04 18:04:23','2023-05-04 18:04:23',0),(55,10,'168319572595110','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','6453779c0a8c25085d26ded1','2023-05-05',0,10,'林俊航','15917222595','20',12,'2023-05-0509:00前','一层114窗口','100','2023-05-04 15:30:00',0,'2023-05-04 18:22:05','2023-05-04 18:22:06',0),(56,10,'16831957575290','1000_1','北京协和医院','200040878','多发性硬化专科门诊','医师','6453779c0a8c25085d26ded1','2023-05-05',0,10,'林俊航','15917222595','21',13,'2023-05-0509:00前','一层114窗口','100','2023-05-04 15:30:00',-1,'2023-05-04 18:22:37','2023-05-04 18:22:37',0);

/*Table structure for table `payment_info` */

DROP TABLE IF EXISTS `payment_info`;

CREATE TABLE `payment_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(30) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint DEFAULT NULL COMMENT '订单id',
  `payment_type` tinyint(1) DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `payment_status` tinyint DEFAULT NULL COMMENT '支付状态',
  `callback_time` datetime DEFAULT NULL COMMENT '回调时间',
  `callback_content` varchar(1000) DEFAULT NULL COMMENT '回调信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  KEY `idx_out_trade_no` (`out_trade_no`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='支付信息表';

/*Data for the table `payment_info` */

insert  into `payment_info`(`id`,`out_trade_no`,`order_id`,`payment_type`,`trade_no`,`total_amount`,`subject`,`payment_status`,`callback_time`,`callback_content`,`create_time`,`update_time`,`is_deleted`) values (10,'168287367747538',12,2,NULL,'100.00','2023-05-01|北京协和医院|多发性硬化专科门诊|副主任医师',1,NULL,NULL,'2023-05-04 16:31:40','2023-05-04 16:31:40',0),(11,'168287501961679',13,2,NULL,'100.00','2023-05-01|北京协和医院|多发性硬化专科门诊|副主任医师',1,NULL,NULL,'2023-05-04 16:40:41','2023-05-04 16:40:41',0),(12,'168287510274284',14,2,'4200001842202305041203282371','100.00','2023-05-01|北京协和医院|多发性硬化专科门诊|副主任医师',2,'2023-05-04 16:55:12','{transaction_id=4200001842202305041203282371, nonce_str=bgrt4MiE7M1f4TUu, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuE82zCMX_Pm9AXOOhunzhlY, sign=94CB03B870A537DD146B95694852A506, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=168287510274284, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20230504165510, is_subscribe=N, return_code=SUCCESS}','2023-05-04 16:54:56','2023-05-04 16:54:55',0),(13,'168319183659689',53,2,'4200001812202305045620638212','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'2023-05-04 17:20:02','{transaction_id=4200001812202305045620638212, nonce_str=nYn2Yrqy9MAx9Fnv, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuE82zCMX_Pm9AXOOhunzhlY, sign=F480C8825AD9FC44AF05EE0460F531D4, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=168319183659689, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20230504172001, is_subscribe=N, return_code=SUCCESS}','2023-05-04 17:19:46','2023-05-04 17:19:45',0),(14,'168319466369749',54,2,'4200001842202305045537563949','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'2023-05-04 18:04:44','{transaction_id=4200001842202305045537563949, nonce_str=7IjOgSuztxzmwR0N, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuE82zCMX_Pm9AXOOhunzhlY, sign=46F4D5B9944764E1830BBABF8FBE6F4A, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=168319466369749, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20230504180442, is_subscribe=N, return_code=SUCCESS}','2023-05-04 18:04:29','2023-05-04 18:04:28',0),(15,'16831957575290',56,2,'4200001808202305046072833639','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'2023-05-04 18:22:59','{transaction_id=4200001808202305046072833639, nonce_str=Bc7NWtrcQwvRWgUw, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuE82zCMX_Pm9AXOOhunzhlY, sign=FDD9D8C74CDA9B273742E8CDA7F9924B, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=16831957575290, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20230504182257, is_subscribe=N, return_code=SUCCESS}','2023-05-04 18:22:40','2023-05-04 18:22:39',0);

/*Table structure for table `refund_info` */

DROP TABLE IF EXISTS `refund_info`;

CREATE TABLE `refund_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint DEFAULT NULL COMMENT '订单编号',
  `payment_type` tinyint DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `refund_status` tinyint DEFAULT NULL COMMENT '退款状态',
  `callback_content` varchar(1000) DEFAULT NULL COMMENT '回调信息',
  `callback_time` datetime DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  KEY `idx_out_trade_no` (`out_trade_no`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='退款信息表';

/*Data for the table `refund_info` */

insert  into `refund_info`(`id`,`out_trade_no`,`order_id`,`payment_type`,`trade_no`,`total_amount`,`subject`,`refund_status`,`callback_content`,`callback_time`,`create_time`,`update_time`,`is_deleted`) values (1,'168319183659689',53,2,'50300005572023050434075472834','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'{\"transaction_id\":\"4200001812202305045620638212\",\"nonce_str\":\"ycECieBMWj6ycvQX\",\"out_refund_no\":\"tk168319183659689\",\"sign\":\"4818E413FD4C7E91AAE043B7C71B4A5B\",\"return_msg\":\"OK\",\"mch_id\":\"1558950191\",\"refund_id\":\"50300005572023050434075472834\",\"cash_fee\":\"1\",\"out_trade_no\":\"168319183659689\",\"coupon_refund_fee\":\"0\",\"refund_channel\":\"\",\"appid\":\"wx74862e0dfcf69954\",\"refund_fee\":\"1\",\"total_fee\":\"1\",\"result_code\":\"SUCCESS\",\"coupon_refund_count\":\"0\",\"cash_refund_fee\":\"1\",\"return_code\":\"SUCCESS\"}','2023-05-04 18:01:01','2023-05-04 18:00:59','2023-05-04 18:01:00',0),(2,'168319466369749',54,2,'50302405542023050434075480189','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'{\"transaction_id\":\"4200001842202305045537563949\",\"nonce_str\":\"NPmj5QDHk8zLLBrE\",\"out_refund_no\":\"tk168319466369749\",\"sign\":\"0BEA088B70D632099C0D70481694A18A\",\"return_msg\":\"OK\",\"mch_id\":\"1558950191\",\"refund_id\":\"50302405542023050434075480189\",\"cash_fee\":\"1\",\"out_trade_no\":\"168319466369749\",\"coupon_refund_fee\":\"0\",\"refund_channel\":\"\",\"appid\":\"wx74862e0dfcf69954\",\"refund_fee\":\"1\",\"total_fee\":\"1\",\"result_code\":\"SUCCESS\",\"coupon_refund_count\":\"0\",\"cash_refund_fee\":\"1\",\"return_code\":\"SUCCESS\"}','2023-05-04 18:04:50','2023-05-04 18:04:49','2023-05-04 18:04:50',0),(3,'16831957575290',56,2,'50302605472023050434076104116','100.00','2023-05-05|北京协和医院|多发性硬化专科门诊|医师',2,'{\"transaction_id\":\"4200001808202305046072833639\",\"nonce_str\":\"beggyPLQBcXlPfme\",\"out_refund_no\":\"tk16831957575290\",\"sign\":\"CA9004474FDB3270D26CB50CB4DD6B40\",\"return_msg\":\"OK\",\"mch_id\":\"1558950191\",\"refund_id\":\"50302605472023050434076104116\",\"cash_fee\":\"1\",\"out_trade_no\":\"16831957575290\",\"coupon_refund_fee\":\"0\",\"refund_channel\":\"\",\"appid\":\"wx74862e0dfcf69954\",\"refund_fee\":\"1\",\"total_fee\":\"1\",\"result_code\":\"SUCCESS\",\"coupon_refund_count\":\"0\",\"cash_refund_fee\":\"1\",\"return_code\":\"SUCCESS\"}','2023-05-04 18:23:40','2023-05-04 18:23:39','2023-05-04 18:23:40',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
