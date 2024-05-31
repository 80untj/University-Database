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
-- Table structure for table `diploma`
--

DROP TABLE IF EXISTS `diploma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diploma` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Student_id` int unsigned NOT NULL,
  `Teacher_id` int unsigned NOT NULL,
  `NameTheme` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Student_id_idx` (`Student_id`),
  KEY `Teacher_id_idx` (`Teacher_id`),
  CONSTRAINT `Student_id` FOREIGN KEY (`Student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Teacher_id` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diploma`
--

LOCK TABLES `diploma` WRITE;
/*!40000 ALTER TABLE `diploma` DISABLE KEYS */;
INSERT INTO `diploma` VALUES (2,3,7,'Анализ воздействия изменений климата на миграционные процессы в прибрежных регионах'),(3,5,4,'Оптимизация процессов биоразложения пластиковых отходов с использованием микроорганизмов'),(4,6,8,'Развитие методов искусственного интеллекта для прогнозирования землетрясений'),(5,14,11,'Экологические последствия разработки подводных ресурсов в Арктике'),(6,22,13,'Влияние социальных медиа на формирование общественного мнения: анализ трендов и паттернов'),(7,30,15,'Исследование молекулярных механизмов старения и поиск потенциальных методов его замедления'),(8,43,17,'Роль микробиома в человеческом здоровье и возможности манипуляции им для лечения заболеваний'),(9,50,19,'Новые подходы к лечению онкологических заболеваний на основе генной терапии'),(10,52,23,'Анализ воздействия глобальных перемен на структуру экосистем в условиях изменяющегося климата'),(11,59,25,'Разработка новых материалов с улучшенными свойствами для применения в электронике'),(12,67,27,'\"Анализ воздействия микропластика на здоровье морских организмов и человека'),(13,77,29,'Исследование механизмов формирования памяти и их применение в создании искусственного интеллекта'),(14,87,31,'Развитие методов прогнозирования и адаптации к последствиям космической радиации на здоровье астронавтов'),(15,92,35,'Исследование влияния генетических факторов на развитие психических расстройств'),(16,102,37,'Разработка новых технологий восстановления почвенной фертильности в условиях антропогенного воздействия'),(17,104,39,'Анализ эффективности использования возобновляемых источников энергии в городской среде'),(18,120,43,'Исследование механизмов адаптации растений к изменяющимся условиям среды'),(19,133,47,'Разработка новых методов диагностики и лечения нейродегенеративных заболеваний'),(20,150,49,'Экономический анализ воздействия искусственного интеллекта на рынок труда и общественную структуру');
/*!40000 ALTER TABLE `diploma` ENABLE KEYS */;
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
