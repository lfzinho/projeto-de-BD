-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: trabalho_so
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `rel_estado_bioma`
--

DROP TABLE IF EXISTS `rel_estado_bioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_estado_bioma` (
  `id_estado` int NOT NULL,
  `id_bioma` int NOT NULL,
  KEY `estado_rel_estado_geografia` (`id_estado`),
  KEY `geografia_rel_estado_geografia` (`id_bioma`),
  CONSTRAINT `estado_rel_estado_geografia` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `geografia_rel_estado_geografia` FOREIGN KEY (`id_bioma`) REFERENCES `bioma` (`id_bioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_estado_bioma`
--

LOCK TABLES `rel_estado_bioma` WRITE;
/*!40000 ALTER TABLE `rel_estado_bioma` DISABLE KEYS */;
INSERT INTO `rel_estado_bioma` VALUES (1,2),(1,12),(1,5),(1,11),(2,6),(2,2),(2,5),(3,5),(3,2),(4,5),(4,2),(5,11),(5,2),(6,6),(6,11),(6,3),(7,1),(7,3),(7,6),(7,2),(8,5),(8,11),(9,5),(9,2),(10,1),(10,3),(11,11),(11,2),(12,5),(12,11),(12,12),(13,6),(13,5),(13,12),(14,11),(14,1),(15,1),(15,6),(16,12),(17,11),(17,3),(18,9),(18,3),(19,9),(19,3),(20,11),(20,3),(21,9),(22,10),(23,10),(23,9),(24,9),(24,3),(25,9),(25,3),(26,4),(26,9),(26,10),(26,3),(27,10),(27,9),(28,10),(29,11),(29,5),(30,11),(30,5),(31,11),(32,5),(33,7),(33,4),(34,4),(34,7),(35,7),(36,8),(36,3),(37,3),(37,8),(38,8),(38,3),(39,7),(39,3),(39,4),(40,4),(40,7),(41,9),(42,8),(42,9),(43,3),(43,8),(44,9),(44,3),(45,9),(45,3),(46,3),(46,7),(47,3),(48,7),(48,3),(49,10),(50,10),(51,10),(52,10),(53,10),(54,5),(55,5),(56,5),(57,10),(58,10);
/*!40000 ALTER TABLE `rel_estado_bioma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 21:36:43
