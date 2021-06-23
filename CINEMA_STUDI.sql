-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cinema_studi
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cinema_studi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cinema_studi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cinema_studi`;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id_administrator` varchar(100) NOT NULL,
  `in_charge_of` varchar(100) NOT NULL,
  PRIMARY KEY (`id_administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` (`id_administrator`, `in_charge_of`) VALUES ('DAVID@localhost','METZ-THIONVILLE-ST JULIEN-PARIS'),('FIONA@localhost','NANCY-VIGY-LESSY-LORIENT');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `num_command` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num_command`)
) ENGINE=InnoDB AUTO_INCREMENT=94048 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` (`num_command`) VALUES (14242),(16253),(31425),(62628),(62752),(72635),(93782),(94047);
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=836730 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id_customer`, `name`, `surname`, `email`, `adress`, `password`) VALUES (132214,'ALEX','LEVALOIS','ALX@example.com','43 GOODVIEW AVENUE METZ','$2y$10$WolZbkBIGUETm5mFW43McOIUYJ4QJ9xtnrwCf/lTPlUqc8qjVxI3S'),(178397,'NORA','COOPER','Nora@example.com','3 MOSEL AVENUE LORIENT','$2y$10$zZAYyHLsGcTa/ovWZP0T9uYORi1AuVhudYLiyN4ERr2KhIZFRkxue'),(263273,'ZOE','SAND','zoe@example.com','53 JAVA STREET THIONVILLE','$2y$10$uH6mYsmlid7y4wsJzeXrcOfTlzXDrYOUqjv6lSHFCruxVyzqE6/L.'),(362783,'DENIS','RENAUT','dd@example.com','65 AWKARD AVENUE VIGY','$2y$10$tCR4nFu.Q2ttGrsTI7ebce9yDJ9Xo1bbVa0yarjE8HlGp2lPFiVEO'),(472828,'LISA','BOLO','liz@example.com','7 EASY STREET LESSY','$2y$10$mq30E9qK2pMv99hnb47.deUZ6/OvhIA8PU.Gzy1/fzUiHjn7G643q'),(736381,'DWIGHT','LYONS','DWI@example.com','82 JIG AVENUE NANCY','$2y$10$p0CCIiM214E5pSVsInFOGuKUsYoyGBr1gm0C8DUMcgBCyHeUZENDO'),(737838,'SABRINA','CALIGHAN','sab@example.com','21 SKY STREET PARIS','$2y$10$cmxFAYsmS.w2slyUN4nVZezxhPvFeAcM82R2Lj.YmeIuMnS0qs4fO'),(836729,'PATRICK','DERU','pat@example.com','2 COR STREET ST JULIEN','$2y$10$V0vttJbXoL47Rw1YjDoUEOktxijV669sQuWamJRZiCmhtmGBm6N3K');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_title` varchar(100) NOT NULL,
  PRIMARY KEY (`movie_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` (`movie_title`) VALUES ('ARMAGEBON'),('BACK TO PARIS'),('KILL GILL'),('LORD OF RING'),('LOVE IN NEW YORK'),('PARANORMAL DESACTIVITY'),('PULP ADDICTION'),('STAR LAWS');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `movie` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`movie`, `description`) VALUES ('ARMAGEBON','While on a mission in Earth orbit, the shuttle Atlantis is destroyed by a meteor shower that ends its course in New York. This is the prelude to a major catastrophe: an asteroid the size of Texas will crash into Earth in eighteen days.'),('BACK TO PARIS','Murphy is a film school student. He has been with his girlfriend Electra for two years, when they invite a very young neighbor, Omi, to share their sex games. But in Electra absence, Murphy has a relationship with Omi again, and Omi (who is against abortion) soon learns that she is pregnant. This unwanted pregnancy ends the relationship between Murphy and Electra.'),('KILL GILL','It stars Uma Thurman as the Bride, who swears revenge on a team of assassins (Lucy Liu, Michael Madsen, Daryl Hannah, and Vivica A. Fox) and their leader, Gill (David Carradine), after they try to kill her and her unborn child. Her journey takes her to Tokyo, where she battles the yakuza.'),('LORD OF RING','The Lord of Ring is the saga of a group of sometimes reluctant heroes who set forth to save their world from consummate evil. Its many worlds and creatures were drawn from Tolkien extensive knowledge of philology and folklore.'),('LOVE IN NEW YORK','It is a continuation of the 1998-2004 about four friends, Carrie Bradshaw (Sarah Jessica Parker), Samantha Jones (Kim Cattrall), Charlotte York Goldenblatt (Kristin Davis), and Miranda Hobbes (Cynthia Nixon), and their lives as women in New York City.'),('PARANORMAL DESACTIVITY','Kristi, sister of Katie, the main character of the first installment, lives with her husband Daniel, their son Hunter and Daniel daughter, Ali. As they return from vacation, they find their new home upside down, except for Hunter bedroom and the cellar.'),('PULP ADDICTION','The bloody and burlesque odyssey of little thugs in the Hollywood jungle through three intertwining stories. In a restaurant, a couple of young robbers, Pumpkin and Yolanda, discuss the risks involved in their activity. Two mobsters, Jules Winnfield and his friend Vincent Vega.'),('STAR LAWS','Long ago, in a galaxy far, far away. Civil war rages between the Galactic Empire and the Rebel Alliance. Captured by the Emperor shock troops led by the dark and ruthless Darth Vader, Princess Leia Organa conceals the plans of the Death Star, an invulnerable space station, from her droid R2-D2 with a mission to deliver them to the Jedi Obi-Wan Kenobi.');
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `full_price` varchar(100) NOT NULL,
  `student` varchar(100) DEFAULT NULL,
  `kids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`full_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` (`full_price`, `student`, `kids`) VALUES ('9,20','7,60','5,90');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `hours` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `movie` varchar(100) DEFAULT NULL,
  `id_registration` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`name`, `location`, `hours`, `date`, `movie`, `id_registration`) VALUES ('ALEX LEVALOIS','METZ','19:00:00','2021-06-17','LORD OF RING',128653),('DENIS RENAUT','VIGY','17:30:00','2021-06-19','KILL GILL',174267),('DWIGHT LYONS','NANCY','10:00:00','2021-06-18','LOVE IN NEW YORK',193648),('LISA BOLO','LESSY','22:30:00','2021-06-20','BACK TO PARIS',156372),('NORA COOPER','LORIENT','09:30:00','2021-06-24','PULP ADDICTION',127379),('PATRICK DERU','ST JULIEN','22:00:00','2021-06-22','ARMAGEBON',173829),('SABRINA CALIGHAN','PARIS','13:00:00','2021-06-21','STAR LAWS',132345),('ZOE SAND','THIONVILLE','22:30:00','2021-06-23','PARANORMAL DESACTIVITY',124314);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `session_time` date NOT NULL,
  `hours` time DEFAULT NULL,
  `movie_title` varchar(100) DEFAULT NULL,
  `remaining_places` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`session_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` (`session_time`, `hours`, `movie_title`, `remaining_places`, `location`) VALUES ('2021-06-17','19:00:00','LORD OF RING',12,'METZ'),('2021-06-18','10:00:00','LOVE IN NEW YORK',21,'NANCY'),('2021-06-19','17:30:00','KILL GILL',7,'VIGY'),('2021-06-20','22:30:00','BACK TO PARIS',30,'LESSY'),('2021-06-21','13:00:00','STAR LAWS',2,'PARIS'),('2021-06-22','22:00:00','ARMAGEBON',11,'ST JULIEN'),('2021-06-23','22:30:00','PARANORMAL DESACTIVITY',22,'THIONVILLE'),('2021-06-24','09:30:00','PULP ADDICTION',5,'LORIENT');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 12:18:02
