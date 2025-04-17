CREATE DATABASE  IF NOT EXISTS `concessionaria` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concessionaria`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionaria
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
INSERT INTO `comprador` VALUES ('102345678900','Marcelo Torres','1978-12-30',NULL,10,10),('12345678900','Eduardo Martins','1980-02-14',NULL,1,1),('22345678900','Sandra Lima','1992-07-22',NULL,2,2),('32345678900','Felipe Rocha','1985-04-10',NULL,3,3),('42345678900','Patrícia Souza','1991-09-05',NULL,4,4),('52345678900','Empresa Alpha Ltda',NULL,'João Silva',5,5),('62345678900','Empresa Beta S/A',NULL,'Marcos Teixeira',6,6),('72345678900','Rogério Dias','1983-06-25',NULL,7,7),('82345678900','Bianca Monteiro','1994-03-19',NULL,8,8),('92345678900','Empresa Gama ME',NULL,'Fernanda Melo',9,9);
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
INSERT INTO `contato` VALUES (1,'11999990001','11999990002','contato1@email.com'),(2,'21999990001',NULL,'contato2@email.com'),(3,'31999990001',NULL,'contato3@email.com'),(4,'41999990001','41999990002','contato4@email.com'),(5,'51999990001',NULL,'contato5@email.com'),(6,'61999990001','61999990002','contato6@email.com'),(7,'71999990001',NULL,'contato7@email.com'),(8,'81999990001',NULL,'contato8@email.com'),(9,'91999990001','91999990002','contato9@email.com'),(10,'10199990001',NULL,'contato10@email.com');
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
INSERT INTO `endereco` VALUES (1,'01001-000',100,'Rua A','Centro','São Paulo','SP'),(2,'20010-000',200,'Rua B','Copacabana','Rio de Janeiro','RJ'),(3,'30110-000',300,'Rua C','Savassi','Belo Horizonte','MG'),(4,'40020-000',400,'Rua D','Barra','Salvador','BA'),(5,'50030-000',500,'Rua E','Boa Viagem','Recife','PE'),(6,'60040-000',600,'Rua F','Meireles','Fortaleza','CE'),(7,'70050-000',700,'Rua G','Asa Sul','Brasília','DF'),(8,'80060-000',800,'Rua H','Centro','Curitiba','PR'),(9,'90070-000',900,'Rua I','Moinhos','Porto Alegre','RS'),(10,'10080-000',1000,'Rua J','Centro','Goiânia','GO');
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
INSERT INTO `marca` VALUES (1,'Ford','EUA',1),(2,'Volkswagen','Alemanha',2),(3,'Toyota','Japão',3),(4,'Fiat','Itália',4),(5,'Hyundai','Coreia',5),(6,'Chevrolet','EUA',6),(7,'Honda','Japão',7),(8,'Renault','França',8),(9,'Nissan','Japão',9),(10,'Peugeot','França',10);
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
INSERT INTO `unidade` VALUES (1,'Unidade São Paulo',1,1),(2,'Unidade Rio',2,2),(3,'Unidade BH',3,3),(4,'Unidade Salvador',4,4),(5,'Unidade Recife',5,5),(6,'Unidade Fortaleza',6,6),(7,'Unidade Brasília',7,7),(8,'Unidade Curitiba',8,8),(9,'Unidade POA',9,9),(10,'Unidade Goiânia',10,10);
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
INSERT INTO `veiculo` VALUES ('RENAVAM001','CHASSI001','Ka',2020,2019,'Prata',85,'ABC1A01',5,30000,'Flex',1),('RENAVAM002','CHASSI002','Gol',2021,2020,'Preto',90,'DEF2B02',5,35000,'Flex',2),('RENAVAM003','CHASSI003','Corolla',2022,2022,'Branco',150,'GHI3C03',5,90000,'Gasolina',3),('RENAVAM004','CHASSI004','Uno',2020,2019,'Vermelho',75,'JKL4D04',5,25000,'Flex',4),('RENAVAM005','CHASSI005','HB20',2021,2020,'Azul',95,'MNO5E05',5,40000,'Flex',5),('RENAVAM006','CHASSI006','Onix',2022,2022,'Cinza',110,'PQR6F06',5,55000,'Flex',6),('RENAVAM007','CHASSI007','Civic',2021,2020,'Preto',160,'STU7G07',5,120000,'Gasolina',7),('RENAVAM008','CHASSI008','Kwid',2020,2019,'Branco',70,'VWX8H08',5,32000,'Flex',8),('RENAVAM009','CHASSI009','Versa',2022,2021,'Prata',115,'YZA9I09',5,60000,'Flex',9),('RENAVAM010','CHASSI010','208',2021,2020,'Azul',100,'BCD0J10',5,58000,'Flex',10);
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
  `unidade_id_unidade` int NOT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `fk_venda_vendedor1_idx` (`vendedor_id_vendedor`),
  KEY `fk_venda_comprador1_idx` (`comprador_cpf_cnpj_comprador`),
  KEY `fk_venda_veiculo1_idx` (`veiculo_renavam`),
  KEY `fk_venda_unidade1_idx` (`unidade_id_unidade`),
  CONSTRAINT `fk_venda_comprador1` FOREIGN KEY (`comprador_cpf_cnpj_comprador`) REFERENCES `comprador` (`cpf_cnpj_comprador`),
  CONSTRAINT `fk_venda_unidade1` FOREIGN KEY (`unidade_id_unidade`) REFERENCES `unidade` (`id_unidade`),
  CONSTRAINT `fk_venda_veiculo1` FOREIGN KEY (`veiculo_renavam`) REFERENCES `veiculo` (`renavam`),
  CONSTRAINT `fk_venda_vendedor1` FOREIGN KEY (`vendedor_id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,28000,'À Vista',1500,'2007-01-15 10:00:00',1,'12345678900','RENAVAM001',1),(2,34000,'Financiado',1800,'2008-01-20 14:30:00',2,'22345678900','RENAVAM002',2),(3,92000,'À Vista',4000,'2009-02-01 09:15:00',3,'32345678900','RENAVAM003',3),(4,26000,'Financiado',1300,'2010-02-10 11:45:00',4,'42345678900','RENAVAM004',4),(5,41000,'À Vista',2000,'2011-02-15 16:00:00',5,'52345678900','RENAVAM005',5),(6,57000,'Cartão',2800,'2012-03-03 13:20:00',6,'62345678900','RENAVAM006',6),(7,118000,'À Vista',5000,'2013-03-10 15:10:00',7,'72345678900','RENAVAM007',7),(8,31000,'Financiado',1400,'2014-03-15 12:00:00',8,'82345678900','RENAVAM008',8),(9,62000,'À Vista',2500,'2015-03-20 17:30:00',9,'92345678900','RENAVAM009',9),(10,56000,'Financiado',2200,'2016-03-25 10:50:00',10,'102345678900','RENAVAM010',10);
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
INSERT INTO `vendedor` VALUES (1,'Carlos Silva','1985-01-10',1,1),(2,'Joana Souza','1990-03-22',2,2),(3,'Pedro Lima','1982-07-15',3,3),(4,'Maria Costa','1995-12-05',4,4),(5,'Rafael Mendes','1988-09-30',5,5),(6,'Luciana Dias','1992-11-11',6,6),(7,'Fernando Rocha','1983-04-20',7,7),(8,'Amanda Pires','1996-06-18',8,8),(9,'Ricardo Alves','1989-08-08',9,9),(10,'Juliana Neves','1993-10-25',10,10);
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

-- Dump completed on 2025-04-17 18:33:20
