-- MySQL dump 10.13  Distrib 5.5.52, for Linux (x86_64)
--
-- Host: localhost    Database: capitalking
-- ------------------------------------------------------
-- Server version	5.5.52-cll-lve

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_invoices`
--

DROP TABLE IF EXISTS `client_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_email` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `posting_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_invoices`
--

LOCK TABLES `client_invoices` WRITE;
/*!40000 ALTER TABLE `client_invoices` DISABLE KEYS */;
INSERT INTO `client_invoices` VALUES (10,'mridul@gmail.com','magento.pdf','2015-01-09');
/*!40000 ALTER TABLE `client_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(10) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `posting_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'mridul','mridulkumar555@gmail.com',2147483647,'hi','hwooooooooooo','2015-01-10');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `supported` tinyint(1) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_form`
--

DROP TABLE IF EXISTS `kyc_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kyc_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `form_path` varchar(100) DEFAULT NULL,
  `signature_path` varchar(100) DEFAULT NULL,
  `remarks` text,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NULL DEFAULT NULL,
  `support_remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_form`
--

LOCK TABLES `kyc_form` WRITE;
/*!40000 ALTER TABLE `kyc_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `attached_file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `status_ad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (80,'find the attachment','Mridul kumar','mridul@gmail.com','PHP - AJAX and PHP.pdf',1,2),(143,'find the file','Mridul kumar','mridul@gmail.com','51.png',1,2),(134,'m gud howz u','Admin','mridul@gmail.com','',1,2),(141,'hello','Mridul kumar','mridul@gmail.com','',1,2),(144,'hiiiiiiiiiii','Anuj kumar','anuj.lpu1@gmail.com','',1,0),(145,'gfd','Admin','mridul@gmail.com','',1,2),(146,'Hi Anuj,','Admin','anuj.lpu1@gmail.com','',1,0),(147,'Does this work?','Admin','anuj.lpu1@gmail.com','',1,0),(148,'I guess so.','Admin','anuj.lpu1@gmail.com','',1,0),(149,'hii','Admin','mridul@gmail.com','',1,2),(150,'helozzz','Admin','mridul@gmail.com','',1,2),(151,'hyryryryry','Admin','mridul@gmail.com','',1,2),(152,' hfthfhf','Admin','mridul@gmail.com','',1,2),(153,'lykytititnnnnuut','Admin','mridul@gmail.com','',1,2),(154,'lyh y iyiuiyiy','Admin','mridul@gmail.com','',1,2),(155,'Good.','Admin','mridul@gmail.com','',1,2),(156,'hii\r\n','Anuj kumar','anuj.lpu1@gmail.com','',0,0),(157,'heeloo\r\n','Anuj kumar','anuj.lpu1@gmail.com','',0,0),(158,'ggg','Anuj kumar','anuj.lpu1@gmail.com','',0,0),(159,'hiiiiiiiiii','Admin','mridul@gmail.com','',1,2);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prequest`
--

DROP TABLE IF EXISTS `prequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `wdd` varchar(255) NOT NULL,
  `cms` varchar(255) NOT NULL,
  `seo` varchar(255) NOT NULL,
  `smo` varchar(255) NOT NULL,
  `swd` varchar(255) NOT NULL,
  `dwd` varchar(255) NOT NULL,
  `fwd` varchar(255) NOT NULL,
  `dr` varchar(255) NOT NULL,
  `whs` varchar(255) NOT NULL,
  `wm` varchar(255) NOT NULL,
  `ed` varchar(255) NOT NULL,
  `wta` varchar(255) NOT NULL,
  `opi` varchar(255) NOT NULL,
  `ld` varchar(255) NOT NULL,
  `da` varchar(255) NOT NULL,
  `osc` varchar(255) NOT NULL,
  `nd` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `posting_date` date NOT NULL,
  `remark` longtext NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prequest`
--

LOCK TABLES `prequest` WRITE;
/*!40000 ALTER TABLE `prequest` DISABLE KEYS */;
INSERT INTO `prequest` VALUES (4,'Rahul','anuj@fluper.com','8285703354','fluper','Website Design & Development','CMS (Content Management System)','SEO (Search Engine Optimization)','','','','','','','','','','','','','','','','Sample text Sample text Sample text Sample text Sample text Sample text','2015-04-24','Sample text for testing',0),(5,'vsfsfs','anuj.lpu1@gmail.com','12345678','SQ','Website Design & Development','CMS (Content Management System)','SEO (Search Engine Optimization)','','','','','','','','','','','','','','','','Testing','2015-04-28','Sample text for testing',1),(6,'Anuj kumar','anuj@fluper.com','8285703354','Fluper','Website Design & Development','','','SMO (Social Media Optimization)	','','','','','','','','','','','','','','','Sample text for testing. Sample text for testing. Sample text for testing. Sample text for testing','2015-04-28','Sample text for testing',2),(7,'Mridul ','mridul@gmail.com','12345678','Fluper','Website Design & Development','','SEO (Search Engine Optimization)','','Static Website Design','','Flash Website Development','','','','','','','','','','','','testingvvvtestin testingvtestinggtestingtesting  testingtesting testingv v','2015-04-28','csfsfsf',2),(8,'Mridul ','mridul@gmail.com','12345678','Fluper','Website Design & Development','','SEO (Search Engine Optimization)','','Static Website Design','','Flash Website Development','','','','','','','','','','','','testingvvvtestin testingvtestinggtestingtesting  testingtesting testingv v','2015-04-28','dwwrwer',2);
/*!40000 ALTER TABLE `prequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_callback`
--

DROP TABLE IF EXISTS `request_callback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_callback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attendie` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_callback`
--

