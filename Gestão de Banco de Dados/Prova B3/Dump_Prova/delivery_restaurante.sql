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
INSERT INTO `restaurante` VALUES (1,'Coxinha Da Hora Express','21.840.695/0001-90',15,2.90909,3,0),(2,'Crepe Brasileiro House','32.071.586/0001-71',10,2.875,1,0),(3,'Pastel Caseiro Lounge','90.471.635/0001-60',10,2.6,1,0),(4,'Massa Brasileiro Lanches','39.758.042/0001-21',10,2.73333,4,0),(5,'Pastel Rápido Point','40.876.532/0001-01',20,2.65,3,0),(6,'Massa Gourmet Bistrô','67.098.314/0001-40',15,2.95,2,0),(7,'Tapioca Top Bar','90.641.275/0001-05',10,2.33333,1,0),(8,'Hamburguer Saboroso Express','67.934.852/0001-27',15,3.45,4,0),(9,'Coxinha Caseiro Bistrô','73.412.680/0001-24',10,2.79167,2,0),(10,'Coxinha Caseiro Bar','38.214.967/0001-49',20,3,1,0),(11,'Hamburguer Saboroso Lanches','89.546.723/0001-02',0,2.75,3,0),(12,'Churrasco Rápido Restaurante','12.360.459/0001-85',0,2.75,2,0),(13,'Massa Rápido Grill','93.502.478/0001-09',15,2.25,2,0),(14,'Crepe Top House','07.341.562/0001-48',20,2.85294,3,0),(15,'Pastel Caseiro Bistrô','45.162.390/0001-34',15,2.85714,1,0),(16,'Sushi Caseiro Point','54.291.306/0001-73',15,2.38235,2,0),(17,'Hamburguer Saboroso Bar','98.253.146/0001-43',10,2.52273,1,0),(18,'Pizza Delícia Express','28.479.163/0001-18',15,3.19048,3,0),(19,'Sushi Original Grill','91.640.872/0001-70',15,2.95455,1,0),(20,'Coxinha Da Hora Food','73.026.184/0001-32',15,2.6,2,0),(21,'Churrasco Premium Express','87.526.094/0001-15',0,2.52083,1,0),(22,'Pizza Gourmet Restaurante','31.780.592/0001-35',20,2.97826,1,0),(23,'Sushi Da Hora Point','23.649.710/0001-42',5,2.08824,3,0),(24,'Salada Delícia Lounge','20.873.956/0001-05',15,2.57143,3,0),(25,'Pizza Rápido Lounge','61.783.259/0001-40',15,2.58333,1,0),(26,'Massa Caseiro Lounge','01.829.576/0001-29',15,2.46429,2,0),(27,'Sushi Premium Grill','37.815.604/0001-04',20,2.63333,2,0),(28,'Churrasco Gourmet Bistrô','34.725.019/0001-17',5,2,1,0),(29,'Coxinha Caseiro Grill','82.103.467/0001-21',5,2.92857,1,0),(30,'Crepe Top Bar','62.137.904/0001-10',5,2.66667,3,0),(31,'Crepe Premium Lanches','26.541.809/0001-14',15,2.9,2,0),(32,'Pizza Rápido Express','94.052.873/0001-91',0,2.03125,4,0),(33,'Pastel Premium Point','13.824.609/0001-27',15,2.43333,1,0),(34,'Crepe Caseiro Grill','51.038.972/0001-06',5,2.57895,4,0),(35,'Tapioca Original Express','30.815.426/0001-64',0,3.03571,4,0),(36,'Salada Caseiro Food','63.987.152/0001-40',20,2.78571,4,0),(37,'Coxinha Rápido Grill','73.916.528/0001-89',5,2.6875,1,0),(38,'Churrasco Saboroso Express','30.158.746/0001-99',5,2.625,2,0),(39,'Pastel Rápido Restaurante','82.140.673/0001-01',5,2.84615,3,0),(40,'Pizza Gourmet Bar','93.814.750/0001-88',10,2.73684,3,0),(41,'Pizza Delícia House','95.748.021/0001-04',15,2.63889,4,0),(42,'Churrasco Top Lounge','49.053.286/0001-62',20,2.91667,2,0),(43,'Coxinha Brasileiro Restaurante','56.729.108/0001-74',5,2.65385,1,0),(44,'Pastel Top House','94.216.750/0001-49',0,2.625,2,0),(45,'Salada Original Restaurante','73.025.469/0001-59',15,2.95455,2,0),(46,'Salada Gourmet Food','97.182.064/0001-92',5,3.1875,2,0),(47,'Pizza Original Point','74.092.835/0001-55',15,2.16667,1,0),(48,'Salada Brasileiro Express','23.064.175/0001-68',10,2.42105,1,0),(49,'Sushi Brasileiro Lanches','78.230.461/0001-48',15,2.77778,3,0),(50,'Pizza Rápido Express','78.490.135/0001-70',5,3.29167,3,0),(51,'Salada Da Hora Food','12.645.739/0001-30',20,2.9375,3,0),(52,'Sushi Top Food','56.387.190/0001-04',10,2.94118,1,0),(53,'Pastel Gourmet Bar','92.357.068/0001-40',10,2.5,4,0),(54,'Salada Rápido Express','42.167.350/0001-97',10,2.39286,4,0),(55,'Pizza Caseiro Food','54.781.096/0001-00',10,3.38095,2,0),(56,'Tacos Caseiro Bar','13.872.549/0001-18',15,2.80556,4,0),(57,'Sushi Original Point','72.905.134/0001-62',20,2.58333,4,0),(58,'Tapioca Original House','90.273.548/0001-06',0,2.42308,3,0),(59,'Salada Top Lanches','85.419.327/0001-55',10,2.82353,2,0),(60,'Tacos Original House','60.953.821/0001-74',0,2.83333,3,0),(61,'Tapioca Da Hora Bar','80.275.419/0001-95',10,3.16667,3,0),(62,'Crepe Delícia Bistrô','78.103.529/0001-28',10,3.19231,4,0),(63,'Massa Delícia Bar','84.712.653/0001-93',15,2.69444,3,0),(64,'Sushi Original House','04.192.765/0001-21',0,1.84615,4,0),(65,'Tapioca Premium Grill','29.740.185/0001-52',20,2.8,2,0),(66,'Sushi Original Lounge','02.389.546/0001-01',15,2.55263,4,0),(67,'Hamburguer Rápido Grill','75.631.028/0001-26',20,2.84783,3,0),(68,'Pizza Brasileiro Food','67.034.295/0001-98',0,3.16667,4,0),(69,'Tacos Top Food','38.624.091/0001-09',10,2.96875,3,0),(70,'Churrasco Gourmet Lanches','54.937.126/0001-16',0,3.15789,3,0),(71,'Crepe Top Express','56.793.042/0001-81',15,2.88235,2,0),(72,'Hamburguer Top Food','30.569.182/0001-87',20,3.17308,3,0),(73,'Hamburguer Brasileiro House','50.739.642/0001-85',5,2.78125,1,0),(74,'Hamburguer Gourmet Bar','45.867.190/0001-87',20,2.29167,2,0),(75,'Hamburguer Original Food','56.017.498/0001-50',20,2.97222,2,0),(76,'Churrasco Delícia Point','91.870.642/0001-05',20,3.1,1,0),(77,'Salada Gourmet Restaurante','29.718.043/0001-99',20,2.54167,3,0),(78,'Crepe Brasileiro Bistrô','39.467.520/0001-44',10,2.44231,1,0),(79,'Sushi Rápido Restaurante','93.418.760/0001-02',0,3,4,0),(80,'Churrasco Premium Bar','84.735.201/0001-27',5,2.17647,4,0),(81,'Tacos Brasileiro Lounge','67.830.521/0001-47',10,3,3,0),(82,'Hamburguer Premium Express','71.049.652/0001-69',5,3.23913,1,0),(83,'Pizza Delícia Grill','30.684.721/0001-29',10,3.10526,1,0),(84,'Tacos Saboroso Bistrô','01.476.958/0001-16',5,2.5,1,0),(85,'Churrasco Delícia Bar','05.163.924/0001-22',15,2.68421,3,0),(86,'Tacos Brasileiro House','81.052.463/0001-07',15,3.29167,1,0),(87,'Sushi Top Food','69.587.204/0001-77',20,2.6,2,0),(88,'Salada Caseiro Food','12.470.659/0001-90',5,3.21875,4,0),(89,'Hamburguer Da Hora Bar','35.486.172/0001-00',0,2.9,1,0),(90,'Pizza Brasileiro House','07.591.236/0001-99',15,2.92105,3,0),(91,'Pizza Caseiro Lounge','94.310.867/0001-97',5,3.1,1,0),(92,'Crepe Rápido Bistrô','74.062.539/0001-01',5,3.33333,4,0),(93,'Massa Rápido Bistrô','87.354.192/0001-12',0,3.26471,1,0),(94,'Churrasco Original Lounge','84.920.716/0001-05',0,2.78125,3,0),(95,'Coxinha Saboroso Express','57.481.396/0001-53',15,2.58333,3,0),(96,'Pastel Gourmet Bistrô','53.248.601/0001-84',5,2.58929,3,0),(97,'Crepe Da Hora Express','67.239.501/0001-04',20,2.375,3,0),(98,'Salada Top Point','18.275.034/0001-54',5,2.8125,4,0),(99,'Churrasco Gourmet Point','71.625.894/0001-53',10,3.73077,2,0),(100,'Crepe Top Bistrô','65.081.439/0001-31',15,3,2,0);
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

-- Dump completed on 2025-06-10 19:47:58
