CREATE DATABASE  IF NOT EXISTS `tablebookingsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tablebookingsystem`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: tablebookingsystem
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `t_id` int NOT NULL,
  `pre_order` tinyint DEFAULT NULL,
  `b_date` date NOT NULL,
  `b_time` varchar(45) NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `cid_idx` (`c_id`),
  KEY `tid_idx` (`t_id`),
  CONSTRAINT `cid` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  CONSTRAINT `tid` FOREIGN KEY (`t_id`) REFERENCES `tablel` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `cu_id_idx` (`u_id`),
  CONSTRAINT `cu_id` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,3,'chetan','kumar',''),(2,16,'rutu','haerf','98000754');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `Id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Amaya','Hotel Amaya near BMCC Clg, Deccan Pune.');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `h_id` int NOT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_id_UNIQUE` (`m_id`),
  KEY `uid` (`u_id`),
  KEY `h_id_idx` (`h_id`),
  CONSTRAINT `hid` FOREIGN KEY (`h_id`) REFERENCES `hotel` (`Id`),
  CONSTRAINT `uid` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,2,'mohit','suri',_binary '\0',NULL,1),(12,27,'hh','ffb',_binary '\0',NULL,1);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_category`
--

DROP TABLE IF EXISTS `menu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `descp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_category`
--

LOCK TABLES `menu_category` WRITE;
/*!40000 ALTER TABLE `menu_category` DISABLE KEYS */;
INSERT INTO `menu_category` VALUES (1,'beverage',NULL),(2,'starter',NULL),(3,'breakfast',NULL),(4,'main course',NULL),(5,'dessert',NULL);
/*!40000 ALTER TABLE `menu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `cat_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `price` float NOT NULL,
  `img` blob,
  PRIMARY KEY (`item_id`),
  KEY `catid_idx` (`cat_id`),
  CONSTRAINT `catid` FOREIGN KEY (`cat_id`) REFERENCES `menu_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,1,'tea',NULL,15,NULL),(2,1,'sp.tea',NULL,25,NULL),(3,1,'coffee',NULL,30,NULL),(4,1,'cold coffee',NULL,60,NULL),(5,1,'milk',NULL,30,NULL),(6,1,'lemon tea',NULL,20,NULL),(7,1,'green tea',NULL,30,NULL),(8,1,'mineral water',NULL,20,NULL),(9,1,'cold drinks',NULL,20,NULL),(10,1,'lassi',NULL,40,NULL),(11,1,'buttermilk',NULL,30,NULL),(12,1,'limbu sarbat',NULL,25,NULL),(13,2,'tomato soup',NULL,60,NULL),(14,2,'mix veg soup',NULL,70,NULL),(15,2,'sweetcorn soup',NULL,70,NULL),(16,2,'manchow soup',NULL,80,NULL),(17,2,'masala papad',NULL,50,NULL),(18,2,'tikki',NULL,100,NULL),(19,2,'cheese balls',NULL,100,NULL),(20,2,'nagli papad',NULL,50,NULL),(21,3,'poha',NULL,40,NULL),(22,3,'upma',NULL,40,NULL),(23,3,'misal',NULL,80,NULL),(24,3,'idli sambar',NULL,60,NULL),(25,3,'menduwada',NULL,70,NULL),(26,3,'dosa',NULL,70,NULL),(27,3,'masala dosa',NULL,80,NULL),(28,3,'uttappa',NULL,80,NULL),(29,3,'onion uttappa',NULL,70,NULL),(30,3,'omlet',NULL,50,NULL),(31,3,'aloo paratha',NULL,80,NULL),(32,3,'wada paav',NULL,20,NULL),(33,3,'sandwitch',NULL,40,NULL),(34,3,'maggi',NULL,50,NULL),(35,3,'pasta',NULL,60,NULL),(36,4,'steam rice',NULL,70,NULL),(37,4,'jeera rice',NULL,90,NULL),(38,4,'veg pulao',NULL,120,NULL),(39,4,'daal khichada',NULL,130,NULL),(40,4,'fried rice',NULL,150,NULL),(41,4,'chapati',NULL,15,NULL),(42,4,'plain roti',NULL,25,NULL),(43,4,'butter roti',NULL,35,NULL),(44,4,'naan',NULL,40,NULL),(45,4,'butter naan',NULL,50,NULL),(47,4,'mix veg',NULL,140,NULL),(48,4,'paneer masala',NULL,180,NULL),(49,4,'paneer kofta',NULL,200,NULL),(50,4,'palaak paneer',NULL,200,NULL),(51,4,'kaju curry',NULL,220,NULL),(52,4,'soyabean',NULL,160,NULL),(53,4,'navratan korma',NULL,250,NULL),(54,5,'chocolate cake',NULL,320,NULL),(55,5,'rasmalai cake',NULL,350,NULL),(56,5,'mousse',NULL,250,NULL),(57,5,'brownie',NULL,300,NULL),(58,5,'chocolate icecream',NULL,120,NULL),(59,5,'vanilla icecream',NULL,100,NULL),(60,5,'butterscotch icecream',NULL,120,NULL),(61,4,'shev bhaji',NULL,120,NULL);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `amt` float NOT NULL,
  `b_id` int NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `bid_idx` (`b_id`),
  CONSTRAINT `bid` FOREIGN KEY (`b_id`) REFERENCES `booking` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `od_id` int NOT NULL AUTO_INCREMENT,
  `o_id` int NOT NULL,
  `item_id` int NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`od_id`),
  KEY `oid_idx` (`o_id`),
  KEY `itemid_idx` (`item_id`),
  CONSTRAINT `itemid` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`item_id`),
  CONSTRAINT `oid` FOREIGN KEY (`o_id`) REFERENCES `order` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `r_id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  UNIQUE KEY `Id_UNIQUE` (`r_id`),
  UNIQUE KEY `Type_UNIQUE` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(3,'Customer'),(2,'Manager');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablel`
--

DROP TABLE IF EXISTS `tablel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablel` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `capacity` int NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablel`
--

LOCK TABLES `tablel` WRITE;
/*!40000 ALTER TABLE `tablel` DISABLE KEYS */;
INSERT INTO `tablel` VALUES (1,2,'available'),(2,4,'available'),(3,6,'available');
/*!40000 ALTER TABLE `tablel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `r_id` int NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `r_id_idx` (`r_id`),
  CONSTRAINT `r_id` FOREIGN KEY (`r_id`) REFERENCES `roles` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'amit123@gmail.com','amit@123',1),(2,'mohit123@gmail.com','mohit@123',2),(3,'chetan123@gmail.com','chetan@123',3),(7,'vrushali@gmail.com','vrushali@1234',3),(9,'vrushali1@gmail.com','vrushali@1234',3),(11,'sMI@gmail.com','shali@1234',3),(13,'gtsdfgi@gmail.com','shggggggggggggi@1234',3),(15,'asded@gmail.com','sgggi@1234',3),(16,'rtu@gmail.com','rutu@1234',3),(17,NULL,'ytvg23',2),(18,NULL,'ytvg23',2),(19,NULL,'ytvg23',2),(20,NULL,'ytvg23',2),(21,NULL,'rf4',2),(22,NULL,'rf4',2),(23,NULL,'rf4',2),(24,NULL,'rf4',2),(25,NULL,'rf4',2),(26,NULL,'rf4',2),(27,NULL,'rf4',2);
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

-- Dump completed on 2025-01-03 16:41:09
