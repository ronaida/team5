CREATE DATABASE  IF NOT EXISTS `DOJO` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DOJO`;
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: DOJO
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'The entry id',
  `userId` int DEFAULT NULL COMMENT 'The user id that passed the challenge',
  `moduleId` varchar(255) DEFAULT NULL COMMENT 'The id of the training module',
  `timestamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
INSERT INTO `badges` VALUES (1,1,'blackBelt','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challengeEntries`
--

DROP TABLE IF EXISTS `challengeEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challengeEntries` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'The entry id',
  `userId` int DEFAULT NULL COMMENT 'The user id that passed the challenge',
  `challengeId` varchar(255) DEFAULT NULL COMMENT 'The id of the challenge that was passed',
  `timestamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challengeEntries`
--

LOCK TABLES `challengeEntries` WRITE;
/*!40000 ALTER TABLE `challengeEntries` DISABLE KEYS */;
INSERT INTO `challengeEntries` VALUES (1,1,'cwe306','Sat Jun 19 2021 15:40:34 GMT+0200 (Eastern European Standard Time)'),(2,1,'cwe807','Sat Jun 19 2021 15:40:34 GMT+0200 (Eastern European Standard Time)'),(3,1,'cwe862','Sat Jun 19 2021 15:40:34 GMT+0200 (Eastern European Standard Time)'),(4,1,'cwe311','Sat Jun 19 2021 15:40:34 GMT+0200 (Eastern European Standard Time)'),(5,1,'cwe327','Sat Jun 19 2021 15:40:34 GMT+0200 (Eastern European Standard Time)'),(6,1,'cwe759','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(7,1,'cwe307','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(8,1,'cwe190','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(9,1,'cwe494','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(10,1,'cwe601','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(11,1,'cwe79','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(12,1,'cwe352','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(13,1,'cwe434','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(14,1,'cwe611','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(15,1,'cwe22','Sat Jun 19 2021 15:40:35 GMT+0200 (Eastern European Standard Time)'),(16,1,'cwe863','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)'),(17,1,'cwe78','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)'),(18,1,'cwe89','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)'),(19,1,'cwe120','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)'),(20,1,'cwe134','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)'),(21,1,'quiz','Sat Jun 19 2021 15:40:36 GMT+0200 (Eastern European Standard Time)');
/*!40000 ALTER TABLE `challengeEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbInfo`
--

DROP TABLE IF EXISTS `dbInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbInfo` (
  `version` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbInfo`
--

LOCK TABLES `dbInfo` WRITE;
/*!40000 ALTER TABLE `dbInfo` DISABLE KEYS */;
INSERT INTO `dbInfo` VALUES (5);
/*!40000 ALTER TABLE `dbInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hidden_challenges`
--

DROP TABLE IF EXISTS `hidden_challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hidden_challenges` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Insturctor_ID` int DEFAULT NULL,
  `Challenge_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hidden_challenges`
--

LOCK TABLES `hidden_challenges` WRITE;
/*!40000 ALTER TABLE `hidden_challenges` DISABLE KEYS */;
INSERT INTO `hidden_challenges` VALUES (1,9,'cwe306');
/*!40000 ALTER TABLE `hidden_challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `ownerId` int DEFAULT NULL COMMENT 'The userid of the person who created this team',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `ownerid_UNIQUE` (`ownerId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'The user id',
  `accountId` varchar(255) NOT NULL COMMENT 'The user account name',
  `teamId` int unsigned DEFAULT NULL COMMENT 'The id of the team the user belongs to',
  `familyName` varchar(255) DEFAULT NULL,
  `givenName` varchar(255) DEFAULT NULL,
  `IsInstructor` tinyint DEFAULT '0',
  `InstructorID` int DEFAULT '0',
  `isAdmin` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `account_name_UNIQUE` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Local_dojouser',NULL,'User','Dojo',0,0,0),(2,'Local_testwww',NULL,'eqwe','asdasd',0,0,0),(3,'Local_test',NULL,'SW','asda',0,9,1),(4,'Local_qqq',NULL,'qq','aa',0,0,0),(5,'Local_tesyyy',NULL,'weqe','asdd',1,1,0),(6,'Local_ak7',NULL,'Khater','Khater',1,1,0),(7,'Local_fetouh',NULL,'Fetouh','Ahmed',1,1,0),(8,'Local_eid',NULL,'Eid','Ahmed',1,1,1),(9,'Local_bormaa',NULL,'Mesak','Ebraam',0,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'DOJO'
--

--
-- Dumping routines for database 'DOJO'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-19 22:06:22
