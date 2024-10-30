CREATE DATABASE  IF NOT EXISTS `fresh_harvest12` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fresh_harvest12`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: fresh_harvest12
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `corporate_customers`
--

DROP TABLE IF EXISTS `corporate_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporate_customers` (
  `cust_id` int NOT NULL,
  `discount_rate` float DEFAULT NULL,
  `max_credit` float DEFAULT NULL,
  `min_balance` float DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  CONSTRAINT `corporate_customers_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporate_customers`
--

LOCK TABLES `corporate_customers` WRITE;
/*!40000 ALTER TABLE `corporate_customers` DISABLE KEYS */;
INSERT INTO `corporate_customers` VALUES (3,0.1,2000,1000),(4,0.1,2000,1000);
/*!40000 ALTER TABLE `corporate_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_payments`
--

DROP TABLE IF EXISTS `credit_card_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card_payments` (
  `id` int NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `card_expiry_date` varchar(7) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `credit_card_payments_ibfk_1` FOREIGN KEY (`id`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_payments`
--

LOCK TABLES `credit_card_payments` WRITE;
/*!40000 ALTER TABLE `credit_card_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_card_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_balance` float DEFAULT NULL,
  `max_owing` float DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'123 Fantasy Road, Wonderland',100,100),(2,'456 Construction Ave, Buildtown',-100,100),(3,'789 Business Blvd, Corporatia',200,100),(4,'789 Fair Road, Corporatia',15000,100);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debit_card_payments`
--

DROP TABLE IF EXISTS `debit_card_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debit_card_payments` (
  `id` int NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `debit_card_number` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `debit_card_payments_ibfk_1` FOREIGN KEY (`id`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debit_card_payments`
--

LOCK TABLES `debit_card_payments` WRITE;
/*!40000 ALTER TABLE `debit_card_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `debit_card_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,109),(2,2,85),(3,3,181),(4,4,182),(5,5,183),(6,6,140),(7,7,195),(8,8,134),(9,9,196),(10,10,99),(11,11,122),(12,12,198),(13,13,145);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Capsicum',2,'veggie'),(2,'Cucumber',1.5,'veggie'),(3,'Broccoli',4,'veggie'),(4,'Lettuce',3.5,'veggie'),(5,'Potato',1.5,'weighted_veggie'),(6,'Sweet Potato',2,'weighted_veggie'),(7,'Tomato Pack',5,'pack_veggie'),(8,'Mushroom Pack',6,'pack_veggie'),(9,'Bok choy',5.5,'unit_price_veggie'),(10,'Spring onion',3,'unit_price_veggie'),(11,'Small Veggie Box',15,'premade_box'),(12,'Medium Veggie Box',20,'premade_box'),(13,'Large Veggie Box',30,'premade_box');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_lines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `line_total` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `order_lines_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_lines_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_number` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(50) NOT NULL,
  `total_cost` float NOT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`cust_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_veggie`
--

DROP TABLE IF EXISTS `pack_veggie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_veggie` (
  `id` int NOT NULL,
  `num_of_pack` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pack_veggie_ibfk_1` FOREIGN KEY (`id`) REFERENCES `veggie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_veggie`
--

LOCK TABLES `pack_veggie` WRITE;
/*!40000 ALTER TABLE `pack_veggie` DISABLE KEYS */;
INSERT INTO `pack_veggie` VALUES (7,3),(8,7);
/*!40000 ALTER TABLE `pack_veggie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_amount` float NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `_Person__password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `ix_persons_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Alice','Wonder','alice_wonder','pbkdf2:sha256:600000$yLvD4YBDLiDQd1sF$d7a7c50d3317ec94dc4aa24cd32a8ba79ad06a17a49d172f4f866d372da764ea','customer'),(2,'Bob','Builder','bob_builder','pbkdf2:sha256:600000$ladYNCGRPK8gwLM1$f8b3ecf2766e53f40aae1bb41b295be96ec2a60bcb0c54eef26498bd5a9206f8','customer'),(3,'Karen','Corporate','corporate_karen','pbkdf2:sha256:600000$owk6wKdbB5IbgutX$d32dfbc56f10fb869af204038a5085af004b96ab2d5f666af0fdc24ede3e0830','customer'),(4,'Liz','Corporate','corporate_Liz','pbkdf2:sha256:600000$SoPT9819Cjtf6xoe$28fd7a75912eb2e71834592f36f4c0cf59a3697e7e5bdce5e2744873de024634','customer'),(5,'John','Staffer','staff_john','pbkdf2:sha256:600000$UeCD6oyVoQ4ABv69$59feaa9e12de1b75277ae563429b5ee435e04efad875a66c21863a1f9f8cec8f','staff');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premade_boxes`
--

DROP TABLE IF EXISTS `premade_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premade_boxes` (
  `id` int NOT NULL,
  `box_size` varchar(20) NOT NULL,
  `max_content` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `premade_boxes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premade_boxes`
--

LOCK TABLES `premade_boxes` WRITE;
/*!40000 ALTER TABLE `premade_boxes` DISABLE KEYS */;
INSERT INTO `premade_boxes` VALUES (11,'small',3),(12,'medium',6),(13,'large',9);
/*!40000 ALTER TABLE `premade_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL,
  `date_joined` datetime DEFAULT NULL,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (5,'2024-10-31 01:05:45','Sales');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_price_veggie`
--

DROP TABLE IF EXISTS `unit_price_veggie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_price_veggie` (
  `id` int NOT NULL,
  `price_per_unit` float NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `unit_price_veggie_ibfk_1` FOREIGN KEY (`id`) REFERENCES `veggie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_price_veggie`
--

LOCK TABLES `unit_price_veggie` WRITE;
/*!40000 ALTER TABLE `unit_price_veggie` DISABLE KEYS */;
INSERT INTO `unit_price_veggie` VALUES (9,5.5,'bunch'),(10,3,'bunch');
/*!40000 ALTER TABLE `unit_price_veggie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veggie`
--

DROP TABLE IF EXISTS `veggie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veggie` (
  `id` int NOT NULL,
  `veg_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `veggie_ibfk_1` FOREIGN KEY (`id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veggie`
--

LOCK TABLES `veggie` WRITE;
/*!40000 ALTER TABLE `veggie` DISABLE KEYS */;
INSERT INTO `veggie` VALUES (1,'Capsicum'),(2,'Cucumber'),(3,'Broccoli'),(4,'Lettuce'),(5,'Potato'),(6,'Sweet Potato'),(7,'Tomato'),(8,'Mushroom'),(9,'Bok choy'),(10,'Spring onion');
/*!40000 ALTER TABLE `veggie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weighted_veggie`
--

DROP TABLE IF EXISTS `weighted_veggie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weighted_veggie` (
  `id` int NOT NULL,
  `weight_per_kilo` float NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `weighted_veggie_ibfk_1` FOREIGN KEY (`id`) REFERENCES `veggie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weighted_veggie`
--

LOCK TABLES `weighted_veggie` WRITE;
/*!40000 ALTER TABLE `weighted_veggie` DISABLE KEYS */;
INSERT INTO `weighted_veggie` VALUES (5,1.5,'kg'),(6,2,'kg');
/*!40000 ALTER TABLE `weighted_veggie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fresh_harvest12'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31  1:07:06
