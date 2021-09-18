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
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `populacao` int NOT NULL,
  `area` decimal(8,2) NOT NULL,
  `id_nacao` int NOT NULL,
  PRIMARY KEY (`id_estado`),
  KEY `estado_nacao` (`id_nacao`),
  CONSTRAINT `estado_nacao` FOREIGN KEY (`id_nacao`) REFERENCES `nacao` (`id_nacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Copovigo',1100000,240000.00,1),(2,'Gogi',900000,140000.00,1),(3,'Komia',700000,90000.00,1),(4,'Crolisia',600000,41000.00,1),(5,'Riseyri',300000,30000.00,1),(6,'Pharnemia',700000,127000.00,2),(7,'Thouvia',500000,85000.00,2),(8,'Okalia',400000,67000.00,2),(9,'Bamland',400000,48000.00,2),(10,'Fouchia',300000,40000.00,2),(11,'Laureland',100000,30000.00,2),(12,'Hauhia',1000000,181000.00,3),(13,'Junkeria',800000,83000.00,3),(14,'Menestad',700000,54000.00,3),(15,'Camurta',700000,40000.00,3),(16,'Neutrals',200000,34000.00,3),(17,'Kuria',800000,98000.00,4),(18,'Yongshun Guo',500000,64000.00,4),(19,'Pandos',500000,48000.00,4),(20,'Ciambalatia',400000,38000.00,4),(21,'Bovium',300000,34000.00,4),(22,'Quecasco',1100000,117000.00,5),(23,'Fianolara',800000,62000.00,5),(24,'Orinarmaa',400000,45000.00,5),(25,'Ocentia',200000,30000.00,5),(26,'Mund',1600000,110000.00,6),(27,'Onmia',1100000,64000.00,6),(28,'Teopocanco',900000,48000.00,6),(29,'Tarbequmia',1400000,64000.00,7),(30,'Dujia',1000000,45000.00,7),(31,'Yvinsikia',500000,40000.00,7),(32,'Grotinia',300000,33000.00,7),(33,'Montegioce',1000000,78000.00,8),(34,'Theopome',800000,55000.00,8),(35,'Khana',1300000,58000.00,9),(36,'Femignes',900000,37000.00,9),(37,'Soulia',1100000,64000.00,10),(38,'Amahia',1000000,24000.00,10),(39,'Muweria',700000,52000.00,11),(40,'Asfan',400000,32000.00,11),(41,'Waldsbadia',700000,27000.00,12),(42,'Iueliusia',400000,18000.00,12),(43,'Kit',200000,13000.00,12),(44,'Dirah',700000,35000.00,13),(45,'Bridgia',500000,18000.00,13),(46,'Sornovium',400000,18000.00,14),(47,'Escalhalia',500000,12000.00,14),(48,'Sergipe',200000,10000.00,14),(49,'Zankril',446000,19000.00,15),(50,'Pinhosia',330000,16000.00,15),(51,'Aunum',330000,13000.00,16),(52,'Rickinbachia',220000,8000.00,16),(53,'Bouber',125000,7000.00,16),(54,'Chamaremia',210000,12000.00,17),(55,'Dornia',150000,10000.00,17),(56,'Zacalco',53000,5000.00,17),(57,'Escria',95000,2600.00,18),(58,'Blecland',71000,2000.00,18);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
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
