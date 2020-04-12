-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (77,'A Facilisis Company'),(82,'Ac Sem Corporation'),(92,'Adipiscing Mauris Molestie Company'),(26,'Aenean Egestas Hendrerit Corporation'),(66,'Aliquam LLC'),(32,'Aliquam LLP'),(39,'Aliquet Consulting'),(16,'Aliquet Metus Urna PC'),(93,'Amet Consectetuer Adipiscing Company'),(41,'Ante Industries'),(36,'Arcu Vel Incorporated'),(83,'At Associates'),(75,'At Egestas Inc.'),(85,'At Pede Cras Consulting'),(65,'Blandit Mattis Associates'),(33,'Congue A Foundation'),(17,'Cras Eget Corp.'),(8,'Cras Inc.'),(38,'Cras Lorem Incorporated'),(4,'Curabitur Vel Associates'),(52,'Cursus Inc.'),(94,'Cursus Nunc LLP'),(95,'Dictum Sapien Aenean Incorporated'),(64,'Dolor Industries'),(49,'Donec Elementum Institute'),(18,'Dui Semper Foundation'),(96,'Eget Massa Suspendisse Inc.'),(67,'Eleifend Egestas Sed Limited'),(45,'Elit A LLC'),(59,'Elit Corp.'),(72,'Elit Curabitur Inc.'),(6,'Elit Erat LLC'),(81,'Elit Fermentum Risus Associates'),(7,'Eros Nec Tellus Company'),(62,'Et Ultrices Posuere LLP'),(3,'Eu Associates'),(86,'Eu Associates'),(70,'Eu Foundation'),(98,'Facilisi Sed Consulting'),(34,'Feugiat Company'),(9,'Hendrerit Id Institute'),(44,'Id Ante Dictum Ltd'),(28,'Id Libero Donec LLP'),(51,'In Faucibus Morbi Institute'),(54,'In Incorporated'),(46,'Interdum Libero Ltd'),(29,'Interdum Sed Auctor Consulting'),(91,'Justo Proin Foundation'),(13,'Justo Proin PC'),(27,'Lacinia Inc.'),(100,'Laoreet Lectus Quis PC'),(43,'Litora Company'),(87,'Litora Torquent Per Associates'),(47,'Lobortis Incorporated'),(79,'Lorem Inc.'),(61,'Lorem Luctus Incorporated'),(25,'Luctus Lobortis Class Corp.'),(68,'Magna Nec Quam Limited'),(12,'Mattis Industries'),(10,'Mattis Ornare Lectus Inc.'),(30,'Metus Ltd'),(76,'Mi Duis Risus Institute'),(88,'Mi Industries'),(55,'Mi Pede Nonummy LLC'),(37,'Nam Institute'),(35,'Natoque Ltd'),(11,'Nec Cursus Associates'),(53,'Nec Limited'),(97,'Nec Tempus Mauris Incorporated'),(20,'Neque Sed Ltd'),(21,'Nibh Limited'),(99,'Non Incorporated'),(80,'Non Quam Pellentesque Company'),(19,'Nulla Vulputate Foundation'),(22,'Pellentesque Sed Dictum Foundation'),(50,'Placerat Augue Foundation'),(90,'Proin Vel Company'),(23,'Purus Maecenas Libero Ltd'),(15,'Quisque Imperdiet Ltd'),(58,'Sagittis Nullam Institute'),(1,'Sapien Foundation'),(14,'Scelerisque Dui Suspendisse Incorporated'),(71,'Sed Diam Foundation'),(31,'Sit Amet Incorporated'),(40,'Sociis Corp.'),(48,'Sociis Natoque Penatibus Corporation'),(84,'Sodales Elit Institute'),(42,'Sollicitudin Adipiscing Ligula PC'),(69,'Suspendisse Ac Metus Foundation'),(73,'Suspendisse Sed Incorporated'),(89,'Tellus Inc.'),(2,'Tincidunt Aliquam Consulting'),(78,'Tincidunt Incorporated'),(5,'Urna Vivamus Molestie Institute'),(57,'Ut Sagittis Associates'),(60,'Ut Sagittis Lobortis Limited'),(24,'Varius Ultrices Foundation'),(63,'Vehicula Pellentesque Consulting'),(74,'Vitae Associates'),(56,'Volutpat Nunc Sit PC');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint unsigned NOT NULL,
  `target_user_id` bigint unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') DEFAULT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (2,15,'unfriended','2018-12-24 05:55:10','2019-07-31 13:34:57'),(4,28,'unfriended','2016-08-02 16:26:23','2019-10-21 02:19:37'),(5,50,'requested','2017-07-16 07:01:24','2020-02-20 03:55:12'),(6,27,'unfriended','2021-02-22 17:08:52','2021-02-21 10:15:20'),(6,80,'unfriended','2020-06-27 10:50:17','2020-12-01 16:36:04'),(7,50,'approved','2016-01-23 18:35:47','2019-10-13 18:42:45'),(8,41,'approved','2014-11-16 06:11:11','2021-01-12 10:47:23'),(9,9,'requested','2017-07-19 08:51:56','2020-03-18 14:06:11'),(10,23,'declined','2015-12-14 01:13:24','2021-03-07 09:55:30'),(10,52,'requested','2015-11-16 14:57:39','2020-05-27 09:52:13'),(11,23,'requested','2020-06-24 04:14:14','2020-08-25 04:34:52'),(11,95,'approved','2017-09-25 19:06:49','2019-05-06 05:19:33'),(12,29,'requested','2016-04-16 04:05:03','2019-11-09 04:15:29'),(13,5,'approved','2015-05-16 21:38:43','2020-01-11 12:41:32'),(13,59,'requested','2016-02-27 05:46:42','2020-12-20 19:44:35'),(14,68,'declined','2016-02-11 09:55:51','2019-11-16 11:20:02'),(15,51,'declined','2016-10-25 04:54:29','2020-04-14 23:56:22'),(18,4,'requested','2014-06-19 01:45:38','2019-06-27 07:02:24'),(18,33,'approved','2018-05-18 14:00:58','2019-12-08 10:29:23'),(19,83,'requested','2020-07-16 15:49:37','2020-05-16 12:26:59'),(19,91,'requested','2014-07-02 07:19:14','2020-06-13 00:43:50'),(20,26,'approved','2014-04-09 23:18:20','2020-08-07 05:28:05'),(20,33,'declined','2014-09-13 02:02:30','2019-10-27 22:33:37'),(20,57,'approved','2019-11-13 02:30:49','2020-11-06 06:39:55'),(21,62,'declined','2014-11-21 03:31:30','2019-10-19 13:19:12'),(21,68,'declined','2020-03-05 05:54:22','2019-09-23 14:38:34'),(21,100,'requested','2016-09-24 20:05:47','2021-03-15 14:08:23'),(22,77,'requested','2017-01-28 19:37:32','2020-09-02 09:19:24'),(23,97,'requested','2020-01-12 12:17:52','2020-02-23 07:01:59'),(24,4,'approved','2017-01-11 13:19:44','2019-06-24 19:42:59'),(24,46,'declined','2015-06-11 02:18:04','2020-04-29 08:58:00'),(24,82,'approved','2018-06-25 09:52:24','2019-04-18 13:40:33'),(26,12,'approved','2020-06-08 15:04:39','2020-03-26 20:08:56'),(26,32,'unfriended','2018-04-07 23:43:07','2020-11-29 13:54:53'),(26,83,'declined','2019-05-31 08:51:49','2020-08-21 11:29:43'),(27,97,'approved','2015-06-02 01:11:59','2020-06-04 05:25:36'),(28,21,'unfriended','2020-04-07 22:08:00','2020-08-28 05:20:00'),(28,36,'requested','2017-04-08 05:09:58','2020-12-03 02:05:48'),(28,38,'approved','2016-03-11 23:31:01','2019-08-01 13:21:10'),(28,60,'approved','2018-11-03 16:22:36','2020-11-15 20:07:37'),(28,85,'declined','2015-10-14 11:54:14','2020-12-24 03:32:13'),(29,5,'approved','2021-01-21 21:45:39','2020-08-01 00:52:57'),(29,45,'declined','2019-05-12 10:43:07','2020-08-25 21:53:24'),(30,73,'approved','2019-03-10 22:23:46','2019-12-24 02:56:51'),(31,27,'unfriended','2018-08-30 15:52:11','2019-12-21 19:19:13'),(31,29,'declined','2015-02-14 19:47:09','2020-07-30 07:17:37'),(31,79,'unfriended','2019-12-01 08:26:34','2020-05-09 14:47:32'),(32,25,'declined','2015-01-12 05:36:02','2020-04-27 07:08:35'),(32,66,'declined','2020-07-09 17:23:07','2020-08-24 16:08:53'),(32,99,'approved','2015-03-23 03:30:09','2020-12-30 13:11:00'),(33,44,'unfriended','2019-06-24 17:24:41','2019-05-17 14:51:13'),(34,19,'declined','2017-03-03 22:38:16','2019-07-21 06:53:50'),(34,43,'approved','2014-09-22 12:58:04','2019-08-01 02:51:07'),(34,55,'declined','2015-03-23 21:20:13','2019-10-15 11:24:58'),(34,57,'declined','2016-07-20 10:14:53','2020-07-11 01:19:52'),(34,100,'requested','2019-08-15 23:56:13','2020-04-04 14:25:03'),(35,52,'declined','2017-05-20 21:06:10','2019-12-11 03:26:06'),(37,37,'declined','2020-03-04 23:23:20','2019-07-22 02:39:40'),(38,53,'unfriended','2020-12-18 13:02:46','2020-07-31 02:03:49'),(40,53,'declined','2017-10-19 12:18:23','2020-08-20 10:10:36'),(41,42,'declined','2019-11-11 00:32:44','2020-12-28 23:46:57'),(41,85,'requested','2020-01-14 07:08:03','2019-05-14 02:22:31'),(42,35,'unfriended','2017-05-02 01:24:55','2020-01-23 02:18:20'),(42,41,'unfriended','2015-09-05 12:09:27','2019-05-08 16:50:03'),(42,53,'approved','2015-11-13 02:51:04','2020-10-16 07:10:07'),(42,87,'unfriended','2016-07-31 07:59:28','2020-01-24 18:35:12'),(43,87,'declined','2019-12-11 05:05:08','2020-09-05 13:18:28'),(44,37,'approved','2018-08-24 09:39:47','2020-07-10 23:33:09'),(44,48,'requested','2016-05-09 17:19:43','2019-09-17 17:42:57'),(44,78,'declined','2017-03-19 14:14:51','2019-08-16 21:49:31'),(45,92,'declined','2016-07-10 17:22:39','2021-03-20 05:05:52'),(46,25,'requested','2020-09-01 03:48:46','2020-06-11 06:02:23'),(46,90,'requested','2019-03-19 13:43:43','2020-03-29 09:05:04'),(47,21,'approved','2014-07-01 14:22:05','2021-03-06 04:57:56'),(47,68,'declined','2020-08-21 09:35:03','2019-11-23 04:47:24'),(48,90,'requested','2019-03-12 01:13:19','2019-04-25 22:21:28'),(49,20,'requested','2018-06-09 12:17:23','2020-07-13 00:27:18'),(49,51,'approved','2019-01-12 08:06:33','2021-03-03 16:32:53'),(49,82,'approved','2020-08-21 08:11:48','2020-06-12 13:48:15'),(50,59,'approved','2018-12-21 23:15:29','2019-09-03 16:16:05'),(51,93,'unfriended','2018-11-21 00:19:35','2019-06-06 22:45:10'),(52,26,'declined','2020-05-15 16:38:01','2020-07-17 16:49:18'),(53,93,'declined','2018-08-20 15:25:37','2020-04-13 11:10:50'),(54,30,'requested','2016-12-31 21:31:15','2021-02-21 09:08:48'),(54,55,'unfriended','2017-06-14 11:52:32','2020-10-19 22:09:57'),(54,98,'requested','2020-09-27 14:43:59','2019-05-07 21:05:25'),(55,29,'approved','2020-06-19 12:52:18','2019-09-19 15:49:37'),(56,36,'declined','2020-10-31 14:27:53','2019-08-18 02:25:45'),(56,61,'requested','2017-10-16 01:44:10','2021-02-09 10:06:12'),(56,70,'approved','2015-09-10 04:08:48','2021-02-17 18:21:00'),(56,78,'approved','2017-11-18 07:48:33','2020-11-02 00:56:30'),(56,91,'requested','2017-10-21 17:45:10','2020-12-05 02:01:57'),(58,21,'declined','2017-03-02 15:29:00','2020-03-31 11:20:57'),(58,91,'requested','2016-02-08 06:53:26','2020-10-02 17:17:12'),(58,94,'requested','2017-03-16 10:17:35','2019-09-25 23:56:20'),(59,72,'declined','2015-05-25 18:15:50','2020-06-24 11:01:10'),(60,53,'requested','2019-11-26 13:19:09','2020-08-15 14:03:46'),(60,56,'approved','2019-08-30 10:37:12','2020-11-26 03:56:20'),(60,64,'requested','2014-08-13 02:12:33','2020-11-08 06:06:12'),(61,47,'unfriended','2018-02-27 16:41:00','2020-01-02 09:12:09'),(61,68,'approved','2014-07-04 13:14:39','2020-12-31 06:02:02'),(63,43,'requested','2017-05-31 13:10:55','2020-11-22 09:18:06'),(63,52,'unfriended','2018-07-08 21:12:15','2020-01-28 08:04:02'),(63,91,'unfriended','2015-12-05 18:46:59','2020-04-07 23:15:04'),(65,15,'declined','2017-11-25 09:45:14','2019-06-02 14:06:41'),(66,50,'declined','2018-04-26 17:19:54','2019-08-17 21:18:35'),(68,69,'requested','2020-07-04 14:29:47','2020-05-29 10:45:37'),(69,91,'declined','2015-10-16 11:22:08','2020-04-24 15:16:25'),(70,10,'approved','2020-02-09 20:38:30','2019-08-20 21:01:21'),(71,43,'declined','2017-07-27 20:24:59','2020-09-05 08:08:02'),(71,48,'requested','2019-05-31 13:31:57','2020-11-02 18:00:14'),(71,58,'approved','2018-10-22 14:34:05','2020-02-14 05:30:15'),(71,88,'unfriended','2018-01-01 12:49:15','2020-11-29 15:14:31'),(73,6,'approved','2016-10-13 08:02:13','2020-03-27 05:09:49'),(73,21,'declined','2017-09-07 17:00:36','2021-01-22 17:22:17'),(73,48,'declined','2016-04-08 06:22:27','2021-02-05 19:02:57'),(74,89,'approved','2016-01-15 19:12:40','2021-01-11 10:12:13'),(74,98,'approved','2017-11-04 09:59:46','2020-10-31 05:03:07'),(76,44,'unfriended','2020-04-19 14:12:01','2019-12-19 23:23:25'),(76,73,'requested','2015-02-09 15:34:24','2019-05-15 09:09:48'),(77,43,'approved','2016-04-05 18:32:12','2020-06-01 00:52:57'),(78,5,'approved','2018-10-17 02:47:46','2020-05-02 11:09:32'),(79,58,'declined','2017-03-23 08:25:29','2021-03-24 00:55:47'),(80,15,'declined','2017-10-21 20:45:15','2020-12-07 19:32:47'),(81,47,'approved','2019-08-31 08:47:09','2019-05-12 13:53:19'),(81,59,'requested','2014-09-24 00:10:52','2020-03-19 16:07:09'),(81,73,'approved','2019-05-27 11:45:26','2019-10-30 21:32:37'),(82,9,'unfriended','2015-09-28 23:41:57','2021-02-26 18:27:54'),(84,37,'requested','2015-12-07 15:49:05','2020-09-13 23:28:17'),(85,77,'declined','2017-04-14 03:54:27','2020-03-19 16:04:14'),(85,78,'declined','2017-01-01 12:29:03','2019-07-06 19:53:59'),(85,83,'declined','2014-04-15 10:43:48','2020-01-14 00:16:43'),(86,22,'declined','2017-11-10 05:43:05','2019-04-22 05:51:20'),(86,45,'declined','2014-08-07 03:27:02','2020-08-04 10:16:06'),(86,70,'requested','2017-08-12 22:47:57','2019-08-25 17:18:29'),(87,32,'unfriended','2018-09-29 08:43:25','2019-06-07 08:53:02'),(87,68,'unfriended','2016-07-04 04:41:46','2019-06-15 00:22:50'),(88,32,'approved','2018-08-09 09:15:28','2020-07-22 17:12:01'),(88,87,'approved','2015-01-11 20:46:53','2020-08-14 06:55:40'),(90,15,'requested','2016-07-27 21:44:39','2020-08-26 21:18:44'),(91,34,'unfriended','2014-11-08 15:07:09','2019-05-12 21:35:01'),(92,41,'approved','2019-02-22 02:57:31','2020-02-26 06:58:50'),(94,80,'declined','2017-06-17 23:12:45','2020-11-11 08:31:45'),(96,31,'declined','2016-05-08 23:06:39','2020-08-08 04:23:38'),(96,67,'requested','2015-10-06 14:06:36','2019-08-10 03:14:06'),(98,4,'requested','2014-11-25 16:44:20','2020-01-19 04:00:21'),(98,59,'unfriended','2014-10-06 14:40:46','2021-01-19 09:11:25'),(98,67,'unfriended','2015-05-11 19:06:38','2020-03-28 03:26:01'),(99,64,'approved','2020-03-25 11:58:32','2020-08-15 20:31:19');
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,31,'2021-04-12 14:47:10'),(2,22,'2021-04-12 04:47:26'),(3,99,'2021-04-12 03:16:28'),(4,78,'2021-04-12 01:42:23'),(5,73,'2021-04-12 17:39:55'),(6,42,'2021-04-12 05:30:38'),(7,14,'2021-04-12 03:05:38'),(8,68,'2021-04-12 13:09:38'),(9,75,'2021-04-12 19:10:32'),(10,101,'2021-04-12 09:20:51'),(11,38,'2021-04-12 17:52:26'),(12,69,'2021-04-12 08:10:29'),(13,50,'2021-04-12 02:33:49'),(14,71,'2021-04-12 20:17:01'),(15,72,'2021-04-12 13:17:57'),(16,79,'2021-04-12 09:47:41'),(17,65,'2021-04-12 23:34:11'),(18,31,'2021-04-12 13:09:16'),(19,82,'2021-04-12 09:09:21'),(20,38,'2021-04-12 02:59:16'),(21,57,'2021-04-12 08:28:16'),(22,86,'2021-04-12 23:22:35'),(23,87,'2021-04-12 14:56:05'),(24,5,'2021-04-12 05:44:56'),(25,100,'2021-04-12 17:08:37'),(26,35,'2021-04-12 01:14:41'),(27,40,'2021-04-12 13:04:40'),(28,81,'2021-04-12 06:09:22'),(29,46,'2021-04-12 12:28:03'),(30,18,'2021-04-12 19:02:57'),(31,20,'2021-04-12 06:46:47'),(32,89,'2021-04-12 18:40:03'),(33,90,'2021-04-12 16:20:53'),(34,38,'2021-04-12 14:07:46'),(35,45,'2021-04-12 05:28:55'),(36,41,'2021-04-12 21:05:25'),(37,27,'2021-04-12 06:30:27'),(38,34,'2021-04-12 23:50:11'),(39,3,'2021-04-12 15:22:17'),(40,77,'2021-04-12 21:00:33'),(41,100,'2021-04-12 05:42:11'),(42,23,'2021-04-12 04:38:55'),(43,43,'2021-04-12 20:41:21'),(44,17,'2021-04-12 09:31:59'),(45,30,'2021-04-12 09:32:54'),(46,13,'2021-04-12 17:53:49'),(47,45,'2021-04-12 23:29:48'),(48,81,'2021-04-12 17:21:20'),(49,20,'2021-04-12 23:27:02'),(50,59,'2021-04-12 23:37:32'),(51,87,'2021-04-12 01:22:45'),(52,71,'2021-04-12 16:10:17'),(53,75,'2021-04-12 15:03:23'),(54,58,'2021-04-12 20:59:57'),(55,69,'2021-04-12 07:35:46'),(56,57,'2021-04-12 03:46:23'),(57,85,'2021-04-12 04:15:34'),(58,32,'2021-04-12 18:16:24'),(59,76,'2021-04-12 23:58:43'),(60,2,'2021-04-12 16:50:00'),(61,62,'2021-04-12 01:21:44'),(62,78,'2021-04-12 09:44:48'),(63,33,'2021-04-12 12:11:20'),(64,50,'2021-04-12 00:50:46'),(65,97,'2021-04-12 02:53:59'),(66,77,'2021-04-12 23:27:28'),(67,81,'2021-04-12 16:56:37'),(68,64,'2021-04-12 23:17:37'),(69,81,'2021-04-12 00:36:26'),(70,65,'2021-04-12 21:31:00'),(71,29,'2021-04-12 18:32:52'),(72,59,'2021-04-12 17:59:07'),(73,94,'2021-04-12 12:25:22'),(74,53,'2021-04-12 12:50:41'),(75,101,'2021-04-12 05:16:44'),(76,32,'2021-04-12 16:19:16'),(77,71,'2021-04-12 13:22:39'),(78,84,'2021-04-12 21:33:55'),(79,80,'2021-04-12 12:15:48'),(80,5,'2021-04-12 04:11:55'),(81,61,'2021-04-12 20:02:13'),(82,73,'2021-04-12 02:02:47'),(83,28,'2021-04-12 14:28:41'),(84,5,'2021-04-12 23:16:23'),(85,76,'2021-04-12 00:28:48'),(86,59,'2021-04-12 14:57:47'),(87,10,'2021-04-12 10:51:18'),(88,52,'2021-04-12 17:24:51'),(89,17,'2021-04-12 20:51:36'),(90,73,'2021-04-12 01:22:48'),(91,43,'2021-04-12 22:31:46'),(92,12,'2021-04-12 21:38:18'),(93,62,'2021-04-12 14:22:34'),(94,50,'2021-04-12 08:06:02'),(95,54,'2021-04-12 12:44:35'),(96,17,'2021-04-12 04:40:24'),(97,21,'2021-04-12 21:01:25'),(98,2,'2021-04-12 14:15:02'),(99,96,'2021-04-12 03:11:01'),(100,49,'2021-04-12 10:57:52');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `body` text,
  `filename` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `like_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,2,87,NULL,'arcu. Vivamus sit amet',1000,NULL,'2020-04-12 13:42:13','2020-04-12 13:42:13',NULL),(2,2,29,NULL,'ligula. Donec luctus aliquet odio. Etiam ligula tortor,',999,NULL,'2020-04-12 13:43:48','2020-04-12 13:43:48',NULL),(3,2,4,NULL,'semper. Nam',998,NULL,'2020-04-12 13:43:48','2020-04-12 13:43:48',NULL),(4,3,50,NULL,'euismod ac, fermentum',997,NULL,'2020-04-12 13:43:48','2020-04-12 13:43:48',NULL),(5,1,80,NULL,'facilisis facilisis,',996,NULL,'2020-04-12 13:43:48','2020-04-12 13:43:48',NULL),(6,3,66,NULL,'penatibus et',995,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(7,3,44,NULL,'Suspendisse',994,NULL,'2020-04-12 13:43:49','2020-04-12 13:56:16',NULL),(8,3,66,NULL,'Integer eu lacus. Quisque imperdiet, erat nonummy ultricies',993,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(9,3,21,NULL,'velit justo nec ante. Maecenas mi felis,',992,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(10,2,18,NULL,'per inceptos hymenaeos. Mauris ut quam vel',991,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(11,2,17,NULL,'a, auctor non, feugiat nec, diam.',990,NULL,'2020-04-12 13:43:49','2020-04-12 13:57:54',44),(12,2,66,NULL,'nec enim. Nunc ut erat. Sed nunc est,',989,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(13,1,24,NULL,'risus a ultricies adipiscing,',988,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(14,3,80,NULL,'Donec luctus aliquet odio. Etiam ligula tortor, dictum',987,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(15,1,58,NULL,'dolor dolor, tempus non, lacinia at, iaculis quis, pede.',986,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(16,2,49,NULL,'Cras vehicula aliquet libero. Integer',985,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(17,2,48,NULL,'sit amet nulla. Donec non justo. Proin non',984,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(18,1,68,NULL,'neque. Nullam ut nisi a odio semper cursus. Integer mollis.',983,NULL,'2020-04-12 13:43:49','2020-04-12 13:43:49',NULL),(19,3,45,NULL,'Sed',982,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(20,2,21,NULL,'nonummy ut, molestie in, tempus eu, ligula.',981,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(21,3,6,NULL,'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.',980,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(22,1,11,NULL,'elit, pretium et, rutrum non, hendrerit id, ante.',979,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(23,1,95,NULL,'mi. Duis risus',978,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(24,1,80,NULL,'tempor erat neque non quam. Pellentesque habitant morbi tristique',977,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(25,3,93,NULL,'Vestibulum ut eros non',976,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(26,1,22,NULL,'Maecenas libero est, congue a, aliquet vel, vulputate',975,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(27,2,65,NULL,'ac, fermentum',974,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(28,2,71,NULL,'Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum',973,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(29,2,25,NULL,'rhoncus. Proin nisl',972,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(30,1,77,NULL,'Mauris',971,NULL,'2020-04-12 13:43:50','2020-04-12 13:43:50',NULL),(31,3,45,NULL,'scelerisque sed,',970,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(32,1,37,NULL,'vitae',969,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(33,3,44,NULL,'congue turpis. In condimentum.',968,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(34,3,4,NULL,'arcu ac orci. Ut semper pretium neque.',967,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(35,2,86,NULL,'Suspendisse dui. Fusce diam nunc, ullamcorper',966,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(36,1,29,NULL,'Aenean egestas hendrerit neque. In',965,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(37,2,47,NULL,'Proin vel arcu eu',964,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(38,2,58,NULL,'est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed',963,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(39,1,11,NULL,'Nam interdum enim non nisi. Aenean eget metus.',962,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(40,3,72,NULL,'placerat. Cras dictum',961,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(41,2,75,NULL,'feugiat. Lorem ipsum dolor sit amet, consectetuer',960,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(42,1,100,NULL,'libero nec ligula consectetuer rhoncus. Nullam',959,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(43,3,15,NULL,'iaculis, lacus pede sagittis augue, eu',958,NULL,'2020-04-12 13:43:51','2020-04-12 13:43:51',NULL),(44,1,18,NULL,'pharetra ut, pharetra',957,NULL,'2020-04-12 13:43:52','2020-04-12 13:46:13',30),(45,1,16,NULL,'Ut sagittis lobortis mauris. Suspendisse aliquet',956,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(46,2,83,NULL,'velit. Cras lorem',955,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(47,2,18,NULL,'et, eros. Proin ultrices. Duis volutpat nunc sit amet',954,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(48,2,55,NULL,'Praesent',953,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(49,3,98,NULL,'in sodales elit erat vitae risus. Duis a',952,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(50,3,29,NULL,'nec quam. Curabitur vel lectus. Cum sociis',951,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(51,1,6,NULL,'malesuada vel, convallis',950,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(52,1,100,NULL,'Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue',949,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(53,3,18,NULL,'justo. Proin non massa non',948,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(54,1,79,NULL,'fermentum risus, at fringilla purus mauris a nunc. In at',947,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(55,1,6,NULL,'id magna et ipsum',946,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(56,2,73,NULL,'mus.',945,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(57,3,50,NULL,'tortor, dictum eu, placerat eget, venenatis a, magna.',944,NULL,'2020-04-12 13:43:52','2020-04-12 13:43:52',NULL),(58,2,17,NULL,'Curae; Donec tincidunt. Donec vitae erat',943,NULL,'2020-04-12 13:43:53','2020-04-12 13:59:29',89),(59,1,26,NULL,'nisl elementum purus, accumsan interdum libero dui',942,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(60,2,82,NULL,'neque sed sem egestas blandit. Nam nulla magna, malesuada vel,',941,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(61,2,60,NULL,'ornare sagittis felis. Donec tempor, est ac',940,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(62,1,79,NULL,'accumsan neque et nunc.',939,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(63,2,99,NULL,'Nullam',938,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(64,3,92,NULL,'eu metus. In lorem. Donec elementum, lorem ut aliquam',937,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(65,2,66,NULL,'sapien, cursus in, hendrerit consectetuer, cursus',936,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(66,1,96,NULL,'nec enim. Nunc ut erat.',935,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(67,1,7,NULL,'euismod est arcu',934,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(68,2,11,NULL,'Aliquam gravida mauris ut mi. Duis risus odio, auctor',933,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(69,3,14,NULL,'Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.',932,NULL,'2020-04-12 13:43:53','2020-04-12 13:55:35',7),(70,1,87,NULL,'sem, vitae aliquam eros turpis non enim. Mauris',931,NULL,'2020-04-12 13:43:53','2020-04-12 13:43:53',NULL),(71,1,20,NULL,'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare',930,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(72,1,22,NULL,'lacus. Quisque imperdiet, erat',929,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(73,1,3,NULL,'sagittis placerat.',928,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(74,3,41,NULL,'ultrices posuere cubilia Curae; Donec tincidunt.',927,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(75,3,85,NULL,'Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet',926,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(76,2,6,NULL,'pretium neque. Morbi quis urna. Nunc quis arcu vel',925,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(77,3,47,NULL,'congue a, aliquet',924,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(78,3,17,NULL,'at',923,NULL,'2020-04-12 13:43:54','2020-04-12 13:58:52',96),(79,2,98,NULL,'dolor. Nulla semper',922,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(80,3,25,NULL,'eleifend, nunc risus varius orci, in',921,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(81,1,88,NULL,'dis parturient montes, nascetur ridiculus',920,NULL,'2020-04-12 13:43:54','2020-04-12 13:43:54',NULL),(82,1,3,NULL,'et risus. Quisque',919,NULL,'2020-04-12 13:43:55','2020-04-12 13:48:39',39),(83,1,88,NULL,'diam. Proin dolor.',918,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(84,3,35,NULL,'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam',917,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(85,1,2,NULL,'nulla vulputate dui, nec tempus mauris',916,NULL,'2020-04-12 13:43:55','2020-04-12 13:47:53',98),(86,1,18,NULL,'cursus, diam at pretium aliquet,',915,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(87,1,6,NULL,'eu augue porttitor interdum. Sed auctor',914,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(88,2,79,NULL,'congue turpis. In condimentum.',913,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(89,2,87,NULL,'nisi. Cum sociis natoque penatibus et magnis dis',912,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(90,2,100,NULL,'orci lacus vestibulum lorem, sit amet ultricies sem magna nec',911,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(91,2,72,NULL,'Curabitur',910,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(92,3,27,NULL,'libero',909,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(93,1,50,NULL,'Morbi non sapien molestie orci tincidunt adipiscing.',908,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(94,2,75,NULL,'Nullam ut nisi a odio semper cursus. Integer mollis. Integer',907,NULL,'2020-04-12 13:43:55','2020-04-12 13:43:55',NULL),(95,1,37,NULL,'Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien.',906,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL),(96,2,15,NULL,'Donec tincidunt. Donec vitae erat vel pede',905,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL),(97,1,9,NULL,'ac nulla. In tincidunt congue',904,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL),(98,3,51,NULL,'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris',903,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL),(99,1,62,NULL,'ut',902,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL),(100,1,56,NULL,'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed',901,NULL,'2020-04-12 13:43:56','2020-04-12 13:43:56',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'music','2020-07-10 03:45:32',NULL),(2,'Video','2020-06-27 01:26:32',NULL),(3,'pictures','2020-06-27 01:26:32',NULL);
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `messages_from_user_id` (`from_user_id`),
  KEY `messages_to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,73,81,'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim','2015-05-18 12:20:54'),(2,2,29,'lobortis. Class aptent taciti sociosqu ad litora torquent per conubia','2019-05-09 19:15:52'),(3,78,40,'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut','2019-11-03 07:10:25'),(4,32,19,'ornare tortor at risus. Nunc ac sem ut dolor dapibus','2014-12-22 16:15:40'),(5,64,24,'hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida','2015-11-30 11:41:02'),(6,91,55,'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent','2014-04-10 12:21:25'),(7,48,56,'per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel','2014-10-03 07:05:15'),(8,45,61,'id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus','2019-03-31 21:42:20'),(9,6,32,'nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.','2018-04-03 23:10:44'),(10,41,62,'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant','2018-07-24 04:24:28'),(11,75,61,'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh','2017-10-11 00:15:17'),(12,60,31,'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et','2020-10-07 12:29:57'),(13,49,91,'hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida','2020-03-31 17:36:24'),(14,64,98,'congue, elit sed consequat auctor, nunc nulla vulputate dui, nec','2018-10-23 22:08:13'),(15,16,22,'lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam.','2019-06-02 23:23:45'),(16,22,48,'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla','2015-12-12 18:02:51'),(17,4,68,'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum','2017-06-04 09:32:09'),(18,38,49,'erat semper rutrum. Fusce dolor quam, elementum at, egestas a,','2015-08-02 09:31:35'),(19,58,6,'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum','2019-01-17 15:38:30'),(20,49,79,'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate','2016-05-23 19:31:19'),(21,38,33,'eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero','2020-08-01 01:41:33'),(22,46,35,'quis accumsan convallis, ante lectus convallis est, vitae sodales nisi','2020-05-27 17:38:11'),(23,81,76,'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit','2019-09-21 13:21:01'),(24,51,13,'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.','2014-07-28 00:36:41'),(25,93,53,'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere','2015-01-23 05:33:40'),(26,44,27,'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,','2017-05-16 10:38:35'),(27,90,22,'mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id','2017-08-25 05:13:29'),(28,72,87,'magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.','2015-01-25 05:58:27'),(29,5,72,'dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc','2015-12-12 22:03:29'),(30,18,60,'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing','2018-09-26 10:02:13'),(31,65,21,'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,','2017-05-01 23:29:41'),(32,63,72,'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam','2016-09-14 17:28:12'),(33,16,10,'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed','2016-03-24 07:55:07'),(34,22,66,'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam','2015-04-22 00:41:53'),(35,47,46,'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a,','2016-03-17 17:24:00'),(36,98,95,'turpis nec mauris blandit mattis. Cras eget nisi dictum augue','2014-12-13 23:16:49'),(37,55,57,'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed','2018-04-27 17:46:50'),(38,24,70,'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.','2016-09-13 01:48:15'),(39,12,61,'Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc','2018-04-04 12:36:53'),(40,21,66,'mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus','2015-07-12 18:52:43'),(41,55,66,'nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim','2015-09-30 04:01:43'),(42,54,54,'tellus eu augue porttitor interdum. Sed auctor odio a purus.','2015-12-20 10:16:57'),(43,70,92,'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.','2019-02-07 20:21:30'),(44,76,83,'enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula','2018-11-19 20:41:05'),(45,96,79,'malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris','2014-05-11 19:17:26'),(46,87,80,'consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,','2016-07-10 01:04:09'),(47,100,99,'rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac','2016-09-21 15:27:58'),(48,57,63,'Proin vel arcu eu odio tristique pharetra. Quisque ac libero','2015-10-07 23:48:54'),(49,83,11,'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu','2014-11-29 08:18:02'),(50,67,89,'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,','2017-05-13 02:11:00'),(51,40,67,'Sed id risus quis diam luctus lobortis. Class aptent taciti','2014-12-11 00:33:23'),(52,65,96,'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam','2019-12-15 12:27:22'),(53,39,87,'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,','2017-06-23 16:09:49'),(54,56,83,'libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet','2020-12-23 04:54:13'),(55,40,15,'purus mauris a nunc. In at pede. Cras vulputate velit','2018-03-18 10:04:02'),(56,44,89,'fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus','2016-09-20 03:38:22'),(57,26,97,'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec','2016-06-18 22:58:33'),(58,7,67,'accumsan neque et nunc. Quisque ornare tortor at risus. Nunc','2018-05-09 08:54:57'),(59,93,24,'nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.','2018-07-02 05:45:01'),(60,44,31,'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida','2019-10-21 10:08:08'),(61,63,73,'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed','2017-01-23 16:10:52'),(62,47,65,'scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit','2020-06-05 23:46:53'),(63,18,59,'interdum. Sed auctor odio a purus. Duis elementum, dui quis','2020-07-25 02:18:01'),(64,96,73,'nulla. Donec non justo. Proin non massa non ante bibendum','2017-03-05 04:17:52'),(65,74,28,'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim','2018-09-15 23:55:01');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `like_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;
INSERT INTO `photo_albums` VALUES (1,'NVS',40,27),(2,'YAR',100,NULL),(3,'BEL',44,NULL),(4,'TVE',38,NULL),(5,'ULY',46,26),(6,'Kaliningrad Oblast',78,NULL),(7,'Voronezh Oblast',46,NULL),(8,'Kemerovo Oblast',91,NULL),(9,'RYA',34,NULL),(10,'Samara Oblast',100,NULL),(11,'KGN',88,NULL),(12,'SMO',49,NULL),(13,'Amur Oblast',54,NULL),(14,'IRK',12,NULL),(15,'BEL',85,NULL),(16,'TOM',39,NULL),(17,'BEL',55,NULL),(18,'YAR',21,NULL),(19,'VGG',55,NULL),(20,'LIP',83,NULL),(21,'Tomsk Oblast',27,NULL),(22,'PSK',39,NULL),(23,'Samara Oblast',3,NULL),(24,'Sverdlovsk Oblast',94,NULL),(25,'MUR',23,NULL),(26,'KEM',49,100),(27,'ORE',82,NULL),(28,'NIZ',77,NULL),(29,'ORL',75,NULL),(30,'Lipetsk Oblast',29,NULL),(31,'ORE',78,NULL),(32,'IVA',32,NULL),(33,'PSK',6,NULL),(34,'ORL',44,NULL),(35,'AST',6,NULL),(36,'Kirov Oblast',84,NULL),(37,'Vologda Oblast',44,NULL),(38,'Nizhny Novgorod Oblast',53,NULL),(39,'Volgograd Oblast',30,NULL),(40,'Orenburg Oblast',66,NULL),(41,'Yaroslavl Oblast',46,NULL),(42,'Omsk Oblast',14,NULL),(43,'VOR',27,NULL),(44,'TYU',35,NULL),(45,'Magadan Oblast',51,NULL),(46,'VLG',65,NULL),(47,'SVE',91,NULL),(48,'OMS',32,NULL),(49,'Amur Oblast',57,NULL),(50,'ARK',38,NULL),(51,'Rostov Oblast',93,NULL),(52,'AMU',14,NULL),(53,'Tyumen Oblast',19,NULL),(54,'Omsk Oblast',63,NULL),(55,'Chelyabinsk Oblast',81,NULL),(56,'Tula Oblast',52,NULL),(57,'ROS',47,NULL),(58,'Kirov Oblast',75,NULL),(59,'Tula Oblast',98,NULL),(60,'Novgorod Oblast',84,NULL),(61,'KRS',98,NULL),(62,'PSK',61,NULL),(63,'Bryansk Oblast',35,NULL),(64,'NVS',10,NULL),(65,'PNZ',56,NULL),(66,'Sverdlovsk Oblast',94,NULL),(67,'ROS',15,NULL),(68,'PSK',54,NULL),(69,'TOM',84,NULL),(70,'Moscow City',48,NULL),(71,'AST',36,NULL),(72,'SMO',25,NULL),(73,'Voronezh Oblast',73,NULL),(74,'Voronezh Oblast',50,13),(75,'Vologda Oblast',26,NULL),(76,'Kemerovo Oblast',95,NULL),(77,'TOM',24,NULL),(78,'Novosibirsk Oblast',10,NULL),(79,'TYU',76,NULL),(80,'RYA',28,NULL),(81,'IRK',33,NULL),(82,'Voronezh Oblast',90,NULL),(83,'Novosibirsk Oblast',71,NULL),(84,'KEM',70,NULL),(85,'Novosibirsk Oblast',52,NULL),(86,'IVA',51,NULL),(87,'MUR',54,NULL),(88,'Sverdlovsk Oblast',77,NULL),(89,'Kostroma Oblast',100,NULL),(90,'VLG',63,NULL),(91,'Arkhangelsk Oblast',19,NULL),(92,'Novgorod Oblast',9,NULL),(93,'Tula Oblast',56,NULL),(94,'NIZ',64,NULL),(95,'Tula Oblast',91,NULL),(96,'ULY',17,NULL),(97,'RYA',99,NULL),(98,'IRK',4,NULL),(99,'Novosibirsk Oblast',21,NULL),(100,'ORE',71,NULL);
/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  `like_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,100,75,NULL),(2,1,20,NULL),(3,57,93,NULL),(4,44,12,NULL),(5,59,8,NULL),(6,12,84,NULL),(7,59,55,NULL),(8,73,66,NULL),(9,46,83,NULL),(10,61,27,NULL),(11,81,74,NULL),(12,57,96,NULL),(13,61,100,95),(14,93,77,NULL),(15,83,89,NULL),(16,98,15,NULL),(17,90,25,NULL),(18,49,33,NULL),(19,58,39,NULL),(20,98,39,NULL),(21,99,73,NULL),(22,56,69,52),(23,78,68,NULL),(24,73,64,NULL),(25,49,28,NULL),(26,48,4,NULL),(27,71,5,NULL),(28,37,64,NULL),(29,88,3,NULL),(30,100,39,NULL),(31,66,98,NULL),(32,41,40,NULL),(33,43,89,NULL),(34,11,81,NULL),(35,44,28,NULL),(36,53,83,NULL),(37,76,4,NULL),(38,11,83,74),(39,89,90,NULL),(40,23,22,NULL),(41,46,19,NULL),(42,20,30,NULL),(43,48,57,NULL),(44,69,51,NULL),(45,99,94,NULL),(46,45,61,70),(47,66,86,NULL),(48,45,21,NULL),(49,49,36,21),(50,2,60,NULL),(51,51,42,NULL),(52,71,70,NULL),(53,80,66,NULL),(54,64,7,NULL),(55,32,51,NULL),(56,75,94,NULL),(57,33,49,NULL),(58,56,45,NULL),(59,57,4,NULL),(60,61,17,NULL),(61,90,47,NULL),(62,56,57,81),(63,64,16,NULL),(64,72,24,NULL),(65,39,98,NULL),(66,29,16,NULL),(67,92,36,NULL),(68,62,15,NULL),(69,11,81,NULL),(70,51,43,NULL),(71,52,75,NULL),(72,82,87,NULL),(73,94,50,NULL),(74,6,74,NULL),(75,35,5,NULL),(76,67,86,NULL),(77,77,28,NULL),(78,60,11,NULL),(79,71,1,NULL),(80,90,37,NULL),(81,10,5,NULL),(82,36,99,NULL),(83,96,69,NULL),(84,43,92,NULL),(85,56,54,NULL),(86,9,76,NULL),(87,78,55,NULL),(88,16,14,NULL),(89,9,20,NULL),(90,76,75,NULL),(91,39,56,NULL),(92,61,14,NULL),(93,27,94,NULL),(94,3,77,68),(95,76,53,NULL),(96,29,2,NULL),(97,4,4,NULL),(98,89,75,NULL),(99,80,65,NULL),(100,19,74,NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `hometown` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (2,'m','1991-03-22',2,'2020-04-12 00:00:00','Ciplet'),(3,'m','1991-10-09',3,'2020-04-12 00:00:00','Santa Inês'),(4,'m','2000-11-12',4,'2020-04-12 00:00:00','Fort Simpson'),(5,'m','1999-12-01',5,'2020-04-12 00:00:00','Meeffe'),(6,'f','1991-12-14',6,'2020-04-12 00:00:00','Melle'),(7,'m','2002-11-04',7,'2020-04-12 00:00:00','Dumai'),(8,'f','1994-07-18',8,'2020-04-12 00:00:00','East Jakarta'),(9,'f','1995-08-05',9,'2020-04-12 00:00:00','Calais'),(10,'f','2001-12-05',10,'2020-04-12 00:00:00','Cour-sur-Heure'),(11,'f','1991-06-11',11,'2020-04-12 00:00:00','Murree'),(12,'f','2000-11-27',12,'2020-04-12 00:00:00','Wood Buffalo'),(13,'f','2002-01-27',13,'2020-04-12 00:00:00','St. Petersburg'),(14,'m','2002-10-19',14,'2020-04-12 00:00:00','Copiapó'),(15,'f','1995-07-18',15,'2020-04-12 00:00:00','Zielona Góra'),(16,'m','2000-01-30',16,'2020-04-12 00:00:00','Tarragona'),(17,'m','1994-12-15',17,'2020-04-12 00:00:00','Steendorp'),(18,'f','1990-09-22',18,'2020-04-12 00:00:00','Pangkalpinang'),(19,'m','1991-10-04',19,'2020-04-12 00:00:00','Portofino'),(20,'m','2001-04-19',20,'2020-04-12 00:00:00','Annapolis Royal'),(21,'f','1998-11-30',21,'2020-04-12 00:00:00','New Glasgow'),(22,'f','1999-10-09',22,'2020-04-12 00:00:00','Ansfelden'),(23,'f','2001-11-28',23,'2020-04-12 00:00:00','Ribeirão Preto'),(24,'f','1997-11-10',24,'2020-04-12 00:00:00','Paternopoli'),(25,'m','1997-05-16',25,'2020-04-12 00:00:00','Sanquhar'),(26,'m','1998-08-11',26,'2020-04-12 00:00:00','Noville'),(27,'m','1991-07-15',27,'2020-04-12 00:00:00','Durness'),(28,'f','1994-08-18',28,'2020-04-12 00:00:00','Ereğli'),(29,'f','1990-10-30',29,'2020-04-12 00:00:00','Rutland'),(30,'f','1997-05-31',30,'2020-04-12 00:00:00','Corvino San Quirico'),(31,'f','1999-06-02',31,'2020-04-12 00:00:00','Saskatoon'),(32,'m','1992-01-06',32,'2020-04-12 00:00:00','Rulles'),(33,'m','1998-09-04',33,'2020-04-12 00:00:00','Marchienne-au-Pont'),(34,'f','1995-09-28',34,'2020-04-12 00:00:00','Kent'),(35,'f','1999-01-05',35,'2020-04-12 00:00:00','Burcht'),(36,'f','1995-05-02',36,'2020-04-12 00:00:00','Kapelle-op-den-Bos'),(37,'f','2001-11-19',37,'2020-04-12 00:00:00','Miami'),(38,'f','1994-11-09',38,'2020-04-12 00:00:00','Saint-Prime'),(39,'f','2001-01-29',39,'2020-04-12 00:00:00','Beaufays'),(40,'f','1997-10-29',40,'2020-04-12 00:00:00','Lahore'),(41,'f','1992-04-16',41,'2020-04-12 00:00:00','Sherbrooke'),(42,'m','1989-08-17',42,'2020-04-12 00:00:00','Senneville'),(43,'m','1992-06-13',43,'2020-04-12 00:00:00','Mal'),(44,'f','1997-08-21',44,'2020-04-12 00:00:00','Retford'),(45,'m','1991-03-22',45,'2020-04-12 00:00:00','Subbiano'),(46,'f','1999-01-02',46,'2020-04-12 00:00:00','Villingen-Schwenningen'),(47,'f','0303-03-01',47,'2020-04-12 00:00:00','Baricella'),(48,'m','1992-06-09',48,'2020-04-12 00:00:00','Kassel'),(49,'m','2001-05-20',49,'2020-04-12 00:00:00','Minucciano'),(50,'m','1989-04-27',50,'2020-04-12 00:00:00','Idaho Falls'),(51,'m','1995-02-02',51,'2020-04-12 00:00:00','Harrison Hot Springs'),(52,'m','1992-08-02',52,'2020-04-12 00:00:00','Korkino'),(53,'f','1994-12-14',53,'2020-04-12 00:00:00','São Luís'),(54,'m','1997-04-13',54,'2020-04-12 00:00:00','Louisville'),(55,'m','1991-08-24',55,'2020-04-12 00:00:00','Thisnes'),(56,'f','1990-05-19',56,'2020-04-12 00:00:00','Crescentino'),(57,'m','1991-10-31',57,'2020-04-12 00:00:00','Rocca San Felice'),(58,'m','2000-12-08',58,'2020-04-12 00:00:00','Codognè'),(59,'f','1997-01-21',59,'2020-04-12 00:00:00','Mohmand Agency'),(60,'m','1991-05-26',60,'2020-04-12 00:00:00','Hilo'),(61,'f','1991-11-23',61,'2020-04-12 00:00:00','Marcedusa'),(62,'f','1992-11-07',62,'2020-04-12 00:00:00','Ottignies'),(63,'f','1997-12-06',63,'2020-04-12 00:00:00','Neustadt am Rübenberge'),(64,'m','2000-05-18',64,'2020-04-12 00:00:00','Oostende'),(65,'f','1992-01-09',65,'2020-04-12 00:00:00','Görlitz'),(66,'m','1991-08-27',66,'2020-04-12 00:00:00','Guaitecas'),(67,'f','1992-07-11',67,'2020-04-12 00:00:00','Gisborne'),(68,'m','1994-01-03',68,'2020-04-12 00:00:00','Cognelee'),(69,'m','1991-03-30',69,'2020-04-12 00:00:00','Stornaway'),(70,'m','1994-05-28',70,'2020-04-12 00:00:00','Dublin'),(71,'f','1991-02-15',71,'2020-04-12 00:00:00','Graven Grez-Doiceau'),(72,'f','1995-05-27',72,'2020-04-12 00:00:00','PiŽtrain'),(73,'f','1989-10-12',73,'2020-04-12 00:00:00','Perpignan'),(74,'f','1998-04-20',74,'2020-04-12 00:00:00','Kostroma'),(75,'m','1990-10-16',75,'2020-04-12 00:00:00','Zona Bananera'),(76,'f','1995-08-06',76,'2020-04-12 00:00:00','Provost'),(77,'f','2002-04-13',77,'2020-04-12 00:00:00','Frankfurt am Main'),(78,'m','2002-05-11',78,'2020-04-12 00:00:00','Raymond'),(79,'f','2000-07-12',79,'2020-04-12 00:00:00','Saltara'),(80,'m','1997-02-10',80,'2020-04-12 00:00:00','Baton Rouge'),(81,'m','2002-06-16',81,'2020-04-12 00:00:00','Sujawal'),(82,'m','1992-05-07',82,'2020-04-12 00:00:00','Castor'),(83,'f','1994-11-28',83,'2020-04-12 00:00:00','Villa del Rosario'),(84,'m','1997-11-15',84,'2020-04-12 00:00:00','Villers-sur-Semois'),(85,'m','1990-12-17',85,'2020-04-12 00:00:00','El Carmen'),(86,'f','1990-06-11',86,'2020-04-12 00:00:00','Annapolis County'),(87,'m','2002-03-08',87,'2020-04-12 00:00:00','St. Veit an der Glan'),(88,'m','1999-12-18',88,'2020-04-12 00:00:00','Glabais'),(89,'m','1992-04-09',89,'2020-04-12 00:00:00','Gwangju'),(90,'f','2000-08-22',90,'2020-04-12 00:00:00','Lake Cowichan'),(91,'f','1997-03-14',91,'2020-04-12 00:00:00','Evesham'),(92,'m','1992-05-18',92,'2020-04-12 00:00:00','Roosdaal'),(93,'f','1990-09-29',93,'2020-04-12 00:00:00','Bayeux'),(94,'m','1999-04-21',94,'2020-04-12 00:00:00','Tonk'),(95,'m','1995-06-04',95,'2020-04-12 00:00:00','Santa María'),(96,'m','1999-10-07',96,'2020-04-12 00:00:00','Belford Roxo'),(97,'m','2000-11-01',97,'2020-04-12 00:00:00','Maria'),(98,'m','1994-02-02',98,'2020-04-12 00:00:00','Essex'),(99,'f','1992-04-22',99,'2020-04-12 00:00:00','Labrecque'),(100,'m','2001-07-12',100,'2020-04-12 00:00:00','La Spezia'),(101,'m','1992-01-31',1,'2020-04-12 00:00:00','Woodstock');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамиль',
  `email` varchar(120) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `like_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Kibo','Petty','fermentum@lorem.edu',73023866630,NULL),(3,'Caldwell','Bell','sagittis.Nullam@elementumlorem.net',78337177660,NULL),(4,'Emery','Kelly','nunc@Loremipsum.net',79662488966,NULL),(5,'Zahir','Buck','neque.et.nunc@Sed.com',79597356856,NULL),(6,'Cairo','Crawford','nec.quam@Sedpharetra.org',73947396546,NULL),(7,'Phillip','Potter','Suspendisse.commodo@molestiesodalesMauris.ca',79422739476,NULL),(8,'Jesse','Gonzales','placerat.eget@justoeuarcu.org',78784663280,NULL),(9,'Keegan','Trujillo','sagittis.felis.Donec@massanon.com',79151813869,NULL),(10,'Simon','Charles','cursus@Crasinterdum.org',79222513335,NULL),(11,'Zachery','Spence','velit@nuncullamcorper.org',79012998769,NULL),(12,'Duncan','Gillespie','massa@ornare.co.uk',74269657029,NULL),(13,'Alden','Ray','nascetur@scelerisque.net',79454605745,NULL),(14,'Yardley','Graves','non.justo@Phasellus.ca',78181990447,NULL),(15,'Valentine','Strong','ultricies.dignissim@Sedauctorodio.org',79018911618,NULL),(16,'Thane','Gallegos','commodo.auctor.velit@ametdapibusid.net',78791529856,NULL),(17,'Leo','Salas','elementum@Utsemper.co.uk',73855007388,NULL),(18,'Dexter','Whitehead','sem@massaQuisqueporttitor.ca',79626764327,NULL),(19,'Ezekiel','Cameron','magna.Phasellus.dolor@sociisnatoquepenatibus.net',79215187732,NULL),(20,'Ahmed','Graves','vulputate.risus@afelis.ca',79003450910,NULL),(21,'Slade','Walters','mauris.ut.mi@arcu.org',78437666752,NULL),(22,'Lester','Holmes','In.lorem.Donec@mi.co.uk',74957457596,NULL),(23,'Timon','England','aliquam.iaculis@condimentum.co.uk',74855521490,NULL),(24,'Jacob','Lester','diam@Inscelerisque.edu',78209445355,NULL),(25,'Zeus','Church','turpis.non.enim@liberoProinsed.net',78121208214,NULL),(26,'Xanthus','Chan','dui@fermentum.com',79622637552,NULL),(27,'Wing','Stephenson','scelerisque@Suspendisse.edu',73539702551,NULL),(28,'Philip','Barrera','tortor.Integer@mattisInteger.co.uk',78121962402,NULL),(29,'Garth','Floyd','arcu.iaculis@metusInlorem.co.uk',78475495282,NULL),(30,'Nehru','Mack','ullamcorper.magna@Integer.org',79681723424,NULL),(31,'Talon','Padilla','vitae@Integer.net',79536022498,NULL),(32,'Calvin','Witt','sit.amet.metus@metus.edu',79012398087,NULL),(33,'Richard','Lucas','consequat.dolor.vitae@utlacus.edu',74937866864,NULL),(34,'Upton','Bryan','ornare@ligulaNullamfeugiat.com',78357155254,NULL),(35,'Giacomo','Briggs','magna.Lorem.ipsum@semmagnanec.ca',73901552274,NULL),(36,'Martin','Watson','Vestibulum.ante.ipsum@pedemalesuadavel.ca',79158403216,NULL),(37,'Alden','Gordon','dictum.augue.malesuada@fringillami.com',78558862492,NULL),(38,'Raphael','Perry','mi.pede.nonummy@vitaealiquam.edu',74757063858,NULL),(39,'Brody','Blackwell','ante@vulputaterisusa.co.uk',79994919127,NULL),(40,'Lester','Workman','primis.in.faucibus@dolordapibusgravida.edu',79485929758,NULL),(41,'Armand','Weiss','nisi@fermentumarcuVestibulum.co.uk',74823661308,NULL),(42,'Fulton','Vang','sed.dictum@eratvitaerisus.co.uk',73917346673,NULL),(43,'Hector','Livingston','enim.nec.tempus@Donec.org',78315912380,NULL),(44,'Blake','Vance','risus.Nunc.ac@necmollis.com',73497999784,NULL),(45,'Arthur','Hodge','lacus.Etiam@quislectusNullam.org',78432585192,NULL),(46,'Ivan','Marsh','eget@temporaugueac.edu',78668557857,NULL),(47,'Tarik','Robinson','quam.Curabitur@ligulatortordictum.edu',79771571200,NULL),(48,'Chester','Whitney','purus@rutrumjustoPraesent.org',79805553239,NULL),(49,'Dustin','Burke','libero.et.tristique@vitaeodiosagittis.ca',74231038493,NULL),(50,'Chester','Jones','netus.et@nislNulla.net',79827356048,NULL),(51,'Zane','Davidson','vestibulum@eunequepellentesque.edu',79987916922,NULL),(52,'Xavier','Ray','velit@tincidunt.com',79597757671,NULL),(53,'Tanner','Moon','non.lobortis@gravida.net',73834693379,NULL),(54,'Lev','Gillespie','egestas.Fusce.aliquet@amet.net',73538401872,NULL),(55,'Ahmed','Dalton','nunc.nulla.vulputate@commodoauctorvelit.ca',78128908801,NULL),(56,'Octavius','Sawyer','Integer.sem@rhoncus.org',79393599173,NULL),(57,'Barclay','Hardin','interdum.libero.dui@nec.co.uk',79516904580,NULL),(58,'Scott','York','Morbi@felis.edu',73858769800,NULL),(59,'Felix','Guzman','nunc.ac.mattis@risusMorbimetus.ca',78205238814,NULL),(60,'Lance','Melton','et.magnis@dolor.ca',79276689710,NULL),(61,'Sylvester','Jefferson','mi.eleifend.egestas@enimEtiam.edu',79579438413,NULL),(62,'Moses','Mercado','ultrices.posuere.cubilia@nec.ca',79013847053,NULL),(63,'Zeus','Deleon','Aenean@Nullatinciduntneque.org',78458008395,NULL),(64,'Ciaran','Anderson','dolor.Fusce@loremipsum.net',74739956317,NULL),(65,'Todd','Serrano','porta.elit.a@magna.co.uk',74944237170,NULL),(66,'Rudyard','Haynes','sit.amet@Donecsollicitudinadipiscing.net',73875394558,NULL),(67,'Simon','Curry','risus.Duis@Nuncmauriselit.edu',79107112151,NULL),(68,'Nolan','Rivers','convallis@nasceturridiculus.ca',79759149948,NULL),(69,'Lance','Guzman','Etiam@augueSed.org',79474548759,NULL),(70,'Dante','Sears','sit.amet@Nunc.ca',78696878232,NULL),(71,'Merrill','Frost','eu@pellentesque.net',73418424132,NULL),(72,'Finn','Fitzgerald','sit.amet@infaucibus.edu',79453462089,NULL),(73,'Jordan','Charles','nec@dictummagna.co.uk',79659647766,NULL),(74,'Darius','Hansen','a.dui.Cras@magnaCrasconvallis.edu',79661415404,NULL),(75,'Hu','Hebert','suscipit.est.ac@ipsumdolorsit.co.uk',79628772198,NULL),(76,'Elijah','Owens','nunc@sed.com',79345321327,NULL),(77,'Branden','Castillo','semper@Aeneangravida.ca',74851675983,NULL),(78,'Vaughan','Short','eu.tempor.erat@Suspendissedui.co.uk',79154186640,NULL),(79,'Graham','Franco','Nullam@Namacnulla.edu',79763189086,NULL),(80,'Cedric','Ashley','pharetra@semegetmassa.ca',74733419897,NULL),(81,'Rooney','Malone','nunc@arcuiaculis.org',73479057142,NULL),(82,'Upton','Mckinney','rutrum.lorem@dignissimtempor.edu',79934020216,NULL),(83,'Nissim','Duncan','urna@lobortisrisusIn.edu',74726077618,NULL),(84,'Hu','Stark','eu.placerat.eget@aceleifend.co.uk',74013307985,NULL),(85,'Ian','Oneal','Aliquam.gravida@ultricesDuis.com',79338549628,NULL),(86,'Preston','Mills','ante.ipsum@mollisPhasellus.co.uk',79566743308,NULL),(87,'Arsenio','Whitney','nulla.Donec.non@pharetra.net',74936087322,NULL),(88,'Branden','Trujillo','Nulla.interdum@sit.ca',73829590601,NULL),(89,'Richard','Velasquez','dolor@sociisnatoque.edu',79467375628,NULL),(90,'Davis','Flowers','et.rutrum@milacinia.com',74925498274,NULL),(91,'Quinn','Anthony','libero.Integer@Praesenteunulla.edu',79553353356,NULL),(92,'Curran','Norris','mauris.ipsum@tinciduntadipiscing.net',78638845300,NULL),(93,'Akeem','Mcleod','euismod.urna@vitaedolor.co.uk',79567472589,NULL),(94,'Linus','Sweet','montes.nascetur@at.org',74825866619,NULL),(95,'Gannon','Morton','purus.accumsan@consectetueradipiscing.org',73857786819,NULL),(96,'Paul','Haney','sed.est@imperdietdictum.co.uk',78513964335,NULL),(97,'Levi','Gregory','eget.venenatis@Aliquamvulputateullamcorper.edu',78738415281,NULL),(98,'Ashton','Mathis','massa.rutrum.magna@Phasellus.com',79363992832,NULL),(99,'Cruz','Parsons','Quisque@dapibusligula.com',79115361286,NULL),(100,'Hashim','Knapp','aliquet.nec@Donec.org',73465631924,NULL),(101,'Hayes','Salinas','amet@orci.com',74735673906,NULL),(102,'Петров','Иванов','test@ath.ru',988888,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communities` (
  `user_id` bigint unsigned NOT NULL,
  `community_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (29,1),(79,1),(29,2),(89,2),(17,3),(53,5),(67,5),(2,6),(71,7),(89,7),(31,9),(43,9),(17,10),(59,10),(73,12),(7,13),(11,13),(47,13),(73,14),(2,15),(67,15),(31,17),(61,17),(7,18),(67,18),(19,21),(67,21),(17,22),(43,22),(7,24),(29,24),(43,24),(23,25),(41,26),(5,27),(31,27),(67,27),(7,29),(11,29),(29,30),(41,31),(11,32),(17,32),(73,32),(83,33),(41,34),(67,35),(59,39),(71,39),(43,40),(19,41),(41,42),(79,42),(71,45),(13,48),(41,48),(59,48),(79,48),(23,49),(83,49),(7,50),(13,50),(83,50),(41,51),(23,52),(43,52),(17,54),(53,54),(29,56),(71,56),(2,58),(13,59),(83,59),(83,61),(23,62),(47,62),(73,62),(5,64),(97,64),(61,65),(43,66),(83,66),(37,67),(79,68),(67,69),(79,69),(17,70),(97,71),(2,73),(67,74),(73,74),(61,76),(73,76),(31,77),(61,77),(13,78),(31,78),(59,78),(71,78),(97,78),(61,79),(79,79),(97,79),(29,80),(47,80),(79,80),(5,82),(13,82),(17,82),(23,84),(41,84),(41,85),(2,86),(5,86),(29,86),(53,86),(43,89),(43,90),(53,91),(61,91),(31,94),(41,94),(2,95),(3,95),(47,95),(83,97),(61,99),(3,100),(43,100);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 15:30:53
