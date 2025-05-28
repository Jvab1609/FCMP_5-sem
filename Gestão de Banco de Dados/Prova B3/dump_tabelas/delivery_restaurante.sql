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
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `id_restaurante` int NOT NULL AUTO_INCREMENT,
  `nome_rest` varchar(50) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `taxa_entrega` float DEFAULT NULL,
  `nota_med_restaurante` float DEFAULT NULL,
  `faixa_preco` int DEFAULT NULL,
  `excluido` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_restaurante`),
  UNIQUE KEY `cnpj_UNIQUE` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'Pizza Top Bistrô','45.320.916/0001-67',0,0,2,0),(2,'Massa Delícia Express','20.914.857/0001-24',10,0,4,0),(3,'Sushi Premium Restaurante','94.513.620/0001-78',15,0,1,0),(4,'Coxinha Da Hora Lounge','47.802.165/0001-40',5,0,1,0),(5,'Churrasco Da Hora Point','01.634.529/0001-20',10,0,2,0),(6,'Crepe Delícia House','03.749.286/0001-09',5,0,3,0),(7,'Pastel Rápido Lounge','78.196.253/0001-70',0,0,2,0),(8,'Churrasco Rápido Restaurante','51.340.879/0001-51',15,0,3,0),(9,'Hamburguer Caseiro Bistrô','96.130.487/0001-04',0,0,2,0),(10,'Salada Delícia Express','20.458.793/0001-02',10,0,1,0),(11,'Crepe Caseiro Bistrô','72.108.943/0001-43',20,0,4,0),(12,'Hamburguer Rápido House','41.023.689/0001-57',20,0,1,0),(13,'Pizza Brasileiro Point','85.219.470/0001-01',10,0,4,0),(14,'Sushi Saboroso Grill','02.368.795/0001-10',20,0,1,0),(15,'Coxinha Delícia Food','94.258.307/0001-30',20,0,3,0),(16,'Coxinha Top Bar','38.952.764/0001-50',20,0,4,0),(17,'Pizza Original Lanches','52.693.487/0001-39',10,0,3,0),(18,'Coxinha Premium Bar','08.345.297/0001-39',20,0,4,0),(19,'Salada Brasileiro House','01.593.467/0001-55',0,0,3,0),(20,'Crepe Top Food','72.539.048/0001-83',15,0,4,0),(21,'Sushi Da Hora Restaurante','07.265.841/0001-70',15,0,4,0),(22,'Tacos Rápido Express','17.938.042/0001-70',0,0,1,0),(23,'Pizza Original Point','56.940.872/0001-94',20,0,3,0),(24,'Pizza Gourmet Bistrô','75.483.196/0001-11',20,0,3,0),(25,'Tacos Original Express','56.708.219/0001-02',10,0,4,0),(26,'Pastel Delícia Express','48.129.056/0001-77',20,0,3,0),(27,'Pizza Premium Restaurante','82.451.067/0001-07',0,0,1,0),(28,'Pizza Gourmet Bar','40.813.296/0001-84',20,0,1,0),(29,'Massa Top Point','29.756.184/0001-04',0,0,4,0),(30,'Massa Da Hora Point','03.571.982/0001-60',15,0,4,0),(31,'Pastel Rápido Bistrô','32.197.064/0001-10',20,0,4,0),(32,'Tapioca Premium Grill','41.873.250/0001-13',0,0,1,0),(33,'Crepe Da Hora Bar','89.403.526/0001-26',0,0,4,0),(34,'Massa Rápido Bar','76.314.209/0001-91',20,0,1,0),(35,'Pastel Caseiro Bar','83.741.259/0001-10',5,0,4,0),(36,'Coxinha Rápido House','74.206.953/0001-47',0,0,1,0),(37,'Churrasco Original Point','05.863.192/0001-83',10,0,2,0),(38,'Pastel Caseiro Lounge','56.832.174/0001-75',10,0,3,0),(39,'Churrasco Premium Grill','82.194.756/0001-83',0,0,4,0),(40,'Massa Caseiro Bistrô','83.729.150/0001-68',20,0,3,0),(41,'Tapioca Premium Point','71.254.803/0001-10',5,0,4,0),(42,'Salada Gourmet Lounge','03.761.825/0001-17',5,0,1,0),(43,'Pizza Gourmet Restaurante','51.689.243/0001-10',20,0,2,0),(44,'Tapioca Rápido Lanches','83.159.076/0001-91',0,0,3,0),(45,'Pizza Gourmet Express','19.265.387/0001-36',5,0,1,0),(46,'Pizza Gourmet Lanches','54.918.360/0001-04',15,0,2,0),(47,'Tapioca Rápido Bistrô','06.294.187/0001-60',5,0,4,0),(48,'Tacos Caseiro Lounge','34.095.167/0001-03',10,0,2,0),(49,'Tapioca Premium House','81.954.730/0001-23',20,0,4,0),(50,'Tapioca Gourmet Express','70.823.164/0001-02',0,0,2,0),(51,'Hamburguer Rápido Bar','79.823.415/0001-15',15,0,4,0),(52,'Crepe Caseiro Restaurante','73.062.415/0001-63',20,0,4,0),(53,'Crepe Caseiro House','28.605.417/0001-05',0,0,4,0),(54,'Tacos Brasileiro Express','20.596.138/0001-02',0,0,1,0),(55,'Crepe Gourmet Bar','43.086.912/0001-30',20,0,3,0),(56,'Hamburguer Da Hora Bar','83.074.219/0001-62',20,0,4,0),(57,'Massa Saboroso Grill','19.580.674/0001-30',20,0,3,0),(58,'Sushi Delícia Point','34.590.127/0001-20',10,0,3,0),(59,'Pizza Top Lanches','93.785.104/0001-30',0,0,4,0),(60,'Coxinha Rápido Restaurante','49.381.250/0001-08',0,0,3,0),(61,'Pizza Delícia Food','24.603.185/0001-97',15,0,1,0),(62,'Massa Rápido Lounge','13.075.492/0001-26',20,0,2,0),(63,'Salada Brasileiro Lounge','07.423.168/0001-59',0,0,2,0),(64,'Crepe Gourmet House','73.945.618/0001-06',0,0,1,0),(65,'Churrasco Delícia Restaurante','31.285.460/0001-37',15,0,3,0),(66,'Tapioca Gourmet House','89.107.346/0001-05',5,0,4,0),(67,'Pizza Saboroso House','21.703.946/0001-94',0,0,3,0),(68,'Churrasco Rápido Lanches','39.106.527/0001-30',20,0,1,0),(69,'Salada Da Hora Lounge','48.309.625/0001-66',20,0,2,0),(70,'Coxinha Original Grill','79.526.810/0001-36',5,0,2,0),(71,'Sushi Top Express','68.934.105/0001-51',10,0,2,0),(72,'Churrasco Caseiro Restaurante','52.971.083/0001-60',0,0,2,0),(73,'Coxinha Gourmet Bar','40.189.372/0001-22',10,0,1,0),(74,'Sushi Delícia Food','53.068.142/0001-57',15,0,4,0),(75,'Sushi Rápido Point','76.319.054/0001-86',20,0,3,0),(76,'Massa Top Restaurante','72.408.169/0001-96',15,0,1,0),(77,'Hamburguer Saboroso Lanches','35.469.781/0001-42',10,0,3,0),(78,'Coxinha Caseiro Lanches','87.026.459/0001-42',20,0,3,0),(79,'Coxinha Top Lounge','40.153.628/0001-41',15,0,3,0),(80,'Tapioca Premium Restaurante','52.830.974/0001-04',10,0,2,0),(81,'Sushi Saboroso Bistrô','97.508.364/0001-19',0,0,3,0),(82,'Tacos Top Point','64.530.128/0001-40',10,0,3,0),(83,'Sushi Original Bistrô','23.160.579/0001-55',10,0,2,0),(84,'Tapioca Top Lanches','42.875.960/0001-45',15,0,2,0),(85,'Hamburguer Delícia Grill','61.537.042/0001-50',5,0,3,0),(86,'Tacos Gourmet Restaurante','39.415.862/0001-10',0,0,2,0),(87,'Churrasco Rápido Food','28.064.953/0001-32',15,0,2,0),(88,'Massa Rápido Bistrô','95.283.017/0001-00',15,0,2,0),(89,'Massa Saboroso Point','50.219.634/0001-08',5,0,4,0),(90,'Tacos Caseiro Point','96.201.784/0001-95',20,0,3,0),(91,'Sushi Da Hora Lounge','89.725.360/0001-64',10,0,2,0),(92,'Tapioca Top Lounge','97.028.534/0001-68',0,0,4,0),(93,'Sushi Caseiro Lanches','83.271.594/0001-00',10,0,1,0),(94,'Massa Top Point','71.059.234/0001-52',10,0,4,0),(95,'Crepe Da Hora Lounge','23.069.517/0001-32',0,0,2,0),(96,'Salada Top Bistrô','51.607.938/0001-05',15,0,2,0),(97,'Massa Caseiro Express','24.695.103/0001-81',5,0,3,0),(98,'Salada Saboroso Bar','47.831.506/0001-06',0,0,3,0),(99,'Sushi Delícia Bistrô','41.903.657/0001-46',0,0,2,0),(100,'Pizza Rápido Bistrô','03.521.764/0001-10',20,0,3,0);
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:22:04
