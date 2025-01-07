CREATE DATABASE  IF NOT EXISTS `P25_insurancedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `P25_insurancedb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: insurancedb
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim` (
  `ClaimID` int NOT NULL AUTO_INCREMENT,
  `Cstatus` varchar(255) NOT NULL,
  `CID` int NOT NULL,
  `TID` varchar(255) NOT NULL,
  `PolicyID` int NOT NULL,
  `I_ID` int NOT NULL,
  PRIMARY KEY (`ClaimID`),
  KEY `FK_Claim_Customer` (`CID`),
  KEY `FK_Claim_Transaction` (`TID`),
  KEY `FK_Claim_Policy` (`PolicyID`),
  KEY `I_ID` (`I_ID`),
  CONSTRAINT `claim_ibfk_1` FOREIGN KEY (`I_ID`) REFERENCES `insurer` (`I_ID`),
  CONSTRAINT `FK_Claim_Customer` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`),
  CONSTRAINT `FK_Claim_Policy` FOREIGN KEY (`PolicyID`) REFERENCES `policy` (`PolicyID`),
  CONSTRAINT `FK_Claim_Transaction` FOREIGN KEY (`TID`) REFERENCES `transaction` (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `Cname` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Aadhar` varchar(255) NOT NULL,
  `Pan_no` varchar(255) NOT NULL,
  `ContactNo` varchar(255) NOT NULL,
  `UID` int NOT NULL,
  PRIMARY KEY (`CID`),
  KEY `FK_Customer_User` (`UID`),
  CONSTRAINT `FK_Customer_User` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `insurer`
--

DROP TABLE IF EXISTS `insurer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurer` (
  `I_ID` int NOT NULL AUTO_INCREMENT,
  `I_name` varchar(255) NOT NULL,
  `LicenseNO` varchar(255) NOT NULL,
  `UID` int NOT NULL,
  PRIMARY KEY (`I_ID`),
  KEY `FK_Insurer_IRDAI` (`LicenseNO`),
  KEY `FK_Insurer_User` (`UID`),
  CONSTRAINT `FK_Insurer_IRDAI` FOREIGN KEY (`LicenseNO`) REFERENCES `irdai` (`LicenseNO`),
  CONSTRAINT `FK_Insurer_User` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `irdai`
--

DROP TABLE IF EXISTS `irdai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irdai` (
  `LicenseNO` varchar(255) NOT NULL,
  `IRID` int NOT NULL,
  PRIMARY KEY (`LicenseNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `NID` int NOT NULL AUTO_INCREMENT,
  `Message` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `PolicyID` int NOT NULL AUTO_INCREMENT,
  `P_name` varchar(255) NOT NULL,
  `Premium` varchar(255) NOT NULL,
  `Terms` varchar(255) NOT NULL,
  `I_ID` int NOT NULL,
  PRIMARY KEY (`PolicyID`),
  KEY `FK_Policy_Insurer` (`I_ID`),
  CONSTRAINT `FK_Policy_Insurer` FOREIGN KEY (`I_ID`) REFERENCES `insurer` (`I_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TID` varchar(255) NOT NULL,
  `Amount` double NOT NULL,
  `Date` date NOT NULL,
  `CID` int NOT NULL,
  `PolicyID` int NOT NULL,
  PRIMARY KEY (`TID`),
  KEY `FK_Transaction_Customer` (`CID`),
  KEY `FK_Transaction_Policy` (`PolicyID`),
  CONSTRAINT `FK_Transaction_Customer` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`),
  CONSTRAINT `FK_Transaction_Policy` FOREIGN KEY (`PolicyID`) REFERENCES `policy` (`PolicyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `Role` varchar(255) NOT NULL,
  `TypeName` varchar(255) NOT NULL,
  PRIMARY KEY (`Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `Uname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  PRIMARY KEY (`UID`),
  KEY `FK_Users_Types` (`Role`),
  CONSTRAINT `FK_Users_Types` FOREIGN KEY (`Role`) REFERENCES `types` (`Role`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 10:51:45
