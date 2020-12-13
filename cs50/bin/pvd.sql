-- MySQL dump 10.13  Distrib 5.5.51-38.1, for Linux (x86_64)
--
-- Host: localhost    Database: webothmatter_pvd
-- ------------------------------------------------------
-- Server version	5.5.51-38.1

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
-- Table structure for table `markers`
--

DROP TABLE IF EXISTS `markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubMillis` bigint(13) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timesUpdated` int(10) NOT NULL,
  `longitude` decimal(8,6) NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `roadType` int(1) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `magvar` int(3) DEFAULT NULL,
  `reportRating` int(1) DEFAULT NULL,
  `confidence` int(1) DEFAULT NULL,
  `reliability` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locationUnique` (`longitude`,`latitude`,`pubMillis`)
) ENGINE=InnoDB AUTO_INCREMENT=9967 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markers`
--

LOCK TABLES `markers` WRITE;
/*!40000 ALTER TABLE `markers` DISABLE KEYS */;
INSERT INTO `markers` VALUES (21,2147483647,'2016-08-22 01:53:41',1,-71.439977,41.814739,3,'US-6 W','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',192,2,1,8),(22,2147483647,'2016-08-22 01:53:41',1,-71.402786,41.799195,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',185,2,4,10),(23,2147483647,'2016-08-22 14:28:01',120,-71.430293,41.777855,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(24,2147483647,'2016-08-22 14:28:01',120,-71.422862,41.776380,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(27,2147483647,'2016-08-22 14:30:01',120,-71.419515,41.775954,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(28,2147483647,'2016-08-22 14:30:01',120,-71.419114,41.775464,0,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',112,2,0,5),(503,2147483647,'2016-08-22 21:20:01',118,-71.439530,41.816013,3,'RI-10 S','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',191,3,0,5),(504,2147483647,'2016-08-22 21:14:02',120,-71.479391,41.820667,4,'to US-6A / Johnston','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',281,3,0,5),(527,2147483647,'2016-08-22 21:28:01',116,-71.484129,41.821997,7,'Hartford Ave','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,3,0,5),(529,2147483647,'2016-08-22 21:28:01',115,-71.440349,41.812863,4,'to RI-10 S / Cranston','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',189,3,0,5),(540,2147483647,'2016-08-22 21:28:01',113,-71.430859,41.783623,7,'Pontiac Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',166,3,0,5),(541,2147483647,'2016-08-22 21:28:01',113,-71.430780,41.782289,7,'Pontiac Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',202,3,0,5),(542,2147483647,'2016-08-22 21:28:01',113,-71.433119,41.780485,7,'Pontiac Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',230,3,0,5),(1209,2147483647,'2016-08-22 22:06:02',37,-71.418042,41.828276,3,'I-95 N','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',12,2,0,5),(1342,2147483647,'2016-08-23 01:54:02',120,-71.426528,41.777103,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',285,2,0,5),(1343,2147483647,'2016-08-23 01:54:02',120,-71.428247,41.777445,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',286,2,0,5),(1588,1471948065675,'2016-08-23 14:26:01',120,-71.430369,41.777871,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(1590,1471948122019,'2016-08-23 14:28:01',120,-71.422949,41.776393,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(1591,1471948168201,'2016-08-23 14:28:01',120,-71.420774,41.776118,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',99,2,0,5),(1592,1471948179370,'2016-08-23 14:28:01',120,-71.419614,41.775974,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(1593,1471948188441,'2016-08-23 14:28:01',120,-71.419173,41.775484,0,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',117,2,0,5),(1604,1471948365949,'2016-08-23 10:58:01',13,-71.402979,41.800993,3,'I-95 N','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',346,2,0,5),(2022,1471958240070,'2016-08-23 17:16:01',120,-71.402529,41.798416,4,'Exit 18: US-1A / Thurbers Ave','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',18,1,0,5),(2226,1471962165557,'2016-08-23 14:56:01',17,-71.404378,41.804254,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',165,1,0,5),(2338,1471975690275,'2016-08-23 20:08:02',44,-71.418256,41.829429,4,'Exit 22C-B-A: Downtown / US-6 W / RI-10 / Providence Pl','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',196,3,0,5),(2340,1471975820287,'2016-08-23 18:44:01',17,-71.440709,41.814076,3,'US-6 W','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',239,3,0,5),(2341,1471975968942,'2016-08-23 21:24:01',96,-71.479379,41.820665,4,'to US-6A / Johnston','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',281,3,0,5),(2384,1471977677236,'2016-08-23 21:34:02',87,-71.483012,41.821666,0,'Hartford Ave','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',113,3,0,5),(2535,1471984841734,'2016-08-24 00:40:02',119,-71.422871,41.786059,0,'Narragansett Ave','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',168,2,0,5),(2536,1471984849696,'2016-08-24 00:40:02',119,-71.422530,41.785110,2,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',160,2,0,5),(2537,1471984869432,'2016-08-24 00:40:02',119,-71.422588,41.782662,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',197,2,0,5),(2543,1471984937629,'2016-08-24 00:42:01',119,-71.426584,41.777114,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',285,2,0,5),(2609,1471986330918,'2016-08-24 01:04:02',119,-71.421570,41.826037,4,'to I-95 N / Boston','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',84,3,0,5),(3177,1472000564249,'2016-08-24 05:02:01',120,-71.417809,41.790087,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',230,2,0,5),(3297,1472034394948,'2016-08-24 14:26:02',120,-71.430326,41.777862,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(3298,1472034435780,'2016-08-24 14:26:02',120,-71.423034,41.776405,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(3299,1472034478261,'2016-08-24 14:28:02',121,-71.419772,41.776005,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',98,2,0,5),(3300,1472034487801,'2016-08-24 14:28:02',120,-71.419200,41.775495,4,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',122,2,0,5),(3778,1472057486566,'2016-08-24 17:54:01',32,-71.419564,41.824009,3,'I-95 N','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',15,3,0,5),(3800,1472060113137,'2016-08-24 19:44:02',65,-71.404513,41.813863,3,'I-195 W','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',222,2,0,5),(3804,1472060340738,'2016-08-24 21:10:02',106,-71.422417,41.784873,2,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',160,2,0,5),(3805,1472060357173,'2016-08-24 21:10:02',106,-71.422515,41.782855,2,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',197,2,0,5),(3806,1472060382271,'2016-08-24 21:10:02',106,-71.424612,41.779676,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',215,2,0,5),(3812,1472060443422,'2016-08-24 21:10:02',105,-71.426411,41.777079,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',285,2,0,5),(4045,1472065810575,'2016-08-24 21:38:02',74,-71.420397,41.787391,6,'Elmwood Ave','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',157,2,0,5),(4372,1472077161824,'2016-08-25 00:02:01',52,-71.419031,41.828257,7,'Promenade St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',292,3,0,5),(4424,1472149647427,'2016-08-25 21:16:02',85,-71.398927,41.858539,7,'Main St','US','Pawtucket, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',195,3,0,5),(4427,1472149912421,'2016-08-25 21:16:02',83,-71.410176,41.834389,6,'N Main St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',190,3,0,5),(4432,1472150156223,'2016-08-25 21:46:01',96,-71.426059,41.825862,3,'US-6 W','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',265,3,0,5),(4435,1472150217599,'2016-08-25 21:28:01',81,-71.439265,41.816991,3,'US-6 W','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',201,3,0,5),(4436,1472150241819,'2016-08-25 21:16:02',80,-71.441946,41.814024,3,'US-6 W','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',279,3,0,5),(4438,1472150392194,'2016-08-25 21:16:02',79,-71.479474,41.820678,4,'to US-6A / Johnston','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',281,3,0,5),(4517,1472151941600,'2016-08-25 21:28:01',72,-71.484114,41.821993,7,'Hartford Ave','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',110,3,0,5),(4534,1472152117348,'2016-08-25 21:32:02',72,-71.441862,41.813892,3,'US-6 E','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',99,3,0,5),(4538,1472152100378,'2016-08-25 20:04:01',28,-71.445613,41.814889,3,'US-6 E','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',134,3,0,5),(4887,1472157101603,'2016-08-26 00:30:02',120,-71.420930,41.819403,2,'Dean St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',149,3,0,5),(4923,1472157542967,'2016-08-26 00:38:01',120,-71.480611,41.823746,0,'Borden Ave','US','Johnston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',50,2,0,5),(5232,1472165096160,'2016-08-26 02:44:01',120,-71.469528,41.837084,2,'Woonasquatucket Ave','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',134,2,0,5),(5284,1472167148219,'2016-08-26 03:18:01',120,-71.447171,41.854757,7,'Smithfield Rd','US','North Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',152,2,0,5),(5285,1472167172666,'2016-08-26 03:18:01',120,-71.446348,41.853564,7,'Admiral St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',152,2,0,5),(5291,1472167212320,'2016-08-26 03:20:01',120,-71.442777,41.850660,7,'Admiral St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',115,2,0,5),(5292,1472167307395,'2016-08-26 03:22:02',121,-71.435257,41.847696,7,'Admiral St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',117,2,0,5),(5941,1472224159666,'2016-08-26 15:36:02',14,-71.404282,41.796911,3,'I-95 N','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',50,2,0,5),(5955,1472238497861,'2016-08-26 19:42:02',17,-71.419496,41.824734,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',196,3,0,5),(5972,1472244650188,'2016-08-27 00:50:02',120,-71.413415,41.845248,2,'W River St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',190,3,0,5),(5982,1472245781723,'2016-08-27 02:06:01',149,-71.439933,41.814214,3,'RI-10 S','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',189,3,0,5),(5988,1472246064583,'2016-08-27 01:20:01',123,-71.431179,41.784668,7,'Pontiac Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',167,3,0,5),(6350,1472261909056,'2016-08-27 05:38:01',120,-71.391775,41.776154,2,'Narragansett Blvd','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',347,3,0,5),(6484,1472318049373,'2016-08-27 17:24:01',5,-71.417970,41.789981,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',227,3,0,6),(6489,1472318834358,'2016-08-27 21:26:01',120,-71.383827,41.858721,0,'Pleasant St','US','Pawtucket, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',4,3,0,5),(6531,1472323727651,'2016-08-27 22:48:02',120,-71.397450,41.828236,7,'Hope St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',345,0,0,5),(6616,1472328846375,'2016-08-28 00:14:02',120,-71.422534,41.785118,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',160,2,0,5),(6617,1472328864564,'2016-08-28 00:14:02',120,-71.422542,41.782782,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',197,2,0,5),(6618,1472328882649,'2016-08-28 00:14:02',120,-71.423855,41.780419,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',221,2,0,5),(6621,1472328926826,'2016-08-28 00:14:02',120,-71.426585,41.777114,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',285,2,0,5),(7209,1472429470752,'2016-08-29 04:10:02',120,-71.389541,41.819589,6,'Gano St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',182,2,0,5),(7329,1472466420892,'2016-08-29 14:26:01',120,-71.430260,41.777849,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',104,2,0,5),(7331,1472466490794,'2016-08-29 14:28:01',120,-71.423014,41.776402,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(7332,1472466540507,'2016-08-29 14:28:01',120,-71.419760,41.776004,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',98,2,0,5),(7333,1472466549427,'2016-08-29 14:28:01',120,-71.419067,41.775452,0,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',108,2,0,5),(7809,1472489140506,'2016-08-29 20:42:02',119,-71.439951,41.814117,3,'RI-10 S','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',189,3,0,5),(7928,1472514015762,'2016-08-30 03:40:02',120,-71.411625,41.818665,1,'Clifford St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',216,1,0,5),(8048,1472556401198,'2016-08-30 15:26:01',120,-71.417997,41.827954,7,'Promenade St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',292,3,0,5),(8049,1472590446180,'2016-08-31 00:54:01',120,-71.422603,41.785262,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',160,2,0,5),(8050,1472590473466,'2016-08-31 00:54:01',120,-71.422708,41.782349,0,'Wellington Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',197,2,0,5),(8289,1472639095233,'2016-08-31 14:24:02',120,-71.427844,41.777361,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(8290,1472639121753,'2016-08-31 14:24:02',120,-71.423129,41.776419,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(8291,1472639189598,'2016-08-31 14:26:01',120,-71.419760,41.776004,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',98,2,0,5),(8292,1472639197712,'2016-08-31 14:26:01',120,-71.419220,41.775504,4,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',122,2,0,5),(8295,1472639180278,'2016-08-31 14:26:01',120,-71.420868,41.776130,0,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',99,2,0,5),(8889,1472653765971,'2016-08-31 15:20:01',26,-71.419779,41.823944,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',196,5,0,5),(8915,1472669596797,'2016-08-31 22:04:02',96,-71.398957,41.860103,7,'Main St','US','Pawtucket, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',175,3,0,5),(8916,1472669632230,'2016-08-31 22:10:01',99,-71.399028,41.858251,7,'Main St','US','Pawtucket, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',195,3,0,5),(8935,1472670678768,'2016-08-31 23:10:01',120,-71.439557,41.814580,3,'RI-10 N','US','','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',12,2,0,5),(9041,1472675009257,'2016-09-01 00:22:02',120,-71.435754,41.829364,0,'Prescott St','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',241,1,0,5),(9350,1472725470892,'2016-09-01 14:24:02',120,-71.427847,41.777361,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',105,2,0,5),(9351,1472725516130,'2016-09-01 14:24:02',120,-71.422821,41.776374,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',100,2,0,5),(9352,1472725579289,'2016-09-01 14:26:02',120,-71.419113,41.775464,0,'to RI-10 N / to I-95','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',112,2,0,5),(9355,1472725570916,'2016-09-01 14:26:02',120,-71.419760,41.776004,6,'Park Ave','US','Cranston, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',98,2,0,5),(9688,1472735592749,'2016-09-01 17:12:01',120,-71.455898,41.847899,6,'Smith St','US','North Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',117,5,0,5),(9950,1472751262825,'2016-09-01 18:08:01',17,-71.421862,41.786044,3,'I-95 S','US','Providence, RI','WEATHERHAZARD','HAZARD_ON_ROAD_POT_HOLE',210,2,0,5);
/*!40000 ALTER TABLE `markers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-01 19:22:29