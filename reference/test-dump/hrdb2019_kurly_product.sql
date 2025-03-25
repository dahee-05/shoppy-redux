-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kurly_product`
--

DROP TABLE IF EXISTS `kurly_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurly_product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `brend` varchar(20) NOT NULL,
  `cate_depth1` char(3) NOT NULL,
  `cate_depth2` char(3) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `sub_desc` varchar(100) DEFAULT NULL,
  `price` int NOT NULL,
  `dc` int DEFAULT NULL,
  `event_label` tinyint(1) DEFAULT NULL,
  `upload_img` varchar(100) DEFAULT NULL,
  `org_img` varchar(50) DEFAULT NULL,
  `detail_imgs` json DEFAULT NULL,
  `detail_org_imgs` json DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurly_product`
--

LOCK TABLES `kurly_product` WRITE;
/*!40000 ALTER TABLE `kurly_product` DISABLE KEYS */;
INSERT INTO `kurly_product` VALUES (1,'화장품 ','101','001','미스트 ','미스트',29000,10,1,'upload_files\\1739864678144_6.jpg','6.jpg','[\"http://3.35.233.94:9000/upload_files\\\\1739864682083-1.jpg\", \"http://3.35.233.94:9000/upload_files\\\\1739864682099-2.jpg\", \"http://3.35.233.94:9000/upload_files\\\\1739864682114-3.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\"]',NULL);
/*!40000 ALTER TABLE `kurly_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:42
