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
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Teacher_id` int unsigned NOT NULL,
  `Topic` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Teacher_id_idx` (`Teacher_id`),
  CONSTRAINT `Teacher_id_5` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
INSERT INTO `research` VALUES (1,3,'Исследование эффективности алгоритмов оптимизации для больших данных'),(2,4,'Развитие методов машинного обучения в анализе временных рядов'),(3,7,'Создание интеллектуальных систем для автоматического распознавания образов в медицинских изображениях'),(4,8,'Анализ безопасности и устойчивости блокчейн-технологий'),(5,11,'Исследование методов квантового программирования и квантовых алгоритмов'),(6,13,'Оптимизация архитектур нейронных сетей для задач обработки естественного языка'),(7,15,'Анализ и совершенствование алгоритмов маршрутизации в беспроводных сенсорных сетях'),(8,17,'Развитие методов компьютерного зрения для автоматической классификации изображений'),(9,19,'Исследование проблем и решений в области киберфизических систем'),(10,23,'Оценка и улучшение производительности квантовых компьютеров'),(11,25,'Разработка эффективных алгоритмов анализа данных в облаке'),(12,27,'Исследование технологий обработки естественного языка для создания умных ассистентов'),(13,29,'Оптимизация алгоритмов машинного обучения для обработки многомерных данных'),(14,31,'Исследование методов обнаружения и предотвращения кибератак в больших сетях'),(15,35,'Разработка методов автоматического анализа кода для повышения качества программного обеспечения'),(16,37,'Исследование технологий децентрализованных приложений на основе блокчейн'),(17,39,'Оценка и улучшение безопасности интернета вещей '),(18,43,'Разработка алгоритмов для управления и оптимизации сетей передачи данных'),(19,49,'Исследование эффективных методов обработки и анализа больших графов данных'),(20,49,'Развитие технологий обработки естественного языка для автоматизированного анализа текстовых данных');
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
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
