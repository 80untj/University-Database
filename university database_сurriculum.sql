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
-- Table structure for table `сurriculum`
--

DROP TABLE IF EXISTS `сurriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `сurriculum` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Subject_id` int unsigned NOT NULL,
  `ClassType` varchar(255) NOT NULL,
  `Course` int NOT NULL,
  `Semester` int NOT NULL,
  `Control_id` int unsigned NOT NULL,
  `Hours` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Control_id_idx` (`Control_id`),
  KEY `Subject_id_idx` (`Subject_id`),
  CONSTRAINT `Control_id_3` FOREIGN KEY (`Control_id`) REFERENCES `control` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Subject_id_3` FOREIGN KEY (`Subject_id`) REFERENCES `subjectt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сurriculum`
--

LOCK TABLES `сurriculum` WRITE;
/*!40000 ALTER TABLE `сurriculum` DISABLE KEYS */;
INSERT INTO `сurriculum` VALUES (3,3,'семинар',2,2,16,5),(4,4,'курсовая работа',1,1,21,174),(5,5,'самостоятельная работа',1,2,31,6),(6,6,'лекция',2,2,41,105),(7,7,'семинар',2,2,46,11),(8,8,'курсовая работа',1,1,51,153),(9,9,'лабораторная работа',2,1,61,6),(10,10,'лекция',1,1,71,5),(11,11,'самостоятельная работа',2,2,76,5),(12,12,'лабораторная работа',1,1,81,6),(13,13,'семинар',2,2,91,6),(14,14,'консультация',1,2,101,6),(15,15,'самостоятельная работа',2,1,106,101),(16,16,'лабораторная работа',2,1,111,6),(17,17,'самостоятельная работа',2,2,121,3),(18,18,'лекция',1,1,126,5),(19,19,'курсовая работа',1,2,131,141),(20,20,'лабораторная работа',1,2,141,62),(21,21,'лекция',2,1,146,4),(22,22,'самостоятельная работа',1,2,151,4),(23,23,'семинар',2,1,156,2);
/*!40000 ALTER TABLE `сurriculum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 19:34:28
