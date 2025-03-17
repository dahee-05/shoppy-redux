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
-- Table structure for table `shoppy_order`
--

DROP TABLE IF EXISTS `shoppy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppy_order` (
  `OID` int NOT NULL AUTO_INCREMENT,
  `SIZE` varchar(10) NOT NULL,
  `QTY` int NOT NULL,
  `TPRICE` int NOT NULL,
  `ODATE` date DEFAULT NULL,
  `TYPE` varchar(30) NOT NULL,
  `TID` varchar(50) NOT NULL,
  `ID` varchar(30) NOT NULL,
  `PID` int NOT NULL,
  PRIMARY KEY (`OID`),
  KEY `FK_ORDER_ID_SHOPPY_MEMBER_ID` (`ID`),
  KEY `FK_ORDER_PID_SHOPPY_PRODUCT_PID` (`PID`),
  CONSTRAINT `FK_ORDER_ID_SHOPPY_MEMBER_ID` FOREIGN KEY (`ID`) REFERENCES `shoppy_member` (`ID`),
  CONSTRAINT `FK_ORDER_PID_SHOPPY_PRODUCT_PID` FOREIGN KEY (`PID`) REFERENCES `shoppy_product` (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppy_order`
--

LOCK TABLES `shoppy_order` WRITE;
/*!40000 ALTER TABLE `shoppy_order` DISABLE KEYS */;
INSERT INTO `shoppy_order` VALUES (1,'XS',2,12000,'2025-02-25','KAKAO_PAY','T7bd359e40f539f46fc0','test1',3),(2,'XS',1,12000,'2025-02-25','KAKAO_PAY','T7bd359e40f539f46fc0','test1',4),(3,'XS',2,12000,'2025-02-25','KAKAO_PAY','T7bd359e40f539f46fc0','test1',11),(8,'XS',1,5000,'2025-02-26','KAKAO_PAY','T7beb9c740f539f47856','test2',3),(9,'XS',1,5000,'2025-02-26','KAKAO_PAY','T7beb9c740f539f47856','test2',11),(10,'XS',1,5000,'2025-02-26','KAKAO_PAY','T7bebb97033875bdce8b','guest',4),(11,'XS',1,5000,'2025-02-26','KAKAO_PAY','T7bebb97033875bdce8b','guest',9),(14,'XS',1,10000,'2025-02-26','KAKAO_PAY','T7bec00440f539f47885','test2',13),(15,'XS',1,10000,'2025-02-26','KAKAO_PAY','T7bec00440f539f47885','test2',11);
/*!40000 ALTER TABLE `shoppy_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:43
