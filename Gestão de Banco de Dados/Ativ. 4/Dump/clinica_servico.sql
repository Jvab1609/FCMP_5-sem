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
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` int NOT NULL,
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
INSERT INTO `servico` VALUES (1,'Banho',60,'Inclui shampoo, condicionador e secagem'),(2,'Tosa Higiênica',50,'Apenas patas, barriga e região íntima'),(3,'Tosa Completa',90,'Tosa padrão da raça ou conforme solicitado'),(4,'Consulta Veterinária',120,'Consulta geral com clínico veterinário'),(5,'Vacinação',80,'Aplicação de vacina conforme protocolo médico'),(6,'Cirurgia',500,'Procedimento cirúrgico sob consulta'),(7,'Exames Laboratoriais',150,'Coleta e análise de sangue, urina e fezes'),(8,'Tratamento Dermatológico',200,'Consulta e tratamento para problemas de pele'),(9,'Terapia Comportamental',180,'Sessão com especialista em comportamento animal'),(10,'Emergência 24h',300,'Atendimento emergencial a qualquer horário'),(11,'Fisioterapia Animal',250,'Sessões para reabilitação física de animais'),(12,'Consulta Cardiológica',220,'Avaliação e acompanhamento cardíaco veterinário'),(13,'Consulta Neurológica',240,'Diagnóstico e tratamento de distúrbios neurológicos'),(14,'Consulta Oftalmológica',200,'Avaliação da visão e tratamento ocular'),(15,'Consulta Dermatológica',190,'Consulta especializada em doenças de pele'),(16,'Hotelzinho',100,'Hospedagem diária para cães e gatos'),(17,'Daycare',80,'Creche para animais durante o dia'),(18,'Banho Medicamentoso',70,'Banho terapêutico com produtos específicos'),(19,'Consulta Nutricional',150,'Orientação alimentar e dietética para pets'),(20,'Acupuntura Veterinária',260,'Sessão de acupuntura para tratamentos diversos');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 23:19:35
