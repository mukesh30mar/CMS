-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.49


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema exercise
--

CREATE DATABASE IF NOT EXISTS exercise;
USE exercise;

--
-- Definition of table `exercise`.`Suppliers`
--

DROP TABLE IF EXISTS `exercise`.`Suppliers`;
CREATE TABLE  `exercise`.`Suppliers` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SName` text,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise`.`Suppliers`
--

/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
LOCK TABLES `Suppliers` WRITE;
INSERT INTO `exercise`.`Suppliers` VALUES  (1,'Mukesh'),
 (2,'Sumit'),
 (3,'Rakesh'),
 (4,'Gaurav'),
 (5,'Ashwani');
UNLOCK TABLES;
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;


--
-- Definition of table `exercise`.`parts`
--

DROP TABLE IF EXISTS `exercise`.`parts`;
CREATE TABLE  `exercise`.`parts` (
  `Partid` int(11) NOT NULL AUTO_INCREMENT,
  `PartName` text,
  PRIMARY KEY (`Partid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise`.`parts`
--

/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
LOCK TABLES `parts` WRITE;
INSERT INTO `exercise`.`parts` VALUES  (1,'p1'),
 (2,'p2'),
 (3,'red');
UNLOCK TABLES;
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;


--
-- Definition of table `exercise`.`shipments`
--

DROP TABLE IF EXISTS `exercise`.`shipments`;
CREATE TABLE  `exercise`.`shipments` (
  `SID` int(11) DEFAULT NULL,
  `PartId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `SID` (`SID`),
  KEY `PartId` (`PartId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise`.`shipments`
--

/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
LOCK TABLES `shipments` WRITE;
INSERT INTO `exercise`.`shipments` VALUES  (1,1,2),
 (1,2,3),
 (1,3,4),
 (2,1,4),
 (3,2,1),
 (3,3,1),
 (4,1,1),
 (4,2,1),
 (4,3,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

--
-- Create schema learningrails_9_development
--

CREATE DATABASE IF NOT EXISTS learningrails_9_development;
USE learningrails_9_development;

--
-- Definition of table `learningrails_9_development`.`pages`
--

DROP TABLE IF EXISTS `learningrails_9_development`.`pages`;
CREATE TABLE  `learningrails_9_development`.`pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `learningrails_9_development`.`pages`
--

/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
LOCK TABLES `pages` WRITE;
INSERT INTO `learningrails_9_development`.`pages` VALUES  (1,'Home','Home','<p>my name is mukesh</p>\n*i m italic*','2011-04-08 05:47:18','2011-04-12 12:00:53',0),
 (2,'About ','About Us','<h1>My About Us pages</h1>','2011-04-08 05:48:51','2011-04-11 05:40:39',0),
 (3,'Resources','Resouces','<h1>My Resources  pages</h1>','2011-04-08 05:49:16','2011-04-11 05:40:39',0),
 (4,'Contact','Contact Us','<h1>Comming Soon</h1>','2011-04-08 05:49:52','2011-04-12 09:59:38',0),
 (6,'admin','admin','h1. Admin Dashboard \n\n\"Page Admin\":/pages\n\n\"User Admin\":/users','2011-04-11 06:11:49','2011-04-12 13:30:14',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


--
-- Definition of table `learningrails_9_development`.`schema_migrations`
--

DROP TABLE IF EXISTS `learningrails_9_development`.`schema_migrations`;
CREATE TABLE  `learningrails_9_development`.`schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `learningrails_9_development`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `learningrails_9_development`.`schema_migrations` VALUES  ('20110408053203'),
 ('20110408120714'),
 ('20110409101956'),
 ('20110411053222');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `learningrails_9_development`.`users`
--

DROP TABLE IF EXISTS `learningrails_9_development`.`users`;
CREATE TABLE  `learningrails_9_development`.`users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `learningrails_9_development`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `learningrails_9_development`.`users` VALUES  (2,'sumit','','sumit@gmail.com','26cdb9292a7bfea80f0c21d60805d4d3c6f550e3','e0669961437f55c9c5857e46515c09d255e19c99','2011-04-09 09:54:17','2011-04-09 09:54:17',NULL,NULL),
 (3,'admin','','admin@sample.com','2bf243daa324f1cbee39ab8e6d4e95e34795b9fe','9290475b9e48a981db3888a5d771774bab1d4ac9','2011-04-09 10:57:44','2011-04-09 10:57:44',NULL,NULL),
 (4,'mukesh','','mukesh.kumar@vinsol.com','1e0a32bdc97b4ed72eb02bedb6c6b43491d119ce','ae91924853297945df9be6dd61ebc1d5ee33cb79','2011-04-11 06:48:48','2011-04-11 06:48:48',NULL,NULL),
 (5,'amit','','amit@vinsol.com','a1471b7c69db50de1127e5979afeece2cea494fc','89eb3b549d39e145ea3bcc7fc47c0f02e933f5cd','2011-04-13 05:47:34','2011-04-13 05:47:34',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
