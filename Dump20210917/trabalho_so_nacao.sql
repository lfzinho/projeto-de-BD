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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 21:36:43
