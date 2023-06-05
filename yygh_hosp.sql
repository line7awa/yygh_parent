/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.28 : Database - yygh_hosp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yygh_hosp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `yygh_hosp`;

/*Table structure for table `hospital_set` */

DROP TABLE IF EXISTS `hospital_set`;

CREATE TABLE `hospital_set` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `api_url` varchar(100) DEFAULT NULL COMMENT 'api基础路径',
  `sign_key` varchar(50) DEFAULT NULL COMMENT '签名秘钥',
  `contacts_name` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hoscode` (`hoscode`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='医院设置表';

/*Data for the table `hospital_set` */

insert  into `hospital_set`(`id`,`hosname`,`hoscode`,`api_url`,`sign_key`,`contacts_name`,`contacts_phone`,`status`,`create_time`,`update_time`,`is_deleted`) values (1,'北京协和医院','1000_1','http://localhost:8201','c8c605999f3d8352d7bb792cf3fdb25b','123','12312313',1,'2021-05-09 15:26:16','2023-04-20 01:21:33',0),(2,'俊航医院','123','http://','676d73681ddf20af9bdf8851155c5d75','1','15917222595',1,'2023-04-15 21:52:25','2023-04-15 21:52:25',0),(5,'zx医院','123123123','http://','6b7677626a28ee3cda68a6dd07aa9c88','1','15917222595',1,'2023-04-15 21:54:23','2023-04-15 21:54:23',0),(6,'yy医院','124353','http://','eba8aa70be2aeb7cdcd99f8f0a883b73','1','15917222595',1,'2023-04-15 21:54:44','2023-04-15 21:54:44',0),(7,'sb医院','1244253','http://','5084c7ad5a77d0fa11f390db43ac561a','1','15917222595',1,'2023-04-15 21:57:40','2023-04-15 21:57:40',0),(8,'广州医院','1244qwe253','http://','ce06bdbef123e63183c94ec35286e0a3','1','15917222595',1,'2023-04-15 21:58:04','2023-04-15 21:58:04',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
