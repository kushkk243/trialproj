-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proj
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-19 12:41:29.149689','2','4',1,'[{\"added\": {}}]',7,1),(2,'2020-05-24 15:46:38.068483','2','4',2,'[]',7,1),(3,'2020-05-31 13:52:53.078010','3','0',1,'[{\"added\": {}}]',7,1),(4,'2020-05-31 13:53:35.460894','4','1',1,'[{\"added\": {}}]',7,1),(5,'2020-05-31 13:54:43.664393','5','2',1,'[{\"added\": {}}]',7,1),(6,'2020-05-31 14:07:14.213432','6','3',1,'[{\"added\": {}}]',7,1),(7,'2020-05-31 14:08:33.736308','5','2',2,'[{\"changed\": {\"fields\": [\"Possibilities\"]}}]',7,1),(8,'2020-05-31 14:09:30.013194','7','-1',1,'[{\"added\": {}}]',7,1),(9,'2020-05-31 14:11:26.386889','8','5',1,'[{\"added\": {}}]',7,1),(10,'2020-05-31 15:43:10.289741','1','Methane',1,'[{\"added\": {}}]',8,1),(11,'2020-06-14 12:14:32.626736','2','Ethane',1,'[{\"added\": {}}]',8,1),(12,'2020-06-14 12:15:25.388244','3','Propane',1,'[{\"added\": {}}]',8,1),(13,'2020-06-14 12:18:52.736379','4','Butane',1,'[{\"added\": {}}]',8,1),(14,'2020-06-14 12:21:55.818294','5','Pentane',1,'[{\"added\": {}}]',8,1),(15,'2020-06-14 12:22:49.605491','6','Hexane',1,'[{\"added\": {}}]',8,1),(16,'2020-06-14 12:25:04.386999','7','Heptane',1,'[{\"added\": {}}]',8,1),(17,'2020-06-14 12:25:58.482715','8','Octane',1,'[{\"added\": {}}]',8,1),(18,'2020-06-14 12:26:46.605538','9','Nonane',1,'[{\"added\": {}}]',8,1),(19,'2020-06-14 12:27:25.112448','10','Decane',1,'[{\"added\": {}}]',8,1),(20,'2020-06-14 12:28:31.038170','11','Undecane',1,'[{\"added\": {}}]',8,1),(21,'2020-06-14 12:29:25.728599','12','Dodecane',1,'[{\"added\": {}}]',8,1),(22,'2020-06-14 12:30:12.431875','13','Tridecane',1,'[{\"added\": {}}]',8,1),(23,'2020-06-14 12:30:49.093826','14','Tetradecane',1,'[{\"added\": {}}]',8,1),(24,'2020-06-14 12:31:07.842875','1','Methane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(25,'2020-06-14 12:31:24.379757','2','Ethane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(26,'2020-06-14 12:31:34.586826','3','Propane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(27,'2020-06-14 12:31:50.475007','4','Butane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(28,'2020-06-14 12:31:59.103531','5','Pentane',2,'[]',8,1),(29,'2020-06-14 13:27:07.450748','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(30,'2020-06-14 13:28:37.522020','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(31,'2020-06-14 13:31:35.836114','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(32,'2020-06-14 14:03:54.515036','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(33,'2020-06-14 14:28:02.128670','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(34,'2020-06-14 14:46:33.538891','13','Tridecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(35,'2020-06-14 15:45:10.996472','14','Tetradecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(36,'2020-06-14 15:47:47.902575','12','Dodecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(37,'2020-06-14 15:48:48.686221','11','Undecane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(38,'2020-06-14 15:49:35.447416','10','Decane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(39,'2020-06-14 15:50:27.382086','9','Nonane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(40,'2020-06-14 15:51:24.469814','8','Octane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(41,'2020-06-14 15:52:13.169327','7','Heptane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(42,'2020-06-14 15:52:37.686960','6','Hexane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(43,'2020-06-14 15:52:50.531876','4','Butane',2,'[{\"changed\": {\"fields\": [\"Isomers\"]}}]',8,1),(44,'2020-06-14 15:53:00.417919','3','Propane',2,'[]',8,1),(45,'2020-06-18 11:35:43.780865','15','NULL',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:07:29
