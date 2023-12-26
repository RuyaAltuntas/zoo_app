-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: zoodb
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `AnimalID` int NOT NULL,
  `NutritionID` int DEFAULT NULL,
  `HabitatID` int DEFAULT NULL,
  `CaretakerID` varchar(15) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Animal_name` varchar(25) DEFAULT NULL,
  `Animal_Birthdate` date DEFAULT NULL,
  `is_sick` tinyint(1) DEFAULT NULL,
  `Animal_Gender` varchar(10) DEFAULT NULL,
  `Animal_Specie` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AnimalID`),
  KEY `NutritionID` (`NutritionID`),
  KEY `HabitatID` (`HabitatID`),
  KEY `CaretakerID` (`CaretakerID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`NutritionID`) REFERENCES `nutrition` (`NutritionID`),
  CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`HabitatID`) REFERENCES `habitat` (`HabitatID`),
  CONSTRAINT `animal_ibfk_3` FOREIGN KEY (`CaretakerID`) REFERENCES `caretaker` (`CaretakerID`),
  CONSTRAINT `animal_ibfk_4` FOREIGN KEY (`SupplierID`) REFERENCES `nutrition_supplier` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,1,1001,'CTK001',1,'Lionel','2022-01-01',0,'Male','Lion'),(2,2,1002,'CTK002',2,'Ellie','2022-02-15',1,'Female','Elephant'),(3,3,1003,'CTK003',3,'Max','2022-03-10',0,'Male','Giraffe'),(4,4,1004,'CTK004',4,'Mia','2022-04-22',0,'Female','Tiger'),(5,5,1005,'CTK005',5,'Oscar','2022-05-05',1,'Male','Penguin'),(6,1,1001,'CTK001',1,'Sophie','2022-06-12',0,'Female','Lion'),(7,2,1002,'CTK002',2,'Charlie','2022-07-18',0,'Male','Elephant'),(8,3,1003,'CTK003',3,'Zoe','2022-08-25',1,'Female','Giraffe'),(9,4,1004,'CTK004',4,'Leo','2022-09-30',0,'Male','Tiger'),(10,5,1005,'CTK005',5,'Lucy','2022-10-15',1,'Female','Penguin'),(11,1,1001,'CTK001',1,'Rocky','2022-11-05',0,'Male','Lion'),(12,2,1002,'CTK002',2,'Lily','2022-12-20',0,'Female','Elephant'),(13,3,1003,'CTK003',3,'Buddy','2023-01-08',1,'Male','Giraffe'),(14,4,1004,'CTK004',4,'Luna','2023-02-14',0,'Female','Tiger'),(15,5,1005,'CTK005',5,'Maxwell','2023-03-22',1,'Male','Penguin'),(16,1,1001,'CTK001',1,'Mocha','2023-04-01',0,'Female','Lion'),(17,2,1002,'CTK002',2,'Coco','2023-05-15',0,'Male','Elephant'),(18,3,1003,'CTK003',3,'Milo','2023-06-30',1,'Male','Giraffe'),(19,4,1004,'CTK004',4,'Daisy','2023-07-10',0,'Female','Tiger'),(20,5,1005,'CTK005',5,'Snow','2023-08-18',1,'Male','Penguin');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 21:40:27
