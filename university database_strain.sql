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
-- Table structure for table `strain`
--

DROP TABLE IF EXISTS `strain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strain` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Teacher_id` int unsigned NOT NULL,
  `Subject_id` int unsigned NOT NULL,
  `ClassType` varchar(255) NOT NULL,
  `Hours` int NOT NULL,
  `Semester` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Teacher_id_idx` (`Teacher_id`),
  KEY `Subject_id_idx` (`Subject_id`),
  CONSTRAINT `Subject_id_2` FOREIGN KEY (`Subject_id`) REFERENCES `subjectt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Teacher_id_6` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strain`
--

LOCK TABLES `strain` WRITE;
/*!40000 ALTER TABLE `strain` DISABLE KEYS */;
INSERT INTO `strain` VALUES (1,1,1,'лабораторная работа',2,1),(2,2,2,'консультация',2,2),(3,3,3,'семинар',2,1),(4,4,4,'курсовая работа',168,2),(5,5,5,'самостоятельная работа',1,2),(6,6,6,'лекция',2,1),(7,7,7,'семинар',3,1),(8,8,8,'курсовая работа',150,2),(9,9,9,'лабораторная работа',2,2),(10,10,10,'лекция',2,1),(11,11,11,'самостоятельная работа',1,1),(12,12,12,'лабораторная работа',2,2),(13,13,13,'семинар',2,1),(14,14,14,'консультация',1,2),(15,15,15,'самостоятельная работа',2,2),(16,16,16,'лабораторная работа',2,1),(17,17,17,'самостоятельная работа',1,1),(18,18,18,'лекция',3,2),(19,19,19,'курсовая работа',140,2),(20,20,20,'лабораторная работа',2,1),(21,21,21,'лекция',2,2),(22,22,22,'самостоятельная работа',1,1),(23,23,23,'семинар',3,1),(26,26,23,'самостоятельная работа',1,1),(27,27,22,'лекция',2,2),(28,28,21,'самостоятельная работа',2,2),(29,29,20,'курсовая работа',60,1),(30,30,19,'лекция',1,2),(31,31,18,'консультация',2,1),(32,32,17,'лабораторная работа',2,2),(33,33,16,'семинар',3,2),(34,34,15,'лекция',2,2),(35,35,14,'консультация',2,2),(36,36,13,'лабораторная работа',2,1),(37,37,12,'лекция',2,1),(38,38,11,'семинар',3,1),(39,39,10,'лекция',1,1),(40,40,9,'лабораторная работа',2,2),(41,41,8,'самостоятельная работа',1,2),(42,42,7,'лекция',2,2),(43,43,6,'консультация',3,2),(44,44,5,'лабораторная работа',2,2),(45,45,4,'семинар',3,2),(46,46,3,'самостоятельная работа',2,2),(47,47,2,'лекция',1,1),(48,48,1,'лабораторная работа',2,1),(49,49,1,'курсовая работа',121,1),(50,50,2,'консультация',1,2),(51,1,3,'лабораторная работа',2,1),(52,2,4,'лекция',3,2),(53,3,5,'консультация',2,1),(54,4,6,'курсовая работа',100,2),(55,5,7,'семинар',5,1),(56,6,8,'самостоятельная работа',1,1),(57,7,9,'лекция',2,2),(58,8,10,'самостоятельная работа',2,2),(59,9,11,'лекция',1,1),(60,10,12,'семинар',2,2),(61,11,13,'консультация',2,2),(62,12,14,'лабораторная работа',3,2),(63,13,15,'курсовая работа',98,1),(64,15,16,'консультация',1,2);
/*!40000 ALTER TABLE `strain` ENABLE KEYS */;
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
