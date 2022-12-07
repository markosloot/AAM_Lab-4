-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: aam_lab4
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `watchs`
--

DROP TABLE IF EXISTS `watchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `watchsAdditionID` int DEFAULT '0',
  `brand` varchar(45) DEFAULT NULL,
  `mechanism` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Secondary` (`watchsAdditionID`),
  CONSTRAINT `Secondary` FOREIGN KEY (`watchsAdditionID`) REFERENCES `watchs_addition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchs`
--

LOCK TABLES `watchs` WRITE;
/*!40000 ALTER TABLE `watchs` DISABLE KEYS */;
INSERT INTO `watchs` VALUES (4,3,'Orient','Mechanical'),(5,6,'Orient','Mechanical'),(6,9,'Orient','Mechanical');
/*!40000 ALTER TABLE `watchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchs_addition`
--

DROP TABLE IF EXISTS `watchs_addition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchs_addition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  `cases` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchs_addition`
--

LOCK TABLES `watchs_addition` WRITE;
/*!40000 ALTER TABLE `watchs_addition` DISABLE KEYS */;
INSERT INTO `watchs_addition` VALUES (2,'Switzerland','gold'),(3,'Japan','steel'),(4,'Japan','steel'),(5,'Switzerland','gold'),(6,'Japan','steel'),(8,'Switzerland','gold'),(9,'Japan','steel');
/*!40000 ALTER TABLE `watchs_addition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 12:48:40
