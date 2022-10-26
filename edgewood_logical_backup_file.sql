-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: edgewood_inc
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_fname` varchar(100) NOT NULL,
  `customer_lname` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ruby','Patel','Stockholm','Sweden'),(2,'Summer','Hayward','Southport','United Kingdom'),(3,'Devin','Huddleston','Valence','France'),(4,'Mary','Parker','Birmingham','United Kingdom'),(5,'Daniel','Burke','Echirolles','France'),(6,'Frederick','Beveridge','La Seyne-sur-Mer','France'),(7,'Archer','Hort','Toulouse','France'),(8,'Evie','Flockhart','Genoa','Italy'),(9,'Faith','Greenwood','Vienna','Austria'),(10,'Gracie','Powell','Woking','United Kingdom'),(11,'Hershel','Snyder','Lohne','Germany'),(12,'Julia','Martell','Leicester','United Kingdom'),(13,'Viola','Watson','Sheffield','United Kingdom'),(14,'Julian','Dobie','Dordrecht','Netherlands'),(15,'Rose','Heap','Gothenburg','Sweden'),(16,'Ella','Troy','Vienna','Austria'),(17,'Everett','Dunbar','Langen','Germany'),(18,'Georgia','Bermingham','Copenhagen','Denmark'),(19,'Christopher','Gold','Gandia','Spain'),(20,'John','Baca','Esbjerg','Denmark'),(21,'Kai','Leonard','Sesto San Giovanni','Italy'),(22,'Jennifer','Mattingly','Trapani','Italy'),(23,'Nathan','Iqbal','Villiers-sur-Marne','France'),(24,'Noah','Chamberlain','Bielefeld','Germany'),(25,'Dylan','Disney','Leuven','Belgium'),(26,'Melissa','Bean','Prato','Italy'),(27,'Vaughn','Gibbs','Gela','Italy'),(28,'William','Hortom','Bologna','Italy'),(29,'David','Harney','Menden','Germany'),(30,'Walter','Coley','Maisons-Alfort','France'),(31,'Lori','Miller','Madrid','Spain'),(32,'Hayley','Baldwinson','Oslo','Norway'),(33,'Joseph','Locke','Lisbon','Portugal'),(34,'Grace','Hicks','Draguignan','France'),(35,'Hollie','Norris','Halle','Germany'),(36,'Kiara','Allen','Parma','Italy'),(37,'Ronald','Everson','Dresden','Germany'),(38,'Daryl','Claypool','Seville','Spain'),(39,'Caleb','Kenyon','Torrevieja','Spain'),(40,'Winnie','Moss','Barcelona','Spain'),(41,'Coutney','Hancock','London','United Kingdom'),(42,'Brandon','Preston','Reims','France'),(43,'Lara','Stoate','Rosenheim','Germany'),(44,'Max','Ludwig','Uppsala','Sweden'),(45,'Summer','Stewart','Nice','France'),(46,'Millie','Newman','Boulogne-sur-Mer','France'),(47,'Larry','Klaus','La Crau','France'),(48,'Shelby','Dunston','Siena','Italy'),(49,'Erin','Gill','Barcelona','Spain'),(50,'Patricia','Lukes','Almelo','Netherlands'),(51,'Lilian','Macredie','Basel','Switzerland'),(52,'Jasmine','Slater','Coslada','Spain'),(53,'Charlotte','Taylor','Marseille','France'),(54,'Victoria','Bell','Hanover','Germany'),(55,'Kayleigh','Farmer','Elda','Spain'),(56,'Tyson','Ebden','Hardenberg','Netherlands'),(57,'Sophie','Franklin','Seville','Spain'),(58,'Maya','Sullivan','Muret','France'),(59,'Ronald','Everson','Beaune','France'),(60,'Julian','Mack','Paris','France'),(61,'Tegan','Sage','Castrop-Rauxel','Germany'),(62,'Eva','Hargraves','Milan','Italy'),(63,'Jonathan','Summons','Zurich','Switzerland'),(64,'Darcy','Farnell','Grosseto','Italy'),(65,'Katherine','Grant','Paris','France'),(66,'Jared','Wurster','Dublin','Ireland'),(67,'Kayla','Ronald','Rome','Italy'),(68,'Angus','Reading','Namur','Belgium'),(69,'Jodie','Mellor','Zaanstad','Netherlands'),(70,'Maya','Summers','Bochum','Germany'),(71,'Oscar','Clayton','Colmar','France'),(72,'Carl','Proctor','Rome','Italy'),(73,'Spencer','Akhtar','Berlin','Germany'),(74,'Lincoln','Want','Rimini','Italy'),(75,'Niamh','Mann','Paris','France'),(76,'Nicole','Nash','Baden-Baden','Germany'),(77,'Joshua','Romero','Madrid','Spain'),(78,'John','Kemp','Pforzheim','Germany'),(79,'Ryan','Green','Sheffield','United Kingdom'),(80,'Naomi','Hancock','Coventry','United Kingdom'),(81,'Thomas','Stephens','Berlin','Germany'),(82,'Ashton','Charles','Pessac','France'),(83,'Shannon','Howe','Helsinki','Finland'),(84,'Joseph','Ford','Basel','Switzerland'),(85,'Alexander','Bennett','Berlin','Germany'),(86,'Koby','Phillip','Bonn','Germany'),(87,'Thomas','McCallum','Leipzig','Germany'),(88,'Donna','Nash','Tourcoing','France'),(89,'Wanda','Wingert','London','United Kingdom'),(90,'Scarlett','Truchanas','Bari','Italy'),(91,'Jessica','Paramor','Magdeburg','Germany'),(92,'Charlie','Brooks','Marseille','France'),(93,'Sam','Wood','Noisy-le-Sec','France'),(94,'Gabriel','Sanders','Stavanger','Norway'),(95,'Charles','Builder','Cagliari','Italy'),(96,'Aaron','Bootman','Marsala','Italy'),(97,'Kayla','Tearle','Basel','Switzerland'),(98,'Kayla','Ronald','Emmen','Netherlands'),(99,'Mary','Wilson','Augsburg','Germany'),(100,'Paige','Tyler','Stralsund','Germany'),(101,'Lily','Wells','Carcassonne','France');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Boston Markers',3.99,'Office Supply'),(2,'Eldon Folders',2.59,'Office Supply'),(3,'Classic Bookcase',89.99,'Furniture'),(4,'Binney Sketch Pad',24.50,'Office Supply'),(5,'Dania Corner Shelving',125.99,'Furniture'),(6,'Epson Printer',239.99,'Technology'),(7,'Boston Canvas',54.99,'Office Supply'),(8,'StarTech Card Printer',65.99,'Technology'),(9,'Sanford Pens',5.99,'Office Supply'),(10,'Cuisinart Microwave',249.50,'Technology'),(11,'Wilson Jones Binding Machine',149.99,'Technology'),(12,'SAFCO Folding Chair',119.99,'Office Supply'),(13,'BIC Markers',6.99,'Office Supply'),(14,'Epson Calculator',59.99,'Technology'),(15,'Belkin Keyboard',45.99,'Office Supply'),(16,'Hamilton Chair',89.99,'Furniture'),(17,'Avery Binder Covers',3.99,'Office Supply'),(18,'BIC Pencil Sharpner',12.50,'Office Supply'),(19,'Sharp Ink',125.50,'Technology'),(20,'Dania Cabinet',145.59,'Furniture');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `quantity` bigint NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `ship_mode` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2021-01-01',50,199.50,1,12,'Economy Plus'),(2,'2021-01-03',3,719.97,6,12,'Economy'),(3,'2021-01-03',1,119.99,12,8,'Economy'),(4,'2021-01-06',100,599.00,14,7,'Economy'),(5,'2021-01-10',2,179.98,3,14,'Priority'),(6,'2021-01-11',2,179.98,3,1,'Priority'),(7,'2021-01-11',10,549.90,7,6,'Economy'),(8,'2021-01-16',1,65.99,8,2,'Economy'),(9,'2021-01-17',1,249.50,10,2,'Economy'),(10,'2021-01-20',70,489.30,13,16,'Economy'),(11,'2021-01-25',150,388.50,2,21,'Immediate'),(12,'2021-01-26',120,310.80,2,23,'Economy'),(13,'2021-01-26',3,719.97,6,9,'Economy'),(14,'2021-01-26',5,62.50,18,12,'Priority'),(15,'2021-01-29',3,197.97,8,13,'Economy'),(16,'2021-01-30',1,249.50,10,4,'Economy'),(17,'2021-02-02',1,249.50,10,18,'Economy'),(18,'2021-02-02',1,119.99,12,11,'Economy Plus'),(19,'2021-02-03',2,251.98,5,23,'Economy'),(20,'2021-02-06',30,179.70,9,31,'Priority'),(21,'2021-02-07',1,125.50,19,33,'Economy Plus'),(22,'2021-02-08',1,145.59,20,25,'Priority'),(23,'2021-02-12',1,59.99,14,31,'Priority'),(24,'2021-02-12',1,239.99,6,25,'Economy'),(25,'2021-02-15',2,131.98,8,25,'Economy'),(26,'2021-02-15',100,259.00,2,40,'Economy'),(27,'2021-02-26',1,249.50,10,39,'Economy'),(28,'2021-03-01',40,159.60,17,11,'Economy Plus'),(29,'2021-03-04',8,367.92,15,11,'Priority'),(30,'2021-03-04',6,147.00,4,38,'Economy'),(31,'2021-03-05',1,59.99,14,41,'Economy'),(32,'2021-03-09',1,54.99,7,44,'Economy'),(33,'2021-03-11',5,29.95,9,46,'Priority'),(34,'2021-03-11',1,149.99,11,18,'Priority'),(35,'2021-03-12',2,299.98,11,47,'Economy'),(36,'2021-03-14',4,359.96,16,42,'Economy'),(37,'2021-03-20',1,149.59,20,1,'Economy'),(38,'2021-03-20',2,499.00,10,56,'Priority'),(39,'2021-03-21',1,125.99,5,55,'Economy Plus'),(40,'2021-03-21',5,29.95,9,53,'Priority'),(41,'2021-03-22',2,131.98,8,57,'Economy Plus'),(42,'2021-03-29',3,7.77,2,46,'Priority'),(43,'2021-03-29',15,38.85,2,44,'Economy'),(44,'2021-03-31',1,249.50,10,50,'Immediate'),(45,'2021-04-01',1,145.59,20,17,'Economy Plus'),(46,'2021-04-01',10,39.90,17,54,'Economy'),(47,'2021-04-06',2,251.00,19,54,'Economy'),(48,'2021-04-07',18,71.82,17,59,'Economy'),(49,'2021-04-09',1,59.99,14,62,'Economy'),(50,'2021-04-11',22,56.98,2,35,'Economy'),(51,'2021-04-12',60,239.40,1,63,'Immediate'),(52,'2021-04-12',2,5.18,2,64,'Economy'),(53,'2021-04-14',1,239.99,6,65,'Economy'),(54,'2021-04-14',3,137.97,15,69,'Economy'),(55,'2021-04-18',1,119.99,12,70,'Economy'),(56,'2021-04-22',3,449.97,11,71,'Immediate'),(57,'2021-04-26',1,54.99,7,72,'Economy Plus'),(58,'2021-05-02',20,119.80,9,48,'Economy'),(59,'2021-05-02',1,249.50,10,48,'Economy'),(60,'2021-05-06',25,99.75,1,16,'Economy Plus'),(61,'2021-05-08',5,449.95,16,19,'Economy'),(62,'2021-05-10',3,11.97,17,23,'Economy'),(63,'2021-05-10',10,25.90,2,67,'Economy Plus'),(64,'2021-05-13',3,436.77,20,67,'Economy'),(65,'2021-05-14',1,125.50,19,79,'Economy'),(66,'2021-05-17',14,83.86,9,78,'Economy'),(67,'2021-05-19',50,199.50,1,80,'Economy Plus'),(68,'2021-05-20',2,251.98,5,80,'Economy'),(69,'2021-05-24',4,959.96,6,1,'Economy'),(70,'2021-05-26',1,239.99,6,16,'Economy'),(71,'2021-05-27',1,125.99,5,9,'Economy'),(72,'2021-05-30',35,90.65,2,9,'Economy Plus'),(73,'2021-05-30',1,12.50,18,8,'Economy'),(74,'2021-05-30',1,149.99,11,64,'Economy'),(75,'2021-05-30',1,145.59,20,45,'Economy'),(76,'2021-06-03',5,19.95,1,38,'Priority'),(77,'2021-06-03',1,239.99,6,38,'Economy'),(78,'2021-06-04',2,179.98,3,76,'Economy'),(79,'2021-06-08',1,24.50,4,81,'Priority'),(80,'2021-06-11',1,249.50,10,82,'Economy'),(81,'2021-06-12',1,145.59,20,76,'Priority'),(82,'2021-06-15',3,449.97,11,67,'Immediate'),(83,'2021-06-17',1,54.99,7,82,'Economy'),(84,'2021-06-17',2,5.18,2,25,'Economy'),(85,'2021-06-18',1,54.99,7,27,'Priority'),(86,'2021-06-22',2,49.00,4,81,'Economy'),(87,'2021-06-23',1,125.99,5,55,'Economy'),(88,'2021-06-24',3,37.50,18,66,'Economy'),(89,'2021-06-29',2,179.98,16,62,'Economy'),(90,'2021-06-30',5,229.95,15,63,'Priority'),(91,'2021-07-01',30,77.70,2,63,'Economy Plus'),(92,'2021-07-02',1,145.59,20,17,'Economy Plus'),(93,'2021-07-08',20,79.80,1,17,'Immediate'),(94,'2021-07-09',1,89.99,16,87,'Economy'),(95,'2021-07-09',1,89.99,16,74,'Economy'),(96,'2021-07-11',10,25.90,2,84,'Economy'),(97,'2021-07-13',1,65.99,8,90,'Priority'),(98,'2021-07-13',1,145.59,20,91,'Economy'),(99,'2021-07-17',2,291.18,20,92,'Economy Plus'),(100,'2021-07-18',20,51.80,2,99,'Priority'),(101,'2021-07-20',1,89.99,3,97,'Economy'),(102,'2021-07-20',1,125.99,5,90,'Economy'),(103,'2021-07-22',1,45.99,15,90,'Economy Plus'),(104,'2021-07-24',2,13.98,13,85,'Economy'),(105,'2021-07-26',30,119.70,17,87,'Priority'),(106,'2021-07-27',1,145.59,20,45,'Economy Plus'),(107,'2021-07-29',5,12.95,2,45,'Economy Plus'),(108,'2021-08-02',1,239.99,6,86,'Priority'),(109,'2021-08-02',2,25.00,18,48,'Economy Plus'),(110,'2021-08-03',1,125.50,19,66,'Priority'),(111,'2021-08-04',3,7.77,2,45,'Economy'),(112,'2021-08-08',2,291.18,20,69,'Economy'),(113,'2021-08-10',1,54.99,7,100,'Economy'),(114,'2021-08-11',1,125.99,5,19,'Priority'),(115,'2021-08-15',3,73.50,4,94,'Economy'),(116,'2021-08-15',1,149.99,11,99,'Economy'),(117,'2021-08-17',50,349.50,13,97,'Economy'),(118,'2021-08-19',2,239.98,12,98,'Economy'),(119,'2021-08-19',6,41.94,13,98,'Economy'),(120,'2021-08-21',1,89.99,16,79,'Priority'),(121,'2021-08-26',1,239.99,6,77,'Priority'),(122,'2021-09-01',2,251.98,5,76,'Economy'),(123,'2021-09-03',8,20.72,2,14,'Economy'),(124,'2021-09-06',35,209.65,9,14,'Priority'),(125,'2021-09-07',1,249.50,10,65,'Economy'),(126,'2021-09-13',1,129.99,11,62,'Economy'),(127,'2021-09-14',1,125.99,5,57,'Economy'),(128,'2021-09-15',25,99.75,1,57,'Economy'),(129,'2021-09-16',10,25.90,2,101,'Economy Plus'),(130,'2021-09-19',2,291.18,20,101,'Economy Plus'),(131,'2021-09-20',1,89.99,16,92,'Economy Plus'),(132,'2021-09-24',1,119.99,12,50,'Economy'),(133,'2021-09-24',1,149.99,11,80,'Economy Plus'),(134,'2021-09-30',1,125.99,5,71,'Priority'),(135,'2021-09-30',3,719.97,6,71,'Economy'),(136,'2021-10-01',1,65.99,8,54,'Priority'),(137,'2021-10-03',1,89.99,3,45,'Economy Plus'),(138,'2021-10-07',3,359.97,12,33,'Economy'),(139,'2021-10-10',5,229.95,15,36,'Economy Plus'),(140,'2021-10-11',1,149.99,11,85,'Economy'),(141,'2021-10-11',1,249.50,10,45,'Economy'),(142,'2021-10-15',3,164.97,7,12,'Economy'),(143,'2021-10-16',60,359.40,9,12,'Economy Plus'),(144,'2021-10-17',2,251.98,5,71,'Priority'),(145,'2021-10-19',15,38.85,2,41,'Economy'),(146,'2021-10-20',1,249.50,10,31,'Economy'),(147,'2021-10-26',1,119.99,12,55,'Priority'),(148,'2021-10-31',3,269.97,3,55,'Priority'),(149,'2021-11-02',1,249.50,10,78,'Economy'),(150,'2021-11-02',1,145.59,20,87,'Economy'),(151,'2021-11-05',5,329.95,8,99,'Economy'),(152,'2021-11-10',4,239.96,14,99,'Immediate'),(153,'2021-11-11',1,59.99,14,36,'Economy'),(154,'2021-11-13',1,65.99,8,29,'Economy'),(155,'2021-11-14',1,249.50,10,29,'Economy'),(156,'2021-11-14',2,179.98,3,40,'Economy'),(157,'2021-11-16',35,90.65,2,100,'Economy'),(158,'2021-11-20',2,109.98,7,100,'Economy'),(159,'2021-11-21',2,499.00,10,91,'Economy'),(160,'2021-11-22',1,145.59,20,12,'Economy'),(161,'2021-11-22',100,399.00,1,19,'Economy'),(162,'2021-11-26',3,17.97,9,65,'Economy'),(163,'2021-11-28',5,299.95,14,65,'Economy'),(164,'2021-11-30',1,125.50,19,88,'Priority'),(165,'2021-11-30',15,104.85,13,80,'Economy'),(166,'2021-11-30',1,145.59,20,42,'Economy'),(167,'2021-12-02',1,89.99,3,82,'Economy Plus'),(168,'2021-12-02',50,129.50,2,54,'Priority'),(169,'2021-12-04',10,39.90,1,51,'Economy'),(170,'2021-12-05',1,125.99,5,51,'Economy Plus'),(171,'2021-12-06',4,359.96,16,56,'Economy'),(172,'2021-12-08',5,229.95,15,61,'Economy'),(173,'2021-12-08',1,249.50,10,69,'Economy'),(174,'2021-12-09',2,239.98,12,69,'Economy'),(175,'2021-12-10',1,24.50,4,5,'Priority'),(176,'2021-12-11',4,15.96,1,5,'Economy Plus'),(177,'2021-12-12',3,436.77,20,67,'Economy Plus'),(178,'2021-12-13',5,329.95,8,65,'Economy'),(179,'2021-12-13',3,37.50,18,96,'Priority'),(180,'2021-12-13',100,599.00,9,12,'Economy'),(181,'2021-12-15',2,251.98,5,12,'Economy'),(182,'2021-12-17',5,449.95,3,51,'Immediate'),(183,'2021-12-18',10,39.90,1,56,'Economy Plus'),(184,'2021-12-29',15,367.50,4,3,'Economy Plus'),(185,'2021-12-20',5,627.50,19,3,'Economy'),(186,'2021-12-20',2,291.18,20,101,'Priority'),(187,'2021-12-20',2,479.98,6,101,'Economy Plus'),(188,'2021-12-20',5,12.95,2,53,'Economy');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-23 18:54:29