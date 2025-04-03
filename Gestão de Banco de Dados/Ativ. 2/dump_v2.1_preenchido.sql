CREATE DATABASE  IF NOT EXISTS `clinica` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinica`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
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
INSERT INTO `animal` VALUES ('1','Betinho','2022-04-02','Cachorro','Border-Collie','Médio porte',30,'Nenhuma observação',0),('10','Nina','2019-02-28','Gato','Maine Coon','Médio porte',6.5,'Muito sociável',0),('2','Mia','2021-06-15','Gato','Siamês','Pequeno porte',5,'Gosta de subir em móveis',0),('3','Thor','2020-12-10','Cachorro','Golden Retriever','Grande porte',35,'Muito dócil',0),('4','Luna','2023-01-20','Gato','Persa','Pequeno porte',4.5,'Pelagem longa',0),('5','Rex','2019-09-05','Cachorro','Pastor Alemão','Grande porte',40,'Adestrado',0),('6','Mel','2022-11-11','Cachorro','Poodle','Pequeno porte',6,'Muito brincalhona',0),('7','Bolinha','2021-03-30','Coelho','Mini Lop','Pequeno porte',2.5,'Muito dócil',0),('8','Zeca','2018-07-21','Papagaio','Amazona aestiva','Médio porte',0.9,'Imita sons',0),('9','Pingo','2020-05-14','Cachorro','Shih Tzu','Pequeno porte',7,'Precisa de tosa frequente',0);
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
INSERT INTO `animal_has_vacina` VALUES ('1',1,'2025-03-24 00:00:00','2026-03-24 00:00:00','Sem observações'),('1',2,'2025-03-24 00:00:00','2026-03-24 00:00:00','Sem observações'),('10',7,'2025-10-05 00:00:00','2026-04-03 00:00:00','Reaplicação recomendada semestralmente'),('10',8,'2025-10-05 00:00:00','2026-04-03 00:00:00','Proteção contra parasitas intestinais'),('2',4,'2025-02-15 00:00:00','2026-02-15 00:00:00','Dose anual recomendada'),('2',5,'2025-02-15 00:00:00','2026-02-15 00:00:00','Nenhuma observação'),('3',1,'2025-01-10 00:00:00','2026-01-10 00:00:00','Reforço necessário anualmente'),('3',3,'2025-01-10 00:00:00','2026-01-10 00:00:00','Sem observações'),('4',4,'2025-04-05 00:00:00','2026-04-05 00:00:00','Reforço essencial para gatos'),('4',6,'2025-04-05 00:00:00','2026-04-05 00:00:00','Proteção contra vírus felinos'),('5',1,'2025-05-12 00:00:00','2026-05-12 00:00:00','Importante para prevenção de raiva'),('5',7,'2025-05-12 00:00:00','2025-11-08 00:00:00','Recomenda-se revacinação semestral'),('6',2,'2025-06-20 00:00:00','2026-06-20 00:00:00','Dose reforçada'),('6',8,'2025-06-20 00:00:00','2025-12-17 00:00:00','Proteção contra giárdia'),('7',9,'2025-07-10 00:00:00','2026-07-10 00:00:00','Prevenção contra tosse dos canis'),('7',10,'2025-07-10 00:00:00','2026-07-10 00:00:00','Proteção contra leishmaniose'),('8',1,'2025-08-25 00:00:00','2026-08-25 00:00:00','Nenhuma observação'),('8',3,'2025-08-25 00:00:00','2026-08-25 00:00:00','Reforço anual'),('9',5,'2025-09-14 00:00:00','2026-09-14 00:00:00','Proteção essencial para felinos'),('9',6,'2025-09-14 00:00:00','2026-09-14 00:00:00','Vacinação completa para gatos');
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
INSERT INTO `consulta` VALUES ('1','2025-04-01 14:00:00','2025-04-01 15:00:00','Banho realizado com sucesso','1','1999099','1'),('10','2025-04-10 08:00:00','2025-04-10 09:00:00','Tosa completa feita conforme solicitado','10','1999099','3'),('2','2025-04-02 10:00:00','2025-04-02 11:00:00','Consulta para check-up geral','2','1985023','4'),('3','2025-04-03 16:30:00','2025-04-03 17:00:00','Tosa higiênica realizada sem intercorrências','3','1999099','2'),('4','2025-04-04 09:00:00','2025-04-04 09:30:00','Vacinação contra raiva aplicada','4','1985023','5'),('5','2025-04-05 15:00:00','2025-04-05 16:30:00','Cirurgia realizada com sucesso','5','1968001','6'),('6','2025-04-06 11:00:00','2025-04-06 12:00:00','Exames laboratoriais coletados','6','2003045','7'),('7','2025-04-07 13:00:00','2025-04-07 14:00:00','Tratamento dermatológico para alergia','7','1978054','8'),('8','2025-04-08 17:00:00','2025-04-08 18:00:00','Sessão de terapia comportamental realizada','8','1973022','9'),('9','2025-04-09 20:30:00','2025-04-09 21:00:00','Atendimento emergencial para intoxicação','9','1985023','10');
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
  `estado` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`cep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES ('01001000',100,'Praça da Sé','Sé','São Paulo','SP'),('13030680',605,'Rua Joao Felipe Xavier da Silva','São Bernardo','Campinas','SP'),('20040002',50,'Avenida Rio Branco','Centro','Rio de Janeiro','RJ'),('30130010',1200,'Avenida Afonso Pena','Centro','Belo Horizonte','MG'),('40020000',75,'Rua Chile','Centro Histórico','Salvador','BA'),('60060090',230,'Avenida Dom Manuel','Centro','Fortaleza','CE'),('70040900',15,'Esplanada dos Ministérios','Zona Cívico-Administrativa','Brasília','DF'),('80010010',300,'Rua XV de Novembro','Centro','Curitiba','PR'),('90010000',500,'Avenida Borges de Medeiros','Centro Histórico','Porto Alegre','RS'),('95020040',180,'Rua Sinimbu','Centro','Caxias do Sul','RS');
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
INSERT INTO `endereco_has_tutor` VALUES ('01001000','23456789012'),('13030680','12345678909'),('20040002','34567890123'),('30130010','45678901234'),('40020000','56789012345'),('60060090','67890123456'),('70040900','78901234567'),('80010010','89012345678'),('90010000','90123456789'),('95020040','01234567890');
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
INSERT INTO `nota` VALUES ('1',66,'Débito','Banho realizado','12345678909','1','1','1999099','1'),('10',99,'Crédito','Tosa completa feita conforme solicitado','01234567890','10','10','1999099','3'),('2',120,'Crédito','Consulta veterinária check-up','23456789012','2','2','1985023','4'),('3',55,'Dinheiro','Tosa higiênica realizada','34567890123','3','3','1999099','2'),('4',80,'Débito','Vacinação contra raiva aplicada','45678901234','4','4','1985023','5'),('5',600,'Crédito','Cirurgia realizada com sucesso','56789012345','5','5','1968001','6'),('6',165,'Dinheiro','Exames laboratoriais coletados','67890123456','6','6','2003045','7'),('7',220,'Crédito','Tratamento dermatológico para alergia','78901234567','7','7','1978054','8'),('8',198,'Débito','Sessão de terapia comportamental','89012345678','8','8','1973022','9'),('9',360,'Dinheiro','Emergência para intoxicação','90123456789','9','9','1985023','10');
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
INSERT INTO `servico` VALUES ('1','Banho',60,'Inclui shampoo, condicionador e secagem'),('10','Emergência 24h',300,'Atendimento emergencial a qualquer horário'),('2','Tosa Higiênica',50,'Apenas patas, barriga e região íntima'),('3','Tosa Completa',90,'Tosa padrão da raça ou conforme solicitado'),('4','Consulta Veterinária',120,'Consulta geral com clínico veterinário'),('5','Vacinação',80,'Aplicação de vacina conforme protocolo médico'),('6','Cirurgia',500,'Procedimento cirúrgico sob consulta'),('7','Exames Laboratoriais',150,'Coleta e análise de sangue, urina e fezes'),('8','Tratamento Dermatológico',200,'Consulta e tratamento para problemas de pele'),('9','Terapia Comportamental',180,'Sessão com especialista em comportamento animal');
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
INSERT INTO `telefone` VALUES ('19988976543','01234567890'),('19998160904','12345678909'),('19987654321','23456789012'),('19996543210','34567890123'),('19995432109','45678901234'),('19994321098','56789012345'),('19993210987','67890123456'),('19992109876','78901234567'),('19991098765','89012345678'),('19990087654','90123456789');
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
INSERT INTO `tutor` VALUES ('01234567890','Cláudia Rocha','1997-06-22','claudia.rocha@gmail.com',0,'2cff851c45b02b1a748073082fd903e607f57fa4'),('12345678909','Jorge Alberto','1972-02-13','jorge.alberto@gmail.com',0,'a3dbf0c72b0ce8a92cb3fd11e246b4a8abd02ecc'),('23456789012','Maria Souza','1985-11-21','maria.souza@gmail.com',0,'fd4c51f55b325709a1774943ff8f3229927f1c00'),('34567890123','Carlos Pereira','1990-05-16','carlos.pereira@gmail.com',0,'c1eade068804bc364bcb50477599bef344d1ecda'),('45678901234','Ana Costa','1982-08-30','ana.costa@gmail.com',0,'9b55a58ab6218df4aef6b5f7651dc7a5cf9dcb34'),('56789012345','Roberto Lima','1978-01-12','roberto.lima@gmail.com',0,'86e2dd7d96503b29fda014887d0af71a945b7209'),('67890123456','Fernanda Silva','1995-07-19','fernanda.silva@gmail.com',0,'8eff99b6308559e8fd103064b6f877db3bf22c48'),('78901234567','Paulo Oliveira','1988-09-05','paulo.oliveira@gmail.com',0,'5b8064f200398c8f9c9620ae13cf06de23613555'),('89012345678','Juliana Santos','1993-03-25','juliana.santos@gmail.com',0,'874d970f63ec2c4d89b2c47307a31e4ce40b2f43'),('90123456789','Luís Fernandes','1980-12-18','luis.fernandes@gmail.com',0,'c819a3d37196e21efcca584585e38ec9edc3d31b');
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
INSERT INTO `tutor_has_animal` VALUES ('01234567890','10',1),('12345678909','1',1),('23456789012','2',1),('34567890123','3',1),('45678901234','4',1),('56789012345','5',1),('67890123456','6',1),('78901234567','7',1),('89012345678','8',1),('90123456789','9',1);
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
INSERT INTO `vacina` VALUES (1,'Vacina da Raiva',365),(2,'V8',365),(3,'V10',365),(4,'Vacina Antirrábica Felina',365),(5,'Tríplice Felina',365),(6,'Quádrupla Felina',365),(7,'Vacina contra Leptospirose',180),(8,'Vacina contra Giárdia',180),(9,'Vacina contra Tosse dos Canis',365),(10,'Vacina contra Leishmaniose',365);
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
INSERT INTO `veterinario` VALUES ('1968001','Ricardo Pereira','Cirurgião Veterinário',0,'2af140d70f820817b27197935b31390b47d88865'),('1973022','Juliana Ribeiro','Especialista em Comportamento Animal',0,'874d970f63ec2c4d89b2c47307a31e4ce40b2f43'),('1978054','Ana Beatriz Lima','Dermatologista Veterinário',0,'9b55a58ab6218df4aef6b5f7651dc7a5cf9dcb34'),('1985023','Mariana Souza','Clínico Geral',0,'a679cfd775546b23c33cd9f32aac887cd619e794'),('1988110','Pedro Mendes','Oftalmologista Veterinário',0,'ea12a98952dd49318ecd0d83aab11e888ec75612'),('1990125','Carlos Fernandes','Ortopedista Veterinário',0,'c1eade068804bc364bcb50477599bef344d1ecda'),('1995078','Fernanda Castro','Neurologista Veterinário',0,'8eff99b6308559e8fd103064b6f877db3bf22c48'),('1999099','Bruno Almeida','Especialista em Banho e Tosa',0,'680b89f47705fc361b1cf5f89478103bdccd2e28'),('2000012','Lucas Oliveira','Cardiologista Veterinário',0,'7074dff44b67ef4ae25fba439b82519be7419121'),('2003045','Cláudia Nogueira','Esteticista Animal',0,'2cff851c45b02b1a748073082fd903e607f57fa4');
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

-- Dump completed on 2025-04-02  9:24:45
