-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `unidade_has_servico`
--

DROP TABLE IF EXISTS `unidade_has_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidade_has_servico` (
  `unidade_id_unidade` int NOT NULL,
  `servico_id_servico` int NOT NULL,
  `capacidade` int DEFAULT NULL,
  PRIMARY KEY (`unidade_id_unidade`,`servico_id_servico`),
  KEY `fk_unidade_has_servico_servico1_idx` (`servico_id_servico`),
  KEY `fk_unidade_has_servico_unidade1_idx` (`unidade_id_unidade`),
  CONSTRAINT `fk_unidade_has_servico_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`),
  CONSTRAINT `fk_unidade_has_servico_unidade1` FOREIGN KEY (`unidade_id_unidade`) REFERENCES `unidade` (`id_unidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade_has_servico`
--

LOCK TABLES `unidade_has_servico` WRITE;
/*!40000 ALTER TABLE `unidade_has_servico` DISABLE KEYS */;
INSERT INTO `unidade_has_servico` VALUES (1,1,9),(1,2,8),(1,3,8),(1,4,6),(1,5,9),(1,6,2),(1,7,4),(1,8,4),(1,9,3),(1,10,2),(1,11,2),(1,12,3),(1,13,2),(1,14,3),(1,15,3),(1,16,7),(1,17,7),(1,18,6),(1,19,3),(1,20,2),(2,1,8),(2,2,7),(2,3,7),(2,4,6),(2,5,8),(2,6,2),(2,7,4),(2,8,5),(2,9,3),(2,10,2),(2,11,2),(2,12,4),(2,13,3),(2,14,3),(2,15,4),(2,16,6),(2,17,6),(2,18,6),(2,19,4),(2,20,2),(3,1,9),(3,2,8),(3,3,9),(3,4,5),(3,5,8),(3,6,3),(3,7,5),(3,8,4),(3,9,4),(3,10,2),(3,11,3),(3,12,4),(3,13,3),(3,14,4),(3,15,4),(3,16,8),(3,17,8),(3,18,7),(3,19,4),(3,20,3),(4,1,7),(4,2,7),(4,3,6),(4,4,5),(4,5,7),(4,6,2),(4,7,4),(4,8,3),(4,9,3),(4,10,1),(4,11,2),(4,12,3),(4,13,2),(4,14,3),(4,15,3),(4,16,6),(4,17,6),(4,18,6),(4,19,3),(4,20,2),(5,1,9),(5,2,9),(5,3,8),(5,4,6),(5,5,9),(5,6,3),(5,7,5),(5,8,4),(5,9,4),(5,10,2),(5,11,3),(5,12,4),(5,13,3),(5,14,3),(5,15,4),(5,16,7),(5,17,7),(5,18,7),(5,19,4),(5,20,3);
/*!40000 ALTER TABLE `unidade_has_servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 23:19:36
