-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: userevents
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `timestamp` datetime DEFAULT NULL,
  `productid` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `event` char(15) DEFAULT NULL,
  `eventid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('2022-07-05 15:29:58',2,'Black Shoes','Click',2),('2022-07-05 15:30:22',3,'Headphones','Click',3),('2022-07-05 15:35:52',3,'Headphones','Click',4),('2022-07-05 15:36:05',4,'Accoustic Guitar','Click',5),('2022-07-05 15:36:08',4,'Accoustic Guitar','Click',6),('2022-07-05 15:36:58',1,'Monteblanc Watch','Click',7),('2022-07-05 15:37:08',2,'Black Shoes','Click',8),('2022-07-05 15:37:10',3,'Headphones','Click',9),('2022-07-05 15:37:13',4,'Accoustic Guitar','Click',10),('2022-07-05 17:32:08',2,'Black Shoes','Click',11),('2022-07-05 17:32:11',3,'Headphones','Click',12),('2022-07-05 17:32:20',1,'Monteblanc Watch','Click',13),('2022-07-05 17:32:24',4,'Accoustic Guitar','Click',14),('2022-07-05 17:35:00',2,'Black Shoes','Click',15),('2022-07-09 10:55:24',2,'Black Shoes','Click',16),('2022-07-09 11:00:34',1,'Monteblanc Watch','Click',17),('2022-07-09 11:00:34',1,'Monteblanc Watch','Click',18),('2022-07-09 11:00:35',1,'Monteblanc Watch','Click',19),('2022-07-09 11:00:38',2,'Black Shoes','Click',20),('2022-07-09 11:00:39',2,'Black Shoes','Click',21),('2022-07-09 11:01:52',1,'Monteblanc Watch','Hover',22),('2022-07-09 11:01:56',2,'Black Shoes','Hover',23),('2022-07-09 11:03:08',2,'Black Shoes','Hover',24),('2022-07-09 11:03:08',2,'Black Shoes','Click',25),('2022-07-09 11:03:48',1,'Monteblanc Watch','Hover',26),('2022-07-09 11:03:51',2,'Black Shoes','Hover',27),('2022-07-09 11:03:55',2,'Black Shoes','Click',28),('2022-07-09 11:07:55',1,'Monteblanc Watch','Hover',29),('2022-07-09 11:10:23',3,'Headphones','Hover',30),('2022-07-09 11:10:25',2,'Black Shoes','Hover',31),('2022-07-09 11:10:27',2,'Black Shoes','Click',32),('2022-07-09 11:10:53',1,'Monteblanc Watch','Hover',33),('2022-07-09 11:10:54',3,'Headphones','Hover',34),('2022-07-09 11:10:56',4,'Accoustic Guitar','Hover',35),('2022-07-09 12:13:04',1,'Monteblanc Watch','Hover',36),('2022-07-09 12:13:07',3,'Headphones','Hover',37),('2022-07-09 12:13:09',4,'Accoustic Guitar','Hover',38),('2022-07-09 12:13:10',4,'Accoustic Guitar','Hover',39),('2022-07-09 12:13:17',2,'Black Shoes','Hover',40),('2022-07-09 18:09:11',2,'Black Shoes','Hover',41),('2022-07-09 18:09:13',3,'Headphones','Hover',42),('2022-07-09 18:09:14',4,'Accoustic Guitar','Hover',43),('2022-07-09 18:09:15',4,'Accoustic Guitar','Click',44),('2022-07-09 18:18:36',3,'Headphones','Hover',45),('2022-07-09 18:18:36',3,'Headphones','Hover',46),('2022-07-09 18:18:38',3,'Headphones','Click',47),('2022-07-09 18:18:39',2,'Black Shoes','Hover',48),('2022-07-09 18:18:40',2,'Black Shoes','Click',49),('2022-07-09 18:21:12',3,'Headphones','Hover',50),('2022-07-09 18:21:13',3,'Headphones','Click',51),('2022-07-09 18:21:20',2,'Black Shoes','Hover',52),('2022-07-09 18:21:21',2,'Black Shoes','Click',53),('2022-07-10 19:23:39',2,'Black Shoes','Hover',54),('2022-07-10 19:23:40',2,'Black Shoes','Hover',55),('2022-07-10 22:00:52',1,'Monteblanc Watch','Hover',56),('2022-07-10 22:00:52',1,'Monteblanc Watch','Hover',57),('2022-07-10 22:01:04',1,'Monteblanc Watch','Hover',58),('2022-07-10 22:01:06',2,'Black Shoes','Hover',59),('2022-07-10 22:01:06',2,'Black Shoes','Hover',60),('2022-07-10 22:01:07',3,'Headphones','Hover',61),('2022-07-10 22:01:18',1,'Monteblanc Watch','Hover',62),('2022-07-10 22:01:19',2,'Black Shoes','Hover',63),('2022-07-10 22:01:20',3,'Headphones','Hover',64),('2022-07-10 22:01:21',4,'Accoustic Guitar','Hover',65),('2022-07-10 22:01:43',3,'Headphones','Hover',66),('2022-07-10 22:01:52',2,'Black Shoes','Hover',67),('2022-07-10 22:01:54',1,'Monteblanc Watch','Hover',68),('2022-07-10 22:29:36',1,'Monteblanc Watch','Hover',69),('2022-07-10 22:29:48',1,'Monteblanc Watch','Hover',70),('2022-07-10 22:29:48',1,'Monteblanc Watch','Hover',71),('2022-07-10 22:29:49',2,'Black Shoes','Hover',72),('2022-07-10 22:30:30',1,'Monteblanc Watch','Hover',73),('2022-07-10 22:30:30',1,'Monteblanc Watch','Hover',74),('2022-07-10 22:30:39',1,'Monteblanc Watch','Hover',75),('2022-07-10 22:32:07',1,'Monteblanc Watch','Hover',76),('2022-07-10 22:38:16',1,'Monteblanc Watch','Hover',77),('2022-07-10 22:41:41',4,'Accoustic Guitar','Hover',78),('2022-07-10 22:41:57',2,'Black Shoes','Hover',79),('2022-07-10 22:43:36',1,'Monteblanc Watch','Hover',80),('2022-07-10 22:43:37',2,'Black Shoes','Hover',81),('2022-07-10 22:43:37',3,'Headphones','Hover',82),('2022-07-10 22:43:39',4,'Accoustic Guitar','Hover',83),('2022-07-10 22:43:39',4,'Accoustic Guitar','Hover',84),('2022-07-10 22:44:56',3,'Headphones','Hover',85),('2022-07-10 22:45:01',3,'Headphones','Hover',86),('2022-07-10 22:56:45',2,'Black Shoes','Hover',87),('2022-07-10 22:56:47',3,'Headphones','Hover',88),('2022-07-10 23:00:20',2,'Black Shoes','Hover',89),('2022-07-10 23:00:21',1,'Monteblanc Watch','Hover',90),('2022-07-10 23:00:22',3,'Headphones','Hover',91),('2022-07-10 23:00:23',4,'Accoustic Guitar','Hover',92),('2022-07-10 23:00:24',2,'Black Shoes','Hover',93),('2022-07-10 23:00:25',2,'Black Shoes','Hover',94),('2022-07-10 23:00:26',1,'Monteblanc Watch','Hover',95),('2022-07-10 23:23:01',1,'Monteblanc Watch','Hover',96),('2022-07-10 23:23:10',2,'Black Shoes','Hover',97),('2022-07-10 23:23:10',2,'Black Shoes','Hover',98),('2022-07-10 23:23:11',2,'Black Shoes','Click',99),('2022-07-10 23:23:20',3,'Headphones','Hover',100),('2022-07-10 23:23:21',3,'Headphones','Click',101);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-11 22:01:15
