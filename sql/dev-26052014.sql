-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: metro
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `junctions`
--

DROP TABLE IF EXISTS `junctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `junctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statn_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `junctions`
--

LOCK TABLES `junctions` WRITE;
/*!40000 ALTER TABLE `junctions` DISABLE KEYS */;
INSERT INTO `junctions` VALUES (1,'Kashmere Gate'),(2,'Inder Lok'),(3,'Rajiv Chowk'),(4,'Central Secretariat'),(6,'Kirti Nagar');
/*!40000 ALTER TABLE `junctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `station_id` int(4) NOT NULL AUTO_INCREMENT,
  `station` varchar(30) NOT NULL,
  `lat` decimal(18,15) NOT NULL,
  `longi` decimal(18,15) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Kashmere Gate',28.671160000000000,77.228538000000000),(2,'Tis Hazari',28.667103000000000,77.216622000000000),(3,'Pulbangash',28.666576000000000,77.207278000000000),(4,'Shastri Park',28.673834000000000,77.241545000000000),(5,'Seelampur',28.669711000000000,77.266775000000000),(6,'Chandni Chowk',28.658028000000000,77.230141000000000),(7,'Chawri Bazar',28.649281000000000,77.226310000000000),(8,'New Delhi',28.642832000000000,77.222266000000000),(9,'Welcome',28.671782000000000,77.277541000000000),(10,'Shahdara',28.673438000000000,77.289654000000000),(11,'Mansarovar Park',28.675443000000000,77.300951000000000),(12,'Jhilmil',28.675782000000000,77.312399000000000),(13,'Mansarovar Park',28.675443000000000,77.300951000000000),(14,'Jhilmil',28.675782000000000,77.312399000000000),(15,'Dilshad Garden',28.675857000000000,77.321432000000000),(16,'Pratap Nagar',28.666632000000000,77.198802000000000),(17,'Shastri Nagar',28.669974000000000,77.181668000000000),(18,'Inderlok',28.673316000000000,77.170038000000000),(19,'Kanhaiya Nagar',28.682559000000000,77.164566000000000),(20,'Keshav Puram',28.688903000000000,77.161594000000000),(21,'Netaji Subhash Place',28.695877000000000,77.152249000000000),(22,'Shastri Nagar',28.669974000000000,77.181668000000000),(23,'Inderlok',28.673316000000000,77.170038000000000),(24,'Kanhaiya Nagar',28.682559000000000,77.164566000000000),(25,'Keshav Puram',28.688903000000000,77.161594000000000),(26,'Netaji Subhash Place',28.695877000000000,77.152249000000000),(27,'Kohat Enclave',28.698051000000000,77.140244000000000),(28,'Pitampura',28.703170000000000,77.132186000000000),(29,'Rohini East',28.707386000000000,77.125899000000000),(30,'Rohini West',28.714773000000000,77.115449000000000),(31,'Kohat Enclave',28.698051000000000,77.140244000000000),(32,'Pitampura',28.703170000000000,77.132186000000000),(33,'Rohini East',28.707386000000000,77.125899000000000),(34,'Rohini West',28.714773000000000,77.115449000000000),(35,'Civil Lines',28.676582000000000,77.224762000000000),(36,'Vidhan Sabha',28.687915000000000,77.221729000000000),(37,'Vishwavidyalaya',28.694729000000000,77.214573000000000),(38,'GTB Nagar',28.697599000000000,77.207492000000000),(39,'Model Town',28.702784000000000,77.193706000000000),(40,'Azadpur',28.706699000000000,77.180230000000000),(41,'Adarsh Nagar',28.716391000000000,77.170435000000000),(42,'Jahangir Puri',28.725903000000000,77.162656000000000),(43,'Civil Lines',28.676582000000000,77.224762000000000),(44,'Vidhan Sabha',28.687915000000000,77.221729000000000),(45,'Vishwavidyalaya',28.694729000000000,77.214573000000000),(46,'GTB Nagar',28.697599000000000,77.207492000000000),(47,'Model Town',28.702784000000000,77.193706000000000),(48,'Azadpur',28.706699000000000,77.180230000000000),(49,'Adarsh Nagar',28.716391000000000,77.170435000000000),(50,'Jahangir Puri',28.725903000000000,77.162656000000000);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metro_map`
--

DROP TABLE IF EXISTS `metro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metro_map` (
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro_map`
--

LOCK TABLES `metro_map` WRITE;
/*!40000 ALTER TABLE `metro_map` DISABLE KEYS */;
INSERT INTO `metro_map` VALUES ('stn1','stn2',1),('stn1','stn3',1),('stn2','stn3',1),('stn3','stn4',1),('stn3','stn5',1),('stn4','stn5',1);
/*!40000 ALTER TABLE `metro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statn_graph`
--

DROP TABLE IF EXISTS `statn_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statn_graph` (
  `graphedge_id` int(5) NOT NULL AUTO_INCREMENT,
  `sorce` varchar(50) NOT NULL,
  `desti` varchar(50) NOT NULL,
  `distt` int(3) NOT NULL,
  PRIMARY KEY (`graphedge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statn_graph`
--

LOCK TABLES `statn_graph` WRITE;
/*!40000 ALTER TABLE `statn_graph` DISABLE KEYS */;
INSERT INTO `statn_graph` VALUES (1,'Rithala','Rohini West',1),(2,'Rohini West','Rohini East',1),(3,'Rohini East','Pitampura',1),(4,'Pitampura','Kohat Enclave',1),(5,'Kohat Enclave','Netaji Subhash Place',1),(6,'Netaji Subhash Place','Keshav Puram',1),(7,'Keshav Puram','Kanhaiya Nagar',1),(8,'Kanhaiya Nagar','Inderlok',1),(9,'Inderlok','Shastri Nagar',1),(10,'Shastri Nagar','Pratap Nagar',1),(11,'Pratap Nagar','Pulbangash',1),(12,'Pulbangash','Tis Hazari',1),(13,'Tis Hazari','Kashmere Gate',1),(14,'Kashmere Gate','Shastri Park',1),(15,'Shastri Park','Seelampur',1),(16,'Seelampur','Welcome',1),(17,'Welcome','Shahdara',1),(18,'Shahdara','Mansarovar Park',1),(19,'Mansarovar Park','Jhilmil',1),(20,'Jhilmil','Dilshad Garden',1),(28,'Kashmere Gate','Chandni Chowk',1),(29,'Chandni Chowk','Chawri Bazar',1),(30,'Chawri Bazar','New Delhi',1),(31,'New Delhi','Rajiv Chowk',1),(32,'Rajiv Chowk','Patel Chowk',1),(33,'Patel Chowk','Central Secretariat',1),(34,'Central Secretariat','Udyog Bhawan',1),(35,'Udyog Bhawan','Race Course',1),(36,'Race Course','Jor Bagh',1),(37,'Jor Bagh','INA',1),(38,'INA','AIIMS',1),(39,'AIIMS','Green Park',1),(40,'Green Park','Hauz Khas',1),(41,'Hauz Khas','Malviya Nagar',1),(42,'Malviya Nagar','Saket',1),(43,'Saket','Qutab Minar',1),(44,'Qutab Minar','Chhattarpur',1),(45,'Chhattarpur','Sultanpur',1),(46,'Ghitorni','Arjangarh',1),(52,'Kashmere Gate','Civil Lines',1),(53,'Civil Lines','Vidhan Sabha',1),(54,'Vidhan Sabha','Vishwavidyalaya',1),(55,'Vishwavidyalaya','GTB Nagar',1),(56,'GTB Nagar','Model Town',1),(57,'Model Town','Azadpur',1),(58,'Azadpur','Adarsh Nagar',1),(59,'Adarsh Nagar','Jahangir Puri',1),(64,'Jahangir Puri','Adarsh Nagar',1),(66,'Adarsh Nagar','Azadpur',1),(67,'Azadpur','Model Town',1),(69,'Sultanpur','Ghitorni',1),(71,'Arjangarh','Guru Dronacharya',1),(72,'Guru Dronacharya','Sikanderpur',1),(73,'Sikanderpur','M G Road',1),(74,'M G Road','IFFCO Chowk',1),(75,'IFFCO Chowk','HUDA City Centre',1),(76,'HUDA City Centre','IFFCO Chowk',1),(77,'IFFCO Chowk','M G Road',1),(78,'M G Road','Sikanderpur',1),(79,'Sikanderpur','Guru Dronacharya',1),(80,'Guru Dronacharya','Arjangarh',1),(81,'Arjangarh','Ghitorni',1),(82,'Ghitorni','Sultanpur',1),(83,'Sultanpur','Chhattarpur',1),(84,'Chhattarpur','Qutab Minar',1),(85,'Qutab Minar','Saket',1),(86,'Saket','Malviya Nagar',1),(87,'Malviya Nagar','Hauz Khas',1),(88,'Hauz Khas','Green Park',1),(89,'Green Park','AIIMS',1),(90,'AIIMS','INA',1),(91,'INA','Jor Bagh',1),(92,'Jor Bagh','Race Course',1),(93,'Race Course','Udyog Bhawan',1),(94,'Udyog Bhawan','Central Secretariat',1),(95,'Central Secretariat','Patel Chowk',1),(96,'Patel Chowk','Rajiv Chowk',1),(97,'Rajiv Chowk','New Delhi',1),(98,'New Delhi','Chawri Bazar',1),(99,'Chawri Bazar','Chandni Chowk',1),(100,'Chandni Chowk','Kashmere Gate',1),(101,'Kashmere Gate','Civil Lines',1),(102,'Civil Lines','Vidhan Sabha',1),(103,'Vidhan Sabha','Vishwavidyalaya',1),(104,'Vishwavidyalaya','GTB Nagar',1),(105,'GTB Nagar','Model Town',1),(106,'Model Town','Azadpur',1),(107,'Azadpur','Adarsh Nagar',1),(108,'Adarsh Nagar','Jahangir Puri',1),(109,'Model Town','GTB Nagar',1),(110,'GTB Nagar','Vishwavidyalaya',1),(111,'Vishwavidyalaya','Vidhan Sabha',1),(112,'Vidhan Sabha','Civil Lines',1),(113,'Civil Lines','Kashmere Gate',1),(114,'Dilshad Garden','Jhilmil',1),(115,'Jhilmil','Mansarovar Park',1),(116,'Mansarovar Park','Shahdara',1),(117,'Shahdara','Welcome',1),(118,'Welcome','Seelampur',1),(119,'Seelampur','Shastri Park',1),(120,'Shastri Park','Kashmere Gate',1),(121,'Kashmere Gate','Tis Hazari',1),(122,'Tis Hazari','Pulbangash',1),(123,'Pulbangash','Pratap Nagar',1),(124,'Pratap Nagar','Shastri Nagar',1),(125,'Shastri Nagar','Inderlok',1),(126,'Inderlok','Kanhaiya Nagar',1),(127,'Kanhaiya Nagar','Keshav Puram',1),(128,'Keshav Puram','Netaji Subhash Place',1),(129,'Netaji Subhash Place','Kohat Enclave',1),(130,'Kohat Enclave','Pitampura',1),(131,'Pitampura','Rohini East',1),(132,'Rohini East','Rohini West',1),(133,'Rohini West','Rithala',1),(134,'Mundka','Rajdhani Park',1),(135,'Rajdhani Park','Mundka',1),(136,'Rajdhani Park','Nangloi Railway Station',1),(137,'Nangloi Railway Station','Rajdhani Park',1),(138,'Nangloi Railway Station','Nangloi',1),(139,'Nangloi','Surajmal Stadium',1),(140,'Surajmal Stadium','Nangloi',1),(141,'Surajmal Stadium','Udyog Nagar',1),(142,'Udyog Nagar','Surajmal Stadium',1),(143,'Udyog Nagar','Peeragarhi',1),(144,'Udyog Nagar','Peeragarhi',1),(145,'Peeragarhi','Udyog Nagar',1),(146,'Peeragarhi','Paschim Vihar (West)',1),(147,'Paschim Vihar (West)','Peeragarhi',1),(148,'Paschim Vihar (West)','Paschim Vihar (East)',1),(149,'Paschim Vihar (East)','Paschim Vihar (West)',1),(150,'Paschim Vihar (East)','Madipur',1),(151,'Madipur','Paschim Vihar (East)',1),(152,'Madipur','Shivaji Park',1),(153,'Shivaji Park','Madipur',1),(154,'Shivaji Park','Punjabi Bagh',1),(155,'Punjabi Bagh','Shivaji Park',1),(156,'Punjabi Bagh','Ashok Park Main',1),(157,'Ashok Park Main','Punjabi Bagh',1),(158,'Ashok Park Main','Inderlok',1),(159,'Inderlok','Ashok Park Main',1),(160,'Ashok Park Main','Satguru Ram Singh Marg',1),(161,'Satguru Ram Singh Marg','Ashok Park Main',1),(162,'Satguru Ram Singh Marg','Kirti Nagar',1),(163,'Kirti Nagar','Satguru Ram Singh Marg',1),(164,'Central Secretariat','Khan Market',1),(165,'Khan Market','Central Secretariat',1),(166,'Khan Market','JLN Stadium',1),(167,'JLN Stadium','Khan Market',1),(168,'JLN Stadium','Jangpura',1),(169,'Jangpura','JLN Stadium',1),(170,'Jangpura','Lajpat Nagar',1),(171,'Lajpat Nagar','Jangpura',1),(172,'Lajpat Nagar','Moolchand',1),(173,'Moolchand','Lajpat Nagar',1),(174,'Moolchand','Kailash Colony',1),(175,'Kailash Colony','Moolchand',1),(176,'Kailash Colony','Nehru Place',1),(177,'Nehru Place','Kailash Colony',1),(179,'Nehru Place','Kalkaji Mandir',1),(180,'Kalkaji Mandir','Nehru Place',1),(181,'Kalkaji Mandir','Govind Puri',1),(182,'Govind Puri','Kalkaji Mandir',1),(183,'Govind Puri','Okhla',1),(184,'Okhla','Govind Puri',1),(185,'Okhla','Jasola Apollo',1),(186,'Jasola Apollo','Okhla',1),(187,'Jasola Apollo','Sarita Vihar',1),(188,'Sarita Vihar','Jasola Apollo',1),(189,'Sarita Vihar','Mohan Estate',1),(190,'Mohan Estate','Sarita Vihar',1),(191,'Mohan Estate','Tughalakabad',1),(192,'Tughalakabad','Mohan Estate',1),(193,'Tughalakabad','Badarpur',1),(194,'Badarpur','Tughalakabad',1),(195,'New Delhi','Shivaji Stadium',1),(196,'Shivaji Stadium','New Delhi',1),(197,'Shivaji Stadium','Dhaula Kuan',1),(198,'Dhaula Kuan','Shivaji Stadium',1),(199,'Dhaula Kuan','Delhi Aerocity',1),(200,'Delhi Aerocity','Dhaula Kuan',1),(201,'Delhi Aerocity','Airport',1),(202,'Airport','Dwarka Sec 21',1),(203,'Dwarka Sec 21','Airport',1),(204,'Vaishali','Kaushambi',1),(205,'Kaushambi','Vaishali',1),(206,'Kaushambi','Karkarduma',1),(207,'Karkarduma','Kaushambi',1),(208,'Karkarduma','Preet Vihar',1),(209,'Preet Vihar','Karkarduma',1),(210,'Preet Vihar','Nirman Vihar',1),(211,'Nirman Vihar','Preet Vihar',1),(212,'Nirman Vihar','Laxmi Nagar',1),(213,'Laxmi Nagar','Nirman Vihar',1),(214,'Laxmi Nagar','Yamuna Bank',1),(215,'Yamuna Bank','Laxmi Nagar',1),(216,'Noida City Centre','Golf Course',1),(217,'Golf Course','Noida City Centre',1),(218,'Golf Course','Botanical Garden',1),(219,'Botanical Garden','Golf Course',1),(220,'Botanical Garden','Noida Sec 18',1),(221,'Noida Sec 18','Botanical Garden',1),(222,'Noida Sec 18','Noida Sec 16',1),(223,'Noida Sec 16','Noida Sec 18',1),(224,'Noida Sec 16','Noida Sec 15',1),(225,'Noida Sec 15','Noida Sec 16',1),(226,'Noida Sec 15','New Ashok Nagar',1),(227,'New Ashok Nagar','Noida Sec 15',1),(228,'New Ashok Nagar','Mayur Vihar Extn.',1),(229,'Mayur Vihar Extn.','New Ashok Nagar',1),(230,'Mayur Vihar Extn.','Mayur Vihar I',1),(231,'Mayur Vihar I','Mayur Vihar Extn.',1),(232,'Mayur Vihar I','Akshardham',1),(233,'Akshardham','Yamuna Bank',1),(234,'Yamuna Bank','Akshardham',1),(235,'Yamuna Bank','Indraprastha',1),(236,'Indraprastha','Yamuna Bank',1),(237,'Indraprastha','Pragati Maidan',1),(238,'Pragati Maidan','Indraprastha',1),(239,'Pragati Maidan','Mandi House',1),(240,'Mandi House','Pragati Maidan',1),(241,'Mandi House','Barakhamba Road',1),(242,'Barakhamba Road','Mandi House',1),(243,'Barakhamba Road','Rajiv Chowk',1),(244,'Rajiv Chowk','Barakhamba Road',1),(245,'Rajiv Chowk','Ramakrishna Ashram Marg',1),(246,'Ramakrishna Ashram Marg','Rajiv Chowk',1),(247,'Ramakrishna Ashram Marg','Jhandewalan',1),(248,'Jhandewalan','Ramakrishna Ashram Marg',1),(249,'Jhandewalan','Karol Bagh',1),(250,'Karol Bagh','Jhandewalan',1),(251,'Karol Bagh','Rajendra Place',1),(252,'Rajendra Place','Karol Bagh',1),(253,'Rajendra Place','Patel Nagar',1),(254,'Patel Nagar','Rajendra Place',1),(255,'Patel Nagar','Shadipur',1),(256,'Shadipur','Patel Nagar',1),(257,'Shadipur','Kirti Nagar',1),(258,'Kirti Nagar','Shadipur',1),(259,'Kirti Nagar','Moti Nagar',1),(260,'Moti Nagar','Kirti Nagar',1),(261,'Moti Nagar','Ramesh Nagar',1),(262,'Ramesh Nagar','Moti Nagar',1),(263,'Ramesh Nagar','Rajouri Garden',1),(264,'Rajouri Garden','Ramesh Nagar',1),(265,'Rajouri Garden','Tagore Garden',1),(266,'Tagore Garden','Rajouri Garden',1),(267,'Tagore Garden','Subhash Nagar',1),(268,'Subhash Nagar','Tagore Garden',1),(269,'Subhash Nagar','Tilak Nagar',1),(270,'Tilak Nagar','Subhash Nagar',1),(271,'Tilak Nagar','Janakpuri East',1),(272,'Janakpuri East','Tilak Nagar',1),(273,'Janakpuri East','Janakpuri West',1),(274,'Janakpuri West','Janakpuri East',1),(275,'Janakpuri West','Uttam Nagar East',1),(276,'Uttam Nagar East','Janakpuri West',1),(277,'Uttam Nagar East','Uttam Nagar West',1),(278,'Uttam Nagar West','Uttam Nagar East',1),(279,'Uttam Nagar West','Nawada',1),(280,'Nawada','Uttam Nagar West',1),(281,'Nawada','Dwarka Mor',1),(282,'Dwarka Mor','Nawada',1),(283,'Dwarka Mor','Dwarka',1),(284,'Dwarka','Dwarka Mor',1),(285,'Dwarka','Dwarka Sec 14',1),(286,'Dwarka Sec 14','Dwarka',1),(287,'Dwarka Sec 14','Dwarka Sec 13',1),(288,'Dwarka Sec 13','Dwarka Sec 14',1),(289,'Dwarka Sec 13','Dwarka Sec 12',1),(290,'Dwarka Sec 12','Dwarka Sec 13',1),(291,'Dwarka Sec 12','Dwarka Sec 11',1),(292,'Dwarka Sec 11','Dwarka Sec 12',1),(293,'Dwarka Sec 11','Dwarka Sec 10',1),(294,'Dwarka Sec 10','Dwarka Sec 11',1),(295,'Dwarka Sec 10','Dwarka Sec 9',1),(296,'Dwarka Sec 9','Dwarka Sec 10',1),(297,'Dwarka Sec 9','Dwarka Sec 8',1),(298,'Dwarka Sec 8','Dwarka Sec 9',1),(299,'Dwarka Sec 8','Dwarka Sec 21',1),(300,'Dwarka Sec 21','Dwarka Sec 8',1);
/*!40000 ALTER TABLE `statn_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'gauravjeet007@gmail.com'),(3,'gauravjeet@osscube.com'),(5,'riship_007@yahoo.com'),(8,'gauravjeet007@gmail.com'),(9,'gauravjeet007@gmail.com'),(10,'gauravjeet@osscube.com'),(11,'gauravjeet@osscube.com'),(12,'riship_007@yahoo.com'),(13,'gauravjeet@osscube.com'),(14,'gauravjeet007@gmail.com');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_time`
--

DROP TABLE IF EXISTS `train_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train_time` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `frst_train` time NOT NULL,
  `last_train` time NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_time`
--

LOCK TABLES `train_time` WRITE;
/*!40000 ALTER TABLE `train_time` DISABLE KEYS */;
INSERT INTO `train_time` VALUES (1,'Kashmere Gate','05:08:00','23:17:00'),(2,'Chandni Chowk','05:11:00','23:19:00');
/*!40000 ALTER TABLE `train_time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-26 18:22:46
