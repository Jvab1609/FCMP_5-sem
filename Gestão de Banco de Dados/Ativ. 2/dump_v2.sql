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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id_animal` varchar(15) NOT NULL,
  `nome_animal` varchar(45) DEFAULT NULL,
  `data_nasc_animal` date DEFAULT NULL,
  `especie` varchar(45) DEFAULT NULL,
  `raca` varchar(45) DEFAULT NULL,
  `porte` varchar(45) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  UNIQUE KEY `id_animal_UNIQUE` (`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal_has_vacina`
--

DROP TABLE IF EXISTS `animal_has_vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal_has_vacina` (
  `animal_id_animal` varchar(15) NOT NULL,
  `vacina_id_vacina` int NOT NULL,
  `data_vac` datetime DEFAULT NULL,
  `data_validade` datetime DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animal_id_animal`,`vacina_id_vacina`),
  KEY `fk_animal_has_vacina_vacina1_idx` (`vacina_id_vacina`),
  KEY `fk_animal_has_vacina_animal1_idx` (`animal_id_animal`),
  CONSTRAINT `fk_animal_has_vacina_animal1` FOREIGN KEY (`animal_id_animal`) REFERENCES `animal` (`id_animal`),
  CONSTRAINT `fk_animal_has_vacina_vacina1` FOREIGN KEY (`vacina_id_vacina`) REFERENCES `vacina` (`id_vacina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_has_vacina`
--

LOCK TABLES `animal_has_vacina` WRITE;
/*!40000 ALTER TABLE `animal_has_vacina` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal_has_vacina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` varchar(15) NOT NULL,
  `inicio` datetime DEFAULT NULL,
  `termino` datetime DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `animal_id_animal` varchar(15) NOT NULL,
  `veterinario_id_veterinario` varchar(15) NOT NULL,
  `servico_id_servico` varchar(15) NOT NULL,
  PRIMARY KEY (`id_consulta`,`animal_id_animal`,`veterinario_id_veterinario`,`servico_id_servico`),
  UNIQUE KEY `id_consulta_UNIQUE` (`id_consulta`),
  KEY `fk_consulta_animal1_idx` (`animal_id_animal`),
  KEY `fk_consulta_veterinario1_idx` (`veterinario_id_veterinario`),
  KEY `fk_consulta_servico1_idx` (`servico_id_servico`),
  CONSTRAINT `fk_consulta_animal1` FOREIGN KEY (`animal_id_animal`) REFERENCES `animal` (`id_animal`),
  CONSTRAINT `fk_consulta_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`),
  CONSTRAINT `fk_consulta_veterinario1` FOREIGN KEY (`veterinario_id_veterinario`) REFERENCES `veterinario` (`id_veterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cep` varchar(8) NOT NULL,
  `num_end` int DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_has_tutor`
--

DROP TABLE IF EXISTS `endereco_has_tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco_has_tutor` (
  `endereco_cep` varchar(8) NOT NULL,
  `tutor_cpf_tutor` varchar(11) NOT NULL,
  PRIMARY KEY (`endereco_cep`,`tutor_cpf_tutor`),
  KEY `fk_endereco_has_tutor_tutor1_idx` (`tutor_cpf_tutor`),
  KEY `fk_endereco_has_tutor_endereco1_idx` (`endereco_cep`),
  CONSTRAINT `fk_endereco_has_tutor_endereco1` FOREIGN KEY (`endereco_cep`) REFERENCES `endereco` (`cep`),
  CONSTRAINT `fk_endereco_has_tutor_tutor1` FOREIGN KEY (`tutor_cpf_tutor`) REFERENCES `tutor` (`cpf_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_has_tutor`
--

LOCK TABLES `endereco_has_tutor` WRITE;
/*!40000 ALTER TABLE `endereco_has_tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco_has_tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota` (
  `id_nota` varchar(15) NOT NULL,
  `valor_pago` float DEFAULT NULL,
  `forma_pagto` varchar(45) DEFAULT NULL,
  `notacol` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `tutor_cpf_tutor` varchar(11) NOT NULL,
  `consulta_id_consulta` varchar(15) NOT NULL,
  `consulta_animal_id_animal` varchar(15) NOT NULL,
  `consulta_veterinario_id_veterinario` varchar(15) NOT NULL,
  `consulta_servico_id_servico` varchar(15) NOT NULL,
  PRIMARY KEY (`id_nota`,`tutor_cpf_tutor`,`consulta_id_consulta`,`consulta_animal_id_animal`,`consulta_veterinario_id_veterinario`,`consulta_servico_id_servico`),
  UNIQUE KEY `id_nota_UNIQUE` (`id_nota`),
  KEY `fk_nota_tutor1_idx` (`tutor_cpf_tutor`),
  KEY `fk_nota_consulta1_idx` (`consulta_id_consulta`,`consulta_animal_id_animal`,`consulta_veterinario_id_veterinario`,`consulta_servico_id_servico`),
  CONSTRAINT `fk_nota_consulta1` FOREIGN KEY (`consulta_id_consulta`, `consulta_animal_id_animal`, `consulta_veterinario_id_veterinario`, `consulta_servico_id_servico`) REFERENCES `consulta` (`id_consulta`, `animal_id_animal`, `veterinario_id_veterinario`, `servico_id_servico`),
  CONSTRAINT `fk_nota_tutor1` FOREIGN KEY (`tutor_cpf_tutor`) REFERENCES `tutor` (`cpf_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` varchar(15) NOT NULL,
  `nome_serv` varchar(45) DEFAULT NULL,
  `custo_base` float DEFAULT NULL,
  `especificacoes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_servico`),
  UNIQUE KEY `id_servico_UNIQUE` (`id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `numtel` varchar(15) NOT NULL,
  `tutor_cpf_tutor` varchar(11) NOT NULL,
  PRIMARY KEY (`numtel`,`tutor_cpf_tutor`),
  KEY `fk_telefone_tutor_idx` (`tutor_cpf_tutor`),
  CONSTRAINT `fk_telefone_tutor` FOREIGN KEY (`tutor_cpf_tutor`) REFERENCES `tutor` (`cpf_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor` (
  `cpf_tutor` varchar(11) NOT NULL,
  `nome_tutor` varchar(45) DEFAULT NULL,
  `data_nasc_tutor` varchar(45) DEFAULT NULL,
  `email_tutor` varchar(45) DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  `senha_tutor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cpf_tutor`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor_has_animal`
--

DROP TABLE IF EXISTS `tutor_has_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor_has_animal` (
  `tutor_cpf_tutor` varchar(11) NOT NULL,
  `animal_id_animal` varchar(15) NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  PRIMARY KEY (`tutor_cpf_tutor`,`animal_id_animal`),
  KEY `fk_tutor_has_animal_animal1_idx` (`animal_id_animal`),
  KEY `fk_tutor_has_animal_tutor1_idx` (`tutor_cpf_tutor`),
  CONSTRAINT `fk_tutor_has_animal_animal1` FOREIGN KEY (`animal_id_animal`) REFERENCES `animal` (`id_animal`),
  CONSTRAINT `fk_tutor_has_animal_tutor1` FOREIGN KEY (`tutor_cpf_tutor`) REFERENCES `tutor` (`cpf_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor_has_animal`
--

LOCK TABLES `tutor_has_animal` WRITE;
/*!40000 ALTER TABLE `tutor_has_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor_has_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacina`
--

DROP TABLE IF EXISTS `vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacina` (
  `id_vacina` int NOT NULL,
  `nome_vacina` varchar(45) DEFAULT NULL,
  `validade` int DEFAULT NULL,
  PRIMARY KEY (`id_vacina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina`
--

LOCK TABLES `vacina` WRITE;
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinario` (
  `id_veterinario` varchar(15) NOT NULL,
  `nome_vet` varchar(45) DEFAULT NULL,
  `especialidade` varchar(45) DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  `senha_vet` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_veterinario`),
  UNIQUE KEY `id_veterinario_UNIQUE` (`id_veterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinario`
--

LOCK TABLES `veterinario` WRITE;
/*!40000 ALTER TABLE `veterinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `veterinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinica'
--

--
-- Dumping routines for database 'clinica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01 12:14:56

CREATE USER IF NOT EXISTS `cliente_clinica`@`%` IDENTIFIED BY 'cliente#1609';
GRANT SELECT, INSERT, UPDATE ON `clinica`.* TO `cliente_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `veterinario_clinica`@`%` IDENTIFIED BY 'veterinario#1609';
GRANT SELECT, INSERT, UPDATE, DELETE ON `clinica`.* TO `veterinario_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `dba_clinica`@`%` IDENTIFIED BY 'dba#1609';
GRANT ALL PRIVILEGES ON `clinica`.* TO `dba_clinica`@`%`;
FLUSH PRIVILEGES;
