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
-- Table structure for table `rel_nacao_religiao`
--

DROP TABLE IF EXISTS `rel_nacao_religiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_nacao_religiao` (
  `id_nacao` int NOT NULL,
  `id_religiao` int NOT NULL,
  KEY `rel_nacao_religiao_nacao` (`id_nacao`),
  KEY `religiao_rel_nacao_religiao` (`id_religiao`),
  CONSTRAINT `rel_nacao_religiao_nacao` FOREIGN KEY (`id_nacao`) REFERENCES `nacao` (`id_nacao`),
  CONSTRAINT `religiao_rel_nacao_religiao` FOREIGN KEY (`id_religiao`) REFERENCES `religiao` (`id_religiao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_nacao_religiao`
--

LOCK TABLES `rel_nacao_religiao` WRITE;
/*!40000 ALTER TABLE `rel_nacao_religiao` DISABLE KEYS */;
INSERT INTO `rel_nacao_religiao` VALUES (1,2),(1,1),(1,3),(2,2),(2,3),(2,4),(3,1),(3,2),(4,2),(4,4),(5,4),(5,2),(6,4),(6,2),(7,3),(8,3),(8,5),(8,2),(9,5),(10,5),(11,5),(12,4),(12,5),(13,4),(14,5),(15,4),(16,4),(17,1),(18,4);
/*!40000 ALTER TABLE `rel_nacao_religiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 21:36:44
