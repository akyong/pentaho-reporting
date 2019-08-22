CREATE DATABASE  IF NOT EXISTS `migrants` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `migrants`;
-- MySQL dump 10.13  Distrib 5.7.24, for macos10.14 (x86_64)
--
-- Host: localhost    Database: migrants
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `cause_of_death`
--

DROP TABLE IF EXISTS `cause_of_death`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cause_of_death` (
  `cause_id` int(11) NOT NULL AUTO_INCREMENT,
  `cause_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cause_id`),
  UNIQUE KEY `cause_id_UNIQUE` (`cause_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cause_of_death`
--

LOCK TABLES `cause_of_death` WRITE;
/*!40000 ALTER TABLE `cause_of_death` DISABLE KEYS */;
/*!40000 ALTER TABLE `cause_of_death` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_source`
--

DROP TABLE IF EXISTS `information_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_source` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `source_quality` int(11) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_source`
--

LOCK TABLES `information_source` WRITE;
/*!40000 ALTER TABLE `information_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `information_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `coordinates` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missing_migrant`
--

DROP TABLE IF EXISTS `missing_migrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missing_migrant` (
  `mmigrant_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `cause_id` int(11) DEFAULT NULL,
  `information_id` int(11) DEFAULT NULL,
  `unsd_id` int(11) DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `number_of_death` int(11) DEFAULT NULL,
  `minimum_estimated_number_missing` int(11) DEFAULT NULL,
  `number_of_survivors` int(11) DEFAULT NULL,
  `number_of_females` int(11) DEFAULT NULL,
  `number_of_childeren` int(11) DEFAULT NULL,
  `number_of_male` int(11) DEFAULT NULL,
  `address_locatio` varchar(255) DEFAULT NULL,
  `migration_route` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mmigrant_id`),
  UNIQUE KEY `mmigrant_id_UNIQUE` (`mmigrant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missing_migrant`
--

LOCK TABLES `missing_migrant` WRITE;
/*!40000 ALTER TABLE `missing_migrant` DISABLE KEYS */;
/*!40000 ALTER TABLE `missing_migrant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_id_UNIQUE` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsd_geo_grouping`
--

DROP TABLE IF EXISTS `unsd_geo_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsd_geo_grouping` (
  `unsd_id` int(11) NOT NULL AUTO_INCREMENT,
  `unsd_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`unsd_id`),
  UNIQUE KEY `unsd_id_UNIQUE` (`unsd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsd_geo_grouping`
--

LOCK TABLES `unsd_geo_grouping` WRITE;
/*!40000 ALTER TABLE `unsd_geo_grouping` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsd_geo_grouping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 16:32:51
