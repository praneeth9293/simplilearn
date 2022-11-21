CREATE DATABASE  IF NOT EXISTS `flyaway` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flyaway`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: flyaway
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `airport_id` int NOT NULL,
  `airport_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`airport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'Delhi'),(2,'Mumbai'),(3,'Hyderabad'),(4,'Kolkata'),(5,'Chennai');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_id` int NOT NULL,
  `flight_name` varchar(45) DEFAULT NULL,
  `flight_from` varchar(45) DEFAULT NULL,
  `flight_to` varchar(45) DEFAULT NULL,
  `flight_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'Indigo','Delhi','Hyderabad','15-December-2022'),(2,'SpiceJet','Delhi','Chennai','15-December-2022');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredusers`
--

DROP TABLE IF EXISTS `registeredusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registeredusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredusers`
--

LOCK TABLES `registeredusers` WRITE;
/*!40000 ALTER TABLE `registeredusers` DISABLE KEYS */;
INSERT INTO `registeredusers` VALUES (1,'Praneeth','123456','praneeth@gmail.com','123456'),(2,'Chakri','987654','Chakri@gmail.com','987987987');
/*!40000 ALTER TABLE `registeredusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savesearch`
--

DROP TABLE IF EXISTS `savesearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savesearch` (
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savesearch`
--

LOCK TABLES `savesearch` WRITE;
/*!40000 ALTER TABLE `savesearch` DISABLE KEYS */;
INSERT INTO `savesearch` VALUES ('Chennai','Kolkata','2022-11-23 00:00:00'),('Mumbai','Hyderabad','2022-11-25 00:00:00'),('Mumbai','Kolkata','2022-11-24 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Chennai','Hyderabad','2022-11-18 00:00:00'),('Hyderabad','Mumbai','2022-11-24 00:00:00'),('Hyderabad','Mumbai','2022-11-24 00:00:00'),('Chennai','Kolkata','2022-11-10 00:00:00'),('Chennai','Kolkata','2022-11-10 00:00:00'),('Hyderabad','Mumbai','2022-11-17 00:00:00'),('Hyderabad','Mumbai','2022-11-17 00:00:00'),('Hyderabad','Mumbai','2022-11-17 00:00:00'),('Hyderabad','Mumbai','2022-11-17 00:00:00'),('Hyderabad','Kolkata','2022-11-04 00:00:00'),('Hyderabad','Kolkata','2022-11-04 00:00:00'),('Hyderabad','Kolkata','2022-11-04 00:00:00'),('Chennai','Hyderabad','2022-11-01 00:00:00');
/*!40000 ALTER TABLE `savesearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'flyaway'
--

--
-- Dumping routines for database 'flyaway'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 12:47:29
