-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: Friends of Human
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_animals`
--

DROP TABLE IF EXISTS `all_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_animals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `commands` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_animals`
--

LOCK TABLES `all_animals` WRITE;
/*!40000 ALTER TABLE `all_animals` DISABLE KEYS */;
INSERT INTO `all_animals` VALUES (1,'Dog','Sit, Stay','2020-01-15'),(2,'Cat','Jump, Roll','2019-06-10'),(1,'Horse','Gallop, Stop','2018-03-05');
/*!40000 ALTER TABLE `all_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combined_pack_animals`
--

DROP TABLE IF EXISTS `combined_pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combined_pack_animals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `commands` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combined_pack_animals`
--

LOCK TABLES `combined_pack_animals` WRITE;
/*!40000 ALTER TABLE `combined_pack_animals` DISABLE KEYS */;
INSERT INTO `combined_pack_animals` VALUES (1,'Horse','Gallop, Stop','2018-03-05');
/*!40000 ALTER TABLE `combined_pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domestic_animals`
--

DROP TABLE IF EXISTS `domestic_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domestic_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `commands` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domestic_animals`
--

LOCK TABLES `domestic_animals` WRITE;
/*!40000 ALTER TABLE `domestic_animals` DISABLE KEYS */;
INSERT INTO `domestic_animals` VALUES (1,'Dog','Sit, Stay','2020-01-15'),(2,'Cat','Jump, Roll','2019-06-10');
/*!40000 ALTER TABLE `domestic_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_animals`
--

DROP TABLE IF EXISTS `pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `commands` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_animals`
--

LOCK TABLES `pack_animals` WRITE;
/*!40000 ALTER TABLE `pack_animals` DISABLE KEYS */;
INSERT INTO `pack_animals` VALUES (1,'Horse','Gallop, Stop','2018-03-05');
/*!40000 ALTER TABLE `pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `commands` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age_years` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 15:00:58
