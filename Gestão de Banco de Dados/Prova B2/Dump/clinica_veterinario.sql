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
-- Table structure for table `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinario` (
  `id_veterinario` int NOT NULL,
  `nome_vet` varchar(45) DEFAULT NULL,
  `especialidade` varchar(45) DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  `login_vet` varchar(45) DEFAULT NULL,
  `senha_vet` varchar(45) DEFAULT NULL,
  `unidade_id_unidade` int NOT NULL,
  PRIMARY KEY (`id_veterinario`,`unidade_id_unidade`),
  UNIQUE KEY `id_veterinario_UNIQUE` (`id_veterinario`),
  KEY `fk_veterinario_unidade1_idx` (`unidade_id_unidade`),
  CONSTRAINT `fk_veterinario_unidade1` FOREIGN KEY (`unidade_id_unidade`) REFERENCES `unidade` (`id_unidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinario`
--

LOCK TABLES `veterinario` WRITE;
/*!40000 ALTER TABLE `veterinario` DISABLE KEYS */;
INSERT INTO `veterinario` VALUES (1,'Ricardo Pereira','Cirurgião Veterinário',0,'loginRicardo','2af140d70f820817b27197935b31390b47d88865',1),(2,'Mariana Souza','Clínico Geral',0,'loginMariana','a679cfd775546b23c33cd9f32aac887cd619e794',1),(3,'Carlos Fernandes','Ortopedista Veterinário',0,'loginCarlos','c1eade068804bc364bcb50477599bef344d1ecda',1),(4,'Ana Beatriz Lima','Dermatologista Veterinário',0,'loginAna','9b55a58ab6218df4aef6b5f7651dc7a5cf9dcb34',1),(5,'Lucas Oliveira','Cardiologista Veterinário',0,'loginLucas','7074dff44b67ef4ae25fba439b82519be7419121',1),(6,'Fernanda Castro','Neurologista Veterinário',0,'loginFernanda','8eff99b6308559e8fd103064b6f877db3bf22c48',1),(7,'Pedro Mendes','Oftalmologista Veterinário',0,'loginPedro','ea12a98952dd49318ecd0d83aab11e888ec75612',1),(8,'Juliana Ribeiro','Especialista em Comportamento Animal',0,'loginJuliana','874d970f63ec2c4d89b2c47307a31e4ce40b2f43',1),(9,'Bruno Almeida','Especialista em Banho e Tosa',0,'loginBruno','680b89f47705fc361b1cf5f89478103bdccd2e28',1),(10,'Cláudia Nogueira','Esteticista Animal',0,'loginClaudia','2cff851c45b02b1a748073082fd903e607f57fa4',1),(11,'Gabriel Martins','Cirurgião Veterinário',0,'loginGabriel','bf6eb8685f76e6f5553d1aecbff5b63a32e1191d',2),(12,'Patrícia Silva','Clínico Geral',0,'loginPatricia','fb42f4b180801b46544fc164b6ef6dc05d7e916c',2),(13,'Renato Gomes','Ortopedista Veterinário',0,'loginRenato','bd26c0adb86740ae7ec47b9ed8a9d8c8f80b1691',2),(14,'Bianca Carvalho','Dermatologista Veterinário',0,'loginBianca','4fddbb536a6911049ac84515372c3d0fcd7cbffa',2),(15,'Thiago Rocha','Cardiologista Veterinário',0,'loginThiago','ba975d64187ad3797f72ed228ef6e7144b85d8fc',2),(16,'Larissa Pinto','Neurologista Veterinário',0,'loginLarissa','1cf08505e28cc402cab12aea55e77ba86f161ad0',2),(17,'Diego Costa','Oftalmologista Veterinário',0,'loginDiego','9857bee67342d998cf5c33117fe0b1f6dc26e83b',2),(18,'Isabela Fernandes','Especialista em Comportamento Animal',0,'loginIsabela','5c703989296a9ae47b5360ca78ec92b34219995a',2),(19,'Rodrigo Barros','Especialista em Banho e Tosa',0,'loginRodrigo','f6eea21229d65e2b908eec7a19226fe7313cb47b',2),(20,'Camila Azevedo','Esteticista Animal',0,'loginCamila','712b41217e62ce3872ed53ea3b50ff488cdc9c8e',2),(21,'Vinícius Almeida','Cirurgião Veterinário',0,'loginVinicius','f8f3be27d0bd8df6673e243023dcfb09a76517a1',3),(22,'Tatiane Ramos','Clínico Geral',0,'loginTatiane','fa75b5819c39a9b860ba5cd12a30c51d1a122985',3),(23,'Eduardo Moreira','Ortopedista Veterinário',0,'loginEduardo','bc41743be8e907cab0cd6b6b4fd6abb5d83211a1',3),(24,'Roberta Lima','Dermatologista Veterinário',0,'loginRoberta','8050d7085ccce098ff39f6597379e768cf02f6e2',3),(25,'Marcelo Antunes','Cardiologista Veterinário',0,'loginMarcelo','ae26ed2cdf0f2cbcb36225d4e11907eb85bf535a',3),(26,'Priscila Duarte','Neurologista Veterinário',0,'loginPriscila','cd4072addc435ec2480ae95c6a4cc2c8393480ef',3),(27,'Fábio Correia','Oftalmologista Veterinário',0,'loginFabio','20f2662278ee644791440c15a94c8fa4aaa6cbc6',3),(28,'Amanda Martins','Especialista em Comportamento Animal',0,'loginAmanda','4aa59930fcf12651ad1e8cc2772a946ca5db3188',3),(29,'Rafael Sousa','Especialista em Banho e Tosa',0,'loginRafael','1e053654f5e2cdd9f4f4fe577550bfb412342efd',3),(30,'Daniela Freitas','Esteticista Animal',0,'loginDaniela','0711ae4321b1c12d3b559c3bc1d21511b9805abc',3),(31,'Bruna Assis','Anestesiologista Veterinário',0,'loginBruna','56fd8206b9b7d8072e21e8ee1d8fa9e0ec006567',4),(32,'André Barbosa','Oncologista Veterinário',0,'loginAndre','f0188a994a61a1e252d0b4474150e26b7dffd304',4),(33,'Simone Vieira','Endocrinologista Veterinário',0,'loginSimone','a6bbb4dd2b771ca70428c47b77b06b953ca4888f',4),(34,'Gustavo Batista','Especialista em Animais Silvestres',0,'loginGustavo','bbcde67850d2052d2a5c1ed28ccd73d183223851',4),(35,'Débora Monteiro','Especialista em Reprodução Animal',0,'loginDebora','ae43011c08ba725933fdcfb899c88165a41d639c',4),(36,'Matheus Peixoto','Nutricionista Veterinário',0,'loginMatheus','15cfcb29cf1ce224e91f174db4744f7bb935b13a',5),(37,'Aline Costa','Nefrologista Veterinário',0,'loginAline','83cfc6cec203167092712155d47c89a31606b56b',5),(38,'Otávio Nunes','Infectologista Veterinário',0,'loginOtavio','759ee6de42d353aa6e776622e4764608af86dfeb',5),(39,'Elaine Castro','Patologista Veterinário',0,'loginElaine','5b4ea2b8370324a05048fd530961bacfeeac4bde',5),(40,'Leandro Rezende','Especialista em Fisioterapia Animal',0,'loginLeandro','c0cb0f0f4380810abc3f1a792aa0504ce1465fd9',5);
/*!40000 ALTER TABLE `veterinario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 13:37:57
