CREATE DATABASE  IF NOT EXISTS `concessionaria` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concessionaria`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionaria
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `cpf_cnpj_comprador` varchar(30) NOT NULL,
  `nome_comprador` varchar(100) DEFAULT NULL,
  `data_nasc_comprador` date DEFAULT NULL,
  `responsavel_pj` varchar(45) DEFAULT NULL,
  `endereco_id_endereco` int NOT NULL,
  `contato_id_contato` int NOT NULL,
  PRIMARY KEY (`cpf_cnpj_comprador`),
  KEY `fk_comprador_endereco1_idx` (`endereco_id_endereco`),
  KEY `fk_comprador_contato1_idx` (`contato_id_contato`),
  CONSTRAINT `fk_comprador_contato1` FOREIGN KEY (`contato_id_contato`) REFERENCES `contato` (`id_contato`),
  CONSTRAINT `fk_comprador_endereco1` FOREIGN KEY (`endereco_id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES ('11.111.111/0001-06','Nome','1967-05-26','Jorge',6,16),('11.111.111/0001-07','Nome','1967-05-26','Jorge',7,17),('11.111.111/0001-08','Nome','1967-05-26','Jorge',8,18),('11.111.111/0001-09','Nome','1967-05-26','Jorge',9,19),('11.111.111/0001-10','Nome','1967-05-26','Jorge',10,20),('111.111.111-01','Nome','1967-05-26',NULL,1,11),('111.111.111-02','Nome','1967-05-26',NULL,2,12),('111.111.111-03','Nome','1967-05-26',NULL,3,13),('111.111.111-04','Nome','1967-05-26',NULL,4,14),('111.111.111-05','Nome','1967-05-26',NULL,5,15);
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id_contato` int NOT NULL,
  `tel_1` varchar(45) DEFAULT NULL,
  `tel_2` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'9999-9999','9999-9999','contato@jeep.com.br'),(2,'9999-9999','9999-9999','contato@honda.com.br'),(3,'9999-9999','9999-9999','contato@fiat.com.br'),(4,'9999-9999','9999-9999','contato@citroen.com.br'),(5,'9999-9999','9999-9999','contato@byd.com.br'),(6,'9999-9999','9999-9999','contato@toyota.com.br'),(7,'9999-9999','9999-9999','contato@maserati.com'),(8,'9999-9999','9999-9999','contato@tesla.com'),(9,'9999-9999','9999-9999','contato@porsche.com'),(10,'9999-9999','9999-9999','contato@bmw.com'),(11,'9999-9999','9999-9999','contato@mail.com.br'),(12,'9999-9999','9999-9999','contato@mail.com.br'),(13,'9999-9999','9999-9999','contato@mail.com.br'),(14,'9999-9999','9999-9999','contato@mail.com.br'),(15,'9999-9999','9999-9999','contato@mail.com.br'),(16,'9999-9999','9999-9999','contato@mail.com.br'),(17,'9999-9999','9999-9999','contato@mail.com.br'),(18,'9999-9999','9999-9999','contato@mail.com.br'),(19,'9999-9999','9999-9999','contato@mail.com.br'),(20,'9999-9999','9999-9999','contato@mail.com.br');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL,
  `cep` varchar(15) NOT NULL,
  `numero_end` int DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(2,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(3,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(4,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(5,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(6,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(7,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(8,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(9,'13030-680',605,'Rua','Bairro','Cidade','Estado'),(10,'13030-680',605,'Rua','Bairro','Cidade','Estado');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nome_montadora` varchar(45) NOT NULL,
  `origem` varchar(15) NOT NULL,
  `contato_id_contato` int NOT NULL,
  PRIMARY KEY (`id_marca`),
  UNIQUE KEY `id_marca_UNIQUE` (`id_marca`),
  KEY `fk_marca_contato1_idx` (`contato_id_contato`),
  CONSTRAINT `fk_marca_contato1` FOREIGN KEY (`contato_id_contato`) REFERENCES `contato` (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Jeep','Nacional',1),(2,'Honda','Nacional',2),(3,'Fiat','Nacional',3),(4,'Citroen','Nacional',4),(5,'BYD','Nacional',5),(6,'Toyota','Nacional',6),(7,'Maserati','Importado',7),(8,'Tesla','Importado',8),(9,'Porsche','Importado',9),(10,'BMW','Importado',10);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade`
--

DROP TABLE IF EXISTS `unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidade` (
  `id_unidade` int NOT NULL,
  `nome_unidade` varchar(45) DEFAULT NULL,
  `endereco_id_endereco` int NOT NULL,
  `contato_id_contato` int NOT NULL,
  PRIMARY KEY (`id_unidade`),
  KEY `fk_unidade_endereco1_idx` (`endereco_id_endereco`),
  KEY `fk_unidade_contato1_idx` (`contato_id_contato`),
  CONSTRAINT `fk_unidade_contato1` FOREIGN KEY (`contato_id_contato`) REFERENCES `contato` (`id_contato`),
  CONSTRAINT `fk_unidade_endereco1` FOREIGN KEY (`endereco_id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
INSERT INTO `unidade` VALUES (1,'Matriz',1,11),(2,'Filial X',2,12),(3,'Filial X',3,13),(4,'Filial X',4,14),(5,'Filial X',5,15),(6,'Filial X',6,16),(7,'Filial X',7,17),(8,'Filial X',8,18),(9,'Filial X',9,19),(10,'Filial X',10,20);
/*!40000 ALTER TABLE `unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `renavam` varchar(15) NOT NULL,
  `chassi` varchar(20) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `ano_modelo` int DEFAULT NULL,
  `ano_fabricacao` int DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `potencia` int DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `capacidade` int DEFAULT NULL,
  `valor_fipe` float DEFAULT NULL,
  `tipo_combustivel` varchar(45) DEFAULT NULL,
  `marca_id_marca` int NOT NULL,
  PRIMARY KEY (`renavam`),
  KEY `fk_veiculo_marca_idx` (`marca_id_marca`),
  CONSTRAINT `fk_veiculo_marca` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('1234567890-a','9BWHE21JX24060960','C3',2020,2007,'Preto',120,'GBQ-6435',5,65000,'Flex',4),('1234567890-b','9BWHE21JX24060960','Dolphin',2023,2019,'Preto',120,'GBQ-6435',5,90000,'Flex',5),('1234567890-c','9BWHE21JX24060960','Corolla',2024,2019,'Preto',120,'GBQ-6435',5,130000,'Flex',6),('1234567890-d','9BWHE21JX24060960','MC20',2020,2025,'Preto',120,'GBQ-6435',5,600000,'Flex',7),('1234567890-e','9BWHE21JX24060960','Model S',2020,2020,'Preto',120,'GBQ-6435',5,500000,'Elétrico',8),('1234567890-f','9BWHE21JX24060960','Cayenne',2020,2022,'Preto',120,'GBQ-6435',5,1200000,'Flex',9),('1234567890-g','9BWHE21JX24060960','320i',2020,2023,'Preto',120,'GBQ-6435',5,450000,'Flex',10),('1234567890-x','9BWHE21JX24060960','Renegade',2020,2019,'Preto',120,'GBQ-6435',5,100000,'Flex',1),('1234567890-y','9BWHE21JX24060960','Civic',2020,2005,'Preto',120,'GBQ-6435',5,120000,'Híbrido',2),('1234567890-z','9BWHE21JX24060960','Pulse',2020,2004,'Preto',120,'GBQ-6435',5,70000,'Flex',3);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `valor_venda` float DEFAULT NULL,
  `forma_pagto` varchar(45) DEFAULT NULL,
  `comissao` float DEFAULT NULL,
  `data_hora_compra` datetime DEFAULT NULL,
  `vendedor_id_vendedor` int NOT NULL,
  `comprador_cpf_cnpj_comprador` varchar(30) NOT NULL,
  `veiculo_renavam` varchar(15) NOT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `fk_venda_vendedor1_idx` (`vendedor_id_vendedor`),
  KEY `fk_venda_comprador1_idx` (`comprador_cpf_cnpj_comprador`),
  KEY `fk_venda_veiculo1_idx` (`veiculo_renavam`),
  CONSTRAINT `fk_venda_comprador1` FOREIGN KEY (`comprador_cpf_cnpj_comprador`) REFERENCES `comprador` (`cpf_cnpj_comprador`),
  CONSTRAINT `fk_venda_veiculo1` FOREIGN KEY (`veiculo_renavam`) REFERENCES `veiculo` (`renavam`),
  CONSTRAINT `fk_venda_vendedor1` FOREIGN KEY (`vendedor_id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,90000,'Débito',0.01,'2025-03-26 09:16:00',1,'1','1234567890-x'),(2,90000,'Débito',0.01,'2025-03-26 09:16:00',2,'2','1234567890-y'),(3,90000,'Débito',0.01,'2025-03-26 09:16:00',3,'3','1234567890-z'),(4,90000,'Débito',0.01,'2025-03-26 09:16:00',4,'4','1234567890-a'),(5,90000,'Débito',0.01,'2025-03-26 09:16:00',5,'5','1234567890-b'),(6,90000,'Débito',0.01,'2025-03-26 09:16:00',6,'6','1234567890-c'),(7,90000,'Débito',0.01,'2025-03-26 09:16:00',7,'7','1234567890-d'),(8,90000,'Débito',0.01,'2025-03-26 09:16:00',8,'8','1234567890-e'),(9,90000,'Débito',0.01,'2025-03-26 09:16:00',9,'9','1234567890-f'),(10,90000,'Débito',0.01,'2025-03-26 09:16:00',10,'10','1234567890-g');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id_vendedor` int NOT NULL,
  `nome_vendedor` varchar(45) DEFAULT NULL,
  `data_nasc_vendedor` date DEFAULT NULL,
  `contato_id_contato` int NOT NULL,
  `unidade_id_unidade` int NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  KEY `fk_vendedor_contato1_idx` (`contato_id_contato`),
  KEY `fk_vendedor_unidade1_idx` (`unidade_id_unidade`),
  CONSTRAINT `fk_vendedor_contato1` FOREIGN KEY (`contato_id_contato`) REFERENCES `contato` (`id_contato`),
  CONSTRAINT `fk_vendedor_unidade1` FOREIGN KEY (`unidade_id_unidade`) REFERENCES `unidade` (`id_unidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Alberto','1968-05-16',11,1),(2,'Alberto','1968-05-16',12,2),(3,'Alberto','1968-05-16',13,3),(4,'Alberto','1968-05-16',14,4),(5,'Alberto','1968-05-16',15,5),(6,'Alberto','1968-05-16',16,6),(7,'Alberto','1968-05-16',17,7),(8,'Alberto','1968-05-16',18,8),(9,'Alberto','1968-05-16',19,9),(10,'Alberto','1968-05-16',20,10);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'concessionaria'
--

--
-- Dumping routines for database 'concessionaria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26  9:20:19
