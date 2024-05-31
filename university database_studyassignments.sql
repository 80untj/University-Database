-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: university database
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `studyassignments`
--

DROP TABLE IF EXISTS `studyassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studyassignments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Departament_id` int unsigned NOT NULL,
  `Subject_id` int unsigned NOT NULL,
  `Team_id` int unsigned NOT NULL,
  `Semester` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Departament_id_idx` (`Departament_id`),
  KEY `Subject_id_idx` (`Subject_id`),
  KEY `Team_id_idx` (`Team_id`),
  CONSTRAINT `Departament_id` FOREIGN KEY (`Departament_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Subject_id` FOREIGN KEY (`Subject_id`) REFERENCES `subjectt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Team_id` FOREIGN KEY (`Team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studyassignments`
--

LOCK TABLES `studyassignments` WRITE;
/*!40000 ALTER TABLE `studyassignments` DISABLE KEYS */;
INSERT INTO `studyassignments` VALUES (1,1,1,1,1),(2,2,3,2,2),(3,3,2,3,2),(4,4,4,4,1),(5,5,6,5,2),(6,6,5,6,2),(7,7,8,6,2),(8,8,9,7,1),(9,9,10,1,1),(10,9,7,2,1),(11,10,11,9,1),(12,11,12,10,2),(13,12,13,11,1),(14,13,14,12,2),(15,15,15,13,1),(16,14,16,14,1),(17,16,17,15,2),(19,3,20,13,2),(20,1,19,12,2),(21,5,21,11,1),(22,6,23,1,2),(23,8,22,4,1),(24,7,1,5,2);
/*!40000 ALTER TABLE `studyassignments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 19:34:27
