-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 0    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.27-0ubuntu1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  `pictures` varchar(255) DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (NULL,NULL,'A New Hope','Not much tho',NULL,NULL,NULL,1,'2016-01-14 00:06:59','2016-01-14 00:06:59'),(NULL,'Drugo',NULL,NULL,NULL,NULL,NULL,2,'2016-01-16 23:27:42','2016-01-16 23:27:42'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2016-01-16 23:29:08','2016-01-16 23:29:08'),(NULL,NULL,'A New Hope','Not',NULL,NULL,NULL,4,'2016-01-16 23:29:53','2016-01-16 23:29:53'),(NULL,'Drugo','Skočili smo','Včasih je potrebno najprej skočiti in šele nato reči hop. Tako nekako smo se pri Dobrodelen.si lotili našega projekta. Skočili, in nato upali. Upali, da ne ostanemo v zraku in predvsem upali, da pristanek ne bo preveč trd. Skočili smo polni pozitivne energije in upanja, da nam bo uspelo. Uspelo nam je. Hop.','Spletna stran dobrodelen.si je namenjena vsem tistim, ki so se znašli v stiski in iz različnih razlogov potrebujejo našo pomoč. Omogoča jim, da ustvarijo nov dobrodelni projekt in s svojo zgodbo prepričajo prijazne ljudi v doniranje poljubnega zneska. Vsi, ki bi želeli pomagati sočloveku in mu tako polepšati dan in olajšati življenje, pa lahko preprosto izbirajo med projekti in se odločijo za tiste, ki se jim zdijo najbolj pomoči potrebni. V Sloveniji je aktivnih veliko dobrodelnih skupnosti, vendar pa ni neke enotne platforme, kjer bi ljudje lahko pregledali vse tekoče dobrodelne akcije. Namen projekta dobrodelen.si je zapolniti to vrzel in ustvariti nekakšen lokalni, slovenski gofundme.com, ki bi posameznikom omogočil enostavno, pregledno in varno zbiranje sredstev, hkrati pa enako izkušnjo zagotovil tudi vsem tistim, ki bi ta sredstva velikodušno donirali. Stran dobrodelen.si je namenjena vsem.',NULL,NULL,5,'2016-01-16 23:31:58','2016-01-16 23:31:58'),('Jakob Šalej','Drugo','Skočili smo','Včasih je potrebno najprej skočiti in šele nato reči hop. Tako nekako smo se pri Dobrodelen.si lotili našega projekta. Skočili, in nato upali. Upali, da ne ostanemo v zraku in predvsem upali, da pristanek ne bo preveč trd. Skočili smo polni pozitivne energije in upanja, da nam bo uspelo. Uspelo nam je. Hop.','Spletna stran dobrodelen.si je namenjena vsem tistim, ki so se znašli v stiski in iz različnih razlogov potrebujejo našo pomoč. Omogoča jim, da ustvarijo nov dobrodelni projekt in s svojo zgodbo prepričajo prijazne ljudi v doniranje poljubnega zneska. Vsi, ki bi želeli pomagati sočloveku in mu tako polepšati dan in olajšati življenje, pa lahko preprosto izbirajo med projekti in se odločijo za tiste, ki se jim zdijo najbolj pomoči potrebni. V Sloveniji je aktivnih veliko dobrodelnih skupnosti, vendar pa ni neke enotne platforme, kjer bi ljudje lahko pregledali vse tekoče dobrodelne akcije. Namen projekta dobrodelen.si je zapolniti to vrzel in ustvariti nekakšen lokalni, slovenski gofundme.com, ki bi posameznikom omogočil enostavno, pregledno in varno zbiranje sredstev, hkrati pa enako izkušnjo zagotovil tudi vsem tistim, ki bi ta sredstva velikodušno donirali. Stran dobrodelen.si je namenjena vsem.',NULL,NULL,6,'2016-01-16 23:32:50','2016-01-16 23:32:50');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articlecomment`
--

DROP TABLE IF EXISTS `articlecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articlecomment` (
  `text` longtext,
  `likes` varchar(255) DEFAULT NULL,
  `articleCommentator` int(11) DEFAULT NULL,
  `articleCommentingUser` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlecomment`
--

LOCK TABLES `articlecomment` WRITE;
/*!40000 ALTER TABLE `articlecomment` DISABLE KEYS */;
INSERT INTO `articlecomment` VALUES ('Danes je bil Prevc odlicen',NULL,NULL,NULL,1,'2016-01-15 21:47:13','2016-01-15 21:47:13'),('Danes je bil Prevc odlicen',NULL,NULL,1,2,'2016-01-15 21:51:12','2016-01-15 21:51:12'),('Danes je bil Prevc odlicen',NULL,1,1,3,'2016-01-15 21:52:59','2016-01-15 21:52:59');
/*!40000 ALTER TABLE `articlecomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribution`
--

DROP TABLE IF EXISTS `contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribution` (
  `text` longtext,
  `amount` varchar(255) DEFAULT NULL,
  `contributor` int(11) DEFAULT NULL,
  `onProject` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution`
--

LOCK TABLES `contribution` WRITE;
/*!40000 ALTER TABLE `contribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `projectName` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `goal` float DEFAULT NULL,
  `collected` float DEFAULT NULL,
  `shortDescription` varchar(120) DEFAULT NULL,
  `description` longtext,
  `pictures` varchar(255) DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-01-13 23:22:14','2016-01-13 23:22:14'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2016-01-13 23:37:02','2016-01-13 23:37:02'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2016-01-13 23:37:08','2016-01-13 23:37:08'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2016-01-13 23:37:12','2016-01-13 23:37:12'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2016-01-13 23:37:13','2016-01-13 23:37:13'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'2016-01-13 23:37:14','2016-01-13 23:37:14'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2016-01-13 23:37:15','2016-01-13 23:37:15'),('\"Bitka s casom\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,8,'2016-01-13 23:37:49','2016-01-13 23:37:49'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'2016-01-15 21:17:40','2016-01-15 21:17:40'),('Maji moja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,10,'2016-01-15 21:57:52','2016-01-15 21:57:52'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,'2016-01-15 21:58:19','2016-01-15 21:58:19'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,'2016-01-15 22:24:03','2016-01-15 22:24:03'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,'2016-01-16 20:04:17','2016-01-16 20:04:17'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,'2016-01-16 20:04:17','2016-01-16 20:04:17'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,'2016-01-16 20:04:55','2016-01-16 20:04:55'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,'2016-01-16 20:04:55','2016-01-16 20:04:55'),('Pomoc','Družina',3434,NULL,'fsdfdasfa',NULL,NULL,NULL,NULL,17,'2016-01-16 21:24:09','2016-01-16 21:24:09'),('asdasd','Izobrazba',324324,NULL,'sdasdasdas',NULL,NULL,NULL,NULL,18,'2016-01-16 21:25:09','2016-01-16 21:25:09'),('sadasd','Izobrazba',324324,0,'sdasdasdas',NULL,NULL,NULL,NULL,19,'2016-01-16 21:26:19','2016-01-16 21:26:19'),('sadasd','Izobrazba',324324,0,'sdasdasdas',NULL,NULL,NULL,NULL,20,'2016-01-16 21:34:15','2016-01-16 21:34:15'),('Kupimo Janezu kolo','Družina',200,174,'Janez bi se rad naučil voziti kolo.','Janez se pelje s kolesom.',NULL,'5',NULL,21,'2016-01-17 13:57:35','2016-01-17 13:57:35'),('Kupimo dodatno uro časa Jakobu Šaleju','Ostalo',1,0,'Ker je zelo v zaostanku, bi bil Jakob zeeelo hvaležen, če bi dobil extra gratis uro ali dve.','Harry Potter is the most miserable, lonely boy you can imagine. He’s shunned by his relatives, the Dursley’s, that have raised him.',NULL,NULL,NULL,22,'2016-01-17 18:09:08','2016-01-17 18:09:08'),('Pomagajmo lačnim','Urgentno!',10000,0,'V naši deželi je vse več lačnih ljudi. Pomagajmo jim!','The Atlanta Hawks and Sacramento Kings will both attempt to extend win streaks in their next matchup, but history is squarely on the side of one of them.\r\nThe Hawks go for a 16th consecutive victory against the Kings on Thursday night in Sacramento.\r\nAtlanta (26-17) earned a third straight win in the opener to a four-game road trip Wednesday, topping Portland 104-98. Kent Bazemore and Paul Millsap each provided 23 points as the Hawks avoided a third consecutive road loss.\r\nThe Kings (18-23) matched their longest win streak this season by also earning a third consecutive victory, 112-93 against the Los Angeles Lakers on Wednesday. With 36 points, DeMarcus Cousins scored 29 or more for the eighth time in nine games since Jan. 1, and his 16 rebounds gave him 10 or more in eight consecutive contests.\r\n\"DeMarcus has shown at a high, high level that he\'s an All-Star,\" coach George Karl said. \"Is there a better center playing basketball right now in the NBA? I don\'t think there is. ... I don\'t know anybody that\'s playing at this level right now, and I hope the NBA recognizes it and gives him an opportunity to play in Toronto (at the All-Star Game).\"\r\nCousins had 24 points and 12 rebounds in Atlanta on Nov. 18 as the Kings failed to end the league\'s longest active losing streak versus one opponent, falling 103-97.',NULL,NULL,NULL,23,'2016-01-22 01:41:45','2016-01-22 01:41:45'),('Pomagajmo Sacramentu','Urgentno!',100000,0,'Potrebujejo kakšno zmago več.','The Atlanta Hawks and Sacramento Kings will both attempt to extend win streaks in their next matchup, but history is squarely on the side of one of them.\r\nThe Hawks go for a 16th consecutive victory against the Kings on Thursday night in Sacramento.\r\nAtlanta (26-17) earned a third straight win in the opener to a four-game road trip Wednesday, topping Portland 104-98. Kent Bazemore and Paul Millsap each provided 23 points as the Hawks avoided a third consecutive road loss.\r\nThe Kings (18-23) matched their longest win streak this season by also earning a third consecutive victory, 112-93 against the Los Angeles Lakers on Wednesday. With 36 points, DeMarcus Cousins scored 29 or more for the eighth time in nine games since Jan. 1, and his 16 rebounds gave him 10 or more in eight consecutive contests.\r\n\"DeMarcus has shown at a high, high level that he\'s an All-Star,\" coach George Karl said. \"Is there a better center playing basketball right now in the NBA? I don\'t think there is. ... I don\'t know anybody that\'s playing at this level right now, and I hope the NBA recognizes it and gives him an opportunity to play in Toronto (at the All-Star Game).\"\r\nCousins had 24 points and 12 rebounds in Atlanta on Nov. 18 as the Kings failed to end the league\'s longest active losing streak versus one opponent, falling 103-97.',NULL,NULL,NULL,24,'2016-01-22 01:43:29','2016-01-22 01:43:29'),('asas','Ostalo',34234,0,'asdas','sadasdas',NULL,NULL,NULL,25,'2016-01-22 02:01:03','2016-01-22 02:01:03'),('asdasdasd','Ostalo',321424000,0,'adasdasd','asddsadsaas',NULL,NULL,8,26,'2016-01-22 03:22:12','2016-01-22 03:22:12'),('asdasdasd','Ostalo',3424240,0,'asdasdasd','asdasdsad',NULL,NULL,8,27,'2016-01-22 04:07:07','2016-01-22 04:07:07'),('addad','Ostalo',3234230,0,'dasa','asdasdadassdassd',NULL,NULL,8,28,'2016-01-22 04:08:25','2016-01-22 04:08:25');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcomment`
--

DROP TABLE IF EXISTS `projectcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcomment` (
  `text` longtext,
  `likes` varchar(255) DEFAULT NULL,
  `projectCommentator` int(11) DEFAULT NULL,
  `projectCommentingUser` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcomment`
--

LOCK TABLES `projectcomment` WRITE;
/*!40000 ALTER TABLE `projectcomment` DISABLE KEYS */;
INSERT INTO `projectcomment` VALUES ('Super akcija s super namenom, take akcije z veseljem podprem. Hvala vsem udeleženim za njihov trud in upam, da se vam uspe čim bolj medijsko izpostaviti in posledično dobiti\n                                čim več sredstev. Pohvalil bi tudi tole spletno stran, pregledna, preprosta in z lepim namenom - le tako naprej!',NULL,21,6,1,NULL,NULL);
/*!40000 ALTER TABLE `projectcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `firstname` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (NULL,NULL,'juhu',NULL,NULL,1,'2016-01-13 20:30:15','2016-01-13 20:30:15'),(NULL,NULL,'jakobsalej',NULL,'jakob.salej@test.si',2,'2016-01-13 23:20:01','2016-01-13 23:20:01'),('Jakob','Salej','jakobs','123','jakob@salej.com',3,'2016-01-16 18:45:32','2016-01-16 18:45:32'),('Jakob','Salej','jakobsalej','123','jakob@salej.com',4,'2016-01-16 18:46:59','2016-01-16 18:46:59'),('Matija','Salej','matijasan','234','matija@salej.com',5,'2016-01-16 18:48:34','2016-01-16 18:48:34'),('Jakob','Šalej','jojo','1234','jakob@salej.com',6,'2016-01-16 22:59:49','2016-01-16 22:59:49'),('sdas','sdad','da','123','juhuhu@email.com',7,'2016-01-17 20:37:18','2016-01-17 20:37:18'),('Dzoni','Novak','dzoni','1234','novak.dzoni@yahoo.com',8,'2016-01-21 21:43:22','2016-01-21 21:43:22'),('Maja','Srdarev','majinagaji','12345','maja.srdarev@lepotica.com',9,'2016-01-22 00:32:42','2016-01-22 00:32:42'),('Maja','Srdarev','majinagaji','123','maja.srdarev@lepotica.com',10,'2016-01-22 00:33:47','2016-01-22 00:33:47'),('Maja','Srdarev','majinagaji','123','maja.srdarev@lepotica.com',11,'2016-01-22 00:34:22','2016-01-22 00:34:22'),('Jakob','Salej','jakobsalej','1234','jakob.salej@gmail.com',12,'2016-01-22 03:09:09','2016-01-22 03:09:09');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-22  4:29:31
