-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_questions` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text NOT NULL,
  `Factor` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,'It upsets me when I don’t excel in class even after putting in a lot of efforts / It makes me feel distressed when I fail.','Academic Achievement'),(2,'It frustrates me to know that I am not excelling as much as my peers & I start envying them','Academic Achievement'),(3,'I am not satisfied even when I stand first in class / I berate myself when unable to answer a question in class or in my exam','Academic Achievement');
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'a','0cc175b9c0f1b6a831c399e269772661','a@a.a','2020-03-14 15:22:34','2020-03-14 15:22:34'),(2,'b','92eb5ffee6ae2fec3ad71c777531578f','b@b.b','2020-05-19 11:24:45','2020-05-19 11:24:45'),(3,'aakankasha','92eb5ffee6ae2fec3ad71c777531578f','a@a.aa','2020-05-19 11:25:18','2020-05-19 11:25:18'),(4,'aakankasha1','0cc175b9c0f1b6a831c399e269772661','a@a1.a','2020-05-19 16:11:26','2020-05-19 16:11:26');
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

-- Dump completed on 2020-05-19 22:16:19
