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
-- Table structure for table `dbe_dbecal`
--

DROP TABLE IF EXISTS `dbe_dbecal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbe_dbecal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Dbe` int NOT NULL,
  `Possibilities` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbe_dbecal`
--

LOCK TABLES `dbe_dbecal` WRITE;
/*!40000 ALTER TABLE `dbe_dbecal` DISABLE KEYS */;
INSERT INTO `dbe_dbecal` VALUES (2,4,'1.) Benzene'),(3,0,'The Compound is an alkane. Check isomers for upto  first 14 Alkanes!!'),(4,1,'1.) Double Bond\r\n2.) Ring'),(5,2,'1.) Triple Bond\r\n2.) 2 Double Bonds\r\n3.)Ring with a Double Bond'),(6,3,'1.) A Triple Bond with a Double Bond\r\n2.) Ring with a Triple Bond\r\n3.) Double Bond\r\n4.) 3 Rings\r\n5.) Ring with 2 Double Bonds\r\n6.) 2 Rings with a Double Bond'),(7,-1,'The Compound Cannot Exist !!'),(8,5,'The possibilities may be limitless.\r\nAll we know is that it MAY contain a benzene in it.');
/*!40000 ALTER TABLE `dbe_dbecal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:07:32
