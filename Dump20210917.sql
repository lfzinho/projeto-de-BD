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
-- Table structure for table `bioma`
--

DROP TABLE IF EXISTS `bioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bioma` (
  `id_bioma` int NOT NULL,
  `desc_bioma` varchar(25) NOT NULL,
  PRIMARY KEY (`id_bioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bioma`
--

LOCK TABLES `bioma` WRITE;
/*!40000 ALTER TABLE `bioma` DISABLE KEYS */;
INSERT INTO `bioma` VALUES (1,'Campos'),(2,'Floresta decídua'),(3,'Floresta temperada'),(4,'Deserto gelado'),(5,'Savana'),(6,'Deserto'),(7,'Pântano'),(8,'Glacial'),(9,'Taiga'),(10,'Tundra'),(11,'Floresta tropical'),(12,'Floresta estacional');
/*!40000 ALTER TABLE `bioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comercio`
--

DROP TABLE IF EXISTS `comercio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comercio` (
  `id_comercio` int NOT NULL,
  `nome_comercio` varchar(25) NOT NULL,
  PRIMARY KEY (`id_comercio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comercio`
--

LOCK TABLES `comercio` WRITE;
/*!40000 ALTER TABLE `comercio` DISABLE KEYS */;
INSERT INTO `comercio` VALUES (1,'Agropecuária'),(2,'Têxtil'),(3,'Encantamentos'),(4,'Ferreiro'),(5,'Madeireiro'),(6,'Metalúrgico'),(7,'Mineração'),(8,'Pescaria');
/*!40000 ALTER TABLE `comercio` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `linguagem`
--

DROP TABLE IF EXISTS `linguagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linguagem` (
  `id_linguagem` int NOT NULL,
  `nome_linguagem` varchar(25) NOT NULL,
  PRIMARY KEY (`id_linguagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linguagem`
--

LOCK TABLES `linguagem` WRITE;
/*!40000 ALTER TABLE `linguagem` DISABLE KEYS */;
INSERT INTO `linguagem` VALUES (1,'Esperanto'),(2,'Linguagem Enderman'),(3,'Minimalista'),(4,'Português'),(5,'Python');
/*!40000 ALTER TABLE `linguagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacao`
--

DROP TABLE IF EXISTS `nacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacao` (
  `id_nacao` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `governante` varchar(25) NOT NULL,
  `n_hab` int NOT NULL,
  `area` decimal(11,2) NOT NULL,
  `moeda` varchar(20) NOT NULL,
  PRIMARY KEY (`id_nacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacao`
--

LOCK TABLES `nacao` WRITE;
/*!40000 ALTER TABLE `nacao` DISABLE KEYS */;
INSERT INTO `nacao` VALUES (1,'Preteria','Bobson Crusoe',3600000,541000.00,'Temporalia'),(2,'Swellandia','Mafagafo Garfo',2400000,397000.00,'Eudo'),(3,'Niônia','Zeedum',3400000,392000.00,'Mombraile'),(4,'Noxus','Leblanc',2600000,282000.00,'Gem'),(5,'Xérvia','Quelar',2500000,254000.00,'Bitocoin'),(6,'Nozem','Mordenkai',3200000,222000.00,'IP'),(7,'Jacrencia','Robbie Joe II',3100000,182000.00,'Juremildas'),(8,'Memicius','T. Roll Phace',1800000,133000.00,'Rickrollens'),(9,'Imperio de Gaia','Shimo Teshiki Jimo',2200000,95000.00,'Cookies'),(10,'Guardenix','Lunis Lafencio',2100000,88000.00,'Jogonios'),(11,'Rodentia','Kai Sciu Ridae',1100000,84000.00,'Castanhes'),(12,'Antarcana','Alicios Jr. ',1300000,58000.00,'Visunova'),(13,'Polaris','Mr. Penguin',1200000,53000.00,'Cubos de Gelo'),(14,'Netolândia','Felipe Neto',1100000,40000.00,'Coxinhas'),(15,'Argentina','Alberto Férnandez',776000,35000.00,'Peso Argentino'),(16,'Bloco de Notas','Mestre Rodrigo',675000,28000.00,'Pixels'),(17,'Squirrócia','Sensei Kayo',413000,27000.00,'Nozes'),(18,'Aranhaverso','Ditador Laguardia',166000,4600.00,'Aracnídeos');
/*!40000 ALTER TABLE `nacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_amizade_amizade_cod`
--

DROP TABLE IF EXISTS `rel_amizade_amizade_cod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_amizade_amizade_cod` (
  `cod` int NOT NULL,
  `tipo_de_amizade` varchar(25) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_amizade_amizade_cod`
--

LOCK TABLES `rel_amizade_amizade_cod` WRITE;
/*!40000 ALTER TABLE `rel_amizade_amizade_cod` DISABLE KEYS */;
INSERT INTO `rel_amizade_amizade_cod` VALUES (-2,'Inimizade'),(-1,'Confiança'),(0,'Desconhecido'),(1,'Neutros'),(2,'Amizade');
/*!40000 ALTER TABLE `rel_amizade_amizade_cod` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `rel_nacao_comercio`
--

DROP TABLE IF EXISTS `rel_nacao_comercio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_nacao_comercio` (
  `id_nacao` int NOT NULL,
  `id_comercio` int NOT NULL,
  KEY `Table_9_nacao` (`id_nacao`),
  KEY `comercio_Table_9` (`id_comercio`),
  CONSTRAINT `comercio_Table_9` FOREIGN KEY (`id_comercio`) REFERENCES `comercio` (`id_comercio`),
  CONSTRAINT `Table_9_nacao` FOREIGN KEY (`id_nacao`) REFERENCES `nacao` (`id_nacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_nacao_comercio`
--

LOCK TABLES `rel_nacao_comercio` WRITE;
/*!40000 ALTER TABLE `rel_nacao_comercio` DISABLE KEYS */;
INSERT INTO `rel_nacao_comercio` VALUES (1,1),(1,2),(2,7),(3,2),(3,6),(4,5),(5,6),(6,5),(6,7),(7,1),(7,8),(8,4),(8,7),(9,8),(10,1),(10,5),(11,7),(11,8),(12,2),(13,1),(14,4),(14,5),(15,3),(15,8),(16,3),(16,4),(17,1),(18,3);
/*!40000 ALTER TABLE `rel_nacao_comercio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_nacao_linguagem`
--

DROP TABLE IF EXISTS `rel_nacao_linguagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_nacao_linguagem` (
  `id_linguagem` int NOT NULL,
  `id_nacao` int NOT NULL,
  KEY `Table_7_nacao` (`id_nacao`),
  KEY `rel_nacao_linguagem` (`id_linguagem`),
  CONSTRAINT `rel_nacao_linguagem` FOREIGN KEY (`id_linguagem`) REFERENCES `linguagem` (`id_linguagem`),
  CONSTRAINT `Table_7_nacao` FOREIGN KEY (`id_nacao`) REFERENCES `nacao` (`id_nacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_nacao_linguagem`
--

LOCK TABLES `rel_nacao_linguagem` WRITE;
/*!40000 ALTER TABLE `rel_nacao_linguagem` DISABLE KEYS */;
INSERT INTO `rel_nacao_linguagem` VALUES (4,1),(1,2),(2,2),(4,2),(3,3),(4,3),(4,4),(5,4),(1,5),(1,6),(2,6),(3,7),(4,7),(1,8),(1,9),(5,9),(1,10),(5,10),(1,11),(5,11),(5,12),(4,13),(5,13),(5,14),(5,15),(1,16),(5,16),(3,17),(4,17),(1,18),(3,18);
/*!40000 ALTER TABLE `rel_nacao_linguagem` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `religiao`
--

DROP TABLE IF EXISTS `religiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religiao` (
  `id_religiao` int NOT NULL,
  `nome_religiao` varchar(25) NOT NULL,
  PRIMARY KEY (`id_religiao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religiao`
--

LOCK TABLES `religiao` WRITE;
/*!40000 ALTER TABLE `religiao` DISABLE KEYS */;
INSERT INTO `religiao` VALUES (1,'Batatismo'),(2,'Cubismo'),(3,'Illuminati'),(4,'Místicos'),(5,'Os Puros');
/*!40000 ALTER TABLE `religiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 21:41:50