LOCK TABLES `request_callback` WRITE;
/*!40000 ALTER TABLE `request_callback` DISABLE KEYS */;
INSERT INTO `request_callback` VALUES (19,'Business Consulting','','','','2016-12-15 13:53:18','2016-12-15 13:53:18',''),(18,'Business Consulting','','','','2016-12-15 12:24:24','2016-12-15 12:24:24',''),(17,'Business Consulting','1119845485','sourabh@innoeye.com','9098509760','2016-12-15 12:22:40','2016-12-15 12:22:40',''),(16,'Commodity Tips','dilip91lnct@gmail.com','sourabh@innoeye.com','9098509760','2016-12-14 21:32:01','2016-12-14 21:32:01',''),(15,'Stock Option','1119845485','dkndilip@innoyw.com','9098509760','2016-12-14 20:51:35','2016-12-14 20:51:35',''),(14,'Commodity Tips','Adverd','advert@gmail.com','323232','2016-12-14 20:47:05','2016-12-14 20:47:05',''),(13,'Commodity Tips','Mohit','mohit@innoeye.com','9098509760','2016-12-14 20:42:47','2016-12-14 20:42:47',''),(12,'Business Consulting','Kumar Vishwas','dkndilip@innoyw.com','4343242','2016-12-14 20:32:23','2016-12-14 20:32:23',''),(11,'Business Consulting','Dilip','dkndilip@innoyw.com','3223','2016-12-14 20:05:45','2016-12-14 20:05:45',''),(20,'Stock Option','Prashant Patil','prashant@innoeye.com','43433','2016-12-20 10:46:02','2016-12-20 10:46:02','');
/*!40000 ALTER TABLE `request_callback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'dilip21lnct@gmail.com','23273528','New','2016-12-20 11:18:13','2016-12-08 07:00:00'),(3,'dilip21lnct@gmail.com','','New','2016-12-21 11:57:54','2016-12-21 11:57:54'),(4,'dilip21lnct@gmail.com','90985096443','New','2016-12-21 12:09:45','2016-12-21 12:09:45'),(5,'prashant@innoeye.com','','New','2016-12-21 14:24:53','2016-12-21 14:24:53'),(6,'mohit@support.com','','New','2016-12-21 14:33:44','2016-12-21 14:33:44'),(7,'','9098509760','New','2016-12-21 14:39:20','2016-12-21 14:39:20'),(8,'','424','New','2016-12-21 14:39:46','2016-12-21 14:39:46');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(11) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `task_type` varchar(300) NOT NULL,
  `prioprity` varchar(300) NOT NULL,
  `ticket` longtext NOT NULL,
  `attachment` varchar(300) NOT NULL,
  `status` varchar(300) NOT NULL,
  `admin_remark` longtext NOT NULL,
  `posting_date` date NOT NULL,
  `admin_remark_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (7,'TID3071','anuj.lpu1@gmail.com','testing','billing','important','hiiiiiiiiiiiiii','','close','This is done.','2015-02-18',2015),(8,'TID3072','anuj.lpu1@gmail.com','testing','billing','important','hiiiiiiiiiiiiii','','close','aasdfgdfgvhfgvb jgjfhfh','2015-02-18',2015);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alt_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `resume_status` varchar(255) NOT NULL,
  `resume_remark` longtext NOT NULL,
  `r_posting_date` date NOT NULL,
  `posting_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'Anuj kumar','anuj.lpu1@gmail.com','anujkumar301990@gmail.com','123456','8285703354','Female','elephpant.png','0','Sec-5 Sahibabad Ghaziabad ',0,'PHP-Resume_2013_08_11_19_03_21_870.pdf','Under review','Your profile under consideration. we wil update with in 2 working days				  ','2015-02-06','2015-01-02'),(7,'Rahul','rahul@gmail.com','','123456','8285703355','m','','0','',0,'','Under review','It is currently under review.				  					  ','0000-00-00','2015-02-04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_query`
--

DROP TABLE IF EXISTS `user_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `posting_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_query`
--

LOCK TABLES `user_query` WRITE;
/*!40000 ALTER TABLE `user_query` DISABLE KEYS */;
INSERT INTO `user_query` VALUES (1,'anuj.lpu1@gmail.com','hiiiiiiii','hiii',1,'2015-01-03'),(3,'anuj.lpu1@gmail.com','howz u','heloz',1,'2015-01-03'),(12,'anuj.lpu1@gmail.com','howz u\r\n','jgjkhjh',1,'2015-01-04'),(13,'anuj.lpu1@gmail.com','hilj,khk','jghgf',1,'2015-01-09'),(14,'anuj.lpu1@gmail.com','hhjgjgj ','ngnvnvn',1,'2015-01-09');
/*!40000 ALTER TABLE `user_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercheck`
--

DROP TABLE IF EXISTS `usercheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logindate` varchar(255) NOT NULL DEFAULT '',
  `logintime` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varbinary(16) NOT NULL,
  `mac` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercheck`
--

LOCK TABLES `usercheck` WRITE;
/*!40000 ALTER TABLE `usercheck` DISABLE KEYS */;
INSERT INTO `usercheck` VALUES (91,'2015/04/28','04:37:40pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','1E-85-56-C5-91-E','',''),(92,'2015/04/29','02:57:12pm',3,'Anuj kumar','anuj.lpu1@gmail.com','122.162.0.241','','Delhi','India'),(93,'2015/04/30','04:27:02pm',3,'Anuj kumar','anuj.lpu1@gmail.com','122.162.142.18','','Delhi','India'),(94,'2015/04/30','05:23:55pm',3,'Anuj kumar','anuj.lpu1@gmail.com','122.162.142.18','','Delhi','India'),(95,'2015/05/18','01:18:51pm',3,'Anuj kumar','anuj.lpu1@gmail.com','122.162.8.180','','Delhi','India'),(96,'2015/11/05','09:30:36pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','34-4B-50-B7-EF-3','',''),(97,'2015/11/13','12:05:39am',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(98,'2015/12/14','09:36:01pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(99,'2016/02/11','09:47:08pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(100,'2016/04/07','12:17:50am',7,'Rahul','rahul@gmail.com','::1','BC-85-56-C5-91-E','',''),(101,'2016/04/20','09:37:54am',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(102,'2016/04/25','09:55:45pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(103,'2016/04/26','08:19:12pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(104,'2016/04/26','08:26:18pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(105,'2016/04/30','11:59:25pm',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','',''),(106,'2016/04/30','12:30:10am',3,'Anuj kumar','anuj.lpu1@gmail.com','::1','BC-85-56-C5-91-E','','');
/*!40000 ALTER TABLE `usercheck` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-31  5:14:11
