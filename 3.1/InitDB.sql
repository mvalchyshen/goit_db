-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: goit_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id_company` int NOT NULL AUTO_INCREMENT,
  `name_company` varchar(255) NOT NULL,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'EPAM'),(2,'SofteServe'),(3,'NiX'),(4,'Luxoft');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_has_customers`
--

DROP TABLE IF EXISTS `companies_has_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_has_customers` (
  `id_company` int NOT NULL,
  `id_customers` int NOT NULL,
  PRIMARY KEY (`id_company`,`id_customers`),
  KEY `fk_companies_has_customers_customers1_idx` (`id_customers`),
  KEY `fk_companies_has_customers_companies1_idx` (`id_company`),
  CONSTRAINT `fk_companies_has_customers_companies1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id_company`),
  CONSTRAINT `fk_companies_has_customers_customers1` FOREIGN KEY (`id_customers`) REFERENCES `customers` (`id_customers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_has_customers`
--

LOCK TABLES `companies_has_customers` WRITE;
/*!40000 ALTER TABLE `companies_has_customers` DISABLE KEYS */;
INSERT INTO `companies_has_customers` VALUES (1,1),(4,1),(2,2),(3,3);
/*!40000 ALTER TABLE `companies_has_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_has_projects`
--

DROP TABLE IF EXISTS `companies_has_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_has_projects` (
  `id_project` int NOT NULL,
  `id_company` int NOT NULL,
  PRIMARY KEY (`id_project`,`id_company`),
  KEY `fk_projects_has_companies_companies1_idx` (`id_company`),
  KEY `fk_projects_has_companies_projects1_idx` (`id_project`),
  CONSTRAINT `fk_projects_has_companies_companies1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id_company`),
  CONSTRAINT `fk_projects_has_companies_projects1` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_has_projects`
--

LOCK TABLES `companies_has_projects` WRITE;
/*!40000 ALTER TABLE `companies_has_projects` DISABLE KEYS */;
INSERT INTO `companies_has_projects` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `companies_has_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customers` int NOT NULL AUTO_INCREMENT,
  `name_customers` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customers`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alfa'),(2,'Beta'),(3,'Gama');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `id_developer` int NOT NULL AUTO_INCREMENT,
  `name_developer` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id_developer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Max',21),(2,'Vlad',22),(3,'Kolya',23),(4,'Olia',19),(5,'Nikita',30);
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers_has_skills`
--

DROP TABLE IF EXISTS `developers_has_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers_has_skills` (
  `id_developer` int NOT NULL,
  `id_skill` int NOT NULL,
  PRIMARY KEY (`id_developer`,`id_skill`),
  KEY `fk_developers_has_skills_skills1_idx` (`id_skill`),
  KEY `fk_developers_has_skills_developers1_idx` (`id_developer`),
  CONSTRAINT `fk_developers_has_skills_developers1` FOREIGN KEY (`id_developer`) REFERENCES `developers` (`id_developer`),
  CONSTRAINT `fk_developers_has_skills_skills1` FOREIGN KEY (`id_skill`) REFERENCES `skills` (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers_has_skills`
--

LOCK TABLES `developers_has_skills` WRITE;
/*!40000 ALTER TABLE `developers_has_skills` DISABLE KEYS */;
INSERT INTO `developers_has_skills` VALUES (2,1),(1,2),(5,3),(3,8),(4,9);
/*!40000 ALTER TABLE `developers_has_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id_project` int NOT NULL AUTO_INCREMENT,
  `name_project` varchar(255) NOT NULL,
  PRIMARY KEY (`id_project`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'SpaceX'),(2,'Balalayka'),(3,'Sendler'),(4,'Loader'),(5,'NoX');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_has_developers`
--

DROP TABLE IF EXISTS `projects_has_developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_has_developers` (
  `id_project` int NOT NULL,
  `id_developer` int NOT NULL,
  PRIMARY KEY (`id_project`,`id_developer`),
  KEY `fk_projects_has_developers_developers1_idx` (`id_developer`),
  KEY `fk_projects_has_developers_projects1_idx` (`id_project`),
  CONSTRAINT `fk_projects_has_developers_developers1` FOREIGN KEY (`id_developer`) REFERENCES `developers` (`id_developer`),
  CONSTRAINT `fk_projects_has_developers_projects1` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_has_developers`
--

LOCK TABLES `projects_has_developers` WRITE;
/*!40000 ALTER TABLE `projects_has_developers` DISABLE KEYS */;
INSERT INTO `projects_has_developers` VALUES (1,1),(5,1),(3,2),(5,2),(2,3);
/*!40000 ALTER TABLE `projects_has_developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id_skill` int NOT NULL AUTO_INCREMENT,
  `language` enum('Java','C++','C#','JS') NOT NULL,
  `level` enum('Junior','Middle','Senior') NOT NULL,
  PRIMARY KEY (`id_skill`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Java','Middle'),(2,'Java','Junior'),(3,'Java','Senior'),(4,'C++','Junior'),(5,'C++','Middle'),(6,'C++','Senior'),(7,'C#','Junior'),(8,'C#','Middle'),(9,'C#','Senior');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-07 10:49:27
