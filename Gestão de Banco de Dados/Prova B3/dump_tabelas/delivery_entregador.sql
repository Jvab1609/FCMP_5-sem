-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: delivery
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
-- Table structure for table `entregador`
--

DROP TABLE IF EXISTS `entregador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregador` (
  `id_entregador` int NOT NULL AUTO_INCREMENT,
  `nome_entregador` varchar(100) DEFAULT NULL,
  `cnh` varchar(11) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `nota_media_entregador` float DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_entregador`),
  UNIQUE KEY `cnh_UNIQUE` (`cnh`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregador`
--

LOCK TABLES `entregador` WRITE;
/*!40000 ALTER TABLE `entregador` DISABLE KEYS */;
INSERT INTO `entregador` VALUES (1,'Joana Monteiro','34601114467','607.481.395-75',0,0),(2,'João Miguel Vieira','71892749347','016.325.974-70',0,0),(3,'Sr. Arthur Miguel Cavalcante','38203213615','873.690.415-57',0,0),(4,'Vinicius da Luz','43842019147','256.970.348-65',0,0),(5,'Matheus Marques','63517187452','580.463.971-48',0,0),(6,'Enzo Gabriel Sampaio','55387624856','516.987.423-55',0,0),(7,'Isadora Araújo','33530868428','891.032.645-05',0,0),(8,'Caio Silva','88703349721','178.640.529-67',0,0),(9,'Maria Flor Costela','94806849827','486.031.725-44',0,0),(10,'Rafael Viana','10005034648','731.068.492-31',0,0),(11,'Kaique Fogaça','76255512444','035.496.872-65',0,0),(12,'Dr. André Silveira','87788493594','056.932.781-40',0,0),(13,'Nicole da Cruz','11510305772','638.274.109-40',0,0),(14,'João Guilherme Pastor','84248766978','509.763.841-75',0,0),(15,'Manuella das Neves','96481609614','652.319.047-16',0,0),(16,'Gabriel Lima','86427437585','961.024.783-04',0,0),(17,'Cauã Mendonça','96719564524','793.542.680-56',0,0),(18,'Ana Beatriz Barros','60497853838','103.947.628-78',0,0),(19,'Dante Aparecida','15337059684','079.641.358-48',0,0),(20,'Renan Machado','41950080472','826.973.450-00',0,0),(21,'Antonella Lopes','51102287861','974.680.215-11',0,0),(22,'Dr. Vitor Gabriel Fonseca','70345102162','406.792.185-30',0,0),(23,'Sr. Augusto Nunes','42366237174','879.306.145-57',0,0),(24,'Luiz Miguel Caldeira','76868668245','532.640.719-16',0,0),(25,'Anthony Gabriel Macedo','61322974630','492.856.730-74',0,0),(26,'Dr. Vicente das Neves','14271447932','931.026.857-30',0,0),(27,'Kevin Cassiano','60672876634','359.274.068-74',0,0),(28,'Otto Cardoso','77697227924','794.801.635-00',0,0),(29,'Dr. Cauã Gomes','33258782261','529.803.167-68',0,0),(30,'Alícia Novais','87750146925','925.471.683-91',0,0),(31,'Sr. Diego Cavalcanti','10293685025','304.521.796-61',0,0),(32,'Henry Gabriel Sousa','60544127567','492.180.736-13',0,0),(33,'Dra. Hadassa da Costa','55305759347','687.194.305-66',0,0),(34,'Theodoro Almeida','77859943721','916.574.820-49',0,0),(35,'Vitor Gabriel Rios','39896275217','054.631.298-51',0,0),(36,'Henry Gabriel Teixeira','55248593207','827.436.901-78',0,0),(37,'Diego Rezende','12913666414','820.793.514-60',0,0),(38,'Luiz Otávio Nunes','59826535199','093.861.274-31',0,0),(39,'Sra. Maria Silveira','81856212957','396.814.257-82',0,0),(40,'Emilly Almeida','67923502508','467.051.839-93',0,0),(41,'Luna Pimenta','53305066581','408.963.527-65',0,0),(42,'Sra. Milena Alves','99382026862','385.906.217-40',0,0),(43,'Benicio Barros','49741735600','890.761.432-69',0,0),(44,'Lavínia Montenegro','38468659248','564.097.812-02',0,0),(45,'Brenda Martins','60507705390','935.401.687-10',0,0),(46,'Caroline Santos','55025636188','205.917.836-30',0,0),(47,'Henrique Costela','11002777793','945.160.873-75',0,0),(48,'Srta. Alice Castro','90623427998','256.817.903-12',0,0),(49,'Ravi Lucca da Costa','80359573966','503.417.962-80',0,0),(50,'Cecília Pereira','41517695722','967.358.140-10',0,0),(51,'João Pedro Novaes','69666505056','367.840.512-62',0,0),(52,'Milena da Costa','71650450802','562.108.974-01',0,0),(53,'Valentina Almeida','67210067493','782.945.163-09',0,0),(54,'Luísa Gomes','86857815505','321.465.708-90',0,0),(55,'Maria Eduarda Porto','83282253352','451.762.093-06',0,0),(56,'Sra. Carolina Casa Grande','20890363293','856.724.019-02',0,0),(57,'Antony Pereira','13968904503','874.651.392-28',0,0),(58,'Evelyn Casa Grande','37780600866','326.517.048-90',0,0),(59,'Ana Beatriz Pires','10947480810','523.981.706-59',0,0),(60,'Calebe Rios','31165545236','176.498.032-87',0,0),(61,'Rafaela Rios','51181262983','084.921.653-24',0,0),(62,'Pedro Lucas Gomes','37442032026','245.190.638-33',0,0),(63,'Carolina Pinto','91609032717','643.085.792-10',0,0),(64,'Lara Albuquerque','25072691588','032.619.785-03',0,0),(65,'Paulo Fernandes','98135758179','386.251.407-26',0,0),(66,'Sarah Azevedo','32159746928','537.289.406-74',0,0),(67,'Eduarda Andrade','62787725768','519.687.032-68',0,0),(68,'Henry Gabriel Barros','15575689994','281.634.795-82',0,0),(69,'Isabel Pimenta','86484776746','650.487.312-71',0,0),(70,'Srta. Marina Martins','52650088739','768.350.291-02',0,0),(71,'Joaquim Cunha','47340034882','681.342.970-13',0,0),(72,'Antônio Pacheco','97372199079','054.397.261-52',0,0),(73,'Julia Oliveira','12946178731','705.234.681-80',0,0),(74,'Srta. Nina Pinto','25928260342','456.710.983-00',0,0),(75,'Juliana Carvalho','42957537507','236.418.759-19',0,0),(76,'Asafe Moreira','98910501601','842.750.319-97',0,0),(77,'Srta. Alexia Carvalho','32569944952','864.529.130-42',0,0),(78,'Marcelo da Mota','12994942799','451.036.927-16',0,0),(79,'Kamilly Andrade','78563999779','259.186.374-19',0,0),(80,'Ana Beatriz Araújo','59488958286','563.417.092-34',0,0),(81,'Bárbara Andrade','48556841229','089.741.352-05',0,0),(82,'Heitor Aparecida','20141271371','486.273.590-83',0,0),(83,'Marina Dias','92229471984','092.613.584-89',0,0),(84,'Asafe Dias','16062576286','934.806.275-10',0,0),(85,'Juan Aparecida','55701132973','157.643.908-93',0,0),(86,'Rael Andrade','19130241643','580.632.714-08',0,0),(87,'Ravi Lucca Rios','31589394958','089.356.741-84',0,0),(88,'Brenda Cavalcanti','71412030677','698.325.741-37',0,0),(89,'Brayan Montenegro','39668641432','604.975.218-49',0,0),(90,'Srta. Luara Pastor','50443986591','310.542.689-24',0,0),(91,'Luiz Felipe da Cruz','83669061387','104.239.785-60',0,0),(92,'Marcela Rios','30010809503','834.097.625-74',0,0),(93,'José Miguel Pacheco','50457026435','163.580.924-05',0,0),(94,'Juliana Pires','25983811181','964.328.507-38',0,0),(95,'Dra. Lunna da Cruz','50863260746','170.695.328-30',0,0),(96,'Hellena Sales','77242438578','541.783.069-01',0,0),(97,'Bento Campos','78664845229','347.962.180-50',0,0),(98,'Ana Borges','51871925823','467.219.305-52',0,0),(99,'Esther Melo','45455683530','381.570.942-32',0,0),(100,'Asafe Sá','70244788227','742.186.953-00',0,0);
/*!40000 ALTER TABLE `entregador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:13:13
