-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
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
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` varchar(100) DEFAULT NULL,
  `curso_id_curso` int NOT NULL,
  PRIMARY KEY (`id_professor`,`curso_id_curso`),
  UNIQUE KEY `id_professor_UNIQUE` (`id_professor`),
  KEY `fk_professor_curso_idx` (`curso_id_curso`),
  CONSTRAINT `fk_professor_curso` FOREIGN KEY (`curso_id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Louella Mitchell',8),(2,'Robert Hicks',5),(3,'Anthony Hight',7),(4,'James Greenwell',2),(5,'Richard Batt',5),(6,'Thomas Soderberg',8),(7,'Calvin Koontz',8),(8,'Richard Spencer',11),(9,'Janelle Baran',6),(10,'Hollie Britton',7),(11,'Heather Carter',9),(12,'Robert Bednar',11),(13,'Sandra Minor',10),(14,'Kelly Dayton',1),(15,'Ed Crowley',6),(16,'Mark Smith',9),(17,'Jackie Onusko',11),(18,'Adam Bell',8),(19,'Joseph Lehn',11),(20,'Benjamin Tobin',9),(21,'Carolyn Emerson',3),(22,'Krystal Coburn',2),(23,'Leroy Wilborn',8),(24,'Frank Coleman',11),(25,'Clement French',1),(26,'Ivan Boles',4),(27,'Ismael Granger',5),(28,'Harry Thompson',6),(29,'Basil Davis',3),(30,'Fran Levandowski',9),(31,'William Base',5),(32,'Norman Edwards',2),(33,'Kevin Phinney',7),(34,'Victoria Pettit',10),(35,'Patrice Jacobsen',9),(36,'Ina Bryce',4),(37,'James Cooper',11),(38,'Dana Genova',11),(39,'Kasie Brown',7),(40,'Muoi Leon',3),(41,'Toni Scott',4),(42,'Susan Harlan',5),(43,'Ralph Ingram',9),(44,'Virginia Knapp',3),(45,'John Swanson',1),(46,'Roger Pendergrass',9),(47,'William Racine',10),(48,'Hayley Alexander',11),(49,'Albert Perry',9),(50,'Robert Haith',6),(51,'Adrienne Willis',8),(52,'Catherine Scarbrough',6),(53,'Derrick Gibbs',5),(54,'Shanda Heck',5),(55,'Timothy Farmer',10),(56,'Lilly Salters',3),(57,'Yvonne Williams',9),(58,'Paul Meyers',11),(59,'Marianne Kelly',10),(60,'John Freeland',1),(61,'Maureen Chang',9),(62,'Albert Ly',2),(63,'Richard Garcia',10),(64,'Mark Martinez',9),(65,'Earl Gaut',10),(66,'Mildred Holloway',11),(67,'Kimberley Kass',7),(68,'Robert Mildenberger',11),(69,'Raymond Fruchter',2),(70,'Daisy Greene',2),(71,'Jennie Weiland',6),(72,'Dolores Osdoba',9),(73,'Oscar Lopes',4),(74,'Larry Fabela',8),(75,'Haley Mckinney',8),(76,'Glenn Szeto',7),(77,'David Higgins',7),(78,'Simona Whitney',2),(79,'Jamie Salas',6),(80,'Jamie Lewis',10),(81,'Cynthia Vito',7),(82,'Amy Hogan',10),(83,'Damon Eichenberger',8),(84,'Robert Reynolds',10),(85,'Gertrude Beckley',3),(86,'Alice Jackola',8),(87,'Jerlene Henderson',4),(88,'Shirley Ingram',1),(89,'Zachary Smith',10),(90,'Linda Reaver',7),(91,'Carla Guinane',9),(92,'Kenneth Simpson',10),(93,'David Garza',7),(94,'Steve Veilleux',3),(95,'Kristen Holder',9),(96,'Regina Winters',10),(97,'Alfonzo Lofaro',11),(98,'Pedro Hofmeister',7),(99,'Harry Fletcher',10),(100,'Cleo Allen',8);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 23:46:06
