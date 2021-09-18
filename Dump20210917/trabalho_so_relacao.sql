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
-- Table structure for table `relacao`
--

DROP TABLE IF EXISTS `relacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacao` (
  `id_relacao` int NOT NULL,
  `id_nacao1` int NOT NULL,
  `id_nacao2` int NOT NULL,
  `amizade` int DEFAULT NULL,
  PRIMARY KEY (`id_relacao`),
  KEY `relacao_nacao` (`id_nacao2`),
  KEY `relacao_nacao_volta` (`id_nacao1`),
  KEY `relacao_rel_amizade_amizade_cod` (`amizade`),
  CONSTRAINT `relacao_nacao` FOREIGN KEY (`id_nacao2`) REFERENCES `nacao` (`id_nacao`),
  CONSTRAINT `relacao_nacao_volta` FOREIGN KEY (`id_nacao1`) REFERENCES `nacao` (`id_nacao`),
  CONSTRAINT `relacao_rel_amizade_amizade_cod` FOREIGN KEY (`amizade`) REFERENCES `rel_amizade_amizade_cod` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacao`
--

LOCK TABLES `relacao` WRITE;
/*!40000 ALTER TABLE `relacao` DISABLE KEYS */;
INSERT INTO `relacao` VALUES (1,1,3,-1),(2,1,2,-2),(3,1,7,-1),(4,2,1,-2),(5,2,3,1),(6,2,4,-1),(7,2,5,-2),(8,2,8,2),(9,2,7,2),(10,3,1,-1),(11,3,2,1),(12,3,4,-2),(13,3,17,2),(14,4,3,-2),(15,4,2,-1),(16,4,5,-1),(17,5,4,-1),(18,5,2,-2),(19,5,8,-2),(20,5,6,-2),(21,6,5,-2),(22,6,16,2),(23,6,11,-2),(24,6,10,-1),(25,6,13,-2),(26,6,12,-1),(27,7,1,-1),(28,7,2,2),(29,7,8,1),(30,8,2,2),(31,8,5,-2),(32,8,6,-1),(33,8,11,1),(34,9,14,2),(35,9,10,-1),(36,10,12,-2),(37,10,13,-1),(38,10,11,-2),(39,10,14,-1),(40,10,9,-1),(41,11,8,1),(42,11,10,-2),(43,11,14,2),(44,12,13,-2),(45,12,10,-2),(46,13,10,-1),(47,13,12,-2),(48,13,6,-2),(49,14,9,2),(50,14,11,2),(51,14,10,-1),(52,15,6,-1),(53,16,6,2),(54,16,5,-2),(55,17,3,2),(56,18,5,-1);
/*!40000 ALTER TABLE `relacao` ENABLE KEYS */;
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
