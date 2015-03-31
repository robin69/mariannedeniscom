-- MySQL dump 10.11
--
-- Host: localhost    Database: mdcrea_md
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
-- Table structure for table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actualites` (
  `id_actualite` int(11) NOT NULL auto_increment,
  `titre_actualite` varchar(200) NOT NULL,
  `txt_actualite` text NOT NULL,
  `date_actualite` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `statut_actualite` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id_actualite`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualites`
--

LOCK TABLES `actualites` WRITE;
/*!40000 ALTER TABLE `actualites` DISABLE KEYS */;
INSERT INTO `actualites` VALUES (1,'Vive les bijoux de marianne','Attention, d\'ici vous allez pourvoir voir toutes les collections printemps été hiver et automne !! ','2009-06-05 14:43:51',1),(2,'Une nouvelle collection vien d\'arriver','Un mélange de pierres noirs avec de la turquoise importer directement des réserves indiennes d\'El Paso !!','2009-06-05 14:30:48',1);
/*!40000 ALTER TABLE `actualites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogue` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `titre` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `collection` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL,
  `prix` float NOT NULL,
  `cout` float NOT NULL,
  `ordre` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogue`
--

LOCK TABLES `catalogue` WRITE;
/*!40000 ALTER TABLE `catalogue` DISABLE KEYS */;
INSERT INTO `catalogue` VALUES (1,'miracle blanc et violet','','087-001-p.jpg','087-001-p.jpg',0,0,1,0,0,60,8),(2,'swaro noir et noir','','006-004-p.jpg','006-004-p.jpg',0,0,1,0,0,19,0),(3,'swaro noir et vert','','003-010-p.jpg','003-010-p.jpg',0,0,1,0,0,54,0),(4,'noir et rouge non calibre','','067-002-p.jpg','067-002-p.jpg',0,0,1,0,0,28,7),(5,'3 rangs peints blanc ecru beige','','140-002-p.jpg','140-002-p.jpg',0,0,1,0,0,14,2),(6,'2 pendentifs a nouer gouttes noir et blanc','','154-000-p.jpg','154-000-p.jpg',0,0,1,0,0,90,4),(7,'trash long rose et breloques','','159-001-p.jpg','159-001-p.jpg',0,0,1,0,0,68,0),(8,'assymet noir et vert','','129-000-p.jpg','129-000-p.jpg',0,0,1,0,0,78,0),(9,'2 pendentifs a nouer swaro bleu','','152-000-p.jpg','152-000-p.jpg',0,0,1,0,0,94,0),(10,'assymet noir et rouge','','130-000-p.jpg','130-000-p.jpg',0,0,1,0,0,79,0),(11,'ras du cou perles pierre dure','','025-000-p.jpg','025-000-p.jpg',0,0,1,0,0,125,0),(12,'sautoir jaspe fossile','','013-000-p.jpg','013-000-p.jpg',0,0,1,0,0,73,0),(13,'petits pendentifs divers','','042-001-p.jpg','042-001-p.jpg',0,0,0,0,0,156,0),(14,'ras du cou ruban rose et pendentif noir','','022-000-p.jpg','022-000-p.jpg',0,0,1,0,0,84,0),(15,'pendentifs sur anneau 3 pastilles vertes','','050-002-p.jpg','050-002-p.jpg',0,0,1,0,0,114,1),(16,'bambou breloque turquoise et verre','','120-000-p.jpg','120-000-p.jpg',0,0,1,0,0,86,0),(17,'MIRACLE jaune rose bleu','','081-000-p.jpg','081-000-p.jpg',0,0,1,0,0,46,3),(18,'ruban blanc','','019-002-p.jpg','019-002-p.jpg',0,0,1,0,0,8,1),(19,'ras du cou pierres dures semi precieuses','','024-000-p.jpg','024-000-p.jpg',0,0,1,0,0,137,3),(20,'ras du cou perles metal ajourees','','026-000-p.jpg','026-000-p.jpg',0,0,1,0,0,124,0),(21,'miracle bleu et blanc','','085-001-p.jpg','085-001-p.jpg',0,0,1,0,0,61,0),(22,'3 rangs long ou court pierres dures','','145-005-p.jpg','145-005-p.jpg',0,0,1,0,0,95,7),(23,'miracle rose jaune rouge','','160-002-p.jpg','160-002-p.jpg',0,0,1,0,0,10,0),(24,'bigout rouge et jaune','','113-000-p.jpg','113-000-p.jpg',0,0,1,0,0,107,0),(25,'3 rangs long ou court vert','','143-000-p.jpg','143-000-p.jpg',0,0,1,0,0,96,0),(26,'MIRACLE bleu violet rouge','','084-000-p.jpg','084-000-p.jpg',0,0,1,0,0,5,1),(27,'swaro noir et turquoise','','004-007-p.jpg','004-007-p.jpg',0,0,1,0,0,53,0),(28,'5 fils memoire colores','','135-000-p.jpg','135-000-p.jpg',0,0,1,0,0,117,2),(29,'grand sautoir vert multi breloques','','090-001-p.jpg','090-001-p.jpg',0,0,1,0,0,99,0),(30,'perles carrees metal et perles metal','','045-000-p.jpg','045-000-p.jpg',0,0,1,0,0,102,0),(31,'2 rangs petal jaune','','149-001-p.jpg','149-001-p.jpg',0,0,1,0,0,72,2),(33,'bambou breloque turquoise et verre noir','','121-000-p.jpg','121-000-p.jpg',0,0,1,0,0,87,0),(34,'bracelets perles non calibrees','','162-010-p.jpg','162-010-p.jpg',0,0,1,0,0,160,0),(35,'ras du cou nacre rose et rouge','','029-000-p.jpg','029-000-p.jpg',0,0,1,0,0,49,0),(36,'nacre 4','','068-000-p.jpg','068-000-p.jpg',0,0,0,0,0,155,0),(37,'perles carrees metal et perles noires','','044-001-p.jpg','044-001-p.jpg',0,0,1,0,0,100,0),(38,'ruban noir 2','','017-001-p.jpg','017-001-p.jpg',0,0,1,0,0,1,0),(39,'1900 noir','','155-002-p.jpg','155-002-p.jpg',0,0,1,0,0,16,0),(40,'1900 2 rangs cristal','','158-001-p.jpg','158-001-p.jpg',0,0,1,0,0,52,0),(41,'burkinabe 1 rang','','111-000-p.jpg','111-000-p.jpg',0,0,0,0,0,76,9),(42,'pendentifs 3 gouttes noir rouge cristal','','053-002-p.jpg','053-002-p.jpg',0,0,1,0,0,142,3),(43,'2 rangs petal noir','','148-001-p.jpg','148-001-p.jpg',0,0,1,0,0,71,2),(44,'2 pendentifs a nouer jaspe fossile','','153-001-p.jpg','153-001-p.jpg',0,0,1,0,0,92,0),(45,'ras du cou perles carrees verre colore','','027-002-p.jpg','027-002-p.jpg',0,0,1,0,0,154,7),(46,'multirangs brun et noir','','075-002-p.jpg','075-002-p.jpg',0,0,1,0,0,39,0),(47,'bambou breloque cloisonees chinoises','','123-001-p.jpg','123-001-p.jpg',0,0,1,0,0,89,0),(48,'cristal ras du cou','','099-000-p.jpg','099-000-p.jpg',0,0,1,0,0,9,7),(49,'2 pendentifs a nouer cube Chine','','156-001-p.jpg','156-001-p.jpg',0,0,1,0,0,93,0),(50,'2 rangs petal blanc','','150-001-p.jpg','150-001-p.jpg',0,0,1,0,0,70,0),(51,'ras du cou graines des philippines','','034-000-p.jpg','034-000-p.jpg',0,0,0,0,0,150,3),(52,'miracle grappe 1','','083-002-p.jpg','083-002-p.jpg',0,0,1,0,0,59,13),(53,'ras du cou 4 Venise longues vertes','','038-000-p.jpg','038-000-p.jpg',0,0,1,0,0,138,2),(54,'miracle jaune et blanc','','082-001-p.jpg','082-001-p.jpg',0,0,1,0,0,63,0),(55,'multirangs gay friendly','','074-001-p.jpg','074-001-p.jpg',0,0,1,0,0,116,0),(56,'byzantin verre','','105-001-p.jpg','105-001-p.jpg',0,0,1,0,0,120,0),(57,'MIRACLE rouge rose jaune','','079-000-p.jpg','079-000-p.jpg',0,0,1,0,0,45,0),(58,'3 rangs long ou court blanc','','146-000-p.jpg','146-000-p.jpg',0,0,1,0,0,97,0),(59,'ras du cou ruban jaune et pendentif rouge','','023-000-p.jpg','023-000-p.jpg',0,0,1,0,0,85,0),(60,'sautoir 2 rangs vermeil','','015-003-p.jpg','015-003-p.jpg',0,0,1,0,0,31,0),(61,'cauries','','101-001-p.jpg','101-001-p.jpg',0,0,0,0,0,147,0),(62,'smarties ras du cou 3 rangs','','007-002-p.jpg','007-002-p.jpg',0,0,1,0,0,113,0),(63,'3 rangs peints blanc beige vert','','142-002-p.jpg','142-002-p.jpg',0,0,1,0,0,43,0),(64,'assymet noir et blanc','','132-001-p.jpg','132-001-p.jpg',0,0,1,0,0,80,0),(65,'assymet noir et or','','131-000-p.jpg','131-000-p.jpg',0,0,1,0,0,82,0),(66,'byzntin metal ajoure','','104-000-p.jpg','104-000-p.jpg',2,1,0,35,0,123,0),(67,'nacre 1','','071-005-p.jpg','071-005-p.jpg',0,0,1,0,0,11,0),(68,'Grands sautoirs modulables verre et metal','','089-000-p.jpg','089-000-p.jpg',0,0,1,0,0,30,5),(69,'bagues miracles','','162-012-p.jpg','162-012-p.jpg',2,0,1,7,0,157,31),(70,'ras du cou fleurs jaunes ajourees de Chine','','035-001-p.jpg','035-001-p.jpg',0,0,1,0,0,126,0),(71,'bigout assym noir et blanc','','118-000-p.jpg','118-000-p.jpg',0,0,1,0,0,105,0),(72,'sautoirs pierre de Chine','','012-000-p.jpg','012-000-p.jpg',0,0,1,0,0,23,7),(74,'grand sautoir cubes noir et blanc','','091-001-p.jpg','091-001-p.jpg',0,0,1,0,0,29,0),(75,'multirangs noir et blanc','','073-001-p.jpg','073-001-p.jpg',0,0,1,0,0,12,0),(76,'multirangs bleu et jaune','','076-000-p.jpg','076-000-p.jpg',0,0,1,0,0,40,0),(77,'bigout bleu et vert','','116-001-p.jpg','116-001-p.jpg',0,0,0,0,0,106,0),(78,'2 pendentifs a nouer boules a facettes noir et blanc','','147-002-p.jpg','147-002-p.jpg',0,0,1,0,0,91,4),(79,'pendentif 3 perles ajourees','','062-000-p.jpg','062-000-p.jpg',0,0,1,0,0,139,3),(80,'pendentif 2 sceaux de Chine rouges','','065-001-p.jpg','065-001-p.jpg',0,0,1,0,0,136,0),(81,'bambou breloque pierre dure','','122-000-p.jpg','122-000-p.jpg',0,0,1,0,0,88,0),(82,'assymet vert et jaune','','127-000-p.jpg','127-000-p.jpg',0,0,1,0,0,22,0),(83,'pendentifs sur anneau pierres ovales de Chine','','048-002-p.jpg','048-002-p.jpg',0,0,1,0,0,133,4),(84,'pendentifs graine philippine','','051-000-p.jpg','051-000-p.jpg',0,0,0,0,0,151,3),(85,'4 fils memoire noir et argent','','137-000-p.jpg','137-000-p.jpg',0,0,1,0,0,118,2),(86,'ras du cou trash rose et breloques verre','','020-002-p.jpg','020-002-p.jpg',0,0,1,0,0,20,0),(87,'pendentif 3 colombes','','063-001-p.jpg','063-001-p.jpg',0,0,1,0,0,140,4),(88,'smarties 3 rangs soleil','','009-003-p.jpg','009-003-p.jpg',0,0,1,0,0,111,2),(89,'assymet chinois bleu','','133-000-p.jpg','133-000-p.jpg',0,0,1,0,0,83,0),(90,'sautoir anneau','','014-045-p.jpg','014-045-p.jpg',0,0,1,0,0,27,10),(91,'pendentif perles bois 1940 noir rouge et or','','057-000-p.jpg','057-000-p.jpg',0,0,1,0,0,131,2),(92,'assymet blanc et noir','','134-000-p.jpg','134-000-p.jpg',0,0,1,0,0,50,0),(93,'ras du cou multirang swaro metal verre bleu noir','','032-001-p.jpg','032-001-p.jpg',0,0,1,0,0,57,0),(94,'verre argente vert argent','','002-003-p.jpg','002-003-p.jpg',0,0,1,0,0,127,0),(95,'multirangs tubes fushia','','072-000-p.jpg','072-000-p.jpg',0,0,1,0,0,17,0),(96,'pendentif verre et perles noires','','054-001-p.jpg','054-001-p.jpg',0,0,0,0,0,128,0),(97,'burkinabe 3 rangs PM','','109-000-p.jpg','109-000-p.jpg',0,0,1,0,0,74,0),(98,'byzantin noir','','106-000-p.jpg','106-000-p.jpg',0,0,1,0,0,121,0),(99,'burkinabe GM','','108-000-p.jpg','108-000-p.jpg',0,0,1,0,0,13,1),(100,'miracle bleu','','086-001-p.jpg','086-001-p.jpg',0,0,1,0,0,65,0),(101,'perles mille fiori bleues','','043-000-p.jpg','043-000-p.jpg',0,0,0,0,0,129,0),(102,'ras du cou nacre vert et rose','','028-000-p.jpg','028-000-p.jpg',0,0,1,0,0,15,0),(103,'fil macrame orange et bois','','094-000-p.jpg','094-000-p.jpg',0,0,1,0,0,109,0),(104,'ecrous','','098-002-p.jpg','098-002-p.jpg',0,0,1,0,0,3,5),(105,'ruban rouge','','016-001-p.jpg','016-001-p.jpg',0,0,1,0,0,36,0),(106,'pendentif 3 coeurs','','064-001-p.jpg','064-001-p.jpg',0,0,1,0,0,141,3),(107,'byzantin metal ajoure vertical','','107-000-p.jpg','107-000-p.jpg',0,0,1,0,0,122,0),(108,'pendentif gros anneau strasse','','060-001-p.jpg','060-001-p.jpg',0,0,1,0,0,69,3),(109,'nacre 3','','069-000-p.jpg','069-000-p.jpg',0,0,1,0,0,47,2),(110,'pendentif pastille metal ajoure et gouttes noires','','059-000-p.jpg','059-000-p.jpg',0,0,1,0,0,143,0),(111,'pieces paysage japonais','','040-005-p.jpg','040-005-p.jpg',0,0,1,0,0,148,0),(112,'smarties 2 rangs jaune et bleu','','161-000-p.jpg','161-000-p.jpg',0,0,1,0,0,112,0),(113,'ras du cou lin et perles bleues','','033-000-p.jpg','033-000-p.jpg',0,0,1,0,0,152,0),(114,'cadenas multirangs','','103-003-p.jpg','103-003-p.jpg',0,0,1,0,0,21,0),(115,'pendentif resille metallique','','056-000-p.jpg','056-000-p.jpg',0,0,0,0,0,132,3),(116,'happy','','088-001-p.jpg','088-001-p.jpg',0,0,1,0,0,146,10),(117,'ras du cou swaro metal verre rouge et or','','021-000-p.jpg','021-000-p.jpg',0,0,1,0,0,56,0),(118,'burkinabe 2 rangs','','110-001-p.jpg','110-001-p.jpg',0,0,1,0,0,75,4),(119,'bambou breloque verre','','119-000-p.jpg','119-000-p.jpg',0,0,1,0,0,7,10),(120,'pastilles multicolors','','001-005-p.jpg','001-005-p.jpg',0,0,1,0,0,33,8),(121,'fil et macrame beige','','096-001-p.jpg','096-001-p.jpg',0,0,1,0,0,110,0),(123,'miracle vert et rose','','078-000-p.jpg','078-000-p.jpg',0,0,1,0,0,62,0),(124,'fil et macrame violet et brun','','095-001-p.jpg','095-001-p.jpg',0,0,1,0,0,108,0),(125,'3 rangs peints blanc chocolat vert','','141-000-p.jpg','141-000-p.jpg',0,0,1,0,0,41,0),(126,'1900 cristal et noir','','157-000-p.jpg','157-000-p.jpg',0,0,1,0,0,51,0),(127,'ruban noir 1','','018-002-p.jpg','018-002-p.jpg',0,0,1,0,0,37,0),(128,'5 chaines','','136-000-p.jpg','136-000-p.jpg',0,0,1,0,0,153,3),(129,'fil desire 3 rangs cristal noir et argent','','097-001-p.jpg','097-001-p.jpg',0,0,1,0,0,119,0),(130,'bigout assym rouge et blanc','','114-000-p.jpg','114-000-p.jpg',0,0,1,0,0,104,0),(131,'3 rangs long ou court turquoise','','144-000-p.jpg','144-000-p.jpg',0,0,1,0,0,98,0),(132,'ras du cou 5 rangs noir et blanc','','037-001-p.jpg','037-001-p.jpg',0,0,1,0,0,66,0),(133,'bigoux assym noir et rouge','','112-000-p.jpg','112-000-p.jpg',0,0,1,0,0,18,10),(134,'foulard tresse noir et or','','092-002-p.jpg','092-002-p.jpg',0,0,1,0,0,6,1),(135,'perles carre metal et facettes irisees','','046-000-p.jpg','046-000-p.jpg',0,0,1,0,0,101,0),(136,'multirangs blanc et brun','','077-001-p.jpg','077-001-p.jpg',0,0,1,0,0,38,0),(137,'bracelets tisses','','162-015-p.jpg','162-015-p.jpg',0,0,1,0,0,158,0),(140,'3 rangs peints fonces','','138-001-p.jpg','138-001-p.jpg',0,0,1,0,0,42,2),(141,'perle tissu','','047-001-p.jpg','047-001-p.jpg',0,0,1,0,0,145,0),(142,'pendentif perles bois 1940 noir et or','','058-000-p.jpg','058-000-p.jpg',0,0,1,0,0,32,7),(143,'foulard tresse argent et blanc','','093-001-p.jpg','093-001-p.jpg',0,0,1,0,0,34,0),(144,'ras du cou nacre orange et jaune','','030-001-p.jpg','030-001-p.jpg',0,0,1,0,0,48,0),(146,'2 rangs perles cloisonnees de Chine','','151-002-p.jpg','151-002-p.jpg',0,0,1,0,0,130,6),(147,'collier 3 rondelles de bois noir','','100-000-p.jpg','100-000-p.jpg',0,0,0,0,0,149,0),(148,'swaro noir et petrole','','005-003-p.jpg','005-003-p.jpg',0,0,1,0,0,55,0),(149,'bracelets perles peintes','','162-014-p.jpg','162-014-p.jpg',0,0,0,0,0,159,0),(150,'assymetrique 3 rangs bleu','','125-000-p.jpg','125-000-p.jpg',0,0,1,0,0,77,0),(151,'bigout noir et blanc','','115-000-p.jpg','115-000-p.jpg',0,0,1,0,0,103,0),(152,'3 rangs peints bleu vert rouge','','139-001-p.jpg','139-001-p.jpg',0,0,1,0,0,44,0),(153,'pendentifs sur anneau cloisonnees de Chine_','','049-001-p.jpg','049-001-p.jpg',0,0,0,0,0,134,0),(154,'ras du cou 5 rangs perles dures','','036-000-p.jpg','036-000-p.jpg',0,0,1,0,0,67,0),(155,'miracle rouge','','080-001-p.jpg','080-001-p.jpg',0,0,1,0,0,64,0),(156,'ras du cou multirangs swaro metal verre noir et marron','','031-000-p.jpg','031-000-p.jpg',0,0,0,0,0,58,0),(157,'assymetrique rouge et or','','124-000-p.jpg','124-000-p.jpg',0,0,1,0,0,81,0),(158,'cadenas simple','','102-003-p.jpg','102-003-p.jpg',0,0,1,0,0,115,2),(159,'scarabee egyptien','','011-001-p.jpg','011-001-p.jpg',0,0,1,0,0,135,0),(183,'benares','','1000-016-p.jpg','1000-016-p.jpg',0,0,1,0,0,2,3),(184,'foulard tresse','','1000-033-p.jpg','1000-035.jpg',0,0,1,0,0,35,0),(185,'multirangs fils coton','','1000-029-p.jpg','1000-029-p.jpg',0,0,1,0,0,4,4),(186,'perles bois cubique','','1000-027-p.jpg','1000-027-p.jpg',0,0,1,0,0,26,7),(187,'perles tissu','','1000-004-p.jpg','1000-004-p.jpg',0,0,1,0,0,24,8),(188,'5filscoton et metal','','1000-008-p.jpg','1000-008-p.jpg',0,0,1,0,0,25,1);
/*!40000 ALTER TABLE `catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `id` int(11) NOT NULL auto_increment,
  `libelle` varchar(128) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (0,'undefined'),(1,'2008'),(2,'2009');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galerie`
--

DROP TABLE IF EXISTS `galerie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galerie` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_objet` int(11) NOT NULL,
  `fichier` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerie`
--

LOCK TABLES `galerie` WRITE;
/*!40000 ALTER TABLE `galerie` DISABLE KEYS */;
INSERT INTO `galerie` VALUES (1,1,'087-000.jpg',1),(2,1,'162-012.jpg',1),(3,1,'162-013.jpg',1),(4,2,'006-000.jpg',1),(5,3,'003-000.jpg',1),(6,3,'003-005.jpg',1),(7,4,'162-010.jpg',1),(8,4,'067-000.jpg',1),(9,4,'067-001.jpg',1),(10,5,'140-001.jpg',1),(11,5,'140-000.jpg',1),(12,6,'154-001.jpg',1),(13,7,'159-000.jpg',1),(14,7,'159-002.jpg',1),(15,8,'129-001.jpg',1),(16,11,'025-001.jpg',1),(17,12,'013-001.jpg',1),(18,13,'042-003.jpg',1),(19,13,'042-000.jpg',1),(20,13,'042-004.jpg',1),(21,13,'042-007.jpg',1),(22,13,'042-009.jpg',1),(23,13,'042-008.jpg',1),(24,13,'042-006.jpg',1),(25,13,'042-005.jpg',1),(26,13,'042-002.jpg',1),(27,14,'022-001.jpg',1),(28,15,'050-000.jpg',1),(29,15,'050-001.jpg',1),(30,17,'081-001.jpg',1),(31,17,'081-002.jpg',1),(32,18,'019-000.jpg',1),(33,18,'019-001.jpg',1),(34,19,'024-001.jpg',1),(35,19,'024-002.jpg',1),(36,19,'024-003.jpg',1),(37,20,'026-001.jpg',1),(38,21,'162-012.jpg',1),(39,21,'162-013.jpg',1),(40,21,'085-000.jpg',1),(41,22,'145-004.jpg',1),(42,22,'145-002.jpg',1),(43,22,'145-007.jpg',1),(44,22,'145-001.jpg',1),(45,22,'145-009.jpg',1),(46,22,'145-003.jpg',1),(47,23,'160-001.jpg',1),(48,24,'113-001.jpg',1),(49,25,'143-001.jpg',1),(50,26,'084-002.jpg',1),(51,26,'084-001.jpg',1),(52,27,'004-004.jpg',1),(53,27,'004-002.jpg',1),(54,28,'135-002.jpg',1),(55,28,'135-001.jpg',1),(56,29,'090-002.jpg',1),(57,29,'090-000.jpg',1),(58,31,'149-000.jpg',1),(59,32,'070-001.jpg',1),(60,33,'121-001.jpg',1),(61,35,'029-001.jpg',1),(62,36,'068-001.jpg',1),(63,37,'044-000.jpg',1),(64,38,'017-000.jpg',1),(65,38,'017-002.jpg',1),(66,39,'155-001.jpg',1),(67,39,'155-003.jpg',1),(68,40,'158-000.jpg',1),(69,42,'053-001.jpg',1),(70,42,'053-000.jpg',1),(71,42,'053-003.jpg',1),(72,43,'148-000.jpg',1),(73,44,'153-000.jpg',1),(74,45,'027-004.jpg',1),(75,45,'027-001.jpg',1),(76,45,'027-000.jpg',1),(77,45,'027-003.jpg',1),(78,45,'027-005.jpg',1),(79,46,'162-002.jpg',1),(80,46,'075-001.jpg',1),(81,46,'075-000.jpg',1),(82,47,'123-000.jpg',1),(83,48,'099-001.jpg',1),(84,49,'156-000.jpg',1),(85,50,'150-000.jpg',1),(86,51,'034-001.jpg',1),(87,52,'083-000.jpg',1),(88,52,'162-012.jpg',1),(89,52,'083-005.jpg',1),(90,52,'162-013.jpg',1),(91,52,'083-001.jpg',1),(92,52,'083-003.jpg',1),(93,52,'083-007.jpg',1),(94,52,'083-004.jpg',1),(95,52,'083-006.jpg',1),(96,53,'038-001.jpg',1),(97,54,'162-012.jpg',1),(98,54,'162-013.jpg',1),(99,54,'082-000.jpg',1),(100,55,'074-000.jpg',1),(101,56,'105-000.jpg',1),(102,57,'079-001.jpg',1),(103,57,'079-002.jpg',1),(104,58,'146-001.jpg',1),(105,58,'146-002.jpg',1),(106,59,'023-001.jpg',1),(107,60,'015-000.jpg',1),(108,61,'101-000.jpg',1),(109,62,'007-000.jpg',1),(110,63,'142-001.jpg',1),(111,63,'162-014.jpg',1),(112,63,'142-000.jpg',1),(113,64,'132-000.jpg',1),(114,65,'131-001.jpg',1),(115,66,'104-001.jpg',1),(116,67,'071-006.jpg',1),(117,67,'071-001.jpg',1),(118,67,'071-002.jpg',1),(119,67,'071-000.jpg',1),(120,67,'071-003.jpg',1),(121,67,'071-004.jpg',1),(122,68,'089-002.jpg',1),(123,68,'089-001.jpg',1),(124,68,'089-004.jpg',1),(125,69,'162-011.jpg',1),(126,70,'035-000.jpg',1),(127,71,'118-001.jpg',1),(128,72,'012-009.jpg',1),(129,72,'012-002.jpg',1),(130,72,'012-008.jpg',1),(132,72,'012-005.jpg',1),(133,73,'126-001.jpg',1),(135,74,'091-000.jpg',1),(136,75,'162-015.jpg',1),(137,75,'073-000.jpg',1),(138,75,'162-003.jpg',1),(139,75,'073-002.jpg',1),(140,76,'076-001.jpg',1),(141,76,'076-002.jpg',1),(142,77,'116-000.jpg',1),(143,78,'147-000.jpg',1),(144,78,'147-001.jpg',1),(145,79,'062-001.jpg',1),(146,80,'065-000.jpg',1),(147,81,'122-001.jpg',1),(148,82,'127-001.jpg',1),(149,83,'048-003.jpg',1),(150,83,'048-000.jpg',1),(151,83,'048-001.jpg',1),(152,85,'137-002.jpg',1),(153,85,'137-001.jpg',1),(154,86,'020-000.jpg',1),(155,86,'020-001.jpg',1),(156,87,'063-000.jpg',1),(157,88,'009-000.jpg',1),(158,89,'133-002.jpg',1),(159,89,'133-001.jpg',1),(160,90,'014-001.jpg',1),(161,90,'014-046.jpg',1),(162,90,'014-000.jpg',1),(163,90,'014-004.jpg',1),(164,90,'014-002.jpg',1),(165,90,'014-003.jpg',1),(166,91,'057-001.jpg',1),(167,92,'134-001.jpg',1),(168,92,'134-002.jpg',1),(169,93,'032-000.jpg',1),(170,94,'002-001.jpg',1),(171,94,'002-002.jpg',1),(172,95,'072-001.jpg',1),(173,96,'054-002.jpg',1),(174,96,'054-000.jpg',1),(175,97,'109-001.jpg',1),(176,97,'109-002.jpg',1),(177,98,'106-002.jpg',1),(178,98,'106-001.jpg',1),(179,99,'108-001.jpg',1),(180,99,'108-002.jpg',1),(181,100,'086-000.jpg',1),(182,100,'162-012.jpg',1),(183,100,'162-013.jpg',1),(184,101,'043-001.jpg',1),(185,102,'028-002.jpg',1),(186,102,'028-001.jpg',1),(187,103,'094-001.jpg',1),(188,104,'098-001.jpg',1),(189,104,'098-000.jpg',1),(190,105,'016-000.jpg',1),(191,105,'016-002.jpg',1),(192,106,'064-000.jpg',1),(193,107,'107-001.jpg',1),(194,108,'060-000.jpg',1),(195,109,'069-001.jpg',1),(196,109,'069-002.jpg',1),(197,111,'040-000.jpg',1),(198,111,'040-002.jpg',1),(199,111,'040-001.jpg',1),(200,111,'040-003.jpg',1),(201,111,'040-004.jpg',1),(202,112,'161-001.jpg',1),(203,113,'033-001.jpg',1),(204,114,'103-002.jpg',1),(205,114,'103-000.jpg',1),(206,114,'103-001.jpg',1),(207,115,'056-001.jpg',1),(208,116,'088-000.jpg',1),(209,116,'088-002.jpg',1),(210,116,'088-003.jpg',1),(211,118,'110-000.jpg',1),(212,118,'110-002.jpg',1),(213,119,'119-001.jpg',1),(214,120,'001-009.jpg',1),(215,120,'001-008.jpg',1),(216,120,'001-007.jpg',1),(217,120,'001-006.jpg',1),(218,120,'001-010.jpg',1),(220,120,'001-000.jpg',1),(221,120,'001-011.jpg',1),(222,120,'001-003.jpg',1),(223,120,'001-004.jpg',1),(225,121,'096-000.jpg',1),(226,122,'052-002.jpg',1),(227,122,'052-001.jpg',1),(228,123,'162-012.jpg',1),(229,123,'162-013.jpg',1),(230,123,'078-001.jpg',1),(231,124,'095-000.jpg',1),(232,125,'141-001.jpg',1),(233,126,'157-001.jpg',1),(234,126,'157-002.jpg',1),(235,126,'157-003.jpg',1),(236,127,'018-001.jpg',1),(237,127,'018-000.jpg',1),(238,128,'136-001.jpg',1),(239,128,'136-002.jpg',1),(240,129,'097-000.jpg',1),(241,130,'114-001.jpg',1),(242,131,'144-001.jpg',1),(243,132,'037-000.jpg',1),(244,133,'112-002.jpg',1),(245,133,'112-001.jpg',1),(246,134,'092-000.jpg',1),(247,134,'092-003.jpg',1),(248,134,'092-001.jpg',1),(249,135,'046-002.jpg',1),(250,135,'046-001.jpg',1),(251,136,'077-000.jpg',1),(252,136,'162-005.jpg',1),(253,136,'162-003.jpg',1),(254,137,'162-001.jpg',1),(255,137,'162-016.jpg',1),(256,137,'162-007.jpg',1),(257,137,'162-006.jpg',1),(258,137,'162-002.jpg',1),(259,137,'162-005.jpg',1),(260,137,'162-003.jpg',1),(261,137,'162-008.jpg',1),(262,138,'008-000.jpg',1),(263,138,'008-002.jpg',1),(264,139,'010-001.jpg',1),(265,139,'010-002.jpg',1),(266,140,'138-000.jpg',1),(267,140,'162-014.jpg',1),(268,140,'162-009.jpg',1),(269,141,'047-000.jpg',1),(270,141,'047-002.jpg',1),(271,142,'058-001.jpg',1),(272,143,'093-002.jpg',1),(273,143,'093-000.jpg',1),(274,144,'030-000.jpg',1),(275,144,'030-002.jpg',1),(276,145,'061-000.jpg',1),(277,146,'151-001.jpg',1),(278,146,'151-000.jpg',1),(279,146,'151-003.jpg',1),(280,148,'005-000.jpg',1),(281,149,'162-009.jpg',1),(282,150,'125-002.jpg',1),(283,150,'125-001.jpg',1),(284,151,'115-001.jpg',1),(285,152,'139-000.jpg',1),(286,153,'049-000.jpg',1),(287,154,'036-001.jpg',1),(288,155,'162-012.jpg',1),(289,155,'162-013.jpg',1),(290,155,'080-000.jpg',1),(291,156,'031-001.jpg',1),(292,158,'102-001.jpg',1),(293,158,'102-000.jpg',1),(294,158,'102-002.jpg',1),(295,159,'011-002.jpg',1),(296,159,'011-000.jpg',1),(299,175,'1000-032.jpg',1),(300,175,'1000-035.jpg',1),(301,175,'1000-034.jpg',1),(302,176,'1000-001.jpg',1),(303,176,'1000-005.jpg',1),(304,176,'1000-003.jpg',1),(305,176,'1000-007.jpg',1),(306,176,'1000-002.jpg',1),(307,176,'1000-006.jpg',1),(308,177,'1000-001.jpg',1),(309,177,'1000-005.jpg',1),(310,177,'1000-003.jpg',1),(311,177,'1000-007.jpg',1),(312,177,'1000-002.jpg',1),(313,177,'1000-006.jpg',1),(314,178,'1000-032.jpg',1),(315,178,'1000-035.jpg',1),(316,178,'1000-034.jpg',1),(317,179,'1000-001.jpg',1),(318,179,'1000-005.jpg',1),(319,179,'1000-003.jpg',1),(320,179,'1000-007.jpg',1),(321,179,'1000-002.jpg',1),(322,179,'1000-006.jpg',1),(323,180,'1000-032.jpg',1),(324,180,'1000-035.jpg',1),(325,180,'1000-034.jpg',1),(326,181,'1000-001.jpg',1),(327,181,'1000-005.jpg',1),(328,181,'1000-003.jpg',1),(329,181,'1000-007.jpg',1),(330,181,'1000-002.jpg',1),(331,181,'1000-006.jpg',1),(332,182,'1000-032.jpg',1),(333,182,'1000-035.jpg',1),(334,182,'1000-034.jpg',1),(335,68,'1000-039.jpg',1),(336,68,'1000-040.jpg',1),(337,183,'1000-015.jpg',1),(338,183,'1000-013.jpg',1),(340,183,'1000-018.jpg',1),(343,183,'1000-011.jpg',1),(347,183,'1000-014.jpg',1),(349,183,'1000-017.jpg',1),(351,183,'1000-012.jpg',1),(354,184,'1000-032.jpg',1),(358,184,'1000-034.jpg',1),(363,185,'1000-031.jpg',1),(366,185,'1000-030.jpg',1),(367,186,'1000-025.jpg',1),(369,186,'1000-028.jpg',1),(370,186,'1000-026.jpg',1),(371,186,'1000-023.jpg',1),(375,186,'1000-019.jpg',1),(380,186,'1000-021.jpg',1),(382,186,'1000-022.jpg',1),(384,186,'1000-024.jpg',1),(386,186,'1000-020.jpg',1),(390,187,'1000-001.jpg',1),(391,187,'1000-005.jpg',1),(392,187,'1000-003.jpg',1),(394,187,'1000-007.jpg',1),(397,187,'1000-002.jpg',1),(399,187,'1000-006.jpg',1),(402,188,'1000-009.jpg',1),(403,188,'1000-010.jpg',1),(404,184,'1000-033-p.jpg',1),(405,189,'1000-032.jpg',1),(406,189,'1000-033-p.jpg',1),(407,189,'1000-034.jpg',1);
/*!40000 ALTER TABLE `galerie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membres`
--

DROP TABLE IF EXISTS `membres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membres` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `tel` text,
  `cp` varchar(25) NOT NULL,
  `birthdate` int(11) unsigned NOT NULL,
  `newsletter` text NOT NULL,
  `actif` tinyint(3) unsigned NOT NULL,
  `admin` tinyint(4) NOT NULL default '0',
  `date_inscription` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membres`
--

LOCK TABLES `membres` WRITE;
/*!40000 ALTER TABLE `membres` DISABLE KEYS */;
INSERT INTO `membres` VALUES (3,'','','','dderieux@libertysurf.fr',NULL,'',0,'',0,0,0),(35,'','','','votre adresse email',NULL,'',0,'',0,0,0),(4,'','','','guillaume@vendetta-production.com',NULL,'',0,'',0,0,0),(43,'denis','marianne','oisilly','marianne896@hotmail.com','0610117875','75014',1244335705,'1',1,1,0),(20,'Pagès','Maxime','max','maxime@studio-http.com','0123456789','75015',546904800,'1',1,1,0),(44,'Rumeau','Robin','puce0975','robin@studio-http.com','0621954287','75014',1244268501,'1',1,1,0),(34,'','','','isabelle.denis@canal-plus.com',NULL,'',0,'',0,0,0),(41,'dauchy','dfhdhsdh','014604','emmanuel@studio-http.com','0146048509','92100',1244186958,'1',1,0,0),(156,'robin test','robin test','puce0975','nhood75@hotmail.com','','',179362800,'1',0,0,1244884804),(45,'Denis','Catherine','oisilly','denis_catherine@hotmail.com','0603004257','75015',1244338395,'1',1,0,0),(46,'alas','justine','280380','alasjustine@hotmail.fr','0620516938','69002',1244342026,'1',1,0,0),(47,'rey','bertrand','bebert','jube.rey@gmail.com','','',1244255793,'1',1,0,0),(48,'Lambert','Marie','begmeil','marielambertdja@wanadoo.fr','','',1244285246,'1',1,0,0),(49,'trost','alice','aud1upar','alice.trost@yahoo.de','','',1244344229,'1',1,0,0),(50,'Rondeau','Fabienne','helgalux','fabienne_rondeau@yahoo.fr','06 59 27 86 06 ','75001',1244346572,'1',1,0,0),(51,'martinez','olivia','tilcara06','oliviamartinez@hotmail.fr','','',1244438879,'1',1,0,0),(52,'Denis','Isabelle','oisilly21','mattbernard@orange.fr','0611436338','92170',1244330401,'1',1,0,0),(53,'RUMEAU','Jean','menou1946','jrumeau@club-internet.fr','0607219436','78930',1244357864,'1',1,0,0),(54,'rumeau','Marie Josée','collias','mjvincent@club-internet.fr','0620754826','78930',1244358604,'1',1,0,0),(55,'Diallo','Elisa','bintadenise','elisa.diallo@gmail.com','','',1244413049,'1',1,0,0),(56,'DENIS','Chloé','alattaque','clodogune@hotmail.com','06 23 86 69 21','75015',1244374734,'1',1,0,0),(57,'MATHORET-PHILIBERT','FLORENCE','EMYLOUIS','flomathoret@gmail.com','661824223','92110',1244375835,'1',1,0,0),(61,'Lafon','Sophie','studi0','sophie@studio-http.com',NULL,'',0,'',1,0,0),(62,'Bloch','Coralie','pepsine','kilukru@free.fr','0622592686','78420',75510000,'1',1,0,0),(63,'Carpentier','Céline','bouquet','boisson.celine@neuf.fr','','75011',316825200,'1',1,0,0),(64,'Fidelin','Marie','salina','mfidelin@hotmail.fr','0698322633','75013',188348400,'1',1,0,0),(65,'aubert','isabelle','artannes','aubertni@wanadoo.fr','','92100',0,'1',1,0,0),(66,'antigny','cecile','010905','cecileantigny@gmail.com','0663032475','75018',304210800,'1',1,0,0),(67,'pinchon','pierre','jeandolent','ppinchon@gmail.com','0619031','75009',249606000,'1',1,0,0),(68,'Erguven','Zeynep','fistik007','zeynep@zeyneprepresents.com','01 53 86 96 80','75015',205628400,'1',1,0,0),(69,'Récamier-Hameline','Véro','globule','veronique.recamier@wanadoo.fr','0134780969','78',69980400,'1',1,0,0),(70,'charrier','maude','modcha','maudecharrier@aol.fr','','',257382000,'1',0,0,0),(71,'planque','thomas','nocovers','t.planque@free.fr','0146589463','94200',0,'1',1,0,0),(72,'mourllion','VERONIQUE','010376','vmourllion@gmail.com','','',194482800,'1',1,0,0),(73,'chapoul','perine','choupette','perinemattle@hotmail.com','','05330',250470000,'1',1,0,0),(74,'aurand','myrtille','4848','elitrim@hotmail.com','06 81 29 28 75','75015',203727600,'1',1,0,0),(75,'BERTAINA','Virginie','marianneb','virgillaume@hotmail.com','0173738097','75014',172796400,'1',1,0,0),(76,'ferry','margot','margay','abipoe@hotmail.fr','','',674863200,'1',1,0,0),(77,'bainville','stephanie','alecha','stephaniebainville@yahoo.fr','0624472253','94700',26780400,'1',1,0,0),(78,'deltombe','aurelie','blaise76','aurelie_deltombe@yahoo.fr','','75010',208393200,'1',1,0,0),(79,'Baron','Edwige','ciboulette','edwigebaron@free.fr','','',269305200,'1',1,0,0),(80,'Bouissou','Damien','241004','d.bouissou@iesa.fr','','75011',401234400,'1',1,0,0),(81,'Bianchi','Sara','corsica','s.bianchi@iesa.fr','','',331077600,'1',1,0,0),(82,'nicolas','camille','mikaxx','camillenicolas@hotmail.com','','',328658400,'1',1,0,0),(83,'QUARTIER','Maud','chocolat','maudquartier@hotmail.com','0672193329','75018',412383600,'1',1,0,0),(84,'Bardot-Tetu','Manuelle','manue','manuellebardot@yahoo.fr','0682873555','75020',0,'1',1,0,0),(85,'GUEROIS','Mariane','tre29nez','guerois_as@yahoo.fr','06 16 58 14 42','92600',156898800,'1',1,0,0),(86,'Belhaouari','luis','mamour1','luis.belhaouari@orange.fr','','',0,'1',0,0,0),(87,'Kienast','Hélène','1967','hkienast@prisma-presse.com','','92300',0,'1',1,0,0),(88,'Picard','Claire','topsie','cpicard@prisma-presse.com','','',127004400,'1',1,0,0),(89,'Ansidei Berthelot','Mathilde','Gaspard09','mathilde.ansideiberthelot@marsh.com','','92',198543600,'1',1,0,0),(90,'Salah','Fabienne','fsafsa','fabienne_salah@hotmail.com','0616661624','13006',0,'1',1,0,0),(91,'olivier','nathalie','natnat','nathalie.olivier2@wanadoo.fr','0681827728','92400',0,'1',1,0,0),(92,'Rumeau','Michèle','aumagne','rumeaumichele@orange.fr','0233347244','61190',0,'1',1,0,0),(93,'GONNET','Arno','210277','arno@labomix.org','06','93260',225327600,'1',1,0,0),(94,'de Mullenheim','Christel','coquillettes','chris2mull@yahoo.fr','06 12 48 61 72','76000',208047600,'1',1,0,0),(95,'Hanry','Nicole','granny','nicole.hanry1@club-internet.fr','0145791007','75015',0,'1',1,0,0),(96,'Deltombe','Blaise','aurelie76','blaise.deltombe@laposte.net','','',212713200,'1',1,0,0),(97,'julie','testier','123456789','funnygirl78@hotmail.fr','','',713484000,'0',1,0,0),(98,'damon','xavier','marianne','x@xavierdamon.com','','',0,'1',1,0,0),(99,'LE MANDAT','Sophie','140571','s.lemandat@aliceadsl.fr','','31100',43023600,'1',1,0,0),(100,'LANDON','AMANDINE','250481','amandine.landon@hotmail.fr','0667232753','75001',356997600,'1',1,0,0),(101,'massardier','christine','christine','famillemassardier@wanadoo.fr','','',0,'1',1,0,0),(102,'dupouy','amélie','25551801','damielie@free.fr','0679723425','93310',348620400,'1',1,0,0),(103,'cayot','michele','rhumeo','michele@cayot.com','0474860408','38150',0,'1',1,0,0),(104,'Lemans','marie-caroline','metro','marie-ca.lemans@laposte.net','06 62 76 03 13','91630',195519600,'1',1,0,0),(105,'leroux','guillaume','mar','guillaume.leroux@netcourrier.com','','13001',218847600,'1',1,0,0),(106,'Collin','Françoise','lola511','collinf@club-internet.fr','0380574704','21000',0,'1',1,0,0),(107,'Saulnier','emmanuelle','Bichat','emmanuelle.amiot@wanadoo.fr','0609554742','75010',117327600,'1',1,0,0),(108,'Guigo','Elsa','bianca','elsaguigo@hotmail.com','','75010',105922800,'1',1,0,0),(109,'Certain','jb','couscous','certainbcn@gmail.com','+34620629100','',245718000,'0',1,0,0),(110,'Charoy','Aurore','bijoumayou','auroredenis@hotmail.com','06 69 06 97 93','75017',273452400,'1',1,0,0),(111,'ker','Gwenaelle','rootss','gwenaelle@rockenseine.com','','',346546800,'1',1,0,0),(112,'Jarno','Marie-Hélène','tinuta','contact@tinuta.com','','75017',0,'1',1,0,0),(113,'veron','claude','norev','claude.veron@telenet.be','OO32487164380','3360',0,'1',0,0,0),(114,'Awenengo ','Séverine ','severine','sawenengo@yahoo.fr','0632493459','75020',232498800,'1',1,0,0),(115,'AWENENGO DALBERTO','Sophie','kJ6fHN65','sofia_awen@yahoo.fr','','',475542000,'0',1,0,0),(116,'Deslandes','Claire','royale','laymil@free.fr','','75011',220057200,'1',1,0,0),(117,'Chevallier','claire','volute','clai-ro@hotmail.fr','','',510274800,'1',1,0,0),(118,'henry','saskia','saskia2126','henry.steve@aliceadsl.fr','0146420057','92130',0,'1',1,0,0),(119,'demoy','stephanie','BBLEOPAUL','stephanie.demoy@free.fr','','',164934000,'0',1,0,0),(120,'Pellerin','Anne','titoune','aepellerin@gmail.com','','59000',222390000,'1',1,0,0),(121,'Denis','Doriane','051154','justetido@yahoo.fr','0623836987','75017',334965600,'1',1,0,0),(122,'ROBERT','Marie clémence','boulogne','marieclem@libertysurf.fr','0686346227','75014',504745200,'1',1,0,0),(123,'GRUNBL.ATT','LORENE','barnabee','lorene.grunblatt@canal-plus.com','0148280736','75014',14166000,'1',1,0,0),(124,'Bernard-Benevento','Lorine','maxlau','lorine.bernardbenevento@citi.com','0661774934','94340',188002800,'1',1,0,0),(125,'LE CHATELIER','Alexandra','victoria','alexandra.lechatelier@wanadoo.fr','0686286899','92100',19177200,'1',1,0,0),(126,'berthomier','vanessa','vanessa','vberthomier@hotmail.com','','',279759600,'1',0,0,0),(127,'Kloeckner','Hélène','immensite','kloecknerhelene@yahoo.fr','','',232844400,'1',1,0,0),(128,'fondeville','estelle','estelle','estelle.fondeville@gmail.com','','',154998000,'0',1,0,0),(129,'CHAPUIS','Nathalie','julien','nathalie.chapuis@canal-plus.com','','75012',93394800,'1',1,0,0),(130,'lepage','marie','cassiusakira','lepagemarie@live.fr','','',419551200,'1',1,0,0),(131,'Boischot','Claude','140670','claude.boischot@orange.fr','0623864357','38000',0,'1',1,0,0),(132,'LEGUT','sylvie','bonjour','sylvie.legut@orange.fr','0660599561','92300',0,'1',1,0,0),(133,'ADREY','Hélène','10061978','helene_adrey@hotmail.com','0617901003','75011',266281200,'1',1,0,0),(134,'dupin de saint cyr','severine','severine','srdupin@gbordier.com','','92270',191804400,'1',0,0,0),(135,'bergue','julie','gazelle','cybergue@yahoo.fr','0603677783','75020',253494000,'1',1,0,0),(136,'Jamard','Christine','skafun','christinejamard@hotmail.com','06 70 74 84 63','75020',349657200,'1',1,0,0),(137,'Schmitt','Pierre-Edouard','pes','pe.schmitt@iesamultimedia.com','','',299458800,'1',1,0,0),(138,'COLLET','Maylis','mad1720','mayliscollet@gmail.com','0665544521','75013',318985200,'1',1,0,0),(139,'denize','aurore','MONTICELLO','auroredenize@hotmail.fr','','',316393200,'1',1,0,0),(140,'astier','marie valentine','sambre','marie.astier@voila.fr','','75019',323992800,'1',1,0,0),(141,'hubert-brierre','virginie','190600','comptahb@club.fr','','83440',215046000,'1',1,0,0),(142,'Roux','Saya','poussin55','sayakohuddleston@hotmail.com','','',144630000,'0',1,0,0),(143,'KOLODITZKY','Aurélia','aurelia','aureliakoloditzky@gmail.com','0623082407','92800',214786800,'1',1,0,0),(144,'adeline','barth','adibar','a.barth@iesa.fr','00441473225502','ip1 4lw',323478000,'1',1,0,0),(145,'Chanteux','Béryl','bcla20ma10','berylchanteux@hotmail.com','','',104281200,'1',1,0,0),(146,'Clark','Geneviève','renoir','anthony.clark@club-internet.fr','0170132838','94300',0,'1',1,0,0),(147,'Clark','Geneviève','renoir','anthony.clark@sncf.fr','0170132888','94300',0,'1',0,0,0),(148,'Clark','Geneviève','renoir','anthony-clark@club-internet.fr','0170132888','94',0,'1',0,0,0),(149,'Chaoui-Derieux','Dorothée','wotch1','doroT@chaoui.net','0615148485','75015',228178800,'1',1,0,0),(150,'cossart','joséphine','safran','alice64@hotmail.fr','','',176338800,'1',1,0,0),(151,'cayot','olivier','choupette','coicaud@cayot.com','0699666548','92700',250124400,'1',1,0,0),(152,'lynch','emeric','FICHFICH','emericlynch@hotmail.com','','35000',197074800,'1',0,0,0),(153,'REGNIER','Pauline','megeve','regnierpauline@yahoo.fr','','',509842800,'1',1,0,0),(154,'Barthélémy','Pascale','caloubelle','barhelemypascale@yahoo.fr','','75013',70844400,'1',0,0,0),(157,'Balland','Karine','Vietnam','kballand@yahoo.fr','','75018',212367600,'1',1,0,1244976888),(158,'Duras','Marguerite','thomas','laluta@hotmail.com','','',233708400,'0',0,0,1244984274),(159,'cornet','edith','160953','edith.cornet@free.fr','','78400',0,'1',1,0,1244992187),(160,'Berthail','Pauline','andromaque','treguierberthail@yahoo.fr','','75',0,'1',1,0,1244996454),(161,'CAULIER','DOROTHEE','dcaulier','dorothee.caulier@gmail.com','','92300',0,'1',1,0,1245010389),(162,'Jaubert-Porteneuve','Elodie','constanzina','elodie.jaubert@gmail.com','0663915762','75017',341622000,'1',1,0,1245012931),(163,'de thy','Alexa','alexos','alexa.dethy@free.fr','06179072474','',222562800,'1',1,0,1245054276),(164,'Chocquet','Laurence','passaga','laurencechocquet','','75015',0,'1',0,0,1245054533),(165,'de Lacotte','Suzanne','suzanne','suzannedelacotte@yahoo.fr','','',258764400,'1',1,0,1245055297),(166,'accary','claire','pourquoi','loosclaire@yahoo.fr','','92600',217810800,'1',1,0,1245059957),(167,'roques','melanie','jules','melanie@nawak.com','','',135644400,'1',1,0,1245066741),(168,'PAJOT','AMELIE','alix2000','ameliepajot@free.fr','','92140',116118000,'1',1,0,1245088302),(169,'jurcec','isabelle','caratspfd','isabellejurcec@hotmail.fr','0608756594','92110',87174000,'1',1,0,1245095166),(170,'Chocquet','Laurence','passaga','laurencechocquet@voila.fr','','75015',0,'1',1,0,1245095354),(171,'massie','eva','marriage1','evamassie@yahoo.fr','0663582253','75011',210898800,'1',1,0,1245095399),(172,'paries','damien','joshua','damien.paries@gmail.com','','92120',202258800,'1',1,0,1245139457),(173,'Télias','annie','oisilly','telias@ehess.fr','','',0,'1',1,0,1245154276),(174,'guerois','melanie','&','Melanieguerois0aol.com','','',215305200,'1',0,0,1245177128),(175,'Morgan','Madeleine','liberation','mrumeau@cegetel.net','','11160',0,'1',1,0,1245224189),(176,'lapeyre','sabine','scapin7','ziaamiedesteban@hotmail.com','','',209084400,'1',1,0,1245231677),(177,'saul','muriel','arusha','muriel.saul@gmail.com','0145442864','75007',0,'1',1,0,1245231938),(178,'seunevel','françoise','soizic','f.seunevel@ch-sainte-anne.fr','','',0,'1',1,0,1245242125),(179,'SIMONET','SOPHIA','150171','sbsimonet@hotmail.com','','44000',32742000,'1',0,0,1245325443),(180,'Ghilardi','Paola ','love22','paola_ghilardi@yahoo.fr','','',321663600,'1',1,0,1245358260),(181,'el chikh','amina','2001850124','el-chikh@voila.fr','','75007',501289200,'1',1,0,1245399548),(182,'PHILI','JEROME','1312','j.philibert@gmail.com','','92110',313887600,'1',1,0,1245401692),(183,'fournier','anne','maelbijoux','anne2f2@free.fr','','',255567600,'1',1,0,1245408406),(184,'fumeau','violaine','coucou','viofumeau@yahoo.fr','','',158454000,'0',1,0,1245410031),(185,'Baaziz','Malika','myvitriol','malikabaaziz@hotmail.com','0603051593','75020',235695600,'1',1,0,1245415291),(186,'le Marié ','Constance ','patate','constance_lm@hotmail.fr','','',490485600,'1',0,0,1245419753),(187,'jucla','caroline','rataouille','caroline.jucla@yahoo.fr','','',383094000,'0',1,0,1245423933),(188,'LALY','GABRIELLE','hugomath','gabrielle.rostan-laly@canal-plus.com','','',0,'1',1,0,1245424163),(189,'mahieux','sophie','eliott','mechantlutin@free.fr','','75017',130719600,'1',1,0,1245429005),(190,'Schmitt','Françoise','ruban','f.schmitt@iesa.fr','','',0,'1',1,0,1245430076),(191,'GREBILLE','BORIS','culture','b.grebille@iesa.fr','0663126409','75005',79830000,'1',1,0,1245430479),(192,'Poulain','Charles','z32war24o','charles.poulain@gmail.com','0673171531','78590',371430000,'1',1,0,1245461465),(193,'Braham','Anissa','democrite','a.abdellatif@iesa.fr','','',318726000,'1',1,0,1245488116),(194,'Panourgias','Sophie','gorgona','sophie.panourgias@numericable.fr','','75014',0,'1',1,0,1245507486),(195,'Blanc','Justine','bellamy','j.blanc@iesa.fr','','',474850800,'1',1,0,1245519953),(196,'pod','yeva','kazia080','evapod@hotmail.fr','','78',316911600,'1',0,0,1245584210),(197,'Marchand','Jean-Baptiste','azerty','jibemarchand@gmail.com','','',0,'0',1,0,1245615417),(198,'Auger','Stéphanie','gandons','stephanie.gandon@gmail.com','0608491493','75014',104713200,'1',1,0,1245618277),(199,'MORSCHER','peggy','nemesis','pmorsch@hotmail.com','','',104454000,'1',1,0,1245660414),(200,'loison','christina','123456','christina8@hotmail.fr','','',1245733007,'0',0,0,0),(201,'daudin','aurelie','aurelie','aurelie0aurelie@hotmail.fr','0650021091','75014',511743600,'1',1,0,1245668220),(202,'loison','christina','QTTCt2#','c.loison@toulouse-business-school.org','','07130',570495600,'1',1,0,1245671123),(203,'COSLER','Françoise','francoise','francoise.cosler@culture.gouv.fr','01 40 15 75 86','78280',0,'1',1,0,1245671611),(204,'arnould','sylvie','13011992','sylvie.arnould@canal-plus.com','06 16 33 64 84','92190',0,'1',1,0,1245692192),(205,'Boutry','Amélie','alex','amelie@amelieboutry.net','','',248223600,'1',1,0,1245692692),(206,'denis','jacques','picasso','jacques.denis@zaostratecrea.com','06 09 75 40 63','92100',0,'1',1,0,1245696400),(207,'Médoux','Franck','zenith','franck.medoux@zaostratecrea.com','0685117653','92300',0,'1',1,0,1245698145),(208,'raynal','melanie','bouleta','melraynal@gmail.com','','',525823200,'0',1,0,1245743405),(209,'Poulou','Anne','ntestdlqf','apoulou@gmail.com','0624621306','75015',52700400,'1',1,0,1245855945),(210,'lecluze','CAROLINE','carohugo','caroline.lecluze@gmail.com','','',178239600,'0',1,0,1245864355),(211,'duplouy','joanna','110784','joanna.duplouy@yahoo.fr','','',458344800,'1',1,0,1245914204),(212,'Henriquez','Andréa','enaesmiandrea','andrea.henriquez@live.com','0668055938','75016',462664800,'1',1,0,1245951970),(213,'faure','chloé','bijouxbijoux','faure.chloe@club-internet.fr','','38120',392594400,'1',1,0,1246116300),(214,'Conjard','Stéphanie','drajnoc75','stephanie@conjard.com','','',177289200,'1',1,0,1246137038),(215,'CORDELIER','Arnaud','scxxsaes','arnaud@cordelier.com','','92100',84582000,'1',1,0,1246200860),(216,'MARONI','Georgina','ppalmes','g.maroni@iesanetwork.com','0685424651','75014',0,'1',1,0,1246219687),(217,'ss','sss','FR','dd@rr.fr','','',559173600,'1',0,0,1246283121),(218,'crepin','astrid','ba yacheri','astridcrepin@gmail.com','','78210',472345200,'1',1,0,1246546667),(219,'Ousset-Delage','Catherine','campiech','cjm.delage@gmail.com','0614404610','94800',0,'1',1,0,1247066767),(220,'nivaud','anne-bérengère','1402abn','ab.nivaud@hotmail.fr','','',508719600,'1',1,0,1247140663),(221,'mangeney','alexandra','110475','alexandra.mangeney@axa.fr','','91370',166402800,'1',1,0,1247144021),(222,'Parisot','Aurore','siamsiam','aurore@lilei-prod.com','0683202152','75014',186793200,'1',0,0,1247417222),(223,'BRETECHE','Catherine','lou2nathan','catherinebreteche@yahoo.fr','','78120',112489200,'1',1,0,1247999508),(224,'Roche','Erika','bernard1935','erika-roche@hotmail.fr','','',457048800,'1',1,0,1249033788),(225,'badert','xavier','maquichou','xavier.badert0768@gmail.com','0613451214','83150',0,'1',1,0,1250077278),(226,'dufourgt','maud','freiMD86','maud.dufourgt@yahoo.fr','','',515282400,'1',1,0,1250237368),(227,'CHASTAN','DELPHINE','monugo','dchastan@gmail.com','','',0,'0',1,0,1250276691),(228,'Duquerroy','Hélène','1908ln!','helene.duquerroy@gmail.com','','',398556000,'1',1,0,1250694027),(229,'Vasselle','Marion','charly','marionvass@hotmail.com','','',562201200,'0',1,0,1251398394),(230,'Luiggi','Claire','coluche','claireluiggi@gmail.com','','',254876400,'1',1,0,1251665358),(231,'Desvignes','Emilie','upsydaisy','miliesmoo@yahoo.fr','','56100',299804400,'0',1,0,1251960950),(232,'prevot','camille','poupoupidou','mlle.prevot@gmail.com','','',519861600,'1',1,0,1252262904),(233,'DIOT','mathilde','zoukette','mattidk@hotmail.com','','91210',628902000,'1',1,0,1252787229),(234,'Fontaine','Charlotte','fontaine','c.fontaine@iesanetwork.com','','',535590000,'1',1,0,1253049494);
/*!40000 ALTER TABLE `membres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `id_objet` bigint(20) NOT NULL,
  `id_vente` bigint(20) NOT NULL,
  `quantite` bigint(20) NOT NULL,
  `prix` bigint(20) NOT NULL,
  `mode` varchar(30) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (4,66,0,1,35,'CHQ','','Xavier & Emmanuel','',1245501442),(5,69,0,1,7,'CHQ','','Xavier & Emmanuel','',1245501518);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `libelle` varchar(128) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (0,'undefined'),(1,'colier'),(2,'bracelet');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rumeau','robin','robin@studio-http.com','admin',1),(2,'denis','marianne','marianne896@hotmail.com','admin',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente`
--

DROP TABLE IF EXISTS `vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vente` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `titre` varchar(128) NOT NULL,
  `date_debut` int(11) NOT NULL,
  `date_fin` int(11) NOT NULL,
  `lieu` varchar(256) NOT NULL,
  `flyer` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `vente` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente`
--

LOCK TABLES `vente` WRITE;
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
INSERT INTO `vente` VALUES (10,'ExpoVente',1244412000,1245535200,'<p>55 rue Hippolyte Maindron<br /> 75014 Paris<br /> M&deg; Al&eacute;sia (ligne 4) ou Pernety (ligne 13)<br /> code 89A98<br /> interphone 3\'3\'<br /> 3&egrave;me &eacute;tage droi</p>','',0,'<p>&nbsp;</p>\r\n<p><br /><span style=\"font-weight: bold;\"><br />Samedi 20 juin 2009</span></p>\r\n<p><span style=\"font-weight: bold;\"><br />De 13:00 &agrave; 18:00</span><br /><br /><br />Afin de vous accueillir au mieux, je vous remercie de cliquer sur le bouton \"<strong>s\'inscrire &agrave; cette vente</strong>\" ci-dessous.</p>\r\n<p><br />N\'h&eacute;sitez pas &agrave; inviter vos ami(e)s!</p>',1),(11,'ExpoVente',1245794400,1247090400,'<p>55 rue Hippolyte Maindron - 75014 Paris</p>\r\n<p>M&deg; Al&eacute;sia (ligne 4) ou Pernety (ligne 13)</p>\r\n<p>code 31415 interphone 3\'3\' 3&egrave;me &eacute;tage droite</p>','',0,'<p>&nbsp;</p>\r\n<p><br /><span style=\"font-weight: bold;\"><br />Mardi 7 juillet 2009</span></p>\r\n<p><span style=\"font-weight: bold;\"><br />A partir de 19:00&nbsp;</span></p>\r\n<p><span style=\"font-weight: bold;\">&nbsp;</span><br />Venez vous parer pour l\'&eacute;t&eacute; autour d\'un verre...<br />N\'h&eacute;sitez pas &agrave; inviter vos ami(e)s !</p>\r\n<p><br />Afin de vous accueillir au mieux, je vous remercie de bien vouloir me faire part de votre venue en cliquant ici :</p>\r\n<p>&nbsp;</p>\r\n<p><br /><br /></p>',1),(12,'',1254952800,1256943600,'','',0,'<h3><span style=\"font-weight: normal;\">En attendant la prochaine &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Exposition-Vente...</span></h3>\r\n<h3><span style=\"font-weight: normal;\"><br /></span></h3>\r\n<h3><span style=\"font-weight: normal;\">Si vous d&eacute;sirez acheter certains bijoux, ou souhaitez venir les d&eacute;couvrir autour d\'un caf&eacute;,</span></h3>\r\n<h3><span style=\"font-weight: normal;\">Si vous voulez organiser une vente priv&eacute;e chez vous,</span></h3>\r\n<h3><span style=\"font-weight: normal;\">Si vous d&eacute;sirez cr&eacute;er pour vous un bijou unique sur mesure,</span></h3>\r\n<h3><span style=\"font-weight: normal;\">Ou pour toute autre information,</span></h3>\r\n<p><span style=\"font-weight: normal;\"><br /></span></p>\r\n<h3><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\">Contactez moi...&nbsp;</span></span></span></span></span><span style=\"white-space: pre;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\">A tr&egrave;s bient&ocirc;t !</span></span></span></span></span></span></h3>',0),(13,'testtoto',1256684400,1256857200,'','',0,'<h3>En attendant la prochaine &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Exposition-Vente...</h3>\r\n<h3>Si vous d&eacute;sirez acheter certains bijoux, ou souhaitez venir les d&eacute;couvrir autour d\'un caf&eacute;,</h3>\r\n<h3>Si vous voulez organiser une vente priv&eacute;e chez vous,</h3>\r\n<h3>Si vous d&eacute;sirez cr&eacute;er pour vous un bijou unique sur mesure,</h3>\r\n<h3>Ou pour toute autre information,</h3>\r\n<h3><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\">Contactez moi...&nbsp;</span></span></span></span></span><span style=\"white-space: pre;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\"><span style=\"font-weight: normal;\">A tr&egrave;s bient&ocirc;t !</span></span></span></span></span></span></h3>',0),(14,'ExpoVente de printemps',1267830000,1267830000,'<p>Hotel Favart</p>\r\n<p>5 rue Marivaux</p>\r\n<p>75002</p>\r\n<p>&nbsp;</p>','',0,'<p><span style=\"font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; color: #444444;\">\r\n<div>Pour faire venir les beaux jours, il faut se colorer!!</div>\r\n<div></div>\r\n<div>Un bijoux 80\'s en scoubidou, graphique ou acidul&eacute;,&nbsp;</div>\r\n<div>Un collier ultra l&eacute;ger en fils d\'or ou d\'argent</div>\r\n<div>Un bracelet rock n\' roll en cuir corbeau ou orange</div>\r\n<div>Des boucles d\'oreilles &agrave; message,</div>\r\n<div>Une parure de t&ecirc;te en sequins et paillettes....</div>\r\n</span></p>',0);
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente_membre`
--

DROP TABLE IF EXISTS `vente_membre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vente_membre` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_vente` int(10) unsigned NOT NULL,
  `id_membre` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente_membre`
--

LOCK TABLES `vente_membre` WRITE;
/*!40000 ALTER TABLE `vente_membre` DISABLE KEYS */;
INSERT INTO `vente_membre` VALUES (3,10,44),(4,10,43),(5,10,77),(6,10,138),(7,10,136),(8,10,50),(9,11,44),(10,11,43);
/*!40000 ALTER TABLE `vente_membre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-29 10:21:22
