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
-- Table structure for table `doctorate`
--

DROP TABLE IF EXISTS `doctorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorate` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Teacher_id` int unsigned NOT NULL,
  `NameDoctorate` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Teacher_id_idx` (`Teacher_id`),
  CONSTRAINT `Teacher_id_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorate`
--

LOCK TABLES `doctorate` WRITE;
/*!40000 ALTER TABLE `doctorate` DISABLE KEYS */;
INSERT INTO `doctorate` VALUES (1,4,'Оптимизация алгоритмов обучения глубоких нейронных сетей','2002-04-15'),(2,5,'Анализ методов защиты информации в современных криптосистемах','2004-08-22'),(3,8,'Развитие технологий обработки естественного языка в системах искусственного интеллекта','2006-11-10'),(4,10,'Исследование проблем масштабируемости вычислительных систем в области облачных вычислений','2008-06-30'),(5,13,'Оптимизация методов машинного обучения для анализа геномных данных','2010-09-18'),(6,14,'Разработка эффективных алгоритмов обработки изображений в медицинской диагностике','2012-02-05'),(7,17,'Исследование квантовых алгоритмов и их применение в криптографии','2014-07-12'),(8,21,'Развитие технологий распределенных систем для обработки больших данных','2001-10-28'),(9,25,'Разработка интеллектуальных систем для автоматической обработки текстовых данных','2005-09-20'),(10,26,'Исследование методов оптимизации работы баз данных в условиях высокой нагрузки','2007-03-08'),(11,29,'Оценка и улучшение безопасности сетей передачи данных в условиях современных угроз','2009-08-14'),(12,33,'Разработка технологий децентрализованных приложений на основе блокчейн','2011-12-01'),(13,37,'Эволюция алгоритмов обучения для адаптации к динамичным данным','2013-04-25'),(14,38,'Исследование принципов построения умных городов с использованием','2015-11-07'),(15,45,'Развитие методов обработки сигналов для улучшения качества связи в беспроводных сетях','2000-06-18'),(16,49,'Оптимизация процессов обучения в онлайн-образовании с использованием технологий искусственного интеллекта','2006-01-30'),(17,50,'Исследование методов обнаружения и предотвращения атак в средах Интернета вещей с учетом ограниченных ресурсов устройств','2001-10-28');
/*!40000 ALTER TABLE `doctorate` ENABLE KEYS */;
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
