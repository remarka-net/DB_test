CREATE DATABASE  IF NOT EXISTS `sql_task` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_task`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_task
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `poitem`
--

DROP TABLE IF EXISTS `poitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poitem` (
  `id` int NOT NULL,
  `poId` int DEFAULT NULL,
  `dateScheduledFulfillment` datetime DEFAULT NULL,
  `dateLastFulfillment` datetime DEFAULT NULL,
  `partNum` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `poItemTypeId` int DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `poLineItem` int DEFAULT NULL,
  `qtyFulfilled` decimal(10,0) DEFAULT NULL,
  `qtyToFulfill` decimal(10,0) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `unitCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_poid_idx` (`poId`),
  KEY `fk_partid_idx` (`partId`),
  KEY `fk_poitemType_idx` (`poItemTypeId`),
  KEY `fk_uomid_idx` (`uomId`),
  CONSTRAINT `fk_partid` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `fk_poid` FOREIGN KEY (`poId`) REFERENCES `po` (`id`),
  CONSTRAINT `fk_poitemType` FOREIGN KEY (`poItemTypeId`) REFERENCES `poitemtype` (`id`),
  CONSTRAINT `fk_uomid` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poitem`
--

LOCK TABLES `poitem` WRITE;
/*!40000 ALTER TABLE `poitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `poitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07  0:43:51
