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
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota` (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `valor_pago` float DEFAULT NULL,
  `forma_pagto` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `tutor_id_tutor` int NOT NULL,
  `consulta_id_consulta` int NOT NULL,
  `consulta_veterinario_id_veterinario` int NOT NULL,
  `consulta_animal_id_animal` int NOT NULL,
  `consulta_servico_id_servico` int NOT NULL,
  `consulta_tutor_id_tutor` int NOT NULL,
  `consulta_unidade_id_unidade` int NOT NULL,
  PRIMARY KEY (`id_nota`,`tutor_id_tutor`,`consulta_id_consulta`,`consulta_veterinario_id_veterinario`,`consulta_animal_id_animal`,`consulta_servico_id_servico`,`consulta_tutor_id_tutor`,`consulta_unidade_id_unidade`),
  UNIQUE KEY `id_nota_UNIQUE` (`id_nota`),
  KEY `fk_nota_tutor1_idx` (`tutor_id_tutor`),
  KEY `fk_nota_consulta1_idx` (`consulta_id_consulta`,`consulta_veterinario_id_veterinario`,`consulta_animal_id_animal`,`consulta_servico_id_servico`,`consulta_tutor_id_tutor`,`consulta_unidade_id_unidade`),
  CONSTRAINT `fk_nota_consulta1` FOREIGN KEY (`consulta_id_consulta`, `consulta_veterinario_id_veterinario`, `consulta_animal_id_animal`, `consulta_servico_id_servico`, `consulta_tutor_id_tutor`, `consulta_unidade_id_unidade`) REFERENCES `consulta` (`id_consulta`, `veterinario_id_veterinario`, `animal_id_animal`, `servico_id_servico`, `tutor_id_tutor`, `unidade_id_unidade`),
  CONSTRAINT `fk_nota_tutor1` FOREIGN KEY (`tutor_id_tutor`) REFERENCES `tutor` (`id_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 12:23:52
