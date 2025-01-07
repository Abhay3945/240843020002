-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: P25_insurancedb
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
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (1,'Approved',1,'TXN001',1,1),(2,'Pending',2,'TXN002',2,2);
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ashish Hambir','1990-05-15','123456789012','ABCPH1234D','9876543210',2),(2,'Vaibhav Andure','1985-08-20','123456789013','XYSOP1234X','9876543211',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insurer`
--

LOCK TABLES `insurer` WRITE;
/*!40000 ALTER TABLE `insurer` DISABLE KEYS */;
INSERT INTO `insurer` VALUES (1,'Star Health Insurance Co.','IRDAI12345',4),(2,'Tata AIG Insurance Co.','IRDAI67890',5);
/*!40000 ALTER TABLE `insurer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `irdai`
--

LOCK TABLES `irdai` WRITE;
/*!40000 ALTER TABLE `irdai` DISABLE KEYS */;
INSERT INTO `irdai` VALUES ('IRDAI12345',101),('IRDAI67890',102);
/*!40000 ALTER TABLE `irdai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Your claim has been approved!','2023-12-15'),(2,'Premium payment successful.','2023-12-05');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,'Health Shield Plan','5000 INR','5 years',1),(2,'Term Life Insurance','3000 INR','10 years',2);
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('TXN001',5000,'2023-12-01',1,1),('TXN002',3000,'2023-12-05',2,2);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES ('Admin','Administrator'),('Customer','Policy Holder'),('Insurer','Insurance Company');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abhay Tambe','password123','abhay.tambe@example.in','10/5, Sector 12, Pune, Maharashtra','Admin'),(2,'Ashish Hambir','ashishpassword','ashish.hambir@example.in','Flat 102, Satyam Residency, Thane, Maharashtra','Customer'),(3,'Vaibhav Andure','vaibhavpass','vaibhav.andure@example.in','Shivaji Nagar, Aurangabad, Maharashtra','Customer'),(4,'Star Health Insurance Co.','starhealth123','contact@starhealth.com','Head Office, Chennai, Tamil Nadu','Insurer'),(5,'Tata AIG Insurance Co.','tataaig123','contact@tataaig.com','Corporate Office, Mumbai, Maharashtra','Insurer'),(6,'Umesh sharma','password123','umesh8@gmail.com','123 Main St, Indore, India','Customer'),(7,'Abhijeet Surshewar','Pass@123','Abhijeet12@gmail.com','Pandharpur','Customer'),(8,'Sonali Patil','Sonal@123','sonupatil2306@gmail.com','kolhapur Maharashra','Customer'),(9,'Aokiji Kuzan ','Pass@123','Akoj@gmail.com','Grand Line','Customer'),(10,'monkey d luffy','Pass@123','mnkd@gmail.com','east blue','Customer'),(11,'riddhi','riddhi123','riddhishahir990@gmail.com','deccan pune','Customer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 10:57:31
