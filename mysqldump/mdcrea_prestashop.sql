-- MySQL dump 10.11
--
-- Host: localhost    Database: mdcrea_prestashop
-- ------------------------------------------------------
-- Server version	5.0.90-community

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
-- Table structure for table `ps_access`
--

DROP TABLE IF EXISTS `ps_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY  (`id_profile`,`id_tab`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_access`
--

LOCK TABLES `ps_access` WRITE;
/*!40000 ALTER TABLE `ps_access` DISABLE KEYS */;
INSERT INTO `ps_access` VALUES (1,1,1,1,1,1),(1,2,1,1,1,1),(1,3,1,1,1,1),(1,4,1,1,1,1),(1,5,1,1,1,1),(1,6,1,1,1,1),(1,7,1,1,1,1),(1,8,1,1,1,1),(1,9,1,1,1,1),(1,10,1,1,1,1),(1,11,1,1,1,1),(1,12,1,1,1,1),(1,13,1,1,1,1),(1,14,1,1,1,1),(1,15,1,1,1,1),(1,16,1,1,1,1),(1,17,1,1,1,1),(1,18,1,1,1,1),(1,19,1,1,1,1),(1,20,1,1,1,1),(1,21,1,1,1,1),(1,22,1,1,1,1),(1,23,1,1,1,1),(1,24,1,1,1,1),(1,26,1,1,1,1),(1,27,1,1,1,1),(1,28,1,1,1,1),(1,29,1,1,1,1),(1,30,1,1,1,1),(1,31,1,1,1,1),(1,32,1,1,1,1),(1,33,1,1,1,1),(1,34,1,1,1,1),(1,35,1,1,1,1),(1,36,1,1,1,1),(1,37,1,1,1,1),(1,38,1,1,1,1),(1,39,1,1,1,1),(1,40,1,1,1,1),(1,41,1,1,1,1),(1,42,1,1,1,1),(1,43,1,1,1,1),(1,44,1,1,1,1),(1,46,1,1,1,1),(1,47,1,1,1,1),(1,48,1,1,1,1),(1,49,1,1,1,1),(1,50,1,1,1,1),(1,51,1,1,1,1),(1,52,1,1,1,1),(1,53,1,1,1,1),(1,54,1,1,1,1),(1,55,1,1,1,1),(1,56,1,1,1,1),(1,57,1,1,1,1),(1,58,1,1,1,1),(1,59,1,1,1,1),(1,60,1,1,1,1),(1,61,1,1,1,1),(1,62,1,1,1,1),(1,63,1,1,1,1),(1,64,1,1,1,1),(1,65,1,1,1,1),(1,66,1,1,1,1),(1,67,1,1,1,1),(1,68,1,1,1,1);
/*!40000 ALTER TABLE `ps_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_accessory`
--

DROP TABLE IF EXISTS `ps_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_accessory`
--

LOCK TABLES `ps_accessory` WRITE;
/*!40000 ALTER TABLE `ps_accessory` DISABLE KEYS */;
INSERT INTO `ps_accessory` VALUES (101,20);
/*!40000 ALTER TABLE `ps_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_address`
--

DROP TABLE IF EXISTS `ps_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_address` (
  `id_address` int(10) unsigned NOT NULL auto_increment,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned default NULL,
  `id_customer` int(10) unsigned NOT NULL default '0',
  `id_manufacturer` int(10) unsigned NOT NULL default '0',
  `id_supplier` int(10) unsigned NOT NULL default '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(32) default NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) default NULL,
  `postcode` varchar(12) default NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(16) default NULL,
  `phone_mobile` varchar(16) default NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '1',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_address`
--

LOCK TABLES `ps_address` WRITE;
/*!40000 ALTER TABLE `ps_address` DISABLE KEYS */;
INSERT INTO `ps_address` VALUES (1,21,5,0,1,0,'manufacturer',NULL,'JOBS','STEVE','1 Infinite Loop',NULL,'95014','Cupertino',NULL,'(800) 275-2273',NULL,'2010-07-19 19:03:24','2010-07-19 19:03:24',1,0),(2,8,0,1,0,0,'Mon adresse','My Company','DOE','John','16, Main street','2nd floor','75000','Paris ',NULL,'0102030405',NULL,'2010-07-19 19:03:24','2010-07-19 19:03:24',1,0),(3,8,0,2,0,0,'Travail','STUDIO HTTP','Rumeau','Robin','49 bis rue de Lourmel','','75015','Paris','Société en rez-de chaussée avec vitrine.\r\nEntrer et demander Robin Rumeau ou Studio http','01 71 18 23 26','06 21 95 42 87','2010-07-21 12:03:51','2010-10-25 18:58:14',1,1),(4,8,0,3,0,0,'Mon adresse','','zer','zer','zer','','zer','zer','','','','2010-07-21 21:54:55','2010-07-21 21:54:55',1,0),(5,8,0,4,0,0,'Mon adresse','','LAFON','Sophie','1 rue de la Forge Royale','','75011','PARIS','','','','2010-10-18 19:03:02','2010-10-18 19:03:02',1,0),(6,8,0,4,0,0,'Autre adresse','','LAFON','Sophie','2 rue test','Appartement xx','75011','PARIS','','','','2010-10-19 14:08:29','2010-10-19 14:08:29',1,0),(7,8,0,2,0,0,'Domicile',' ','Rumeau','Robin','55 rue Hippolyte maindron','','75014','PARIS','3ème étage droite.\r\nCode porte 1234C\r\nSonner au 3°3 puis appeler l\'ascenseur.','0621954287','0621954287','2010-10-22 12:08:38','2010-10-22 12:08:59',1,0),(8,8,0,5,0,0,'Domicile et bureau :)','','Denis','Marianne','55 rue Hippolyte Maindron','','75014','Paris','code 898\r\ninterphone 5367\r\n','','06 10 11 78 75','2010-10-25 17:21:38','2010-10-25 17:21:38',1,0),(9,8,0,2,0,0,'Travail','STUDIO HTTP','Rumeau','Robin','49 bis rue de Lourmel','','75015','Paris','Société en rez-de chaussée avec vitrine.\r\nEntrer et demander Robin Rumeau ou Studio http','01 71 18 23 26','06 21 95 42 87','2010-10-25 18:58:14','2010-10-25 18:58:24',1,0);
/*!40000 ALTER TABLE `ps_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_alias`
--

DROP TABLE IF EXISTS `ps_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_alias`
--

LOCK TABLES `ps_alias` WRITE;
/*!40000 ALTER TABLE `ps_alias` DISABLE KEYS */;
INSERT INTO `ps_alias` VALUES (4,'piod','ipod',1),(3,'ipdo','ipod',1);
/*!40000 ALTER TABLE `ps_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment`
--

DROP TABLE IF EXISTS `ps_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL auto_increment,
  `file` varchar(40) NOT NULL,
  `mime` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment`
--

LOCK TABLES `ps_attachment` WRITE;
/*!40000 ALTER TABLE `ps_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment_lang`
--

DROP TABLE IF EXISTS `ps_attachment_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL auto_increment,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) default NULL,
  `description` text,
  PRIMARY KEY  (`id_attachment`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment_lang`
--

LOCK TABLES `ps_attachment_lang` WRITE;
/*!40000 ALTER TABLE `ps_attachment_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute`
--

DROP TABLE IF EXISTS `ps_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL auto_increment,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) default NULL,
  PRIMARY KEY  (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute`
--

LOCK TABLES `ps_attribute` WRITE;
/*!40000 ALTER TABLE `ps_attribute` DISABLE KEYS */;
INSERT INTO `ps_attribute` VALUES (26,7,'#000000'),(25,7,'#000000'),(22,4,'#000000'),(21,4,'#000000'),(24,5,'#000000'),(3,2,'#D2D6D5'),(4,2,'#008CB7'),(5,2,'#F3349E'),(6,2,'#93D52D'),(7,2,'#FD9812'),(23,5,'#000000'),(18,2,'#7800F0'),(19,2,'#F6EF04'),(20,2,'#F60409'),(14,2,'#000000'),(27,2,'#000000'),(28,8,'#000000'),(29,8,'#000000'),(30,9,'#000000'),(31,9,'#000000');
/*!40000 ALTER TABLE `ps_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group`
--

DROP TABLE IF EXISTS `ps_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL auto_increment,
  `is_color_group` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id_attribute_group`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group`
--

LOCK TABLES `ps_attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group` DISABLE KEYS */;
INSERT INTO `ps_attribute_group` VALUES (5,0),(2,1),(4,0),(6,1),(7,0),(8,0),(9,0);
/*!40000 ALTER TABLE `ps_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group_lang`
--

DROP TABLE IF EXISTS `ps_attribute_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY  (`id_attribute_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group_lang`
--

LOCK TABLES `ps_attribute_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_group_lang` VALUES (5,1,'matières','matières'),(2,1,'Color','Color'),(2,2,'Couleur','Couleur'),(4,2,'Pendentif','Pendentif'),(4,1,'Pendentif','Pendentif'),(5,2,'Matière','Matière'),(6,1,'couleurscouleurs','couleurscouleurs'),(6,2,'couleurscouleurs','couleurscouleurs'),(7,1,'Couleur de chaîne','Couleur de chaîne'),(7,2,'Couleur de chaîne','Couleur de chaîne'),(8,1,'Carrosserie','Carrosserie'),(8,2,'Carrosserie','Carrosserie'),(9,1,'Taille','Taille'),(9,2,'Taille','Taille');
/*!40000 ALTER TABLE `ps_attribute_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_impact`
--

DROP TABLE IF EXISTS `ps_attribute_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` float NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY  (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_impact`
--

LOCK TABLES `ps_attribute_impact` WRITE;
/*!40000 ALTER TABLE `ps_attribute_impact` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attribute_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_lang`
--

DROP TABLE IF EXISTS `ps_attribute_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_lang`
--

LOCK TABLES `ps_attribute_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_lang` VALUES (3,1,'Metal'),(3,2,'Metal'),(4,1,'Blue'),(4,2,'Bleu'),(5,1,'Pink'),(5,2,'Rose'),(6,1,'Green'),(6,2,'Vert'),(7,1,'Orange'),(7,2,'Orange'),(31,2,'2'),(30,1,'1'),(30,2,'1'),(31,1,'2'),(26,2,'Dorée'),(25,2,'Chromée'),(26,1,'Dorée'),(25,1,'Chromée'),(21,1,'Obsidienne'),(21,2,'Obsidienne'),(22,1,'Transparente jaune'),(22,2,'Transparente jaune'),(23,1,'laine'),(23,2,'laine'),(24,1,'coton'),(24,2,'coton'),(14,2,'Noir'),(14,1,'Black'),(29,2,'4x4'),(29,1,'4x4'),(28,2,'Berline'),(28,1,'Berline'),(27,2,'blanc'),(27,1,'blanc'),(18,1,'Purple'),(18,2,'Violet'),(19,1,'Yellow'),(19,2,'Jaune'),(20,1,'Red'),(20,2,'Rouge');
/*!40000 ALTER TABLE `ps_attribute_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_block_cms`
--

DROP TABLE IF EXISTS `ps_block_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_block_cms` (
  `id_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_block`,`id_cms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_block_cms`
--

LOCK TABLES `ps_block_cms` WRITE;
/*!40000 ALTER TABLE `ps_block_cms` DISABLE KEYS */;
INSERT INTO `ps_block_cms` VALUES (12,1),(12,2),(12,3),(12,4),(23,3),(23,4);
/*!40000 ALTER TABLE `ps_block_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier`
--

DROP TABLE IF EXISTS `ps_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL auto_increment,
  `id_tax` int(10) unsigned default '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) default NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL default '1',
  `range_behavior` tinyint(1) unsigned NOT NULL default '0',
  `is_module` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax` (`id_tax`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier`
--

LOCK TABLES `ps_carrier` WRITE;
/*!40000 ALTER TABLE `ps_carrier` DISABLE KEYS */;
INSERT INTO `ps_carrier` VALUES (1,0,'MD Création - Bijoux prêt-à-porter et sur mesure','',0,1,0,0,0),(2,1,'My carrier','',1,1,1,0,0),(3,1,'Colissimo','',1,1,1,0,0),(4,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(5,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,0),(6,1,'Colissimo','',0,1,1,0,0),(7,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,0),(8,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,1),(9,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,0),(10,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,0),(11,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,0,0),(12,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,0,1),(13,0,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,0,1),(14,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,0,0),(15,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(16,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(17,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(18,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(19,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(20,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(21,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,1,0,0),(22,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,1,0,1,0),(23,1,'So-Colissimo','http://www.colissimo.fr/particuliers/home.jsp',1,0,0,1,0);
/*!40000 ALTER TABLE `ps_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_group`
--

DROP TABLE IF EXISTS `ps_carrier_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  UNIQUE KEY `id_carrier` (`id_carrier`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_group`
--

LOCK TABLES `ps_carrier_group` WRITE;
/*!40000 ALTER TABLE `ps_carrier_group` DISABLE KEYS */;
INSERT INTO `ps_carrier_group` VALUES (1,1),(6,1),(23,1);
/*!40000 ALTER TABLE `ps_carrier_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_lang`
--

DROP TABLE IF EXISTS `ps_carrier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) default NULL,
  UNIQUE KEY `shipper_lang_index` (`id_lang`,`id_carrier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_lang`
--

LOCK TABLES `ps_carrier_lang` WRITE;
/*!40000 ALTER TABLE `ps_carrier_lang` DISABLE KEYS */;
INSERT INTO `ps_carrier_lang` VALUES (1,1,'Pick up in-store'),(1,2,'Retrait au magasin'),(3,2,'48h'),(2,1,'Delivery next day!'),(2,2,'Livraison le lendemain !'),(3,1,'Delivery next day!'),(4,2,'48h'),(5,2,'48h'),(6,2,'48h'),(7,2,'48h'),(8,2,'48h'),(9,2,'48h'),(10,2,'48h'),(11,2,'48h'),(12,2,'48h'),(13,2,'48h'),(14,2,'48h'),(15,2,'48h'),(16,2,'48h'),(17,2,'48h'),(18,2,'48h'),(19,2,'48h'),(20,2,'48h'),(21,2,'48h'),(22,2,'48h'),(23,2,'48h - Uniquement en France métropolitaine');
/*!40000 ALTER TABLE `ps_carrier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_zone`
--

DROP TABLE IF EXISTS `ps_carrier_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_carrier`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_zone`
--

LOCK TABLES `ps_carrier_zone` WRITE;
/*!40000 ALTER TABLE `ps_carrier_zone` DISABLE KEYS */;
INSERT INTO `ps_carrier_zone` VALUES (1,1),(2,1),(2,2),(3,1),(6,1),(7,1),(8,1),(9,1),(10,1),(10,6),(10,7),(11,6),(11,7),(12,6),(12,7),(13,1),(13,6),(13,7),(14,1),(14,6),(14,7),(15,1),(15,6),(15,7),(16,1),(16,6),(16,7),(16,8),(16,9),(17,6),(17,7),(17,8),(17,9),(18,1),(18,6),(18,7),(18,8),(18,9),(19,6),(19,7),(19,8),(19,9),(19,10),(20,6),(20,7),(20,8),(20,9),(20,10),(20,12),(20,13),(21,6),(21,7),(21,8),(21,9),(21,10),(21,12),(21,13),(22,6),(22,7),(22,8),(22,9),(22,10),(22,12),(22,13),(23,6),(23,7),(23,8),(23,9),(23,10),(23,12),(23,13);
/*!40000 ALTER TABLE `ps_carrier_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart`
--

DROP TABLE IF EXISTS `ps_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL auto_increment,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL default '1',
  `gift` tinyint(1) unsigned NOT NULL default '0',
  `gift_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart`
--

LOCK TABLES `ps_cart` WRITE;
/*!40000 ALTER TABLE `ps_cart` DISABLE KEYS */;
INSERT INTO `ps_cart` VALUES (1,2,2,6,6,1,1,1,1,0,NULL,'2010-07-19 19:03:24','2010-07-19 19:03:24'),(2,3,2,3,3,1,2,2,0,0,'','2010-07-20 11:48:31','2010-10-23 12:38:51'),(3,2,2,4,4,1,3,6,0,1,'','2010-07-21 21:27:29','2010-07-21 21:55:57'),(4,3,2,5,6,1,4,10,0,0,'','2010-10-15 12:24:49','2010-10-20 12:50:04'),(5,3,2,3,7,1,2,9,0,1,'Happy birthday !\r\nRobin','2010-10-15 13:38:15','2010-10-22 12:10:24'),(6,0,2,0,0,1,0,13,1,0,'','2010-10-19 20:16:09','2010-10-19 20:16:09'),(7,0,2,5,5,1,4,10,1,0,'','2010-10-20 13:14:40','2010-10-20 13:14:40'),(8,3,2,5,5,1,4,10,0,0,'','2010-10-20 13:16:07','2010-10-24 17:18:47'),(9,0,2,5,5,1,4,10,1,0,'','2010-10-24 18:33:30','2010-10-24 18:33:30'),(10,3,2,3,3,1,2,2,0,0,'','2010-10-25 11:44:37','2010-10-25 17:51:39'),(11,20,2,3,3,1,2,2,0,0,'','2010-10-25 16:29:59','2010-10-25 16:30:33'),(12,20,2,8,8,1,5,20,0,1,'à ma maman','2010-10-25 17:14:27','2010-10-25 17:22:50'),(13,23,2,7,7,1,2,21,0,0,'','2010-10-25 18:23:03','2010-10-26 07:46:25'),(14,0,2,7,7,1,2,2,1,0,'','2010-10-26 07:53:16','2010-10-26 07:53:16');
/*!40000 ALTER TABLE `ps_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_discount`
--

DROP TABLE IF EXISTS `ps_cart_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_discount` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  KEY `cart_discount_index` (`id_cart`,`id_discount`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_discount`
--

LOCK TABLES `ps_cart_discount` WRITE;
/*!40000 ALTER TABLE `ps_cart_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_product`
--

DROP TABLE IF EXISTS `ps_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned default NULL,
  `quantity` int(10) unsigned NOT NULL default '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_product`
--

LOCK TABLES `ps_cart_product` WRITE;
/*!40000 ALTER TABLE `ps_cart_product` DISABLE KEYS */;
INSERT INTO `ps_cart_product` VALUES (12,22,0,1,'2010-10-25 17:14:27'),(9,101,0,1,'2010-10-24 18:33:30'),(10,22,0,1,'2010-10-25 15:33:50'),(8,101,0,1,'2010-10-24 17:09:22'),(14,34,0,3,'2010-10-26 07:53:16'),(9,24,0,1,'2010-10-25 11:57:49'),(13,22,0,1,'2010-10-25 19:12:46'),(11,34,0,1,'2010-10-25 16:29:59'),(8,22,0,1,'2010-10-24 16:07:22'),(13,24,0,1,'2010-10-25 18:23:03'),(12,34,0,1,'2010-10-25 17:15:53');
/*!40000 ALTER TABLE `ps_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category`
--

DROP TABLE IF EXISTS `ps_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category` (
  `id_category` int(10) unsigned NOT NULL auto_increment,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL default '0',
  `active` tinyint(1) unsigned NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category`
--

LOCK TABLES `ps_category` WRITE;
/*!40000 ALTER TABLE `ps_category` DISABLE KEYS */;
INSERT INTO `ps_category` VALUES (1,0,0,1,'2010-07-19 19:03:24','2010-07-19 19:03:24'),(6,29,3,1,'2010-07-20 11:22:05','2010-10-23 14:19:46'),(7,29,3,1,'2010-07-20 11:22:35','2010-10-23 14:19:30'),(8,29,3,1,'2010-07-21 13:14:14','2010-10-23 14:18:53'),(9,29,3,1,'2010-07-21 13:14:55','2010-10-23 14:20:29'),(10,29,3,1,'2010-07-21 13:15:24','2010-10-23 14:19:14'),(33,31,2,1,'2010-10-23 15:05:04','2010-10-23 15:05:04'),(12,29,3,1,'2010-07-21 13:17:20','2010-10-23 14:20:06'),(29,1,1,1,'2010-10-23 14:17:49','2010-10-24 09:11:26'),(15,30,2,1,'2010-07-21 13:28:36','2010-10-23 15:07:12'),(16,6,2,1,'2010-07-21 13:29:06','2010-07-21 13:29:06'),(17,6,4,1,'2010-07-21 13:29:17','2010-10-24 09:17:32'),(18,6,2,1,'2010-07-21 13:29:28','2010-07-21 13:29:28'),(32,31,2,1,'2010-10-23 15:04:53','2010-10-23 15:04:53'),(28,30,3,1,'2010-10-23 13:53:53','2010-10-23 14:21:54'),(27,30,3,1,'2010-10-23 13:52:59','2010-10-23 14:21:19'),(26,30,3,1,'2010-10-23 13:52:36','2010-10-23 14:21:37'),(25,30,3,1,'2010-10-23 13:52:21','2010-10-23 14:20:56'),(30,1,1,1,'2010-10-23 14:18:07','2010-10-24 09:11:51'),(31,1,1,1,'2010-10-23 14:18:24','2010-10-24 09:12:18'),(34,31,2,1,'2010-10-23 15:05:15','2010-10-23 15:05:15');
/*!40000 ALTER TABLE `ps_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_group`
--

DROP TABLE IF EXISTS `ps_category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  KEY `category_group_index` (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_group`
--

LOCK TABLES `ps_category_group` WRITE;
/*!40000 ALTER TABLE `ps_category_group` DISABLE KEYS */;
INSERT INTO `ps_category_group` VALUES (1,1),(6,1),(7,1),(8,1),(9,1),(10,1),(12,1),(15,1),(16,1),(17,1),(18,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1);
/*!40000 ALTER TABLE `ps_category_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_lang`
--

DROP TABLE IF EXISTS `ps_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `meta_description` varchar(255) default NULL,
  UNIQUE KEY `category_lang_index` (`id_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_lang`
--

LOCK TABLES `ps_category_lang` WRITE;
/*!40000 ALTER TABLE `ps_category_lang` DISABLE KEYS */;
INSERT INTO `ps_category_lang` VALUES (1,1,'Home','','home',NULL,NULL,NULL),(1,2,'Accueil','','home',NULL,NULL,NULL),(12,1,'Parures','','parures','','',''),(12,2,'Parures','','parures','','',''),(29,2,'Catalogue','Articles par type : bagues, bracelets, colliers','catalogue-bijoux','','',''),(29,1,'Par type','','par-type','','',''),(15,1,'Réversibles','','reversibles','','',''),(15,2,'Réversibles','','reversibles','','',''),(16,1,'Classiques','','classiques','','',''),(16,2,'Classiques','','classiques','','',''),(17,1,'Sautoires','','sautoires','','',''),(17,2,'Sautoirs','','sautoirs','','',''),(18,1,'Ras du cou','','ras-du-cou','','',''),(18,2,'Ras du cou','','ras-du-cou','','',''),(32,2,'Cuir','','cuir','','',''),(32,1,'Cuir','','cuir','','',''),(28,2,'Trash','','trash','','',''),(28,1,'Trash','','trash','','',''),(27,2,'Fruits & légumes','','fruits-legumes','','',''),(27,1,'Fruits & légumes','','fruits-legumes','','',''),(26,2,'Scoubidou','','scoubidou','','',''),(26,1,'Scoubidou','','scoubidou','','',''),(33,1,'Boulons','','boulons','','',''),(25,1,'Burkina','','burkina','','',''),(25,2,'Burkina','','burkina','','',''),(9,2,'Parures de tête','','parures-de-tete','','',''),(8,1,'Bagues','','bagues','','',''),(8,2,'Bagues','','bagues','','',''),(9,1,'Parures de tête','','parures-de-tete','','',''),(6,1,'Colliers','','colliers','','',''),(6,2,'Colliers','','colliers','colliers','',''),(34,1,'Scoubidou','','scoubidou','','',''),(7,1,'bracelets','','bracelets','','',''),(7,2,'Bracelets','','bracelets','bracelets','',''),(10,1,'Boucles d\'oreilles','','boucles-d-oreilles','','',''),(10,2,'Boucles d\'oreilles','','boucles-d-oreilles','','',''),(33,2,'Boulons','','boulons','','',''),(30,1,'Par collection','','par-collection','','',''),(30,2,'Collections','Articles par collection : trash, scoubi','collections','','',''),(31,1,'Par Matière','','par-matiere','','',''),(31,2,'Matières','Articles par matière : boulons, cuir, scoubidou','matieres','','',''),(34,2,'Scoubidou','','scoubidou','','','');
/*!40000 ALTER TABLE `ps_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_product`
--

DROP TABLE IF EXISTS `ps_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL default '0',
  KEY `category_product_index` (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_product`
--

LOCK TABLES `ps_category_product` WRITE;
/*!40000 ALTER TABLE `ps_category_product` DISABLE KEYS */;
INSERT INTO `ps_category_product` VALUES (26,110,1),(26,101,0),(7,110,3),(1,110,5),(8,34,0),(15,24,0),(15,22,1),(7,24,0),(29,34,3),(1,34,3),(7,101,2),(7,22,1),(29,22,1),(29,24,2),(1,22,2),(1,24,1),(29,20,0),(1,20,0),(1,101,4);
/*!40000 ALTER TABLE `ps_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms`
--

DROP TABLE IF EXISTS `ps_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id_cms`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms`
--

LOCK TABLES `ps_cms` WRITE;
/*!40000 ALTER TABLE `ps_cms` DISABLE KEYS */;
INSERT INTO `ps_cms` VALUES (1),(2),(3),(4),(5),(6);
/*!40000 ALTER TABLE `ps_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_lang`
--

DROP TABLE IF EXISTS `ps_cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY  (`id_cms`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_lang`
--

LOCK TABLES `ps_cms_lang` WRITE;
/*!40000 ALTER TABLE `ps_cms_lang` DISABLE KEYS */;
INSERT INTO `ps_cms_lang` VALUES (1,1,'Delivery','Our terms and conditions of delivery','conditions, delivery, delay, shipment, pack','<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via Colissimo with tracking and drop-off without signature. If you prefer delivery by Colissimo Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>','delivery'),(1,2,'Livraison','Nos conditions générales de livraison','conditions, livraison, délais, transport, colis','<h2>Livraisons et retours</h2>\r\n<h3>Le transport de votre colis</h3>\r\n<p>Les colis sont g&eacute;n&eacute;ralement exp&eacute;di&eacute;s en 48h apr&egrave;s r&eacute;ception de votre paiement. Le mode d\'exp&eacute;didition standard est le Colissimo suivi, remis sans signature. Si vous souhaitez une remise avec signature, un co&ucirc;t suppl&eacute;mentaire s\'applique, merci de nous contacter. Quel que soit le mode d\'exp&eacute;dition choisi, nous vous fournirons d&egrave;s que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.</p>\r\n<p>Les frais d\'exp&eacute;dition comprennent l\'emballage, la manutention et les frais postaux. Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande. Nous vous conseillons de regrouper vos achats en une unique commande. Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles. Votre colis est exp&eacute;di&eacute; &agrave; vos propres risques, un soin particulier est apport&eacute; au colis contenant des produits fragiles..<br /><br />Les colis sont surdimensionn&eacute;s et prot&eacute;g&eacute;s.</p>','livraison'),(2,1,'Legal Notice','Legal notice','notice, legal, credits','<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; open-source software.</p>','legal-notice'),(2,2,'Mentions légales','Mentions légales','mentions, légales, crédits','<h2>Mentions l&eacute;gales</h2><h3>Cr&eacute;dits</h3><p>Concept et production :</p><p>Ce site internet a &eacute;t&eacute; r&eacute;alis&eacute; en utilisant la solution open-source <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; .</p>','mentions-legales'),(3,1,'Terms and conditions of use','Our terms and conditions of use','conditions, terms, use, sell','<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>','terms-and-conditions-of-use'),(3,2,'Conditions générales de vente','Nos conditions générales de vente','conditions, utilisation, générales, ventes','<h2 class=\"page_title_h2\">Conditions g&eacute;n&eacute;rales de vente</h2>\r\n<div class=\"my-account-container\">\r\n<p><strong>[contenu &agrave; ajouter]</strong> <br /><br /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. <br /><br /> Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna. Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.</p>\r\n</div>','conditions-generales-de-vente'),(4,1,'About us','Learn more about us','about us, informations','<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>','about-us'),(4,2,'A propos','Apprenez-en d\'avantage sur nous','à propos, informations','<h2>A propos</h2>\r\n<h3>Notre entreprise</h3><p>Notre entreprise</p>\r\n<h3>Notre équipe</h3><p>Notre équipe</p>\r\n<h3>Informations</h3><p>Informations</p>','a-propos'),(5,1,'Secure payment','Our secure payment mean','secure payment, ssl, visa, mastercard, paypal','<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>','secure-payment'),(5,2,'Paiement sécurisé','Notre offre de paiement sécurisé','paiement sécurisé, ssl, visa, mastercard, paypal','<h2>Paiement sécurisé</h2>\r\n<h3>Notre offre de paiement sécurisé</h3><p>Avec SSL</p>\r\n<h3>Utilisation de Visa/Mastercard/Paypal</h3><p>A propos de ces services</p>','paiement-securise'),(6,1,'Sur mesure','','','','sur-mesure'),(6,2,'Sur mesure','Créez vos bijoux sur mesure avec MD Création','','<h2 class=\"page_title_h2\">Sur mesure</h2>\r\n<div class=\"my-account-container\">\r\n<p><strong>[contenu &agrave; ajouter]</strong> <br /><br /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. <br /><br /> Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna. Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.</p>\r\n</div>','sur-mesure');
/*!40000 ALTER TABLE `ps_cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration`
--

DROP TABLE IF EXISTS `ps_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_configuration`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration`
--

LOCK TABLES `ps_configuration` WRITE;
/*!40000 ALTER TABLE `ps_configuration` DISABLE KEYS */;
INSERT INTO `ps_configuration` VALUES (1,'PS_LANG_DEFAULT','2','2010-07-19 19:03:24','2010-10-24 11:49:18'),(2,'PS_CURRENCY_DEFAULT','1','2010-07-19 19:03:24','2010-07-22 08:55:09'),(3,'PS_COUNTRY_DEFAULT','8','2010-07-19 19:03:24','2010-10-25 15:50:26'),(4,'PS_REWRITING_SETTINGS','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(5,'PS_ORDER_OUT_OF_STOCK','1','2010-07-19 19:03:24','2010-10-26 10:00:36'),(6,'PS_LAST_QTIES','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(7,'PS_CART_REDIRECT','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(8,'PS_HELPBOX','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(9,'PS_CONDITIONS','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(10,'PS_RECYCLABLE_PACK','0','2010-07-19 19:03:24','2010-10-24 11:50:44'),(11,'PS_GIFT_WRAPPING','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(12,'PS_GIFT_WRAPPING_PRICE','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(13,'PS_STOCK_MANAGEMENT','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(14,'PS_NAVIGATION_PIPE','>','2010-07-19 19:03:24','2010-10-20 13:12:30'),(15,'PS_PRODUCTS_PER_PAGE','12','2010-07-19 19:03:24','2010-10-26 10:00:36'),(16,'PS_PURCHASE_MINIMUM','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(17,'PS_PRODUCTS_ORDER_WAY','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(18,'PS_PRODUCTS_ORDER_BY','2','2010-07-19 19:03:24','2010-10-26 10:00:36'),(19,'PS_DISPLAY_QTIES','0','2010-07-19 19:03:24','2010-10-26 10:00:36'),(20,'PS_SHIPPING_HANDLING','2','2010-07-19 19:03:24','2010-10-24 13:55:22'),(21,'PS_SHIPPING_FREE_PRICE','0','2010-07-19 19:03:24','2010-10-24 13:55:22'),(22,'PS_SHIPPING_FREE_WEIGHT','20','2010-07-19 19:03:24','2010-10-24 13:55:22'),(23,'PS_SHIPPING_METHOD','1','2010-07-19 19:03:24','2010-10-24 13:55:22'),(24,'PS_TAX','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(25,'PS_SHOP_ENABLE','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(26,'PS_NB_DAYS_NEW_PRODUCT','20','2010-07-19 19:03:24','2010-10-26 10:00:36'),(27,'PS_SSL_ENABLED','0','2010-07-19 19:03:24','2010-10-24 11:50:44'),(28,'PS_WEIGHT_UNIT','kg','2010-07-19 19:03:24','2010-07-19 19:03:24'),(29,'PS_BLOCK_CART_AJAX','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(30,'PS_ORDER_RETURN','0','2010-07-19 19:03:24','2010-07-19 19:03:24'),(31,'PS_ORDER_RETURN_NB_DAYS','7','2010-07-19 19:03:24','2010-07-19 19:03:24'),(32,'PS_MAIL_TYPE','3','2010-07-19 19:03:24','2010-10-24 13:31:53'),(33,'PS_PRODUCT_PICTURE_MAX_SIZE','131072','2010-07-19 19:03:24','2010-10-26 10:00:36'),(34,'PS_PRODUCT_PICTURE_WIDTH','425','2010-07-19 19:03:24','2010-10-26 10:00:36'),(35,'PS_PRODUCT_PICTURE_HEIGHT','425','2010-07-19 19:03:24','2010-10-26 10:00:36'),(36,'PS_INVOICE_PREFIX','IN','2010-07-19 19:03:24','2010-07-19 19:03:24'),(37,'PS_INVOICE_NUMBER','6','2010-07-19 19:03:24','2010-10-26 07:50:00'),(38,'PS_DELIVERY_PREFIX','DE','2010-07-19 19:03:24','2010-07-19 19:03:24'),(39,'PS_DELIVERY_NUMBER','3','2010-07-19 19:03:24','2010-10-26 07:50:00'),(40,'PS_INVOICE','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(41,'PS_PASSWD_TIME_BACK','360','2010-07-19 19:03:24','2010-07-19 19:03:24'),(42,'PS_PASSWD_TIME_FRONT','360','2010-07-19 19:03:24','2010-07-19 19:03:24'),(43,'PS_DISP_UNAVAILABLE_ATTR','1','2010-07-19 19:03:24','2010-10-26 10:00:36'),(44,'PS_VOUCHERS','1','2010-07-19 19:03:24','2010-10-25 19:11:46'),(45,'PS_SEARCH_MINWORDLEN','3','2010-07-19 19:03:24','2010-07-19 19:03:24'),(46,'PS_SEARCH_BLACKLIST','','2010-07-19 19:03:24','2010-07-19 19:03:24'),(47,'PS_SEARCH_WEIGHT_PNAME','6','2010-07-19 19:03:24','2010-07-19 19:03:24'),(48,'PS_SEARCH_WEIGHT_REF','10','2010-07-19 19:03:24','2010-07-19 19:03:24'),(49,'PS_SEARCH_WEIGHT_SHORTDESC','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(50,'PS_SEARCH_WEIGHT_DESC','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(51,'PS_SEARCH_WEIGHT_CNAME','3','2010-07-19 19:03:24','2010-07-19 19:03:24'),(52,'PS_SEARCH_WEIGHT_MNAME','3','2010-07-19 19:03:24','2010-07-19 19:03:24'),(53,'PS_SEARCH_WEIGHT_TAG','4','2010-07-19 19:03:24','2010-07-19 19:03:24'),(54,'PS_SEARCH_WEIGHT_ATTRIBUTE','2','2010-07-19 19:03:24','2010-07-19 19:03:24'),(55,'PS_SEARCH_WEIGHT_FEATURE','2','2010-07-19 19:03:24','2010-07-19 19:03:24'),(56,'PS_SEARCH_AJAX','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(57,'PS_TIMEZONE','374','2010-07-19 19:03:24','2010-10-24 11:50:44'),(58,'PS_THEME_V11','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(59,'PRESTASTORE_LIVE','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(60,'PS_TIN_ACTIVE','0','2010-07-19 19:03:24','2010-07-19 19:03:24'),(61,'PS_SHOW_ALL_MODULES','0','2010-07-19 19:03:24','2010-07-20 18:06:55'),(62,'PS_BACKUP_ALL','0','2010-07-19 19:03:24','2010-07-19 19:03:24'),(63,'PS_1_3_UPDATE_DATE','2010-07-19 19:03:24','2010-07-19 19:03:24','2010-07-19 19:03:24'),(64,'PS_PRICE_ROUND_MODE','2','2010-07-19 19:03:24','2010-10-24 11:50:44'),(65,'PS_CARRIER_DEFAULT','23','2010-07-19 19:03:24','2010-10-25 19:01:22'),(121,'HOME_FEATURED_NBR','12','2010-07-21 13:20:08','2010-10-15 10:08:53'),(68,'PAYPAL_CURRENCY','customer','2010-07-19 19:03:24','2010-07-19 19:03:24'),(69,'BANK_WIRE_CURRENCIES','2,1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(70,'CHEQUE_CURRENCIES','2,1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(71,'PRODUCTS_VIEWED_NBR','2','2010-07-19 19:03:24','2010-07-19 19:03:24'),(72,'BLOCK_CATEG_DHTML','1','2010-07-19 19:03:24','2010-10-15 14:55:38'),(73,'BLOCK_CATEG_MAX_DEPTH','3','2010-07-19 19:03:24','2010-10-15 14:55:38'),(74,'MANUFACTURER_DISPLAY_FORM','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(75,'MANUFACTURER_DISPLAY_TEXT','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(76,'MANUFACTURER_DISPLAY_TEXT_NB','5','2010-07-19 19:03:24','2010-07-19 19:03:24'),(77,'NEW_PRODUCTS_NBR','5','2010-07-19 19:03:24','2010-07-19 19:03:24'),(78,'STATSHOME_YEAR_FROM','2010','2010-07-19 19:03:24','2010-07-19 19:03:24'),(79,'STATSHOME_MONTH_FROM','07','2010-07-19 19:03:24','2010-07-19 19:03:24'),(80,'STATSHOME_DAY_FROM','19','2010-07-19 19:03:24','2010-07-19 19:03:24'),(81,'STATSHOME_YEAR_TO','2010','2010-07-19 19:03:24','2010-07-19 19:03:24'),(82,'STATSHOME_MONTH_TO','07','2010-07-19 19:03:24','2010-07-19 19:03:24'),(83,'STATSHOME_DAY_TO','19','2010-07-19 19:03:24','2010-07-19 19:03:24'),(84,'PS_TOKEN_ENABLE','1','2010-07-19 19:03:24','2010-10-24 11:50:44'),(85,'PS_STATS_RENDER','graphxmlswfcharts','2010-07-19 19:03:24','2010-07-19 19:03:24'),(86,'PS_STATS_OLD_CONNECT_AUTO_CLEAN','never','2010-07-19 19:03:24','2010-07-19 19:03:24'),(87,'PS_STATS_GRID_RENDER','gridextjs','2010-07-19 19:03:24','2010-07-19 19:03:24'),(88,'BLOCKTAGS_NBR','10','2010-07-19 19:03:24','2010-07-19 19:03:24'),(89,'CHECKUP_DESCRIPTIONS_LT','100','2010-07-19 19:03:24','2010-07-19 19:03:24'),(90,'CHECKUP_DESCRIPTIONS_GT','400','2010-07-19 19:03:24','2010-07-19 19:03:24'),(91,'CHECKUP_IMAGES_LT','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(92,'CHECKUP_IMAGES_GT','2','2010-07-19 19:03:24','2010-07-19 19:03:24'),(93,'CHECKUP_SALES_LT','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(94,'CHECKUP_SALES_GT','2','2010-07-19 19:03:24','2010-07-19 19:03:24'),(95,'CHECKUP_STOCK_LT','1','2010-07-19 19:03:24','2010-07-19 19:03:24'),(96,'CHECKUP_STOCK_GT','3','2010-07-19 19:03:24','2010-07-19 19:03:24'),(97,'PS_SHOP_NAME','mariannedenis.com','2010-07-19 19:05:08','2010-10-26 08:29:10'),(98,'PS_SHOP_EMAIL','robin.rumeau@gmail.com','2010-07-19 19:05:08','2010-10-26 08:29:10'),(99,'PS_MAIL_METHOD','1','2010-07-19 19:05:08','2010-10-24 13:31:53'),(100,'PS_LOGO','','2010-07-20 10:56:19','2010-10-20 13:12:30'),(101,'PS_FAVICON','','2010-07-20 10:56:19','2010-10-20 13:12:30'),(153,'PS_ADDTHIS_MODE','21','2010-10-20 15:40:56','2010-10-20 15:41:49'),(104,'PS_BASE_URI','/prestashop/','2010-07-20 12:06:06','2010-10-24 11:50:44'),(105,'PS_MAINTENANCE_IP','','2010-07-20 12:06:06','2010-10-24 11:50:44'),(106,'PS_GIFT_WRAPPING_TAX','1','2010-07-20 12:06:06','2010-10-24 11:50:44'),(107,'PS_CART_FOLLOWING','1','2010-07-20 12:06:06','2010-10-24 11:50:44'),(108,'PS_DISPLAY_JQZOOM','1','2010-07-20 12:41:08','2010-10-26 10:00:36'),(109,'PS_IMAGE_GENERATION_METHOD','0','2010-07-20 12:41:08','2010-10-26 10:00:36'),(110,'PS_SHOP_DETAILS','','2010-07-20 17:29:36','2010-10-26 08:29:10'),(111,'PS_SHOP_ADDR1','55, rue Hippolyte Maindron','2010-07-20 17:29:36','2010-10-26 08:29:10'),(112,'PS_SHOP_ADDR2','','2010-07-20 17:29:36','2010-10-26 08:29:10'),(113,'PS_SHOP_CODE','75014','2010-07-20 17:29:36','2010-10-26 08:29:10'),(114,'PS_SHOP_CITY','Paris','2010-07-20 17:29:36','2010-10-26 08:29:10'),(115,'PS_SHOP_STATE','','2010-07-20 17:29:36','2010-10-26 08:29:10'),(116,'PS_SHOP_COUNTRY','France','2010-07-20 17:29:36','2010-10-26 08:29:10'),(117,'PS_SHOP_PHONE','06 10 11 78 475','2010-07-20 17:29:36','2010-10-26 08:29:10'),(118,'PS_SHOP_FAX','','2010-07-20 17:29:36','2010-10-26 08:29:10'),(119,'CHEQUE_NAME','Marianne Denis','2010-07-20 18:08:08','2010-07-20 18:08:08'),(120,'CHEQUE_ADDRESS','55 rue Hippolyte Maindron\r\n75014 PARIS','2010-07-20 18:08:08','2010-07-20 18:08:08'),(122,'RSS_FEED_TITLE','Actualités','2010-07-21 13:23:08','2010-10-26 08:04:13'),(123,'RSS_FEED_NBR','5','2010-07-21 13:23:08','2010-10-26 08:04:13'),(124,'PS_BLOCK_WISHLIST_ACTIVATED','1','2010-07-21 13:23:57','2010-07-21 13:23:57'),(125,'RSS_FEED_URL','http://blog.mariannedenis.com/?feed=rss2','2010-07-21 17:34:46','2010-10-26 08:04:13'),(126,'NW_CONFIRMATION_NEW_PAGE','0','2010-07-21 17:46:47','2010-10-26 08:00:43'),(127,'NW_CONFIRMATION_EMAIL','0','2010-07-21 17:46:47','2010-10-26 08:00:43'),(128,'NW_VOUCHER_CODE','','2010-07-21 17:46:47','2010-10-26 08:00:43'),(135,'GSITEMAP_ALL_PRODUCTS','1','2010-07-22 09:32:06','2010-07-22 09:32:06'),(134,'GSITEMAP_ALL_CMS','0','2010-07-22 09:32:06','2010-07-22 09:32:06'),(131,'BANK_WIRE_DETAILS','sdsdfsfd','2010-07-22 09:04:15','2010-07-22 09:04:15'),(132,'BANK_WIRE_OWNER','Marianne Denis','2010-07-22 09:04:15','2010-07-22 09:04:15'),(133,'BANK_WIRE_ADDRESS','Société génénrale\r\nParis Montparnasse','2010-07-22 09:04:15','2010-07-22 09:04:15'),(136,'CANONICAL_URL','www.mariannedenis.com','2010-07-22 09:32:30','2010-07-22 09:33:16'),(165,'PAYPAL_SANDBOX','1','2010-10-25 15:05:11','2010-10-25 15:05:11'),(164,'PAYPAL_HEADER','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(163,'SMTP_CONTAINER_END','','2010-10-24 13:28:00','2010-10-24 13:31:53'),(162,'PS_MAIL_SMTP_PORT','25','2010-10-24 13:28:00','2010-10-24 13:31:53'),(161,'PS_MAIL_SMTP_ENCRYPTION','off','2010-10-24 13:28:00','2010-10-24 13:31:53'),(160,'PS_MAIL_PASSWD','puce0975','2010-10-24 13:28:00','2010-10-24 13:31:53'),(159,'PS_MAIL_USER','robin.rumeau@gmail.com','2010-10-24 13:28:00','2010-10-24 13:31:53'),(158,'PS_MAIL_SERVER','mail.mariannedenis.com','2010-10-24 13:28:00','2010-10-24 13:31:53'),(157,'SMTP_CONTAINER','','2010-10-24 13:28:00','2010-10-24 13:31:53'),(156,'PS_MAIL_EMAIL_MESSAGE','2','2010-10-24 13:28:00','2010-10-24 13:31:53'),(155,'PS_ADDTHIS_TEXT','','2010-10-20 15:40:56','2010-10-20 15:41:49'),(154,'PS_ADDTHIS_ID','','2010-10-20 15:40:56','2010-10-20 15:41:49'),(166,'PAYPAL_API_USER','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(167,'PAYPAL_API_PASSWORD','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(168,'PAYPAL_API_SIGNATURE','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(169,'PAYPAL_EXPRESS_CHECKOUT','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(170,'PAYPAL_INTEGRAL','0','2010-10-25 15:05:11','2010-10-25 15:05:11'),(171,'PS_NEWSLETTER_RAND','1285448089386318715','2010-10-25 17:54:40','2010-10-25 17:54:40'),(179,'PS_LOYALTY_NONE_AWARD','1','2010-10-26 07:43:51','2010-10-26 07:45:36'),(178,'PS_LOYALTY_POINT_RATE','10','2010-10-26 07:43:51','2010-10-26 07:45:36'),(181,'REFERRAL_DISCOUNT_DESCRIPTION','','2010-10-26 07:56:28','2010-10-26 07:56:28'),(177,'PS_LOYALTY_POINT_VALUE','0.2','2010-10-26 07:43:51','2010-10-26 07:45:36'),(180,'PS_LOYALTY_VOUCHER_DETAILS','','2010-10-26 07:43:51','2010-10-26 07:43:51'),(182,'REFERRAL_ORDER_QUANTITY','1','2010-10-26 07:56:28','2010-10-26 07:57:52'),(183,'REFERRAL_DISCOUNT_TYPE','2','2010-10-26 07:56:28','2010-10-26 07:57:52'),(184,'REFERRAL_NB_FRIENDS','5','2010-10-26 07:56:28','2010-10-26 07:57:52'),(185,'REFERRAL_DISCOUNT_VALUE_1','5','2010-10-26 07:56:28','2010-10-26 07:57:52');
/*!40000 ALTER TABLE `ps_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration_lang`
--

DROP TABLE IF EXISTS `ps_configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime default NULL,
  PRIMARY KEY  (`id_configuration`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_lang`
--

LOCK TABLES `ps_configuration_lang` WRITE;
/*!40000 ALTER TABLE `ps_configuration_lang` DISABLE KEYS */;
INSERT INTO `ps_configuration_lang` VALUES (36,1,'IN','2010-07-19 19:03:24'),(36,2,'FA','2010-07-19 19:03:24'),(38,1,'DE','2010-07-19 19:03:24'),(38,2,'LI','2010-07-19 19:03:24'),(181,1,'ReferralProgram','2010-10-26 07:56:28'),(46,1,'a|the|of|on|in|and|to','2010-07-19 19:03:24'),(46,2,'le|les|de|et|en|des|les|une','2010-07-19 19:03:24'),(180,2,'Loyalty voucher','2010-10-26 07:45:36'),(181,2,'Parrainage MD','2010-10-26 07:57:52');
/*!40000 ALTER TABLE `ps_configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections`
--

DROP TABLE IF EXISTS `ps_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL auto_increment,
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` int(11) default NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) default NULL,
  PRIMARY KEY  (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections`
--

LOCK TABLES `ps_connections` WRITE;
/*!40000 ALTER TABLE `ps_connections` DISABLE KEYS */;
INSERT INTO `ps_connections` VALUES (1,1,1,2130706433,'2010-07-19 19:03:24','http://www.prestashop.com'),(2,2,1,1561654542,'2010-07-19 19:10:02',''),(3,3,1,1561654542,'2010-07-19 19:16:16',''),(4,2,1,1363255231,'2010-07-20 10:54:01',''),(5,3,1,1363255231,'2010-07-20 13:10:00',''),(6,4,1,1363255231,'2010-07-20 13:44:08',''),(7,2,1,1363255231,'2010-07-20 17:28:18',''),(8,2,1,1363255231,'2010-07-20 18:09:55',''),(9,2,1,1561654542,'2010-07-21 11:37:59',''),(10,5,1,1561654542,'2010-07-21 13:47:42',''),(11,6,1,1363255231,'2010-07-21 21:16:52','http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?n=1285959942'),(12,2,1,1363255231,'2010-07-22 08:52:40',''),(13,6,11,1363255231,'2010-07-22 13:40:28',''),(14,2,1,1561654542,'2010-07-22 15:27:04',''),(15,6,11,1363255231,'2010-07-23 14:52:34',''),(16,6,11,1363255231,'2010-07-23 15:55:15',''),(17,2,1,-725165152,'2010-07-26 12:09:17',''),(18,2,1,1549406469,'2010-08-15 10:26:15',''),(19,2,1,1549406471,'2010-08-18 11:24:46',''),(20,7,1,1552588594,'2010-08-24 12:38:32',''),(21,8,1,1350414295,'2010-08-28 08:06:17',''),(22,7,1,1561654542,'2010-08-31 18:43:06',''),(23,7,1,1561654542,'2010-09-01 10:11:53',''),(24,7,1,1561654542,'2010-09-02 16:17:24',''),(25,2,1,1561654542,'2010-09-08 11:53:00',''),(26,7,1,1561654542,'2010-09-08 12:32:37',''),(27,2,1,1561654542,'2010-09-13 11:58:57',''),(28,2,1,-725168047,'2010-09-20 14:55:35',''),(29,2,1,1511657492,'2010-10-08 09:57:07',''),(30,10,1,1513311149,'2010-10-11 12:27:41',''),(31,10,1,1513311149,'2010-10-11 12:38:28',''),(32,2,1,1561654542,'2010-10-11 16:35:34',''),(33,2,1,1561654542,'2010-10-11 17:41:05',''),(34,10,1,1304579540,'2010-10-13 13:42:36',''),(35,2,1,1561654542,'2010-10-14 10:13:50',''),(36,10,1,1304579540,'2010-10-15 09:31:18',''),(37,2,1,1363264235,'2010-10-15 11:12:04',''),(38,2,1,1561654542,'2010-10-15 13:28:19',''),(39,2,1,1561654542,'2010-10-15 19:26:33',''),(40,2,1,1561654542,'2010-10-17 10:21:01',''),(41,2,1,1561654542,'2010-10-17 17:30:39',''),(42,10,1,1305068200,'2010-10-18 08:49:22',''),(43,2,1,1561654542,'2010-10-18 13:18:01',''),(44,10,10,1305068200,'2010-10-18 16:20:17',''),(45,10,10,1305068200,'2010-10-18 18:35:04',''),(46,2,1,1561654542,'2010-10-19 09:59:31',''),(47,2,1,1561654542,'2010-10-19 15:27:14',''),(48,2,29,1561654542,'2010-10-19 15:36:33',''),(49,2,1,1561654542,'2010-10-19 18:38:47',''),(50,2,1,1363264235,'2010-10-19 19:58:46',''),(51,13,1,1363264235,'2010-10-19 20:15:54',''),(52,2,1,1561654542,'2010-10-20 09:52:35',''),(53,2,1,1561654542,'2010-10-20 15:41:11',''),(54,2,1,1561654542,'2010-10-20 20:02:21',''),(55,2,1,1561654542,'2010-10-21 11:16:25',''),(56,10,55,1305058654,'2010-10-21 17:09:11',''),(57,2,1,1561654542,'2010-10-22 11:28:23',''),(58,2,1,1561654542,'2010-10-22 13:17:48',''),(59,2,1,1561654542,'2010-10-22 17:59:07',''),(60,2,10,1561654542,'2010-10-22 18:01:20',''),(61,2,57,1561654542,'2010-10-22 19:28:52',''),(62,2,1,1363264235,'2010-10-23 09:21:12',''),(63,2,1,1363264235,'2010-10-23 12:13:18',''),(64,2,1,1549407004,'2010-10-23 12:27:53',''),(65,10,1,1305070755,'2010-10-23 12:53:33',''),(66,2,1,1363264235,'2010-10-23 16:57:51',''),(67,17,1,1363264235,'2010-10-23 17:10:06',''),(68,10,1,1305070755,'2010-10-24 08:59:01',''),(69,10,10,1305070755,'2010-10-24 10:57:36',''),(70,10,76,1305070755,'2010-10-24 15:00:47',''),(71,10,76,1305070755,'2010-10-24 15:36:27',''),(72,2,1,1447532620,'2010-10-24 17:31:45',''),(73,19,74,1561654542,'2010-10-25 10:56:57',''),(74,10,1,1305055464,'2010-10-25 11:57:40',''),(75,10,76,1305055464,'2010-10-25 13:43:54',''),(76,20,1,1363264235,'2010-10-25 17:09:22','http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=1684394334'),(77,2,10,1561654542,'2010-10-25 17:52:47',''),(78,20,13,1363264235,'2010-10-25 17:58:26','http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=698597339'),(79,2,6,1363264235,'2010-10-26 08:48:36',''),(80,2,1,1363264235,'2010-10-26 09:54:11','');
/*!40000 ALTER TABLE `ps_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_page`
--

DROP TABLE IF EXISTS `ps_connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime default NULL,
  PRIMARY KEY  (`id_connections`,`id_page`,`time_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_page`
--

LOCK TABLES `ps_connections_page` WRITE;
/*!40000 ALTER TABLE `ps_connections_page` DISABLE KEYS */;
INSERT INTO `ps_connections_page` VALUES (2,1,'2010-07-19 19:10:02',NULL),(3,1,'2010-07-19 19:16:16','2010-07-19 19:16:20'),(4,1,'2010-07-20 10:54:01',NULL),(4,1,'2010-07-20 10:55:14',NULL),(4,1,'2010-07-20 10:56:23',NULL),(4,1,'2010-07-20 10:56:26',NULL),(4,1,'2010-07-20 11:11:16',NULL),(4,2,'2010-07-20 11:13:25',NULL),(4,2,'2010-07-20 11:14:46',NULL),(4,2,'2010-07-20 11:15:38',NULL),(4,2,'2010-07-20 11:15:43',NULL),(4,2,'2010-07-20 11:16:50',NULL),(4,1,'2010-07-20 11:16:58',NULL),(4,3,'2010-07-20 11:18:02',NULL),(4,3,'2010-07-20 11:19:00',NULL),(4,2,'2010-07-20 11:19:04',NULL),(4,2,'2010-07-20 11:22:47',NULL),(4,2,'2010-07-20 11:39:44',NULL),(4,4,'2010-07-20 11:39:49',NULL),(4,4,'2010-07-20 11:46:00',NULL),(4,4,'2010-07-20 11:48:01',NULL),(4,5,'2010-07-20 11:48:32',NULL),(4,1,'2010-07-20 11:49:07',NULL),(4,1,'2010-07-20 11:55:22',NULL),(4,1,'2010-07-20 12:01:00',NULL),(4,2,'2010-07-20 12:03:26',NULL),(4,2,'2010-07-20 12:20:34',NULL),(4,2,'2010-07-20 12:22:42',NULL),(4,5,'2010-07-20 12:22:46',NULL),(4,1,'2010-07-20 12:22:49',NULL),(4,1,'2010-07-20 12:23:03',NULL),(4,1,'2010-07-20 12:30:43',NULL),(4,2,'2010-07-20 12:30:45',NULL),(4,2,'2010-07-20 12:32:42',NULL),(4,6,'2010-07-20 12:32:42',NULL),(4,7,'2010-07-20 12:32:52',NULL),(4,6,'2010-07-20 12:32:52',NULL),(4,4,'2010-07-20 12:32:57',NULL),(4,6,'2010-07-20 12:32:57',NULL),(4,6,'2010-07-20 12:32:58',NULL),(4,4,'2010-07-20 12:33:08',NULL),(4,6,'2010-07-20 12:33:08',NULL),(4,6,'2010-07-20 12:33:09',NULL),(4,4,'2010-07-20 12:33:32',NULL),(4,6,'2010-07-20 12:33:33',NULL),(4,1,'2010-07-20 12:33:36',NULL),(4,6,'2010-07-20 12:33:36',NULL),(4,1,'2010-07-20 12:36:58',NULL),(4,6,'2010-07-20 12:36:59',NULL),(4,1,'2010-07-20 12:37:58',NULL),(4,6,'2010-07-20 12:37:59',NULL),(4,1,'2010-07-20 12:41:12',NULL),(4,6,'2010-07-20 12:41:12',NULL),(4,6,'2010-07-20 12:41:13',NULL),(4,1,'2010-07-20 12:50:05',NULL),(4,6,'2010-07-20 12:50:05',NULL),(4,1,'2010-07-20 12:53:54',NULL),(4,6,'2010-07-20 12:53:54',NULL),(4,1,'2010-07-20 12:54:31',NULL),(4,6,'2010-07-20 12:54:32',NULL),(4,2,'2010-07-20 12:54:34',NULL),(4,6,'2010-07-20 12:54:35',NULL),(4,1,'2010-07-20 12:54:37',NULL),(4,6,'2010-07-20 12:54:37',NULL),(4,2,'2010-07-20 12:54:41',NULL),(4,6,'2010-07-20 12:54:41',NULL),(4,2,'2010-07-20 12:58:13',NULL),(4,6,'2010-07-20 12:58:13',NULL),(4,1,'2010-07-20 12:58:16',NULL),(4,6,'2010-07-20 12:58:16',NULL),(4,8,'2010-07-20 12:58:24',NULL),(4,6,'2010-07-20 12:58:24',NULL),(4,1,'2010-07-20 12:58:27',NULL),(4,6,'2010-07-20 12:58:28',NULL),(4,6,'2010-07-20 13:04:06',NULL),(4,1,'2010-07-20 13:04:32',NULL),(4,6,'2010-07-20 13:04:32',NULL),(4,1,'2010-07-20 13:04:37',NULL),(4,6,'2010-07-20 13:04:38',NULL),(4,1,'2010-07-20 13:06:34',NULL),(4,6,'2010-07-20 13:06:34',NULL),(4,6,'2010-07-20 13:06:35',NULL),(4,1,'2010-07-20 13:06:36',NULL),(4,6,'2010-07-20 13:06:36',NULL),(4,6,'2010-07-20 13:06:37',NULL),(4,1,'2010-07-20 13:06:37',NULL),(4,6,'2010-07-20 13:06:38',NULL),(4,1,'2010-07-20 13:07:06',NULL),(4,6,'2010-07-20 13:07:06',NULL),(4,6,'2010-07-20 13:07:07',NULL),(4,1,'2010-07-20 13:07:11',NULL),(4,6,'2010-07-20 13:07:11',NULL),(4,1,'2010-07-20 13:07:18',NULL),(4,6,'2010-07-20 13:07:19',NULL),(4,2,'2010-07-20 13:07:22',NULL),(4,6,'2010-07-20 13:07:23',NULL),(4,1,'2010-07-20 13:07:47',NULL),(4,6,'2010-07-20 13:07:47',NULL),(4,9,'2010-07-20 13:08:00',NULL),(4,6,'2010-07-20 13:08:00',NULL),(4,6,'2010-07-20 13:08:01',NULL),(4,5,'2010-07-20 13:08:26',NULL),(4,6,'2010-07-20 13:08:27',NULL),(4,5,'2010-07-20 13:09:39',NULL),(4,6,'2010-07-20 13:09:40',NULL),(4,5,'2010-07-20 13:09:41',NULL),(4,6,'2010-07-20 13:09:42',NULL),(5,1,'2010-07-20 13:10:00',NULL),(5,6,'2010-07-20 13:10:01',NULL),(5,1,'2010-07-20 13:11:42',NULL),(4,5,'2010-07-20 13:12:37',NULL),(4,6,'2010-07-20 13:12:37',NULL),(4,5,'2010-07-20 13:12:53',NULL),(4,6,'2010-07-20 13:12:53',NULL),(4,1,'2010-07-20 13:43:22',NULL),(4,6,'2010-07-20 13:43:23',NULL),(6,1,'2010-07-20 13:44:08',NULL),(6,6,'2010-07-20 13:44:09',NULL),(6,10,'2010-07-20 13:44:21',NULL),(6,6,'2010-07-20 13:44:21',NULL),(6,1,'2010-07-20 13:44:31',NULL),(6,6,'2010-07-20 13:44:31',NULL),(4,5,'2010-07-20 13:45:01',NULL),(4,6,'2010-07-20 13:45:01',NULL),(4,5,'2010-07-20 13:45:05',NULL),(4,6,'2010-07-20 13:45:05',NULL),(4,6,'2010-07-20 13:45:06',NULL),(4,5,'2010-07-20 13:45:09',NULL),(4,6,'2010-07-20 13:45:10',NULL),(4,1,'2010-07-20 13:45:12',NULL),(4,6,'2010-07-20 13:45:13',NULL),(4,9,'2010-07-20 15:19:18',NULL),(4,6,'2010-07-20 15:19:19',NULL),(4,9,'2010-07-20 15:20:13',NULL),(4,6,'2010-07-20 15:20:14',NULL),(4,1,'2010-07-20 15:20:17',NULL),(4,6,'2010-07-20 15:20:17',NULL),(4,4,'2010-07-20 15:21:24',NULL),(4,6,'2010-07-20 15:21:24',NULL),(4,6,'2010-07-20 15:21:25',NULL),(4,1,'2010-07-20 15:22:03',NULL),(4,6,'2010-07-20 15:22:04',NULL),(4,9,'2010-07-20 15:22:07',NULL),(4,6,'2010-07-20 15:22:07',NULL),(4,5,'2010-07-20 15:22:22',NULL),(4,6,'2010-07-20 15:22:22',NULL),(4,1,'2010-07-20 15:22:45',NULL),(4,6,'2010-07-20 15:22:45',NULL),(4,11,'2010-07-20 15:23:06',NULL),(4,6,'2010-07-20 15:23:06',NULL),(4,1,'2010-07-20 15:23:26',NULL),(4,6,'2010-07-20 15:23:27',NULL),(4,1,'2010-07-20 15:24:44',NULL),(4,6,'2010-07-20 15:24:44',NULL),(4,9,'2010-07-20 15:27:48',NULL),(4,6,'2010-07-20 15:27:48',NULL),(4,1,'2010-07-20 15:30:41',NULL),(4,6,'2010-07-20 15:30:41',NULL),(4,6,'2010-07-20 15:30:42',NULL),(4,4,'2010-07-20 15:30:45',NULL),(4,6,'2010-07-20 15:30:45',NULL),(4,6,'2010-07-20 15:30:46',NULL),(4,4,'2010-07-20 15:31:09',NULL),(4,6,'2010-07-20 15:31:09',NULL),(4,6,'2010-07-20 15:31:10',NULL),(4,4,'2010-07-20 15:33:18',NULL),(4,6,'2010-07-20 15:33:19',NULL),(4,4,'2010-07-20 15:34:56','2010-07-20 15:39:56'),(4,6,'2010-07-20 15:34:56',NULL),(4,6,'2010-07-20 15:34:57',NULL),(7,1,'2010-07-20 17:28:18',NULL),(7,6,'2010-07-20 17:28:19',NULL),(8,1,'2010-07-20 18:09:55',NULL),(8,6,'2010-07-20 18:09:56',NULL),(9,1,'2010-07-21 11:37:59',NULL),(9,6,'2010-07-21 11:38:00',NULL),(9,4,'2010-07-21 11:38:03',NULL),(9,6,'2010-07-21 11:38:04',NULL),(9,5,'2010-07-21 11:55:11',NULL),(9,6,'2010-07-21 11:55:11',NULL),(9,6,'2010-07-21 11:55:12',NULL),(9,10,'2010-07-21 11:55:17',NULL),(9,6,'2010-07-21 11:55:18',NULL),(9,10,'2010-07-21 12:03:04',NULL),(9,6,'2010-07-21 12:03:04',NULL),(9,10,'2010-07-21 12:03:19',NULL),(9,6,'2010-07-21 12:03:20',NULL),(9,12,'2010-07-21 12:03:52',NULL),(9,6,'2010-07-21 12:03:53',NULL),(9,13,'2010-07-21 12:04:05',NULL),(9,6,'2010-07-21 12:04:05',NULL),(9,12,'2010-07-21 12:04:08',NULL),(9,6,'2010-07-21 12:04:08',NULL),(9,6,'2010-07-21 12:04:09',NULL),(9,1,'2010-07-21 12:09:03',NULL),(9,6,'2010-07-21 12:09:03',NULL),(9,4,'2010-07-21 12:09:06',NULL),(9,6,'2010-07-21 12:09:06',NULL),(9,6,'2010-07-21 12:09:07',NULL),(9,1,'2010-07-21 12:12:50',NULL),(9,6,'2010-07-21 12:12:50',NULL),(9,9,'2010-07-21 12:12:52',NULL),(9,6,'2010-07-21 12:12:53',NULL),(9,11,'2010-07-21 12:21:36',NULL),(9,6,'2010-07-21 12:21:37',NULL),(9,4,'2010-07-21 12:23:08',NULL),(9,6,'2010-07-21 12:23:09',NULL),(9,4,'2010-07-21 13:16:50',NULL),(9,6,'2010-07-21 13:16:51',NULL),(9,6,'2010-07-21 13:16:52',NULL),(9,1,'2010-07-21 13:18:26',NULL),(9,6,'2010-07-21 13:18:26',NULL),(9,1,'2010-07-21 13:19:24',NULL),(9,6,'2010-07-21 13:19:24',NULL),(9,1,'2010-07-21 13:20:11',NULL),(9,6,'2010-07-21 13:20:12',NULL),(9,9,'2010-07-21 13:20:21',NULL),(9,6,'2010-07-21 13:20:22',NULL),(9,6,'2010-07-21 13:20:23',NULL),(9,9,'2010-07-21 13:21:35',NULL),(9,6,'2010-07-21 13:21:36',NULL),(9,1,'2010-07-21 13:21:37',NULL),(9,6,'2010-07-21 13:21:38',NULL),(9,1,'2010-07-21 13:24:04',NULL),(9,6,'2010-07-21 13:24:04',NULL),(9,6,'2010-07-21 13:24:05',NULL),(9,8,'2010-07-21 13:24:26',NULL),(9,6,'2010-07-21 13:24:27',NULL),(9,2,'2010-07-21 13:24:29',NULL),(9,6,'2010-07-21 13:24:30',NULL),(9,1,'2010-07-21 13:24:40',NULL),(9,6,'2010-07-21 13:24:40',NULL),(9,1,'2010-07-21 13:25:06',NULL),(9,6,'2010-07-21 13:25:07',NULL),(9,14,'2010-07-21 13:25:50',NULL),(9,6,'2010-07-21 13:25:51',NULL),(9,11,'2010-07-21 13:25:53',NULL),(9,6,'2010-07-21 13:25:54',NULL),(9,15,'2010-07-21 13:26:25',NULL),(9,6,'2010-07-21 13:26:25',NULL),(9,1,'2010-07-21 13:26:31',NULL),(9,6,'2010-07-21 13:26:32',NULL),(9,1,'2010-07-21 13:33:49',NULL),(9,6,'2010-07-21 13:33:50',NULL),(9,8,'2010-07-21 13:37:00',NULL),(9,6,'2010-07-21 13:37:00',NULL),(9,1,'2010-07-21 13:37:34',NULL),(9,6,'2010-07-21 13:37:35',NULL),(9,16,'2010-07-21 13:37:42',NULL),(9,6,'2010-07-21 13:37:42',NULL),(9,1,'2010-07-21 13:38:24',NULL),(9,6,'2010-07-21 13:38:24',NULL),(9,14,'2010-07-21 13:38:36',NULL),(9,6,'2010-07-21 13:38:36',NULL),(9,1,'2010-07-21 13:38:56',NULL),(9,6,'2010-07-21 13:38:56',NULL),(9,16,'2010-07-21 13:39:01',NULL),(9,6,'2010-07-21 13:39:01',NULL),(9,8,'2010-07-21 13:39:07',NULL),(9,6,'2010-07-21 13:39:07',NULL),(9,1,'2010-07-21 13:47:14',NULL),(9,6,'2010-07-21 13:47:15',NULL),(10,1,'2010-07-21 13:47:42',NULL),(10,6,'2010-07-21 13:47:42',NULL),(9,17,'2010-07-21 13:47:52',NULL),(9,6,'2010-07-21 13:47:53',NULL),(9,18,'2010-07-21 13:48:01',NULL),(9,6,'2010-07-21 13:48:02',NULL),(9,17,'2010-07-21 13:48:04',NULL),(9,6,'2010-07-21 13:48:05',NULL),(9,1,'2010-07-21 14:01:06',NULL),(9,6,'2010-07-21 14:01:07',NULL),(9,17,'2010-07-21 14:01:36',NULL),(9,6,'2010-07-21 14:01:36',NULL),(9,1,'2010-07-21 14:03:08',NULL),(9,6,'2010-07-21 14:03:09',NULL),(9,1,'2010-07-21 14:09:22',NULL),(9,6,'2010-07-21 14:09:23',NULL),(9,11,'2010-07-21 14:09:31',NULL),(9,6,'2010-07-21 14:09:31',NULL),(9,19,'2010-07-21 14:09:36',NULL),(9,6,'2010-07-21 14:09:36',NULL),(9,6,'2010-07-21 14:09:37',NULL),(9,6,'2010-07-21 14:09:38',NULL),(10,20,'2010-07-21 14:11:49',NULL),(10,6,'2010-07-21 14:11:50',NULL),(10,19,'2010-07-21 14:11:56',NULL),(10,6,'2010-07-21 14:11:57',NULL),(10,21,'2010-07-21 14:12:17',NULL),(10,6,'2010-07-21 14:12:18',NULL),(9,19,'2010-07-21 14:13:11',NULL),(9,6,'2010-07-21 14:13:12',NULL),(9,6,'2010-07-21 14:13:14',NULL),(9,19,'2010-07-21 14:15:16',NULL),(9,6,'2010-07-21 14:15:16',NULL),(9,6,'2010-07-21 14:15:18',NULL),(9,1,'2010-07-21 14:21:28',NULL),(9,6,'2010-07-21 14:21:28',NULL),(9,11,'2010-07-21 14:21:32',NULL),(9,6,'2010-07-21 14:21:33',NULL),(9,11,'2010-07-21 14:37:45',NULL),(9,6,'2010-07-21 14:37:46',NULL),(9,11,'2010-07-21 14:51:44',NULL),(9,6,'2010-07-21 14:51:45',NULL),(9,19,'2010-07-21 14:52:17',NULL),(9,6,'2010-07-21 14:52:18',NULL),(9,6,'2010-07-21 14:52:19',NULL),(9,20,'2010-07-21 14:52:56',NULL),(9,6,'2010-07-21 14:52:57',NULL),(9,11,'2010-07-21 14:53:02',NULL),(9,6,'2010-07-21 14:53:02',NULL),(9,1,'2010-07-21 15:11:20',NULL),(9,6,'2010-07-21 15:11:21',NULL),(9,17,'2010-07-21 15:11:25',NULL),(9,6,'2010-07-21 15:11:25',NULL),(9,14,'2010-07-21 15:11:30',NULL),(9,6,'2010-07-21 15:11:31',NULL),(9,22,'2010-07-21 15:11:35',NULL),(9,6,'2010-07-21 15:11:36',NULL),(9,6,'2010-07-21 15:11:37',NULL),(9,11,'2010-07-21 15:12:12',NULL),(9,6,'2010-07-21 15:12:13',NULL),(9,20,'2010-07-21 15:12:33',NULL),(9,6,'2010-07-21 15:12:34',NULL),(9,11,'2010-07-21 15:23:39',NULL),(9,6,'2010-07-21 15:23:39',NULL),(9,11,'2010-07-21 15:23:46',NULL),(9,6,'2010-07-21 15:23:46',NULL),(9,11,'2010-07-21 15:23:56',NULL),(9,6,'2010-07-21 15:23:56',NULL),(9,1,'2010-07-21 15:48:49',NULL),(9,6,'2010-07-21 15:48:50',NULL),(9,1,'2010-07-21 15:50:41',NULL),(9,6,'2010-07-21 15:50:42',NULL),(9,1,'2010-07-21 15:51:12',NULL),(9,6,'2010-07-21 15:51:13',NULL),(9,23,'2010-07-21 15:51:36',NULL),(9,6,'2010-07-21 15:51:37',NULL),(9,24,'2010-07-21 15:51:46',NULL),(9,6,'2010-07-21 15:51:46',NULL),(9,6,'2010-07-21 15:51:47',NULL),(9,1,'2010-07-21 15:51:52',NULL),(9,6,'2010-07-21 15:51:53',NULL),(9,1,'2010-07-21 15:54:44',NULL),(9,6,'2010-07-21 15:54:45',NULL),(9,1,'2010-07-21 16:00:38',NULL),(9,6,'2010-07-21 16:00:39',NULL),(9,11,'2010-07-21 16:00:42',NULL),(9,6,'2010-07-21 16:00:43',NULL),(9,19,'2010-07-21 16:00:51',NULL),(9,6,'2010-07-21 16:00:51',NULL),(9,6,'2010-07-21 16:00:52',NULL),(9,11,'2010-07-21 16:00:57',NULL),(9,6,'2010-07-21 16:00:57',NULL),(9,6,'2010-07-21 16:14:47',NULL),(9,6,'2010-07-21 16:15:20',NULL),(9,6,'2010-07-21 16:15:21',NULL),(9,11,'2010-07-21 16:15:34',NULL),(9,6,'2010-07-21 16:15:34',NULL),(9,6,'2010-07-21 16:15:35',NULL),(9,18,'2010-07-21 16:15:51',NULL),(9,6,'2010-07-21 16:15:51',NULL),(9,25,'2010-07-21 16:15:57',NULL),(9,6,'2010-07-21 16:15:58',NULL),(9,25,'2010-07-21 16:21:19',NULL),(9,6,'2010-07-21 16:21:19',NULL),(9,25,'2010-07-21 16:25:33',NULL),(9,6,'2010-07-21 16:25:33',NULL),(9,25,'2010-07-21 16:26:17',NULL),(9,6,'2010-07-21 16:26:17',NULL),(9,6,'2010-07-21 16:26:18',NULL),(9,14,'2010-07-21 16:31:09',NULL),(9,6,'2010-07-21 16:31:10',NULL),(9,14,'2010-07-21 16:34:54',NULL),(9,6,'2010-07-21 16:34:55',NULL),(9,26,'2010-07-21 16:35:01',NULL),(9,6,'2010-07-21 16:35:02',NULL),(9,1,'2010-07-21 16:47:31',NULL),(9,6,'2010-07-21 16:47:32',NULL),(9,1,'2010-07-21 17:07:17',NULL),(9,6,'2010-07-21 17:07:18',NULL),(9,1,'2010-07-21 17:11:16',NULL),(9,6,'2010-07-21 17:11:17',NULL),(9,27,'2010-07-21 17:11:47',NULL),(9,6,'2010-07-21 17:11:47',NULL),(9,6,'2010-07-21 17:11:48',NULL),(9,1,'2010-07-21 17:14:51',NULL),(9,6,'2010-07-21 17:14:51',NULL),(9,17,'2010-07-21 17:15:15',NULL),(9,6,'2010-07-21 17:15:15',NULL),(9,28,'2010-07-21 17:15:26',NULL),(9,6,'2010-07-21 17:15:27',NULL),(9,17,'2010-07-21 17:15:32',NULL),(9,6,'2010-07-21 17:15:32',NULL),(9,1,'2010-07-21 17:19:35',NULL),(9,6,'2010-07-21 17:19:36',NULL),(9,11,'2010-07-21 17:19:44',NULL),(9,6,'2010-07-21 17:19:45',NULL),(9,4,'2010-07-21 17:19:55',NULL),(9,6,'2010-07-21 17:19:55',NULL),(9,6,'2010-07-21 17:19:56',NULL),(9,19,'2010-07-21 17:20:11',NULL),(9,6,'2010-07-21 17:20:12',NULL),(9,6,'2010-07-21 17:20:13',NULL),(9,5,'2010-07-21 17:20:18',NULL),(9,6,'2010-07-21 17:20:19',NULL),(9,1,'2010-07-21 17:21:02',NULL),(9,6,'2010-07-21 17:21:02',NULL),(9,24,'2010-07-21 17:21:12',NULL),(9,6,'2010-07-21 17:21:13',NULL),(9,16,'2010-07-21 17:23:32',NULL),(9,6,'2010-07-21 17:23:33',NULL),(9,8,'2010-07-21 17:23:37',NULL),(9,6,'2010-07-21 17:23:38',NULL),(9,16,'2010-07-21 17:23:40',NULL),(9,6,'2010-07-21 17:23:41',NULL),(9,8,'2010-07-21 17:24:01',NULL),(9,6,'2010-07-21 17:24:02',NULL),(9,1,'2010-07-21 17:24:17',NULL),(9,6,'2010-07-21 17:24:18',NULL),(9,1,'2010-07-21 17:25:38',NULL),(9,6,'2010-07-21 17:25:38',NULL),(9,1,'2010-07-21 17:26:37',NULL),(9,6,'2010-07-21 17:26:38',NULL),(9,1,'2010-07-21 17:26:44',NULL),(9,6,'2010-07-21 17:26:45',NULL),(9,29,'2010-07-21 17:28:44',NULL),(9,6,'2010-07-21 17:28:45',NULL),(9,24,'2010-07-21 17:29:50',NULL),(9,6,'2010-07-21 17:29:50',NULL),(9,6,'2010-07-21 17:29:51',NULL),(9,6,'2010-07-21 17:29:52',NULL),(9,30,'2010-07-21 17:30:21',NULL),(9,6,'2010-07-21 17:30:22',NULL),(9,31,'2010-07-21 17:30:27',NULL),(9,6,'2010-07-21 17:30:27',NULL),(9,6,'2010-07-21 17:30:28',NULL),(9,30,'2010-07-21 17:32:42',NULL),(9,6,'2010-07-21 17:32:42',NULL),(9,6,'2010-07-21 17:32:43',NULL),(9,30,'2010-07-21 17:34:55',NULL),(9,6,'2010-07-21 17:34:56',NULL),(9,6,'2010-07-21 17:34:57',NULL),(9,1,'2010-07-21 17:35:46',NULL),(9,6,'2010-07-21 17:35:47',NULL),(9,1,'2010-07-21 17:36:23',NULL),(9,24,'2010-07-21 17:37:22',NULL),(9,1,'2010-07-21 17:39:08',NULL),(9,32,'2010-07-21 17:39:21',NULL),(9,33,'2010-07-21 17:39:32',NULL),(9,33,'2010-07-21 17:39:43',NULL),(9,19,'2010-07-21 17:41:41',NULL),(9,19,'2010-07-21 17:42:37',NULL),(9,24,'2010-07-21 17:42:45','2010-07-21 17:47:45'),(11,1,'2010-07-21 21:16:52',NULL),(11,24,'2010-07-21 21:18:37',NULL),(11,24,'2010-07-21 21:18:49',NULL),(11,24,'2010-07-21 21:18:53',NULL),(11,24,'2010-07-21 21:18:56',NULL),(11,16,'2010-07-21 21:18:58',NULL),(11,8,'2010-07-21 21:19:06',NULL),(11,18,'2010-07-21 21:19:21',NULL),(11,27,'2010-07-21 21:19:33',NULL),(11,1,'2010-07-21 21:21:35',NULL),(11,1,'2010-07-21 21:21:39',NULL),(11,17,'2010-07-21 21:22:42',NULL),(11,34,'2010-07-21 21:23:27',NULL),(11,35,'2010-07-21 21:23:43',NULL),(11,36,'2010-07-21 21:24:23',NULL),(11,37,'2010-07-21 21:27:17',NULL),(11,5,'2010-07-21 21:27:30',NULL),(11,5,'2010-07-21 21:27:49',NULL),(11,10,'2010-07-21 21:30:29',NULL),(11,38,'2010-07-21 21:30:48',NULL),(11,5,'2010-07-21 21:30:56',NULL),(11,17,'2010-07-21 21:31:13',NULL),(11,28,'2010-07-21 21:32:46',NULL),(11,38,'2010-07-21 21:32:50',NULL),(11,11,'2010-07-21 21:32:52',NULL),(11,39,'2010-07-21 21:33:14',NULL),(11,11,'2010-07-21 21:33:22',NULL),(11,14,'2010-07-21 21:33:31',NULL),(11,31,'2010-07-21 21:33:40',NULL),(11,14,'2010-07-21 21:33:45',NULL),(11,30,'2010-07-21 21:33:48',NULL),(11,14,'2010-07-21 21:33:53',NULL),(11,22,'2010-07-21 21:33:59',NULL),(11,11,'2010-07-21 21:35:52',NULL),(11,4,'2010-07-21 21:35:59',NULL),(11,40,'2010-07-21 21:37:21',NULL),(11,11,'2010-07-21 21:44:11',NULL),(11,19,'2010-07-21 21:44:14',NULL),(11,11,'2010-07-21 21:44:45',NULL),(11,41,'2010-07-21 21:44:49',NULL),(11,38,'2010-07-21 21:45:22',NULL),(11,42,'2010-07-21 21:45:24',NULL),(11,43,'2010-07-21 21:45:51',NULL),(11,14,'2010-07-21 21:46:00',NULL),(11,18,'2010-07-21 21:46:14',NULL),(11,43,'2010-07-21 21:46:35',NULL),(11,44,'2010-07-21 21:47:16',NULL),(11,40,'2010-07-21 21:47:21',NULL),(11,23,'2010-07-21 21:47:24',NULL),(11,41,'2010-07-21 21:47:53',NULL),(11,23,'2010-07-21 21:48:24',NULL),(11,41,'2010-07-21 21:49:02',NULL),(11,5,'2010-07-21 21:53:13',NULL),(11,10,'2010-07-21 21:53:19',NULL),(11,10,'2010-07-21 21:53:34',NULL),(11,10,'2010-07-21 21:54:26',NULL),(11,10,'2010-07-21 21:54:39',NULL),(11,45,'2010-07-21 21:54:56',NULL),(11,46,'2010-07-21 21:55:07',NULL),(11,47,'2010-07-21 21:55:58',NULL),(11,48,'2010-07-21 21:56:15',NULL),(11,49,'2010-07-21 21:56:40',NULL),(11,13,'2010-07-21 21:56:52',NULL),(11,13,'2010-07-21 21:57:32',NULL),(11,50,'2010-07-21 22:07:11',NULL),(11,44,'2010-07-21 22:07:14',NULL),(11,50,'2010-07-21 22:07:16',NULL),(11,34,'2010-07-21 22:07:30',NULL),(11,51,'2010-07-21 22:07:35',NULL),(11,36,'2010-07-21 22:08:53',NULL),(11,39,'2010-07-21 22:09:19',NULL),(11,32,'2010-07-21 22:09:26',NULL),(11,34,'2010-07-21 22:09:41',NULL),(11,52,'2010-07-21 22:09:44',NULL),(11,1,'2010-07-21 22:09:54',NULL),(11,16,'2010-07-21 22:10:47',NULL),(11,19,'2010-07-21 22:10:54',NULL),(11,11,'2010-07-21 22:11:13',NULL),(11,17,'2010-07-21 22:11:16',NULL),(12,1,'2010-07-22 08:52:40',NULL),(12,1,'2010-07-22 08:55:20',NULL),(12,1,'2010-07-22 08:55:50',NULL),(12,1,'2010-07-22 08:56:20',NULL),(12,17,'2010-07-22 09:13:28',NULL),(12,11,'2010-07-22 09:13:31',NULL),(12,24,'2010-07-22 09:13:38',NULL),(12,5,'2010-07-22 09:14:09',NULL),(12,5,'2010-07-22 09:14:16',NULL),(12,5,'2010-07-22 09:14:18',NULL),(12,17,'2010-07-22 09:14:23',NULL),(12,11,'2010-07-22 09:14:28',NULL),(12,20,'2010-07-22 09:14:30',NULL),(12,24,'2010-07-22 09:14:37',NULL),(12,5,'2010-07-22 09:14:52',NULL),(12,5,'2010-07-22 09:17:20',NULL),(12,53,'2010-07-22 09:18:06',NULL),(12,54,'2010-07-22 09:18:10',NULL),(12,55,'2010-07-22 09:18:21',NULL),(12,55,'2010-07-22 09:18:30',NULL),(12,1,'2010-07-22 09:18:44',NULL),(12,12,'2010-07-22 09:18:57',NULL),(12,13,'2010-07-22 09:19:07',NULL),(12,12,'2010-07-22 09:19:12',NULL),(12,56,'2010-07-22 09:19:15',NULL),(12,12,'2010-07-22 09:19:18',NULL),(12,57,'2010-07-22 09:19:21',NULL),(12,12,'2010-07-22 09:19:29',NULL),(12,58,'2010-07-22 09:19:33',NULL),(12,59,'2010-07-22 09:19:48',NULL),(12,30,'2010-07-22 09:19:56',NULL),(12,21,'2010-07-22 09:20:02',NULL),(12,21,'2010-07-22 09:20:19',NULL),(12,38,'2010-07-22 09:27:23',NULL),(12,42,'2010-07-22 09:27:26',NULL),(12,42,'2010-07-22 09:28:01',NULL),(12,5,'2010-07-22 09:28:08',NULL),(12,42,'2010-07-22 09:29:27',NULL),(12,18,'2010-07-22 09:33:30',NULL),(12,18,'2010-07-22 09:33:40',NULL),(12,38,'2010-07-22 09:33:44',NULL),(13,11,'2010-07-22 13:40:28',NULL),(13,11,'2010-07-22 13:45:43',NULL),(14,1,'2010-07-22 15:27:04',NULL),(14,24,'2010-07-22 15:30:40',NULL),(15,11,'2010-07-23 14:52:34',NULL),(16,11,'2010-07-23 15:55:15',NULL),(17,1,'2010-07-26 12:09:17',NULL),(17,12,'2010-07-26 12:44:27',NULL),(18,1,'2010-08-15 10:26:15',NULL),(19,1,'2010-08-18 11:24:46',NULL),(20,1,'2010-08-24 12:38:32',NULL),(21,1,'2010-08-28 08:06:17',NULL),(22,1,'2010-08-31 18:43:06',NULL),(23,1,'2010-09-01 10:11:53',NULL),(24,1,'2010-09-02 16:17:24',NULL),(25,1,'2010-09-08 11:53:00',NULL),(25,29,'2010-09-08 11:53:13',NULL),(25,1,'2010-09-08 11:53:19',NULL),(25,1,'2010-09-08 12:15:25',NULL),(25,1,'2010-09-08 12:16:05',NULL),(25,1,'2010-09-08 12:17:45',NULL),(25,1,'2010-09-08 12:18:21',NULL),(25,1,'2010-09-08 12:23:54',NULL),(26,1,'2010-09-08 12:32:37','2010-09-08 12:34:18'),(26,1,'2010-09-08 12:34:21','2010-09-08 12:39:21'),(26,1,'2010-09-08 12:42:07','2010-09-08 12:42:25'),(26,1,'2010-09-08 12:42:28','2010-09-08 12:47:28'),(25,1,'2010-09-08 12:44:42',NULL),(25,1,'2010-09-08 12:46:39',NULL),(25,1,'2010-09-08 12:48:34',NULL),(25,1,'2010-09-08 12:50:16',NULL),(25,1,'2010-09-08 12:51:23',NULL),(26,1,'2010-09-08 12:53:03','2010-09-08 12:53:06'),(26,1,'2010-09-08 12:54:18','2010-09-08 12:54:44'),(26,1,'2010-09-08 12:54:46','2010-09-08 12:55:31'),(26,1,'2010-09-08 12:55:34','2010-09-08 12:55:53'),(26,1,'2010-09-08 12:55:58','2010-09-08 12:56:49'),(26,1,'2010-09-08 12:56:51','2010-09-08 12:57:13'),(26,1,'2010-09-08 12:57:17','2010-09-08 12:57:50'),(26,1,'2010-09-08 12:57:57','2010-09-08 12:58:19'),(26,1,'2010-09-08 12:58:21','2010-09-08 12:58:49'),(26,1,'2010-09-08 12:58:52','2010-09-08 12:59:29'),(26,1,'2010-09-08 12:59:31','2010-09-08 13:04:31'),(26,1,'2010-09-08 14:27:58','2010-09-08 14:32:58'),(26,1,'2010-09-08 16:05:11','2010-09-08 16:05:14'),(27,1,'2010-09-13 11:58:57',NULL),(28,1,'2010-09-20 14:55:35',NULL),(29,1,'2010-10-08 09:57:07',NULL),(30,1,'2010-10-11 12:27:41',NULL),(30,1,'2010-10-11 12:36:58',NULL),(30,1,'2010-10-11 12:37:33',NULL),(31,1,'2010-10-11 12:38:28',NULL),(30,1,'2010-10-11 12:38:51',NULL),(32,1,'2010-10-11 16:35:34',NULL),(32,1,'2010-10-11 16:35:44',NULL),(32,29,'2010-10-11 16:35:55',NULL),(32,8,'2010-10-11 16:39:28',NULL),(32,16,'2010-10-11 16:39:31',NULL),(32,53,'2010-10-11 16:39:32',NULL),(32,54,'2010-10-11 16:39:38',NULL),(32,55,'2010-10-11 16:39:40',NULL),(32,55,'2010-10-11 16:39:43',NULL),(32,55,'2010-10-11 16:39:46',NULL),(32,1,'2010-10-11 16:39:57',NULL),(33,1,'2010-10-11 17:41:05','2010-10-11 17:41:14'),(33,1,'2010-10-11 17:41:09',NULL),(33,1,'2010-10-11 17:41:15',NULL),(33,1,'2010-10-11 17:41:18',NULL),(34,1,'2010-10-13 13:42:36',NULL),(35,1,'2010-10-14 10:13:50',NULL),(35,30,'2010-10-14 10:14:25',NULL),(35,1,'2010-10-14 10:21:34',NULL),(36,1,'2010-10-15 09:31:18',NULL),(36,1,'2010-10-15 09:44:33',NULL),(36,1,'2010-10-15 09:45:52',NULL),(36,1,'2010-10-15 09:47:44',NULL),(36,1,'2010-10-15 09:48:51',NULL),(36,1,'2010-10-15 09:49:35',NULL),(36,1,'2010-10-15 10:00:28',NULL),(36,1,'2010-10-15 10:02:28',NULL),(36,1,'2010-10-15 10:03:41',NULL),(36,1,'2010-10-15 10:14:13',NULL),(36,1,'2010-10-15 10:17:08',NULL),(36,1,'2010-10-15 10:21:11',NULL),(36,1,'2010-10-15 10:21:45',NULL),(36,1,'2010-10-15 10:23:42',NULL),(36,1,'2010-10-15 10:25:46',NULL),(36,5,'2010-10-15 10:25:49',NULL),(36,1,'2010-10-15 10:26:47',NULL),(36,10,'2010-10-15 10:26:59',NULL),(36,29,'2010-10-15 10:27:15',NULL),(36,29,'2010-10-15 10:31:55',NULL),(36,17,'2010-10-15 10:32:11',NULL),(36,1,'2010-10-15 10:32:24',NULL),(36,29,'2010-10-15 10:32:26',NULL),(36,29,'2010-10-15 10:34:09',NULL),(36,29,'2010-10-15 10:42:01',NULL),(36,29,'2010-10-15 10:43:08',NULL),(36,29,'2010-10-15 10:45:41',NULL),(36,29,'2010-10-15 10:48:17',NULL),(36,29,'2010-10-15 10:49:08',NULL),(36,29,'2010-10-15 10:49:39',NULL),(36,29,'2010-10-15 10:52:23',NULL),(36,29,'2010-10-15 10:54:32',NULL),(36,29,'2010-10-15 10:57:07',NULL),(36,29,'2010-10-15 10:59:31',NULL),(36,29,'2010-10-15 10:59:36',NULL),(36,29,'2010-10-15 11:01:23',NULL),(36,29,'2010-10-15 11:11:50',NULL),(37,1,'2010-10-15 11:12:04',NULL),(37,29,'2010-10-15 11:12:11',NULL),(37,29,'2010-10-15 11:12:21',NULL),(37,1,'2010-10-15 11:12:25',NULL),(37,10,'2010-10-15 11:13:02',NULL),(37,5,'2010-10-15 11:13:08',NULL),(37,10,'2010-10-15 11:13:11',NULL),(37,1,'2010-10-15 11:13:21',NULL),(36,29,'2010-10-15 11:13:59',NULL),(36,29,'2010-10-15 11:15:57',NULL),(36,29,'2010-10-15 11:19:22',NULL),(36,29,'2010-10-15 11:20:26',NULL),(36,29,'2010-10-15 11:26:42',NULL),(36,29,'2010-10-15 11:27:24',NULL),(36,29,'2010-10-15 11:28:22',NULL),(36,29,'2010-10-15 11:30:27',NULL),(36,29,'2010-10-15 11:31:39',NULL),(36,29,'2010-10-15 11:32:45',NULL),(36,29,'2010-10-15 11:52:35',NULL),(36,29,'2010-10-15 11:56:05',NULL),(36,29,'2010-10-15 11:58:14',NULL),(36,21,'2010-10-15 11:58:50',NULL),(36,29,'2010-10-15 12:01:56',NULL),(36,29,'2010-10-15 12:02:50',NULL),(36,29,'2010-10-15 12:07:38',NULL),(36,29,'2010-10-15 12:10:42',NULL),(36,29,'2010-10-15 12:11:40',NULL),(36,29,'2010-10-15 12:12:40',NULL),(36,29,'2010-10-15 12:14:43',NULL),(36,29,'2010-10-15 12:17:39',NULL),(36,29,'2010-10-15 12:18:31',NULL),(36,29,'2010-10-15 12:20:22',NULL),(36,29,'2010-10-15 12:21:24',NULL),(36,29,'2010-10-15 12:22:39',NULL),(36,29,'2010-10-15 12:24:25',NULL),(36,60,'2010-10-15 12:24:42',NULL),(36,5,'2010-10-15 12:24:50',NULL),(36,29,'2010-10-15 12:25:11',NULL),(36,29,'2010-10-15 12:28:54',NULL),(36,29,'2010-10-15 12:29:58',NULL),(36,29,'2010-10-15 12:30:29',NULL),(36,29,'2010-10-15 12:31:17',NULL),(36,29,'2010-10-15 12:43:42',NULL),(37,1,'2010-10-15 12:50:53',NULL),(37,1,'2010-10-15 12:51:01',NULL),(37,1,'2010-10-15 12:51:05',NULL),(36,29,'2010-10-15 12:51:14',NULL),(36,1,'2010-10-15 12:51:24',NULL),(36,1,'2010-10-15 12:52:13',NULL),(36,29,'2010-10-15 12:52:26',NULL),(36,1,'2010-10-15 12:53:31',NULL),(36,24,'2010-10-15 12:54:03',NULL),(36,1,'2010-10-15 12:56:45',NULL),(36,29,'2010-10-15 12:56:48',NULL),(36,29,'2010-10-15 12:58:25',NULL),(36,29,'2010-10-15 12:58:44',NULL),(36,29,'2010-10-15 12:59:24',NULL),(36,29,'2010-10-15 13:00:13',NULL),(36,29,'2010-10-15 13:01:04',NULL),(36,17,'2010-10-15 13:01:06',NULL),(36,11,'2010-10-15 13:01:15',NULL),(36,11,'2010-10-15 13:10:18',NULL),(36,17,'2010-10-15 13:22:06',NULL),(36,17,'2010-10-15 13:22:48',NULL),(36,1,'2010-10-15 13:24:17',NULL),(38,1,'2010-10-15 13:28:19',NULL),(38,11,'2010-10-15 13:32:49',NULL),(38,25,'2010-10-15 13:36:58',NULL),(38,25,'2010-10-15 13:37:13',NULL),(38,1,'2010-10-15 13:37:32',NULL),(38,29,'2010-10-15 13:37:36',NULL),(38,29,'2010-10-15 13:37:39',NULL),(38,60,'2010-10-15 13:38:03',NULL),(38,29,'2010-10-15 13:38:10',NULL),(38,5,'2010-10-15 13:38:16',NULL),(38,5,'2010-10-15 13:38:42',NULL),(38,1,'2010-10-15 13:38:46',NULL),(38,1,'2010-10-15 13:38:54',NULL),(38,1,'2010-10-15 13:40:48',NULL),(36,10,'2010-10-15 13:42:50',NULL),(38,29,'2010-10-15 13:42:55',NULL),(38,29,'2010-10-15 13:43:12',NULL),(38,29,'2010-10-15 13:43:14',NULL),(38,10,'2010-10-15 13:54:11',NULL),(36,1,'2010-10-15 14:04:12',NULL),(36,29,'2010-10-15 14:04:26',NULL),(36,17,'2010-10-15 14:04:31',NULL),(36,17,'2010-10-15 14:05:11',NULL),(36,1,'2010-10-15 14:09:52',NULL),(36,17,'2010-10-15 14:09:57',NULL),(38,1,'2010-10-15 14:10:29',NULL),(36,1,'2010-10-15 14:11:27',NULL),(36,1,'2010-10-15 14:13:07',NULL),(36,17,'2010-10-15 14:14:13',NULL),(36,17,'2010-10-15 14:18:14',NULL),(36,17,'2010-10-15 14:20:08',NULL),(36,17,'2010-10-15 14:20:28',NULL),(36,17,'2010-10-15 14:21:05',NULL),(36,17,'2010-10-15 14:24:32',NULL),(36,17,'2010-10-15 14:25:09',NULL),(36,17,'2010-10-15 14:25:50',NULL),(36,17,'2010-10-15 14:26:39',NULL),(36,17,'2010-10-15 14:28:04',NULL),(36,17,'2010-10-15 14:31:33',NULL),(36,17,'2010-10-15 14:32:08',NULL),(36,17,'2010-10-15 14:33:17',NULL),(36,17,'2010-10-15 14:33:51',NULL),(36,17,'2010-10-15 14:33:56',NULL),(36,17,'2010-10-15 14:34:09',NULL),(36,17,'2010-10-15 14:34:34',NULL),(36,17,'2010-10-15 14:35:08',NULL),(36,17,'2010-10-15 14:36:04',NULL),(36,17,'2010-10-15 14:36:45',NULL),(36,17,'2010-10-15 14:37:30',NULL),(36,17,'2010-10-15 14:38:09',NULL),(36,17,'2010-10-15 14:38:49',NULL),(36,17,'2010-10-15 14:40:18',NULL),(36,17,'2010-10-15 14:40:57',NULL),(36,17,'2010-10-15 14:41:30',NULL),(36,17,'2010-10-15 14:41:53',NULL),(36,17,'2010-10-15 14:45:26',NULL),(36,17,'2010-10-15 14:55:43',NULL),(36,17,'2010-10-15 14:56:33',NULL),(36,17,'2010-10-15 14:58:01',NULL),(36,17,'2010-10-15 14:58:23',NULL),(36,17,'2010-10-15 15:01:52',NULL),(36,28,'2010-10-15 15:03:15',NULL),(36,18,'2010-10-15 15:03:20',NULL),(36,38,'2010-10-15 15:03:28',NULL),(36,11,'2010-10-15 15:03:32',NULL),(36,14,'2010-10-15 15:03:43',NULL),(36,43,'2010-10-15 15:03:57',NULL),(36,1,'2010-10-15 15:04:40',NULL),(36,61,'2010-10-15 15:05:13',NULL),(36,17,'2010-10-15 15:06:12',NULL),(36,17,'2010-10-15 15:07:53',NULL),(36,17,'2010-10-15 15:07:55',NULL),(36,17,'2010-10-15 15:08:51',NULL),(36,17,'2010-10-15 15:09:59',NULL),(36,17,'2010-10-15 15:10:28',NULL),(36,17,'2010-10-15 15:10:38',NULL),(36,17,'2010-10-15 15:11:12',NULL),(36,17,'2010-10-15 15:11:15',NULL),(36,17,'2010-10-15 15:12:26',NULL),(36,18,'2010-10-15 15:12:33',NULL),(36,14,'2010-10-15 15:12:41',NULL),(36,17,'2010-10-15 15:13:55',NULL),(36,17,'2010-10-15 15:14:18',NULL),(36,17,'2010-10-15 15:15:25',NULL),(36,17,'2010-10-15 15:15:44',NULL),(36,17,'2010-10-15 15:26:42',NULL),(36,17,'2010-10-15 15:27:45',NULL),(36,17,'2010-10-15 15:28:20',NULL),(36,17,'2010-10-15 15:31:31',NULL),(36,17,'2010-10-15 15:32:24',NULL),(36,17,'2010-10-15 15:33:16',NULL),(36,1,'2010-10-15 15:35:12',NULL),(36,17,'2010-10-15 15:35:14',NULL),(36,17,'2010-10-15 15:35:56',NULL),(36,17,'2010-10-15 15:36:19',NULL),(36,17,'2010-10-15 15:37:10',NULL),(36,17,'2010-10-15 15:37:46',NULL),(36,17,'2010-10-15 15:38:40',NULL),(36,17,'2010-10-15 15:38:58',NULL),(36,17,'2010-10-15 15:39:10',NULL),(36,18,'2010-10-15 15:40:22',NULL),(36,1,'2010-10-15 15:43:33',NULL),(36,29,'2010-10-15 15:43:36',NULL),(36,17,'2010-10-15 15:43:39',NULL),(36,17,'2010-10-15 15:45:37',NULL),(36,17,'2010-10-15 15:46:31',NULL),(36,17,'2010-10-15 15:47:15',NULL),(36,17,'2010-10-15 15:48:27',NULL),(36,17,'2010-10-15 15:48:58',NULL),(36,17,'2010-10-15 15:49:34',NULL),(36,18,'2010-10-15 15:49:45',NULL),(36,14,'2010-10-15 15:49:50',NULL),(36,29,'2010-10-15 15:53:13',NULL),(36,10,'2010-10-15 15:54:51',NULL),(36,10,'2010-10-15 15:57:09',NULL),(36,10,'2010-10-15 15:57:21',NULL),(36,10,'2010-10-15 15:58:03',NULL),(36,10,'2010-10-15 15:59:36',NULL),(36,10,'2010-10-15 16:00:12',NULL),(36,10,'2010-10-15 16:00:47',NULL),(36,10,'2010-10-15 16:02:26',NULL),(36,10,'2010-10-15 16:03:18',NULL),(36,10,'2010-10-15 16:03:47',NULL),(36,10,'2010-10-15 16:04:28',NULL),(36,10,'2010-10-15 16:04:52',NULL),(36,10,'2010-10-15 16:07:00',NULL),(36,10,'2010-10-15 16:08:55',NULL),(36,10,'2010-10-15 16:09:41',NULL),(36,10,'2010-10-15 16:11:38',NULL),(36,10,'2010-10-15 16:12:39',NULL),(36,10,'2010-10-15 16:13:10',NULL),(36,10,'2010-10-15 16:14:10',NULL),(36,10,'2010-10-15 16:19:23',NULL),(36,10,'2010-10-15 16:20:44',NULL),(36,10,'2010-10-15 16:21:29',NULL),(36,10,'2010-10-15 16:23:54',NULL),(36,10,'2010-10-15 16:24:01',NULL),(36,10,'2010-10-15 16:24:42',NULL),(36,10,'2010-10-15 16:26:30',NULL),(38,1,'2010-10-15 16:28:35',NULL),(38,29,'2010-10-15 16:28:41',NULL),(38,11,'2010-10-15 16:28:48',NULL),(36,5,'2010-10-15 16:36:39',NULL),(39,1,'2010-10-15 19:26:33',NULL),(39,29,'2010-10-15 19:26:38',NULL),(39,60,'2010-10-15 19:26:43',NULL),(39,5,'2010-10-15 19:27:01',NULL),(40,1,'2010-10-17 10:21:01',NULL),(40,24,'2010-10-17 10:21:07',NULL),(40,11,'2010-10-17 10:21:31',NULL),(40,11,'2010-10-17 10:21:37',NULL),(40,11,'2010-10-17 10:21:44',NULL),(40,11,'2010-10-17 10:21:55',NULL),(40,11,'2010-10-17 10:21:59',NULL),(40,20,'2010-10-17 10:22:05',NULL),(40,20,'2010-10-17 12:09:54',NULL),(41,1,'2010-10-17 17:30:39',NULL),(41,1,'2010-10-17 17:30:48',NULL),(41,29,'2010-10-17 17:30:50',NULL),(41,10,'2010-10-17 17:30:57',NULL),(41,12,'2010-10-17 17:31:02',NULL),(41,12,'2010-10-17 17:31:08',NULL),(41,12,'2010-10-17 17:31:15',NULL),(41,12,'2010-10-17 17:31:17',NULL),(41,1,'2010-10-17 17:31:18',NULL),(41,5,'2010-10-17 17:31:21',NULL),(41,5,'2010-10-17 17:31:29',NULL),(41,45,'2010-10-17 17:31:34',NULL),(41,46,'2010-10-17 17:31:50',NULL),(41,55,'2010-10-17 17:31:59',NULL),(41,5,'2010-10-17 17:32:27',NULL),(41,1,'2010-10-17 17:32:39',NULL),(36,10,'2010-10-18 03:01:25',NULL),(42,1,'2010-10-18 08:49:22',NULL),(42,29,'2010-10-18 08:49:56',NULL),(42,10,'2010-10-18 08:50:07',NULL),(42,10,'2010-10-18 08:56:02',NULL),(42,10,'2010-10-18 09:58:55',NULL),(42,10,'2010-10-18 10:06:33',NULL),(42,10,'2010-10-18 10:24:08',NULL),(43,1,'2010-10-18 13:18:01',NULL),(43,1,'2010-10-18 13:18:09',NULL),(43,29,'2010-10-18 13:18:11',NULL),(43,60,'2010-10-18 13:18:18',NULL),(43,12,'2010-10-18 13:18:22',NULL),(43,12,'2010-10-18 13:18:26',NULL),(43,5,'2010-10-18 13:18:31',NULL),(42,10,'2010-10-18 15:45:48',NULL),(42,10,'2010-10-18 15:47:18',NULL),(42,10,'2010-10-18 15:47:53',NULL),(42,10,'2010-10-18 15:49:10',NULL),(42,10,'2010-10-18 15:49:50',NULL),(42,10,'2010-10-18 15:50:15',NULL),(42,10,'2010-10-18 15:50:42',NULL),(42,10,'2010-10-18 15:51:02',NULL),(42,10,'2010-10-18 15:51:34',NULL),(42,10,'2010-10-18 15:52:05',NULL),(42,10,'2010-10-18 15:53:46',NULL),(42,10,'2010-10-18 15:54:30',NULL),(42,10,'2010-10-18 15:55:05',NULL),(42,10,'2010-10-18 15:55:32',NULL),(42,10,'2010-10-18 15:57:10',NULL),(42,10,'2010-10-18 15:58:29',NULL),(42,10,'2010-10-18 15:59:02',NULL),(42,10,'2010-10-18 16:00:18',NULL),(42,10,'2010-10-18 16:00:51',NULL),(42,10,'2010-10-18 16:02:43',NULL),(42,10,'2010-10-18 16:06:37',NULL),(42,10,'2010-10-18 16:07:17',NULL),(42,10,'2010-10-18 16:08:00',NULL),(42,10,'2010-10-18 16:09:32',NULL),(42,10,'2010-10-18 16:10:37',NULL),(42,10,'2010-10-18 16:10:47',NULL),(42,10,'2010-10-18 16:11:11',NULL),(42,10,'2010-10-18 16:12:32',NULL),(42,10,'2010-10-18 16:13:09',NULL),(42,10,'2010-10-18 16:13:41',NULL),(42,10,'2010-10-18 16:13:45',NULL),(42,10,'2010-10-18 16:15:12',NULL),(42,10,'2010-10-18 16:16:23',NULL),(42,10,'2010-10-18 16:16:53',NULL),(42,10,'2010-10-18 16:17:39',NULL),(42,10,'2010-10-18 16:18:09',NULL),(42,10,'2010-10-18 16:18:19',NULL),(42,10,'2010-10-18 16:19:01',NULL),(42,10,'2010-10-18 16:19:28',NULL),(44,10,'2010-10-18 16:20:17',NULL),(44,10,'2010-10-18 16:20:38',NULL),(44,10,'2010-10-18 16:21:27',NULL),(44,10,'2010-10-18 16:22:33',NULL),(42,10,'2010-10-18 16:23:47',NULL),(42,10,'2010-10-18 16:25:05',NULL),(44,10,'2010-10-18 16:25:08',NULL),(42,10,'2010-10-18 16:26:30',NULL),(44,10,'2010-10-18 16:27:15',NULL),(44,10,'2010-10-18 16:28:59',NULL),(42,10,'2010-10-18 16:29:46',NULL),(42,10,'2010-10-18 16:31:26',NULL),(42,10,'2010-10-18 16:31:46',NULL),(44,10,'2010-10-18 16:32:38',NULL),(42,10,'2010-10-18 16:36:19',NULL),(44,10,'2010-10-18 16:36:25',NULL),(44,10,'2010-10-18 16:36:40',NULL),(42,10,'2010-10-18 16:37:31',NULL),(42,10,'2010-10-18 16:39:25',NULL),(42,10,'2010-10-18 16:40:24',NULL),(42,10,'2010-10-18 16:41:23',NULL),(44,10,'2010-10-18 16:41:31',NULL),(42,10,'2010-10-18 16:43:10',NULL),(44,10,'2010-10-18 16:43:13',NULL),(42,10,'2010-10-18 16:44:08',NULL),(44,10,'2010-10-18 16:44:15',NULL),(44,10,'2010-10-18 16:45:05',NULL),(42,10,'2010-10-18 16:46:13',NULL),(44,10,'2010-10-18 16:46:17',NULL),(44,10,'2010-10-18 16:46:52',NULL),(44,10,'2010-10-18 16:47:44',NULL),(44,10,'2010-10-18 16:54:22',NULL),(44,10,'2010-10-18 16:56:21',NULL),(44,10,'2010-10-18 16:58:25',NULL),(44,10,'2010-10-18 16:59:40',NULL),(44,10,'2010-10-18 17:00:47',NULL),(44,10,'2010-10-18 17:01:32',NULL),(42,10,'2010-10-18 17:02:09',NULL),(44,10,'2010-10-18 17:02:13',NULL),(44,10,'2010-10-18 17:02:48',NULL),(44,10,'2010-10-18 17:03:13',NULL),(44,10,'2010-10-18 17:03:45',NULL),(44,10,'2010-10-18 17:04:24',NULL),(44,10,'2010-10-18 17:05:26',NULL),(44,10,'2010-10-18 17:06:08',NULL),(44,10,'2010-10-18 17:06:53',NULL),(44,10,'2010-10-18 17:07:35',NULL),(44,10,'2010-10-18 17:08:46',NULL),(44,10,'2010-10-18 17:09:40',NULL),(44,10,'2010-10-18 17:10:02',NULL),(44,10,'2010-10-18 17:10:25',NULL),(44,10,'2010-10-18 17:10:44',NULL),(44,10,'2010-10-18 17:11:09',NULL),(44,10,'2010-10-18 17:12:36',NULL),(44,10,'2010-10-18 17:13:18',NULL),(44,10,'2010-10-18 17:14:06',NULL),(44,10,'2010-10-18 17:14:53',NULL),(44,10,'2010-10-18 17:15:05',NULL),(44,10,'2010-10-18 17:16:00',NULL),(44,10,'2010-10-18 17:16:54',NULL),(44,10,'2010-10-18 17:17:39',NULL),(44,10,'2010-10-18 17:18:55',NULL),(44,10,'2010-10-18 17:19:35',NULL),(44,10,'2010-10-18 17:20:31',NULL),(44,10,'2010-10-18 17:21:24',NULL),(44,10,'2010-10-18 17:22:49',NULL),(44,10,'2010-10-18 17:23:25',NULL),(44,10,'2010-10-18 17:23:57',NULL),(44,10,'2010-10-18 17:25:36',NULL),(44,10,'2010-10-18 17:26:18',NULL),(44,10,'2010-10-18 17:26:43',NULL),(44,10,'2010-10-18 17:27:08',NULL),(44,10,'2010-10-18 17:27:50',NULL),(44,10,'2010-10-18 17:29:20',NULL),(44,10,'2010-10-18 17:30:12',NULL),(44,10,'2010-10-18 17:30:41',NULL),(44,10,'2010-10-18 17:32:47',NULL),(44,10,'2010-10-18 17:33:28',NULL),(44,10,'2010-10-18 17:34:18',NULL),(44,10,'2010-10-18 17:35:05',NULL),(44,10,'2010-10-18 17:35:55',NULL),(44,10,'2010-10-18 17:36:27',NULL),(44,10,'2010-10-18 17:37:53',NULL),(44,10,'2010-10-18 17:39:47',NULL),(44,10,'2010-10-18 17:40:05',NULL),(44,10,'2010-10-18 17:40:25',NULL),(44,10,'2010-10-18 17:41:01',NULL),(44,10,'2010-10-18 17:43:59',NULL),(44,10,'2010-10-18 17:44:51',NULL),(42,10,'2010-10-18 17:59:02',NULL),(44,10,'2010-10-18 18:00:27',NULL),(44,10,'2010-10-18 18:01:15',NULL),(44,10,'2010-10-18 18:01:47',NULL),(44,10,'2010-10-18 18:02:19',NULL),(44,10,'2010-10-18 18:04:05',NULL),(44,10,'2010-10-18 18:05:09',NULL),(44,10,'2010-10-18 18:06:02',NULL),(44,10,'2010-10-18 18:06:32',NULL),(44,10,'2010-10-18 18:07:08',NULL),(44,10,'2010-10-18 18:08:20',NULL),(44,10,'2010-10-18 18:08:26',NULL),(44,10,'2010-10-18 18:13:41',NULL),(44,10,'2010-10-18 18:14:17',NULL),(44,10,'2010-10-18 18:15:16',NULL),(44,10,'2010-10-18 18:15:57',NULL),(44,10,'2010-10-18 18:17:13',NULL),(44,10,'2010-10-18 18:18:04',NULL),(45,10,'2010-10-18 18:35:04',NULL),(45,10,'2010-10-18 18:35:55',NULL),(44,10,'2010-10-18 18:36:02',NULL),(44,10,'2010-10-18 18:36:48',NULL),(44,10,'2010-10-18 18:38:59',NULL),(44,10,'2010-10-18 18:40:03',NULL),(44,10,'2010-10-18 18:45:42',NULL),(44,10,'2010-10-18 18:46:21',NULL),(44,10,'2010-10-18 18:47:08',NULL),(44,10,'2010-10-18 18:47:44',NULL),(44,10,'2010-10-18 18:48:18',NULL),(44,10,'2010-10-18 18:48:55',NULL),(44,10,'2010-10-18 18:49:52',NULL),(44,10,'2010-10-18 18:50:11',NULL),(44,10,'2010-10-18 18:50:40',NULL),(44,10,'2010-10-18 18:51:59',NULL),(45,10,'2010-10-18 18:52:50',NULL),(44,10,'2010-10-18 18:53:57',NULL),(44,10,'2010-10-18 18:54:11',NULL),(44,10,'2010-10-18 18:55:01',NULL),(44,10,'2010-10-18 18:56:07',NULL),(44,10,'2010-10-18 18:56:19',NULL),(44,10,'2010-10-18 18:59:15',NULL),(44,10,'2010-10-18 18:59:32',NULL),(44,10,'2010-10-18 19:00:11',NULL),(45,12,'2010-10-18 19:03:03',NULL),(45,12,'2010-10-18 19:03:58',NULL),(44,10,'2010-10-18 19:04:55',NULL),(45,12,'2010-10-18 19:05:05',NULL),(45,12,'2010-10-18 19:10:53',NULL),(45,12,'2010-10-18 19:15:57',NULL),(45,12,'2010-10-18 19:16:45',NULL),(45,12,'2010-10-18 19:17:08',NULL),(45,12,'2010-10-18 19:22:46',NULL),(45,12,'2010-10-18 19:23:11',NULL),(45,12,'2010-10-18 19:24:05',NULL),(45,12,'2010-10-18 19:24:37',NULL),(45,12,'2010-10-19 09:49:43',NULL),(45,12,'2010-10-19 09:50:38',NULL),(45,12,'2010-10-19 09:51:19',NULL),(45,12,'2010-10-19 09:52:19',NULL),(45,12,'2010-10-19 09:53:03',NULL),(45,12,'2010-10-19 09:54:30',NULL),(45,12,'2010-10-19 09:55:05',NULL),(45,12,'2010-10-19 09:55:54',NULL),(46,1,'2010-10-19 09:59:31',NULL),(46,29,'2010-10-19 09:59:58',NULL),(45,12,'2010-10-19 10:02:37',NULL),(46,1,'2010-10-19 10:05:53',NULL),(46,29,'2010-10-19 10:06:04',NULL),(45,12,'2010-10-19 10:07:18',NULL),(45,13,'2010-10-19 10:10:27',NULL),(46,1,'2010-10-19 10:19:47',NULL),(46,29,'2010-10-19 10:20:03',NULL),(46,29,'2010-10-19 10:20:09',NULL),(46,29,'2010-10-19 10:20:11',NULL),(46,62,'2010-10-19 10:20:14',NULL),(45,13,'2010-10-19 10:31:50',NULL),(46,62,'2010-10-19 10:32:37',NULL),(46,11,'2010-10-19 10:32:46',NULL),(45,13,'2010-10-19 10:33:20',NULL),(45,13,'2010-10-19 10:34:45',NULL),(45,13,'2010-10-19 10:35:33',NULL),(45,13,'2010-10-19 10:37:22',NULL),(45,13,'2010-10-19 10:37:30',NULL),(45,13,'2010-10-19 10:37:45',NULL),(45,13,'2010-10-19 10:38:21',NULL),(45,13,'2010-10-19 10:38:56',NULL),(45,13,'2010-10-19 10:40:43',NULL),(45,13,'2010-10-19 10:42:11',NULL),(45,13,'2010-10-19 10:43:06',NULL),(45,12,'2010-10-19 10:43:35',NULL),(45,56,'2010-10-19 10:43:40',NULL),(45,56,'2010-10-19 10:44:51',NULL),(45,12,'2010-10-19 10:45:27',NULL),(45,63,'2010-10-19 10:45:31',NULL),(45,63,'2010-10-19 10:46:32',NULL),(45,63,'2010-10-19 10:49:05',NULL),(45,63,'2010-10-19 10:51:19',NULL),(45,63,'2010-10-19 10:52:31',NULL),(45,63,'2010-10-19 10:53:22',NULL),(45,63,'2010-10-19 10:54:56',NULL),(45,63,'2010-10-19 10:58:17',NULL),(45,63,'2010-10-19 11:00:46',NULL),(45,63,'2010-10-19 11:02:00',NULL),(45,63,'2010-10-19 11:03:29',NULL),(45,63,'2010-10-19 11:03:57',NULL),(45,63,'2010-10-19 11:04:42',NULL),(45,63,'2010-10-19 11:16:18',NULL),(45,63,'2010-10-19 11:21:22',NULL),(45,63,'2010-10-19 11:27:51',NULL),(45,63,'2010-10-19 11:28:40',NULL),(45,63,'2010-10-19 11:30:20',NULL),(45,63,'2010-10-19 11:31:06',NULL),(45,63,'2010-10-19 11:31:41',NULL),(45,63,'2010-10-19 11:32:18',NULL),(45,63,'2010-10-19 12:02:12',NULL),(45,63,'2010-10-19 12:23:24',NULL),(45,64,'2010-10-19 12:31:20',NULL),(45,63,'2010-10-19 12:38:38',NULL),(45,63,'2010-10-19 12:38:45',NULL),(45,63,'2010-10-19 12:39:13',NULL),(45,63,'2010-10-19 12:42:11',NULL),(44,12,'2010-10-19 12:42:53',NULL),(44,63,'2010-10-19 12:43:02',NULL),(45,63,'2010-10-19 12:54:00',NULL),(45,63,'2010-10-19 12:55:44',NULL),(45,63,'2010-10-19 13:18:41',NULL),(45,63,'2010-10-19 13:21:24',NULL),(45,63,'2010-10-19 13:22:32',NULL),(45,63,'2010-10-19 13:29:00',NULL),(45,63,'2010-10-19 13:29:34',NULL),(45,63,'2010-10-19 13:50:53',NULL),(45,64,'2010-10-19 13:51:17',NULL),(45,64,'2010-10-19 13:53:28',NULL),(45,64,'2010-10-19 13:55:05',NULL),(45,64,'2010-10-19 13:57:44',NULL),(45,64,'2010-10-19 14:01:07',NULL),(45,64,'2010-10-19 14:01:47',NULL),(45,64,'2010-10-19 14:02:20',NULL),(45,64,'2010-10-19 14:02:41',NULL),(45,64,'2010-10-19 14:03:17',NULL),(45,64,'2010-10-19 14:04:30',NULL),(45,64,'2010-10-19 14:05:02',NULL),(45,64,'2010-10-19 14:05:56',NULL),(45,63,'2010-10-19 14:08:29',NULL),(45,63,'2010-10-19 14:26:24',NULL),(45,63,'2010-10-19 14:27:15',NULL),(45,63,'2010-10-19 14:27:55',NULL),(45,63,'2010-10-19 14:28:31',NULL),(45,63,'2010-10-19 14:29:11',NULL),(45,63,'2010-10-19 14:29:49',NULL),(45,63,'2010-10-19 14:31:02',NULL),(45,63,'2010-10-19 14:52:27',NULL),(47,1,'2010-10-19 15:27:14',NULL),(47,1,'2010-10-19 15:27:23',NULL),(47,29,'2010-10-19 15:27:25',NULL),(47,1,'2010-10-19 15:27:36',NULL),(45,12,'2010-10-19 15:28:46',NULL),(45,57,'2010-10-19 15:28:48',NULL),(45,57,'2010-10-19 15:31:03',NULL),(45,57,'2010-10-19 15:33:40',NULL),(45,57,'2010-10-19 15:34:39',NULL),(45,57,'2010-10-19 15:35:13',NULL),(45,57,'2010-10-19 15:35:51',NULL),(47,1,'2010-10-19 15:36:08',NULL),(47,29,'2010-10-19 15:36:12',NULL),(48,29,'2010-10-19 15:36:33',NULL),(45,57,'2010-10-19 15:36:34',NULL),(48,1,'2010-10-19 15:36:45',NULL),(48,24,'2010-10-19 15:36:50',NULL),(48,10,'2010-10-19 15:37:01',NULL),(48,10,'2010-10-19 15:37:08',NULL),(45,57,'2010-10-19 15:37:22',NULL),(48,12,'2010-10-19 15:37:32',NULL),(48,13,'2010-10-19 15:37:39',NULL),(48,12,'2010-10-19 15:37:43',NULL),(48,56,'2010-10-19 15:37:46',NULL),(45,57,'2010-10-19 15:37:48',NULL),(48,12,'2010-10-19 15:37:48',NULL),(45,57,'2010-10-19 15:39:00',NULL),(45,57,'2010-10-19 15:40:16',NULL),(45,57,'2010-10-19 15:40:59',NULL),(45,12,'2010-10-19 15:41:08',NULL),(45,65,'2010-10-19 15:41:13',NULL),(45,65,'2010-10-19 15:42:39',NULL),(45,12,'2010-10-19 15:44:10',NULL),(45,58,'2010-10-19 15:44:14',NULL),(45,1,'2010-10-19 15:49:21',NULL),(45,29,'2010-10-19 15:49:42',NULL),(45,29,'2010-10-19 15:51:01',NULL),(45,11,'2010-10-19 15:51:08',NULL),(45,19,'2010-10-19 15:51:16',NULL),(45,19,'2010-10-19 17:26:45',NULL),(45,19,'2010-10-19 17:27:30',NULL),(45,19,'2010-10-19 17:29:10',NULL),(45,19,'2010-10-19 17:31:27',NULL),(45,19,'2010-10-19 17:39:16',NULL),(45,19,'2010-10-19 17:40:17',NULL),(45,19,'2010-10-19 17:40:56',NULL),(45,19,'2010-10-19 17:41:35',NULL),(45,19,'2010-10-19 17:45:07',NULL),(45,19,'2010-10-19 17:46:04',NULL),(45,19,'2010-10-19 17:46:53',NULL),(45,19,'2010-10-19 17:48:12',NULL),(45,19,'2010-10-19 17:53:10',NULL),(45,19,'2010-10-19 17:54:09',NULL),(45,19,'2010-10-19 17:55:49',NULL),(45,19,'2010-10-19 17:59:15',NULL),(45,19,'2010-10-19 17:59:51',NULL),(45,19,'2010-10-19 18:00:34',NULL),(45,19,'2010-10-19 18:02:35',NULL),(45,19,'2010-10-19 18:03:49',NULL),(45,19,'2010-10-19 18:04:42',NULL),(45,19,'2010-10-19 18:05:27',NULL),(45,19,'2010-10-19 18:06:04',NULL),(45,19,'2010-10-19 18:07:07',NULL),(45,19,'2010-10-19 18:09:09',NULL),(45,19,'2010-10-19 18:14:03',NULL),(45,19,'2010-10-19 18:14:56',NULL),(45,19,'2010-10-19 18:16:18',NULL),(45,19,'2010-10-19 18:17:15',NULL),(45,19,'2010-10-19 18:17:55',NULL),(45,19,'2010-10-19 18:19:30',NULL),(45,19,'2010-10-19 18:19:58',NULL),(45,19,'2010-10-19 18:20:46',NULL),(45,19,'2010-10-19 18:24:52',NULL),(45,19,'2010-10-19 18:27:55',NULL),(45,19,'2010-10-19 18:29:16',NULL),(45,19,'2010-10-19 18:31:28',NULL),(45,19,'2010-10-19 18:34:01',NULL),(45,19,'2010-10-19 18:35:44',NULL),(45,19,'2010-10-19 18:36:29',NULL),(45,19,'2010-10-19 18:37:13',NULL),(45,19,'2010-10-19 18:37:56',NULL),(45,19,'2010-10-19 18:38:32',NULL),(49,1,'2010-10-19 18:38:47',NULL),(49,29,'2010-10-19 18:38:54',NULL),(49,12,'2010-10-19 18:39:01',NULL),(49,13,'2010-10-19 18:39:05',NULL),(49,12,'2010-10-19 18:39:08',NULL),(49,56,'2010-10-19 18:39:11',NULL),(49,12,'2010-10-19 18:39:13',NULL),(45,41,'2010-10-19 18:41:28',NULL),(45,41,'2010-10-19 18:42:31',NULL),(45,41,'2010-10-19 18:43:34',NULL),(45,66,'2010-10-19 18:44:10',NULL),(45,66,'2010-10-19 18:54:55',NULL),(45,61,'2010-10-19 18:56:19',NULL),(45,66,'2010-10-19 18:56:37',NULL),(45,20,'2010-10-19 18:56:43',NULL),(45,24,'2010-10-19 18:56:50',NULL),(45,60,'2010-10-19 18:59:02',NULL),(45,24,'2010-10-19 18:59:07',NULL),(45,5,'2010-10-19 18:59:14',NULL),(45,5,'2010-10-19 19:00:00',NULL),(45,5,'2010-10-19 19:01:07',NULL),(45,5,'2010-10-19 19:02:42',NULL),(45,5,'2010-10-19 19:03:35',NULL),(45,5,'2010-10-19 19:04:35',NULL),(45,5,'2010-10-19 19:05:44',NULL),(45,5,'2010-10-19 19:06:43',NULL),(45,5,'2010-10-19 19:12:21',NULL),(45,5,'2010-10-19 19:15:43',NULL),(45,5,'2010-10-19 19:20:42',NULL),(45,5,'2010-10-19 19:22:12',NULL),(45,5,'2010-10-19 19:23:27',NULL),(45,5,'2010-10-19 19:24:11',NULL),(45,5,'2010-10-19 19:25:32',NULL),(45,5,'2010-10-19 19:27:11',NULL),(45,5,'2010-10-19 19:28:06',NULL),(45,5,'2010-10-19 19:30:06',NULL),(45,5,'2010-10-19 19:31:21',NULL),(45,5,'2010-10-19 19:32:18',NULL),(45,5,'2010-10-19 19:33:48',NULL),(45,5,'2010-10-19 19:34:42',NULL),(45,5,'2010-10-19 19:38:18',NULL),(45,5,'2010-10-19 19:40:00',NULL),(45,5,'2010-10-19 19:40:22',NULL),(45,5,'2010-10-19 19:41:17',NULL),(45,5,'2010-10-19 19:42:03',NULL),(45,5,'2010-10-19 19:42:52',NULL),(45,5,'2010-10-19 19:43:30',NULL),(45,5,'2010-10-19 19:44:30',NULL),(45,5,'2010-10-19 19:46:34',NULL),(45,5,'2010-10-19 19:47:35',NULL),(45,5,'2010-10-19 19:48:43',NULL),(45,5,'2010-10-19 19:49:26',NULL),(45,5,'2010-10-19 19:50:24',NULL),(45,5,'2010-10-19 19:50:59',NULL),(45,5,'2010-10-19 19:51:44',NULL),(45,5,'2010-10-19 19:52:35',NULL),(45,5,'2010-10-19 19:55:31',NULL),(50,1,'2010-10-19 19:58:46',NULL),(50,29,'2010-10-19 20:00:10',NULL),(50,25,'2010-10-19 20:03:03',NULL),(50,25,'2010-10-19 20:03:26',NULL),(50,1,'2010-10-19 20:03:44',NULL),(50,29,'2010-10-19 20:04:42',NULL),(50,5,'2010-10-19 20:04:51',NULL),(50,29,'2010-10-19 20:05:31',NULL),(50,5,'2010-10-19 20:05:55',NULL),(50,1,'2010-10-19 20:09:46',NULL),(50,45,'2010-10-19 20:09:51',NULL),(50,46,'2010-10-19 20:12:50',NULL),(50,12,'2010-10-19 20:13:28',NULL),(50,58,'2010-10-19 20:14:03',NULL),(50,30,'2010-10-19 20:14:27',NULL),(50,12,'2010-10-19 20:14:37',NULL),(48,1,'2010-10-19 20:15:05',NULL),(48,29,'2010-10-19 20:15:10',NULL),(48,5,'2010-10-19 20:15:17',NULL),(51,1,'2010-10-19 20:15:54',NULL),(51,29,'2010-10-19 20:16:00',NULL),(51,5,'2010-10-19 20:16:10',NULL),(51,10,'2010-10-19 20:16:18',NULL),(51,10,'2010-10-19 20:16:39',NULL),(51,10,'2010-10-19 20:17:18',NULL),(51,67,'2010-10-19 20:18:44',NULL),(51,1,'2010-10-19 20:18:51',NULL),(51,1,'2010-10-19 20:19:16',NULL),(51,1,'2010-10-19 20:19:21',NULL),(51,1,'2010-10-19 20:19:31',NULL),(51,29,'2010-10-19 20:19:35',NULL),(51,11,'2010-10-19 20:19:39',NULL),(51,24,'2010-10-19 20:20:09',NULL),(51,11,'2010-10-19 20:20:21',NULL),(51,11,'2010-10-19 20:22:14',NULL),(51,11,'2010-10-19 20:22:19',NULL),(51,39,'2010-10-19 20:22:33',NULL),(51,11,'2010-10-19 20:22:38',NULL),(51,19,'2010-10-19 20:23:30',NULL),(51,41,'2010-10-19 20:27:37',NULL),(51,6,'2010-10-19 20:27:53',NULL),(51,6,'2010-10-19 20:28:01',NULL),(51,6,'2010-10-19 20:28:08',NULL),(45,5,'2010-10-19 21:23:43',NULL),(45,5,'2010-10-19 21:23:48',NULL),(45,5,'2010-10-19 21:23:52',NULL),(45,5,'2010-10-19 21:23:57',NULL),(45,5,'2010-10-19 21:24:02',NULL),(45,5,'2010-10-19 21:24:04',NULL),(45,5,'2010-10-19 21:24:06',NULL),(45,1,'2010-10-19 21:24:11',NULL),(45,42,'2010-10-19 21:24:16',NULL),(45,17,'2010-10-19 21:24:55',NULL),(45,31,'2010-10-19 21:25:01',NULL),(45,5,'2010-10-19 21:25:07',NULL),(45,5,'2010-10-19 21:25:17',NULL),(45,5,'2010-10-19 21:25:21',NULL),(45,5,'2010-10-19 21:25:25',NULL),(45,5,'2010-10-19 21:25:29',NULL),(52,1,'2010-10-20 09:52:35',NULL),(52,1,'2010-10-20 09:52:39',NULL),(52,32,'2010-10-20 09:52:43',NULL),(45,5,'2010-10-20 09:57:12',NULL),(45,5,'2010-10-20 10:05:31',NULL),(45,5,'2010-10-20 10:07:24',NULL),(45,5,'2010-10-20 10:08:53',NULL),(52,12,'2010-10-20 10:08:54',NULL),(52,13,'2010-10-20 10:09:04',NULL),(45,5,'2010-10-20 10:09:18',NULL),(45,5,'2010-10-20 10:39:21',NULL),(45,5,'2010-10-20 10:39:41',NULL),(45,5,'2010-10-20 10:42:32',NULL),(45,5,'2010-10-20 10:43:20',NULL),(45,5,'2010-10-20 10:44:24',NULL),(45,5,'2010-10-20 10:46:54',NULL),(45,5,'2010-10-20 10:47:29',NULL),(45,5,'2010-10-20 10:48:07',NULL),(45,5,'2010-10-20 10:48:31',NULL),(45,5,'2010-10-20 10:49:02',NULL),(45,5,'2010-10-20 10:49:38',NULL),(45,5,'2010-10-20 10:50:56',NULL),(45,5,'2010-10-20 10:51:24',NULL),(45,5,'2010-10-20 10:51:53',NULL),(45,5,'2010-10-20 10:52:59',NULL),(45,5,'2010-10-20 10:53:23',NULL),(45,5,'2010-10-20 10:54:11',NULL),(45,5,'2010-10-20 10:54:45',NULL),(45,5,'2010-10-20 10:55:02',NULL),(45,5,'2010-10-20 10:55:33',NULL),(45,5,'2010-10-20 10:56:21',NULL),(45,5,'2010-10-20 10:57:25',NULL),(45,5,'2010-10-20 10:58:54',NULL),(45,5,'2010-10-20 10:59:44',NULL),(45,5,'2010-10-20 11:00:19',NULL),(45,5,'2010-10-20 11:01:40',NULL),(45,5,'2010-10-20 11:02:54',NULL),(45,5,'2010-10-20 11:04:17',NULL),(45,5,'2010-10-20 11:06:00',NULL),(45,5,'2010-10-20 11:07:20',NULL),(45,5,'2010-10-20 11:07:32',NULL),(45,5,'2010-10-20 11:08:23',NULL),(45,5,'2010-10-20 11:09:38',NULL),(45,5,'2010-10-20 11:12:16',NULL),(45,5,'2010-10-20 11:12:55',NULL),(45,5,'2010-10-20 11:13:27',NULL),(45,5,'2010-10-20 11:15:35',NULL),(45,5,'2010-10-20 11:16:31',NULL),(45,5,'2010-10-20 11:17:33',NULL),(45,5,'2010-10-20 11:18:17',NULL),(45,5,'2010-10-20 11:20:12',NULL),(45,5,'2010-10-20 11:23:12',NULL),(45,5,'2010-10-20 11:24:21',NULL),(45,5,'2010-10-20 11:28:28',NULL),(45,1,'2010-10-20 11:30:38',NULL),(45,29,'2010-10-20 11:30:40',NULL),(45,25,'2010-10-20 11:30:52',NULL),(45,12,'2010-10-20 11:30:54',NULL),(45,63,'2010-10-20 11:30:58',NULL),(45,63,'2010-10-20 11:31:29',NULL),(45,5,'2010-10-20 11:31:34',NULL),(45,5,'2010-10-20 11:32:23',NULL),(45,5,'2010-10-20 11:33:07',NULL),(45,5,'2010-10-20 11:33:39',NULL),(45,5,'2010-10-20 11:35:12',NULL),(45,1,'2010-10-20 11:35:52',NULL),(45,42,'2010-10-20 11:35:55',NULL),(45,42,'2010-10-20 11:36:22',NULL),(45,5,'2010-10-20 11:36:37',NULL),(45,5,'2010-10-20 11:37:13',NULL),(45,5,'2010-10-20 11:37:21',NULL),(45,5,'2010-10-20 11:37:25',NULL),(45,1,'2010-10-20 11:37:30',NULL),(45,42,'2010-10-20 11:37:51',NULL),(45,42,'2010-10-20 11:38:02',NULL),(45,5,'2010-10-20 11:38:13',NULL),(45,5,'2010-10-20 11:41:18',NULL),(45,5,'2010-10-20 11:43:19',NULL),(45,42,'2010-10-20 11:44:58',NULL),(45,5,'2010-10-20 11:45:56',NULL),(45,5,'2010-10-20 11:46:20',NULL),(45,5,'2010-10-20 11:47:12',NULL),(45,5,'2010-10-20 11:50:33',NULL),(45,5,'2010-10-20 11:51:37',NULL),(45,5,'2010-10-20 11:52:16',NULL),(45,5,'2010-10-20 11:52:59',NULL),(45,5,'2010-10-20 11:53:33',NULL),(45,5,'2010-10-20 11:53:45',NULL),(45,5,'2010-10-20 11:54:49',NULL),(45,5,'2010-10-20 11:56:55',NULL),(45,5,'2010-10-20 11:57:27',NULL),(45,5,'2010-10-20 11:57:54',NULL),(45,5,'2010-10-20 11:58:42',NULL),(45,5,'2010-10-20 11:59:07',NULL),(45,45,'2010-10-20 12:00:35',NULL),(45,45,'2010-10-20 12:02:34',NULL),(45,45,'2010-10-20 12:04:37',NULL),(45,45,'2010-10-20 12:05:35',NULL),(45,45,'2010-10-20 12:05:57',NULL),(45,45,'2010-10-20 12:06:44',NULL),(45,45,'2010-10-20 12:07:38',NULL),(45,45,'2010-10-20 12:09:47',NULL),(45,45,'2010-10-20 12:11:00',NULL),(45,45,'2010-10-20 12:14:06',NULL),(45,45,'2010-10-20 12:15:21',NULL),(45,45,'2010-10-20 12:15:58',NULL),(45,45,'2010-10-20 12:17:06',NULL),(45,45,'2010-10-20 12:17:35',NULL),(45,45,'2010-10-20 12:17:58',NULL),(45,45,'2010-10-20 12:18:22',NULL),(45,45,'2010-10-20 12:18:53',NULL),(45,45,'2010-10-20 12:19:48',NULL),(45,64,'2010-10-20 12:20:06',NULL),(45,46,'2010-10-20 12:20:15',NULL),(45,46,'2010-10-20 12:21:22',NULL),(45,46,'2010-10-20 12:31:44',NULL),(45,46,'2010-10-20 12:33:06',NULL),(45,46,'2010-10-20 12:34:25',NULL),(45,46,'2010-10-20 12:35:58',NULL),(45,46,'2010-10-20 12:37:16',NULL),(45,46,'2010-10-20 12:37:57',NULL),(45,45,'2010-10-20 12:38:15',NULL),(45,46,'2010-10-20 12:38:21',NULL),(45,46,'2010-10-20 12:38:50',NULL),(45,46,'2010-10-20 12:39:17',NULL),(45,55,'2010-10-20 12:39:36',NULL),(45,46,'2010-10-20 12:43:59',NULL),(45,46,'2010-10-20 12:44:21',NULL),(45,47,'2010-10-20 12:44:40',NULL),(45,47,'2010-10-20 12:46:10',NULL),(45,47,'2010-10-20 12:49:24',NULL),(45,47,'2010-10-20 12:50:05',NULL),(45,48,'2010-10-20 12:50:12',NULL),(45,48,'2010-10-20 12:51:34',NULL),(45,48,'2010-10-20 12:52:52',NULL),(45,48,'2010-10-20 12:53:42',NULL),(45,48,'2010-10-20 12:54:11',NULL),(45,48,'2010-10-20 12:54:34',NULL),(45,48,'2010-10-20 12:55:00',NULL),(45,49,'2010-10-20 12:55:12',NULL),(45,49,'2010-10-20 12:56:37',NULL),(45,49,'2010-10-20 12:57:12',NULL),(45,12,'2010-10-20 12:58:05',NULL),(45,13,'2010-10-20 12:58:10',NULL),(45,1,'2010-10-20 13:14:30',NULL),(45,66,'2010-10-20 13:14:35',NULL),(45,5,'2010-10-20 13:14:41',NULL),(45,12,'2010-10-20 13:14:57',NULL),(44,1,'2010-10-20 13:15:36',NULL),(44,12,'2010-10-20 13:15:42',NULL),(44,1,'2010-10-20 13:15:50',NULL),(44,66,'2010-10-20 13:15:54',NULL),(44,5,'2010-10-20 13:16:08',NULL),(44,45,'2010-10-20 13:16:21',NULL),(44,5,'2010-10-20 13:16:27',NULL),(45,13,'2010-10-20 13:23:30',NULL),(45,13,'2010-10-20 13:27:28',NULL),(45,13,'2010-10-20 13:28:40',NULL),(45,13,'2010-10-20 13:29:31',NULL),(45,13,'2010-10-20 13:30:00',NULL),(45,13,'2010-10-20 13:30:36',NULL),(45,13,'2010-10-20 13:31:03',NULL),(45,13,'2010-10-20 13:31:25',NULL),(45,13,'2010-10-20 13:31:47',NULL),(45,5,'2010-10-20 13:31:58',NULL),(45,12,'2010-10-20 13:32:15',NULL),(45,13,'2010-10-20 13:32:18',NULL),(45,13,'2010-10-20 13:33:16',NULL),(45,13,'2010-10-20 13:34:07',NULL),(45,13,'2010-10-20 13:34:51',NULL),(45,13,'2010-10-20 13:36:08',NULL),(45,13,'2010-10-20 13:37:00',NULL),(45,13,'2010-10-20 13:39:38',NULL),(45,13,'2010-10-20 13:41:31',NULL),(45,1,'2010-10-20 14:18:01',NULL),(45,12,'2010-10-20 14:18:03',NULL),(45,13,'2010-10-20 14:21:17',NULL),(45,57,'2010-10-20 14:21:29',NULL),(45,57,'2010-10-20 14:41:52',NULL),(45,57,'2010-10-20 14:42:15',NULL),(45,57,'2010-10-20 14:56:50',NULL),(45,57,'2010-10-20 15:06:34',NULL),(45,57,'2010-10-20 15:08:39',NULL),(45,57,'2010-10-20 15:15:07',NULL),(45,1,'2010-10-20 15:17:21',NULL),(45,29,'2010-10-20 15:17:23',NULL),(45,17,'2010-10-20 15:17:26',NULL),(45,57,'2010-10-20 15:26:36',NULL),(45,57,'2010-10-20 15:27:13',NULL),(45,12,'2010-10-20 15:27:36',NULL),(45,12,'2010-10-20 15:27:50',NULL),(45,13,'2010-10-20 15:27:54',NULL),(45,13,'2010-10-20 15:28:32',NULL),(45,13,'2010-10-20 15:28:58',NULL),(45,13,'2010-10-20 15:29:19',NULL),(45,12,'2010-10-20 15:29:30',NULL),(45,56,'2010-10-20 15:29:32',NULL),(45,12,'2010-10-20 15:29:34',NULL),(45,65,'2010-10-20 15:29:38',NULL),(45,12,'2010-10-20 15:29:59',NULL),(45,1,'2010-10-20 15:30:03',NULL),(45,29,'2010-10-20 15:30:14',NULL),(45,17,'2010-10-20 15:31:33',NULL),(45,1,'2010-10-20 15:33:51',NULL),(45,17,'2010-10-20 15:33:56',NULL),(45,38,'2010-10-20 15:34:03',NULL),(45,42,'2010-10-20 15:34:06',NULL),(45,1,'2010-10-20 15:34:41',NULL),(45,42,'2010-10-20 15:34:43',NULL),(45,17,'2010-10-20 15:38:21',NULL),(45,17,'2010-10-20 15:38:26',NULL),(45,68,'2010-10-20 15:38:41',NULL),(45,31,'2010-10-20 15:38:50',NULL),(45,1,'2010-10-20 15:39:46',NULL),(45,17,'2010-10-20 15:39:48',NULL),(45,19,'2010-10-20 15:39:52',NULL),(45,17,'2010-10-20 15:40:00',NULL),(45,11,'2010-10-20 15:40:09',NULL),(45,24,'2010-10-20 15:40:14',NULL),(53,1,'2010-10-20 15:41:11',NULL),(45,42,'2010-10-20 15:41:52',NULL),(45,24,'2010-10-20 15:44:26',NULL),(45,24,'2010-10-20 15:45:12',NULL),(45,24,'2010-10-20 15:56:51',NULL),(0,24,'2010-10-20 15:57:05',NULL),(45,24,'2010-10-20 15:57:54',NULL),(45,24,'2010-10-20 15:58:35',NULL),(45,24,'2010-10-20 15:59:22',NULL),(45,42,'2010-10-20 15:59:24',NULL),(0,42,'2010-10-20 15:59:31',NULL),(45,24,'2010-10-20 16:00:37',NULL),(45,24,'2010-10-20 16:01:45',NULL),(48,29,'2010-10-20 16:01:53',NULL),(45,24,'2010-10-20 16:02:14',NULL),(45,24,'2010-10-20 16:03:39',NULL),(45,24,'2010-10-20 16:05:56',NULL),(45,42,'2010-10-20 16:06:30',NULL),(45,24,'2010-10-20 16:07:14',NULL),(45,24,'2010-10-20 16:12:15',NULL),(45,42,'2010-10-20 16:12:17',NULL),(45,24,'2010-10-20 16:12:30',NULL),(45,24,'2010-10-20 16:14:00',NULL),(45,24,'2010-10-20 16:16:34',NULL),(45,24,'2010-10-20 16:17:49',NULL),(45,42,'2010-10-20 16:18:06',NULL),(45,42,'2010-10-20 16:18:53',NULL),(45,24,'2010-10-20 16:22:42',NULL),(45,24,'2010-10-20 16:28:02',NULL),(45,24,'2010-10-20 16:39:17',NULL),(45,24,'2010-10-20 16:42:03',NULL),(45,24,'2010-10-20 16:42:20',NULL),(45,24,'2010-10-20 16:42:26',NULL),(45,24,'2010-10-20 16:42:31',NULL),(45,24,'2010-10-20 16:43:59',NULL),(45,24,'2010-10-20 16:44:07',NULL),(45,24,'2010-10-20 16:50:30',NULL),(45,42,'2010-10-20 16:50:31',NULL),(45,17,'2010-10-20 16:51:32',NULL),(45,17,'2010-10-20 16:52:10',NULL),(45,18,'2010-10-20 16:52:17',NULL),(45,17,'2010-10-20 16:52:21',NULL),(45,14,'2010-10-20 16:52:24',NULL),(45,11,'2010-10-20 16:52:34',NULL),(45,69,'2010-10-20 16:52:43',NULL),(0,69,'2010-10-20 16:52:45',NULL),(45,69,'2010-10-20 17:11:09',NULL),(45,69,'2010-10-20 17:12:28',NULL),(45,69,'2010-10-20 17:13:44',NULL),(45,17,'2010-10-20 17:14:52',NULL),(45,69,'2010-10-20 17:15:30',NULL),(45,69,'2010-10-20 17:16:51',NULL),(54,1,'2010-10-20 20:02:21',NULL),(54,17,'2010-10-20 20:02:25',NULL),(54,17,'2010-10-20 20:02:42',NULL),(54,17,'2010-10-20 20:02:45',NULL),(54,17,'2010-10-20 20:02:47',NULL),(54,17,'2010-10-20 20:02:48',NULL),(54,31,'2010-10-20 20:02:54',NULL),(0,31,'2010-10-20 20:02:56',NULL),(0,31,'2010-10-20 20:03:09',NULL),(54,29,'2010-10-20 20:03:34',NULL),(0,29,'2010-10-20 20:03:36',NULL),(54,1,'2010-10-20 20:04:07',NULL),(48,1,'2010-10-20 20:07:04',NULL),(48,29,'2010-10-20 20:07:49',NULL),(55,1,'2010-10-21 11:16:25',NULL),(56,55,'2010-10-21 17:09:11',NULL),(56,55,'2010-10-21 17:13:31',NULL),(56,55,'2010-10-21 17:14:21',NULL),(56,69,'2010-10-21 17:15:42',NULL),(57,1,'2010-10-22 11:28:23',NULL),(57,17,'2010-10-22 11:28:38',NULL),(57,17,'2010-10-22 11:28:47',NULL),(57,17,'2010-10-22 11:28:52',NULL),(57,17,'2010-10-22 11:28:58',NULL),(57,1,'2010-10-22 11:29:00',NULL),(57,29,'2010-10-22 11:29:03',NULL),(0,29,'2010-10-22 11:29:09',NULL),(0,29,'2010-10-22 11:29:15',NULL),(57,17,'2010-10-22 11:41:27',NULL),(57,18,'2010-10-22 11:48:49',NULL),(57,17,'2010-10-22 11:48:53',NULL),(57,17,'2010-10-22 11:49:00',NULL),(57,12,'2010-10-22 11:49:11',NULL),(57,13,'2010-10-22 12:05:16',NULL),(57,12,'2010-10-22 12:05:20',NULL),(57,5,'2010-10-22 12:05:26',NULL),(57,45,'2010-10-22 12:05:35',NULL),(57,64,'2010-10-22 12:05:39',NULL),(57,45,'2010-10-22 12:07:01',NULL),(57,64,'2010-10-22 12:07:05',NULL),(57,64,'2010-10-22 12:07:18',NULL),(57,45,'2010-10-22 12:07:26',NULL),(57,64,'2010-10-22 12:07:35',NULL),(57,64,'2010-10-22 12:07:42',NULL),(57,45,'2010-10-22 12:08:39',NULL),(57,64,'2010-10-22 12:08:49',NULL),(57,45,'2010-10-22 12:09:00',NULL),(57,46,'2010-10-22 12:09:45',NULL),(57,55,'2010-10-22 12:09:57',NULL),(57,47,'2010-10-22 12:10:24',NULL),(57,48,'2010-10-22 12:10:33',NULL),(57,49,'2010-10-22 12:10:41',NULL),(57,13,'2010-10-22 12:11:42',NULL),(57,12,'2010-10-22 12:11:47',NULL),(57,12,'2010-10-22 12:14:47',NULL),(57,56,'2010-10-22 12:14:50',NULL),(57,63,'2010-10-22 12:14:54',NULL),(57,57,'2010-10-22 12:17:57',NULL),(57,65,'2010-10-22 12:18:06',NULL),(57,58,'2010-10-22 12:18:10',NULL),(57,59,'2010-10-22 12:19:32',NULL),(58,1,'2010-10-22 13:17:48',NULL),(58,17,'2010-10-22 13:17:53',NULL),(58,17,'2010-10-22 13:18:19',NULL),(58,18,'2010-10-22 13:20:05',NULL),(58,27,'2010-10-22 13:20:13',NULL),(0,27,'2010-10-22 13:20:16',NULL),(58,1,'2010-10-22 13:55:01',NULL),(58,32,'2010-10-22 13:55:49',NULL),(0,32,'2010-10-22 13:55:50',NULL),(58,68,'2010-10-22 13:55:56',NULL),(0,68,'2010-10-22 13:55:57',NULL),(58,68,'2010-10-22 14:22:04',NULL),(56,69,'2010-10-22 15:36:14',NULL),(56,12,'2010-10-22 15:36:25',NULL),(56,17,'2010-10-22 15:42:54',NULL),(56,17,'2010-10-22 15:45:25',NULL),(56,68,'2010-10-22 15:45:29',NULL),(56,70,'2010-10-22 15:45:35',NULL),(0,70,'2010-10-22 15:45:36',NULL),(56,17,'2010-10-22 15:46:09',NULL),(56,17,'2010-10-22 15:46:22',NULL),(56,17,'2010-10-22 15:46:28',NULL),(56,12,'2010-10-22 15:52:22',NULL),(56,17,'2010-10-22 15:53:34',NULL),(56,12,'2010-10-22 15:53:38',NULL),(56,12,'2010-10-22 15:54:28',NULL),(58,58,'2010-10-22 15:54:32',NULL),(58,1,'2010-10-22 15:54:37',NULL),(58,29,'2010-10-22 15:54:39',NULL),(56,12,'2010-10-22 15:54:58',NULL),(56,12,'2010-10-22 15:55:36',NULL),(56,12,'2010-10-22 15:56:17',NULL),(56,12,'2010-10-22 15:56:57',NULL),(56,12,'2010-10-22 15:57:24',NULL),(56,12,'2010-10-22 15:59:23',NULL),(56,12,'2010-10-22 16:01:17',NULL),(56,12,'2010-10-22 16:02:35',NULL),(56,12,'2010-10-22 16:43:42',NULL),(56,12,'2010-10-22 16:45:46',NULL),(56,12,'2010-10-22 16:52:27',NULL),(56,12,'2010-10-22 16:53:16',NULL),(56,12,'2010-10-22 16:53:41',NULL),(56,57,'2010-10-22 16:57:42',NULL),(56,57,'2010-10-22 16:58:29',NULL),(56,57,'2010-10-22 16:59:33',NULL),(56,57,'2010-10-22 17:00:19',NULL),(56,57,'2010-10-22 17:02:25',NULL),(56,57,'2010-10-22 17:03:06',NULL),(56,57,'2010-10-22 17:04:31',NULL),(56,57,'2010-10-22 17:05:05',NULL),(56,57,'2010-10-22 17:05:36',NULL),(56,57,'2010-10-22 17:06:10',NULL),(56,57,'2010-10-22 17:06:32',NULL),(56,57,'2010-10-22 17:06:50',NULL),(56,57,'2010-10-22 17:07:13',NULL),(56,57,'2010-10-22 17:13:12',NULL),(56,57,'2010-10-22 17:14:03',NULL),(56,57,'2010-10-22 17:14:29',NULL),(56,57,'2010-10-22 17:20:15',NULL),(56,57,'2010-10-22 17:20:39',NULL),(56,57,'2010-10-22 17:21:06',NULL),(56,57,'2010-10-22 17:24:16',NULL),(56,57,'2010-10-22 17:24:50',NULL),(56,57,'2010-10-22 17:25:21',NULL),(56,57,'2010-10-22 17:25:48',NULL),(56,1,'2010-10-22 17:26:02',NULL),(56,1,'2010-10-22 17:31:04',NULL),(56,1,'2010-10-22 17:31:23',NULL),(56,1,'2010-10-22 17:33:45',NULL),(56,12,'2010-10-22 17:33:51',NULL),(58,68,'2010-10-22 17:58:29',NULL),(58,1,'2010-10-22 17:58:41',NULL),(59,1,'2010-10-22 17:59:07',NULL),(59,10,'2010-10-22 18:00:10',NULL),(59,12,'2010-10-22 18:00:14',NULL),(59,13,'2010-10-22 18:00:41',NULL),(59,12,'2010-10-22 18:00:56',NULL),(59,13,'2010-10-22 18:01:03',NULL),(59,56,'2010-10-22 18:01:07',NULL),(59,63,'2010-10-22 18:01:09',NULL),(59,57,'2010-10-22 18:01:14',NULL),(59,58,'2010-10-22 18:01:16',NULL),(60,10,'2010-10-22 18:01:20',NULL),(60,10,'2010-10-22 18:01:24',NULL),(60,12,'2010-10-22 18:01:27',NULL),(60,1,'2010-10-22 18:02:19',NULL),(60,29,'2010-10-22 18:02:21',NULL),(60,1,'2010-10-22 18:08:21',NULL),(60,12,'2010-10-22 18:09:10',NULL),(60,12,'2010-10-22 18:16:55',NULL),(56,57,'2010-10-22 18:38:55',NULL),(56,57,'2010-10-22 18:39:39',NULL),(56,57,'2010-10-22 18:40:22',NULL),(56,57,'2010-10-22 18:41:03',NULL),(56,57,'2010-10-22 18:41:43',NULL),(56,57,'2010-10-22 18:43:37',NULL),(56,57,'2010-10-22 18:44:47',NULL),(56,57,'2010-10-22 18:45:36',NULL),(61,57,'2010-10-22 19:28:52',NULL),(62,1,'2010-10-23 09:21:12',NULL),(62,29,'2010-10-23 09:21:20',NULL),(62,29,'2010-10-23 09:21:33',NULL),(62,29,'2010-10-23 09:21:36',NULL),(62,29,'2010-10-23 09:21:39',NULL),(62,29,'2010-10-23 09:21:41',NULL),(62,12,'2010-10-23 09:21:57',NULL),(62,56,'2010-10-23 09:22:03',NULL),(62,12,'2010-10-23 09:22:06',NULL),(62,63,'2010-10-23 09:22:09',NULL),(62,1,'2010-10-23 09:22:43',NULL),(62,27,'2010-10-23 09:22:47',NULL),(0,27,'2010-10-23 09:23:24',NULL),(62,17,'2010-10-23 09:23:30',NULL),(62,29,'2010-10-23 09:23:32',NULL),(0,29,'2010-10-23 09:23:37',NULL),(62,29,'2010-10-23 09:55:35',NULL),(62,17,'2010-10-23 09:55:42',NULL),(62,61,'2010-10-23 10:04:40',NULL),(0,61,'2010-10-23 10:04:41',NULL),(0,61,'2010-10-23 10:05:21',NULL),(63,1,'2010-10-23 12:13:18',NULL),(63,17,'2010-10-23 12:13:24',NULL),(63,31,'2010-10-23 12:13:30',NULL),(0,31,'2010-10-23 12:13:32',NULL),(63,12,'2010-10-23 12:14:00',NULL),(63,56,'2010-10-23 12:14:04',NULL),(63,12,'2010-10-23 12:14:07',NULL),(63,12,'2010-10-23 12:27:21',NULL),(64,1,'2010-10-23 12:27:53',NULL),(64,1,'2010-10-23 12:32:56',NULL),(64,1,'2010-10-23 12:34:09',NULL),(64,24,'2010-10-23 12:34:42',NULL),(64,1,'2010-10-23 12:35:26',NULL),(64,1,'2010-10-23 12:35:32',NULL),(64,10,'2010-10-23 12:35:48',NULL),(64,12,'2010-10-23 12:36:30',NULL),(64,13,'2010-10-23 12:36:56',NULL),(64,12,'2010-10-23 12:37:26',NULL),(64,1,'2010-10-23 12:37:34',NULL),(64,24,'2010-10-23 12:37:40',NULL),(64,5,'2010-10-23 12:37:53',NULL),(64,45,'2010-10-23 12:38:21',NULL),(64,46,'2010-10-23 12:38:34',NULL),(64,47,'2010-10-23 12:38:52',NULL),(64,48,'2010-10-23 12:39:01',NULL),(64,49,'2010-10-23 12:39:13',NULL),(63,1,'2010-10-23 12:40:20',NULL),(63,1,'2010-10-23 12:40:23',NULL),(64,1,'2010-10-23 12:41:57',NULL),(63,13,'2010-10-23 12:51:54',NULL),(63,1,'2010-10-23 12:52:10',NULL),(63,12,'2010-10-23 12:52:14',NULL),(63,13,'2010-10-23 12:52:17',NULL),(63,13,'2010-10-23 12:52:21',NULL),(63,56,'2010-10-23 12:52:24',NULL),(63,13,'2010-10-23 12:53:05',NULL),(65,1,'2010-10-23 12:53:33',NULL),(65,12,'2010-10-23 12:53:36',NULL),(65,13,'2010-10-23 12:53:40',NULL),(63,1,'2010-10-23 12:53:53',NULL),(63,29,'2010-10-23 12:53:55',NULL),(63,5,'2010-10-23 12:54:45',NULL),(63,1,'2010-10-23 12:54:57',NULL),(63,24,'2010-10-23 12:55:02',NULL),(0,24,'2010-10-23 12:55:03',NULL),(63,19,'2010-10-23 12:55:10',NULL),(0,19,'2010-10-23 12:55:11',NULL),(64,1,'2010-10-23 13:01:10',NULL),(64,1,'2010-10-23 13:11:37',NULL),(64,1,'2010-10-23 13:23:29',NULL),(64,1,'2010-10-23 13:23:54',NULL),(64,1,'2010-10-23 13:24:49',NULL),(64,1,'2010-10-23 13:25:41',NULL),(64,1,'2010-10-23 13:34:00',NULL),(64,1,'2010-10-23 13:34:07',NULL),(64,55,'2010-10-23 13:34:34',NULL),(64,1,'2010-10-23 13:34:53',NULL),(64,1,'2010-10-23 13:35:23',NULL),(64,17,'2010-10-23 13:35:26',NULL),(64,18,'2010-10-23 13:35:27',NULL),(64,38,'2010-10-23 13:35:27',NULL),(64,11,'2010-10-23 13:35:29',NULL),(64,39,'2010-10-23 13:35:29',NULL),(64,25,'2010-10-23 13:35:29',NULL),(64,20,'2010-10-23 13:35:29',NULL),(64,14,'2010-10-23 13:35:30',NULL),(64,71,'2010-10-23 13:35:30',NULL),(64,72,'2010-10-23 13:35:30',NULL),(64,73,'2010-10-23 13:35:30',NULL),(64,43,'2010-10-23 13:35:31',NULL),(64,34,'2010-10-23 13:35:31',NULL),(64,1,'2010-10-23 13:35:51',NULL),(64,1,'2010-10-23 13:36:00',NULL),(64,38,'2010-10-23 13:36:02',NULL),(64,18,'2010-10-23 13:36:02',NULL),(64,17,'2010-10-23 13:36:02',NULL),(64,11,'2010-10-23 13:36:02',NULL),(64,25,'2010-10-23 13:36:03',NULL),(64,39,'2010-10-23 13:36:03',NULL),(64,14,'2010-10-23 13:36:03',NULL),(64,20,'2010-10-23 13:36:03',NULL),(64,72,'2010-10-23 13:36:04',NULL),(64,73,'2010-10-23 13:36:04',NULL),(64,43,'2010-10-23 13:36:04',NULL),(64,71,'2010-10-23 13:36:04',NULL),(64,34,'2010-10-23 13:36:06',NULL),(64,1,'2010-10-23 13:36:42',NULL),(64,1,'2010-10-23 13:36:51',NULL),(64,18,'2010-10-23 13:36:53',NULL),(64,38,'2010-10-23 13:36:53',NULL),(64,11,'2010-10-23 13:36:53',NULL),(64,17,'2010-10-23 13:36:53',NULL),(64,25,'2010-10-23 13:36:53',NULL),(64,39,'2010-10-23 13:36:53',NULL),(64,14,'2010-10-23 13:36:54',NULL),(64,20,'2010-10-23 13:36:54',NULL),(64,72,'2010-10-23 13:36:54',NULL),(64,71,'2010-10-23 13:36:54',NULL),(64,73,'2010-10-23 13:36:55',NULL),(64,43,'2010-10-23 13:36:55',NULL),(64,34,'2010-10-23 13:36:55',NULL),(64,11,'2010-10-23 13:37:10',NULL),(64,11,'2010-10-23 13:37:25','2010-10-23 13:37:39'),(63,1,'2010-10-23 13:50:05',NULL),(63,1,'2010-10-23 14:00:02',NULL),(63,29,'2010-10-23 14:00:08',NULL),(63,11,'2010-10-23 14:00:12',NULL),(63,1,'2010-10-23 14:01:37',NULL),(63,29,'2010-10-23 14:01:44',NULL),(63,11,'2010-10-23 14:01:47',NULL),(63,17,'2010-10-23 14:08:20',NULL),(63,17,'2010-10-23 14:10:02',NULL),(63,17,'2010-10-23 14:12:48',NULL),(63,29,'2010-10-23 14:12:55',NULL),(63,17,'2010-10-23 14:22:41',NULL),(63,17,'2010-10-23 14:24:02',NULL),(63,17,'2010-10-23 14:24:06',NULL),(63,17,'2010-10-23 14:24:10',NULL),(63,1,'2010-10-23 14:24:12',NULL),(63,29,'2010-10-23 14:24:15',NULL),(63,74,'2010-10-23 14:24:32',NULL),(63,19,'2010-10-23 14:54:12',NULL),(63,19,'2010-10-23 14:54:28',NULL),(63,19,'2010-10-23 14:54:30',NULL),(63,19,'2010-10-23 14:54:35',NULL),(63,19,'2010-10-23 15:01:05',NULL),(66,1,'2010-10-23 16:57:51',NULL),(66,17,'2010-10-23 16:57:56',NULL),(66,17,'2010-10-23 16:57:59',NULL),(66,17,'2010-10-23 16:58:01',NULL),(66,17,'2010-10-23 16:59:34',NULL),(66,1,'2010-10-23 16:59:40',NULL),(66,1,'2010-10-23 17:01:13',NULL),(66,1,'2010-10-23 17:03:10',NULL),(66,35,'2010-10-23 17:03:19',NULL),(0,35,'2010-10-23 17:03:21',NULL),(66,12,'2010-10-23 17:03:29',NULL),(66,63,'2010-10-23 17:03:38',NULL),(66,13,'2010-10-23 17:03:42',NULL),(66,56,'2010-10-23 17:03:44',NULL),(66,12,'2010-10-23 17:03:47',NULL),(66,63,'2010-10-23 17:03:51',NULL),(66,57,'2010-10-23 17:03:54',NULL),(66,65,'2010-10-23 17:03:58',NULL),(66,58,'2010-10-23 17:04:01',NULL),(66,58,'2010-10-23 17:04:06',NULL),(66,59,'2010-10-23 17:04:11',NULL),(66,17,'2010-10-23 17:05:55',NULL),(66,1,'2010-10-23 17:06:01',NULL),(66,22,'2010-10-23 17:06:05',NULL),(0,22,'2010-10-23 17:06:06',NULL),(66,31,'2010-10-23 17:06:38',NULL),(66,1,'2010-10-23 17:09:22',NULL),(67,1,'2010-10-23 17:10:06',NULL),(67,35,'2010-10-23 17:11:30',NULL),(67,35,'2010-10-23 17:12:33',NULL),(66,1,'2010-10-23 17:15:11',NULL),(66,35,'2010-10-23 17:15:19',NULL),(66,75,'2010-10-23 17:15:33',NULL),(0,75,'2010-10-23 17:15:34',NULL),(66,62,'2010-10-23 17:15:38',NULL),(0,62,'2010-10-23 17:15:39',NULL),(67,62,'2010-10-23 17:21:24',NULL),(67,62,'2010-10-23 17:25:47',NULL),(67,75,'2010-10-23 17:25:52',NULL),(67,75,'2010-10-23 17:26:09',NULL),(67,75,'2010-10-23 17:26:16',NULL),(66,62,'2010-10-23 17:26:50',NULL),(66,1,'2010-10-23 17:26:58',NULL),(66,1,'2010-10-23 17:27:01',NULL),(66,1,'2010-10-23 17:27:08',NULL),(67,1,'2010-10-23 17:27:29',NULL),(67,1,'2010-10-23 17:27:34',NULL),(67,35,'2010-10-23 17:29:15',NULL),(67,1,'2010-10-23 17:37:43',NULL),(67,1,'2010-10-23 17:37:47',NULL),(67,1,'2010-10-23 17:37:49',NULL),(66,1,'2010-10-23 17:37:54',NULL),(66,1,'2010-10-23 17:39:45',NULL),(66,1,'2010-10-23 17:40:29',NULL),(66,22,'2010-10-23 17:40:41',NULL),(0,22,'2010-10-23 17:40:43',NULL),(67,27,'2010-10-23 17:42:11',NULL),(67,27,'2010-10-23 17:42:12',NULL),(0,27,'2010-10-23 17:42:14',NULL),(67,1,'2010-10-23 17:42:40',NULL),(67,1,'2010-10-23 17:43:43',NULL),(67,22,'2010-10-23 17:44:19',NULL),(67,1,'2010-10-23 17:44:30',NULL),(66,1,'2010-10-23 17:44:37',NULL),(66,62,'2010-10-23 17:44:41',NULL),(0,62,'2010-10-23 17:44:42',NULL),(66,6,'2010-10-23 17:46:31',NULL),(66,6,'2010-10-23 17:46:54',NULL),(66,1,'2010-10-23 17:46:56',NULL),(66,62,'2010-10-23 19:57:11',NULL),(66,62,'2010-10-23 19:57:31',NULL),(66,62,'2010-10-23 19:57:37',NULL),(66,1,'2010-10-23 19:57:41',NULL),(66,1,'2010-10-23 19:58:20',NULL),(66,75,'2010-10-23 19:58:45',NULL),(66,27,'2010-10-23 19:58:56',NULL),(68,1,'2010-10-24 08:59:01',NULL),(68,17,'2010-10-24 08:59:07',NULL),(68,1,'2010-10-24 09:15:28',NULL),(68,1,'2010-10-24 09:15:34',NULL),(68,74,'2010-10-24 09:15:39',NULL),(68,74,'2010-10-24 09:16:30',NULL),(68,74,'2010-10-24 09:16:34',NULL),(68,11,'2010-10-24 09:16:49',NULL),(68,14,'2010-10-24 09:17:03',NULL),(68,74,'2010-10-24 09:27:00',NULL),(68,74,'2010-10-24 09:27:04',NULL),(68,74,'2010-10-24 09:28:12',NULL),(68,22,'2010-10-24 09:33:24',NULL),(66,1,'2010-10-24 09:36:56',NULL),(66,74,'2010-10-24 09:37:01',NULL),(66,11,'2010-10-24 09:37:15',NULL),(66,22,'2010-10-24 09:37:23',NULL),(66,22,'2010-10-24 09:37:41',NULL),(66,22,'2010-10-24 09:37:46',NULL),(66,1,'2010-10-24 09:37:48',NULL),(66,74,'2010-10-24 09:37:50',NULL),(68,74,'2010-10-24 09:42:02',NULL),(66,62,'2010-10-24 09:43:06',NULL),(66,62,'2010-10-24 09:43:13',NULL),(66,74,'2010-10-24 09:43:16',NULL),(66,74,'2010-10-24 09:43:17',NULL),(68,74,'2010-10-24 09:43:17',NULL),(66,62,'2010-10-24 09:43:20',NULL),(68,22,'2010-10-24 09:43:23',NULL),(67,17,'2010-10-24 09:47:17',NULL),(68,74,'2010-10-24 09:51:31',NULL),(66,74,'2010-10-24 09:51:57',NULL),(66,18,'2010-10-24 09:52:01',NULL),(66,22,'2010-10-24 09:52:15',NULL),(68,22,'2010-10-24 09:52:17',NULL),(68,22,'2010-10-24 09:52:33',NULL),(68,74,'2010-10-24 09:52:40',NULL),(68,74,'2010-10-24 09:56:17',NULL),(68,22,'2010-10-24 09:57:02',NULL),(68,1,'2010-10-24 09:57:25',NULL),(68,74,'2010-10-24 09:57:28',NULL),(68,74,'2010-10-24 10:04:29',NULL),(68,74,'2010-10-24 10:05:03',NULL),(68,74,'2010-10-24 10:05:15',NULL),(66,74,'2010-10-24 10:06:02',NULL),(66,18,'2010-10-24 10:06:18',NULL),(66,38,'2010-10-24 10:06:25',NULL),(66,43,'2010-10-24 10:06:45',NULL),(66,74,'2010-10-24 10:06:49',NULL),(66,1,'2010-10-24 10:06:52',NULL),(66,74,'2010-10-24 10:06:54',NULL),(68,74,'2010-10-24 10:10:24',NULL),(68,18,'2010-10-24 10:10:30',NULL),(68,18,'2010-10-24 10:11:05',NULL),(68,18,'2010-10-24 10:11:19',NULL),(68,18,'2010-10-24 10:11:53',NULL),(68,18,'2010-10-24 10:14:16',NULL),(68,27,'2010-10-24 10:15:15',NULL),(68,38,'2010-10-24 10:15:31',NULL),(68,11,'2010-10-24 10:15:35',NULL),(68,62,'2010-10-24 10:15:39',NULL),(68,38,'2010-10-24 10:17:01',NULL),(68,11,'2010-10-24 10:17:04',NULL),(68,14,'2010-10-24 10:17:09',NULL),(68,71,'2010-10-24 10:17:16',NULL),(68,43,'2010-10-24 10:17:23',NULL),(68,34,'2010-10-24 10:17:25',NULL),(68,43,'2010-10-24 10:17:28',NULL),(68,18,'2010-10-24 10:17:31',NULL),(68,11,'2010-10-24 10:17:33',NULL),(68,11,'2010-10-24 10:18:25',NULL),(68,1,'2010-10-24 10:20:53',NULL),(68,74,'2010-10-24 10:20:57',NULL),(68,74,'2010-10-24 10:22:05',NULL),(68,74,'2010-10-24 10:23:05',NULL),(68,18,'2010-10-24 10:23:09',NULL),(68,11,'2010-10-24 10:23:14',NULL),(68,14,'2010-10-24 10:23:20',NULL),(68,74,'2010-10-24 10:23:33',NULL),(68,18,'2010-10-24 10:23:43',NULL),(68,74,'2010-10-24 10:23:46',NULL),(68,11,'2010-10-24 10:24:13',NULL),(68,74,'2010-10-24 10:24:26',NULL),(68,18,'2010-10-24 10:24:28',NULL),(68,38,'2010-10-24 10:24:53',NULL),(68,11,'2010-10-24 10:24:55',NULL),(68,14,'2010-10-24 10:25:00',NULL),(68,18,'2010-10-24 10:25:02',NULL),(68,74,'2010-10-24 10:25:05',NULL),(68,12,'2010-10-24 10:36:23',NULL),(68,63,'2010-10-24 10:36:30',NULL),(68,63,'2010-10-24 10:37:46',NULL),(68,63,'2010-10-24 10:38:34',NULL),(68,63,'2010-10-24 10:38:51',NULL),(44,12,'2010-10-24 10:39:17',NULL),(44,12,'2010-10-24 10:39:20',NULL),(44,63,'2010-10-24 10:39:26',NULL),(68,63,'2010-10-24 10:39:47',NULL),(68,63,'2010-10-24 10:41:19',NULL),(68,63,'2010-10-24 10:41:48',NULL),(68,63,'2010-10-24 10:42:56',NULL),(68,63,'2010-10-24 10:44:08',NULL),(68,63,'2010-10-24 10:44:32',NULL),(68,63,'2010-10-24 10:44:57',NULL),(68,63,'2010-10-24 10:45:27',NULL),(68,63,'2010-10-24 10:46:04',NULL),(44,63,'2010-10-24 10:49:58',NULL),(68,63,'2010-10-24 10:50:52',NULL),(68,63,'2010-10-24 10:51:14',NULL),(68,64,'2010-10-24 10:57:17',NULL),(69,10,'2010-10-24 10:57:36',NULL),(69,12,'2010-10-24 10:57:41',NULL),(69,63,'2010-10-24 10:57:46',NULL),(69,58,'2010-10-24 10:57:50',NULL),(69,58,'2010-10-24 11:00:32',NULL),(69,58,'2010-10-24 11:01:16',NULL),(69,58,'2010-10-24 11:01:50',NULL),(69,58,'2010-10-24 11:04:03',NULL),(69,58,'2010-10-24 11:24:24',NULL),(69,74,'2010-10-24 11:24:33',NULL),(69,62,'2010-10-24 11:25:03',NULL),(69,12,'2010-10-24 11:25:25',NULL),(69,58,'2010-10-24 11:25:28',NULL),(69,59,'2010-10-24 11:25:34',NULL),(69,59,'2010-10-24 11:25:38',NULL),(69,58,'2010-10-24 11:25:44',NULL),(69,74,'2010-10-24 11:25:56',NULL),(69,62,'2010-10-24 11:25:57',NULL),(69,12,'2010-10-24 11:26:06',NULL),(69,58,'2010-10-24 11:26:08',NULL),(69,55,'2010-10-24 11:28:55',NULL),(69,58,'2010-10-24 11:31:23',NULL),(69,58,'2010-10-24 11:31:29',NULL),(69,58,'2010-10-24 11:32:01',NULL),(69,55,'2010-10-24 11:32:07',NULL),(69,55,'2010-10-24 11:32:56',NULL),(69,55,'2010-10-24 11:34:42',NULL),(69,55,'2010-10-24 11:35:03',NULL),(69,55,'2010-10-24 11:35:52',NULL),(69,55,'2010-10-24 11:43:36',NULL),(66,74,'2010-10-24 11:43:38',NULL),(69,55,'2010-10-24 11:44:17',NULL),(69,55,'2010-10-24 11:46:10',NULL),(69,55,'2010-10-24 11:47:59',NULL),(66,74,'2010-10-24 11:49:25',NULL),(66,18,'2010-10-24 11:49:28',NULL),(66,38,'2010-10-24 11:49:30',NULL),(66,11,'2010-10-24 11:49:32',NULL),(66,14,'2010-10-24 11:49:33',NULL),(66,1,'2010-10-24 11:49:35',NULL),(66,74,'2010-10-24 11:49:37',NULL),(66,22,'2010-10-24 11:49:42',NULL),(69,55,'2010-10-24 11:49:54',NULL),(69,55,'2010-10-24 11:50:18',NULL),(69,55,'2010-10-24 11:51:50',NULL),(69,55,'2010-10-24 11:53:44',NULL),(69,55,'2010-10-24 12:03:06',NULL),(69,55,'2010-10-24 12:04:30',NULL),(69,55,'2010-10-24 12:04:54',NULL),(69,1,'2010-10-24 12:05:38',NULL),(69,74,'2010-10-24 12:06:12',NULL),(69,74,'2010-10-24 12:07:03',NULL),(69,74,'2010-10-24 12:07:23',NULL),(69,74,'2010-10-24 12:07:54',NULL),(69,74,'2010-10-24 12:08:29',NULL),(69,1,'2010-10-24 12:08:42',NULL),(69,74,'2010-10-24 12:08:45',NULL),(69,74,'2010-10-24 12:09:04',NULL),(69,1,'2010-10-24 12:09:09',NULL),(69,1,'2010-10-24 12:10:55',NULL),(69,1,'2010-10-24 12:11:40',NULL),(69,1,'2010-10-24 12:12:08',NULL),(69,1,'2010-10-24 12:12:46',NULL),(69,1,'2010-10-24 12:13:16',NULL),(69,1,'2010-10-24 12:14:21',NULL),(69,1,'2010-10-24 12:15:14',NULL),(69,1,'2010-10-24 12:15:43',NULL),(69,1,'2010-10-24 12:17:15',NULL),(69,1,'2010-10-24 12:18:58',NULL),(66,1,'2010-10-24 12:41:38',NULL),(66,22,'2010-10-24 12:42:01',NULL),(66,22,'2010-10-24 12:42:09',NULL),(66,18,'2010-10-24 12:42:25',NULL),(66,38,'2010-10-24 12:42:27',NULL),(66,11,'2010-10-24 12:42:30',NULL),(66,14,'2010-10-24 12:42:31',NULL),(66,43,'2010-10-24 12:42:33',NULL),(66,14,'2010-10-24 12:42:36',NULL),(66,34,'2010-10-24 12:42:37',NULL),(66,74,'2010-10-24 12:42:45',NULL),(66,74,'2010-10-24 12:42:51',NULL),(66,74,'2010-10-24 12:42:55',NULL),(69,1,'2010-10-24 12:43:43',NULL),(66,11,'2010-10-24 12:49:12',NULL),(66,76,'2010-10-24 12:49:16',NULL),(0,76,'2010-10-24 12:49:17',NULL),(66,11,'2010-10-24 12:50:35',NULL),(66,75,'2010-10-24 12:50:38',NULL),(66,76,'2010-10-24 12:50:44',NULL),(66,76,'2010-10-24 12:52:10',NULL),(66,1,'2010-10-24 12:54:27',NULL),(66,22,'2010-10-24 12:54:38',NULL),(66,22,'2010-10-24 12:56:34',NULL),(66,1,'2010-10-24 12:56:38',NULL),(66,76,'2010-10-24 12:56:41',NULL),(69,76,'2010-10-24 12:57:34',NULL),(66,18,'2010-10-24 12:59:33',NULL),(67,74,'2010-10-24 13:01:53',NULL),(67,18,'2010-10-24 13:01:57',NULL),(67,38,'2010-10-24 13:01:59',NULL),(67,11,'2010-10-24 13:02:01',NULL),(67,14,'2010-10-24 13:02:04',NULL),(67,43,'2010-10-24 13:02:09',NULL),(67,34,'2010-10-24 13:02:11',NULL),(67,34,'2010-10-24 13:02:18',NULL),(67,74,'2010-10-24 13:02:23',NULL),(67,55,'2010-10-24 13:03:28',NULL),(67,55,'2010-10-24 13:03:47',NULL),(67,55,'2010-10-24 13:03:58',NULL),(67,55,'2010-10-24 13:04:05',NULL),(67,55,'2010-10-24 13:04:15',NULL),(67,55,'2010-10-24 13:04:20',NULL),(67,74,'2010-10-24 13:05:31',NULL),(67,6,'2010-10-24 13:05:43',NULL),(67,74,'2010-10-24 13:05:46',NULL),(66,55,'2010-10-24 13:15:06',NULL),(66,38,'2010-10-24 13:22:13',NULL),(70,76,'2010-10-24 15:00:47',NULL),(70,1,'2010-10-24 15:01:00',NULL),(71,76,'2010-10-24 15:36:27',NULL),(71,76,'2010-10-24 15:36:38',NULL),(71,76,'2010-10-24 15:38:13',NULL),(71,76,'2010-10-24 15:39:30',NULL),(71,76,'2010-10-24 15:40:25',NULL),(71,76,'2010-10-24 15:40:51',NULL),(71,76,'2010-10-24 15:41:19',NULL),(71,12,'2010-10-24 15:41:57',NULL),(71,76,'2010-10-24 15:42:28',NULL),(71,76,'2010-10-24 15:44:23',NULL),(71,76,'2010-10-24 15:45:08',NULL),(71,76,'2010-10-24 15:45:31',NULL),(71,1,'2010-10-24 15:45:55',NULL),(71,74,'2010-10-24 15:45:59',NULL),(71,76,'2010-10-24 15:47:13',NULL),(71,76,'2010-10-24 15:51:13',NULL),(71,76,'2010-10-24 15:51:55',NULL),(71,76,'2010-10-24 15:52:34',NULL),(71,76,'2010-10-24 15:52:58',NULL),(71,76,'2010-10-24 15:53:24',NULL),(71,76,'2010-10-24 15:54:08',NULL),(71,76,'2010-10-24 15:54:38',NULL),(71,76,'2010-10-24 15:55:39',NULL),(71,76,'2010-10-24 15:56:20',NULL),(71,76,'2010-10-24 15:56:49',NULL),(71,76,'2010-10-24 15:57:19',NULL),(71,76,'2010-10-24 15:59:57',NULL),(71,76,'2010-10-24 16:00:50',NULL),(71,76,'2010-10-24 16:01:21',NULL),(71,76,'2010-10-24 16:01:50',NULL),(71,76,'2010-10-24 16:02:26',NULL),(71,76,'2010-10-24 16:02:49',NULL),(71,76,'2010-10-24 16:03:36',NULL),(71,75,'2010-10-24 16:04:36',NULL),(71,11,'2010-10-24 16:04:43',NULL),(71,62,'2010-10-24 16:04:47',NULL),(71,62,'2010-10-24 16:07:23',NULL),(71,5,'2010-10-24 16:07:29',NULL),(71,5,'2010-10-24 16:09:17',NULL),(71,5,'2010-10-24 16:10:54',NULL),(71,45,'2010-10-24 16:11:19',NULL),(71,45,'2010-10-24 16:12:34',NULL),(71,45,'2010-10-24 16:13:13',NULL),(71,45,'2010-10-24 16:14:19',NULL),(71,45,'2010-10-24 16:15:36',NULL),(71,45,'2010-10-24 16:16:17',NULL),(71,45,'2010-10-24 16:16:36',NULL),(71,45,'2010-10-24 16:17:01',NULL),(71,45,'2010-10-24 16:17:33',NULL),(71,45,'2010-10-24 16:21:59',NULL),(71,45,'2010-10-24 16:24:47',NULL),(71,45,'2010-10-24 16:27:14',NULL),(71,45,'2010-10-24 16:27:36',NULL),(71,45,'2010-10-24 16:27:58',NULL),(71,45,'2010-10-24 16:28:08',NULL),(71,45,'2010-10-24 16:28:32',NULL),(71,45,'2010-10-24 16:28:59',NULL),(71,45,'2010-10-24 16:30:14',NULL),(71,45,'2010-10-24 16:30:46',NULL),(71,45,'2010-10-24 16:31:56',NULL),(71,45,'2010-10-24 16:32:21',NULL),(71,45,'2010-10-24 16:32:53',NULL),(71,45,'2010-10-24 16:34:21',NULL),(71,45,'2010-10-24 16:40:05',NULL),(71,45,'2010-10-24 16:40:15',NULL),(71,45,'2010-10-24 16:45:08',NULL),(71,45,'2010-10-24 16:46:44',NULL),(71,45,'2010-10-24 16:47:48',NULL),(71,45,'2010-10-24 16:48:27',NULL),(71,45,'2010-10-24 16:49:00',NULL),(71,45,'2010-10-24 16:49:30',NULL),(71,45,'2010-10-24 16:51:47',NULL),(71,45,'2010-10-24 16:52:36',NULL),(71,45,'2010-10-24 16:53:53',NULL),(71,45,'2010-10-24 16:54:32',NULL),(71,45,'2010-10-24 16:56:29',NULL),(71,45,'2010-10-24 16:57:03',NULL),(71,45,'2010-10-24 16:57:29',NULL),(71,45,'2010-10-24 16:58:09',NULL),(71,45,'2010-10-24 16:58:35',NULL),(71,5,'2010-10-24 16:58:59',NULL),(71,5,'2010-10-24 16:59:17',NULL),(71,45,'2010-10-24 16:59:36',NULL),(71,46,'2010-10-24 16:59:55',NULL),(71,46,'2010-10-24 17:00:46',NULL),(71,45,'2010-10-24 17:00:51',NULL),(71,45,'2010-10-24 17:01:19',NULL),(71,45,'2010-10-24 17:02:51',NULL),(71,45,'2010-10-24 17:04:13',NULL),(71,45,'2010-10-24 17:06:01',NULL),(71,45,'2010-10-24 17:06:37',NULL),(71,45,'2010-10-24 17:07:05',NULL),(71,45,'2010-10-24 17:07:52',NULL),(71,1,'2010-10-24 17:08:01',NULL),(71,74,'2010-10-24 17:08:12',NULL),(71,11,'2010-10-24 17:08:24',NULL),(71,76,'2010-10-24 17:08:27',NULL),(0,76,'2010-10-24 17:08:29',NULL),(71,76,'2010-10-24 17:09:23',NULL),(71,5,'2010-10-24 17:09:27',NULL),(71,5,'2010-10-24 17:11:03',NULL),(71,45,'2010-10-24 17:11:19',NULL),(71,5,'2010-10-24 17:11:31',NULL),(71,5,'2010-10-24 17:12:44',NULL),(71,5,'2010-10-24 17:15:26',NULL),(71,5,'2010-10-24 17:15:52',NULL),(71,5,'2010-10-24 17:16:23',NULL),(71,45,'2010-10-24 17:16:35',NULL),(71,5,'2010-10-24 17:16:52',NULL),(71,5,'2010-10-24 17:17:49',NULL),(71,45,'2010-10-24 17:18:02',NULL),(71,46,'2010-10-24 17:18:08',NULL),(71,45,'2010-10-24 17:18:12',NULL),(71,64,'2010-10-24 17:18:15',NULL),(71,5,'2010-10-24 17:18:27',NULL),(71,45,'2010-10-24 17:18:32',NULL),(71,46,'2010-10-24 17:18:38',NULL),(71,47,'2010-10-24 17:18:48',NULL),(71,77,'2010-10-24 17:21:42',NULL),(71,77,'2010-10-24 17:23:47',NULL),(71,77,'2010-10-24 17:25:29',NULL),(71,77,'2010-10-24 17:26:18',NULL),(71,77,'2010-10-24 17:28:11',NULL),(71,77,'2010-10-24 17:28:49',NULL),(71,77,'2010-10-24 17:30:47',NULL),(71,77,'2010-10-24 17:31:36',NULL),(72,1,'2010-10-24 17:31:45',NULL),(72,76,'2010-10-24 17:32:12',NULL),(71,77,'2010-10-24 17:32:41',NULL),(72,33,'2010-10-24 17:32:49',NULL),(72,1,'2010-10-24 17:33:07',NULL),(72,38,'2010-10-24 17:33:09',NULL),(72,74,'2010-10-24 17:33:09',NULL),(72,18,'2010-10-24 17:33:09',NULL),(72,11,'2010-10-24 17:33:10',NULL),(72,72,'2010-10-24 17:33:10',NULL),(72,14,'2010-10-24 17:33:10',NULL),(72,71,'2010-10-24 17:33:10',NULL),(72,43,'2010-10-24 17:33:10',NULL),(72,34,'2010-10-24 17:33:11',NULL),(72,78,'2010-10-24 17:33:11',NULL),(72,25,'2010-10-24 17:33:12',NULL),(72,79,'2010-10-24 17:33:12',NULL),(72,80,'2010-10-24 17:33:12',NULL),(72,81,'2010-10-24 17:33:13',NULL),(72,82,'2010-10-24 17:33:13',NULL),(72,83,'2010-10-24 17:33:13',NULL),(72,84,'2010-10-24 17:33:14',NULL),(72,85,'2010-10-24 17:33:14',NULL),(72,86,'2010-10-24 17:33:14',NULL),(71,77,'2010-10-24 17:34:05',NULL),(71,77,'2010-10-24 17:34:34',NULL),(71,77,'2010-10-24 17:34:58',NULL),(71,77,'2010-10-24 17:35:49',NULL),(71,77,'2010-10-24 17:36:39',NULL),(71,77,'2010-10-24 17:37:38',NULL),(71,77,'2010-10-24 17:38:35',NULL),(71,77,'2010-10-24 17:38:54',NULL),(71,77,'2010-10-24 17:39:46',NULL),(71,77,'2010-10-24 17:40:38',NULL),(71,77,'2010-10-24 17:41:21',NULL),(71,77,'2010-10-24 17:42:06',NULL),(71,77,'2010-10-24 17:42:51',NULL),(71,1,'2010-10-24 17:44:07',NULL),(71,22,'2010-10-24 17:44:10',NULL),(71,77,'2010-10-24 17:57:55',NULL),(71,77,'2010-10-24 17:58:37',NULL),(71,77,'2010-10-24 17:59:26',NULL),(71,77,'2010-10-24 18:00:21',NULL),(71,77,'2010-10-24 18:01:14',NULL),(71,47,'2010-10-24 18:01:22',NULL),(71,47,'2010-10-24 18:02:12',NULL),(71,47,'2010-10-24 18:03:28',NULL),(71,48,'2010-10-24 18:03:48',NULL),(71,48,'2010-10-24 18:07:08',NULL),(71,48,'2010-10-24 18:08:11',NULL),(71,49,'2010-10-24 18:08:25',NULL),(71,49,'2010-10-24 18:14:57',NULL),(71,49,'2010-10-24 18:15:58',NULL),(71,54,'2010-10-24 18:16:17',NULL),(71,54,'2010-10-24 18:17:45',NULL),(71,54,'2010-10-24 18:20:01',NULL),(71,54,'2010-10-24 18:20:37',NULL),(71,54,'2010-10-24 18:22:11',NULL),(71,54,'2010-10-24 18:22:59',NULL),(71,1,'2010-10-24 18:31:04',NULL),(71,74,'2010-10-24 18:31:07',NULL),(71,55,'2010-10-24 18:31:09',NULL),(71,55,'2010-10-24 18:31:11',NULL),(71,55,'2010-10-24 18:31:13',NULL),(71,55,'2010-10-24 18:31:18',NULL),(71,55,'2010-10-24 18:31:21',NULL),(71,74,'2010-10-24 18:32:05',NULL),(71,74,'2010-10-24 18:33:18',NULL),(71,76,'2010-10-24 18:33:24',NULL),(71,76,'2010-10-24 18:33:31',NULL),(71,5,'2010-10-24 18:33:44',NULL),(71,12,'2010-10-24 18:34:13',NULL),(71,58,'2010-10-24 18:34:16',NULL),(71,58,'2010-10-24 18:37:13',NULL),(71,58,'2010-10-24 18:37:51',NULL),(71,58,'2010-10-24 18:41:12',NULL),(71,58,'2010-10-24 18:41:16',NULL),(71,58,'2010-10-24 18:41:43',NULL),(71,58,'2010-10-24 18:42:49',NULL),(71,58,'2010-10-24 18:43:39',NULL),(71,58,'2010-10-24 18:44:06',NULL),(71,58,'2010-10-24 18:44:41',NULL),(71,58,'2010-10-24 18:44:59',NULL),(71,58,'2010-10-24 18:45:21',NULL),(71,58,'2010-10-24 18:45:52',NULL),(71,58,'2010-10-24 18:46:12',NULL),(71,58,'2010-10-24 18:47:43',NULL),(66,1,'2010-10-25 09:59:29',NULL),(66,74,'2010-10-25 09:59:43',NULL),(73,74,'2010-10-25 10:56:57',NULL),(66,1,'2010-10-25 11:43:56',NULL),(66,1,'2010-10-25 11:44:00',NULL),(66,74,'2010-10-25 11:44:03',NULL),(66,14,'2010-10-25 11:44:06',NULL),(66,18,'2010-10-25 11:44:08',NULL),(66,38,'2010-10-25 11:44:11',NULL),(66,18,'2010-10-25 11:44:13',NULL),(66,27,'2010-10-25 11:44:17',NULL),(66,27,'2010-10-25 11:44:39',NULL),(66,5,'2010-10-25 11:44:45',NULL),(66,45,'2010-10-25 11:44:52',NULL),(66,46,'2010-10-25 11:45:07',NULL),(66,47,'2010-10-25 11:45:15',NULL),(66,45,'2010-10-25 11:47:57',NULL),(66,1,'2010-10-25 11:49:11',NULL),(66,76,'2010-10-25 11:49:13',NULL),(66,76,'2010-10-25 11:49:58',NULL),(0,76,'2010-10-25 11:50:08',NULL),(66,74,'2010-10-25 11:56:13',NULL),(74,1,'2010-10-25 11:57:40',NULL),(74,75,'2010-10-25 11:57:46',NULL),(74,75,'2010-10-25 11:57:49',NULL),(74,5,'2010-10-25 11:57:54',NULL),(74,45,'2010-10-25 11:57:59',NULL),(74,1,'2010-10-25 12:03:48',NULL),(74,5,'2010-10-25 12:15:20',NULL),(74,45,'2010-10-25 12:15:25',NULL),(74,74,'2010-10-25 12:21:01',NULL),(74,76,'2010-10-25 12:21:07',NULL),(66,11,'2010-10-25 12:52:11',NULL),(66,11,'2010-10-25 12:52:13',NULL),(66,14,'2010-10-25 12:52:17',NULL),(66,43,'2010-10-25 12:52:18',NULL),(66,11,'2010-10-25 12:52:22',NULL),(66,11,'2010-10-25 12:52:25',NULL),(74,11,'2010-10-25 12:53:44',NULL),(74,76,'2010-10-25 12:53:47',NULL),(66,62,'2010-10-25 13:00:49',NULL),(66,76,'2010-10-25 13:00:56',NULL),(72,1,'2010-10-25 13:13:04',NULL),(72,1,'2010-10-25 13:16:26',NULL),(72,22,'2010-10-25 13:16:44',NULL),(72,5,'2010-10-25 13:18:13',NULL),(66,1,'2010-10-25 13:20:25',NULL),(66,1,'2010-10-25 13:34:21',NULL),(66,76,'2010-10-25 13:34:24',NULL),(66,76,'2010-10-25 13:40:42',NULL),(66,1,'2010-10-25 13:43:08',NULL),(75,76,'2010-10-25 13:43:54',NULL),(66,76,'2010-10-25 13:44:30',NULL),(66,11,'2010-10-25 13:45:42',NULL),(75,76,'2010-10-25 13:55:01',NULL),(66,76,'2010-10-25 14:59:37',NULL),(66,5,'2010-10-25 14:59:43',NULL),(66,45,'2010-10-25 14:59:46',NULL),(66,46,'2010-10-25 14:59:53',NULL),(66,47,'2010-10-25 15:00:03',NULL),(66,47,'2010-10-25 15:02:51',NULL),(66,47,'2010-10-25 15:09:21',NULL),(66,45,'2010-10-25 15:09:25',NULL),(66,5,'2010-10-25 15:09:29',NULL),(66,45,'2010-10-25 15:11:00',NULL),(66,46,'2010-10-25 15:11:03',NULL),(66,47,'2010-10-25 15:11:06',NULL),(66,45,'2010-10-25 15:11:18',NULL),(66,46,'2010-10-25 15:11:25',NULL),(66,46,'2010-10-25 15:13:15',NULL),(66,46,'2010-10-25 15:15:42',NULL),(66,46,'2010-10-25 15:15:57',NULL),(66,46,'2010-10-25 15:19:31',NULL),(66,46,'2010-10-25 15:21:45',NULL),(66,46,'2010-10-25 15:22:22',NULL),(66,46,'2010-10-25 15:23:25',NULL),(66,46,'2010-10-25 15:23:33',NULL),(66,46,'2010-10-25 15:24:24',NULL),(66,46,'2010-10-25 15:29:31',NULL),(66,46,'2010-10-25 15:32:17',NULL),(66,45,'2010-10-25 15:33:25',NULL),(66,5,'2010-10-25 15:33:29',NULL),(66,5,'2010-10-25 15:33:33',NULL),(66,5,'2010-10-25 15:33:35',NULL),(66,5,'2010-10-25 15:33:37',NULL),(66,12,'2010-10-25 15:33:43',NULL),(66,74,'2010-10-25 15:33:45',NULL),(66,62,'2010-10-25 15:33:47',NULL),(66,62,'2010-10-25 15:33:51',NULL),(66,5,'2010-10-25 15:33:56',NULL),(66,45,'2010-10-25 15:33:59',NULL),(66,46,'2010-10-25 15:34:01',NULL),(72,1,'2010-10-25 15:37:51',NULL),(72,1,'2010-10-25 15:38:52',NULL),(72,1,'2010-10-25 15:39:14',NULL),(72,74,'2010-10-25 15:39:17',NULL),(72,18,'2010-10-25 15:39:17',NULL),(72,38,'2010-10-25 15:39:17',NULL),(72,11,'2010-10-25 15:39:17',NULL),(72,14,'2010-10-25 15:39:18',NULL),(72,71,'2010-10-25 15:39:18',NULL),(72,72,'2010-10-25 15:39:18',NULL),(72,43,'2010-10-25 15:39:18',NULL),(72,34,'2010-10-25 15:39:19',NULL),(72,78,'2010-10-25 15:39:19',NULL),(72,25,'2010-10-25 15:39:19',NULL),(72,79,'2010-10-25 15:39:19',NULL),(72,80,'2010-10-25 15:39:20',NULL),(72,81,'2010-10-25 15:39:20',NULL),(72,85,'2010-10-25 15:39:20',NULL),(72,82,'2010-10-25 15:39:21',NULL),(72,83,'2010-10-25 15:39:21',NULL),(72,84,'2010-10-25 15:39:21',NULL),(72,86,'2010-10-25 15:39:21',NULL),(72,18,'2010-10-25 15:39:53',NULL),(72,18,'2010-10-25 15:40:16',NULL),(66,46,'2010-10-25 15:43:56',NULL),(66,46,'2010-10-25 15:45:58',NULL),(66,46,'2010-10-25 15:48:54',NULL),(66,46,'2010-10-25 15:52:40',NULL),(66,46,'2010-10-25 15:55:58',NULL),(66,12,'2010-10-25 15:56:02',NULL),(66,5,'2010-10-25 15:56:16',NULL),(66,45,'2010-10-25 15:56:18',NULL),(66,46,'2010-10-25 15:56:21',NULL),(66,46,'2010-10-25 15:58:04',NULL),(66,46,'2010-10-25 15:59:57',NULL),(66,46,'2010-10-25 16:00:54',NULL),(66,46,'2010-10-25 16:01:12',NULL),(66,46,'2010-10-25 16:01:46',NULL),(66,46,'2010-10-25 16:02:05',NULL),(66,46,'2010-10-25 16:02:31',NULL),(66,46,'2010-10-25 16:03:09',NULL),(66,46,'2010-10-25 16:05:38',NULL),(66,46,'2010-10-25 16:13:26',NULL),(66,46,'2010-10-25 16:13:58',NULL),(75,76,'2010-10-25 16:14:01',NULL),(66,46,'2010-10-25 16:17:28',NULL),(66,46,'2010-10-25 16:20:40',NULL),(72,1,'2010-10-25 16:27:44',NULL),(72,1,'2010-10-25 16:29:11',NULL),(72,1,'2010-10-25 16:29:25',NULL),(72,18,'2010-10-25 16:29:27',NULL),(72,74,'2010-10-25 16:29:27',NULL),(72,38,'2010-10-25 16:29:27',NULL),(72,11,'2010-10-25 16:29:28',NULL),(72,71,'2010-10-25 16:29:28',NULL),(72,14,'2010-10-25 16:29:28',NULL),(72,72,'2010-10-25 16:29:29',NULL),(72,43,'2010-10-25 16:29:29',NULL),(72,34,'2010-10-25 16:29:29',NULL),(72,78,'2010-10-25 16:29:29',NULL),(72,25,'2010-10-25 16:29:30',NULL),(72,79,'2010-10-25 16:29:30',NULL),(72,80,'2010-10-25 16:29:30',NULL),(72,81,'2010-10-25 16:29:30',NULL),(72,85,'2010-10-25 16:29:30',NULL),(72,82,'2010-10-25 16:29:31',NULL),(72,83,'2010-10-25 16:29:31',NULL),(72,84,'2010-10-25 16:29:31',NULL),(72,86,'2010-10-25 16:29:31',NULL),(72,18,'2010-10-25 16:29:33',NULL),(72,27,'2010-10-25 16:29:40',NULL),(72,27,'2010-10-25 16:30:00',NULL),(72,5,'2010-10-25 16:30:10',NULL),(72,45,'2010-10-25 16:30:17',NULL),(72,46,'2010-10-25 16:30:25',NULL),(72,47,'2010-10-25 16:30:33',NULL),(76,1,'2010-10-25 17:09:22',NULL),(76,74,'2010-10-25 17:10:00',NULL),(76,18,'2010-10-25 17:10:07',NULL),(76,38,'2010-10-25 17:10:09',NULL),(76,11,'2010-10-25 17:10:12',NULL),(76,14,'2010-10-25 17:10:15',NULL),(76,43,'2010-10-25 17:10:20',NULL),(76,34,'2010-10-25 17:10:22',NULL),(76,14,'2010-10-25 17:10:24',NULL),(76,71,'2010-10-25 17:10:26',NULL),(76,14,'2010-10-25 17:10:29',NULL),(76,72,'2010-10-25 17:10:30',NULL),(76,55,'2010-10-25 17:10:39',NULL),(76,54,'2010-10-25 17:10:58',NULL),(76,11,'2010-10-25 17:11:43',NULL),(76,11,'2010-10-25 17:11:58',NULL),(76,11,'2010-10-25 17:12:05',NULL),(76,76,'2010-10-25 17:12:56',NULL),(76,74,'2010-10-25 17:14:22',NULL),(76,62,'2010-10-25 17:14:25',NULL),(76,62,'2010-10-25 17:14:28',NULL),(76,74,'2010-10-25 17:15:39',NULL),(76,54,'2010-10-25 17:15:42',NULL),(76,27,'2010-10-25 17:15:46',NULL),(76,27,'2010-10-25 17:15:54',NULL),(76,5,'2010-10-25 17:15:58',NULL),(76,27,'2010-10-25 17:16:04',NULL),(76,5,'2010-10-25 17:16:15',NULL),(76,10,'2010-10-25 17:17:41',NULL),(76,10,'2010-10-25 17:17:55',NULL),(76,45,'2010-10-25 17:21:39',NULL),(76,46,'2010-10-25 17:22:21',NULL),(76,47,'2010-10-25 17:22:50',NULL),(76,87,'2010-10-25 17:23:18',NULL),(76,47,'2010-10-25 17:23:51',NULL),(76,48,'2010-10-25 17:23:56',NULL),(76,49,'2010-10-25 17:24:08',NULL),(76,54,'2010-10-25 17:25:04',NULL),(76,49,'2010-10-25 17:25:09',NULL),(76,13,'2010-10-25 17:25:12',NULL),(66,46,'2010-10-25 17:51:39',NULL),(66,12,'2010-10-25 17:51:48',NULL),(66,63,'2010-10-25 17:51:54',NULL),(66,64,'2010-10-25 17:51:59',NULL),(66,12,'2010-10-25 17:52:17',NULL),(66,57,'2010-10-25 17:52:21',NULL),(77,10,'2010-10-25 17:52:47',NULL),(77,1,'2010-10-25 17:52:54',NULL),(77,76,'2010-10-25 17:52:58',NULL),(0,76,'2010-10-25 17:53:00',NULL),(77,5,'2010-10-25 17:53:44',NULL),(78,13,'2010-10-25 17:58:26',NULL),(78,12,'2010-10-25 17:58:35',NULL),(78,13,'2010-10-25 17:59:01',NULL),(78,1,'2010-10-25 17:59:21',NULL),(78,1,'2010-10-25 17:59:42',NULL),(78,1,'2010-10-25 17:59:47',NULL),(77,1,'2010-10-25 18:22:59',NULL),(77,75,'2010-10-25 18:23:01',NULL),(77,75,'2010-10-25 18:23:04',NULL),(77,5,'2010-10-25 18:23:08',NULL),(77,10,'2010-10-25 18:23:11',NULL),(77,5,'2010-10-25 18:24:05',NULL),(77,10,'2010-10-25 18:55:58',NULL),(77,45,'2010-10-25 18:56:03',NULL),(77,46,'2010-10-25 18:56:07',NULL),(77,12,'2010-10-25 18:56:24',NULL),(77,63,'2010-10-25 18:56:25',NULL),(77,64,'2010-10-25 18:56:31',NULL),(77,64,'2010-10-25 18:57:57',NULL),(77,1,'2010-10-25 18:58:01',NULL),(77,12,'2010-10-25 18:58:04',NULL),(77,63,'2010-10-25 18:58:06',NULL),(77,64,'2010-10-25 18:58:09',NULL),(77,63,'2010-10-25 18:58:14',NULL),(77,64,'2010-10-25 18:58:20',NULL),(77,63,'2010-10-25 18:58:24',NULL),(77,13,'2010-10-25 18:58:28',NULL),(77,5,'2010-10-25 18:58:31',NULL),(77,45,'2010-10-25 18:58:44',NULL),(77,46,'2010-10-25 18:58:46',NULL),(77,46,'2010-10-25 19:00:07',NULL),(77,45,'2010-10-25 19:00:20',NULL),(77,5,'2010-10-25 19:00:23',NULL),(77,5,'2010-10-25 19:01:27',NULL),(77,45,'2010-10-25 19:01:30',NULL),(77,46,'2010-10-25 19:01:33',NULL),(77,5,'2010-10-25 19:11:58',NULL),(77,45,'2010-10-25 19:12:06',NULL),(77,46,'2010-10-25 19:12:10',NULL),(77,47,'2010-10-25 19:12:15',NULL),(77,5,'2010-10-25 19:12:19',NULL),(77,1,'2010-10-25 19:12:36',NULL),(77,75,'2010-10-25 19:12:38',NULL),(77,62,'2010-10-25 19:12:43',NULL),(77,62,'2010-10-25 19:12:46',NULL),(77,5,'2010-10-25 19:12:50',NULL),(77,45,'2010-10-25 19:12:54',NULL),(77,46,'2010-10-25 19:13:00',NULL),(77,47,'2010-10-25 19:13:10',NULL),(77,12,'2010-10-25 19:17:06',NULL),(77,65,'2010-10-25 19:17:08',NULL),(77,5,'2010-10-25 19:18:11',NULL),(77,45,'2010-10-25 19:18:16',NULL),(77,46,'2010-10-25 19:18:21',NULL),(77,47,'2010-10-25 19:18:26',NULL),(77,46,'2010-10-25 19:19:33',NULL),(77,5,'2010-10-25 19:19:35',NULL),(77,12,'2010-10-25 19:19:37',NULL),(77,65,'2010-10-25 19:19:39',NULL),(77,1,'2010-10-25 19:27:24',NULL),(77,6,'2010-10-25 19:43:47',NULL),(77,6,'2010-10-25 19:46:15',NULL),(77,1,'2010-10-25 19:57:11',NULL),(77,76,'2010-10-25 19:57:15',NULL),(77,1,'2010-10-25 19:57:43',NULL),(77,5,'2010-10-25 19:57:48',NULL),(77,1,'2010-10-26 07:38:59',NULL),(77,22,'2010-10-26 07:39:06',NULL),(77,12,'2010-10-26 07:40:01',NULL),(77,56,'2010-10-26 07:40:04',NULL),(77,12,'2010-10-26 07:40:09',NULL),(77,63,'2010-10-26 07:40:13',NULL),(77,13,'2010-10-26 07:40:26',NULL),(77,56,'2010-10-26 07:40:36',NULL),(77,57,'2010-10-26 07:40:39',NULL),(77,1,'2010-10-26 07:45:47',NULL),(77,12,'2010-10-26 07:45:53',NULL),(77,88,'2010-10-26 07:45:58',NULL),(77,12,'2010-10-26 07:46:12',NULL),(77,5,'2010-10-26 07:46:15',NULL),(77,45,'2010-10-26 07:46:20',NULL),(77,46,'2010-10-26 07:46:23',NULL),(77,47,'2010-10-26 07:46:26',NULL),(77,48,'2010-10-26 07:46:32',NULL),(77,49,'2010-10-26 07:46:38',NULL),(77,13,'2010-10-26 07:46:45',NULL),(77,12,'2010-10-26 07:46:57',NULL),(77,12,'2010-10-26 07:50:21',NULL),(77,88,'2010-10-26 07:50:25',NULL),(77,88,'2010-10-26 07:51:06',NULL),(77,5,'2010-10-26 07:52:58',NULL),(77,74,'2010-10-26 07:53:06',NULL),(77,27,'2010-10-26 07:53:13',NULL),(77,27,'2010-10-26 07:53:17',NULL),(77,5,'2010-10-26 07:53:32',NULL),(77,5,'2010-10-26 07:53:35',NULL),(77,5,'2010-10-26 07:53:37',NULL),(77,1,'2010-10-26 07:58:02',NULL),(77,12,'2010-10-26 07:58:04',NULL),(77,89,'2010-10-26 07:58:12',NULL),(77,5,'2010-10-26 08:00:55',NULL),(77,1,'2010-10-26 08:01:02',NULL),(77,1,'2010-10-26 08:01:09',NULL),(77,1,'2010-10-26 08:03:03',NULL),(79,6,'2010-10-26 08:48:36',NULL),(79,1,'2010-10-26 08:48:43',NULL),(79,6,'2010-10-26 08:50:00',NULL),(79,6,'2010-10-26 08:50:19',NULL),(77,6,'2010-10-26 08:56:45',NULL),(77,6,'2010-10-26 08:56:53',NULL),(77,1,'2010-10-26 08:57:06',NULL),(77,6,'2010-10-26 08:57:11',NULL),(77,6,'2010-10-26 08:57:21',NULL),(79,6,'2010-10-26 08:57:31',NULL),(79,6,'2010-10-26 08:57:38',NULL),(75,76,'2010-10-26 09:33:49',NULL),(80,1,'2010-10-26 09:54:11',NULL),(75,76,'2010-10-26 09:56:12',NULL),(80,76,'2010-10-26 09:56:39',NULL),(75,76,'2010-10-26 10:00:40',NULL),(80,1,'2010-10-26 10:04:54',NULL),(75,76,'2010-10-26 10:04:57',NULL),(80,1,'2010-10-26 10:05:00',NULL),(44,76,'2010-10-26 10:05:17',NULL),(80,1,'2010-10-26 10:06:03',NULL),(80,74,'2010-10-26 10:06:05',NULL),(80,18,'2010-10-26 10:06:07',NULL),(80,38,'2010-10-26 10:06:09',NULL),(80,38,'2010-10-26 10:06:13',NULL),(75,76,'2010-10-26 10:12:40',NULL);
/*!40000 ALTER TABLE `ps_connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_source`
--

DROP TABLE IF EXISTS `ps_connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL auto_increment,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) default NULL,
  `request_uri` varchar(255) default NULL,
  `keywords` varchar(255) default NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_source`
--

LOCK TABLES `ps_connections_source` WRITE;
/*!40000 ALTER TABLE `ps_connections_source` DISABLE KEYS */;
INSERT INTO `ps_connections_source` VALUES (1,11,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?n=1285959942','www.mariannedenis.com/prestashop/','','2010-07-21 21:16:52'),(2,76,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=1684394334','www.mariannedenis.com/prestashop/','','2010-10-25 17:09:22'),(3,76,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=1684394334','www.mariannedenis.com/prestashop/7-bracelets','','2010-10-25 17:11:43'),(4,76,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=1684394334','www.mariannedenis.com/prestashop/bracelets/101-Brancelet-en-scoubidou-1.html','','2010-10-25 17:12:56'),(5,78,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=698597339','www.mariannedenis.com/prestashop/history.php','','2010-10-25 17:58:26'),(6,78,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=698597339','www.mariannedenis.com/prestashop/my-account.php','','2010-10-25 17:58:35'),(7,78,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=698597339','www.mariannedenis.com/prestashop/history.php','','2010-10-25 17:59:01'),(8,78,'http://sn106w.snt106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&fav=True&n=698597339','www.mariannedenis.com/prestashop/','','2010-10-25 17:59:21'),(9,79,'http://mariannedenis.com/blog/','mariannedenis.com/prestashop/blog/wp-content/themes/twentyten/style.css','','2010-10-26 08:50:00'),(10,77,'http://blog.mariannedenis.com/','mariannedenis.com/prestashop/blog/wp-content/themes/twentyten/style.css','','2010-10-26 08:56:45'),(11,77,'http://mariannedenis.com/blog/','mariannedenis.com/prestashop/blog/wp-content/themes/twentyten/style.css','','2010-10-26 08:57:11'),(12,79,'http://mariannedenis.com/blog/','mariannedenis.com/prestashop/blog/wp-content/themes/twentyten/style.css','','2010-10-26 08:57:31');
/*!40000 ALTER TABLE `ps_connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact`
--

DROP TABLE IF EXISTS `ps_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(128) NOT NULL,
  `position` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_contact`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact`
--

LOCK TABLES `ps_contact` WRITE;
/*!40000 ALTER TABLE `ps_contact` DISABLE KEYS */;
INSERT INTO `ps_contact` VALUES (1,'robin.rumeau@gmail.com',0),(2,'robin.rumeau@gmail.com',0);
/*!40000 ALTER TABLE `ps_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_lang`
--

DROP TABLE IF EXISTS `ps_contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  UNIQUE KEY `contact_lang_index` (`id_contact`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_lang`
--

LOCK TABLES `ps_contact_lang` WRITE;
/*!40000 ALTER TABLE `ps_contact_lang` DISABLE KEYS */;
INSERT INTO `ps_contact_lang` VALUES (1,1,'Webmaster','If a technical problem occurs on this website'),(1,2,'Webmaster','Si un problème technique survient sur le site'),(2,1,'Customer service','For any question about a product, an order'),(2,2,'Service client','Pour toute question ou réclamation sur une commande');
/*!40000 ALTER TABLE `ps_contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country`
--

DROP TABLE IF EXISTS `ps_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country` (
  `id_country` int(10) unsigned NOT NULL auto_increment,
  `id_zone` int(10) unsigned NOT NULL,
  `iso_code` varchar(3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `contains_states` tinyint(1) NOT NULL default '0',
  `need_identification_number` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country`
--

LOCK TABLES `ps_country` WRITE;
/*!40000 ALTER TABLE `ps_country` DISABLE KEYS */;
INSERT INTO `ps_country` VALUES (1,1,'DE',0,0,0),(2,1,'AT',0,0,0),(3,1,'BE',0,0,0),(4,2,'CA',0,1,0),(5,3,'CN',0,0,0),(6,1,'ES',0,0,1),(7,1,'FI',0,0,0),(8,12,'FR',1,0,0),(9,1,'GR',0,0,0),(10,1,'IT',0,0,0),(11,3,'JP',0,0,0),(12,1,'LU',0,0,0),(13,1,'NL',0,0,0),(14,1,'PL',0,0,0),(15,1,'PT',0,0,0),(16,1,'CZ',0,0,0),(17,1,'GB',0,0,0),(18,1,'SE',0,0,0),(19,1,'CH',0,0,0),(20,1,'DK',0,0,0),(21,2,'US',0,1,0),(22,3,'HK',0,0,0),(23,1,'NO',0,0,0),(24,5,'AU',0,0,0),(25,3,'SG',0,0,0),(26,1,'IE',0,0,0),(27,5,'NZ',0,0,0),(28,3,'KR',0,0,0),(29,3,'IL',0,0,0),(30,4,'ZA',0,0,0),(31,4,'NG',0,0,0),(32,4,'CI',0,0,0),(33,4,'TG',0,0,0),(34,2,'BO',0,0,0),(35,4,'MU',0,0,0),(36,1,'RO',0,0,0),(37,1,'SK',0,0,0),(38,4,'DZ',0,0,0),(39,2,'AS',0,0,0),(40,1,'AD',0,0,0),(41,4,'AO',0,0,0),(42,2,'AI',0,0,0),(43,2,'AG',0,0,0),(44,2,'AR',0,0,0),(45,3,'AM',0,0,0),(46,2,'AW',0,0,0),(47,3,'AZ',0,0,0),(48,2,'BS',0,0,0),(49,3,'BH',0,0,0),(50,3,'BD',0,0,0),(51,2,'BB',0,0,0),(52,1,'BY',0,0,0),(53,2,'BZ',0,0,0),(54,4,'BJ',0,0,0),(55,2,'BM',0,0,0),(56,3,'BT',0,0,0),(57,4,'BW',0,0,0),(58,2,'BR',0,0,0),(59,3,'BN',0,0,0),(60,4,'BF',0,0,0),(61,3,'MM',0,0,0),(62,4,'BI',0,0,0),(63,3,'KH',0,0,0),(64,4,'CM',0,0,0),(65,4,'CV',0,0,0),(66,4,'CF',0,0,0),(67,4,'TD',0,0,0),(68,2,'CL',0,0,0),(69,2,'CO',0,0,0),(70,4,'KM',0,0,0),(71,4,'CD',0,0,0),(72,4,'CG',0,0,0),(73,2,'CR',0,0,0),(74,1,'HR',0,0,0),(75,2,'CU',0,0,0),(76,1,'CY',0,0,0),(77,4,'DJ',0,0,0),(78,2,'DM',0,0,0),(79,2,'DO',0,0,0),(80,3,'TL',0,0,0),(81,2,'EC',0,0,0),(82,4,'EG',0,0,0),(83,2,'SV',0,0,0),(84,4,'GQ',0,0,0),(85,4,'ER',0,0,0),(86,1,'EE',0,0,0),(87,4,'ET',0,0,0),(88,2,'FK',0,0,0),(89,1,'FO',0,0,0),(90,5,'FJ',0,0,0),(91,4,'GA',0,0,0),(92,4,'GM',0,0,0),(93,3,'GE',0,0,0),(94,4,'GH',0,0,0),(95,2,'GD',0,0,0),(96,1,'GL',0,0,0),(97,1,'GI',0,0,0),(98,2,'GP',0,0,0),(99,2,'GU',0,0,0),(100,2,'GT',0,0,0),(101,1,'GG',0,0,0),(102,4,'GN',0,0,0),(103,4,'GW',0,0,0),(104,2,'GY',0,0,0),(105,2,'HT',0,0,0),(106,5,'HM',0,0,0),(107,1,'VA',0,0,0),(108,2,'HN',0,0,0),(109,1,'IS',0,0,0),(110,3,'IN',0,0,0),(111,3,'ID',0,0,0),(112,3,'IR',0,0,0),(113,3,'IQ',0,0,0),(114,1,'IM',0,0,0),(115,2,'JM',0,0,0),(116,1,'JE',0,0,0),(117,3,'JO',0,0,0),(118,3,'KZ',0,0,0),(119,4,'KE',0,0,0),(120,1,'KI',0,0,0),(121,3,'KP',0,0,0),(122,3,'KW',0,0,0),(123,3,'KG',0,0,0),(124,3,'LA',0,0,0),(125,1,'LV',0,0,0),(126,3,'LB',0,0,0),(127,4,'LS',0,0,0),(128,4,'LR',0,0,0),(129,4,'LY',0,0,0),(130,1,'LI',0,0,0),(131,1,'LT',0,0,0),(132,3,'MO',0,0,0),(133,1,'MK',0,0,0),(134,4,'MG',0,0,0),(135,4,'MW',0,0,0),(136,3,'MY',0,0,0),(137,3,'MV',0,0,0),(138,4,'ML',0,0,0),(139,1,'MT',0,0,0),(140,5,'MH',0,0,0),(141,2,'MQ',0,0,0),(142,4,'MR',0,0,0),(143,1,'HU',0,0,0),(144,4,'YT',0,0,0),(145,2,'MX',0,0,0),(146,5,'FM',0,0,0),(147,1,'MD',0,0,0),(148,1,'MC',0,0,0),(149,3,'MN',0,0,0),(150,1,'ME',0,0,0),(151,2,'MS',0,0,0),(152,4,'MA',0,0,0),(153,4,'MZ',0,0,0),(154,4,'NA',0,0,0),(155,5,'NR',0,0,0),(156,3,'NP',0,0,0),(157,2,'AN',0,0,0),(158,5,'NC',0,0,0),(159,2,'NI',0,0,0),(160,4,'NE',0,0,0),(161,5,'NU',0,0,0),(162,5,'NF',0,0,0),(163,5,'MP',0,0,0),(164,3,'OM',0,0,0),(165,3,'PK',0,0,0),(166,5,'PW',0,0,0),(167,3,'PS',0,0,0),(168,2,'PA',0,0,0),(169,5,'PG',0,0,0),(170,2,'PY',0,0,0),(171,2,'PE',0,0,0),(172,3,'PH',0,0,0),(173,5,'PN',0,0,0),(174,2,'PR',0,0,0),(175,3,'QA',0,0,0),(176,4,'RE',0,0,0),(177,1,'RU',0,0,0),(178,4,'RW',0,0,0),(179,2,'BL',0,0,0),(180,2,'KN',0,0,0),(181,2,'LC',0,0,0),(182,2,'MF',0,0,0),(183,2,'PM',0,0,0),(184,2,'VC',0,0,0),(185,5,'WS',0,0,0),(186,1,'SM',0,0,0),(187,4,'ST',0,0,0),(188,3,'SA',0,0,0),(189,4,'SN',0,0,0),(190,1,'RS',0,0,0),(191,4,'SC',0,0,0),(192,4,'SL',0,0,0),(193,1,'SI',0,0,0),(194,5,'SB',0,0,0),(195,4,'SO',0,0,0),(196,2,'GS',0,0,0),(197,3,'LK',0,0,0),(198,4,'SD',0,0,0),(199,2,'SR',0,0,0),(200,1,'SJ',0,0,0),(201,4,'SZ',0,0,0),(202,3,'SY',0,0,0),(203,3,'TW',0,0,0),(204,3,'TJ',0,0,0),(205,4,'TZ',0,0,0),(206,3,'TH',0,0,0),(207,5,'TK',0,0,0),(208,5,'TO',0,0,0),(209,2,'TT',0,0,0),(210,4,'TN',0,0,0),(211,1,'TR',0,0,0),(212,3,'TM',0,0,0),(213,2,'TC',0,0,0),(214,5,'TV',0,0,0),(215,4,'UG',0,0,0),(216,1,'UA',0,0,0),(217,3,'AE',0,0,0),(218,2,'UY',0,0,0),(219,3,'UZ',0,0,0),(220,5,'VU',0,0,0),(221,2,'VE',0,0,0),(222,3,'VN',0,0,0),(223,2,'VG',0,0,0),(224,2,'VI',0,0,0),(225,5,'WF',0,0,0),(226,4,'EH',0,0,0),(227,3,'YE',0,0,0),(228,4,'ZM',0,0,0),(229,4,'ZW',0,0,0),(230,1,'AL',0,0,0),(231,3,'AF',0,0,0),(232,5,'AQ',0,0,0),(233,1,'BA',0,0,0),(234,5,'BV',0,0,0),(235,5,'IO',0,0,0),(236,1,'BG',0,0,0),(237,2,'KY',0,0,0),(238,3,'CX',0,0,0),(239,3,'CC',0,0,0),(240,5,'CK',0,0,0),(241,2,'GF',0,0,0),(242,5,'PF',0,0,0),(243,5,'TF',0,0,0),(244,1,'AX',0,0,0),(245,13,'FR',1,1,1);
/*!40000 ALTER TABLE `ps_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_lang`
--

DROP TABLE IF EXISTS `ps_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `country_lang_index` (`id_country`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_lang`
--

LOCK TABLES `ps_country_lang` WRITE;
/*!40000 ALTER TABLE `ps_country_lang` DISABLE KEYS */;
INSERT INTO `ps_country_lang` VALUES (1,1,'Germany'),(1,2,'Allemagne'),(2,1,'Austria'),(2,2,'Autriche'),(3,1,'Belgium'),(3,2,'Belgique'),(4,1,'Canada'),(4,2,'Canada'),(5,1,'China'),(5,2,'Chine'),(6,1,'Spain'),(6,2,'Espagne'),(7,1,'Finland'),(7,2,'Finlande'),(8,1,'France'),(8,2,'FRANCE - Ile de France'),(9,1,'Greece'),(9,2,'Grèce'),(10,1,'Italy'),(10,2,'Italie'),(11,1,'Japan'),(11,2,'Japon'),(12,1,'Luxemburg'),(12,2,'Luxembourg'),(13,1,'Netherlands'),(13,2,'Pays-bas'),(14,1,'Poland'),(14,2,'Pologne'),(15,1,'Portugal'),(15,2,'Portugal'),(16,1,'Czech Republic'),(16,2,'République Tchèque'),(17,1,'United Kingdom'),(17,2,'Royaume-Uni'),(18,1,'Sweden'),(18,2,'Suède'),(19,1,'Switzerland'),(19,2,'Suisse'),(20,1,'Denmark'),(20,2,'Danemark'),(21,1,'USA'),(21,2,'USA'),(22,1,'HongKong'),(22,2,'Hong-Kong'),(23,1,'Norway'),(23,2,'Norvège'),(24,1,'Australia'),(24,2,'Australie'),(25,1,'Singapore'),(25,2,'Singapour'),(26,1,'Ireland'),(26,2,'Eire'),(27,1,'New Zealand'),(27,2,'Nouvelle-Zélande'),(28,1,'South Korea'),(28,2,'Corée du Sud'),(29,1,'Israel'),(29,2,'Israël'),(30,1,'South Africa'),(30,2,'Afrique du Sud'),(31,1,'Nigeria'),(31,2,'Nigeria'),(32,1,'Ivory Coast'),(32,2,'Côte d\'Ivoire'),(33,1,'Togo'),(33,2,'Togo'),(34,1,'Bolivia'),(34,2,'Bolivie'),(35,1,'Mauritius'),(35,2,'Ile Maurice'),(143,1,'Hungary'),(143,2,'Hongrie'),(36,1,'Romania'),(36,2,'Roumanie'),(37,1,'Slovakia'),(37,2,'Slovaquie'),(38,1,'Algeria'),(38,2,'Algérie'),(39,1,'American Samoa'),(39,2,'Samoa Américaines'),(40,1,'Andorra'),(40,2,'Andorre'),(41,1,'Angola'),(41,2,'Angola'),(42,1,'Anguilla'),(42,2,'Anguilla'),(43,1,'Antigua and Barbuda'),(43,2,'Antigua et Barbuda'),(44,1,'Argentina'),(44,2,'Argentine'),(45,1,'Armenia'),(45,2,'Arménie'),(46,1,'Aruba'),(46,2,'Aruba'),(47,1,'Azerbaijan'),(47,2,'Azerbaïdjan'),(48,1,'Bahamas'),(48,2,'Bahamas'),(49,1,'Bahrain'),(49,2,'Bahreïn'),(50,1,'Bangladesh'),(50,2,'Bangladesh'),(51,1,'Barbados'),(51,2,'Barbade'),(52,1,'Belarus'),(52,2,'Bélarus'),(53,1,'Belize'),(53,2,'Belize'),(54,1,'Benin'),(54,2,'Bénin'),(55,1,'Bermuda'),(55,2,'Bermudes'),(56,1,'Bhutan'),(56,2,'Bhoutan'),(57,1,'Botswana'),(57,2,'Botswana'),(58,1,'Brazil'),(58,2,'Brésil'),(59,1,'Brunei'),(59,2,'Brunéi Darussalam'),(60,1,'Burkina Faso'),(60,2,'Burkina Faso'),(61,1,'Burma (Myanmar)'),(61,2,'Burma (Myanmar)'),(62,1,'Burundi'),(62,2,'Burundi'),(63,1,'Cambodia'),(63,2,'Cambodge'),(64,1,'Cameroon'),(64,2,'Cameroun'),(65,1,'Cape Verde'),(65,2,'Cap-Vert'),(66,1,'Central African Republic'),(66,2,'Centrafricaine, République'),(67,1,'Chad'),(67,2,'Tchad'),(68,1,'Chile'),(68,2,'Chili'),(69,1,'Colombia'),(69,2,'Colombie'),(70,1,'Comoros'),(70,2,'Comores'),(71,1,'Congo, Dem. Republic'),(71,2,'Congo, Rép. Dém.'),(72,1,'Congo, Republic'),(72,2,'Congo, Rép.'),(73,1,'Costa Rica'),(73,2,'Costa Rica'),(74,1,'Croatia'),(74,2,'Croatie'),(75,1,'Cuba'),(75,2,'Cuba'),(76,1,'Cyprus'),(76,2,'Chypre'),(77,1,'Djibouti'),(77,2,'Djibouti'),(78,1,'Dominica'),(78,2,'Dominica'),(79,1,'Dominican Republic'),(79,2,'République Dominicaine'),(80,1,'East Timor'),(80,2,'Timor oriental'),(81,1,'Ecuador'),(81,2,'Équateur'),(82,1,'Egypt'),(82,2,'Égypte'),(83,1,'El Salvador'),(83,2,'El Salvador'),(84,1,'Equatorial Guinea'),(84,2,'Guinée Équatoriale'),(85,1,'Eritrea'),(85,2,'Érythrée'),(86,1,'Estonia'),(86,2,'Estonie'),(87,1,'Ethiopia'),(87,2,'Éthiopie'),(88,1,'Falkland Islands'),(88,2,'Falkland, Îles'),(89,1,'Faroe Islands'),(89,2,'Féroé, Îles'),(90,1,'Fiji'),(90,2,'Fidji'),(91,1,'Gabon'),(91,2,'Gabon'),(92,1,'Gambia'),(92,2,'Gambie'),(93,1,'Georgia'),(93,2,'Géorgie'),(94,1,'Ghana'),(94,2,'Ghana'),(95,1,'Grenada'),(95,2,'Grenade'),(96,1,'Greenland'),(96,2,'Groenland'),(97,1,'Gibraltar'),(97,2,'Gibraltar'),(98,1,'Guadeloupe'),(98,2,'Guadeloupe'),(99,1,'Guam'),(99,2,'Guam'),(100,1,'Guatemala'),(100,2,'Guatemala'),(101,1,'Guernsey'),(101,2,'Guernesey'),(102,1,'Guinea'),(102,2,'Guinée'),(103,1,'Guinea-Bissau'),(103,2,'Guinée-Bissau'),(104,1,'Guyana'),(104,2,'Guyana'),(105,1,'Haiti'),(105,2,'Haîti'),(106,1,'Heard Island and McDonald Islands'),(106,2,'Heard, Île et Mcdonald, Îles'),(107,1,'Vatican City State'),(107,2,'Saint-Siege (État de la Cité du Vatican)'),(108,1,'Honduras'),(108,2,'Honduras'),(109,1,'Iceland'),(109,2,'Islande'),(110,1,'India'),(110,2,'Indie'),(111,1,'Indonesia'),(111,2,'Indonésie'),(112,1,'Iran'),(112,2,'Iran'),(113,1,'Iraq'),(113,2,'Iraq'),(114,1,'Isle of Man'),(114,2,'Île de Man'),(115,1,'Jamaica'),(115,2,'Jamaique'),(116,1,'Jersey'),(116,2,'Jersey'),(117,1,'Jordan'),(117,2,'Jordanie'),(118,1,'Kazakhstan'),(118,2,'Kazakhstan'),(119,1,'Kenya'),(119,2,'Kenya'),(120,1,'Kiribati'),(120,2,'Kiribati'),(121,1,'Korea, Dem. Republic of'),(121,2,'Corée, Rép. Populaire Dém. de'),(122,1,'Kuwait'),(122,2,'Koweït'),(123,1,'Kyrgyzstan'),(123,2,'Kirghizistan'),(124,1,'Laos'),(124,2,'Laos'),(125,1,'Latvia'),(125,2,'Lettonie'),(126,1,'Lebanon'),(126,2,'Liban'),(127,1,'Lesotho'),(127,2,'Lesotho'),(128,1,'Liberia'),(128,2,'Libéria'),(129,1,'Libya'),(129,2,'Libyenne, Jamahiriya Arabe'),(130,1,'Liechtenstein'),(130,2,'Liechtenstein'),(131,1,'Lithuania'),(131,2,'Lituanie'),(132,1,'Macau'),(132,2,'Macao'),(133,1,'Macedonia'),(133,2,'Macédoine'),(134,1,'Madagascar'),(134,2,'Madagascar'),(135,1,'Malawi'),(135,2,'Malawi'),(136,1,'Malaysia'),(136,2,'Malaisie'),(137,1,'Maldives'),(137,2,'Maldives'),(138,1,'Mali'),(138,2,'Mali'),(139,1,'Malta'),(139,2,'Malte'),(140,1,'Marshall Islands'),(140,2,'Marshall, Îles'),(141,1,'Martinique'),(141,2,'Martinique'),(142,1,'Mauritania'),(142,2,'Mauritanie'),(144,1,'Mayotte'),(144,2,'Mayotte'),(145,1,'Mexico'),(145,2,'Mexique'),(146,1,'Micronesia'),(146,2,'Micronésie'),(147,1,'Moldova'),(147,2,'Moldova'),(148,1,'Monaco'),(148,2,'Monaco'),(149,1,'Mongolia'),(149,2,'Mongolie'),(150,1,'Montenegro'),(150,2,'Monténégro'),(151,1,'Montserrat'),(151,2,'Montserrat'),(152,1,'Morocco'),(152,2,'Maroc'),(153,1,'Mozambique'),(153,2,'Mozambique'),(154,1,'Namibia'),(154,2,'Namibie'),(155,1,'Nauru'),(155,2,'Nauru'),(156,1,'Nepal'),(156,2,'Népal'),(157,1,'Netherlands Antilles'),(157,2,'Antilles Néerlandaises'),(158,1,'New Caledonia'),(158,2,'Nouvelle-Calédonie'),(159,1,'Nicaragua'),(159,2,'Nicaragua'),(160,1,'Niger'),(160,2,'Niger'),(161,1,'Niue'),(161,2,'Niué'),(162,1,'Norfolk Island'),(162,2,'Norfolk, Île'),(163,1,'Northern Mariana Islands'),(163,2,'Mariannes du Nord, Îles'),(164,1,'Oman'),(164,2,'Oman'),(165,1,'Pakistan'),(165,2,'Pakistan'),(166,1,'Palau'),(166,2,'Palaos'),(167,1,'Palestinian Territories'),(167,2,'Palestinien Occupé, Territoire'),(168,1,'Panama'),(168,2,'Panama'),(169,1,'Papua New Guinea'),(169,2,'Papouasie-Nouvelle-Guinée'),(170,1,'Paraguay'),(170,2,'Paraguay'),(171,1,'Peru'),(171,2,'Pérou'),(172,1,'Philippines'),(172,2,'Philippines'),(173,1,'Pitcairn'),(173,2,'Pitcairn'),(174,1,'Puerto Rico'),(174,2,'Porto Rico'),(175,1,'Qatar'),(175,2,'Qatar'),(176,1,'Réunion'),(176,2,'Réunion'),(177,1,'Russian Federation'),(177,2,'Russie, Fédération de'),(178,1,'Rwanda'),(178,2,'Rwanda'),(179,1,'Saint Barthélemy'),(179,2,'Saint-Barthélemy'),(180,1,'Saint Kitts and Nevis'),(180,2,'Saint-Kitts-et-Nevis'),(181,1,'Saint Lucia'),(181,2,'Sainte-Lucie'),(182,1,'Saint Martin'),(182,2,'Saint-Martin'),(183,1,'Saint Pierre and Miquelon'),(183,2,'Saint-Pierre-et-Miquelon'),(184,1,'Saint Vincent and the Grenadines'),(184,2,'Saint-Vincent-et-Les Grenadines'),(185,1,'Samoa'),(185,2,'Samoa'),(186,1,'San Marino'),(186,2,'Saint-Marin'),(187,1,'São Tomé and Príncipe'),(187,2,'Sao Tomé-et-Principe'),(188,1,'Saudi Arabia'),(188,2,'Arabie Saoudite'),(189,1,'Senegal'),(189,2,'Sénégal'),(190,1,'Serbia'),(190,2,'Serbie'),(191,1,'Seychelles'),(191,2,'Seychelles'),(192,1,'Sierra Leone'),(192,2,'Sierra Leone'),(193,1,'Slovenia'),(193,2,'Slovénie'),(194,1,'Solomon Islands'),(194,2,'Salomon, Îles'),(195,1,'Somalia'),(195,2,'Somalie'),(196,1,'South Georgia and the South Sandwich Islands'),(196,2,'Géorgie du Sud et les Îles Sandwich du Sud'),(197,1,'Sri Lanka'),(197,2,'Sri Lanka'),(198,1,'Sudan'),(198,2,'Soudan'),(199,1,'Suriname'),(199,2,'Suriname'),(200,1,'Svalbard and Jan Mayen'),(200,2,'Svalbard et Île Jan Mayen'),(201,1,'Swaziland'),(201,2,'Swaziland'),(202,1,'Syria'),(202,2,'Syrienne'),(203,1,'Taiwan'),(203,2,'Taïwan'),(204,1,'Tajikistan'),(204,2,'Tadjikistan'),(205,1,'Tanzania'),(205,2,'Tanzanie'),(206,1,'Thailand'),(206,2,'Thaïlande'),(207,1,'Tokelau'),(207,2,'Tokelau'),(208,1,'Tonga'),(208,2,'Tonga'),(209,1,'Trinidad and Tobago'),(209,2,'Trinité-et-Tobago'),(210,1,'Tunisia'),(210,2,'Tunisie'),(211,1,'Turkey'),(211,2,'Turquie'),(212,1,'Turkmenistan'),(212,2,'Turkménistan'),(213,1,'Turks and Caicos Islands'),(213,2,'Turks et Caiques, Îles'),(214,1,'Tuvalu'),(214,2,'Tuvalu'),(215,1,'Uganda'),(215,2,'Ouganda'),(216,1,'Ukraine'),(216,2,'Ukraine'),(217,1,'United Arab Emirates'),(217,2,'Émirats Arabes Unis'),(218,1,'Uruguay'),(218,2,'Uruguay'),(219,1,'Uzbekistan'),(219,2,'Ouzbékistan'),(220,1,'Vanuatu'),(220,2,'Vanuatu'),(221,1,'Venezuela'),(221,2,'Venezuela'),(222,1,'Vietnam'),(222,2,'Vietnam'),(223,1,'Virgin Islands (British)'),(223,2,'Îles Vierges Britanniques'),(224,1,'Virgin Islands (U.S.)'),(224,2,'Îles Vierges des États-Unis'),(225,1,'Wallis and Futuna'),(225,2,'Wallis et Futuna'),(226,1,'Western Sahara'),(226,2,'Sahara Occidental'),(227,1,'Yemen'),(227,2,'Yémen'),(228,1,'Zambia'),(228,2,'Zambie'),(229,1,'Zimbabwe'),(229,2,'Zimbabwe'),(230,1,'Albania'),(230,2,'Albanie'),(231,1,'Afghanistan'),(231,2,'Afghanistan'),(232,1,'Antarctica'),(232,2,'Antarctique'),(233,1,'Bosnia and Herzegovina'),(233,2,'Bosnie-Herzégovine'),(234,1,'Bouvet Island'),(234,2,'Bouvet, Île'),(235,1,'British Indian Ocean Territory'),(235,2,'Océan Indien, Territoire Britannique de L\''),(236,1,'Bulgaria'),(236,2,'Bulgarie'),(237,1,'Cayman Islands'),(237,2,'Caïmans, Îles'),(238,1,'Christmas Island'),(238,2,'Christmas, Île'),(239,1,'Cocos (Keeling) Islands'),(239,2,'Cocos (Keeling), Îles'),(240,1,'Cook Islands'),(240,2,'Cook, Îles'),(241,1,'French Guiana'),(241,2,'Guyane Française'),(242,1,'French Polynesia'),(242,2,'Polynésie Française'),(243,1,'French Southern Territories'),(243,2,'Terres Australes Françaises'),(244,1,'Åland Islands'),(244,2,'Åland, Îles'),(245,2,'FRANCE - Province');
/*!40000 ALTER TABLE `ps_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency`
--

DROP TABLE IF EXISTS `ps_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL default '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL default '0',
  `format` tinyint(1) unsigned NOT NULL default '0',
  `decimals` tinyint(1) unsigned NOT NULL default '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_currency`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency`
--

LOCK TABLES `ps_currency` WRITE;
/*!40000 ALTER TABLE `ps_currency` DISABLE KEYS */;
INSERT INTO `ps_currency` VALUES (1,'Euro','EUR','€',1,2,1,'1.000000',0),(2,'Dollar','USD','$',0,1,1,'1.470000',1),(3,'Pound','GBP','£',0,1,1,'0.800000',1);
/*!40000 ALTER TABLE `ps_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer`
--

DROP TABLE IF EXISTS `ps_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL auto_increment,
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL default '1',
  `secure_key` varchar(32) NOT NULL default '-1',
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `birthday` date default NULL,
  `lastname` varchar(32) NOT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL default '0',
  `ip_registration_newsletter` varchar(15) default NULL,
  `newsletter_date_add` datetime default NULL,
  `optin` tinyint(1) unsigned NOT NULL default '0',
  `firstname` varchar(32) NOT NULL,
  `dni` varchar(16) default NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_customer`),
  UNIQUE KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer`
--

LOCK TABLES `ps_customer` WRITE;
/*!40000 ALTER TABLE `ps_customer` DISABLE KEYS */;
INSERT INTO `ps_customer` VALUES (1,1,1,'47ce86627c1f3c792a80773c5d2deaf8','pub@prestashop.com','ad807bdf0426766c05c64041124d30ce','2010-07-19 17:03:24','1970-01-15','DOE',1,NULL,NULL,1,'John',NULL,1,0,'2010-07-19 19:03:24','2010-07-19 19:03:24'),(2,1,1,'90611d08ba9301832a36a697f2c59070','robin.rumeau@gmail.com','e83867668e15593c2c37c8a73f487e46','2010-07-21 04:03:51',NULL,'Rumeau',0,NULL,NULL,0,'Robin',NULL,1,0,'2010-07-21 12:03:51','2010-07-21 12:03:51'),(3,1,1,'cb2f03fa412dd24f059f4ee05863bd60','nhood75@hotmail.com','217d51f0edcbe3bcc888ca04709f5fac','2010-07-21 13:54:55','1999-02-01','zer',0,NULL,NULL,0,'zer',NULL,1,0,'2010-07-21 21:54:55','2010-07-21 21:54:55'),(4,2,1,'f0e2c83b8a4bc8ef48da6d492bee6269','sophie@studio-http.com','7c7d30048be860a5d89bedab8ded842c','2010-10-18 11:03:02',NULL,'LAFON',0,NULL,NULL,0,'Sophie',NULL,1,0,'2010-10-18 19:03:02','2010-10-18 19:03:02'),(5,2,1,'164f95d8c00eecb3c6d099a6ef327f1d','marianne896@hotmail.com','f04d4805ad3c71472147e34f66d86c45','2010-10-25 09:21:38','1976-10-26','denis',1,'81.65.194.235','2010-10-25 17:21:38',1,'marianne',NULL,1,0,'2010-10-25 17:21:38','2010-10-25 17:21:38');
/*!40000 ALTER TABLE `ps_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_group`
--

DROP TABLE IF EXISTS `ps_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_group`
--

LOCK TABLES `ps_customer_group` WRITE;
/*!40000 ALTER TABLE `ps_customer_group` DISABLE KEYS */;
INSERT INTO `ps_customer_group` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization`
--

DROP TABLE IF EXISTS `ps_customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL auto_increment,
  `id_product_attribute` int(10) unsigned NOT NULL default '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL default '0',
  `quantity_returned` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_customization`,`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization`
--

LOCK TABLES `ps_customization` WRITE;
/*!40000 ALTER TABLE `ps_customization` DISABLE KEYS */;
INSERT INTO `ps_customization` VALUES (1,0,2,35,1,0,0),(3,0,4,35,2,0,0);
/*!40000 ALTER TABLE `ps_customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field`
--

DROP TABLE IF EXISTS `ps_customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field`
--

LOCK TABLES `ps_customization_field` WRITE;
/*!40000 ALTER TABLE `ps_customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field_lang`
--

DROP TABLE IF EXISTS `ps_customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_customization_field`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field_lang`
--

LOCK TABLES `ps_customization_field_lang` WRITE;
/*!40000 ALTER TABLE `ps_customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customized_data`
--

DROP TABLE IF EXISTS `ps_customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_customization`,`type`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customized_data`
--

LOCK TABLES `ps_customized_data` WRITE;
/*!40000 ALTER TABLE `ps_customized_data` DISABLE KEYS */;
INSERT INTO `ps_customized_data` VALUES (1,1,1,'robin'),(1,1,2,'marianne'),(2,1,1,'mot1'),(2,1,2,'mot2'),(3,1,1,'txt'),(3,1,2,'txt');
/*!40000 ALTER TABLE `ps_customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_date_range`
--

DROP TABLE IF EXISTS `ps_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL auto_increment,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY  (`id_date_range`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_date_range`
--

LOCK TABLES `ps_date_range` WRITE;
/*!40000 ALTER TABLE `ps_date_range` DISABLE KEYS */;
INSERT INTO `ps_date_range` VALUES (1,'2010-07-19 00:00:00','2010-07-19 23:59:59'),(2,'2010-07-20 00:00:00','2010-07-20 23:59:59'),(3,'2010-07-21 00:00:00','2010-07-21 23:59:59'),(4,'2010-07-22 00:00:00','2010-07-22 23:59:59'),(5,'2010-07-23 00:00:00','2010-07-23 23:59:59'),(6,'2010-07-26 00:00:00','2010-07-26 23:59:59'),(7,'2010-08-15 00:00:00','2010-08-15 23:59:59'),(8,'2010-08-18 00:00:00','2010-08-18 23:59:59'),(9,'2010-08-24 00:00:00','2010-08-24 23:59:59'),(10,'2010-08-28 00:00:00','2010-08-28 23:59:59'),(11,'2010-08-31 00:00:00','2010-08-31 23:59:59'),(12,'2010-09-01 00:00:00','2010-09-01 23:59:59'),(13,'2010-09-02 00:00:00','2010-09-02 23:59:59'),(14,'2010-09-08 00:00:00','2010-09-08 23:59:59'),(15,'2010-09-13 00:00:00','2010-09-13 23:59:59'),(16,'2010-09-20 00:00:00','2010-09-20 23:59:59'),(17,'2010-10-08 00:00:00','2010-10-08 23:59:59'),(18,'2010-10-11 00:00:00','2010-10-11 23:59:59'),(19,'2010-10-13 00:00:00','2010-10-13 23:59:59'),(20,'2010-10-14 00:00:00','2010-10-14 23:59:59'),(21,'2010-10-15 00:00:00','2010-10-15 23:59:59'),(22,'2010-10-17 00:00:00','2010-10-17 23:59:59'),(23,'2010-10-18 00:00:00','2010-10-18 23:59:59'),(24,'2010-10-19 00:00:00','2010-10-19 23:59:59'),(25,'2010-10-20 00:00:00','2010-10-20 23:59:59'),(26,'2010-10-21 00:00:00','2010-10-21 23:59:59'),(27,'2010-10-22 00:00:00','2010-10-22 23:59:59'),(28,'2010-10-23 00:00:00','2010-10-23 23:59:59'),(29,'2010-10-24 00:00:00','2010-10-24 23:59:59'),(30,'2010-10-25 00:00:00','2010-10-25 23:59:59'),(31,'2010-10-26 00:00:00','2010-10-26 23:59:59');
/*!40000 ALTER TABLE `ps_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_delivery`
--

DROP TABLE IF EXISTS `ps_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL auto_increment,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned default NULL,
  `id_range_weight` int(10) unsigned default NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY  (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_delivery`
--

LOCK TABLES `ps_delivery` WRITE;
/*!40000 ALTER TABLE `ps_delivery` DISABLE KEYS */;
INSERT INTO `ps_delivery` VALUES (1,2,NULL,1,1,'5.00'),(2,2,NULL,1,2,'5.00'),(4,2,1,NULL,1,'5.00'),(5,2,1,NULL,2,'5.00'),(6,3,2,NULL,1,'5.00'),(7,3,2,NULL,2,'5.00'),(11,6,NULL,3,1,'5.00'),(10,3,NULL,2,1,'5.00'),(17,10,NULL,19,6,'6.09'),(16,10,NULL,18,6,'5.45'),(15,10,NULL,17,6,'4.80'),(18,10,NULL,17,7,'5.00'),(19,10,NULL,18,7,'5.65'),(20,10,NULL,19,7,'6.29'),(42,11,NULL,23,7,'6.69'),(41,11,NULL,22,7,'6.29'),(40,11,NULL,21,7,'5.65'),(39,11,NULL,20,7,'5.00'),(38,11,NULL,23,6,'6.49'),(37,11,NULL,22,6,'6.09'),(36,11,NULL,21,6,'5.45'),(35,11,NULL,20,6,'4.80'),(43,12,NULL,24,7,'5.00'),(44,12,NULL,24,6,'4.80'),(45,12,NULL,25,7,'5.65'),(46,12,NULL,25,6,'5.45'),(47,12,NULL,26,7,'6.29'),(48,12,NULL,26,6,'6.09'),(49,12,NULL,27,7,'6.69'),(50,12,NULL,27,6,'6.49'),(51,13,NULL,28,7,'5.00'),(52,13,NULL,28,6,'4.80'),(53,13,NULL,29,7,'5.65'),(54,13,NULL,29,6,'5.45'),(55,13,NULL,30,7,'6.29'),(56,13,NULL,30,6,'6.09'),(57,13,NULL,31,7,'6.69'),(58,13,NULL,31,6,'6.49'),(59,14,NULL,32,7,'5.00'),(60,14,NULL,32,6,'4.80'),(61,14,NULL,33,7,'5.65'),(62,14,NULL,33,6,'5.45'),(63,14,NULL,34,7,'6.29'),(64,14,NULL,34,6,'6.09'),(65,14,NULL,35,7,'6.69'),(66,14,NULL,35,6,'6.49'),(67,15,NULL,36,7,'5.00'),(68,15,NULL,36,6,'4.80'),(69,15,NULL,37,7,'5.65'),(70,15,NULL,37,6,'5.45'),(71,15,NULL,38,7,'6.29'),(72,15,NULL,38,6,'6.09'),(73,15,NULL,39,7,'6.69'),(74,15,NULL,39,6,'6.49'),(86,16,NULL,43,1,'0.00'),(90,16,NULL,43,8,'6.49'),(85,16,NULL,42,1,'0.00'),(89,16,NULL,42,8,'6.09'),(84,16,NULL,41,1,'0.00'),(88,16,NULL,41,8,'5.45'),(83,16,NULL,40,1,'0.00'),(87,16,NULL,40,8,'4.80'),(91,16,NULL,40,9,'5.00'),(92,16,NULL,41,9,'5.65'),(93,16,NULL,42,9,'6.29'),(94,16,NULL,43,9,'6.69'),(95,17,NULL,44,1,'0.00'),(96,17,NULL,44,8,'4.80'),(97,17,NULL,44,9,'5.00'),(98,17,NULL,45,1,'0.00'),(99,17,NULL,45,8,'5.45'),(100,17,NULL,45,9,'5.65'),(101,17,NULL,46,1,'0.00'),(102,17,NULL,46,8,'6.09'),(103,17,NULL,46,9,'6.29'),(104,17,NULL,47,1,'0.00'),(105,17,NULL,47,8,'6.49'),(106,17,NULL,47,9,'6.69'),(107,18,NULL,48,1,'0.00'),(108,18,NULL,48,8,'4.80'),(109,18,NULL,48,9,'5.00'),(110,18,NULL,49,1,'0.00'),(111,18,NULL,49,8,'5.45'),(112,18,NULL,49,9,'5.65'),(113,18,NULL,50,1,'0.00'),(114,18,NULL,50,8,'6.09'),(115,18,NULL,50,9,'6.29'),(116,18,NULL,51,1,'0.00'),(117,18,NULL,51,8,'6.49'),(118,18,NULL,51,9,'6.69'),(119,19,NULL,52,1,'0.00'),(120,19,NULL,52,8,'4.80'),(121,19,NULL,52,9,'5.00'),(122,19,NULL,53,1,'0.00'),(123,19,NULL,53,8,'5.45'),(124,19,NULL,53,9,'5.65'),(125,19,NULL,54,1,'0.00'),(126,19,NULL,54,8,'6.09'),(127,19,NULL,54,9,'6.29'),(128,19,NULL,55,1,'0.00'),(129,19,NULL,55,8,'6.49'),(130,19,NULL,55,9,'6.69'),(170,21,NULL,63,12,'6.49'),(154,20,NULL,59,12,'6.49'),(158,20,NULL,59,13,'6.69'),(174,21,NULL,63,13,'6.69'),(153,20,NULL,58,12,'6.09'),(157,20,NULL,58,13,'6.29'),(169,21,NULL,62,12,'6.09'),(152,20,NULL,57,12,'5.45'),(156,20,NULL,57,13,'5.65'),(173,21,NULL,62,13,'6.29'),(151,20,NULL,56,12,'4.80'),(155,20,NULL,56,13,'5.00'),(172,21,NULL,61,13,'5.65'),(168,21,NULL,61,12,'5.45'),(171,21,NULL,60,13,'5.00'),(167,21,NULL,60,12,'4.80'),(175,22,NULL,64,13,'5.00'),(176,22,NULL,64,12,'4.80'),(177,22,NULL,65,13,'5.65'),(178,22,NULL,65,12,'5.45'),(179,22,NULL,66,12,'6.09'),(180,22,NULL,66,13,'6.29'),(181,22,NULL,67,12,'6.49'),(182,22,NULL,67,13,'6.69'),(183,23,NULL,68,13,'5.00'),(184,23,NULL,68,12,'4.80'),(185,23,NULL,69,13,'5.65'),(186,23,NULL,69,12,'5.45'),(187,23,NULL,70,12,'6.09'),(188,23,NULL,70,13,'6.29'),(189,23,NULL,71,12,'6.49'),(190,23,NULL,71,13,'6.69');
/*!40000 ALTER TABLE `ps_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount`
--

DROP TABLE IF EXISTS `ps_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount` (
  `id_discount` int(10) unsigned NOT NULL auto_increment,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL default '0',
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL default '0.00',
  `quantity` int(10) unsigned NOT NULL default '0',
  `quantity_per_user` int(10) unsigned NOT NULL default '1',
  `cumulable` tinyint(1) unsigned NOT NULL default '0',
  `cumulable_reduction` tinyint(1) unsigned NOT NULL default '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `minimal` decimal(17,2) default NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_discount`),
  KEY `discount_name` (`name`),
  KEY `discount_customer` (`id_customer`),
  KEY `id_discount_type` (`id_discount_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount`
--

LOCK TABLES `ps_discount` WRITE;
/*!40000 ALTER TABLE `ps_discount` DISABLE KEYS */;
INSERT INTO `ps_discount` VALUES (1,3,2,0,'Vive Noël','0.00',150,1,0,0,'2010-10-25 19:09:42','2011-10-25 19:09:42','10.00',1),(2,2,2,1,'FID9592','0.80',1,1,1,1,'2010-10-26 07:51:06','2011-10-26 07:51:06','0.00',1);
/*!40000 ALTER TABLE `ps_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_category`
--

DROP TABLE IF EXISTS `ps_discount_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_category` (
  `id_category` int(11) unsigned NOT NULL,
  `id_discount` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id_category`,`id_discount`),
  KEY `discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_category`
--

LOCK TABLES `ps_discount_category` WRITE;
/*!40000 ALTER TABLE `ps_discount_category` DISABLE KEYS */;
INSERT INTO `ps_discount_category` VALUES (1,1),(1,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2),(9,1),(9,2),(10,1),(10,2),(12,1),(12,2),(15,1),(15,2),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(39,2),(40,2),(41,2),(42,2);
/*!40000 ALTER TABLE `ps_discount_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_lang`
--

DROP TABLE IF EXISTS `ps_discount_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_lang` (
  `id_discount` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY  (`id_discount`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_lang`
--

LOCK TABLES `ps_discount_lang` WRITE;
/*!40000 ALTER TABLE `ps_discount_lang` DISABLE KEYS */;
INSERT INTO `ps_discount_lang` VALUES (1,2,'Parce que c\'est Noël, Marianne Denis vous offre les frais de port !'),(2,2,'Loyalty voucher');
/*!40000 ALTER TABLE `ps_discount_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_quantity`
--

DROP TABLE IF EXISTS `ps_discount_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_quantity` (
  `id_discount_quantity` int(10) unsigned NOT NULL auto_increment,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned default NULL,
  `quantity` int(10) unsigned NOT NULL,
  `value` decimal(17,2) unsigned NOT NULL,
  PRIMARY KEY  (`id_discount_quantity`),
  KEY `id_discount_type` (`id_discount_type`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_quantity`
--

LOCK TABLES `ps_discount_quantity` WRITE;
/*!40000 ALTER TABLE `ps_discount_quantity` DISABLE KEYS */;
INSERT INTO `ps_discount_quantity` VALUES (1,1,101,0,5,'10.00');
/*!40000 ALTER TABLE `ps_discount_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_type`
--

DROP TABLE IF EXISTS `ps_discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_type` (
  `id_discount_type` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id_discount_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_type`
--

LOCK TABLES `ps_discount_type` WRITE;
/*!40000 ALTER TABLE `ps_discount_type` DISABLE KEYS */;
INSERT INTO `ps_discount_type` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `ps_discount_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_type_lang`
--

DROP TABLE IF EXISTS `ps_discount_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_type_lang` (
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`id_discount_type`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_type_lang`
--

LOCK TABLES `ps_discount_type_lang` WRITE;
/*!40000 ALTER TABLE `ps_discount_type_lang` DISABLE KEYS */;
INSERT INTO `ps_discount_type_lang` VALUES (1,1,'Discount on order (%)'),(2,1,'Discount on order (amount)'),(3,1,'Free shipping'),(1,2,'Réduction sur la commande (%)'),(2,2,'Réduction sur la commande (montant)'),(3,2,'Frais de port gratuits');
/*!40000 ALTER TABLE `ps_discount_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee`
--

DROP TABLE IF EXISTS `ps_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL auto_increment,
  `id_profile` int(10) unsigned NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `stats_date_from` date default NULL,
  `stats_date_to` date default NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee`
--

LOCK TABLES `ps_employee` WRITE;
/*!40000 ALTER TABLE `ps_employee` DISABLE KEYS */;
INSERT INTO `ps_employee` VALUES (1,1,'DENIS','Marianne','marianne896@hotmail.com','06fd21716816d88306f1ff946c0b6f67','2010-07-18 23:05:08','2010-01-01','2010-12-31',1),(2,1,'Rumeau','Robin','robin.rumeau@gmail.com','e83867668e15593c2c37c8a73f487e46','2010-07-20 09:36:39','2010-01-01','2010-12-31',1),(3,1,'Lafon','Sophie','sophie@studio-http.com','7c7d30048be860a5d89bedab8ded842c','2010-07-21 05:41:59','0000-00-00','0000-00-00',1);
/*!40000 ALTER TABLE `ps_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature`
--

DROP TABLE IF EXISTS `ps_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id_feature`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature`
--

LOCK TABLES `ps_feature` WRITE;
/*!40000 ALTER TABLE `ps_feature` DISABLE KEYS */;
INSERT INTO `ps_feature` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `ps_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_lang`
--

DROP TABLE IF EXISTS `ps_feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) default NULL,
  PRIMARY KEY  (`id_feature`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_lang`
--

LOCK TABLES `ps_feature_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_lang` VALUES (1,1,'Height'),(1,2,'Hauteur'),(2,1,'Width'),(2,2,'Largeur'),(3,1,'Depth'),(3,2,'Profondeur'),(4,1,'Weight'),(4,2,'Poids');
/*!40000 ALTER TABLE `ps_feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_product`
--

DROP TABLE IF EXISTS `ps_feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_product`
--

LOCK TABLES `ps_feature_product` WRITE;
/*!40000 ALTER TABLE `ps_feature_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value`
--

DROP TABLE IF EXISTS `ps_feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL auto_increment,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned default NULL,
  PRIMARY KEY  (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value`
--

LOCK TABLES `ps_feature_value` WRITE;
/*!40000 ALTER TABLE `ps_feature_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value_lang`
--

DROP TABLE IF EXISTS `ps_feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id_feature_value`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value_lang`
--

LOCK TABLES `ps_feature_value_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_value_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group`
--

DROP TABLE IF EXISTS `ps_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group` (
  `id_group` int(10) unsigned NOT NULL auto_increment,
  `reduction` decimal(17,2) NOT NULL default '0.00',
  `price_display_method` tinyint(4) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group`
--

LOCK TABLES `ps_group` WRITE;
/*!40000 ALTER TABLE `ps_group` DISABLE KEYS */;
INSERT INTO `ps_group` VALUES (1,'0.00',0,'2010-07-19 19:03:24','2010-07-19 19:03:24');
/*!40000 ALTER TABLE `ps_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_lang`
--

DROP TABLE IF EXISTS `ps_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `attribute_lang_index` (`id_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_lang`
--

LOCK TABLES `ps_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_group_lang` DISABLE KEYS */;
INSERT INTO `ps_group_lang` VALUES (1,1,'Default'),(1,2,'Défaut');
/*!40000 ALTER TABLE `ps_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_guest`
--

DROP TABLE IF EXISTS `ps_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL auto_increment,
  `id_operating_system` int(10) unsigned default NULL,
  `id_web_browser` int(10) unsigned default NULL,
  `id_customer` int(10) unsigned default NULL,
  `javascript` tinyint(1) default '0',
  `screen_resolution_x` smallint(5) unsigned default NULL,
  `screen_resolution_y` smallint(5) unsigned default NULL,
  `screen_color` tinyint(3) unsigned default NULL,
  `sun_java` tinyint(1) default NULL,
  `adobe_flash` tinyint(1) default NULL,
  `adobe_director` tinyint(1) default NULL,
  `apple_quicktime` tinyint(1) default NULL,
  `real_player` tinyint(1) default NULL,
  `windows_media` tinyint(1) default NULL,
  `accept_language` varchar(8) default NULL,
  PRIMARY KEY  (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_guest`
--

LOCK TABLES `ps_guest` WRITE;
/*!40000 ALTER TABLE `ps_guest` DISABLE KEYS */;
INSERT INTO `ps_guest` VALUES (1,1,3,1,1,1680,1050,32,1,1,0,1,1,0,'en-us'),(2,3,8,2,0,0,0,0,0,0,0,0,0,0,'fr'),(3,3,3,0,1,1920,1080,24,1,1,0,1,0,0,'fr'),(4,3,1,0,0,0,0,0,0,0,0,0,0,0,'fr-fr'),(13,3,3,0,0,0,0,0,0,0,0,0,0,0,'fr'),(5,2,8,0,1,1600,900,32,1,1,0,1,0,1,'fr'),(6,3,1,3,1,1280,800,24,1,1,0,1,0,0,'fr-fr'),(7,3,1,0,0,0,0,0,0,0,0,0,0,0,'fr-fr'),(8,3,1,0,1,320,480,32,0,0,0,0,0,0,'fr-fr'),(19,3,3,0,0,0,0,0,0,0,0,0,0,0,'fr'),(10,2,8,4,0,0,0,0,0,0,0,0,0,0,'fr'),(17,3,3,0,0,0,0,0,0,0,0,0,0,0,'fr'),(20,3,1,5,0,0,0,0,0,0,0,0,0,0,'fr-fr');
/*!40000 ALTER TABLE `ps_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook`
--

DROP TABLE IF EXISTS `ps_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook`
--

LOCK TABLES `ps_hook` WRITE;
/*!40000 ALTER TABLE `ps_hook` DISABLE KEYS */;
INSERT INTO `ps_hook` VALUES (1,'payment','Payment',NULL,1),(2,'newOrder','New orders',NULL,0),(3,'paymentConfirm','Payment confirmation',NULL,0),(4,'paymentReturn','Payment return',NULL,0),(5,'updateQuantity','Quantity update','Quantity is updated only when the customer effectively <b>place</b> his order.',0),(6,'rightColumn','Right column blocks',NULL,1),(7,'leftColumn','Left column blocks',NULL,1),(8,'home','Homepage content',NULL,1),(9,'header','Header of pages','A hook which allow you to do things in the header of each pages',1),(10,'cart','Cart creation and update',NULL,0),(11,'authentication','Successful customer authentication',NULL,0),(12,'addproduct','Product creation',NULL,0),(13,'updateproduct','Product Update',NULL,0),(14,'top','Top of pages','A hook which allow you to do things a the top of each pages.',1),(15,'extraRight','Extra actions on the product page (right column).',NULL,0),(16,'deleteproduct','Product deletion','This hook is called when a product is deleted',0),(17,'productfooter','Product footer','Add new blocks under the product description',1),(18,'invoice','Invoice','Add blocks to invoice (order)',1),(19,'updateOrderStatus','Order\'s status update event','Launch modules when the order\'s status of an order change.',0),(20,'adminOrder','Display in Back-Office, tab AdminOrder','Launch modules when the tab AdminOrder is displayed on back-office.',0),(21,'footer','Footer','Add block in footer',1),(22,'PDFInvoice','PDF Invoice','Allow the display of extra informations into the PDF invoice',0),(23,'adminCustomers','Display in Back-Office, tab AdminCustomers','Launch modules when the tab AdminCustomers is displayed on back-office.',0),(24,'orderConfirmation','Order confirmation page','Called on order confirmation page',0),(25,'createAccount','Successful customer create account','Called when new customer create account successfuled',0),(26,'customerAccount','Customer account page display in front office','Display on page account of the customer',1),(27,'orderSlip','Called when a order slip is created','Called when a quantity of one product change in an order.',0),(28,'productTab','Tabs on product page','Called on order product page tabs',0),(29,'productTabContent','Content of tabs on product page','Called on order product page tabs',0),(30,'shoppingCart','Shopping cart footer','Display some specific informations on the shopping cart page',0),(31,'createAccountForm','Customer account creation form','Display some information on the form to create a customer account',1),(32,'AdminStatsModules','Stats - Modules',NULL,1),(33,'GraphEngine','Graph Engines',NULL,0),(34,'orderReturn','Product returned',NULL,0),(35,'productActions','Product actions','Put new action buttons on product page',1),(36,'backOfficeHome','Administration panel homepage',NULL,1),(37,'GridEngine','Grid Engines',NULL,0),(38,'watermark','Watermark',NULL,0),(39,'cancelProduct','Product cancelled','This hook is called when you cancel a product in an order',0),(40,'extraLeft','Extra actions on the product page (left column).',NULL,0),(41,'productOutOfStock','Product out of stock','Make action while product is out of stock',1),(42,'updateProductAttribute','Product attribute update',NULL,0),(43,'extraCarrier','Extra carrier (module mode)',NULL,0),(44,'shoppingCartExtra','Shopping cart extra button','Display some specific informations',1),(45,'search','Search',NULL,0),(46,'backBeforePayment','Redirect in order process','Redirect user to the module instead of displaying payment modules',0),(47,'updateCarrier','Carrier Update','This hook is called when a carrier is updated',0),(48,'postUpdateOrderStatus','Post update of order status',NULL,0),(49,'createAccountTop','Block above the form for create an account',NULL,1),(50,'backOfficeHeader','Administration panel header',NULL,0),(51,'backOfficeTop','Administration panel hover the tabs',NULL,1),(52,'backOfficeFooter','Administration panel footer',NULL,1),(53,'myAccountBlock','My account block','Display extra informations inside the \"my account\" block',1);
/*!40000 ALTER TABLE `ps_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module`
--

DROP TABLE IF EXISTS `ps_hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY  (`id_module`,`id_hook`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module`
--

LOCK TABLES `ps_hook_module` WRITE;
/*!40000 ALTER TABLE `ps_hook_module` DISABLE KEYS */;
INSERT INTO `ps_hook_module` VALUES (3,1,1),(58,23,1),(58,9,2),(58,35,1),(3,4,1),(56,40,1),(68,4,3),(58,10,1),(58,6,3),(20,6,1),(68,44,1),(68,46,1),(66,40,2),(68,1,3),(61,4,2),(61,1,2),(67,8,2),(67,6,4),(58,26,1),(1,8,1),(19,9,1),(11,14,1),(58,53,1),(67,9,4),(64,17,1),(22,14,2),(65,7,2),(23,21,1),(25,11,1),(25,21,2),(26,32,1),(27,32,2),(28,32,3),(30,32,4),(31,32,5),(32,32,6),(33,32,7),(34,33,1),(35,33,2),(36,33,3),(37,33,4),(38,36,1),(39,37,1),(40,32,8),(41,32,9),(42,32,10),(43,32,11),(42,14,3),(43,14,4),(44,32,12),(45,32,13),(46,32,15),(47,32,14),(48,32,16),(49,32,17),(50,32,18),(51,32,19),(51,45,1),(25,25,1),(41,20,2),(52,32,20),(62,9,3),(73,7,1),(21,6,2),(68,6,5),(68,9,5),(71,39,1),(71,34,1),(71,2,1),(71,23,2),(71,30,1),(71,19,1),(71,15,1),(71,26,2),(71,53,2),(72,30,2),(72,24,1),(72,19,2),(72,23,3),(72,25,2),(72,31,1),(72,26,3),(72,53,3);
/*!40000 ALTER TABLE `ps_hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL auto_increment,
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) default NULL,
  PRIMARY KEY  (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module_exceptions`
--

LOCK TABLES `ps_hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image`
--

DROP TABLE IF EXISTS `ps_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image` (
  `id_image` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL default '0',
  `cover` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_image`),
  KEY `image_product` (`id_product`),
  KEY `product_position` (`id_product`,`position`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image`
--

LOCK TABLES `ps_image` WRITE;
/*!40000 ALTER TABLE `ps_image` DISABLE KEYS */;
INSERT INTO `ps_image` VALUES (79,22,2,0),(78,22,1,1),(77,20,5,0),(76,20,4,0),(71,20,1,1),(102,101,2,0),(101,101,1,1),(75,20,3,0),(74,20,2,0),(82,24,1,1),(93,34,1,1),(105,110,1,1);
/*!40000 ALTER TABLE `ps_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_lang`
--

DROP TABLE IF EXISTS `ps_image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) default NULL,
  UNIQUE KEY `image_lang_index` (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_lang`
--

LOCK TABLES `ps_image_lang` WRITE;
/*!40000 ALTER TABLE `ps_image_lang` DISABLE KEYS */;
INSERT INTO `ps_image_lang` VALUES (71,2,'Grelot doré'),(71,1,'Grelot doré'),(102,2,'Produit n°1'),(101,2,'Produit n°1 - Scoubidou et pierre'),(105,2,'Produit n°1'),(10,1,'luxury-cover-for-ipod-video'),(10,2,'housse-luxe-pour-ipod-video'),(11,1,'cover'),(11,2,'housse'),(74,1,'Grelot doré'),(12,1,'myglove-ipod-nano'),(12,2,'myglove-ipod-nano'),(13,1,'myglove-ipod-nano'),(13,2,'myglove-ipod-nano'),(14,1,'myglove-ipod-nano'),(14,2,'myglove-ipod-nano'),(74,2,'Grelot simple'),(75,1,'Grelot doré'),(75,2,'Grelot simple'),(76,1,'Grelot doré'),(76,2,'Grelot simple'),(77,1,'Grelot doré'),(77,2,'Grelot simple'),(78,1,'Réversible 1'),(78,2,'Réversible 1'),(79,1,'Réversible 1'),(79,2,'Réversible 1'),(82,1,'Réversible 3'),(82,2,'Réversible 3'),(93,1,'Bague fantaisie'),(93,2,'Bague fantaisie');
/*!40000 ALTER TABLE `ps_image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_type`
--

DROP TABLE IF EXISTS `ps_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(16) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL default '1',
  `categories` tinyint(1) NOT NULL default '1',
  `manufacturers` tinyint(1) NOT NULL default '1',
  `suppliers` tinyint(1) NOT NULL default '1',
  `scenes` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_type`
--

LOCK TABLES `ps_image_type` WRITE;
/*!40000 ALTER TABLE `ps_image_type` DISABLE KEYS */;
INSERT INTO `ps_image_type` VALUES (1,'small',80,80,1,1,0,0,0),(2,'medium',203,203,1,1,0,0,0),(3,'large',425,425,1,1,0,0,0),(4,'thickbox',600,600,1,0,0,0,0),(5,'category',500,150,0,1,0,0,0),(6,'home',203,203,1,0,0,0,0),(7,'large_scene',900,350,0,0,0,0,1),(8,'thumb_scene',161,58,0,0,0,0,1);
/*!40000 ALTER TABLE `ps_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang`
--

DROP TABLE IF EXISTS `ps_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL default '0',
  `iso_code` char(2) NOT NULL,
  PRIMARY KEY  (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang`
--

LOCK TABLES `ps_lang` WRITE;
/*!40000 ALTER TABLE `ps_lang` DISABLE KEYS */;
INSERT INTO `ps_lang` VALUES (1,'English (English)',0,'en'),(2,'Français (French)',1,'fr');
/*!40000 ALTER TABLE `ps_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_loyalty`
--

DROP TABLE IF EXISTS `ps_loyalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_loyalty` (
  `id_loyalty` int(10) unsigned NOT NULL auto_increment,
  `id_loyalty_state` int(10) unsigned NOT NULL default '1',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned default NULL,
  `id_discount` int(10) unsigned default NULL,
  `points` int(11) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_loyalty`),
  KEY `index_loyalty_loyalty_state` (`id_loyalty_state`),
  KEY `index_loyalty_order` (`id_order`),
  KEY `index_loyalty_discount` (`id_discount`),
  KEY `index_loyalty_customer` (`id_customer`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_loyalty`
--

LOCK TABLES `ps_loyalty` WRITE;
/*!40000 ALTER TABLE `ps_loyalty` DISABLE KEYS */;
INSERT INTO `ps_loyalty` VALUES (1,4,2,8,2,4,'2010-10-26 07:46:37','2010-10-26 07:51:06');
/*!40000 ALTER TABLE `ps_loyalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_loyalty_history`
--

DROP TABLE IF EXISTS `ps_loyalty_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_loyalty_history` (
  `id_loyalty_history` int(10) unsigned NOT NULL auto_increment,
  `id_loyalty` int(10) unsigned default NULL,
  `id_loyalty_state` int(10) unsigned NOT NULL default '1',
  `points` int(11) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_loyalty_history`),
  KEY `index_loyalty_history_loyalty` (`id_loyalty`),
  KEY `index_loyalty_history_loyalty_state` (`id_loyalty_state`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_loyalty_history`
--

LOCK TABLES `ps_loyalty_history` WRITE;
/*!40000 ALTER TABLE `ps_loyalty_history` DISABLE KEYS */;
INSERT INTO `ps_loyalty_history` VALUES (1,1,1,4,'2010-10-26 07:46:37'),(2,1,2,4,'2010-10-26 07:50:00'),(3,1,4,4,'2010-10-26 07:51:06');
/*!40000 ALTER TABLE `ps_loyalty_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_loyalty_state`
--

DROP TABLE IF EXISTS `ps_loyalty_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_loyalty_state` (
  `id_loyalty_state` int(10) unsigned NOT NULL auto_increment,
  `id_order_state` int(10) unsigned default NULL,
  PRIMARY KEY  (`id_loyalty_state`),
  KEY `index_loyalty_state_order_state` (`id_order_state`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_loyalty_state`
--

LOCK TABLES `ps_loyalty_state` WRITE;
/*!40000 ALTER TABLE `ps_loyalty_state` DISABLE KEYS */;
INSERT INTO `ps_loyalty_state` VALUES (1,0),(2,5),(3,6),(4,0),(5,0);
/*!40000 ALTER TABLE `ps_loyalty_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_loyalty_state_lang`
--

DROP TABLE IF EXISTS `ps_loyalty_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_loyalty_state_lang` (
  `id_loyalty_state` int(10) unsigned NOT NULL auto_increment,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `index_unique_loyalty_state_lang` (`id_loyalty_state`,`id_lang`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_loyalty_state_lang`
--

LOCK TABLES `ps_loyalty_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_loyalty_state_lang` DISABLE KEYS */;
INSERT INTO `ps_loyalty_state_lang` VALUES (1,2,'En attente de validation'),(2,2,'Disponibles'),(3,2,'Annulés'),(4,2,'Déjà convertis'),(5,2,'Non valables sur les promotions');
/*!40000 ALTER TABLE `ps_loyalty_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer`
--

DROP TABLE IF EXISTS `ps_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_manufacturer`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer`
--

LOCK TABLES `ps_manufacturer` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer` DISABLE KEYS */;
INSERT INTO `ps_manufacturer` VALUES (1,'Apple Computer, Inc','2010-07-19 19:03:24','2010-07-19 19:03:24'),(2,'Shure Incorporated','2010-07-19 19:03:24','2010-07-19 19:03:24'),(3,'Marianne Denis','2010-07-20 12:58:03','2010-07-20 12:58:03');
/*!40000 ALTER TABLE `ps_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` varchar(254) default NULL,
  `meta_title` varchar(128) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `meta_description` varchar(255) default NULL,
  PRIMARY KEY  (`id_manufacturer`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_lang`
--

LOCK TABLES `ps_manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_lang` DISABLE KEYS */;
INSERT INTO `ps_manufacturer_lang` VALUES (3,1,'','','','',''),(3,2,'<p>Marianne Denis est une jeune cr&eacute;atrice de bijoux fantaisie sldkx lcvkjxlcvkjx cvlkxjcv lkxjcv lxkcv x</p>\r\n<p>cvxc</p>\r\n<p>&nbsp;vxcvxcvxcv xcv xlkc vjxlkcvj xlckvj&nbsp;</p>','<p>Marianne Denis, cr&eacute;atrice de bijoux fantaisie pr&ecirc;t &agrave; porter et sur mesure.</p>','Marianne Denis, Créatrice de bijoux','création bijoux, bracelets, bagues, coliers, sautoires, ras du cou, coliers trois rangs, bijoux ethniques, bijoux fantaisie','Marianne Denis créatrice de bijoux prêt à porter et haute couture');
/*!40000 ALTER TABLE `ps_manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message`
--

DROP TABLE IF EXISTS `ps_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message` (
  `id_message` int(10) unsigned NOT NULL auto_increment,
  `id_cart` int(10) unsigned default NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned default NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL default '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message`
--

LOCK TABLES `ps_message` WRITE;
/*!40000 ALTER TABLE `ps_message` DISABLE KEYS */;
INSERT INTO `ps_message` VALUES (1,5,2,0,4,'Sous pli discret svp. C\'est un cadeau pour ma femme...',0,'2010-10-22 12:09:45'),(2,12,5,0,7,'je veux que le facteur soit brun aux yeux verts',0,'2010-10-25 17:22:21'),(3,0,5,0,7,'il y a &agrave; nouveau moyen de laisser un message ici???',0,'2010-10-25 17:26:05'),(4,0,5,0,7,'et ca revient &agrave; chaque fois??? ca ca va pas',0,'2010-10-25 17:26:21');
/*!40000 ALTER TABLE `ps_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message_readed`
--

DROP TABLE IF EXISTS `ps_message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_message`,`id_employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message_readed`
--

LOCK TABLES `ps_message_readed` WRITE;
/*!40000 ALTER TABLE `ps_message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta`
--

DROP TABLE IF EXISTS `ps_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL auto_increment,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY  (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta`
--

LOCK TABLES `ps_meta` WRITE;
/*!40000 ALTER TABLE `ps_meta` DISABLE KEYS */;
INSERT INTO `ps_meta` VALUES (1,'404'),(2,'best-sales'),(3,'contact-form'),(4,'index'),(5,'manufacturer'),(6,'new-products'),(7,'password'),(8,'prices-drop'),(9,'sitemap'),(10,'supplier');
/*!40000 ALTER TABLE `ps_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta_lang`
--

DROP TABLE IF EXISTS `ps_meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) default NULL,
  `description` varchar(255) default NULL,
  `keywords` varchar(255) default NULL,
  PRIMARY KEY  (`id_meta`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta_lang`
--

LOCK TABLES `ps_meta_lang` WRITE;
/*!40000 ALTER TABLE `ps_meta_lang` DISABLE KEYS */;
INSERT INTO `ps_meta_lang` VALUES (1,1,'404 error','This page cannot be found','error, 404, not found'),(1,2,'Erreur 404','Cette page est introuvable','erreur, 404, introuvable'),(2,1,'Best sales','Our best sales','best sales'),(2,2,'Meilleures ventes','Liste de nos produits les mieux vendus','meilleures ventes'),(3,1,'Contact us','Use our form to contact us','contact, form, e-mail'),(3,2,'Contactez-nous','Utilisez notre formulaire pour nous contacter','contact, formulaire, e-mail'),(4,1,'','Shop powered by PrestaShop','shop, prestashop'),(4,2,'','Boutique propulsée par PrestaShop','boutique, prestashop'),(5,1,'Manufacturers','Manufacturers list','manufacturer'),(5,2,'Fabricants','Liste de nos fabricants','fabricants'),(6,1,'New products','Our new products','new, products'),(6,2,'Nouveaux produits','Liste de nos nouveaux produits','nouveau, produit'),(7,1,'Forgot your password','Enter your e-mail address used to register in goal to get e-mail with your new password','forgot, password, e-mail, new, reset'),(7,2,'Mot de passe oublié','Renseignez votre adresse e-mail afin de recevoir votre nouveau mot de passe.','mot de passe, oublié, e-mail, nouveau, regénération'),(8,1,'Specials','Our special products','special, prices drop'),(8,2,'Promotions','Nos produits en promotion','promotion, réduction'),(9,1,'Sitemap','Lost ? Find what your are looking for','sitemap'),(9,2,'Plan du site','Perdu ? Trouvez ce que vous cherchez','plan, site'),(10,1,'Suppliers','Suppliers list','supplier'),(10,2,'Fournisseurs','Liste de nos fournisseurs','fournisseurs');
/*!40000 ALTER TABLE `ps_meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module`
--

DROP TABLE IF EXISTS `ps_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module` (
  `id_module` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_module`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module`
--

LOCK TABLES `ps_module` WRITE;
/*!40000 ALTER TABLE `ps_module` DISABLE KEYS */;
INSERT INTO `ps_module` VALUES (1,'homefeatured',1),(2,'gsitemap',1),(3,'cheque',1),(61,'bankwire',0),(67,'iprestashop',1),(56,'sendtoafriend',1),(58,'blockwishlist',1),(9,'blockcart',1),(66,'blockaddthis',1),(11,'blockcurrencies',1),(12,'blockinfos',1),(65,'blockcategories',1),(15,'blockmyaccount',1),(62,'canonicalurl',1),(17,'blockpaymentlogo',1),(18,'blockpermanentlinks',1),(19,'blocksearch',1),(20,'blockspecials',1),(21,'blocktags',1),(22,'blockuserinfo',1),(23,'blockvariouslinks',1),(24,'blockviewed',1),(25,'statsdata',1),(26,'statsvisits',1),(27,'statssales',1),(28,'statsregistrations',1),(30,'statspersonalinfos',1),(31,'statslive',1),(32,'statsequipment',1),(33,'statscatalog',1),(34,'graphvisifire',1),(35,'graphxmlswfcharts',1),(36,'graphgooglechart',1),(37,'graphartichow',1),(38,'statshome',1),(39,'gridextjs',1),(40,'statsbestcustomers',1),(41,'statsorigin',1),(42,'pagesnotfound',1),(43,'sekeywords',1),(44,'statsproduct',1),(45,'statsbestproducts',1),(46,'statsbestcategories',1),(47,'statsbestvouchers',1),(48,'statsbestsuppliers',1),(49,'statscarrier',1),(50,'statsnewsletter',1),(51,'statssearch',1),(52,'statscheckup',1),(64,'productscategory',1),(73,'blockrss',1),(68,'paypalapi',1),(71,'loyalty',1),(72,'referralprogram',1);
/*!40000 ALTER TABLE `ps_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_country`
--

DROP TABLE IF EXISTS `ps_module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_module`,`id_country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_country`
--

LOCK TABLES `ps_module_country` WRITE;
/*!40000 ALTER TABLE `ps_module_country` DISABLE KEYS */;
INSERT INTO `ps_module_country` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(61,8),(61,9),(61,10),(61,11),(61,12),(61,13),(61,14),(61,15),(61,16),(61,17),(61,18),(61,19),(61,20),(61,21),(61,22),(61,23),(61,24),(61,25),(61,26),(61,27),(61,28),(61,29),(61,30),(61,31),(61,32),(61,33),(61,34),(61,35),(61,36),(61,37),(61,38),(61,39),(61,40),(61,41),(61,42),(61,43),(61,44),(61,45),(61,46),(61,47),(61,48),(61,49),(61,50),(61,51),(61,52),(61,53),(61,54),(61,55),(61,56),(61,57),(61,58),(61,59),(61,60),(61,61),(61,62),(61,63),(61,64),(61,65),(61,66),(61,67),(61,68),(61,69),(61,70),(61,71),(61,72),(61,73),(61,74),(61,75),(61,76),(61,77),(61,78),(61,79),(61,80),(61,81),(61,82),(61,83),(61,84),(61,85),(61,86),(61,87),(61,88),(61,89),(61,90),(61,91),(61,92),(61,93),(61,94),(61,95),(61,96),(61,97),(61,98),(61,99),(61,100),(61,101),(61,102),(61,103),(61,104),(61,105),(61,106),(61,107),(61,108),(61,109),(61,110),(61,111),(61,112),(61,113),(61,114),(61,115),(61,116),(61,117),(61,118),(61,119),(61,120),(61,121),(61,122),(61,123),(61,124),(61,125),(61,126),(61,127),(61,128),(61,129),(61,130),(61,131),(61,132),(61,133),(61,134),(61,135),(61,136),(61,137),(61,138),(61,139),(61,140),(61,141),(61,142),(61,143),(61,144),(61,145),(61,146),(61,147),(61,148),(61,149),(61,150),(61,151),(61,152),(61,153),(61,154),(61,155),(61,156),(61,157),(61,158),(61,159),(61,160),(61,161),(61,162),(61,163),(61,164),(61,165),(61,166),(61,167),(61,168),(61,169),(61,170),(61,171),(61,172),(61,173),(61,174),(61,175),(61,176),(61,177),(61,178),(61,179),(61,180),(61,181),(61,182),(61,183),(61,184),(61,185),(61,186),(61,187),(61,188),(61,189),(61,190),(61,191),(61,192),(61,193),(61,194),(61,195),(61,196),(61,197),(61,198),(61,199),(61,200),(61,201),(61,202),(61,203),(61,204),(61,205),(61,206),(61,207),(61,208),(61,209),(61,210),(61,211),(61,212),(61,213),(61,214),(61,215),(61,216),(61,217),(61,218),(61,219),(61,220),(61,221),(61,222),(61,223),(61,224),(61,225),(61,226),(61,227),(61,228),(61,229),(61,230),(61,231),(61,232),(61,233),(61,234),(61,235),(61,236),(61,237),(61,238),(61,239),(61,240),(61,241),(61,242),(61,243),(61,244),(68,8),(68,51),(68,52),(68,53),(68,54),(68,55),(68,56),(68,57),(68,58),(68,59),(68,60),(68,61),(68,62),(68,63),(68,64),(68,65),(68,66),(68,67),(68,68),(68,69),(68,70),(68,71),(68,72),(68,73),(68,74),(68,75),(68,76),(68,77),(68,78),(68,79),(68,80),(68,81),(68,82),(68,83),(68,84),(68,85),(68,86),(68,87),(68,88),(68,89),(68,90),(68,91),(68,92),(68,93),(68,94),(68,95),(68,96),(68,97),(68,98),(68,99),(68,100),(68,101),(68,102),(68,103),(68,104),(68,105),(68,106),(68,107),(68,108),(68,109),(68,110),(68,111),(68,112),(68,113),(68,114),(68,115),(68,116),(68,117),(68,118),(68,119),(68,120),(68,121),(68,122),(68,123),(68,124),(68,125),(68,126),(68,127),(68,128),(68,129),(68,130),(68,131),(68,132),(68,133),(68,134),(68,135),(68,136),(68,137),(68,138),(68,139),(68,140),(68,141),(68,142),(68,143),(68,144),(68,145),(68,146),(68,147),(68,148),(68,149),(68,150),(68,151),(68,152),(68,153),(68,154),(68,155),(68,156),(68,157),(68,158),(68,159),(68,160),(68,161),(68,162),(68,163),(68,164),(68,165),(68,166),(68,167),(68,168),(68,169),(68,170),(68,171),(68,172),(68,173),(68,174),(68,175),(68,176),(68,177),(68,178),(68,179),(68,180),(68,181),(68,182),(68,183),(68,184),(68,185),(68,186),(68,187),(68,188),(68,189),(68,190),(68,191),(68,192),(68,193),(68,194),(68,195),(68,196),(68,197),(68,198),(68,199),(68,200),(68,201),(68,202),(68,203),(68,204),(68,205),(68,206),(68,207),(68,208),(68,209),(68,210),(68,211),(68,212),(68,213),(68,214),(68,215),(68,216),(68,217),(68,218),(68,219),(68,220),(68,221),(68,222),(68,223),(68,224),(68,225),(68,226),(68,227),(68,228),(68,229),(68,230),(68,231),(68,232),(68,233),(68,234),(68,235),(68,236),(68,237),(68,238),(68,239),(68,240),(68,241),(68,242),(68,243),(68,244);
/*!40000 ALTER TABLE `ps_module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_currency`
--

DROP TABLE IF EXISTS `ps_module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY  (`id_module`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_currency`
--

LOCK TABLES `ps_module_currency` WRITE;
/*!40000 ALTER TABLE `ps_module_currency` DISABLE KEYS */;
INSERT INTO `ps_module_currency` VALUES (3,1),(3,2),(3,3),(61,1),(68,-2);
/*!40000 ALTER TABLE `ps_module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_group`
--

DROP TABLE IF EXISTS `ps_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id_module`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_group`
--

LOCK TABLES `ps_module_group` WRITE;
/*!40000 ALTER TABLE `ps_module_group` DISABLE KEYS */;
INSERT INTO `ps_module_group` VALUES (3,1),(61,1),(68,1);
/*!40000 ALTER TABLE `ps_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_operating_system`
--

DROP TABLE IF EXISTS `ps_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  PRIMARY KEY  (`id_operating_system`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_operating_system`
--

LOCK TABLES `ps_operating_system` WRITE;
/*!40000 ALTER TABLE `ps_operating_system` DISABLE KEYS */;
INSERT INTO `ps_operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'MacOsX'),(4,'Linux');
/*!40000 ALTER TABLE `ps_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail`
--

DROP TABLE IF EXISTS `ps_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL auto_increment,
  `id_order` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned default NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL default '0',
  `product_quantity_in_stock` int(10) unsigned NOT NULL default '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL default '0',
  `product_quantity_return` int(10) unsigned NOT NULL default '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL default '0',
  `product_price` decimal(20,6) NOT NULL default '0.000000',
  `product_quantity_discount` decimal(20,6) NOT NULL default '0.000000',
  `product_ean13` varchar(13) default NULL,
  `product_reference` varchar(32) default NULL,
  `product_supplier_reference` varchar(32) default NULL,
  `product_weight` float NOT NULL,
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL default '0.000',
  `ecotax` decimal(17,2) NOT NULL default '0.00',
  `discount_quantity_applied` tinyint(1) NOT NULL default '0',
  `download_hash` varchar(255) default NULL,
  `download_nb` int(10) unsigned default '0',
  `download_deadline` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail`
--

LOCK TABLES `ps_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_detail` DISABLE KEYS */;
INSERT INTO `ps_order_detail` VALUES (1,1,7,23,'iPod touch - Capacité: 32Go',1,0,0,0,0,'392.140500','0.000000',NULL,NULL,NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(2,1,9,0,'Écouteurs à isolation sonore Shure SE210',1,0,0,0,0,'124.581900','0.000000',NULL,NULL,NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(3,2,31,0,'Feutre et perles 3',1,1,0,0,0,'35.000000','0.000000',NULL,'tete-3',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(4,2,35,0,'Boucle mots asymétriques',1,1,0,0,0,'20.000000','0.000000',NULL,'oreil-1',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(5,3,23,62,'Réversible 2 - Taille : 1, Couleur : Metal',1,1,0,0,0,'20.000000','0.000000',NULL,'rever 2',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(6,3,17,53,'Scoubi-chic - Couleur : Vert',7,1,0,0,0,'40.000000','0.000000',NULL,'scoub-10',NULL,0.15,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(7,3,26,0,'Collier grappe',9,1,0,0,0,'65.000000','0.000000',NULL,'col-1',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(8,3,35,0,'Boucle mots asymétriques',2,1,0,0,0,'20.000000','0.000000',NULL,'oreil-1',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(9,4,23,62,'Réversible 2 - Taille : 1, Couleur : Metal',2,1,0,0,0,'20.000000','0.000000',NULL,'rever 2',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(10,5,17,53,'Scoubi-chic - Couleur : Vert',3,1,0,0,0,'40.000000','0.000000',NULL,'scoub-10',NULL,0.15,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(11,5,35,0,'Boucle mots asymétriques',1,1,0,0,0,'20.000000','0.000000',NULL,'oreil-1',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(12,6,22,0,'Réversible 1',1,1,0,0,0,'20.000000','0.000000',NULL,'rever-1',NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(13,6,101,0,'Bracelet scoubidou n°1',1,0,0,0,0,'44.500000','0.000000',NULL,'2-scoub-1',NULL,0.02,'TVA 19.6%','19.600','1.00',0,'',0,'0000-00-00 00:00:00'),(14,7,22,0,'Réversible 1',1,1,0,0,0,'20.000000','0.000000',NULL,'rever-1',NULL,0,'','0.000','0.00',0,'',0,'0000-00-00 00:00:00'),(15,7,34,0,'Bague fantaisie',1,1,0,0,0,'10.000000','0.000000',NULL,'bag-1',NULL,0,'','0.000','0.00',0,'',0,'0000-00-00 00:00:00'),(16,8,24,0,'Réversible 3',1,1,0,0,0,'20.000000','0.000000',NULL,'rever-3',NULL,0,'','0.000','0.00',0,'',0,'0000-00-00 00:00:00'),(17,8,22,0,'Réversible 1',1,1,0,0,0,'20.000000','0.000000',NULL,'rever-1',NULL,0,'','0.000','0.00',0,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_discount`
--

DROP TABLE IF EXISTS `ps_order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_discount` (
  `id_order_discount` int(10) unsigned NOT NULL auto_increment,
  `id_order` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id_order_discount`),
  KEY `order_discount_order` (`id_order`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_discount`
--

LOCK TABLES `ps_order_discount` WRITE;
/*!40000 ALTER TABLE `ps_order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_history`
--

DROP TABLE IF EXISTS `ps_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL auto_increment,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_history`
--

LOCK TABLES `ps_order_history` WRITE;
/*!40000 ALTER TABLE `ps_order_history` DISABLE KEYS */;
INSERT INTO `ps_order_history` VALUES (1,0,1,1,'2010-07-19 19:03:24'),(2,0,2,1,'2010-07-21 21:56:39'),(3,2,2,2,'2010-07-21 21:57:23'),(4,0,3,1,'2010-10-20 12:55:11'),(5,3,3,2,'2010-10-20 13:12:53'),(6,3,3,4,'2010-10-20 13:13:39'),(7,3,3,5,'2010-10-20 13:37:16'),(8,0,4,1,'2010-10-22 12:10:40'),(9,0,5,1,'2010-10-23 12:39:12'),(10,0,6,1,'2010-10-24 18:08:24'),(11,0,7,1,'2010-10-25 17:24:08'),(12,2,7,2,'2010-10-25 19:22:40'),(13,0,8,1,'2010-10-26 07:46:37'),(14,2,8,5,'2010-10-26 07:50:00');
/*!40000 ALTER TABLE `ps_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message`
--

DROP TABLE IF EXISTS `ps_order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL auto_increment,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_order_message`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message`
--

LOCK TABLES `ps_order_message` WRITE;
/*!40000 ALTER TABLE `ps_order_message` DISABLE KEYS */;
INSERT INTO `ps_order_message` VALUES (1,'2010-07-19 19:03:24');
/*!40000 ALTER TABLE `ps_order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message_lang`
--

DROP TABLE IF EXISTS `ps_order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`id_order_message`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message_lang`
--

LOCK TABLES `ps_order_message_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_message_lang` DISABLE KEYS */;
INSERT INTO `ps_order_message_lang` VALUES (1,1,'Delay','Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),(1,2,'Délai','Bonjour,\r\n\r\nUn des éléments de votre commande est actuellement en réapprovisionnement, ce qui peut légèrement retarder son envoi.\r\n\r\nMerci de votre compréhension.\r\n\r\nCordialement,');
/*!40000 ALTER TABLE `ps_order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return`
--

DROP TABLE IF EXISTS `ps_order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL auto_increment,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return`
--

LOCK TABLES `ps_order_return` WRITE;
/*!40000 ALTER TABLE `ps_order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_detail`
--

DROP TABLE IF EXISTS `ps_order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL default '0',
  `product_quantity` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_detail`
--

LOCK TABLES `ps_order_return_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state`
--

DROP TABLE IF EXISTS `ps_order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL auto_increment,
  `color` varchar(32) default NULL,
  PRIMARY KEY  (`id_order_return_state`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state`
--

LOCK TABLES `ps_order_return_state` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state` DISABLE KEYS */;
INSERT INTO `ps_order_return_state` VALUES (1,'#ADD8E6'),(2,'#EEDDFF'),(3,'#DDFFAA'),(4,'#FFD3D3'),(5,'#FFFFBB');
/*!40000 ALTER TABLE `ps_order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_return_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state_lang`
--

LOCK TABLES `ps_order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_return_state_lang` VALUES (1,1,'Waiting for confirmation'),(2,1,'Waiting for package'),(3,1,'Package received'),(4,1,'Return denied'),(5,1,'Return completed'),(1,2,'En attente de confirmation'),(2,2,'En attente du colis'),(3,2,'Colis reçu'),(4,2,'Retour refusé'),(5,2,'Retour terminé');
/*!40000 ALTER TABLE `ps_order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip`
--

DROP TABLE IF EXISTS `ps_order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL auto_increment,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip`
--

LOCK TABLES `ps_order_slip` WRITE;
/*!40000 ALTER TABLE `ps_order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail`
--

DROP TABLE IF EXISTS `ps_order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_order_slip`,`id_order_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail`
--

LOCK TABLES `ps_order_slip_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state`
--

DROP TABLE IF EXISTS `ps_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL auto_increment,
  `invoice` tinyint(1) unsigned default '0',
  `send_email` tinyint(1) unsigned NOT NULL default '0',
  `color` varchar(32) default NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `logable` tinyint(1) NOT NULL default '0',
  `delivery` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_order_state`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state`
--

LOCK TABLES `ps_order_state` WRITE;
/*!40000 ALTER TABLE `ps_order_state` DISABLE KEYS */;
INSERT INTO `ps_order_state` VALUES (1,0,1,'lightblue',1,0,0,0),(2,1,1,'#DDEEFF',1,0,1,0),(3,1,1,'#FFDD99',1,0,1,1),(4,1,1,'#EEDDFF',1,0,1,1),(5,1,0,'#DDFFAA',1,0,1,1),(6,0,1,'#DADADA',1,0,0,0),(7,1,1,'#FFFFBB',1,0,0,0),(8,0,1,'#FFDFDF',1,0,0,0),(9,1,1,'#FFD3D3',1,0,0,0),(10,0,1,'lightblue',1,0,0,0),(11,0,0,'lightblue',1,0,0,0);
/*!40000 ALTER TABLE `ps_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state_lang`
--

DROP TABLE IF EXISTS `ps_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state_lang`
--

LOCK TABLES `ps_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_state_lang` VALUES (1,1,'Awaiting cheque payment','cheque'),(2,1,'Payment accepted','payment'),(3,1,'Preparation in progress','preparation'),(4,1,'Shipped','shipped'),(5,1,'Delivered',''),(6,1,'Canceled','order_canceled'),(7,1,'Refund','refund'),(8,1,'Payment error','payment_error'),(9,1,'On backorder','outofstock'),(10,1,'Awaiting bank wire payment','bankwire'),(11,1,'Awaiting PayPal payment',''),(1,2,'En attente du paiement par chèque','cheque'),(2,2,'Paiement accepté','payment'),(3,2,'Préparation en cours','preparation'),(4,2,'En cours de livraison','shipped'),(5,2,'Livré',''),(6,2,'Annulé','order_canceled'),(7,2,'Remboursé','refund'),(8,2,'Erreur de paiement','payment_error'),(9,2,'En attente de réapprovisionnement','outofstock'),(10,2,'En attente du paiement par virement bancaire','bankwire'),(11,2,'En attente du paiement par PayPal','');
/*!40000 ALTER TABLE `ps_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_orders`
--

DROP TABLE IF EXISTS `ps_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_orders` (
  `id_order` int(10) unsigned NOT NULL auto_increment,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL default '-1',
  `payment` varchar(255) NOT NULL,
  `module` varchar(255) default NULL,
  `recyclable` tinyint(1) unsigned NOT NULL default '0',
  `gift` tinyint(1) unsigned NOT NULL default '0',
  `gift_message` text,
  `shipping_number` varchar(32) default NULL,
  `total_discounts` decimal(17,2) NOT NULL default '0.00',
  `total_paid` decimal(17,2) NOT NULL default '0.00',
  `total_paid_real` decimal(17,2) NOT NULL default '0.00',
  `total_products` decimal(17,2) NOT NULL default '0.00',
  `total_products_wt` decimal(17,2) NOT NULL default '0.00',
  `total_shipping` decimal(17,2) NOT NULL default '0.00',
  `total_wrapping` decimal(17,2) NOT NULL default '0.00',
  `invoice_number` int(10) unsigned NOT NULL default '0',
  `delivery_number` int(10) unsigned NOT NULL default '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_orders`
--

LOCK TABLES `ps_orders` WRITE;
/*!40000 ALTER TABLE `ps_orders` DISABLE KEYS */;
INSERT INTO `ps_orders` VALUES (1,2,2,1,1,1,2,2,'47ce86627c1f3c792a80773c5d2deaf8','Chèque','cheque',1,0,'','','0.00','625.98','625.98','516.72','618.00','7.98','0.00',1,0,'2008-09-10 15:30:44','0000-00-00 00:00:00',0,'2010-07-19 19:03:24','2010-07-19 19:03:24'),(2,2,2,3,3,1,4,4,'cb2f03fa412dd24f059f4ee05863bd60','Chèque','cheque',0,1,'','','0.00','75.15','75.15','55.00','65.78','8.37','1.00',2,0,'2010-07-21 21:57:23','0000-00-00 00:00:00',1,'2010-07-21 21:56:39','2010-07-21 21:57:23'),(3,3,2,4,4,1,5,6,'f0e2c83b8a4bc8ef48da6d492bee6269','Chèque','cheque',0,0,'','','0.00','1114.67','1114.67','925.00','1106.30','8.37','0.00',3,1,'2010-10-20 13:12:53','2010-10-20 13:13:39',1,'2010-10-20 12:55:11','2010-10-20 13:37:16'),(4,3,2,2,5,1,3,7,'90611d08ba9301832a36a697f2c59070','Chèque','cheque',0,1,'Happy birthday !\r\nRobin','','0.00','57.41','57.41','40.00','47.84','8.37','1.20',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-22 12:10:40','2010-10-22 12:10:40'),(5,3,2,2,2,1,3,3,'90611d08ba9301832a36a697f2c59070','Chèque','cheque',0,0,'','','0.00','175.81','175.81','140.00','167.44','8.37','0.00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-23 12:39:12','2010-10-23 12:39:12'),(6,3,2,4,8,1,5,5,'f0e2c83b8a4bc8ef48da6d492bee6269','Chèque','cheque',0,0,'','','0.00','85.51','85.51','64.50','77.14','8.37','0.00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 18:08:24','2010-10-24 18:08:24'),(7,20,2,5,12,1,8,8,'164f95d8c00eecb3c6d099a6ef327f1d','Chèque','cheque',0,1,'à ma maman','','0.00','38.00','38.00','30.00','30.00','6.80','1.20',4,0,'2010-10-25 19:22:40','0000-00-00 00:00:00',1,'2010-10-25 17:24:07','2010-10-25 19:22:40'),(8,23,2,2,13,1,7,7,'90611d08ba9301832a36a697f2c59070','Chèque','cheque',0,0,'','','0.00','44.80','44.80','40.00','40.00','4.80','0.00',5,2,'2010-10-26 07:50:00','2010-10-26 07:50:00',1,'2010-10-26 07:46:37','2010-10-26 07:50:00');
/*!40000 ALTER TABLE `ps_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pack`
--

DROP TABLE IF EXISTS `ps_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id_product_pack`,`id_product_item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pack`
--

LOCK TABLES `ps_pack` WRITE;
/*!40000 ALTER TABLE `ps_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page`
--

DROP TABLE IF EXISTS `ps_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page` (
  `id_page` int(10) unsigned NOT NULL auto_increment,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned default NULL,
  PRIMARY KEY  (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page`
--

LOCK TABLES `ps_page` WRITE;
/*!40000 ALTER TABLE `ps_page` DISABLE KEYS */;
INSERT INTO `ps_page` VALUES (1,5,NULL),(2,2,1),(3,1,2),(4,1,10),(5,3,0),(6,6,NULL),(7,2,5),(8,7,NULL),(9,1,1),(10,8,NULL),(11,2,7),(12,9,NULL),(13,10,NULL),(14,2,6),(15,11,NULL),(16,12,NULL),(17,2,19),(18,2,8),(19,1,11),(20,2,13),(21,13,NULL),(22,1,20),(23,2,21),(24,1,17),(25,2,15),(26,1,27),(27,1,34),(28,2,11),(29,1,23),(30,1,21),(31,1,26),(32,1,25),(33,14,NULL),(34,2,9),(35,1,29),(36,1,32),(37,1,31),(38,2,10),(39,2,14),(40,2,22),(41,1,12),(42,1,35),(43,2,12),(44,2,23),(45,3,1),(46,3,2),(47,3,3),(48,15,NULL),(49,16,NULL),(50,2,20),(51,1,33),(52,1,30),(53,17,NULL),(54,18,NULL),(55,19,NULL),(56,20,NULL),(57,21,NULL),(58,22,NULL),(59,23,NULL),(60,24,NULL),(61,1,13),(62,1,22),(63,25,NULL),(64,26,NULL),(65,27,NULL),(66,1,14),(67,28,NULL),(68,1,28),(69,1,15),(70,1,19),(71,2,16),(72,2,18),(73,2,17),(74,2,29),(75,1,24),(76,1,101),(77,29,NULL),(78,2,30),(79,2,25),(80,2,27),(81,2,26),(82,2,31),(83,2,33),(84,2,32),(85,2,28),(86,2,34),(87,30,NULL),(88,31,NULL),(89,32,NULL);
/*!40000 ALTER TABLE `ps_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_type`
--

DROP TABLE IF EXISTS `ps_page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_type`
--

LOCK TABLES `ps_page_type` WRITE;
/*!40000 ALTER TABLE `ps_page_type` DISABLE KEYS */;
INSERT INTO `ps_page_type` VALUES (1,'product.php'),(2,'category.php'),(3,'order.php'),(4,'manufacturer.php'),(5,'index.php'),(6,'404.php'),(7,'prices-drop.php'),(8,'authentication.php'),(9,'my-account.php'),(10,'history.php'),(11,'/modules/blockwishlist/mywishlist.php'),(12,'new-products.php'),(13,'modules/sendtoafriend/sendtoafriend-form.php'),(14,'search.php'),(15,'modules/cheque/payment.php'),(16,'order-confirmation.php'),(17,'best-sales.php'),(18,'contact-form.php'),(19,'cms.php'),(20,'order-slip.php'),(21,'identity.php'),(22,'modules/blockwishlist/mywishlist.php'),(23,'modules/blockwishlist/view.php'),(24,'cart.php'),(25,'addresses.php'),(26,'address.php'),(27,'discount.php'),(28,'password.php'),(29,'modules/bankwire/payment.php'),(30,'modules/paypalapi/payment/submit.php'),(31,'modules/loyalty/loyalty-program.php'),(32,'modules/referralprogram/referralprogram-program.php');
/*!40000 ALTER TABLE `ps_page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_viewed`
--

DROP TABLE IF EXISTS `ps_page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_page`,`id_date_range`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_viewed`
--

LOCK TABLES `ps_page_viewed` WRITE;
/*!40000 ALTER TABLE `ps_page_viewed` DISABLE KEYS */;
INSERT INTO `ps_page_viewed` VALUES (1,1,2),(1,2,45),(2,2,17),(3,2,2),(4,2,11),(5,2,11),(6,2,145),(7,2,1),(8,2,1),(9,2,5),(10,2,1),(11,2,1),(1,3,45),(6,3,297),(4,3,6),(5,3,6),(10,3,8),(12,3,2),(13,3,3),(9,3,3),(11,3,21),(8,3,6),(2,3,1),(14,3,9),(15,3,1),(16,3,6),(17,3,9),(18,3,4),(19,3,11),(20,3,3),(21,3,1),(22,3,2),(23,3,3),(24,3,9),(25,3,4),(26,3,1),(27,3,2),(28,3,2),(29,3,1),(30,3,4),(31,3,2),(32,3,2),(33,3,2),(34,3,3),(35,3,1),(36,3,2),(37,3,1),(38,3,3),(39,3,2),(40,3,2),(41,3,3),(42,3,1),(43,3,2),(44,3,2),(45,3,1),(46,3,1),(47,3,1),(48,3,1),(49,3,1),(50,3,2),(51,3,1),(52,3,1),(1,4,6),(17,4,2),(11,4,4),(24,4,3),(5,4,6),(20,4,1),(53,4,1),(54,4,1),(55,4,2),(12,4,4),(13,4,1),(56,4,1),(57,4,1),(58,4,1),(59,4,1),(30,4,1),(21,4,2),(38,4,2),(42,4,3),(18,4,2),(11,5,2),(1,6,1),(12,6,1),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,30),(29,14,1),(1,15,1),(1,16,1),(1,17,1),(1,18,12),(29,18,1),(8,18,1),(16,18,1),(53,18,1),(54,18,1),(55,18,3),(1,19,1),(1,20,2),(30,20,1),(1,21,43),(5,21,7),(10,21,31),(29,21,70),(17,21,75),(21,21,1),(60,21,3),(24,21,1),(11,21,5),(25,21,2),(28,21,1),(18,21,4),(38,21,1),(14,21,3),(43,21,1),(61,21,1),(1,22,5),(24,22,1),(11,22,5),(20,22,2),(29,22,1),(10,22,1),(12,22,4),(5,22,3),(45,22,1),(46,22,1),(55,22,1),(10,23,178),(1,23,3),(29,23,2),(60,23,1),(12,23,13),(5,23,1),(12,24,24),(1,24,20),(29,24,17),(13,24,15),(62,24,2),(11,24,7),(56,24,4),(63,24,45),(64,24,13),(57,24,12),(24,24,4),(10,24,5),(65,24,2),(58,24,2),(19,24,45),(41,24,4),(66,24,3),(61,24,1),(20,24,1),(60,24,1),(5,24,55),(25,24,2),(45,24,1),(46,24,1),(30,24,1),(67,24,1),(39,24,1),(6,24,3),(42,24,1),(17,24,1),(31,24,1),(1,25,18),(32,25,1),(5,25,80),(12,25,12),(13,25,24),(29,25,7),(25,25,1),(63,25,2),(42,25,15),(45,25,20),(64,25,1),(46,25,13),(55,25,1),(47,25,4),(48,25,7),(49,25,3),(66,25,2),(57,25,9),(17,25,16),(56,25,1),(65,25,1),(38,25,1),(68,25,1),(31,25,4),(19,25,1),(11,25,2),(24,25,29),(18,25,1),(14,25,1),(69,25,7),(1,26,1),(55,26,3),(69,26,1),(1,27,13),(17,27,15),(29,27,5),(18,27,2),(12,27,27),(13,27,4),(5,27,1),(45,27,5),(64,27,6),(46,27,1),(55,27,1),(47,27,1),(48,27,1),(49,27,1),(56,27,2),(63,27,2),(57,27,34),(65,27,1),(58,27,3),(59,27,1),(27,27,2),(32,27,2),(68,27,5),(69,27,1),(70,27,2),(10,27,3),(1,28,60),(29,28,13),(12,28,11),(56,28,4),(63,28,3),(27,28,6),(17,28,18),(61,28,4),(31,28,3),(24,28,4),(10,28,1),(13,28,7),(5,28,2),(45,28,1),(46,28,1),(47,28,1),(48,28,1),(49,28,1),(19,28,7),(55,28,1),(18,28,3),(38,28,3),(11,28,7),(39,28,3),(25,28,3),(20,28,3),(14,28,3),(71,28,3),(72,28,3),(73,28,3),(43,28,3),(34,28,3),(74,28,1),(35,28,6),(57,28,1),(65,28,1),(58,28,2),(59,28,1),(22,28,5),(75,28,6),(62,28,10),(6,28,2),(1,29,33),(17,29,2),(74,29,56),(11,29,17),(14,29,9),(22,29,15),(62,29,8),(18,29,17),(38,29,9),(43,29,6),(27,29,1),(71,29,2),(34,29,5),(12,29,8),(63,29,18),(64,29,2),(10,29,1),(58,29,27),(59,29,2),(55,29,29),(76,29,43),(75,29,2),(6,29,1),(5,29,16),(45,29,54),(46,29,4),(47,29,4),(77,29,27),(33,29,1),(72,29,1),(78,29,1),(25,29,1),(79,29,1),(80,29,1),(81,29,1),(82,29,1),(83,29,1),(84,29,1),(85,29,1),(86,29,1),(48,29,3),(49,29,3),(54,29,6),(1,30,28),(74,30,11),(14,30,7),(18,30,8),(38,30,4),(27,30,7),(5,30,27),(45,30,20),(46,30,46),(47,30,11),(76,30,17),(75,30,5),(11,30,12),(43,30,4),(62,30,7),(22,30,1),(12,30,9),(71,30,3),(72,30,3),(34,30,3),(78,30,2),(25,30,2),(79,30,2),(80,30,2),(81,30,2),(85,30,2),(82,30,2),(83,30,2),(84,30,2),(86,30,2),(55,30,1),(54,30,3),(10,30,5),(87,30,1),(48,30,1),(49,30,2),(13,30,4),(63,30,5),(64,30,5),(57,30,1),(65,30,2),(6,30,2),(1,31,12),(22,31,1),(12,31,7),(56,31,2),(63,31,1),(13,31,2),(57,31,1),(88,31,3),(5,31,6),(45,31,1),(46,31,1),(47,31,1),(48,31,1),(49,31,1),(74,31,2),(27,31,2),(89,31,1),(6,31,9),(76,31,7),(18,31,1),(38,31,2);
/*!40000 ALTER TABLE `ps_page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pagenotfound`
--

DROP TABLE IF EXISTS `ps_pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL auto_increment,
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_pagenotfound`)
) ENGINE=MyISAM AUTO_INCREMENT=460 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pagenotfound`
--

LOCK TABLES `ps_pagenotfound` WRITE;
/*!40000 ALTER TABLE `ps_pagenotfound` DISABLE KEYS */;
INSERT INTO `ps_pagenotfound` VALUES (1,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/category.php?id_category=1','2010-07-20 12:32:42'),(2,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/category.php?id_category=1','2010-07-20 12:32:42'),(3,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/5-catalogue','2010-07-20 12:32:52'),(4,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/5-catalogue','2010-07-20 12:32:52'),(5,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:32:57'),(6,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:32:57'),(7,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:32:58'),(8,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:32:58'),(9,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:08'),(10,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:08'),(11,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:09'),(12,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:09'),(13,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:32'),(14,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:33'),(15,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:33'),(16,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 12:33:33'),(17,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:33:36'),(18,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:33:36'),(19,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:36:58'),(20,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:36:58'),(21,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:37:59'),(22,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:37:59'),(23,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:41:12'),(24,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:41:12'),(25,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:50:05'),(26,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:50:05'),(27,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:53:54'),(28,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:53:54'),(29,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:54:31'),(30,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:54:31'),(31,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:54:35'),(32,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:54:35'),(33,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:54:37'),(34,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:54:37'),(35,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:54:41'),(36,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:54:41'),(37,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:58:13'),(38,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/1-home','2010-07-20 12:58:13'),(39,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:58:16'),(40,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:58:16'),(41,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/prices-drop.php','2010-07-20 12:58:24'),(42,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/prices-drop.php','2010-07-20 12:58:24'),(43,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 12:58:28'),(44,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 12:58:28'),(45,'/prestashop/img/logo.jpg?date=1279623846','http://mariannedenis.com/prestashop/admin147/index.php?tab=AdminAppearance&token=88c29833597decf0f83a771597d5947b','2010-07-20 13:04:06'),(46,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:04:32'),(47,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:04:32'),(48,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:04:38'),(49,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:04:38'),(50,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:06:34'),(51,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:06:34'),(52,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:06:36'),(53,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:06:36'),(54,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:06:38'),(55,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:06:38'),(56,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:07:06'),(57,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:07:06'),(58,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:07:11'),(59,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:07:11'),(60,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:07:19'),(61,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 13:07:19'),(62,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-home','2010-07-20 13:07:22'),(63,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-home','2010-07-20 13:07:23'),(64,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:07:47'),(65,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 13:07:47'),(66,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 13:08:00'),(67,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 13:08:00'),(68,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 13:08:01'),(69,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:08:26'),(70,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:08:27'),(71,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:09:39'),(72,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:09:40'),(73,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:09:42'),(74,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:09:42'),(75,'/prestashop/modules/categoriesbar/chromestyle.css','http://mariannedenis.com/prestashop/','2010-07-20 13:10:00'),(76,'/prestashop/js/jquery/jquery.slider.js','http://mariannedenis.com/prestashop/','2010-07-20 13:10:01'),(77,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:12:37'),(78,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:12:37'),(79,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:12:53'),(80,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:12:53'),(81,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:43:23'),(82,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 13:43:23'),(83,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:44:09'),(84,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/authentication.php?back=my-account.php','2010-07-20 13:44:21'),(85,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:44:31'),(86,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php','2010-07-20 13:45:01'),(87,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php','2010-07-20 13:45:01'),(88,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=10','2010-07-20 13:45:05'),(89,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=10','2010-07-20 13:45:06'),(90,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:45:10'),(91,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 13:45:10'),(92,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 13:45:13'),(93,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 13:45:13'),(94,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:19:18'),(95,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:19:18'),(96,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:19:19'),(97,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:20:14'),(98,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:20:14'),(99,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:20:14'),(100,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:20:17'),(101,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:20:17'),(102,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:21:24'),(103,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:21:24'),(104,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:21:25'),(105,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:21:25'),(106,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:22:04'),(107,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:22:04'),(108,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:22:07'),(109,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:22:07'),(110,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:22:07'),(111,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 15:22:22'),(112,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=1','2010-07-20 15:22:22'),(113,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:22:45'),(114,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:22:45'),(115,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-20 15:23:06'),(116,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-20 15:23:06'),(117,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:23:26'),(118,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:23:27'),(119,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:24:44'),(120,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:24:44'),(121,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:27:48'),(122,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:27:48'),(123,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-20 15:27:48'),(124,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 15:30:41'),(125,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 15:30:41'),(126,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:30:45'),(127,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:30:45'),(128,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:30:45'),(129,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:30:45'),(130,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:31:09'),(131,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:31:09'),(132,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:31:09'),(133,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:31:10'),(134,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:33:18'),(135,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:33:18'),(136,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:33:19'),(137,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:33:19'),(138,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:34:56'),(139,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:34:56'),(140,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:34:57'),(141,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-20 15:34:57'),(142,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 17:28:19'),(143,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 17:28:19'),(144,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-20 18:09:55'),(145,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-20 18:09:56'),(146,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 11:37:59'),(147,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 11:38:00'),(148,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 11:38:04'),(149,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 11:38:04'),(150,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 11:38:04'),(151,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 11:38:04'),(152,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=10','2010-07-21 11:55:11'),(153,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=10','2010-07-21 11:55:11'),(154,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/authentication.php?back=order.php?step=1','2010-07-21 11:55:18'),(155,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/authentication.php?back=order.php?step=1','2010-07-21 11:55:18'),(156,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/authentication.php?back=my-account.php','2010-07-21 12:03:04'),(157,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/authentication.php?back=my-account.php','2010-07-21 12:03:04'),(158,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/authentication.php?back=my-account.php','2010-07-21 12:03:19'),(159,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/authentication.php?back=my-account.php','2010-07-21 12:03:19'),(160,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/my-account.php','2010-07-21 12:03:53'),(161,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/my-account.php','2010-07-21 12:03:53'),(162,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/history.php','2010-07-21 12:04:05'),(163,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/history.php','2010-07-21 12:04:05'),(164,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/my-account.php','2010-07-21 12:04:08'),(165,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/my-account.php','2010-07-21 12:04:09'),(166,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 12:09:03'),(167,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 12:09:03'),(168,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:09:06'),(169,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:09:06'),(170,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:09:07'),(171,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:09:07'),(172,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 12:12:50'),(173,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 12:12:50'),(174,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 12:12:53'),(175,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 12:12:53'),(176,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 12:12:53'),(177,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 12:21:37'),(178,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 12:21:37'),(179,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:23:08'),(180,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:23:08'),(181,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:23:09'),(182,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 12:23:09'),(183,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 13:16:51'),(184,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 13:16:51'),(185,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 13:16:52'),(186,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 13:16:52'),(187,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:18:26'),(188,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:18:26'),(189,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:19:24'),(190,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:19:24'),(191,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:20:12'),(192,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:20:12'),(193,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:20:22'),(194,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:20:22'),(195,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:20:22'),(196,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:21:36'),(197,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:21:36'),(198,'/prestashop/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/1-ipod-nano.html','2010-07-21 13:21:36'),(199,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:21:38'),(200,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:21:38'),(201,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:24:04'),(202,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:24:04'),(203,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:24:26'),(204,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:24:26'),(205,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/1-home','2010-07-21 13:24:30'),(206,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/1-home','2010-07-21 13:24:30'),(207,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:24:40'),(208,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:24:40'),(209,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:25:07'),(210,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:25:07'),(211,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 13:25:51'),(212,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 13:25:51'),(213,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 13:25:54'),(214,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 13:25:54'),(215,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop//modules/blockwishlist/mywishlist.php','2010-07-21 13:26:25'),(216,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop//modules/blockwishlist/mywishlist.php','2010-07-21 13:26:25'),(217,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:26:31'),(218,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:26:32'),(219,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:33:50'),(220,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:33:50'),(221,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:37:00'),(222,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:37:00'),(223,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:37:35'),(224,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:37:35'),(225,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 13:37:42'),(226,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 13:37:42'),(227,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:38:24'),(228,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:38:24'),(229,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 13:38:36'),(230,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 13:38:36'),(231,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:38:56'),(232,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:38:56'),(233,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 13:39:01'),(234,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 13:39:01'),(235,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:39:07'),(236,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 13:39:07'),(237,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:47:14'),(238,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:47:14'),(239,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 13:47:42'),(240,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 13:47:42'),(241,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 13:47:52'),(242,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 13:47:52'),(243,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/8-bagues','2010-07-21 13:48:02'),(244,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/8-bagues','2010-07-21 13:48:02'),(245,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 13:48:05'),(246,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 13:48:05'),(247,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 14:01:07'),(248,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 14:01:07'),(249,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 14:01:36'),(250,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 14:01:36'),(251,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 14:03:08'),(252,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 14:03:08'),(253,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 14:09:23'),(254,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 14:09:23'),(255,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:09:31'),(256,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:09:31'),(257,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:09:36'),(258,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:09:37'),(259,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:09:38'),(260,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:09:38'),(261,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 14:11:50'),(262,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 14:11:50'),(263,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:11:57'),(264,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:11:57'),(265,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:11:57'),(266,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:11:57'),(267,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/modules/sendtoafriend/sendtoafriend-form.php?id_product=11','2010-07-21 14:12:17'),(268,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/modules/sendtoafriend/sendtoafriend-form.php?id_product=11','2010-07-21 14:12:17'),(269,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:13:12'),(270,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:13:12'),(271,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:13:14'),(272,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:13:14'),(273,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:15:16'),(274,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:15:16'),(275,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:15:18'),(276,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:15:18'),(277,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 14:21:28'),(278,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 14:21:28'),(279,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:21:33'),(280,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:21:33'),(281,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:37:46'),(282,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:37:46'),(283,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:51:45'),(284,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:51:45'),(285,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:52:18'),(286,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:52:18'),(287,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:52:19'),(288,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 14:52:19'),(289,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 14:52:57'),(290,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 14:52:57'),(291,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:53:02'),(292,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 14:53:02'),(293,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:11:21'),(294,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:11:21'),(295,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 15:11:25'),(296,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 15:11:25'),(297,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 15:11:31'),(298,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 15:11:31'),(299,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/20-grelot-dore.html','2010-07-21 15:11:36'),(300,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/colliers/20-grelot-dore.html','2010-07-21 15:11:36'),(301,'/prestashop/colliers/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/20-grelot-dore.html','2010-07-21 15:11:37'),(302,'/prestashop/colliers/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/colliers/20-grelot-dore.html','2010-07-21 15:11:37'),(303,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:12:12'),(304,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:12:13'),(305,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 15:12:34'),(306,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/13-scoubidou','2010-07-21 15:12:34'),(307,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:23:39'),(308,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:23:39'),(309,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets?p=2','2010-07-21 15:23:46'),(310,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets?p=2','2010-07-21 15:23:46'),(311,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:23:56'),(312,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 15:23:56'),(313,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:48:50'),(314,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:48:50'),(315,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:50:42'),(316,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:50:42'),(317,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:51:13'),(318,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:51:13'),(319,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/21-scoubidou','2010-07-21 15:51:37'),(320,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/21-scoubidou','2010-07-21 15:51:37'),(321,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 15:51:46'),(322,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 15:51:46'),(323,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 15:51:47'),(324,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 15:51:47'),(325,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:51:52'),(326,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:51:53'),(327,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 15:54:45'),(328,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 15:54:45'),(329,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 16:00:39'),(330,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 16:00:39'),(331,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:00:42'),(332,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:00:42'),(333,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 16:00:51'),(334,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 16:00:51'),(335,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 16:00:52'),(336,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 16:00:52'),(337,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:00:57'),(338,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:00:57'),(339,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:14:47'),(340,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:14:47'),(341,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:15:20'),(342,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:15:20'),(343,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:15:34'),(344,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 16:15:35'),(345,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/8-bagues','2010-07-21 16:15:51'),(346,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/8-bagues','2010-07-21 16:15:51'),(347,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:15:58'),(348,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:15:58'),(349,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:21:19'),(350,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:21:19'),(351,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:25:33'),(352,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:25:33'),(353,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:26:17'),(354,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/15-reversibles','2010-07-21 16:26:17'),(355,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 16:31:09'),(356,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 16:31:09'),(357,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 16:34:55'),(358,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/6-colliers','2010-07-21 16:34:55'),(359,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/classiques/27-colier-de-perle-trois-rangs.html','2010-07-21 16:35:02'),(360,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/classiques/27-colier-de-perle-trois-rangs.html','2010-07-21 16:35:02'),(361,'/prestashop/classiques/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/classiques/27-colier-de-perle-trois-rangs.html','2010-07-21 16:35:02'),(362,'/prestashop/classiques/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/classiques/27-colier-de-perle-trois-rangs.html','2010-07-21 16:35:02'),(363,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 16:47:32'),(364,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 16:47:32'),(365,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:07:18'),(366,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:07:18'),(367,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:11:17'),(368,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:11:17'),(369,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bagues/34-bague-fantaisie.html','2010-07-21 17:11:47'),(370,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bagues/34-bague-fantaisie.html','2010-07-21 17:11:47'),(371,'/prestashop/bagues/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bagues/34-bague-fantaisie.html','2010-07-21 17:11:48'),(372,'/prestashop/bagues/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bagues/34-bague-fantaisie.html','2010-07-21 17:11:48'),(373,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:14:51'),(374,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:14:51'),(375,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 17:15:15'),(376,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 17:15:15'),(377,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/11-autres','2010-07-21 17:15:27'),(378,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/11-autres','2010-07-21 17:15:27'),(379,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 17:15:32'),(380,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/19-catalogue','2010-07-21 17:15:32'),(381,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:19:36'),(382,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:19:36'),(383,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 17:19:45'),(384,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/7-bracelets','2010-07-21 17:19:45'),(385,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 17:19:55'),(386,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 17:19:55'),(387,'/prestashop/bracelets/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 17:19:56'),(388,'/prestashop/bracelets/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/bracelets/10-scoubidou-obsidienne.html','2010-07-21 17:19:56'),(389,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 17:20:12'),(390,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 17:20:12'),(391,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 17:20:12'),(392,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/11-scoubi-pierre.html','2010-07-21 17:20:12'),(393,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/order.php?ipa=11','2010-07-21 17:20:18'),(394,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/order.php?ipa=11','2010-07-21 17:20:19'),(395,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:21:02'),(396,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:21:02'),(397,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:21:12'),(398,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:21:12'),(399,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:21:13'),(400,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:21:13'),(401,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 17:23:32'),(402,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 17:23:32'),(403,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 17:23:38'),(404,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 17:23:38'),(405,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 17:23:41'),(406,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/new-products.php','2010-07-21 17:23:41'),(407,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 17:24:02'),(408,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/prices-drop.php','2010-07-21 17:24:02'),(409,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:24:18'),(410,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:24:18'),(411,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:25:38'),(412,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:25:38'),(413,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:26:38'),(414,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:26:38'),(415,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:26:45'),(416,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:26:45'),(417,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/reversibles/23-reversible-2.html','2010-07-21 17:28:45'),(418,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/reversibles/23-reversible-2.html','2010-07-21 17:28:45'),(419,'/prestashop/reversibles/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/reversibles/23-reversible-2.html','2010-07-21 17:28:45'),(420,'/prestashop/reversibles/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/reversibles/23-reversible-2.html','2010-07-21 17:28:45'),(421,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:29:50'),(422,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:29:51'),(423,'/prestashop/scoubidou/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:29:52'),(424,'/prestashop/scoubidou/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/scoubidou/17-scoubi-chic.html','2010-07-21 17:29:52'),(425,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:30:22'),(426,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:30:22'),(427,'/prestashop/colliers/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:30:22'),(428,'/prestashop/colliers/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:30:22'),(429,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/classiques/26-collier-grappe.html','2010-07-21 17:30:27'),(430,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/classiques/26-collier-grappe.html','2010-07-21 17:30:27'),(431,'/prestashop/classiques/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/classiques/26-collier-grappe.html','2010-07-21 17:30:28'),(432,'/prestashop/classiques/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/classiques/26-collier-grappe.html','2010-07-21 17:30:28'),(433,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:32:42'),(434,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:32:42'),(435,'/prestashop/colliers/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:32:43'),(436,'/prestashop/colliers/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:32:43'),(437,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:34:55'),(438,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:34:56'),(439,'/prestashop/colliers/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:34:57'),(440,'/prestashop/colliers/modules/categoriesbar/chrome.js','http://www.mariannedenis.com/prestashop/colliers/21-grelot-rouge.html','2010-07-21 17:34:57'),(441,'/prestashop/modules/categoriesbar/chromestyle.css','http://www.mariannedenis.com/prestashop/','2010-07-21 17:35:46'),(442,'/prestashop/js/jquery/jquery.slider.js','http://www.mariannedenis.com/prestashop/','2010-07-21 17:35:46'),(443,'/prestashop/admin','','2010-10-19 20:27:53'),(444,'/prestashop/admin/','','2010-10-19 20:28:01'),(445,'/prestashop/admin.php','','2010-10-19 20:28:08'),(446,'/prestashop/admin147/searchcron?full=1&token=SeKEApRd','','2010-10-23 17:46:31'),(447,'/prestashop/admin147/searchcron?full=1&token=SeKEApRd','','2010-10-23 17:46:54'),(448,'/prestashop/LIVRAISONS.HTML','','2010-10-24 13:05:42'),(449,'/prestashop/import','','2010-10-25 19:43:47'),(450,'/prestashop/import/','','2010-10-25 19:46:15'),(451,'/prestashop/blog/','','2010-10-26 08:48:36'),(452,'/prestashop/blog/wp-content/themes/twentyten/style.css','http://mariannedenis.com/blog/','2010-10-26 08:50:00'),(453,'/prestashop/blog/wp-login.php?redirect_to=http%3A%2F%2Fmariannedenis.com%2Fblog%2Fwp-admin%2F&reauth=1','','2010-10-26 08:50:19'),(454,'/prestashop/blog/wp-content/themes/twentyten/style.css','http://blog.mariannedenis.com/','2010-10-26 08:56:45'),(455,'/prestashop/blog/wp-login.php?redirect_to=http%3A%2F%2Fblog.mariannedenis.com%2Fwp-admin%2F&reauth=1','','2010-10-26 08:56:53'),(456,'/prestashop/blog/wp-content/themes/twentyten/style.css','http://mariannedenis.com/blog/','2010-10-26 08:57:10'),(457,'/prestashop/blog/wp-login.php?redirect_to=http%3A%2F%2Fmariannedenis.com%2Fblog%2Fwp-admin%2F&reauth=1','','2010-10-26 08:57:21'),(458,'/prestashop/blog/wp-content/themes/twentyten/style.css','http://mariannedenis.com/blog/','2010-10-26 08:57:31'),(459,'/prestashop/blog/wp-login.php?redirect_to=http%3A%2F%2Fmariannedenis.com%2Fblog%2Fwp-admin%2F&reauth=1','','2010-10-26 08:57:38');
/*!40000 ALTER TABLE `ps_pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_order`
--

DROP TABLE IF EXISTS `ps_paypal_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_order` (
  `id_order` int(10) unsigned NOT NULL auto_increment,
  `id_transaction` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_order`
--

LOCK TABLES `ps_paypal_order` WRITE;
/*!40000 ALTER TABLE `ps_paypal_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product`
--

DROP TABLE IF EXISTS `ps_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product` (
  `id_product` int(10) unsigned NOT NULL auto_increment,
  `id_supplier` int(10) unsigned default NULL,
  `id_manufacturer` int(10) unsigned default NULL,
  `id_tax` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned default NULL,
  `id_color_default` int(10) unsigned default NULL,
  `on_sale` tinyint(1) unsigned NOT NULL default '0',
  `ean13` varchar(13) default NULL,
  `ecotax` decimal(17,2) NOT NULL default '0.00',
  `quantity` int(10) unsigned NOT NULL default '0',
  `price` decimal(20,6) NOT NULL default '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL default '0.000000',
  `reduction_price` decimal(17,2) default NULL,
  `reduction_percent` float default NULL,
  `reduction_from` datetime NOT NULL default '1970-01-01 00:00:00',
  `reduction_to` datetime NOT NULL default '1970-01-01 00:00:00',
  `reference` varchar(32) default NULL,
  `supplier_reference` varchar(32) default NULL,
  `location` varchar(64) default NULL,
  `weight` float NOT NULL default '0',
  `out_of_stock` int(10) unsigned NOT NULL default '2',
  `quantity_discount` tinyint(1) default '0',
  `customizable` tinyint(2) NOT NULL default '0',
  `uploadable_files` tinyint(4) NOT NULL default '0',
  `text_fields` tinyint(4) NOT NULL default '0',
  `active` tinyint(1) unsigned NOT NULL default '0',
  `indexed` tinyint(1) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_tax` (`id_tax`),
  KEY `id_category_default` (`id_category_default`),
  KEY `id_color_default` (`id_color_default`),
  KEY `date_add` (`date_add`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product`
--

LOCK TABLES `ps_product` WRITE;
/*!40000 ALTER TABLE `ps_product` DISABLE KEYS */;
INSERT INTO `ps_product` VALUES (101,0,0,1,1,0,0,'','0.00',1,'44.500000','44.000000','0.00',0,'1942-01-01 00:00:00','1942-01-01 00:00:00','2-scoub-1','','',0.02,2,0,0,0,0,1,1,'2010-10-24 12:28:26','2010-10-25 19:53:49'),(20,0,0,1,1,0,0,'','0.00',5,'50.000000','5.000000','0.00',0,'2010-07-21 00:00:00','2010-07-21 00:00:00','grel-1','','',0,2,0,0,0,0,1,1,'2010-07-21 15:02:11','2010-10-23 17:00:11'),(22,0,0,1,1,0,0,'','0.00',1,'20.000000','5.000000','0.00',0,'2010-07-21 00:00:00','2010-07-21 00:00:00','rever-1','','',0,2,0,0,0,0,1,1,'2010-07-21 15:16:26','2010-10-23 17:02:06'),(24,0,0,1,1,0,0,'','0.00',1,'20.000000','5.000000','0.00',0,'2010-07-21 00:00:00','2010-07-21 00:00:00','rever-3','','',0,2,0,0,0,0,1,1,'2010-07-21 15:23:22','2010-10-25 18:23:58'),(34,0,0,1,1,0,0,'','0.00',1,'10.000000','5.000000','0.00',0,'2010-07-21 00:00:00','2010-07-21 00:00:00','bag-1','','',0,2,0,0,0,0,1,1,'2010-07-21 17:10:46','2010-10-24 10:21:44'),(110,0,0,1,1,0,0,'','0.00',0,'44.500000','44.000000','0.00',0,'1942-01-01 00:00:00','1942-01-01 00:00:00','2-scoub-1','','',0.02,2,0,0,0,0,1,1,'2010-10-26 07:36:08','2010-10-26 07:36:08');
/*!40000 ALTER TABLE `ps_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_product`,`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attachment`
--

LOCK TABLES `ps_product_attachment` WRITE;
/*!40000 ALTER TABLE `ps_product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute`
--

DROP TABLE IF EXISTS `ps_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) default NULL,
  `supplier_reference` varchar(32) default NULL,
  `location` varchar(64) default NULL,
  `ean13` varchar(13) default NULL,
  `wholesale_price` decimal(20,6) NOT NULL default '0.000000',
  `price` decimal(17,2) NOT NULL default '0.00',
  `ecotax` decimal(17,2) NOT NULL default '0.00',
  `quantity` int(10) unsigned NOT NULL default '0',
  `weight` float NOT NULL default '0',
  `default_on` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute`
--

LOCK TABLES `ps_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute` DISABLE KEYS */;
INSERT INTO `ps_product_attribute` VALUES (59,20,'','','','','0.000000','0.00','0.00',1,0,0),(58,20,'','','','','0.000000','0.00','0.00',1,0,0),(57,20,'','','','','0.000000','0.00','0.00',1,0,0),(56,20,'','','','','0.000000','0.00','0.00',1,0,1),(55,20,'','','','','0.000000','0.00','0.00',1,0,0);
/*!40000 ALTER TABLE `ps_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_combination`
--

LOCK TABLES `ps_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_combination` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_combination` VALUES (4,57),(19,58),(25,55),(26,56),(27,59);
/*!40000 ALTER TABLE `ps_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_image`
--

DROP TABLE IF EXISTS `ps_product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_image`
--

LOCK TABLES `ps_product_attribute_image` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_image` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_image` VALUES (7,46),(8,47),(9,49),(10,48),(12,0),(13,0),(14,0),(15,0),(19,0),(22,0),(23,0),(25,38),(26,38),(27,45),(28,45),(29,44),(30,44),(31,37),(32,37),(33,40),(34,40),(35,41),(36,41),(39,39),(40,39),(41,42),(42,42),(44,55),(45,54),(46,53),(47,52),(49,59),(50,56),(50,57),(50,58),(51,60),(52,66),(53,67),(54,68),(55,74),(55,76),(55,77),(56,71),(57,75),(58,71),(58,74),(59,76),(59,77);
/*!40000 ALTER TABLE `ps_product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_download`
--

DROP TABLE IF EXISTS `ps_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) default NULL,
  `physically_filename` varchar(255) default NULL,
  `date_deposit` datetime NOT NULL,
  `date_expiration` datetime default NULL,
  `nb_days_accessible` int(10) unsigned default NULL,
  `nb_downloadable` int(10) unsigned default '1',
  `active` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_download`
--

LOCK TABLES `ps_product_download` WRITE;
/*!40000 ALTER TABLE `ps_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_lang`
--

DROP TABLE IF EXISTS `ps_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `meta_title` varchar(128) default NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) default NULL,
  `available_later` varchar(255) default NULL,
  UNIQUE KEY `product_lang_index` (`id_product`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_lang`
--

LOCK TABLES `ps_product_lang` WRITE;
/*!40000 ALTER TABLE `ps_product_lang` DISABLE KEYS */;
INSERT INTO `ps_product_lang` VALUES (101,2,'bracelet en fils de scoubidou noir et blanc section cubique et pierre xl semi-précieuse (agathe)','Bracelet scoubidou et pierre','bracelet-en-scoubidou-1','bracelet en fils de scoubidou noir et blanc section cubique et pierre xl semi-précieuse (agathe)','Bracelet scoubidou, scoubidou, bijoux scoubidou, bijoux en scoubidou','Bracelet en scoubidou 1','Produit n°1','',''),(20,1,'','','grelot-dore','','','','Grelot doré','',''),(20,2,'','<p>Collier grelot et oeil de chat sur chaine dor&eacute;e</p>','grelot-dore','','','','Grelot simple','',''),(22,1,'','','reversible-1','','','','Réversible 1','',''),(22,2,'','<p>Bracelet r&eacute;versible en cuir et tissu imprim&eacute;, fermoir inox.</p>','reversible-1','','','','Réversible 1','',''),(24,1,'','','reversible-3','','','','Réversible 3','',''),(24,2,'','<p>Bracelet en cuir jaune simple. Fermoir en inox chrom&eacute;.</p>','reversible-3','','','','Réversible 3','',''),(34,1,'','','bague-fantaisie','','','','Bague fantaisie','',''),(34,2,'','<p>Bagues en perles sur ressort ou mont&eacute;es sur support, 6 ou 8 perles, unies ou multicolors.</p>','bague-fantaisie','','','','Bague fantaisie','',''),(110,2,'bracelet en fils de scoubidou noir et blanc section cubique et pierre xl semi-précieuse (agathe)','Bracelet scoubidou et pierre','bracelet-en-scoubidou-1','bracelet en fils de scoubidou noir et blanc section cubique et pierre xl semi-précieuse (agathe)','Bracelet scoubidou, scoubidou, bijoux scoubidou, bijoux en scoubidou','Bracelet en scoubidou 1','Produit n°1','','');
/*!40000 ALTER TABLE `ps_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_sale`
--

DROP TABLE IF EXISTS `ps_product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL default '0',
  `sale_nbr` int(10) unsigned NOT NULL default '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY  (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_sale`
--

LOCK TABLES `ps_product_sale` WRITE;
/*!40000 ALTER TABLE `ps_product_sale` DISABLE KEYS */;
INSERT INTO `ps_product_sale` VALUES (34,1,1,'2010-10-25'),(22,2,2,'2010-10-26'),(24,1,1,'2010-10-26');
/*!40000 ALTER TABLE `ps_product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_tag`
--

DROP TABLE IF EXISTS `ps_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_tag`
--

LOCK TABLES `ps_product_tag` WRITE;
/*!40000 ALTER TABLE `ps_product_tag` DISABLE KEYS */;
INSERT INTO `ps_product_tag` VALUES (101,46),(101,47),(101,48),(101,49),(110,46),(110,47),(110,48),(110,49);
/*!40000 ALTER TABLE `ps_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile`
--

DROP TABLE IF EXISTS `ps_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile`
--

LOCK TABLES `ps_profile` WRITE;
/*!40000 ALTER TABLE `ps_profile` DISABLE KEYS */;
INSERT INTO `ps_profile` VALUES (1);
/*!40000 ALTER TABLE `ps_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile_lang`
--

DROP TABLE IF EXISTS `ps_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`id_profile`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile_lang`
--

LOCK TABLES `ps_profile_lang` WRITE;
/*!40000 ALTER TABLE `ps_profile_lang` DISABLE KEYS */;
INSERT INTO `ps_profile_lang` VALUES (1,1,'Administrator'),(2,1,'Administrateur');
/*!40000 ALTER TABLE `ps_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access`
--

DROP TABLE IF EXISTS `ps_quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL auto_increment,
  `new_window` tinyint(1) NOT NULL default '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY  (`id_quick_access`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access`
--

LOCK TABLES `ps_quick_access` WRITE;
/*!40000 ALTER TABLE `ps_quick_access` DISABLE KEYS */;
INSERT INTO `ps_quick_access` VALUES (1,0,'index.php'),(2,1,'../'),(3,0,'index.php?tab=AdminCatalog&addcategory'),(4,0,'index.php?tab=AdminCatalog&addproduct'),(5,0,'index.php?tab=AdminDiscounts&adddiscount');
/*!40000 ALTER TABLE `ps_quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access_lang`
--

DROP TABLE IF EXISTS `ps_quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_quick_access`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access_lang`
--

LOCK TABLES `ps_quick_access_lang` WRITE;
/*!40000 ALTER TABLE `ps_quick_access_lang` DISABLE KEYS */;
INSERT INTO `ps_quick_access_lang` VALUES (1,1,'Home'),(1,2,'Accueil'),(2,1,'My Shop'),(2,2,'Ma boutique'),(3,1,'New category'),(3,2,'Nouvelle catégorie'),(4,1,'New product'),(4,2,'Nouveau produit'),(5,1,'New voucher'),(5,2,'Nouveau bon de réduction');
/*!40000 ALTER TABLE `ps_quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_price`
--

DROP TABLE IF EXISTS `ps_range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL auto_increment,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY  (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_price`
--

LOCK TABLES `ps_range_price` WRITE;
/*!40000 ALTER TABLE `ps_range_price` DISABLE KEYS */;
INSERT INTO `ps_range_price` VALUES (1,2,'0.000000','10000.000000');
/*!40000 ALTER TABLE `ps_range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_weight`
--

DROP TABLE IF EXISTS `ps_range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL auto_increment,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY  (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_weight`
--

LOCK TABLES `ps_range_weight` WRITE;
/*!40000 ALTER TABLE `ps_range_weight` DISABLE KEYS */;
INSERT INTO `ps_range_weight` VALUES (1,2,'0.000000','10000.000000'),(2,3,'0.000000','10000.000000'),(4,5,'0.000000','0.250000'),(5,5,'0.250000','0.500000'),(6,5,'0.500000','0.750000'),(24,12,'0.000000','0.250000'),(8,7,'0.000000','0.250000'),(9,7,'0.250000','0.500000'),(10,7,'0.500000','0.750000'),(11,8,'0.000000','0.250000'),(12,8,'0.250000','0.500000'),(13,8,'0.500000','0.750000'),(14,9,'0.000000','0.250000'),(15,9,'0.250000','0.500000'),(16,9,'0.500000','0.750000'),(17,10,'0.000000','0.250000'),(18,10,'0.250000','0.500000'),(19,10,'0.500000','0.750000'),(20,11,'0.000000','0.250000'),(21,11,'0.250000','0.500000'),(22,11,'0.500000','0.750000'),(23,11,'0.750000','1.000000'),(25,12,'0.250000','0.500000'),(26,12,'0.500000','0.750000'),(27,12,'0.750000','1.000000'),(28,13,'0.000000','0.250000'),(29,13,'0.250000','0.500000'),(30,13,'0.500000','0.750000'),(31,13,'0.750000','1.000000'),(32,14,'0.000000','0.250000'),(33,14,'0.250000','0.500000'),(34,14,'0.500000','0.750000'),(35,14,'0.750000','1.000000'),(36,15,'0.000000','0.250000'),(37,15,'0.250000','0.500000'),(38,15,'0.500000','0.750000'),(39,15,'0.750000','1.000000'),(40,16,'0.000000','0.250000'),(41,16,'0.250000','0.500000'),(42,16,'0.500000','0.750000'),(43,16,'0.750000','1.000000'),(44,17,'0.000000','0.250000'),(45,17,'0.250000','0.500000'),(46,17,'0.500000','0.750000'),(47,17,'0.750000','1.000000'),(48,18,'0.000000','0.250000'),(49,18,'0.250000','0.500000'),(50,18,'0.500000','0.750000'),(51,18,'0.750000','1.000000'),(52,19,'0.000000','0.250000'),(53,19,'0.250000','0.500000'),(54,19,'0.500000','0.750000'),(55,19,'0.750000','1.000000'),(56,20,'0.000000','0.250000'),(57,20,'0.250000','0.500000'),(58,20,'0.500000','0.750000'),(59,20,'0.750000','1.000000'),(60,21,'0.000000','0.250000'),(61,21,'0.250000','0.500000'),(62,21,'0.500000','0.750000'),(63,21,'0.750000','1.000000'),(64,22,'0.000000','0.250000'),(65,22,'0.250000','0.500000'),(66,22,'0.500000','0.750000'),(67,22,'0.750000','1.000000'),(68,23,'0.000000','0.250000'),(69,23,'0.250000','0.500000'),(70,23,'0.500000','0.750000'),(71,23,'0.750000','1.000000');
/*!40000 ALTER TABLE `ps_range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referralprogram`
--

DROP TABLE IF EXISTS `ps_referralprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referralprogram` (
  `id_referralprogram` int(10) unsigned NOT NULL auto_increment,
  `id_sponsor` int(10) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `id_customer` int(10) unsigned default NULL,
  `id_discount` int(10) unsigned default NULL,
  `id_discount_sponsor` int(10) unsigned default NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_referralprogram`),
  UNIQUE KEY `index_unique_referralprogram_email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referralprogram`
--

LOCK TABLES `ps_referralprogram` WRITE;
/*!40000 ALTER TABLE `ps_referralprogram` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referralprogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer`
--

DROP TABLE IF EXISTS `ps_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) default NULL,
  `http_referer_regexp` varchar(64) default NULL,
  `http_referer_like` varchar(64) default NULL,
  `request_uri_regexp` varchar(64) default NULL,
  `request_uri_like` varchar(64) default NULL,
  `http_referer_regexp_not` varchar(64) default NULL,
  `http_referer_like_not` varchar(64) default NULL,
  `request_uri_regexp_not` varchar(64) default NULL,
  `request_uri_like_not` varchar(64) default NULL,
  `base_fee` decimal(5,2) NOT NULL default '0.00',
  `percent_fee` decimal(5,2) NOT NULL default '0.00',
  `click_fee` decimal(5,2) NOT NULL default '0.00',
  `cache_visitors` int(11) default NULL,
  `cache_visits` int(11) default NULL,
  `cache_pages` int(11) default NULL,
  `cache_registrations` int(11) default NULL,
  `cache_orders` int(11) default NULL,
  `cache_sales` decimal(17,2) default NULL,
  `cache_reg_rate` decimal(5,4) default NULL,
  `cache_order_rate` decimal(5,4) default NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer`
--

LOCK TABLES `ps_referrer` WRITE;
/*!40000 ALTER TABLE `ps_referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_cache`
--

DROP TABLE IF EXISTS `ps_referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id_connections_source`,`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_cache`
--

LOCK TABLES `ps_referrer_cache` WRITE;
/*!40000 ALTER TABLE `ps_referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene`
--

DROP TABLE IF EXISTS `ps_scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL auto_increment,
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id_scene`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene`
--

LOCK TABLES `ps_scene` WRITE;
/*!40000 ALTER TABLE `ps_scene` DISABLE KEYS */;
INSERT INTO `ps_scene` VALUES (6,0);
/*!40000 ALTER TABLE `ps_scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_category`
--

DROP TABLE IF EXISTS `ps_scene_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_scene`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_category`
--

LOCK TABLES `ps_scene_category` WRITE;
/*!40000 ALTER TABLE `ps_scene_category` DISABLE KEYS */;
INSERT INTO `ps_scene_category` VALUES (6,7),(6,15);
/*!40000 ALTER TABLE `ps_scene_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_lang`
--

DROP TABLE IF EXISTS `ps_scene_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_scene`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_lang`
--

LOCK TABLES `ps_scene_lang` WRITE;
/*!40000 ALTER TABLE `ps_scene_lang` DISABLE KEYS */;
INSERT INTO `ps_scene_lang` VALUES (6,2,'Farandole de bracelets...'),(6,1,'Farandole de bracelets...');
/*!40000 ALTER TABLE `ps_scene_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_products`
--

DROP TABLE IF EXISTS `ps_scene_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY  (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_products`
--

LOCK TABLES `ps_scene_products` WRITE;
/*!40000 ALTER TABLE `ps_scene_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_engine`
--

DROP TABLE IF EXISTS `ps_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL auto_increment,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_search_engine`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_engine`
--

LOCK TABLES `ps_search_engine` WRITE;
/*!40000 ALTER TABLE `ps_search_engine` DISABLE KEYS */;
INSERT INTO `ps_search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `ps_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_index`
--

DROP TABLE IF EXISTS `ps_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id_word`,`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_index`
--

LOCK TABLES `ps_search_index` WRITE;
/*!40000 ALTER TABLE `ps_search_index` DISABLE KEYS */;
INSERT INTO `ps_search_index` VALUES (20,1,6),(20,2,6),(20,3,10),(20,4,3),(20,5,2),(20,6,2),(20,7,2),(20,8,2),(20,9,2),(20,10,7),(20,11,6),(20,12,10),(20,13,1),(20,14,1),(20,15,1),(20,16,1),(20,17,1),(20,18,3),(20,19,3),(20,20,2),(20,21,2),(20,22,2),(20,23,2),(22,24,6),(22,25,10),(22,4,3),(22,26,7),(22,27,10),(22,28,1),(22,29,1),(22,30,1),(22,31,1),(22,32,1),(22,33,1),(22,19,3),(24,19,3),(24,36,1),(24,33,1),(24,32,1),(24,11,1),(24,21,1),(24,29,1),(24,28,1),(24,35,10),(24,26,6),(24,4,3),(24,34,10),(24,24,6),(34,37,6),(34,38,6),(34,39,10),(34,4,3),(34,40,6),(34,41,6),(34,42,10),(34,43,1),(34,44,2),(34,16,2),(34,45,1),(34,46,1),(34,47,1),(34,48,1),(34,49,1),(34,19,3),(101,60,8),(101,61,3),(101,59,1),(101,58,1),(101,56,1),(101,55,1),(101,20,1),(101,54,1),(101,52,1),(101,57,2),(101,51,10),(101,53,24),(101,28,12);
/*!40000 ALTER TABLE `ps_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_word`
--

DROP TABLE IF EXISTS `ps_search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL auto_increment,
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY  (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`word`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_word`
--

LOCK TABLES `ps_search_word` WRITE;
/*!40000 ALTER TABLE `ps_search_word` DISABLE KEYS */;
INSERT INTO `ps_search_word` VALUES (1,1,'grelot'),(2,1,'doré'),(3,1,'grel1'),(4,1,'home'),(5,1,'blanc'),(6,1,'yellow'),(7,1,'blue'),(8,1,'dorée'),(9,1,'chromée'),(10,2,'grelot'),(11,2,'simple'),(12,2,'grel1'),(13,2,'collier'),(14,2,'oeil'),(15,2,'chat'),(16,2,'sur'),(17,2,'chaine'),(18,2,'dorée'),(19,2,'accueil'),(20,2,'blanc'),(21,2,'jaune'),(22,2,'bleu'),(23,2,'chromée'),(24,1,'réversible'),(25,1,'rever1'),(26,2,'réversible'),(27,2,'rever1'),(28,2,'bracelet'),(29,2,'cuir'),(30,2,'tissu'),(31,2,'imprimé'),(32,2,'fermoir'),(33,2,'inox'),(34,1,'rever3'),(35,2,'rever3'),(36,2,'chromé'),(37,1,'bague'),(38,1,'fantaisie'),(39,1,'bag1'),(40,2,'bague'),(41,2,'fantaisie'),(42,2,'bag1'),(43,2,'bagues'),(44,2,'perles'),(45,2,'ressort'),(46,2,'montées'),(47,2,'support'),(48,2,'unies'),(49,2,'multicolors'),(51,2,'2scoub1'),(52,2,'fils'),(53,2,'scoubidou'),(54,2,'noir'),(55,2,'section'),(56,2,'cubique'),(57,2,'pierre'),(58,2,'semiprécieuse'),(59,2,'agathe'),(60,2,'bijoux'),(61,2,'bracelets');
/*!40000 ALTER TABLE `ps_search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_sekeyword`
--

DROP TABLE IF EXISTS `ps_sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL auto_increment,
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_sekeyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_sekeyword`
--

LOCK TABLES `ps_sekeyword` WRITE;
/*!40000 ALTER TABLE `ps_sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_state`
--

DROP TABLE IF EXISTS `ps_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_state` (
  `id_state` int(10) unsigned NOT NULL auto_increment,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` char(4) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `id_zone` (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_state`
--

LOCK TABLES `ps_state` WRITE;
/*!40000 ALTER TABLE `ps_state` DISABLE KEYS */;
INSERT INTO `ps_state` VALUES (67,245,13,'Province','FR',0,1),(68,245,12,'Ile de France','FR',0,1);
/*!40000 ALTER TABLE `ps_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_statssearch`
--

DROP TABLE IF EXISTS `ps_statssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL auto_increment,
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL default '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY  (`id_statssearch`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_statssearch`
--

LOCK TABLES `ps_statssearch` WRITE;
/*!40000 ALTER TABLE `ps_statssearch` DISABLE KEYS */;
INSERT INTO `ps_statssearch` VALUES (1,'cuir',5,'2010-07-21 17:39:31'),(2,'bracelet',15,'2010-07-21 17:39:42');
/*!40000 ALTER TABLE `ps_statssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_subdomain`
--

DROP TABLE IF EXISTS `ps_subdomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_subdomain` (
  `id_subdomain` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_subdomain`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_subdomain`
--

LOCK TABLES `ps_subdomain` WRITE;
/*!40000 ALTER TABLE `ps_subdomain` DISABLE KEYS */;
INSERT INTO `ps_subdomain` VALUES (1,'www');
/*!40000 ALTER TABLE `ps_subdomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier`
--

DROP TABLE IF EXISTS `ps_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier`
--

LOCK TABLES `ps_supplier` WRITE;
/*!40000 ALTER TABLE `ps_supplier` DISABLE KEYS */;
INSERT INTO `ps_supplier` VALUES (1,'AppleStore','2010-07-19 19:03:24','2010-07-19 19:03:24'),(2,'Shure Online Store','2010-07-19 19:03:24','2010-07-19 19:03:24');
/*!40000 ALTER TABLE `ps_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_lang`
--

DROP TABLE IF EXISTS `ps_supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `meta_description` varchar(255) default NULL,
  PRIMARY KEY  (`id_supplier`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_lang`
--

LOCK TABLES `ps_supplier_lang` WRITE;
/*!40000 ALTER TABLE `ps_supplier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab`
--

DROP TABLE IF EXISTS `ps_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL auto_increment,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) default NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab`
--

LOCK TABLES `ps_tab` WRITE;
/*!40000 ALTER TABLE `ps_tab` DISABLE KEYS */;
INSERT INTO `ps_tab` VALUES (1,0,'AdminCatalog',NULL,1),(2,0,'AdminCustomers',NULL,2),(3,0,'AdminOrders',NULL,3),(4,0,'AdminPayment',NULL,4),(5,0,'AdminShipping',NULL,5),(6,0,'AdminStats',NULL,6),(7,0,'AdminModules',NULL,7),(29,0,'AdminEmployees',NULL,8),(8,0,'AdminPreferences',NULL,9),(9,0,'AdminTools',NULL,10),(60,1,'AdminTracking',NULL,1),(10,1,'AdminManufacturers',NULL,2),(34,1,'AdminSuppliers',NULL,3),(11,1,'AdminAttributesGroups',NULL,4),(36,1,'AdminFeatures',NULL,5),(58,1,'AdminScenes',NULL,6),(66,1,'AdminTags',NULL,7),(68,1,'AdminAttachments',NULL,7),(12,2,'AdminAddresses',NULL,1),(63,2,'AdminGroups',NULL,2),(65,2,'AdminCarts',NULL,3),(42,3,'AdminInvoices',NULL,1),(55,3,'AdminDeliverySlip',NULL,2),(47,3,'AdminReturn',NULL,3),(49,3,'AdminSlip',NULL,4),(59,3,'AdminMessages',NULL,5),(13,3,'AdminStatuses',NULL,6),(54,3,'AdminOrderMessage',NULL,7),(14,4,'AdminDiscounts',NULL,3),(15,4,'AdminCurrencies',NULL,1),(16,4,'AdminTaxes',NULL,2),(17,5,'AdminCarriers',NULL,1),(46,5,'AdminStates',NULL,2),(18,5,'AdminCountries',NULL,3),(19,5,'AdminZones',NULL,4),(20,5,'AdminRangePrice',NULL,5),(21,5,'AdminRangeWeight',NULL,6),(50,6,'AdminStatsModules',NULL,1),(51,6,'AdminStatsConf',NULL,2),(61,6,'AdminSearchEngines',NULL,3),(62,6,'AdminReferrers',NULL,4),(22,7,'AdminModulesPositions',NULL,1),(30,29,'AdminProfiles',NULL,1),(31,29,'AdminAccess',NULL,2),(28,29,'AdminContacts',NULL,3),(39,8,'AdminContact',NULL,1),(38,8,'AdminAppearance',NULL,2),(56,8,'AdminMeta',NULL,3),(27,8,'AdminPPreferences',NULL,4),(24,8,'AdminEmails',NULL,5),(26,8,'AdminImages',NULL,6),(23,8,'AdminDb',NULL,7),(48,8,'AdminPDF',NULL,8),(44,8,'AdminLocalization',NULL,9),(67,8,'AdminSearchConf',NULL,10),(32,9,'AdminLanguages',NULL,1),(33,9,'AdminTranslations',NULL,2),(35,9,'AdminTabs',NULL,3),(37,9,'AdminQuickAccesses',NULL,4),(40,9,'AdminAliases',NULL,5),(41,9,'AdminImport',NULL,6),(52,9,'AdminSubDomains',NULL,7),(53,9,'AdminBackup',NULL,8),(57,9,'AdminCMS',NULL,9),(64,9,'AdminGenerator',NULL,10),(43,-1,'AdminSearch',NULL,0);
/*!40000 ALTER TABLE `ps_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_lang`
--

DROP TABLE IF EXISTS `ps_tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `name` varchar(32) default NULL,
  PRIMARY KEY  (`id_tab`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_lang`
--

LOCK TABLES `ps_tab_lang` WRITE;
/*!40000 ALTER TABLE `ps_tab_lang` DISABLE KEYS */;
INSERT INTO `ps_tab_lang` VALUES (1,1,'Catalog'),(1,2,'Customers'),(1,3,'Orders'),(1,4,'Payment'),(1,5,'Shipping'),(1,6,'Stats'),(1,7,'Modules'),(1,8,'Preferences'),(1,9,'Tools'),(1,10,'Manufacturers'),(1,11,'Attributes and groups'),(1,12,'Addresses'),(1,13,'Statuses'),(1,14,'Vouchers'),(1,15,'Currencies'),(1,16,'Taxes'),(1,17,'Carriers'),(1,18,'Countries'),(1,19,'Zones'),(1,20,'Price ranges'),(1,21,'Weight ranges'),(1,22,'Positions'),(1,23,'Database'),(1,24,'Email'),(1,26,'Image'),(1,27,'Products'),(1,28,'Contacts'),(1,29,'Employees'),(1,30,'Profiles'),(1,31,'Permissions'),(1,32,'Languages'),(1,33,'Translations'),(1,34,'Suppliers'),(1,35,'Tabs'),(1,36,'Features'),(1,37,'Quick Accesses'),(1,38,'Appearance'),(1,39,'Contact'),(1,40,'Aliases'),(1,41,'Import'),(1,42,'Invoices'),(1,43,'Search'),(1,44,'Localization'),(1,46,'States'),(1,47,'Merchandise return'),(1,48,'PDF'),(1,49,'Credit slips'),(1,50,'Modules'),(1,51,'Settings'),(1,52,'Subdomains'),(1,53,'DB backup'),(1,54,'Order Messages'),(1,55,'Delivery slips'),(1,56,'Meta-Tags'),(1,57,'CMS'),(1,58,'Image mapping'),(1,59,'Customer messages'),(1,60,'Tracking'),(1,61,'Search engines'),(1,62,'Referrers'),(1,63,'Groups'),(1,64,'Generators'),(1,65,'Carts'),(1,66,'Tags'),(1,67,'Search'),(1,68,'Attachments'),(2,1,'Catalogue'),(2,2,'Clients'),(2,3,'Commandes'),(2,4,'Paiement'),(2,5,'Transport'),(2,6,'Stats'),(2,7,'Modules'),(2,8,'Préférences'),(2,9,'Outils'),(2,10,'Fabricants'),(2,11,'Attributs et groupes'),(2,12,'Adresses'),(2,13,'Statuts'),(2,14,'Bons de réduction'),(2,15,'Devises'),(2,16,'Taxes'),(2,17,'Transporteurs'),(2,18,'Pays'),(2,19,'Zones'),(2,20,'Tranches de prix'),(2,21,'Tranches de poids'),(2,22,'Positions'),(2,23,'Base de données'),(2,24,'Emails'),(2,26,'Images'),(2,27,'Produits'),(2,28,'Contacts'),(2,29,'Employés'),(2,30,'Profils'),(2,31,'Permissions'),(2,32,'Langues'),(2,33,'Traductions'),(2,34,'Fournisseurs'),(2,35,'Onglets'),(2,36,'Caractéristiques'),(2,37,'Accès rapide'),(2,38,'Apparence'),(2,39,'Coordonnées'),(2,40,'Alias'),(2,41,'Import'),(2,42,'Factures'),(2,43,'Recherche'),(2,44,'Localisation'),(2,46,'Etats'),(2,47,'Retours produits'),(2,48,'PDF'),(2,49,'Avoirs'),(2,50,'Modules'),(2,51,'Configuration'),(2,52,'Sous domaines'),(2,53,'Sauvegarde BDD'),(2,54,'Messages prédéfinis'),(2,55,'Bons de livraison'),(2,56,'Méta-Tags'),(2,57,'CMS'),(2,58,'Scènes'),(2,59,'Messages clients'),(2,60,'Suivi'),(2,61,'Moteurs de recherche'),(2,62,'Sites affluents'),(2,63,'Groupes'),(2,64,'Générateurs'),(2,65,'Paniers'),(2,66,'Tags'),(2,67,'Recherche'),(2,68,'Documents joints');
/*!40000 ALTER TABLE `ps_tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag`
--

DROP TABLE IF EXISTS `ps_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL auto_increment,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag`
--

LOCK TABLES `ps_tag` WRITE;
/*!40000 ALTER TABLE `ps_tag` DISABLE KEYS */;
INSERT INTO `ps_tag` VALUES (49,2,'bijoux en scoubidou'),(48,2,'bijoux scoubidou'),(46,2,'Bracelet scoubidou'),(47,2,'scoubidou');
/*!40000 ALTER TABLE `ps_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax`
--

DROP TABLE IF EXISTS `ps_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL auto_increment,
  `rate` decimal(10,3) NOT NULL,
  PRIMARY KEY  (`id_tax`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax`
--

LOCK TABLES `ps_tax` WRITE;
/*!40000 ALTER TABLE `ps_tax` DISABLE KEYS */;
INSERT INTO `ps_tax` VALUES (1,'19.600'),(5,'0.000');
/*!40000 ALTER TABLE `ps_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_lang`
--

DROP TABLE IF EXISTS `ps_tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `tax_lang_index` (`id_tax`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_lang`
--

LOCK TABLES `ps_tax_lang` WRITE;
/*!40000 ALTER TABLE `ps_tax_lang` DISABLE KEYS */;
INSERT INTO `ps_tax_lang` VALUES (1,1,'VAT 19.6%'),(1,2,'TVA 19.6%'),(5,2,'0');
/*!40000 ALTER TABLE `ps_tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_state`
--

DROP TABLE IF EXISTS `ps_tax_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_state` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned NOT NULL,
  KEY `tax_state_index` (`id_tax`,`id_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_state`
--

LOCK TABLES `ps_tax_state` WRITE;
/*!40000 ALTER TABLE `ps_tax_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tax_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_zone`
--

DROP TABLE IF EXISTS `ps_tax_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_zone` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  KEY `tax_zone_index` (`id_tax`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_zone`
--

LOCK TABLES `ps_tax_zone` WRITE;
/*!40000 ALTER TABLE `ps_tax_zone` DISABLE KEYS */;
INSERT INTO `ps_tax_zone` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_tax_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_timezone`
--

DROP TABLE IF EXISTS `ps_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_timezone`)
) ENGINE=MyISAM AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_timezone`
--

LOCK TABLES `ps_timezone` WRITE;
/*!40000 ALTER TABLE `ps_timezone` DISABLE KEYS */;
INSERT INTO `ps_timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `ps_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_web_browser`
--

DROP TABLE IF EXISTS `ps_web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  PRIMARY KEY  (`id_web_browser`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_web_browser`
--

LOCK TABLES `ps_web_browser` WRITE;
/*!40000 ALTER TABLE `ps_web_browser` DISABLE KEYS */;
INSERT INTO `ps_web_browser` VALUES (1,'Safari'),(2,'Firefox 2.x'),(3,'Firefox 3.x'),(4,'Opera'),(5,'IE 6.x'),(6,'IE 7.x'),(7,'IE 8.x'),(8,'Google Chrome');
/*!40000 ALTER TABLE `ps_web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_wishlist`
--

DROP TABLE IF EXISTS `ps_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_wishlist` (
  `id_wishlist` int(10) unsigned NOT NULL auto_increment,
  `id_customer` int(10) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `counter` int(10) unsigned default NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY  (`id_wishlist`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_wishlist`
--

LOCK TABLES `ps_wishlist` WRITE;
/*!40000 ALTER TABLE `ps_wishlist` DISABLE KEYS */;
INSERT INTO `ps_wishlist` VALUES (1,2,'4FB66E0C83DF7960','My WishList',3,'2010-07-21 17:32:56','2010-07-21 17:32:56'),(3,4,'5CB5CB7E39C7F21B','My WishList',2,'2010-10-24 11:25:19','2010-10-24 11:25:19');
/*!40000 ALTER TABLE `ps_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_wishlist_email`
--

DROP TABLE IF EXISTS `ps_wishlist_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_wishlist_email` (
  `id_wishlist` int(10) unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_wishlist_email`
--

LOCK TABLES `ps_wishlist_email` WRITE;
/*!40000 ALTER TABLE `ps_wishlist_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_wishlist_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_wishlist_product`
--

DROP TABLE IF EXISTS `ps_wishlist_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_wishlist_product` (
  `id_wishlist_product` int(10) NOT NULL auto_increment,
  `id_wishlist` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id_wishlist_product`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_wishlist_product`
--

LOCK TABLES `ps_wishlist_product` WRITE;
/*!40000 ALTER TABLE `ps_wishlist_product` DISABLE KEYS */;
INSERT INTO `ps_wishlist_product` VALUES (1,1,21,0,1,1),(2,3,22,0,2,1),(3,3,101,0,1,1),(4,1,101,0,1,1);
/*!40000 ALTER TABLE `ps_wishlist_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_wishlist_product_cart`
--

DROP TABLE IF EXISTS `ps_wishlist_product_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_wishlist_product_cart` (
  `id_wishlist_product` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_wishlist_product_cart`
--

LOCK TABLES `ps_wishlist_product_cart` WRITE;
/*!40000 ALTER TABLE `ps_wishlist_product_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_wishlist_product_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone`
--

DROP TABLE IF EXISTS `ps_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone`
--

LOCK TABLES `ps_zone` WRITE;
/*!40000 ALTER TABLE `ps_zone` DISABLE KEYS */;
INSERT INTO `ps_zone` VALUES (12,'Ile de France',1,1),(13,'Province',1,1);
/*!40000 ALTER TABLE `ps_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Monsieur WordPress','','http://wordpress.org/','','2010-10-26 08:04:21','2010-10-26 08:04:21','Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES (1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(2,'http://wordpress.org/news/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/news/feed/'),(3,'http://wordpress.org/extend/ideas/','Suggest Ideas','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(4,'http://wordpress.org/support/','Support Forum','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(5,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(6,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,0,'siteurl','http://www.mariannedenis.com/prestashop/blog','yes'),(2,0,'blogname','Marianne Denis Blog','yes'),(3,0,'blogdescription','Un site utilisant WordPress','yes'),(4,0,'users_can_register','0','yes'),(5,0,'admin_email','robin@studio-http.com','yes'),(6,0,'start_of_week','1','yes'),(7,0,'use_balanceTags','0','yes'),(8,0,'use_smilies','1','yes'),(9,0,'require_name_email','1','yes'),(10,0,'comments_notify','1','yes'),(11,0,'posts_per_rss','10','yes'),(12,0,'rss_use_excerpt','0','yes'),(13,0,'mailserver_url','mail.example.com','yes'),(14,0,'mailserver_login','login@example.com','yes'),(15,0,'mailserver_pass','password','yes'),(16,0,'mailserver_port','110','yes'),(17,0,'default_category','1','yes'),(18,0,'default_comment_status','open','yes'),(19,0,'default_ping_status','open','yes'),(20,0,'default_pingback_flag','1','yes'),(21,0,'default_post_edit_rows','10','yes'),(22,0,'posts_per_page','10','yes'),(23,0,'date_format','j F Y','yes'),(24,0,'time_format','G \\h i \\m\\i\\n','yes'),(25,0,'links_updated_date_format','j F Y, G \\h i \\m\\i\\n','yes'),(26,0,'links_recently_updated_prepend','<em>','yes'),(27,0,'links_recently_updated_append','</em>','yes'),(28,0,'links_recently_updated_time','120','yes'),(29,0,'comment_moderation','0','yes'),(30,0,'moderation_notify','1','yes'),(31,0,'permalink_structure','','yes'),(32,0,'gzipcompression','0','yes'),(33,0,'hack_file','0','yes'),(34,0,'blog_charset','UTF-8','yes'),(35,0,'moderation_keys','','no'),(36,0,'active_plugins','a:0:{}','yes'),(37,0,'home','http://www.mariannedenis.com/prestashop/blog','yes'),(38,0,'category_base','','yes'),(39,0,'ping_sites','http://rpc.pingomatic.com/','yes'),(40,0,'advanced_edit','0','yes'),(41,0,'comment_max_links','2','yes'),(42,0,'gmt_offset','0','yes'),(43,0,'default_email_category','1','yes'),(44,0,'recently_edited','','no'),(45,0,'template','twentyten','yes'),(46,0,'stylesheet','twentyten','yes'),(47,0,'comment_whitelist','1','yes'),(48,0,'blacklist_keys','','no'),(49,0,'comment_registration','0','yes'),(50,0,'rss_language','en','yes'),(51,0,'html_type','text/html','yes'),(52,0,'use_trackback','0','yes'),(53,0,'default_role','subscriber','yes'),(54,0,'db_version','15477','yes'),(55,0,'uploads_use_yearmonth_folders','1','yes'),(56,0,'upload_path','','yes'),(57,0,'blog_public','1','yes'),(58,0,'default_link_category','2','yes'),(59,0,'show_on_front','posts','yes'),(60,0,'tag_base','','yes'),(61,0,'show_avatars','1','yes'),(62,0,'avatar_rating','G','yes'),(63,0,'upload_url_path','','yes'),(64,0,'thumbnail_size_w','150','yes'),(65,0,'thumbnail_size_h','150','yes'),(66,0,'thumbnail_crop','1','yes'),(67,0,'medium_size_w','300','yes'),(68,0,'medium_size_h','300','yes'),(69,0,'avatar_default','mystery','yes'),(70,0,'enable_app','0','yes'),(71,0,'enable_xmlrpc','0','yes'),(72,0,'large_size_w','1024','yes'),(73,0,'large_size_h','1024','yes'),(74,0,'image_default_link_type','file','yes'),(75,0,'image_default_size','','yes'),(76,0,'image_default_align','','yes'),(77,0,'close_comments_for_old_posts','0','yes'),(78,0,'close_comments_days_old','14','yes'),(79,0,'thread_comments','1','yes'),(80,0,'thread_comments_depth','5','yes'),(81,0,'page_comments','0','yes'),(82,0,'comments_per_page','50','yes'),(83,0,'default_comments_page','newest','yes'),(84,0,'comment_order','asc','yes'),(85,0,'sticky_posts','a:0:{}','yes'),(86,0,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(87,0,'widget_text','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(88,0,'widget_rss','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(89,0,'timezone_string','','yes'),(90,0,'embed_autourls','1','yes'),(91,0,'embed_size_w','','yes'),(92,0,'embed_size_h','600','yes'),(93,0,'page_for_posts','0','yes'),(94,0,'page_on_front','0','yes'),(95,0,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,0,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,0,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,0,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,0,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,0,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,0,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(102,0,'cron','a:3:{i:1288123464;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1288166677;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(103,0,'_transient_doing_cron','1288080324','yes'),(104,0,'_site_transient_timeout_theme_roots','1288087464','yes'),(105,0,'_site_transient_theme_roots','a:1:{s:9:\"twentyten\";s:7:\"/themes\";}','yes'),(109,0,'widget_pages','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(106,0,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":7:{s:8:\"response\";s:6:\"latest\";s:3:\"url\";s:24:\"http://fr.wordpress.org/\";s:7:\"package\";s:49:\"http://fr.wordpress.org/wordpress-3.0.1-fr_FR.zip\";s:7:\"current\";s:5:\"3.0.1\";s:6:\"locale\";s:5:\"fr_FR\";s:11:\"php_version\";s:3:\"4.3\";s:13:\"mysql_version\";s:5:\"4.1.2\";}i:1;O:8:\"stdClass\":7:{s:8:\"response\";s:6:\"latest\";s:3:\"url\";s:30:\"http://wordpress.org/download/\";s:7:\"package\";s:40:\"http://wordpress.org/wordpress-3.0.1.zip\";s:7:\"current\";s:5:\"3.0.1\";s:6:\"locale\";s:5:\"en_US\";s:11:\"php_version\";s:3:\"4.3\";s:13:\"mysql_version\";s:5:\"4.1.2\";}}s:12:\"last_checked\";i:1288080265;s:15:\"version_checked\";s:5:\"3.0.1\";}','yes'),(107,0,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1288080265;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"2.3.0\";s:9:\"hello.php\";s:5:\"1.5.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":5:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:44:\"http://wordpress.org/extend/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.2.4.0.zip\";}}}','yes'),(108,0,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1288080265;}','yes'),(110,0,'widget_calendar','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(111,0,'widget_links','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(112,0,'widget_tag_cloud','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(113,0,'widget_nav_menu','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(114,0,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:44:\"http://www.mariannedenis.com/prestashop/blog\";s:4:\"link\";s:120:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://www.mariannedenis.com/prestashop/blog/\";s:3:\"url\";s:153:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://www.mariannedenis.com/prestashop/blog/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:35:\"http://www.wordpress-fr.net/planet/\";s:3:\"url\";s:55:\"http://feeds2.feedburner.com/WordpressFrancophonePlanet\";s:5:\"title\";s:14:\"Blog WordPress\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:35:\"http://www.wordpress-fr.net/planet/\";s:3:\"url\";s:55:\"http://feeds2.feedburner.com/WordpressFrancophonePlanet\";s:5:\"title\";s:46:\"Autres actualités de WordPress (en français)\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),(115,0,'current_theme','Twenty Ten','yes'),(116,0,'can_compress_scripts','0','yes'),(117,0,'_transient_timeout_feed_ed99545c6586e2b6bbbfbf1a22ad6d2d','1288123479','no'),(118,0,'_transient_feed_ed99545c6586e2b6bbbfbf1a22ad6d2d','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:1:\"\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:3:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"link:http://www.mariannedenis.com/prestashop/blog/ - Google Blog Search\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"http://blogsearch.google.com/blogsearch?scoring=d&ie=ISO-8859-1&num=10&q=link:http://www.mariannedenis.com/prestashop/blog/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"Your search - <b>link:http://www.mariannedenis.com/prestashop/blog/</b> - did not match any documents.   \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://a9.com/-/spec/opensearch/1.1/\";a:3:{s:12:\"totalResults\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:10:\"startIndex\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:12:\"itemsPerPage\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:9:{s:4:\"date\";s:29:\"Tue, 26 Oct 2010 08:04:42 GMT\";s:6:\"pragma\";s:8:\"no-cache\";s:7:\"expires\";s:29:\"Fri, 01 Jan 1990 00:00:00 GMT\";s:13:\"cache-control\";s:25:\"no-cache, must-revalidate\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"set-cookie\";s:138:\"PREF=ID=812b21f61ffaae11:TM=1288080282:LM=1288080282:S=3f1l1tUn9BBrMoTD; expires=Thu, 25-Oct-2012 08:04:42 GMT; path=/; domain=.google.com\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:6:\"server\";s:4:\"bsfe\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";}s:5:\"build\";s:14:\"20090627192103\";}','no'),(119,0,'_transient_timeout_feed_mod_ed99545c6586e2b6bbbfbf1a22ad6d2d','1288123479','no'),(120,0,'_transient_feed_mod_ed99545c6586e2b6bbbfbf1a22ad6d2d','1288080279','no'),(121,0,'_transient_timeout_feed_2fb9572e3d6a42f680e36370936a57ae','1288123479','no'),(122,0,'_transient_feed_2fb9572e3d6a42f680e36370936a57ae','a:4:{s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"feed\";a:1:{i:0;a:6:{s:4:\"data\";s:303:\"\n    \n    \n    \n    \n    \n    \n    \n  \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:27:\"http://www.w3.org/2005/Atom\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WordPress Francophone : Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"subtitle\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/planet/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:3:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:9:\"alternate\";s:4:\"type\";s:9:\"text/html\";s:4:\"href\";s:35:\"http://www.wordpress-fr.net/planet/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:20:\"application/atom+xml\";s:4:\"href\";s:54:\"http://feeds.feedburner.com/WordpressFrancophonePlanet\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"updated\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"2010-10-26T09:49:35Z\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Author\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:5:\"entry\";a:20:{i:0;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WordPress Francophone : L’Hebdo WordPress : BlackBerry – Registrar – Easter Eggs\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/41lmLmVB-SE/lhebdo-wordpress-blackberry-registrar-easter-eggs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:116:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/41lmLmVB-SE/lhebdo-wordpress-blackberry-registrar-easter-eggs\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-26T07:08:41+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:4040:\"<h3>Des thèmes en nombre</h3>\n<p>Le répertoire officiel de thèmes disponible sur wordpress.org n&#8217;est pas la seule source pour trouver un design à son site. <a href=\"http://www.monwordpress.com/\">MonWordPress</a> nous propose un répertoire qui fourmille de thèmes divers et variés classés par sortes. Il est d&#8217;ores et déjà ajouté à notre page dévolue aux thèmes.</p>\n<h3>WordPress pour BlackBerry</h3>\n<p>La version WordPress mobile pour terminaux <a href=\"http://blackberry.wordpress.org/2010/10/18/release-1-4-4/\">BlackBerry passe en 1.4.4</a>. Mettez à jour si vous êtes concernés.</p>\n<h3>Automattic est un registrar</h3>\n<p>Depuis la semaine dernière, <a href=\"http://weblogtoolscollection.com/archives/2010/10/20/automattic-is-now-a-domain-registrar/\">Automattic est officiellement un registrar</a> accrédité par l&#8217;ICANN. La société est donc en mesure de délivrer directement des noms de domaine sans passer par un quelconque intermédiaire (actuellement GoDaddy notamment).</p>\n<h3>BuddyPress 1.2.6</h3>\n<p>BuddyPress évolue une fois de plus pour arriver <a href=\"http://buddypress.org/2010/10/buddypress-1-2-6/\">à sa version 1.2.6</a>. Ce dernier opus corrige de nombreuses failles de sécurités et autres bugs, améliore la compatibilité avec WordPress 3.0 et tout un tas d&#8217;autres choses à découvrir sur le site officiel.</p>\n<h3>Adobe migre ses blogs sur WordPress.com</h3>\n<p>Après Microsoft qui a migré son service Windows Live Space, voici qu&#8217;un autre ténor du logiciel lui emboite le pas. <a href=\"http://publisherblog.automattic.com/2010/10/18/adobe-migrates-to-wordpress/\">Adobe vient de migrer également ses blogs</a> vers le services géré par Automattic. Auparavant sous Movable Type, la marque propriétaire de la célèbre technologie Flash rejoint donc WordPress.</p>\n<h3>Drupal vs WordPress</h3>\n<p>Voici un <a href=\"http://www.slideshare.net/seanyo/drupalvs-wordpress-5530157\">diaporama sympathique</a> comparant WordPress et Drupal.</p>\n<h3>WP-Popular : moteur de recherche</h3>\n<p><a href=\"http://wp-popular.com/\">WP Popular est un moteur de recherche spécialisé dans WordPress</a>. Il n&#8217;indexe que des sites traitant de WordPress. Je ne connais pas vraiment ses critères d&#8217;indexation et encore moins sa fiabilité. Alors prudence, mais le concept est original à mettre en avant.</p>\n<h3>Les easter eggs doivent-ils être supprimés ?</h3>\n<p><a href=\"http://www.wptavern.com/should-easter-eggs-in-wordpress-be-removed\">WordPress Tavern vient de mettre en ligne un sondage</a> demandant si la suppression des easter eggs de WordPress (les petites blagues des développeurs bien cachées dans le code de WordPress tels que la page de Matrix lors de la comparaison de 2 versions identiques) devrait être envisagée. En effet, il apparait que des utilisateurs néophytes se soient fait avoir par une telle plaisanteries ayant cru que leur site se soit fait pirater. Donnez votre avis. Personnellement, je trouverai dommage que ce soit retiré&#8230;</p>\n<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=41lmLmVB-SE:y69mHCFaNcE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=41lmLmVB-SE:y69mHCFaNcE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=41lmLmVB-SE:y69mHCFaNcE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=41lmLmVB-SE:y69mHCFaNcE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=41lmLmVB-SE:y69mHCFaNcE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=41lmLmVB-SE:y69mHCFaNcE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/41lmLmVB-SE\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WordPress Channel : Créer une page d’archives listant les articles par date sous WordPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/wN3OU2KoXks/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/wN3OU2KoXks/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-22T13:47:47+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1600:\"Ce tutoriel aborde une méthode pour créer automatiquement une page d\'archives reprenant vos articles tout en les séparant par une date mensuelle ou annuelle par exemple. Un affichage autrement plus sympa qu\'une liste de liens chronologique.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=wN3OU2KoXks:B1qzPthH2wY:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=wN3OU2KoXks:B1qzPthH2wY:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=wN3OU2KoXks:B1qzPthH2wY:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=wN3OU2KoXks:B1qzPthH2wY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/wN3OU2KoXks\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WordPress Channel : Diner, commandez une table chez WooThemes\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/D-pzM9vQifc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/D-pzM9vQifc/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-20T18:50:30+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1618:\"Diner est le nouveau thème WordPress premium de chez WooThemes. Spécialement conçu pour les restaurateurs, ce thème offre des fonctionnalités vraiment sympathiques dont la réservation de tables en ligne et l\'intégration de Google Maps. Revue de détails.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=D-pzM9vQifc:ouyOjTBig3c:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=D-pzM9vQifc:ouyOjTBig3c:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=D-pzM9vQifc:ouyOjTBig3c:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=D-pzM9vQifc:ouyOjTBig3c:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/D-pzM9vQifc\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"SeoMix » Wordpress : Supprimer le Nofollow WordPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:165:\"http://www.seomix.fr/wordpress/hack/nofollow-sans-plugin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedurl&amp;utm_campaign=twit-supprimerlenofo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:165:\"http://www.seomix.fr/wordpress/hack/nofollow-sans-plugin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedurl&amp;utm_campaign=twit-supprimerlenofo\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-20T09:00:02+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Daniel Roch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1020:\"<div><img width=\"180\" height=\"120\" src=\"http://www.seomix.fr/wp-content/uploads/2010/10/nofollow-180x120.jpg\" class=\"attachment-thumbnail wp-post-image\" alt=\"NoFollow\" title=\"Rel NoFollow\" /></div>Comment modifier Wordpress pour enlever les liens nofollow des commentaires ? La réponse est donné par SeoMix, avec un simple hack.<p></strong><a href=\"http://www.seomix.fr/wordpress/hack/nofollow-sans-plugin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedcom&amp;utm_campaign=twit-supprimerlenofo#comments\" title=\"Commenter Supprimer le Nofollow WordPress\">Commentez cet article !</a></strong> (En plus, SeoMix est en DoFollow)</p><p><strong>Article original :</strong> <a href=\"http://www.seomix.fr/wordpress/hack/nofollow-sans-plugin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedarticleorigine&amp;utm_campaign=twit-supprimerlenofo\">Supprimer le Nofollow WordPress</a>.</p><hr /><img src=\"http://feeds.feedburner.com/~r/seomix-wordpress/~4/bO0LLoZfd6I\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WordPress Francophone : L’Hebdo WordPress : WordPress 3.1 – bbPress – WordCamp\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PcVVHoFrpoY/lhebdo-wordpress-wordpress-3-1-bbpress-wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:114:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PcVVHoFrpoY/lhebdo-wordpress-wordpress-3-1-bbpress-wordcamp\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-19T07:09:08+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:4956:\"<h3>Résoudre les erreurs &laquo;&nbsp;Memory size of&#8230;&nbsp;&raquo;</h3>\n<p><a href=\"http://wpengineer.com/2065/memory-size-exhausted/\">WPEngineer nous démontre comment résoudre</a> le problème qui engendre les erreurs de type &laquo;&nbsp;Memory size of&#8230;&nbsp;&raquo;</p>\n<h3>WP Honors 2010</h3>\n<p>Les Oscars sont au cinéma ce que les <a href=\"http://2010.wphonors.com/\">WP Honors </a>sont dorénavant à WordPress. Une initiative vient en effet, d&#8217;être mise sur pied. Elle vise à élire le meilleur représentant de WordPress toute catégorie confondue. Basé sur le nombre de vote seulement, les votes sont réalisables jusque mi-novembre. Les résultats seront connus en janvier. Je ne sais pas vraiment quel crédit accorder à pareil projet, mais notons que <a href=\"http://weblogtoolscollection.com/archives/2010/10/12/wordpress-honors-2010-why-you-should-register-2/\">Weblog Tools Collection l&#8217;encourage</a>.</p>\n<h3>Personnaliser son tableau de bord</h3>\n<p>On a l&#8217;habitude de personnaliser son thème afin que le design de notre site nous ressemble&#8230; mais l&#8217;administration de WordPress n&#8217;a pas toujours la même attention. Le site <a href=\"http://digwp.com/2010/10/customize-wordpress-dashboard/\">digwp.com nous propose donc de personnaliser notre tableau de bord</a>.</p>\n<h3>Annoter ses extensions</h3>\n<p>Vous réalisez un blog pour des amis, vous concevez un site pour une société&#8230; vous avez donc sans doute choisi d&#8217;utiliser des extensions. Afin de les rendre plus explicites au futur gestionnaire du site, <a href=\"http://www.geekeries.fr/decouvertes/ajouter-notes-personnalisees-extensions-installees-blog-wordpress\">voici une extension qui va vous permettre d&#8217;ajouter une annotation</a> à chaque extension dans le gestionnaire concernés.</p>\n<h3>WordPress 3.1 : bilan avant &laquo;&nbsp;feature freeze&nbsp;&raquo;</h3>\n<p>Le mode &laquo;&nbsp;feature freeze&nbsp;&raquo; est pour bientôt. C&#8217;est le 1er novembre que les développeurs vont stopper le développement pour s&#8217;occuper uniquement du débogage. <a href=\"http://weblogtoolscollection.com/archives/2010/10/16/wordpress-3-1-feature-status-update/\">WLTC nous propose de récapituler les fonctionnalités </a>qui seront ajoutées à WordPress 3.1.</p>\n<h3>Lister les billets récemment mis à jour</h3>\n<p><a href=\"http://twitter.com/#!/br1o/statuses/27557429007\">Br1o a déniché un article</a> traitant de la manière dont on peut créer une <a href=\"http://blog.websourcing.fr/wordpress-listing-billets-mis-a-jour-astuce/\">liste des billets mis à jour dernièrement</a>.</p>\n<h3>Mettre l&#8217;éditeur visuel en HTML par défaut</h3>\n<p>Vous utilisez le plus souvent le mode HTML de l&#8217;éditeur visuel et vous en avez assez de devoir à chaque fois cliquer sur le bouton idoine pour basculer dans ce mode. <a href=\"http://wpmu.org/daily-tip-how-to-set-the-default-editor-to-visual-or-html-in-wordpress/\">Voici le remède que nous donne WPMU.org</a>.</p>\n<h3>Un WordCamp à Lyon ?</h3>\n<p>gpastre est un membre du forum WPFR, il propose depuis dimanche d&#8217;organiser un WordCamp sur Lyon. Il fait appel aux lyonnais utilisateurs de WordPress. S&#8217;il y a des intéressés, manifestez-vous sur <a href=\"http://www.wordpress-fr.net/support/viewtopic.php?id=43669\">cette discussion du forum</a>.</p>\n<h3>Où trouver des thèmes WordPress</h3>\n<p>On connait le répertoire officiel sur le site wordpress.org, mais <a href=\"http://weblogtoolscollection.com/archives/2010/10/18/new-ways-to-find-wordpress-themes/\">WLTC nous propose de découvrir d&#8217;autres sources potentielles</a> de thèmes WordPress.</p>\n<h3>Intégrer bbPress à WordPress</h3>\n<p>Voici une demande souvent exprimée sur les forums de WPFR. Aurélien de WPChannel <a href=\"http://wpchannel.com/integrer-forum-bbpress-blog-wordpress-3-0/\">nous indique la démarche pour intégrer le forum bbPress à son site WordPress</a>.</p>\n<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PcVVHoFrpoY:XtPnzMK-vrc:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PcVVHoFrpoY:XtPnzMK-vrc:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PcVVHoFrpoY:XtPnzMK-vrc:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PcVVHoFrpoY:XtPnzMK-vrc:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PcVVHoFrpoY:XtPnzMK-vrc:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PcVVHoFrpoY:XtPnzMK-vrc:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PcVVHoFrpoY\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WordPress Channel : Intégrer un forum bbPress dans votre blog WordPress 3.0\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/yi-FqND8LE4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/yi-FqND8LE4/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-18T19:09:44+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1718:\"Face au succès du <a href=\"http://wpchannel.com/creation-forum-wordpress-tutorial-installation-simple-press-forum/\" title=\"Création d\'un forum WordPress avec le plugin Simple Press\">tutoriel sur l\'installation du forum Simple Press</a>, je vous propose la même chose mais en utilisant bbPress - le script de chez Automattic, l\'entreprise derrière WordPress.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=yi-FqND8LE4:Yhb17tltB4A:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=yi-FqND8LE4:Yhb17tltB4A:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=yi-FqND8LE4:Yhb17tltB4A:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=yi-FqND8LE4:Yhb17tltB4A:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/yi-FqND8LE4\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"WordPress Channel : [Sondage] Répondez à notre enquête lecteur et remportez 2 licences WPtouch Pro 2.0\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/l_gJgJP5-co/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/l_gJgJP5-co/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-16T09:11:55+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1670:\"Le projet WordPress Channel est une aventure formidable dont l\'ampleur ne cesse de croître. Mais ce site est avant tout le vôtre et j\'ai à coeur de l\'améliorer au quotidien. Aujourd\'hui, je vous donne la parole pour me faire part de vos besoins... et 2 licences du plugin WPtouch Pro sont à gagner en prime !<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=l_gJgJP5-co:QsOdoNImoDU:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=l_gJgJP5-co:QsOdoNImoDU:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=l_gJgJP5-co:QsOdoNImoDU:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=l_gJgJP5-co:QsOdoNImoDU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/l_gJgJP5-co\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"css4design : Markdown on Save — L’ami HTML de Markdown pour WordPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://css4design.com/markdown-on-save-wordpress-html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:53:\"http://css4design.com/markdown-on-save-wordpress-html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-15T17:44:35+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Bruno Bichet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:3439:\"<div class=\"tweetmeme_button\" style=\"float: right; margin-left: 18px;\">\n			<a href=\"http://api.tweetmeme.com/share?url=http%3A%2F%2Fcss4design.com%2Fmarkdown-on-save-wordpress-html\">\n				<img src=\"http://api.tweetmeme.com/imagebutton.gif?url=http%3A%2F%2Fcss4design.com%2Fmarkdown-on-save-wordpress-html&amp;source=br1o&amp;style=normal&amp;service=bit.ly&amp;service_api=R_0c1ee4b64f105d1b2672690740a77d6a&amp;b=2\" height=\"61\" width=\"50\" />\n			</a>\n		</div><p><a href=\"http://wordpress.org/extend/plugins/markdown-on-save/\">Markdown on Save</a> est un plugin WordPress qui permet de rédiger des articles avec la <a href=\"http://michelf.com/projets/php-markdown/extra/\">syntaxe Markdown</a> tout en enregistrant la version HTML dans en base de donnée. La version <em>Markdown</em> est sauvergardée dans une nouvelle table <em>post_content_formatted </em>pour conserver l&#8217;intégrité de vos articles. En l&#8217;absence du plugin <em>Markdown,</em> c&#8217;est la version HTML qui est enregistrée dans la table <em>post_content,</em> comme d&#8217;habitude<em>.<span id=\"more-7425\"></span></em></p>\n\n<h2>Markdown on Save</h2>\n\n<p>Ce plugin présente l&#8217;avantage d&#8217;accélérer l&#8217;affichage de vos articles puisqu&#8217;il n&#8217;est pas nécessaire de les convertir à la volée depuis la syntaxe <em>Markdown</em> vers la version HTML. Lors de la modification d&#8217;un article, c&#8217;est la version <em>Markdown</em> qui s&#8217;affiche. Attention toutefois aux éditeurs externes qui vous feront perdre la version <em>Markdown</em> de votre billet, ce qui en soi n&#8217;est pas dramatique.</p>\n\n<h2>C&#8217;est quoi Markdown ?</h2>\n\n<blockquote><a href=\"http://daringfireball.net/projects/markdown/\">Markdown</a> est un convertisseur qui transforme du texte « brut » en code XHTML. C’est une alternative aux éditeurs WYSIWYG qui ne s’adaptent pas forcément à tous les besoins. <em>Markdown</em> vous permettra de rédiger des textes en utilisant un format de balisage de texte simple à écrire et à lire, puis à le convertir en code XHTML (ou HTML en option) structurellement valide.</blockquote>\n\n<div id=\"attachment_7435\" class=\"wp-caption alignnone\" style=\"width: 625px\"><a href=\"http://michelf.com/projets/php-markdown/syntaxe/\"><img class=\"size-full wp-image-7435 \" title=\"syntaxe-markdown\" src=\"http://css4design.com/wp-content/uploads/2010/10/syntaxe-markdown.png\" alt=\"\" width=\"615\" height=\"292\" /></a><p class=\"wp-caption-text\">La syntaxe Markdown en détail. Cliquez sur l&#39;image pour accéder au site de Michel Fortin</p></div>\n\n<p>Un des intérêts de <em>Markdown</em> est qu&#8217;il s&#8217;agit d&#8217;un simple fichier que l&#8217;on peut utiliser dans n&#8217;importe quel projet et pas nécessairement dans WordPress. Il ne s&#8217;agit pas d&#8217;un <a href=\"http://css4design.com/editeurs-html-wysiwyg\">éditeur HTML WYSIWYG</a>, mais c&#8217;est une des rares solutions qui permet d&#8217;obtenir des imbrications de balises complexes avec un minimum d&#8217;effort.</p>\n\n<p>Lire <a rel=\"bookmark\" href=\"http://css4design.com/markdown-un-plugin-wordpress-pour-produire-du-xhtml\">Markdown, un plugin WordPress pour produire du XHTML facilement, rapidement et proprement</a> pour plus d&#8217;information<em>.</em></p>\n\n<p>Merci beaucoup à <a href=\"http://www.li-an.fr/wpplugins/\">Li-An</a> pour m&#8217;avoir prévenu de la sortie de ce plugin très utile o/</p>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WordPress Channel : WPtouch Pro 2.0 : quand WordPress devient mobile\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/PYDTun_iTWM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/PYDTun_iTWM/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-15T16:46:00+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1621:\"Le Web mobile connaît un développement exponentiel et il est donc capital d\'offrir à vos visiteurs une version compatible iPhone, Windows Mobile ou BlackBerry pour votre site Web. C\'est là qu\'intervient WPtouch Pro LE plugin WordPress pour un affichage mobile.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=PYDTun_iTWM:YsVsYhw9P60:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=PYDTun_iTWM:YsVsYhw9P60:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=PYDTun_iTWM:YsVsYhw9P60:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=PYDTun_iTWM:YsVsYhw9P60:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/PYDTun_iTWM\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"SeoMix » Wordpress : Le guide de l\'admin WordPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:156:\"http://www.seomix.fr/wordpress/hack/guide-admin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedurl&amp;utm_campaign=twit-leguidedeladmin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:156:\"http://www.seomix.fr/wordpress/hack/guide-admin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedurl&amp;utm_campaign=twit-leguidedeladmin\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-14T09:00:28+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Daniel Roch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1050:\"<div><img width=\"180\" height=\"44\" src=\"http://www.seomix.fr/wp-content/uploads/2010/10/wordpress-admin-180x44.jpg\" class=\"attachment-thumbnail wp-post-image\" alt=\"wordpress admin\" title=\"Le guide de l\'administration Wordpress\" /></div>Tout ce que vous avez toujours voulu faire sur l\'admin de Wordpress : tri des colonnes, changer le footer et logo, supprimer des menus et bien plus<p></strong><a href=\"http://www.seomix.fr/wordpress/hack/guide-admin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedcom&amp;utm_campaign=twit-leguidedeladmin#comments\" title=\"Commenter Le guide de l\'admin WordPress\">Commentez cet article !</a></strong> (En plus, SeoMix est en DoFollow)</p><p><strong>Article original :</strong> <a href=\"http://www.seomix.fr/wordpress/hack/guide-admin/?utm_source=feedburner&amp;utm_medium=flux-rss&amp;utm_content=feedarticleorigine&amp;utm_campaign=twit-leguidedeladmin\">Le guide de l\'admin WordPress</a>.</p><hr /><img src=\"http://feeds.feedburner.com/~r/seomix-wordpress/~4/RiC1QON5rPQ\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"2803 : La bible wordpress 3.0\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://www.2803.fr/wordpress/bible-wordpress-11070/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:51:\"http://www.2803.fr/wordpress/bible-wordpress-11070/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-13T14:55:52+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"henri\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1259:\"<p>La mise à jour du livre \"Wordpress 3.0\" des compères Amaury Balmer, Francis Chouquet et Xavier Borderie vient de paraitre. Comme pour la première édition on trouve l\'essentiel et plus pour gérer un blog sous wordpress mais aussi pour développer des plugins ou encore un thème.</p>\n<p></p>\n<p>Un livre en vente sur amazon (31,35€). Et puis si vous ne trouvez pas votre bonheur dans ce bouquin il reste le forum de wordpress-fr qui est très actif et réactif!</p>\n<p><em>-- Attachment --</em></p><p><a href=\"http://www.2803.fr/wordpress/bible-wordpress-11070/\"><img width=\"220\" height=\"165\" src=\"http://www.2803.fr/wp-content/uploads/2010/10/wordpress301-220x165.jpg\" class=\"attachment-post-thumbnail wp-post-image\" alt=\"\" title=\"\" /></a></p><hr /><strong>Vous venez de lire la version freemium de l\'article, la version premium (avec les médias) est ici : </strong><a href=\"http://www.2803.fr/wordpress/bible-wordpress-11070/\">La bible wordpress 3.0</a><br/>N\'h&eacute;sitez pas &agrave; suivre le compte <a href=\"http://twitter.com/henrilabarre\">Twitter</a> et la page <a href=\"http://www.facebook.com/vingt.huit.zero.trois\">Facebook</a><br/>\nCopyright &copy; 2005-2010 <strong><a href=\"http://www.2803media.fr\">2803 MEDIA</a></strong><br/><hr />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"css4design : Le petit journal du web : HTML5, CSS3, jQuery, WordPress, Métiers du Web, Vie quotidienne et Nostalgeek\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://css4design.com/le-petit-journal-du-web-7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:47:\"http://css4design.com/le-petit-journal-du-web-7\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-12T09:54:54+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Bruno Bichet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:20041:\"<div class=\"tweetmeme_button\" style=\"float: right; margin-left: 18px;\">\n			<a href=\"http://api.tweetmeme.com/share?url=http%3A%2F%2Fcss4design.com%2Fle-petit-journal-du-web-7\">\n				<img src=\"http://api.tweetmeme.com/imagebutton.gif?url=http%3A%2F%2Fcss4design.com%2Fle-petit-journal-du-web-7&amp;source=br1o&amp;style=normal&amp;service=bit.ly&amp;service_api=R_0c1ee4b64f105d1b2672690740a77d6a&amp;b=2\" height=\"61\" width=\"50\" />\n			</a>\n		</div><p>Vous l&#8217;attendiez, il est là, c&#8217;est <a href=\"http://css4design.com/articles/le-petit-journal-du-web\">le petit journal du web !</a> <em>A la Une</em> cette semaine : des ressources pour exploiter au mieux les propriétés CSS3, un dossier sur l&#8217;ARIA-nisation et la HTML5-nisation de WordPress, le point sur <em>display: inline-block</em>, un tutoriel conséquent sur Javascript, le bilinguisme et l&#8217;optimisation des performances dans WordPress (et tout un tas d&#8217;astuces très pratiques). Vous aurez aussi un modèle de cahier des charges et des informations pour partir du bon pied avec vos projets de sites Web. Deux nouvelles rubriques font timidement leur apparition dans cette revue de presse : <em>La vie quotidienne du geek</em> et <em>Nostalgeek</em>.<span id=\"more-7255\"></span></p>\n\n<p><img class=\"alignnone size-full wp-image-7291\" title=\"wordle-petit-journal-du-web1\" src=\"http://css4design.com/wp-content/uploads/2010/10/wordle-petit-journal-du-web1.png\" alt=\"\" width=\"615\" height=\"277\" /></p>\n\n<h2>Breaking News!</h2>\n\n<p>Charité bien ordonnée commence par soi-même : voici la liste des billets que j&#8217;ai mis à jour dernièrement : <a rel=\"bookmark\" href=\"http://css4design.com/choisir-un-frameworks-css\">28 frameworks CSS</a> et <a rel=\"bookmark\" href=\"http://css4design.com/le-petit-journal-de-html5\">Le petit journal permanent de HTML5</a>.</p>\n\n<h2>WordPress</h2>\n\n<p>Une actualité littéraire débordante avec la parution de deux livres sur notre CMS préféré.</p>\n\n<p><img class=\"size-thumbnail wp-image-7311 alignleft\" title=\"site-web-wordpress-3\" src=\"http://css4design.com/wp-content/uploads/2010/10/site-web-wordpress-3-102x102.jpg\" alt=\"\" width=\"102\" height=\"102\" /><a href=\"http://www.rocketwordpress.fr/\">Sites Web avec WordPress 3.0</a> &#8212; Cet ouvrage «100% pratique» paru aux Editions DUNOD est destiné à ceux qui souhaitent découvrir et maîtriser WordPress 3.0 sans perdre de temps. Il a été écrit par Simon Kern (<a href=\"http://www.brindeweb.com/\">Brin d&#8217;web</a> et <a href=\"http://www.alsacreations.fr/\">Alsacréations</a>), concepteur et designer graphique &amp; multimédia pour des des projets web et print. Il est également formateur sur Flash et WordPress. L&#8217;objectif principal du livre est de vous permettre de maitriser la création d’un thème WordPress 3.0 grâce à un concentré de pratiques saines et efficaces. Le livre est accompagné d&#8217;un CD-ROM et la table des matière et un aperçu du livre sont disponibles sur <a href=\"http://www.divvaroom.com/book/dunod/sites-web-avec-wordpress-30-100-pratique/\">DivaBook</a>.</p>\n\n<p><img class=\"alignleft size-thumbnail wp-image-7313\" title=\"wordpress-3\" src=\"http://css4design.com/wp-content/uploads/2010/10/wordpress-3-102x102.gif\" alt=\"\" width=\"102\" height=\"102\" /><a href=\"http://www.pearson.fr/livre/?GCOI=27440100477490\">WordPress 3</a> &#8212;  Cette seconde édition entièrement révisée couvre les nouveautés de la version 3. Les débutants pourront construire un blog et les lecteurs expérimentés approfondiront leurs connaissances techniques : conception de thèmes et d&#8217;extensions, mise en place d&#8217;un réseau de sites avec la fonctionnalité multisites intégrée. WordPress 3 est écrit par <a href=\"http://xavier.borderie.net/\">Xavier Borderie</a>, <a href=\"http://www.francischouquet.com/\">Francis Chouquet</a> et <a href=\"http://wp-box.fr/\">Amaury Balmer</a> &#8212; Salut les gars o/</p>\n\n<p>WordPressez, il en restera toujours quelques chose !</p>\n\n<ul>\n    <li><a href=\"http://www.slideshare.net/yannickcg/bilinguisme-et-wordpresspluginsetastuces-5114896\">Bilinguisme et WordPress : plugins et astuces</a> &#8212; Présentation de Yannick Carrière-Guy composée de 51 slides sur l&#8217;internationalisation (i18n), la localisation (l10n) et les différentes techniques et plugins permettant d&#8217;avoir du contenu bilingue dans WordPress. Via <a href=\"http://onfaitduweb.com/quiboweb/bilinguisme-et-wordpress-plugins-et-astuces/\">On fait du web</a>. Cf. l&#8217;article <a href=\"http://css4design.com/un-blog-wordpress-multilingue-avec-wpml-multilingual-cms\">Un blog WordPress multilingue avec WPML Multilingual CMS</a>.</li>\n    <li><a href=\"http://phollow.fr/2010/09/optimisation-wordpress-vitesse-performances/\">Optimisation WordPress : vitesse et performances</a> &#8212; Le temps d&#8217;affichage d&#8217;une page page est un facteur important dans la perception de votre site par les internautes. Ce billet passe en revue les optimisations que l&#8217;on peut faire sur une installation WordPress pour gagner des secondes et des visiteurs. Au sommaire : les outils nécessaires pour benchmarker son blog, l&#8217;optimisation de la taille des fichiers CSS, les fichiers Javascript, les images, le serveur et le core de WordPress. Lire aussi <a href=\"http://www.antoinebenkemoun.fr/2010/09/accelerer-son-site-web-grace-a-squid-1/\">Accélérer son site web avec Squid</a> et <a href=\"http://blog.nicolargo.com/2010/09/architecture-pour-un-blog-optimise.html\">Architecture pour un blog optimisé</a>.</li>\n    <li><a href=\"http://wpchannel.com/6-modeles-pages-indispensables-wordpress/\">6 modèles de pages indispensables pour WordPress</a> &#8212; Le thème par défaut de WordPress <a href=\"http://2010dev.wordpress.com/\">Twenty Ten</a> comporte une floppée de templates différents, mais tous ne sont pas indispensables. Pour ma part, je les limite au maximum en commençant par index.php et en ajoutant les autres au fur et à mesure des besoins. Voici les six modèles les plus utilisés et les tutoriels associés : <a href=\"http://wpchannel.com/creer-modele-page-erreur-404-wordpress/\">page d’erreur 404</a>, <a href=\"http://wpchannel.com/creer-page-liens-wordpress/\">page de liens</a>, <a href=\"http://wpchannel.com/creer-sitemap-plugin-wordpress/\">page sitemap ou plan du site</a>, <a href=\"http://wpchannel.com/creer-une-page-darchives-des-articles-classes-par-categories/\">page d’archives par catégorie</a>, <a href=\"http://wpchannel.com/creer-page-accueil-statique-blog-wordpress/\">page d’accueil sur-mesure</a> et <a href=\"http://wpchannel.com/creer-page-contact-sans-plugin-wordpress/\">page de contact</a>.</li>\n    <li><a href=\"http://lashon.fr/securite-informatique/wordpress-antispam-securite-site-web/\">Sécuriser son blog WordPress et lutter contre le spam</a> &#8212; Ce manuel de combat est composé de 22 parties qui sont autant d&#8217;éléments à prendre en compte pour sécuriser son blog WordPress. La première qui me vient à l&#8217;esprit, c&#8217;est que <a href=\"http://www.idorian.fr/2010/09/css4design-com-sest-fait-hacke-en-beaute/\">ça n&#8217;arrive pas qu&#8217;aux autres</a> :-( Pour le reste, faites confiance à ce spécialiste des blogs sous WordPress.</li>\n    <li><a href=\"http://blog.barbayellow.com/2010/09/30/configuration-avancee-de-wordpress/\">Options de configuration de WordPress</a> &#8212; Un billet de Grégoire qui nous donne de quoi nourrir notre fichier wp-config.php : définition de la lange, optimisation des performances, debug et développement, sécurité. Lire également <a href=\"http://digwp.com/2010/08/pimp-your-wp-config-php/\">Pimp your wp-config.php</a> et le <a href=\"http://codex.wordpress.org/Editing_wp-config.php\">Codex</a>.</li>\n    <li><a href=\"http://www.catswhocode.com/blog/10-useful-new-wordpress-hacks\">10 useful new WordPress hacks</a> &#8212; Encore des <em>hacks</em> (ou plutôt des fonctions PHP appliquées à l&#8217;API de WordPress) pour adapter le CMS à vos désirs : supprimer les liens automatiques dans les commentaires, notifier vos abonnés à chaque nouveau billet, mettre la date au format Twitter, afficher les miniatures dans le flux RSS, bloquer les requêtes extérieures, simplifier le mode <em>debug</em>, utiliser les <em>Shortcodes</em> dans les fichiers du thème, autoriser l&#8217;<em>upload</em> de fichiers avec des extensions exotiques, utiliser un <em>Shortcode</em> pour visualiser les documents au format PDF et détecter le navigateur utilisé pour ajouter une classe dans la balise `body`.</li>\n    <li><a href=\"http://maniacgeek.wordpress.com/2010/10/06/buddypress-votre-propre-reseau-social-sous-wordpress/\">BuddyPress, votre propre réseau social sous WordPress</a> &#8212; BuddyPress est un plugin qui ajoute une couche de réseau social à votre blog. Ce tutoriel prend le temps d&#8217;expliquer la majorité des options disponibles pour nous permettre d&#8217;en profiter au mieux.</li>\n</ul>\n\n<h2>HTML(5), CSS(3), jQuery (Javascript)</h2>\n\n<ul>\n    <li><a href=\"http://www.handi-pratique.com/w3c-pas-pret-pour-html5\">Le W3C n’est pas encore prêt à mettre en place HTML5</a> &#8212; J&#8217;apprends avec stupéfaction que les propos que je tenais sur HTML5 dans <a href=\"http://css4design.com/quelques-notes-et-beaucoup-de-liens-sur-html5\">Quelques notes, beaucoup de liens (et un peu de mauvaise foi) sur HTML5</a> n&#8217;étaient pas totalement à côté de la plaque ! Philippe Le Hégaret &#8212; Un membre du W3C qui porte bien son nom &#8212; nous apprend que les spécifications de HTML5 sont encore à l&#8217;état de brouillon et qu&#8217;une mise en production serait prématurée en raison de l&#8217;instabilité du bouzin&#8230; Pour ma part, j&#8217;y vois le résultat des pressions exercées par un industriel comme Adobe, peu satisfait de voir que les parts de marché de Flash commencent déjà à s&#8217;émietter au profit de la balise &lt;video&gt;. Quand on parle de HTML5 dans les médias, il s&#8217;agit avant tout de gros sous, et pas de nos balises `article` ou `hgroup` : quand on parle «structure», ils entendent «facture» ^^</li>\n    <li><a href=\"http://www.alsacreations.com/astuce/lire/1076-utiliser-css3-aujourdhui-outils-ressources.html\">Utiliser CSS3 aujourd&#8217;hui, outils et ressources</a> &#8212; Des ressources pour se simplifier l&#8217;utilisation des effets CSS3.</li>\n    <li><a href=\"http://www.alsacreations.com/tuto/lire/1129-html5-aria-semantique-wordpress.html\">Sémantique HTML5 et ARIA pour WordPress</a> &#8212; Dossier complet sur le passage à HTML5 d&#8217;un blog WordPress avec la prise en compte des rôles ARIA : <a title=\"Introduction et travail préparatoire\" href=\"http://www.alsacreations.com/tuto/lire/1129-html5-aria-semantique-wordpress.html\">Introduction et travail préparatoire</a>, <a title=\"Les articles\" href=\"http://www.alsacreations.com/tuto/lire/1130-html5-aria-semantique-wordpress.html\">Les articles</a>, <a title=\"HTML5 Forms et rôles ARIA\" href=\"http://www.alsacreations.com/tuto/lire/1131-html5-aria-semantique-wordpress.html\">HTML5 Forms et rôles ARIA</a>, <a title=\"La mise en page sémantique\" href=\"http://www.alsacreations.com/tuto/lire/1132-html5-aria-semantique-wordpress.html\">La mise en page sémantique</a>.</li>\n    <li>La <a href=\"http://code18.blogspot.com/search/label/HTML\">rubrique HTML</a> du manuel du savoir-faire à l&#8217;usage des geeks et des curieux &#8212; Les recherches d&#8217;un développeur sur les nouveautés HTML5 : <a href=\"http://code18.blogspot.com/2010/10/le-stockage-local-html5-remplacera-t-il.html\">Stockage local vs. Cookies</a>, <a href=\"http://code18.blogspot.com/2010/09/la-balise-meter-en-html-5.html\">la balise Meter en HTML5</a>, <a href=\"http://code18.blogspot.com/2010/09/attribut-autofocus-en-html-5.html\">l&#8217;attribut autofocus</a>, la <a href=\"http://code18.blogspot.com/2010/09/geolocalisation-avec-html-5.html\">géolocalisation</a>, <a href=\"http://code18.blogspot.com/2010/09/survol-de-laudio-en-html-5.html\">l&#8217;audio</a>, <a href=\"http://code18.blogspot.com/2010/09/attribut-placeholder-sur-input-html-5.html\">l&#8217;attribut Placeholder</a>, etc.</li>\n    <li><a href=\"http://jeremie.patonnier.net/post/2010/01/28/La-propri%C3%A9t%C3%A9-CSS-display-inline-block\">La propriété CSS display: inline-block</a> &#8212; Malgré son intérêt, cette propriété est sous-employée alors qu&#8217;elle peut s&#8217;avérer très utile pour les menus de navigation, les nuages de tags ou la gestion graphique des titre h1 &#8212; h6.</li>\n    <li><a href=\"http://michelf.com/journal/2010/javascript-off/\">Javascript Off</a> &#8212; Michel Fortin navigue au quotidien en désactivant Javascript et ça lui va bien. Il nous relate son expérience.</li>\n    <li><a href=\"http://css3buttongenerator.com/\">CSS3 Button Generator</a> &#8212; Par le créateur de <a href=\"http://js4design.com/bxcarousel-un-carousel-jquery-967\">bxCarousel</a>, cet outil permet de créer des boutons en CSS3 à l&#8217;aide d&#8217;une interface intuitive pour utiliser les propriétés relatives aux polices de caractère, à la boite, aux bordures, au background (y compris avec l&#8217;état survolé `:hover`)</li>\n    <li><a href=\"http://www.siteduzero.com/news-62-37823-p1-dynamisez-vos-sites-web-avec-javascript.html\">Dynamisez vos sites web avec Javascript !</a> &#8212; Ce tutoriel sur Javascript a été conçu de manière à ce qu&#8217;un minimum de connaissances en HTML soit nécessaire. Le cours est composé de <a href=\"http://www.siteduzero.com/tutoriel-3-290616-1-dynamisez-vos-sites-web-avec-javascript.html#part_290619\">deux</a> <a href=\"http://www.siteduzero.com/tutoriel-3-290616-1-dynamisez-vos-sites-web-avec-javascript.html#part_312896\">parties</a> et devrait aborder le DOM, les objets, Ajax, Mootools et HTML5 prochainement. Lecture complémentaire : <a href=\"http://www.siteduzero.com/tutoriel-3-160891-jquery-ecrivez-moins-pour-faire-plus.html\">jQuery : écrivez moins pour faire plus !</a></li>\n    <li><a href=\"http://tutorialzine.com/2010/03/who-is-online-widget-php-mysql-jquery/\">Who Is Online</a> &#8211;Conçu avec PHP, MySQL et jQuery, WIO affiche en temps réel le nombre de visiteurs qui parcours votre site Web. Voir <a href=\"http://demo.tutorialzine.com/2010/03/who-is-online-widget-php-mysql-jquery/demo.html\">la démonstration</a>. Via <a href=\"http://www.restezconnectes.fr/view/2010/10/11/qui-est-en-ligne-un-widget-avec-php-mysql-et-jquery.html\">Restez Connectés</a>.</li>\n</ul>\n\n<h2>Métiers du Web</h2>\n\n<ul>\n    <li><a href=\"http://www.lepotlatch.org/index.php/post/2010/09/30/Mod%C3%A8le-de-cahier-des-charges-de-site-Web\">Modèle de cahier des charges de site web</a> &#8212; Envie de lancer un appel d&#8217;offre, mais vous ne savez pas par quoi commencer ? Damien Ravé nous offre un modèle de CDC au format <em>.doc</em> (qui s&#8217;ouvrira parfaitement avec <a href=\"http://fr.openoffice.org/\">OpenOffice.org</a>) à compléter selon vos besoins. Rendez-vous à l&#8217;adressse <a href=\"http://cahier-des-charges-web.lepotlatch.org/\">cahier-des-charges-web.lepotlatch.org</a> pour avoir la dernière version. Bref, de quoi éviter le cahier «décharge» ^__^</li>\n    <li><a href=\"http://www.lesintegristes.net/2010/10/10/la-vie-des-integrateurs-chapitre-iv-les-specs-quels-specs/\">La vie des intégrateurs, chapitre IV : Les specs ? Quels specs ?</a> &#8212; Eric le Bihan nous parle avec humour du processus et des différents intervenants impliqués dans la création d&#8217;un site web : «réunion de kick-off et identification des ressources», «conception et wireframes», «création graphique et mise en couleur», «validation du client», «laissez les intégrateurs faire leur travail…», «on va débugger tout ça maintenant». Lecture complémentaire : <a href=\"http://www.superfiction.net/blog/index.php?2009/09/28/404-bien-demarrer-son-projet-avec-le-kick-off-meeting\">Bien démarrer son projet avec le kick-off meeting</a>.</li>\n    <li><a href=\"http://truffo.fr/2010/10/bilan-dune-recherche-demploi/\">Bilan d’une recherche d’emploi</a> &#8212; Sylvain Fix fait le bilan d&#8217;une recherche d&#8217;emploi qui lui a permis de prendre le temps d&#8217;étudier le marché de l&#8217;emploi dans le secteur du développement web : le secteur de l’informatique est en crise, le critère de la localisation géographique, que nous disent les entretiens d&#8217;embauche, les rémunérations.</li>\n</ul>\n\n<h2>Vie quotidienne du geek</h2>\n\n<ul>\n    <li>Flux RSS &#8212; Vous ne le savez peut-être pas, mais Google <a href=\"http://googlereader.blogspot.com/2010/09/turning-off-track-changes-feature.html\">abandonne</a> le support du <em>tracking</em> des changements survenus sur un site web. <em>Grosso modo</em>, Google Reader proposerait la création d&#8217;un flux RSS pour les sites qui en étaient dépourvus. Parmi les alternatives, Google <em>himself</em> nous propose d&#8217;utiliser <a href=\"http://page2rss.com\">page2rss</a>.</li>\n    <li><a href=\"http://www.netplume.net/component/content/article/13/23-livre-photoshop-cs3\">Photoshop CS3, Retouche photo</a> &#8212; En attendant un retour un peu plus touffu, je vous conseille la lecture de ce livre sur les techniques des professionnels pour retoucher vos photos numériques de la perception de la lumière et des couleurs par l&#8217;oeil humain à la l&#8217;optimisation pour la diffusion à l&#8217;écran (Web) ou pour l&#8217;impression. Téléchargez gratuitement Les <a href=\"http://www.netplume.net/images/stories/livre-PSD-CS3/livreWeb/livre.pdf\">fichiers PDF optimisés pour le web</a> (21 Mo) ou les <a href=\"http://www.netplume.net/images/stories/livre-PSD-CS3/livreBrut/livre.pdf\">fichiers PDF pour l&#8217;imprimeur</a> (120 Mo) disponibles également par chapitres.</li>\n    <li><a href=\"http://www.designspartan.com/tutoriels/25-nouveaux-tutoriels-de-qualite-pour-photoshop-et-illustrator/\">25 tutoriels Photoshop et Illustrator</a> &#8212; Belle liste de tutoriels pour les plus graphistes d&#8217;entre vous avec des thèmes allant de la création d&#8217;une fille-oiseau (assez improbable mais les techniques mises en oeuvre valent le détour) à des effets de flammes de très bonne facture.</li>\n    <li><a href=\"http://blogtoolbox.fr/goo-gl-a-maintenant-son-site-et-des-statistiques/\">Goo.gl a maintenant son site et des statistiques</a> &#8212; Le service de réduction d’urls de Google lancé fin 2009 et utilisé en interne par Google dans FeedBurner, Maps ou Picasa devient accessible au public pour en faire le raccourcisseur le plus stable, le plus sécurisé et le plus rapide du web. Cerise sur le gâteau, <a href=\"http://goo.gl\">Goo.gl</a> propose des statistiques à la manière de <a href=\"http://bit.ly\">bit.ly</a>.</li>\n    <li><a href=\"http://www.zeldman.com/2010/02/25/you-cannot-copyright-a-tweet/\">YOU CANNOT COPYRIGHT A TWEET</a> &#8211; La loi américaine sur le droit d&#8217;auteur ne semble pas protéger les tweets qui n&#8217;entrent pas dans son champs d&#8217;application. Que dit la loi française ?</li>\n</ul>\n\n<h2>NostalGeek (pour la route)</h2>\n\n<div>\n<ul>\n    <li><a href=\"http://www.uzine.net/article1979.html\">W3C go home !</a></li>\n    <li><a href=\"http://embruns.net/carnet/standards-du-web/le-sens-du-canard.html\">Le sens du canard</a></li>\n    <li><a href=\"http://www.pompage.net/pompe/degradation-elegante-et-amelioration-progressive/\">Dégradation élégante &amp; Amélioration progressive</a></li>\n    <li><a href=\"http://www.alistapart.com/articles/previewofhtml5/\">A Preview of HTML 5</a></li>\n</ul>\n</div>\n\n<h2>Déjà fini ?</h2>\n\n<p>Oui, jusqu&#8217;à la prochaine édition. En attendant, n&#8217;hésitez pas à me retrouver sur <a href=\"http://twitter.com/br1o\">mon compte Twitter</a> @br1o les bons tuyaux et de vous abonner au <a href=\"http://feeds.feedburner.com/css4design\">flux RSS</a> du blog de l&#8217;intégrateur. Merci de votre attention.</p>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WordPress Francophone : L’Hebdo WordPress : WordPress 3.1 – Gravatar – VideoPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/Jhe1bSUQbEg/lhebdo-wordpress-wordpress-3-1-gravatar-videopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:117:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/Jhe1bSUQbEg/lhebdo-wordpress-wordpress-3-1-gravatar-videopress\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-12T08:02:45+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:4022:\"<h3>Rendre compatible un thème WordPress pour BuddyPress</h3>\n<p><a href=\"http://wpchannel.com/rendre-compatible-theme-wordpress-buddypress\">WPChannel délivre quelques conseils</a> pour transformer un thème WordPress en thème BuddyPress. Suivez le guide.</p>\n<h3>Une barre d&#8217;administration dans WordPress 3.1</h3>\n<p>Voici quelques nouvelles du développement de WordPress 3.1. On notera l&#8217;apparition d&#8217;une barre d&#8217;administration semblable à celle présente sur les blogs de wordpress.com. <a href=\"http://wpengineer.com/2061/wp-admin-bar-with-developer-informations/\">WP Engineer nous gratifie de quelques informations à ce sujet</a> et sur la manière dont elle sera implémentée dans le code.</p>\n<h3>Transition de wordpress.com à wordpress.org</h3>\n<p>Vous avez un site hébergé par wordpress.com et vous voulez prendre votre propre hébergement pour continuer vos aventures sur le web&#8230; pas de problème, <a href=\"http://fr.blog.wordpress.com/2010/10/05/bonjour-et-au-revoir-la-redirection-externe/\">un protocole est dès à présent prévu pour vous permettre d&#8217;effectuer la transition</a> sans soucis et sans pertes de liens ni de référencement.</p>\n<h3>WordPress ne fait qu&#8217;une chose mais la fait bien&#8230;</h3>\n<p><a href=\"http://foolswisdom.com/wordpress-awesome-cms/\">Lloyd Budd donne son avis</a> sur WordPress et en fait une &laquo;&nbsp;apologie&nbsp;&raquo;&#8230; et il n&#8217;a pas tort dans ses propos.</p>\n<h3>Mise à jour de l&#8217;extension pour VideoPress</h3>\n<p><a href=\"http://videopress.com/2010/10/06/videopress-wordpress-plugin-update/\">Une mise à jour pour l&#8217;extension de VideoPress</a>, le service de vidéo pour WordPress est disponible. Elle permet notamment la compatibilité avec HTML 5.</p>\n<h3>Montrez votre gravatar</h3>\n<p><a href=\"http://fr.blog.wordpress.com/2010/10/06/montrez-votre-gravatar/\">WordPress.com vient de se doter d&#8217;une nouvelle fonction </a>permettant l&#8217;affichage du profil gravatar au survol de l&#8217;avatar. <a href=\"http://weblogtoolscollection.com/archives/2010/10/10/add-hovercards-to-your-wordpress-blog/\">Weblog Tools Collection nous indique une marche à suivre </a>pour transposer cela sur nos sites WordPress traditionnels.</p>\n<h3>L&#8217;histoire de WordPress en une seule image</h3>\n<p>Je vous ai déjà montré des infographies sur WordPress, <a href=\"http://www.unsimpleclic.com/wordpress-son-histoire-en-1-image_5121.html\">en voici une nouvelle qui relate l&#8217;histoire de l&#8217;application</a> de publication de contenu. <a href=\"http://twitter.com/#!/Sivathas/statuses/26835957001\">C&#8217;est Oo qui m&#8217;a donné l&#8217;information</a>.</p>\n<h3>Dupliquer un blog censuré</h3>\n<p>Si votre blog se trouve censuré d&#8217;une manière ou d&#8217;une autre par une autorité quelconque sans motif légitime, <a href=\"http://blogtoolbox.fr/guide-dupliquer-un-blog-wordpress-censure/\">voici comment remettre votre site sur les rails</a>. On parlera ici de sécurité avant tout.</p>\n<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Jhe1bSUQbEg:Tx5Rrt9Rl6g:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Jhe1bSUQbEg:Tx5Rrt9Rl6g:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=Jhe1bSUQbEg:Tx5Rrt9Rl6g:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Jhe1bSUQbEg:Tx5Rrt9Rl6g:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Jhe1bSUQbEg:Tx5Rrt9Rl6g:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=Jhe1bSUQbEg:Tx5Rrt9Rl6g:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/Jhe1bSUQbEg\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WordPress Channel : Glider, le thème portfolio pour WordPress par Elegant Themes\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/R_T0gqHuPY4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/R_T0gqHuPY4/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-11T15:07:01+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1493:\"Découvrez le nouveau thème premium WordPress désigné par Nick Roach de chez Elegant Themes : un portfolio bourré d\'effets visuels !<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=R_T0gqHuPY4:84U9TSViKQ0:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=R_T0gqHuPY4:84U9TSViKQ0:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=R_T0gqHuPY4:84U9TSViKQ0:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=R_T0gqHuPY4:84U9TSViKQ0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/R_T0gqHuPY4\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"css4design : Votre blog professionnel à partir de 9,90€\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://css4design.com/votre-blog-pro-a-partir-de-9-90-euros\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:59:\"http://css4design.com/votre-blog-pro-a-partir-de-9-90-euros\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-09T15:41:52+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Bruno Bichet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:5157:\"<div class=\"tweetmeme_button\" style=\"float: right; margin-left: 18px;\">\n			<a href=\"http://api.tweetmeme.com/share?url=http%3A%2F%2Fcss4design.com%2Fvotre-blog-pro-a-partir-de-9-90-euros\">\n				<img src=\"http://api.tweetmeme.com/imagebutton.gif?url=http%3A%2F%2Fcss4design.com%2Fvotre-blog-pro-a-partir-de-9-90-euros&amp;source=br1o&amp;style=normal&amp;service=bit.ly&amp;service_api=R_0c1ee4b64f105d1b2672690740a77d6a&amp;b=2\" height=\"61\" width=\"50\" />\n			</a>\n		</div><p>Depuis quelques temps les propositions commerciales autour des <a href=\"http://css4design.com/votre-blog-d-entreprise-cles-en-main\">blogs d&#8217;entreprise</a> ou des sites web «vitrine» se font plus agressives. On peut trouver des annonces pour des <em>blog pro</em> autour de 150€, 100€, voire 60€ ! Peut-on descendre plus bas ? Et d&#8217;ailleurs, est-il possible qu&#8217;un blog ayant coûté le prix d&#8217;un <em>tee-shirt</em> puisse rapporter de l&#8217;argent ? Si oui, foncez ! Mais juste pour info, sachez qu&#8217;un <em>blog corporate</em> fait dans <em>les règles de l&#8217;art</em> coûte au moins dix fois plus&#8230; Ce billet a été écrit il y a longtemps et j&#8217;ai décidé de le ressortir pour soutenir @Daibai dans sa <a href=\"http://www.troispointzero.fr/index.php/2010/10/09/webdesigners-integrateurs-developpeurs-web-jai-besoin-de-votre-aide/\">lutte contre les sites web à 1€</a>. Attention, si ce billet n&#8217;est pas à prendre uniquement au premier degré, l&#8217;offre proposée reste valable.<span id=\"more-3080\"></span></p>\n\n<h2><img class=\"alignnone size-full wp-image-7108\" title=\"wordle-blog-pro\" src=\"http://css4design.com/wp-content/uploads/2010/09/wordle-blog-pro.png\" alt=\"\" width=\"633\" height=\"439\" /></h2>\n\n<h2>Ca ne coûte pas plus cher, de bien bloguer !</h2>\n\n<p>Mais à la réflexion, pourquoi payer plus cher si l&#8217;on peut obtenir un retour sur investissement à partir d&#8217;une centaine d&#8217;euros ? Partant de cette idée &#8212; et puisqu&#8217;au final la mise en place d&#8217;un blog <em>brut de décoffrage</em> ne prend pas plus de 5 minutes d&#8217;après le script d&#8217;installation du CMS WordPress &#8212; je me suis dit qu&#8217;il devait être possible de proposer l&#8217;<strong>installation d&#8217;un blog pro pour 9,90€ttc</strong><sup>(1)</sup> :</p>\n\n<h3>Où est l&#8217;arnaque ?</h3>\n\n<p>(1) Pas d&#8217;arnaque : installation par mes soins d&#8217;un blog propulsé par WordPress avec un thème graphique en accord avec votre secteur d&#8217;activité en contrepartie de l&#8217;installation de publicités discrètes, d&#8217;outils de mesure d&#8217;audience (Google Analytics) et de la somme de 9,90€ versée sur mon compte PayPal à l&#8217;adresse <em>infographiste@gmail.com </em>\\O/ <a href=\"http://www.css4design.com/contact\">Vous pouvez me contacter</a> pour en savoir plus.</p>\n\n<h3>Envie d&#8217;aller plus loin ?</h3>\n\n<p>Si vous désirez aller plus loin avec votre blog professionnel, je suis disponible pour vous accompagner ponctuellement ou durablement sur tous les aspects de la vie d&#8217;un blog d&#8217;entreprise ou d&#8217;un site internet :</p>\n\n<ul>\n    <li><a href=\"http://css4design.com/une-charte-redactionnelle-pour-votre-blog-d-entreprise\">Conception et rédaction d&#8217;une charte éditoriale</a> pour les blogs multi-rédacteurs,</li>\n    <li><a href=\"http://css4design.com/savez-vous-bien-rediger-pour-le-web\">Rédaction de contenu</a> : billet, article, dossier, revue de presse,</li>\n    <li>Réécriture des textes rédigés initialement par votre équipe pour coller à la charte éditoriale,</li>\n    <li>Modification du thème graphique installé à l&#8217;origine</li>\n    <li><a href=\"http://css4design.com/quelques-notes-sur-la-conception-d-une-charte-graphique\">Création d&#8217;une charte graphique personnalisée</a>,</li>\n    <li>Mise en place de plugins adaptés à vos besoins,</li>\n    <li>Accompagnement pour les mises-à-jour,</li>\n    <li>Aide à la communication de crise,</li>\n    <li><a href=\"http://br1o.fr/ressources-pour-surveiller-vos-contenus-et-votre-e-reputation-sur-le-web/\">Gestion de votre réputation sur le web</a> (e-réputation) et les réseaux sociaux (oui, ça veut dire que vous saurez comment utiliser Twitter),</li>\n    <li>Achat de nom de domaine,</li>\n    <li>Montée en charge,</li>\n    <li><a href=\"http://css4design.com/tutoriels-seo-liens-referencement\">Référencement</a>,</li>\n    <li>Et plus à venir&#8230;</li>\n</ul>\n\n<h3>Comment ça marche ?</h3>\n\n<p>Il suffit de me faire parvenir votre projet de blog d&#8217;entreprise <a href=\"http://www.css4design.com/contact\">via la page contact </a>ou directement à l&#8217;adresse <em>infographiste@gmail.com</em>. Facile, non ?</p>\n\n<h2>Plus d&#8217;information sur les tarifs WordPress</h2>\n\n<ul>\n    <li><a href=\"http://css4design.com/8-exemples-de-tarifs-sites-wordpress-methode-personas\">8 exemples de tarifs pour l’intégration de votre site WordPress d’après la méthode des Personas</a></li>\n    <li><a href=\"http://css4design.com/quel-tarif-pour-un-theme-wordpress\">Quel tarif pour un thème WordPress ?</a></li>\n</ul>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Blog Tool Box : Guide : « Dupliquer un blog WordPress censuré »\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://blogtoolbox.fr/guide-dupliquer-un-blog-wordpress-censure/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:64:\"http://blogtoolbox.fr/guide-dupliquer-un-blog-wordpress-censure/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-09T01:34:17+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Maxime Guernion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1734:\"<p>Le site <a href=\"http://advocacy.globalvoicesonline.org/\">Global Voices Advocacy</a> vient de publier un guide en français appelé &laquo;&nbsp;<a href=\"http://advocacy.globalvoicesonline.org/2010/10/08/our-guide-mirroring-a-censored-wordpress-blog-now-available-in-french/\">Duplication à l&#8217;identique d’un blog WordPress censuré</a>&nbsp;&raquo; qui s&#8217;adresse aux bloggeurs utilisant WordPress qui soupçonnent certains gouvernements de bloquer ou filtrer leurs blogs. Celui-ci les aidera à mettre en place un blog dupliqué et ainsi rendre leurs contenus censurés lisibles.</p>\n<p>Avec ce PDF exhaustif de 18 pages, vous allez découvrir comment copier votre contenu sans le dupliquer à l&#8217;identique, comment sécuriser votre blog, avoir une introduction aux techniques de filtrages, savoir comment votre blog a été censuré et comment dupliquer votre blog WordPress (gestion des domaines, installer et paramétrer les bons plugins, gérer le référencement, etc).</p>\n\n	<br /><br /><b>Les articles qui pourraient vous intéresser :</b>\n	<ul class=\"st-related-posts\">\n	<li><a href=\"http://blogtoolbox.fr/wordpress-helper-votre-blog-a-portee-de-main-sous-firefox/\" title=\"WordPress Helper, votre blog à portée de main sous FireFox\">WordPress Helper, votre blog à portée de main sous FireFox</a></li>\n	<li><a href=\"http://blogtoolbox.fr/wordpress-afficher-un-message-de-bienvenue-personnalise/\" title=\"WordPress : afficher un message de bienvenue personnalisé\">WordPress : afficher un message de bienvenue personnalisé</a></li>\n	<li><a href=\"http://blogtoolbox.fr/un-formulaire-pour-etre-contactable/\" title=\"Un formulaire pour être contactable\">Un formulaire pour être contactable</a></li>\n</ul>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WordPress Channel : Déplacer automatiquement les fichiers JavaScript dans le footer de WordPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/S5KEAl7kwoA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/S5KEAl7kwoA/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-06T18:30:31+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1675:\"Pour optimiser le temps de chargement de votre site WordPress, il est conseillé de déplacer les scripts JavaScript dans le footer. Pour vous faciliter la vie, Vladmir Prelovac nous propose un plugin se chargeant de déplacer automatiquement les éléments JS sans intervention dans le code avec JavaScript to Footer.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=S5KEAl7kwoA:OWvOOFysePI:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=S5KEAl7kwoA:OWvOOFysePI:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=S5KEAl7kwoA:OWvOOFysePI:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=S5KEAl7kwoA:OWvOOFysePI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/S5KEAl7kwoA\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WordPress Channel : Rendre compatible un thème WordPress pour BuddyPress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/MlSF-ylnrh4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:63:\"http://feedproxy.google.com/~r/WordpressChannel/~3/MlSF-ylnrh4/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-05T12:30:28+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"wpchannel@gmail.com (Aurélien Denis)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1622:\"BuddyPress est le complément idéal à WordPress pour créer votre propre réseau social mais on déplorera l\'absence de thèmes compatibles. La solution ? Utiliser un thème WordPress et l\'adapter. 5 minutes suffisent à l\'aide du plugin BuddyPress Template Pack.<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=MlSF-ylnrh4:sZ4sg6uINGY:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:D7DqB2pKExk\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=MlSF-ylnrh4:sZ4sg6uINGY:D7DqB2pKExk\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?i=MlSF-ylnrh4:sZ4sg6uINGY:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressChannel?a=MlSF-ylnrh4:sZ4sg6uINGY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressChannel?d=qj6IDK7rITs\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressChannel/~4/MlSF-ylnrh4\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WordPress Francophone : L’hebdo WordPress : Automattic – Astuces – Sécurité\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UeHKq2HPXPo/lhebdo-wordpress-automattic-astuces-securite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:111:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UeHKq2HPXPo/lhebdo-wordpress-automattic-astuces-securite\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-05T07:14:40+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:4879:\"<h3>Microsoft lorgne-t-il sur Automattic ?</h3>\n<p><a href=\"http://wpmu.org/so-when-exactly-are-microsoft-going-to-buy-automattic/\">C&#8217;est la question que soulève WPMU.org</a> suite à la <a href=\"http://fr.blog.wordpress.com/2010/09/27/bienvenus-blogueurs-de-windows-live-spaces/\">migration de Windows Live Space sur les serveur de wordpress.com</a>. Mais pas seulement, James de WPMU.org s&#8217;interroge aussi sur d&#8217;autres points qui lui font dire que Microsoft pourrait racheter Automattic. Nous n&#8217;en sommes pas encore là, mais qu&#8217;en pensez-vous ? Info ou intox ?</p>\n<h3>Supprimer les sauvegardes de versions de textes</h3>\n<p>On en a déjà parlé mais c&#8217;est bon de <a href=\"http://weblogtoolscollection.com/archives/2010/09/28/deleting-wordpress-revisions/\">revoir de vieilles astuces </a>au fil des évolutions de WordPress. Revoici donc le moyen de supprimer le &laquo;&nbsp;versionning&nbsp;&raquo; de WordPress, à savoir l&#8217;enregistrement automatique du texte dans WordPress&#8230;</p>\n<h3>Apprendre WordPress 3</h3>\n<p>C&#8217;est <a href=\"http://www.elephorm.com/web-multimedia/formation-wordpress/formation-wordpress-3.html\">Olivier Gobet qui reprend le flambeau du DVD</a> de formation WordPress laissé par Amaury Balmer et Francis Chouquet. Ce nouvel opus prend bien sur en compte la dernière version de WordPress, à savoir la 3.0. Ce DVD est édité par Elephorm.</p>\n<h3>Un t-shirt WordPress ?</h3>\n<p>Vous aimez les T-Shirts ? Vous aimez WordPress ? <a href=\"http://wpshirts.com/\">Alors ce site est fait pour vous</a> !</p>\n<h3>WordPress pour iOS en  version 2.6</h3>\n<p>La version pour les utilisateurs de mobiles Apple vient de franchir un nouveau cap et passe en version 2.6. C&#8217;est Jane Wells qui l&#8217;annonçait officiellement<a href=\"http://wordpress.org/news/2010/09/ios-v2-6/\"> sur le blog de WordPress.org </a>le lendemain de <a href=\"http://ios.wordpress.org/2010/09/29/introducing-version-2-6/\">la sortie de l&#8217;application</a>. Weblog Tools Collection nous propose un <a href=\"http://weblogtoolscollection.com/archives/2010/09/30/wordpress-for-ios-mobile-app-updated/\">petit récapitulatif des nouveautés</a>. Quelques <a href=\"http://ios.wordpress.org/2010/10/02/version-2-6-issues/\">informations complémentaires</a>.</p>\n<h3>Configuration avancée du wp-config.php</h3>\n<p>Voici un article de Barbablog sur la <a href=\"http://blog.barbayellow.com/2010/09/30/configuration-avancee-de-wordpress/\">configuration du fameux fichier wp-config.php</a> qui est au cœur de l&#8217;installation de WordPress.</p>\n<h3>Site web avec WordPress 3.0 : 100 % pratique</h3>\n<p>C&#8217;est l&#8217;intitulé d&#8217;un <a href=\"http://www.rocketwordpress.fr/\">autre livre qui est sorti</a> tout récemment. Il est signé Simon Kern d&#8217;alsacréations.</p>\n<h3>La sécurité avec WordPress</h3>\n<p>Lashon, éminent membre du forum nous gratifie d&#8217;un très bon article sur le <a href=\"http://lashon.fr/tutoriels/wordpress-antispam-securite-site-web/\">meilleur moyen de sécuriser son WordPress </a>et se prémunir du spam. A parcourir de toute urgence.</p>\n<h3>Thinklinux.fr migre vers WordPress</h3>\n<p>La communauté Linux ThinkLinux.fr, après une hésitation entre Drupal et WordPress a finalement opté pour ce dernier. <a href=\"http://www.thinklinux.fr/wordpress-ou-drupal-think-linux-fr-a-fait-son-choix/\">Vous pouvez consulter les raisons qui ont conduit à ce choix.</a> Une info de <a href=\"http://twitter.com/#!/wolforg/statuses/26285793862\">@wolforg</a><a href=\"http://www.thinklinux.fr/wordpress-ou-drupal-think-linux-fr-a-fait-son-choix/\">.</a></p>\n<h3>10 hacks utiles</h3>\n<p>Voici <a href=\"http://www.catswhocode.com/blog/10-useful-new-wordpress-hacks\">une liste de 10 hacks pour WordPress</a> qui vous sont recommandés par&#8230; un chat. Mais pas n&#8217;importe lequel, celui-ci sait coder !</p>\n<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UeHKq2HPXPo:oxsG9AJ3qwY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UeHKq2HPXPo:oxsG9AJ3qwY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UeHKq2HPXPo:oxsG9AJ3qwY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UeHKq2HPXPo:oxsG9AJ3qwY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UeHKq2HPXPo:oxsG9AJ3qwY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UeHKq2HPXPo:oxsG9AJ3qwY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UeHKq2HPXPo\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:68:\"\n        \n        \n        \n        \n        \n        \n        \n    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"css4design : WordPress Theme Generator : un thème WordPress en quelques clics\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"http://css4design.com/wordpress-theme-generator-un-theme-wordpress-en-quelques-clics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:9:\"alternate\";s:4:\"href\";s:84:\"http://css4design.com/wordpress-theme-generator-un-theme-wordpress-en-quelques-clics\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2010-10-04T19:28:25+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Bruno Bichet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:2101:\"<div class=\"tweetmeme_button\" style=\"float: right; margin-left: 18px;\">\n			<a href=\"http://api.tweetmeme.com/share?url=http%3A%2F%2Fcss4design.com%2Fwordpress-theme-generator-un-theme-wordpress-en-quelques-clics\">\n				<img src=\"http://api.tweetmeme.com/imagebutton.gif?url=http%3A%2F%2Fcss4design.com%2Fwordpress-theme-generator-un-theme-wordpress-en-quelques-clics&amp;source=br1o&amp;style=normal&amp;service=bit.ly&amp;service_api=R_0c1ee4b64f105d1b2672690740a77d6a&amp;b=2\" height=\"61\" width=\"50\" />\n			</a>\n		</div><p><a href=\"http://www.yvoschaap.com/wpthemegen/\">WP Generator Blog</a> &#8212; Ce générateur de template crée votre thème WordPress sans nécessiter de connaissances préalables en HTML, JS, PHP ou même CSS. Il suffit de spécifier le nom du blog (ou votre logo), la largeur du site (750px, 950px, 984px 100% ou largeur personnalisée), l&#8217;emplacement (droite ou gauche) et la largeur (160px, 180px ou 300px) des barres latérales.<span id=\"more-7145\"></span></p>\n\n<p>En plus de l&#8217;affichage d&#8217;une troisième colonne, nous pouvons choisir la disposition des menus de navigation pour les pages et/ou les catégories, ainsi que l&#8217;affichage du nuage de tags et des archives.</p>\n\n<p>Au niveau des couleurs du thème, le choix va du <em>background</em> au pied de page en passant par les liens survolés, les titres des billets, etc. <em>WP Generator Blog</em> produit des thèmes compatibles jusqu&#8217;à WordPress 3.0 et embarque le framework <a href=\"http://developer.yahoo.com/yui/\">Yahoo! UI</a>.</p>\n\n<div id=\"attachment_7152\" class=\"wp-caption alignnone\" style=\"width: 643px\"><a href=\"http://css4design.com/wp-content/uploads/2010/10/wordpress-theme-generator.png\"><img class=\"size-full wp-image-7152\" title=\"wordpress-theme-generator\" src=\"http://css4design.com/wp-content/uploads/2010/10/wordpress-theme-generator.png\" alt=\"\" width=\"633\" height=\"349\" /></a><p class=\"wp-caption-text\">Lorsque vous avez terminé, il suffit de télécharger l&#39;archive zip contenant l&#39;ensemble des fichiers de votre tout nouveau thème WordPress !</p></div>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:26:\"wordpressfrancophoneplanet\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}s:4:\"type\";i:512;s:7:\"headers\";a:9:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"4BkagzIYYVWW4XloT7EfD5xfjFA\";s:13:\"last-modified\";s:29:\"Tue, 26 Oct 2010 07:49:36 GMT\";s:4:\"date\";s:29:\"Tue, 26 Oct 2010 08:04:43 GMT\";s:7:\"expires\";s:29:\"Tue, 26 Oct 2010 08:04:43 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}s:5:\"build\";s:14:\"20090627192103\";}','no'),(123,0,'_transient_timeout_feed_mod_2fb9572e3d6a42f680e36370936a57ae','1288123479','no'),(124,0,'_transient_feed_mod_2fb9572e3d6a42f680e36370936a57ae','1288080279','no'),(125,0,'_transient_timeout_feed_a5420c83891a9c88ad2a4f04584a5efc','1288123481','no'),(126,0,'_transient_feed_a5420c83891a9c88ad2a4f04584a5efc','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n	\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:72:\"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://wordpress.org/extend/plugins/browse/popular/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Oct 2010 08:04:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"http://bbpress.org/?v=1.1-alpha-2539\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:15:{i:0;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt Mullenweg on \"Akismet\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://wordpress.org/extend/plugins/akismet/#post-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"15@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Akismet checks your comments against the Akismet web service to see if they look like spam or not.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"uberdose on \"All in One SEO Pack\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://wordpress.org/extend/plugins/all-in-one-seo-pack/#post-753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 20:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"753@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"Automatically optimizes your Wordpress blog for Search Engines (Search Engine Optimization).\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"Takayuki Miyoshi on \"Contact Form 7\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/contact-form-7/#post-2141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"2141@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Arne on \"Google XML Sitemaps\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wordpress.org/extend/plugins/google-sitemap-generator/#post-132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:31:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"132@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"This plugin will generate a special XML sitemap which will help search engines to better index your blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Arne\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Alex Rabe on \"NextGEN Gallery\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://wordpress.org/extend/plugins/nextgen-gallery/#post-1169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2007 20:08:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"1169@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"NextGEN Gallery is a full integrated Image Gallery plugin for WordPress with dozens of options and features.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Alex Rabe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"andy on \"WordPress.com Stats\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://wordpress.org/extend/plugins/stats/#post-1355\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 06 May 2007 02:15:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"1355@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"You can have simple, concise stats with no additional load on your server by plugging into WordPress.com&#039;s stat system.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"andy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"donncha on \"WP Super Cache\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/wp-super-cache/#post-2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Nov 2007 11:40:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"2572@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"A very fast caching engine for WordPress that produces static html files.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"donncha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"micropat on \"AddToAny: Share/Bookmark/Email Button\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/extend/plugins/add-to-any/#post-498\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Mar 2007 23:08:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"498@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:140:\"Help people share, bookmark, and email your posts &#38; pages using any service, such as Facebook, Twitter, Google Buzz, Digg and many more.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"micropat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"freediver on \"SEO Friendly Images\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/extend/plugins/seo-image/#post-4729\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 01 Mar 2008 15:03:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"4729@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"SEO Friendly Images automatically adds alt and title attributes to all your images. Improves traffic from search engines and makes the image tags W3C/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"freediver\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"casibus on \"ourSTATS Widget\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://wordpress.org/extend/plugins/ourstatsde-widget/#post-18282\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 29 May 2010 14:16:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"18282@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"create a widget for the ourstats.de counter service\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"casibus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael_ on \"Maintenance Mode\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://wordpress.org/extend/plugins/maintenance-mode/#post-2088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 30 Jun 2007 19:15:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"2088@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"Adds a splash page to your blog that lets visitors know your blog is down for maintenance.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Michael_\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Brian Colinger on \"WordPress Importer\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://wordpress.org/extend/plugins/wordpress-importer/#post-18101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 17:42:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"18101@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Lester Chan on \"WP-PageNavi\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://wordpress.org/extend/plugins/wp-pagenavi/#post-363\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 23:17:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"363@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"Adds a more advanced paging navigation to your WordPress site.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Lester Chan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Mike Challis on \"Fast Secure Contact Form\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://wordpress.org/extend/plugins/si-contact-form/#post-12636\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Aug 2009 01:20:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"12636@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:139:\"A super customizable contact form that lets your visitors send you email. Blocks all automated spammers. Packed with settings and features.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mike Challis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Bravenewcode on \"WPtouch\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://wordpress.org/extend/plugins/wptouch/#post-5468\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 May 2008 04:58:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"5468@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"WPtouch: A simple, powerful and elegant mobile theme for your website.\n\nWPtouch automatically transforms your WordPress blog into an iPhone applicatio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Bravenewcode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:52:\"http://wordpress.org/extend/plugins/rss/view/popular\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:7:{s:13:\"last-modified\";s:19:\"2007-03-09 22:11:30\";s:4:\"etag\";s:34:\"\"8675051e89bf6e8eba42545ba20839d9\"\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:14:\"content-length\";s:4:\"7736\";s:4:\"date\";s:29:\"Tue, 26 Oct 2010 08:04:44 GMT\";s:6:\"server\";s:9:\"LiteSpeed\";s:10:\"connection\";s:5:\"close\";}s:5:\"build\";s:14:\"20090627192103\";}','no'),(127,0,'_transient_timeout_feed_mod_a5420c83891a9c88ad2a4f04584a5efc','1288123481','no'),(128,0,'_transient_feed_mod_a5420c83891a9c88ad2a4f04584a5efc','1288080281','no'),(129,0,'_transient_timeout_feed_1a5f760f2e2b48827d4974a60857e7c2','1288123481','no'),(130,0,'_transient_feed_1a5f760f2e2b48827d4974a60857e7c2','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n	\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:72:\"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"WordPress Plugins » View: Recently Updated\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://wordpress.org/extend/plugins/browse/updated/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"WordPress Plugins » View: Recently Updated\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Oct 2010 08:04:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"http://bbpress.org/?v=1.1-alpha-2539\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:15:{i:0;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"violetcharm on \"live-calendar\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/live-calendar/#post-21792\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Oct 2010 01:29:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21792@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"A event calendar like microsoft live calendar.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"violetcharm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Anraiki on \"Kommiku\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/extend/plugins/kommiku/#post-16029\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Feb 2010 04:22:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"16029@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:147:\"Kommiku. A Online Media viewer. A plug-in that creates pages that can be used as a Manga Viewer, a Comic Viewer, a Novel Viewer, or as a Portfolio.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Anraiki\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"srcoley on \"Random Quotes\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/random-quotes/#post-15900\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Feb 2010 09:36:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"15900@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"Version: 1.3\n\nLet&#039;s users manage and display quotations anywhere within their WordPress template.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"srcoley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"ramesh1990.11 on \"Wp Greetings-Increase Your Traffic\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/extend/plugins/wp-greetings/#post-21569\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Oct 2010 16:33:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21569@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"Display a greeting for your visitor basing on which site he comes from.Incerase your traffic ,rss subscribes,diggs,teweets and traffic.There by Incera\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"ramesh1990.11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"sanketh1990.11 on \"Blog Protector Final - Protect Your Content\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"http://wordpress.org/extend/plugins/blog-protector-final/#post-21555\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Oct 2010 18:56:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21555@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"Protect your valuable blog content as well as images from getting copied.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"sanketh1990.11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"steve.lee@monotypeimaging.com on \"Webfonts\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/extend/plugins/webfonts/#post-21796\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Oct 2010 05:07:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21796@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Webfonts plugin for wordpress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"steve.lee@monotypeimaging.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"anabelle on \"Ajax Post Carousel\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://wordpress.org/extend/plugins/ajax-post-carousel/#post-21687\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Oct 2010 01:26:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21687@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"Widget that displays posts as a carousel, using jQuery. It preloads a few posts and Ajax is used to load more posts as the carousel advances.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"anabelle\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"MikeSoja on \"ecSTATic\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/extend/plugins/ecstatic/#post-18031\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 May 2010 02:01:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"18031@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"Faster, Smaller, Non-Ecological Real-Time Visitor Stats and Management for your Wordpress Blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"MikeSoja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Xnuiem on \"BookX\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://wordpress.org/extend/plugins/bookx/#post-6445\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 27 Jul 2008 13:49:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"6445@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"A simple but powerful recommended book plugin.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Xnuiem\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Kenny on \"WP Search\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/extend/plugins/wpsearch/#post-6149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Jun 2008 23:21:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"6149@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:140:\"WPSearch 2 is the missing site search for your Wordpress installation. Install this plugin if you need a fast, relevant, google-like search.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kenny\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"kythin on \"WordSpinner\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://wordpress.org/extend/plugins/wordspinner/#post-6672\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Aug 2008 10:50:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"6672@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"Build &#039;spinners&#039; in your posts or pages to help avoid duplicate content penalties.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"kythin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"CodeAndReload on \"Nice Quotes Rotator\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://wordpress.org/extend/plugins/nice-quotes-rotator/#post-21498\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Oct 2010 21:11:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21498@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"Allows display of random quotes via shortcode, a sidebar widget, and/or on the admin page. Quotes can be user-entered, post excerpts or links.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"CodeAndReload\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"andykillen on \"Share and Follow\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://wordpress.org/extend/plugins/share-and-follow/#post-17021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Apr 2010 02:58:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"17021@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"Add Share Icons and Follow Links to your site in the way you want. Simple and adapatable.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"andykillen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"ukautz on \"Scaleable Contact Form\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wordpress.org/extend/plugins/scaleable-contact-form/#post-10002\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 05 Apr 2009 21:22:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"10002@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"Another contact form with very scalable multi-type Fields. Uses Captcha, no Akismet. Can use external SMTP via wp_mail() or other Plugins. AJAX Suppor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"ukautz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"ydubois on \"YD Featured Box Widget\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://wordpress.org/extend/plugins/yd-featured-block-widget/#post-21528\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Oct 2010 08:49:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"21528@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"Description: Customized square or rectangular image + title boxes or blocks to promote featured content on your homepage or in your sidebars.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"ydubois\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:52:\"http://wordpress.org/extend/plugins/rss/view/updated\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:7:{s:13:\"last-modified\";s:19:\"2010-10-25 01:29:06\";s:4:\"etag\";s:34:\"\"9b4e854fa276ac69e9e892ae028d107f\"\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:14:\"content-length\";s:4:\"7837\";s:4:\"date\";s:29:\"Tue, 26 Oct 2010 08:04:45 GMT\";s:6:\"server\";s:9:\"LiteSpeed\";s:10:\"connection\";s:5:\"close\";}s:5:\"build\";s:14:\"20090627192103\";}','no'),(131,0,'_transient_timeout_feed_mod_1a5f760f2e2b48827d4974a60857e7c2','1288123481','no'),(132,0,'_transient_feed_mod_1a5f760f2e2b48827d4974a60857e7c2','1288080281','no'),(133,0,'_transient_timeout_plugin_slugs','1288166681','no'),(134,0,'_transient_plugin_slugs','a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2010-10-26 08:04:21','2010-10-26 08:04:21','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','publish','open','open','','bonjour-tout-le-monde','','','2010-10-26 08:04:21','2010-10-26 08:04:21','',0,'http://www.mariannedenis.com/prestashop/blog/?p=1',0,'post','',1),(2,1,'2010-10-26 08:04:21','2010-10-26 08:04:21','Ceci est un exemple de page WordPress. Vous pouvez la modifier pour mettre ici des informations vous concernant ou concernant votre site afin que vos lecteurs en sachent un peu plus sur vous. Vous pouvez créer autant de pages ou sous-pages que vous voulez, et gérer l&rsquo;intégralité de votre contenu dans WordPress.','À propos','','publish','open','open','','a-propos','','','2010-10-26 08:04:21','2010-10-26 08:04:21','',0,'http://www.mariannedenis.com/prestashop/blog/?page_id=2',0,'page','',0),(3,1,'2010-10-26 08:04:40','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2010-10-26 08:04:40','0000-00-00 00:00:00','',0,'http://www.mariannedenis.com/prestashop/blog/?p=3',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,2,0),(2,2,0),(3,2,0),(4,2,0),(5,2,0),(6,2,0),(7,2,0),(1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'link_category','',0,7);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Non classé','non-classe',0),(2,'Liens','liens',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','mdcrea'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'aim',''),(10,1,'yim',''),(11,1,'jabber',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}'),(13,1,'wp_user_level','10'),(14,1,'wp_dashboard_quick_press_last_post_id','3');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'mdcrea','$P$BdYVEw77Sv4Qyq5Drb9cdnpG82a1mU0','mdcrea','robin@studio-http.com','','2010-10-26 08:04:21','',0,'mdcrea');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-29 10:21:44
