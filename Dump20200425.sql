CREATE DATABASE  IF NOT EXISTS `CancerDB` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `CancerDB`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: CancerDB
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add users',1,'add_users'),(2,'Can change users',1,'change_users'),(3,'Can delete users',1,'delete_users'),(4,'Can view users',1,'view_users'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add auth group',8,'add_authgroup'),(30,'Can change auth group',8,'change_authgroup'),(31,'Can delete auth group',8,'delete_authgroup'),(32,'Can view auth group',8,'view_authgroup'),(33,'Can add auth group permissions',9,'add_authgrouppermissions'),(34,'Can change auth group permissions',9,'change_authgrouppermissions'),(35,'Can delete auth group permissions',9,'delete_authgrouppermissions'),(36,'Can view auth group permissions',9,'view_authgrouppermissions'),(37,'Can add auth permission',10,'add_authpermission'),(38,'Can change auth permission',10,'change_authpermission'),(39,'Can delete auth permission',10,'delete_authpermission'),(40,'Can view auth permission',10,'view_authpermission'),(41,'Can add auth user',11,'add_authuser'),(42,'Can change auth user',11,'change_authuser'),(43,'Can delete auth user',11,'delete_authuser'),(44,'Can view auth user',11,'view_authuser'),(45,'Can add auth user groups',12,'add_authusergroups'),(46,'Can change auth user groups',12,'change_authusergroups'),(47,'Can delete auth user groups',12,'delete_authusergroups'),(48,'Can view auth user groups',12,'view_authusergroups'),(49,'Can add auth user user permissions',13,'add_authuseruserpermissions'),(50,'Can change auth user user permissions',13,'change_authuseruserpermissions'),(51,'Can delete auth user user permissions',13,'delete_authuseruserpermissions'),(52,'Can view auth user user permissions',13,'view_authuseruserpermissions'),(53,'Can add cancer has genes',14,'add_cancerhasgenes'),(54,'Can change cancer has genes',14,'change_cancerhasgenes'),(55,'Can delete cancer has genes',14,'delete_cancerhasgenes'),(56,'Can view cancer has genes',14,'view_cancerhasgenes'),(57,'Can add cancer has medications',15,'add_cancerhasmedications'),(58,'Can change cancer has medications',15,'change_cancerhasmedications'),(59,'Can delete cancer has medications',15,'delete_cancerhasmedications'),(60,'Can view cancer has medications',15,'view_cancerhasmedications'),(61,'Can add cancers',16,'add_cancers'),(62,'Can change cancers',16,'change_cancers'),(63,'Can delete cancers',16,'delete_cancers'),(64,'Can view cancers',16,'view_cancers'),(65,'Can add django admin log',17,'add_djangoadminlog'),(66,'Can change django admin log',17,'change_djangoadminlog'),(67,'Can delete django admin log',17,'delete_djangoadminlog'),(68,'Can view django admin log',17,'view_djangoadminlog'),(69,'Can add django content type',18,'add_djangocontenttype'),(70,'Can change django content type',18,'change_djangocontenttype'),(71,'Can delete django content type',18,'delete_djangocontenttype'),(72,'Can view django content type',18,'view_djangocontenttype'),(73,'Can add django migrations',19,'add_djangomigrations'),(74,'Can change django migrations',19,'change_djangomigrations'),(75,'Can delete django migrations',19,'delete_djangomigrations'),(76,'Can view django migrations',19,'view_djangomigrations'),(77,'Can add django session',20,'add_djangosession'),(78,'Can change django session',20,'change_djangosession'),(79,'Can delete django session',20,'delete_djangosession'),(80,'Can view django session',20,'view_djangosession'),(81,'Can add genes',21,'add_genes'),(82,'Can change genes',21,'change_genes'),(83,'Can delete genes',21,'delete_genes'),(84,'Can view genes',21,'view_genes'),(85,'Can add genomics users',22,'add_genomicsusers'),(86,'Can change genomics users',22,'change_genomicsusers'),(87,'Can delete genomics users',22,'delete_genomicsusers'),(88,'Can view genomics users',22,'view_genomicsusers'),(89,'Can add medications',23,'add_medications'),(90,'Can change medications',23,'change_medications'),(91,'Can delete medications',23,'delete_medications'),(92,'Can view medications',23,'view_medications'),(93,'Can add medications has genes',24,'add_medicationshasgenes'),(94,'Can change medications has genes',24,'change_medicationshasgenes'),(95,'Can delete medications has genes',24,'delete_medicationshasgenes'),(96,'Can view medications has genes',24,'view_medicationshasgenes'),(97,'Can add pathways',25,'add_pathways'),(98,'Can change pathways',25,'change_pathways'),(99,'Can delete pathways',25,'delete_pathways'),(100,'Can view pathways',25,'view_pathways'),(101,'Can add patients has cancer',26,'add_patientshascancer'),(102,'Can change patients has cancer',26,'change_patientshascancer'),(103,'Can delete patients has cancer',26,'delete_patientshascancer'),(104,'Can view patients has cancer',26,'view_patientshascancer'),(105,'Can add patients has genes',27,'add_patientshasgenes'),(106,'Can change patients has genes',27,'change_patientshasgenes'),(107,'Can delete patients has genes',27,'delete_patientshasgenes'),(108,'Can view patients has genes',27,'view_patientshasgenes'),(109,'Can add variants',28,'add_variants'),(110,'Can change variants',28,'change_variants'),(111,'Can delete variants',28,'delete_variants'),(112,'Can view variants',28,'view_variants'),(113,'Can add patients',29,'add_patients'),(114,'Can change patients',29,'change_patients'),(115,'Can delete patients',29,'delete_patients'),(116,'Can view patients',29,'view_patients'),(117,'Can add patients has medication',30,'add_patientshasmedication'),(118,'Can change patients has medication',30,'change_patientshasmedication'),(119,'Can delete patients has medication',30,'delete_patientshasmedication'),(120,'Can view patients has medication',30,'view_patientshasmedication');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` text NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (9,'$2b$12$26cqL68nF6ixCV9B1hYld..NFl7sGr4uKDLiAJamLEBZEQ9egA9wK',NULL,1,NULL,'Brittany','Epstein','bepstein90609@aol.com',1,1,'2020-04-25 06:59:52.157322');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancer_has_Genes`
--

DROP TABLE IF EXISTS `Cancer_has_Genes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancer_has_Genes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Cancer_ID` int NOT NULL,
  `Gene_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Cancer_has_Genes_Genes1_idx` (`Gene_ID`),
  KEY `fk_Cancer_has_Genes_Cancer1_idx` (`Cancer_ID`),
  CONSTRAINT `fk_Cancer_has_Genes_Cancer1` FOREIGN KEY (`Cancer_ID`) REFERENCES `Cancers` (`ID`),
  CONSTRAINT `fk_Cancer_has_Genes_Genes1` FOREIGN KEY (`Gene_ID`) REFERENCES `Genes` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancer_has_Genes`
--

LOCK TABLES `Cancer_has_Genes` WRITE;
/*!40000 ALTER TABLE `Cancer_has_Genes` DISABLE KEYS */;
INSERT INTO `Cancer_has_Genes` VALUES (1,4,4),(2,4,9),(3,5,14),(4,8,4),(5,8,9),(6,8,10),(7,15,8),(8,22,13),(9,22,8),(10,23,13),(11,24,12),(12,24,5),(13,24,1),(14,25,12),(15,25,5),(16,25,1),(17,30,10),(18,31,5),(19,33,8),(20,35,8),(21,36,8),(22,37,8),(23,38,8),(24,43,10),(25,44,8),(26,45,8),(27,46,8),(28,50,4),(29,50,9),(30,54,4),(31,54,9),(32,58,5),(33,62,3),(34,63,4),(35,63,9),(36,68,4),(37,68,9),(38,70,10),(39,72,7),(40,73,7),(41,78,4),(42,78,9),(43,79,4),(44,79,9),(45,80,4),(46,80,9),(47,81,4),(48,81,9),(49,82,4),(50,82,9),(51,99,4),(52,99,9),(53,99,4),(54,99,9),(55,100,4),(56,100,9),(57,101,4),(58,101,9),(59,102,4),(60,102,9),(61,103,4),(62,103,9),(63,105,10),(64,106,10),(65,107,10),(66,108,10),(67,111,5),(68,111,1),(69,114,1),(70,114,5),(71,114,12),(72,116,1),(73,116,5),(74,116,1),(75,116,5),(76,116,15),(77,116,5);
/*!40000 ALTER TABLE `Cancer_has_Genes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancer_has_Medications`
--

DROP TABLE IF EXISTS `Cancer_has_Medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancer_has_Medications` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Medication_ID` int NOT NULL,
  `Cancer_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Cancer_has_Medications_Medications1_idx` (`Medication_ID`),
  KEY `fk_Cancer_has_Medications_Cancer_idx` (`Cancer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancer_has_Medications`
--

LOCK TABLES `Cancer_has_Medications` WRITE;
/*!40000 ALTER TABLE `Cancer_has_Medications` DISABLE KEYS */;
INSERT INTO `Cancer_has_Medications` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(8,2,8),(9,3,9),(10,3,10),(11,3,11),(12,4,5),(13,8,8),(14,9,12),(15,10,13),(16,11,5),(17,11,14),(23,17,19),(24,23,20),(25,24,15),(26,26,22),(27,27,22),(28,27,23),(29,28,22),(30,29,24),(31,29,25),(32,30,8),(33,31,26),(34,31,27),(35,31,28),(36,31,29),(37,32,30),(38,33,31),(39,33,58),(40,33,32),(41,34,33),(42,34,34),(43,34,35),(44,34,36),(45,34,37),(46,34,15),(47,34,38),(48,34,39),(49,34,40),(50,34,41),(51,35,5),(52,35,42),(53,35,43),(54,35,22),(55,36,23),(56,36,43),(57,37,44),(58,37,33),(59,37,38),(60,37,35),(61,37,36),(62,37,45),(63,37,37),(64,37,15),(65,37,22),(66,37,46),(67,38,47),(68,38,38),(93,44,34),(94,44,7),(95,45,23),(96,45,22),(97,45,60),(99,46,62),(100,47,15),(101,47,63),(102,47,64),(103,48,4),(104,48,30),(105,48,65),(106,48,33),(107,48,66),(108,48,36),(109,49,8),(110,50,67),(111,50,68),(112,50,54),(113,50,38),(114,50,48),(115,50,63),(116,50,69),(117,50,31),(118,50,58),(119,50,49),(120,50,41),(121,50,50),(122,50,33),(123,50,70),(124,50,7),(125,50,71),(126,51,72),(127,51,73),(128,52,74),(129,52,75),(130,52,22),(131,53,23),(132,53,30),(133,53,76),(134,53,77),(135,54,5),(136,54,33),(137,54,31),(138,54,58),(139,55,54),(140,55,78),(141,55,79),(142,55,80),(143,55,81),(144,55,82),(145,56,83),(146,56,54),(147,56,84),(148,56,85),(149,56,35),(150,56,36),(151,56,31),(152,56,58),(153,56,38),(154,56,86),(155,57,57),(156,57,87),(157,57,88),(158,57,31),(159,57,58),(160,57,15),(161,57,35),(162,57,36),(163,57,89),(164,57,63),(165,57,49),(166,58,51),(167,58,53),(168,59,90),(169,59,91),(170,59,92),(171,59,25),(172,60,33),(173,60,31),(174,60,58),(175,60,76),(176,60,93),(177,60,94),(178,61,95),(179,62,96),(180,62,2),(181,62,97),(182,63,8),(183,63,99),(184,63,4),(185,63,99),(186,63,100),(187,63,101),(188,63,68),(189,63,102),(190,63,50),(191,63,63),(192,63,103),(193,64,33),(194,64,76),(195,64,49),(196,65,75),(197,65,22),(198,65,44),(199,65,31),(200,65,58),(201,65,94),(202,65,104),(203,66,8),(204,66,105),(205,66,70),(206,66,43),(207,66,106),(208,66,107),(209,66,108),(210,67,54),(211,67,109),(212,67,31),(213,67,58),(214,67,30),(215,67,110),(216,68,15),(217,68,31),(218,68,58),(219,68,33),(220,93,111),(221,94,112),(222,96,51),(223,97,114),(224,98,116),(225,99,115),(226,99,116),(227,99,41),(228,100,31),(229,100,58),(230,101,116),(231,102,116);
/*!40000 ALTER TABLE `Cancer_has_Medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancers`
--

DROP TABLE IF EXISTS `Cancers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) DEFAULT NULL,
  `PRIMARY_SITE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancers`
--

LOCK TABLES `Cancers` WRITE;
/*!40000 ALTER TABLE `Cancers` DISABLE KEYS */;
INSERT INTO `Cancers` VALUES (1,'metastatic kidney renal)',''),(2,'metastatic melanoma',''),(3,'kidney (renal) tumors',''),(4,'melanoma',''),(5,'multiple myeloma',''),(6,'carcinoid tumors',''),(7,'lymphoma',''),(8,'leukemia',''),(9,'basal cell carcinoma (bcc)',''),(10,'actinic keratosis',''),(11,'external genital warts',''),(12,'etastatic colorectal',''),(13,'called cutaneous t-cell lymphoma',''),(14,'mantle cell',''),(15,'non-small cell lung',''),(16,'chronic myeloid',''),(17,'renal cell (kidney)',''),(18,'gastrointestinal stromal tumors',''),(19,'metastatic renal cell carcinoma',''),(20,'b-cell chronic lymphocytic',''),(21,'metastatic colorectal non-squamous',''),(22,'non-hodgkins',''),(23,'chronic lymphocytic',''),(24,'early-stage breast',''),(25,'metastatic gastric',''),(26,'malignant neoplasm trachea',''),(27,'malignant neoplasm bronchus',''),(28,'malignant neoplasm lung)',''),(29,'squamous cell carcinoma',''),(30,'chronic myelogenous',''),(31,'breast',''),(32,'bowel',''),(33,'ovarian',''),(34,'germ cell tumors',''),(35,'head',''),(36,'neck',''),(37,'small cell',''),(38,'bladder',''),(39,'relapsed',''),(40,'refractory (resistant to ordinary treatment) acute',''),(41,'endometrial',''),(42,'brain tumors',''),(43,'hodgkins disease',''),(44,'testicular',''),(45,'esophagus',''),(46,'trophoblastic neoplasms',''),(47,'burkitts',''),(48,'bone',''),(49,'cervical',''),(50,'lung',''),(51,'prostate',''),(52,'adrenal cortex',''),(53,'acute nonlymphocytic',''),(54,'acute lymphocytic',''),(55,'children',''),(56,'breast (advanced ormetastatic)',''),(57,'gastric',''),(58,'breast',''),(59,'soft tissuesarcoma',''),(60,'cutaneous t-cell',''),(61,'actinic keratoses',''),(62,'basal cell carcinomas',''),(63,'pancreatic',''),(64,'advanced ovarian',''),(65,'essential thrombocytosis',''),(66,'squamous cell carcinomas of the head',''),(67,'germ cell testicular',''),(68,'soft tissue sarcoma',''),(69,'stomach',''),(70,'neuroblastoma',''),(71,'wilms tumor',''),(72,'metastatic colorectal',''),(73,'non-small/small lung',''),(74,'metastatic brain tumors',''),(75,'hodgkins',''),(76,'small cell lung',''),(77,'medulloblastoma non-hodgkins',''),(78,'myelocytic',''),(79,'lymphoblastic',''),(80,'acute myelogenous',''),(81,'myelomonocytic',''),(82,'inflammatory bowel diseases',''),(83,'choriocarcinoma',''),(84,'large cell',''),(85,'high grade',''),(86,'osteogenic',''),(87,'anal',''),(88,'colon',''),(89,'small bladder papillomas',''),(90,'metastatic',''),(91,'recurrent colorectal',''),(92,'metastatic pancreatic',''),(93,'large cell lung',''),(94,'kaposis sarcoma',''),(95,'metastatic islet cell carcinoma',''),(96,'refractory brain tumors',''),(97,'glioblastoma multiforme',''),(99,'mesothelioma',''),(100,'glioblastoma',''),(101,'osteosarcoma',''),(102,'neuroendocrine tumors',''),(103,'squamous cell carcinomas',''),(104,'renal cell carcinoma',''),(105,'rhabdoyosarcoma',''),(106,'other',''),(107,'lymphorecticular neoplasms',''),(108,'childhood',''),(109,'lung carcinomas',''),(110,'colorectal',''),(111,'postmenopausal women with estrogen receptor positive breast',''),(112,'metastatic prostate',''),(113,'advanced breast in postmenopausal women',''),(114,'estrogen receptor positive metastatic breast',''),(115,'inoperable breast',''),(116,'metastatic breast','');
/*!40000 ALTER TABLE `Cancers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(8,'genomics','authgroup'),(9,'genomics','authgrouppermissions'),(10,'genomics','authpermission'),(11,'genomics','authuser'),(12,'genomics','authusergroups'),(13,'genomics','authuseruserpermissions'),(14,'genomics','cancerhasgenes'),(15,'genomics','cancerhasmedications'),(16,'genomics','cancers'),(17,'genomics','djangoadminlog'),(18,'genomics','djangocontenttype'),(19,'genomics','djangomigrations'),(20,'genomics','djangosession'),(21,'genomics','genes'),(22,'genomics','genomicsusers'),(23,'genomics','medications'),(24,'genomics','medicationshasgenes'),(25,'genomics','pathways'),(29,'genomics','patients'),(26,'genomics','patientshascancer'),(27,'genomics','patientshasgenes'),(30,'genomics','patientshasmedication'),(1,'genomics','users'),(28,'genomics','variants'),(7,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-22 22:04:39.047949'),(2,'auth','0001_initial','2020-04-22 22:04:39.196966'),(3,'admin','0001_initial','2020-04-22 22:04:39.429614'),(4,'admin','0002_logentry_remove_auto_add','2020-04-22 22:04:39.501736'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-22 22:04:39.511363'),(6,'contenttypes','0002_remove_content_type_name','2020-04-22 22:04:39.572821'),(7,'auth','0002_alter_permission_name_max_length','2020-04-22 22:04:39.605264'),(8,'auth','0003_alter_user_email_max_length','2020-04-22 22:04:39.650623'),(9,'auth','0004_alter_user_username_opts','2020-04-22 22:04:39.660279'),(10,'auth','0005_alter_user_last_login_null','2020-04-22 22:04:39.688177'),(11,'auth','0006_require_contenttypes_0002','2020-04-22 22:04:39.690957'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-22 22:04:39.701904'),(13,'auth','0008_alter_user_username_max_length','2020-04-22 22:04:39.744429'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-22 22:04:39.780781'),(15,'auth','0010_alter_group_name_max_length','2020-04-22 22:04:39.813383'),(16,'auth','0011_update_proxy_permissions','2020-04-22 22:04:39.821889'),(17,'genomics','0001_initial','2020-04-22 22:04:39.877307'),(18,'genomics','0002_auto_20191107_0225','2020-04-22 22:04:39.947597'),(19,'sessions','0001_initial','2020-04-22 22:04:39.961665'),(20,'genomics','0003_auto_20200425_0545','2020-04-25 05:45:21.349846'),(21,'genomics','0004_delete_genomicsusers','2020-04-25 06:04:08.458963');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6l2xiobxo06lz26q2hsyq7ojahkqeb6s','MmVjYTcxN2U1NjUzZWE1Y2M1N2Y0OTczZTkwZGJhMDUyYmI1MmQ3Mzp7ImlzdmFsaWQiOnRydWUsInVzZXJfaWQiOjksImZpcnN0X25hbWUiOiJCcml0dGFueSIsImxhc3RfbmFtZSI6IkVwc3RlaW4ifQ==','2020-05-09 20:41:32.827068');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genes`
--

DROP TABLE IF EXISTS `Genes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IS_CANCER_GENE` varchar(45) DEFAULT NULL,
  `SYMBOL` varchar(255) DEFAULT NULL,
  `BIO_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CYTOBAND` varchar(255) DEFAULT NULL,
  `GENOTYPE` varchar(255) DEFAULT NULL,
  `PHENOTYPE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genes`
--

LOCK TABLES `Genes` WRITE;
/*!40000 ALTER TABLE `Genes` DISABLE KEYS */;
INSERT INTO `Genes` VALUES (1,'Yes',NULL,NULL,'PGR',NULL,NULL,NULL),(2,'Yes',NULL,NULL,'BCR-ABL1',NULL,NULL,NULL),(3,'Yes',NULL,NULL,'DPYD',NULL,NULL,NULL),(4,'Yes',NULL,NULL,'TPMT',NULL,NULL,NULL),(5,'Yes','ESR1','protein_coding','ESR','6q25.1, 6q25.2',NULL,NULL),(6,'Yes',NULL,NULL,'DPYD',NULL,NULL,NULL),(7,'Yes',NULL,NULL,'UGT1A1',NULL,NULL,NULL),(8,'Yes',NULL,NULL,'TPMT',NULL,NULL,NULL),(9,'Yes',NULL,NULL,'NUDT15',NULL,NULL,NULL),(10,'Yes','BCR','protein_coding','BCR-ABL1','22q11.23',NULL,NULL),(11,'Yes','EGFR','protein_coding','EGFR',NULL,NULL,NULL),(12,'Yes','ERBB2','protein_coding','ERBB2','17q12',NULL,NULL),(13,'Yes',NULL,NULL,'MS4A1',NULL,NULL,NULL),(14,'Yes',NULL,NULL,'Chromosome 5q',NULL,NULL,NULL),(15,'Yes',NULL,NULL,'CYP2D6',NULL,NULL,NULL),(16,'Yes',NULL,NULL,'HLA-DQA1',NULL,NULL,NULL),(17,'Yes',NULL,NULL,'HLA-DRB1\'',NULL,NULL,NULL),(19,'True','TP53','protein_coding','tumor protein p53','17p13.1',NULL,NULL),(20,'True','PIK3CA','protein_coding','phosphatidylinositol-4,5-bisphosphate 3-kinase, catalytic subunit alpha','3q26.32',NULL,NULL),(21,'True','FAT4','protein_coding','FAT atypical cadherin 4','4q28.1',NULL,NULL),(22,'True','KMT2D','protein_coding','lysine (K)-specific methyltransferase 2D','12q13.12',NULL,NULL),(23,'True','PTEN','protein_coding','phosphatase and tensin homolog','10q23.31',NULL,NULL),(24,'True','KMT2C','protein_coding','lysine (K)-specific methyltransferase 2C','7q36.1',NULL,NULL),(25,'True','ARID1A','protein_coding','AT rich interactive domain 1A (SWI-like)','1p36.11',NULL,NULL),(26,'True','APC','protein_coding','adenomatous polyposis coli','5q22.2',NULL,NULL),(27,'True','FAT1','protein_coding','FAT atypical cadherin 1','4q35.2',NULL,NULL),(28,'True','KRAS','protein_coding','Kirsten rat sarcoma viral oncogene homolog','12p12.1',NULL,NULL),(29,'True','BRAF','protein_coding','B-Raf proto-oncogene, serine/threonine kinase','7q34',NULL,NULL),(30,'True','ATRX','protein_coding','alpha thalassemia/mental retardation syndrome X-linked','Xq21.1',NULL,NULL),(31,'True','NF1','protein_coding','neurofibromin 1','17q11.2',NULL,NULL),(32,'True','RNF213','protein_coding','ring finger protein 213','17q25.3',NULL,NULL),(33,'True','ZFHX3','protein_coding','zinc finger homeobox 3','16q22.2, 16q22.3',NULL,NULL),(34,'True','TRRAP','protein_coding','transformation/transcription domain-associated protein','7q22.1',NULL,NULL),(35,'True','GRIN2A','protein_coding','glutamate receptor, ionotropic, N-methyl D-aspartate 2A','16p13.2',NULL,NULL),(36,'True','ATM','protein_coding','ATM serine/threonine kinase','11q22.3',NULL,NULL),(37,'True','AKAP9','protein_coding','A kinase (PRKA) anchor protein 9','7q21.2',NULL,NULL),(38,'True','KMT2A','protein_coding','lysine (K)-specific methyltransferase 2A','11q23.3',NULL,NULL),(39,'True','PTPRB','protein_coding','protein tyrosine phosphatase, receptor type, B','12q15',NULL,NULL),(40,'True','SPEN','protein_coding','spen family transcriptional repressor','1p36.21, 1p36.13',NULL,NULL),(41,'True','ERBB4','protein_coding','erb-b2 receptor tyrosine kinase 4','2q34',NULL,NULL),(42,'True','CREBBP','protein_coding','CREB binding protein','16p13.3',NULL,NULL),(43,'True','IDH1','protein_coding','isocitrate dehydrogenase 1 (NADP+), soluble','2q34',NULL,NULL),(44,'True','FBXW7','protein_coding','F-box and WD repeat domain containing 7, E3 ubiquitin protein ligase','4q31.3',NULL,NULL),(45,'True','ROS1','protein_coding','ROS proto-oncogene 1 , receptor tyrosine kinase','6q22.1',NULL,NULL),(46,'True','EGFR','protein_coding','epidermal growth factor receptor','7p11.2',NULL,NULL),(47,'True','PIK3R1','protein_coding','phosphoinositide-3-kinase, regulatory subunit 1 (alpha)','5q13.1',NULL,NULL),(48,'True','RUNX1T1','protein_coding','runt-related transcription factor 1; translocated to, 1 (cyclin D-related)','8q21.3',NULL,NULL),(49,'True','BRCA2','protein_coding','breast cancer 2, early onset','13q13.1',NULL,NULL),(50,'True','MYH11','protein_coding','myosin, heavy chain 11, smooth muscle','16p13.11',NULL,NULL),(51,'True','CDKN2A','protein_coding','cyclin-dependent kinase inhibitor 2A','9p21.3',NULL,NULL),(52,'True','NOTCH1','protein_coding','notch 1','9q34.3',NULL,NULL),(53,'True','ARID2','protein_coding','AT rich interactive domain 2 (ARID, RFX-like)','12q12',NULL,NULL),(54,'True','EP300','protein_coding','E1A binding protein p300','22q13.2',NULL,NULL),(55,'True','NCOR1','protein_coding','nuclear receptor corepressor 1','17p12, 17p11.2',NULL,NULL),(56,'True','RANBP2','protein_coding','RAN binding protein 2','2q13',NULL,NULL),(57,'True','RB1','protein_coding','retinoblastoma 1','13q14.2',NULL,NULL),(58,'True','SMARCA4','protein_coding','SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 4','19p13.2',NULL,NULL),(59,'True','PBRM1','protein_coding','polybromo 1','3p21.1',NULL,NULL),(60,'True','NSD1','protein_coding','nuclear receptor binding SET domain protein 1','5q35.3',NULL,NULL),(61,'True','CTNNB1','protein_coding','catenin (cadherin-associated protein), beta 1, 88kDa','3p22.1',NULL,NULL),(62,'True','SETD2','protein_coding','SET domain containing 2','3p21.31',NULL,NULL),(63,'True','CHD4','protein_coding','chromodomain helicase DNA binding protein 4','12p13.31',NULL,NULL),(64,'True','ARID1B','protein_coding','AT rich interactive domain 1B (SWI1-like)','6q25.3',NULL,NULL),(65,'True','ATR','protein_coding','ATR serine/threonine kinase','3q23',NULL,NULL),(66,'True','UBR5','protein_coding','ubiquitin protein ligase E3 component n-recognin 5','8q22.3',NULL,NULL),(67,'True','ZNF521','protein_coding','zinc finger protein 521','18q11.2',NULL,NULL),(68,'True','MED12','protein_coding','mediator complex subunit 12','Xq13.1',NULL,NULL),(69,'True','PDE4DIP','protein_coding','phosphodiesterase 4D interacting protein','1q21.2',NULL,NULL),(70,'True','CAMTA1','protein_coding','calmodulin binding transcription activator 1','1p36.31, 1p36.23',NULL,NULL),(71,'True','CDH11','protein_coding','cadherin 11, type 2, OB-cadherin (osteoblast)','16q21',NULL,NULL),(72,'True','NCOR2','protein_coding','nuclear receptor corepressor 2','12q24.31',NULL,NULL),(73,'True','TET1','protein_coding','tet methylcytosine dioxygenase 1','10q21.3',NULL,NULL),(74,'True','CACNA1D','protein_coding','calcium channel, voltage-dependent, L type, alpha 1D subunit','3p21.1',NULL,NULL),(75,'True','PTPRC','protein_coding','protein tyrosine phosphatase, receptor type, C','1q31.3, 1q32.1',NULL,NULL),(76,'True','MYH9','protein_coding','myosin, heavy chain 9, non-muscle','22q12.3',NULL,NULL),(77,'True','SETBP1','protein_coding','SET binding protein 1','18q12.3',NULL,NULL),(78,'True','TPR','protein_coding','translocated promoter region, nuclear basket protein','1q31.1',NULL,NULL),(79,'True','NTRK3','protein_coding','neurotrophic tyrosine kinase, receptor, type 3','15q25.3',NULL,NULL),(80,'True','MTOR','protein_coding','mechanistic target of rapamycin (serine/threonine kinase)','1p36.22',NULL,NULL),(81,'True','POLE','protein_coding','polymerase (DNA directed), epsilon, catalytic subunit','12q24.33',NULL,NULL),(82,'True','CARD11','protein_coding','caspase recruitment domain family, member 11','7p22.2',NULL,NULL),(83,'True','AMER1','protein_coding','APC membrane recruitment protein 1','Xq11.2',NULL,NULL),(84,'True','MLLT4','protein_coding','myeloid/lymphoid or mixed-lineage leukemia (trithorax homolog, Drosophila); translocated to, 4','6q27',NULL,NULL),(85,'True','KDR','protein_coding','kinase insert domain receptor','4q12',NULL,NULL),(86,'True','PDGFRA','protein_coding','platelet-derived growth factor receptor, alpha polypeptide','4q12',NULL,NULL),(87,'True','TET2','protein_coding','tet methylcytosine dioxygenase 2','4q24',NULL,NULL),(88,'True','BCL11A','protein_coding','B-cell CLL/lymphoma 11A (zinc finger protein)','2p16.1',NULL,NULL),(89,'True','ALK','protein_coding','anaplastic lymphoma receptor tyrosine kinase','2p23.2, 2p23.1',NULL,NULL),(90,'True','KDM6A','protein_coding','lysine (K)-specific demethylase 6A','Xp11.3',NULL,NULL),(91,'True','BCOR','protein_coding','BCL6 corepressor','Xp11.4',NULL,NULL),(92,'True','MECOM','protein_coding','MDS1 and EVI1 complex locus','3q26.2',NULL,NULL),(93,'True','CIC','protein_coding','capicua transcriptional repressor','19q13.2',NULL,NULL),(94,'True','FLT4','protein_coding','fms-related tyrosine kinase 4','5q35.3',NULL,NULL),(95,'True','KIAA1549','protein_coding','KIAA1549','7q34',NULL,NULL),(96,'True','AFF3','protein_coding','AF4/FMR2 family, member 3','2q11.2',NULL,NULL),(97,'True','CUX1','protein_coding','cut-like homeobox 1','7q22.1',NULL,NULL),(98,'True','ERBB3','protein_coding','erb-b2 receptor tyrosine kinase 3','12q13.2',NULL,NULL),(99,'True','NOTCH2','protein_coding','notch 2','1p12',NULL,NULL),(100,'True','PTPRK','protein_coding','protein tyrosine phosphatase, receptor type, K','6q22.33',NULL,NULL),(101,'True','KAT6A','protein_coding','K(lysine) acetyltransferase 6A','8p11.21',NULL,NULL),(102,'True','ATP2B3','protein_coding','ATPase, Ca++ transporting, plasma membrane 3','Xq28',NULL,NULL),(103,'True','CDH1','protein_coding','cadherin 1, type 1, E-cadherin (epithelial)','16q22.1',NULL,NULL),(104,'True','STAG2','protein_coding','stromal antigen 2','Xq25',NULL,NULL),(105,'True','PTPN13','protein_coding','protein tyrosine phosphatase, non-receptor type 13 (APO-1/CD95 (Fas)-associated phosphatase)','4q21.3',NULL,NULL),(106,'True','NRG1','protein_coding','neuregulin 1','8p12',NULL,NULL),(107,'True','NFE2L2','protein_coding','nuclear factor, erythroid 2-like 2','2q31.2',NULL,NULL),(108,'True','PTCH1','protein_coding','patched 1','9q22.32',NULL,NULL),(109,'True','KDM5A','protein_coding','lysine (K)-specific demethylase 5A','12p13.33',NULL,NULL),(110,'True','NIN','protein_coding','ninein (GSK3B interacting protein)','14q22.1',NULL,NULL),(111,'True','GATA3','protein_coding','GATA binding protein 3','10p14',NULL,NULL),(112,'True','ERBB2','protein_coding','erb-b2 receptor tyrosine kinase 2','17q12',NULL,NULL),(113,'True','GNAS','protein_coding','GNAS complex locus','20q13.32',NULL,NULL),(114,'True','SMAD4','protein_coding','SMAD family member 4','18q21.2',NULL,NULL),(115,'True','DICER1','protein_coding','dicer 1, ribonuclease type III','14q32.13',NULL,NULL),(116,'True','ASXL1','protein_coding','additional sex combs like transcriptional regulator 1','20q11.21',NULL,NULL),(117,'True','COL2A1','protein_coding','collagen, type II, alpha 1','12q13.11',NULL,NULL),(118,'True','USP6','protein_coding','ubiquitin specific peptidase 6','17p13.2',NULL,NULL);
/*!40000 ALTER TABLE `Genes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medications`
--

DROP TABLE IF EXISTS `Medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medications` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DOSAGE` varchar(255) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `INDICATION` text,
  `CONTRAINDICATION` text,
  `SIDE_EFFECTS` text,
  `GENERIC_NAME` varchar(255) DEFAULT NULL,
  `BRAND_NAME` varchar(255) DEFAULT NULL,
  `ROUTE` varchar(255) DEFAULT NULL,
  `IUPAC` text,
  `MECHANISM` text,
  `TYPE` varchar(45) DEFAULT NULL,
  `TREATMENT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medications`
--

LOCK TABLES `Medications` WRITE;
/*!40000 ALTER TABLE `Medications` DISABLE KEYS */;
INSERT INTO `Medications` VALUES (1,'22000000 unit, 1.1 mg/1mL','Injection, powder, lyophilized, for solution',NULL,'Patients need to have normal heart (cardiac) and lung (pulmonary) function as determined by a thallium stress test','nausea, vomiting, diarrhea, loss of appetite, sores in the mouth and throat, tiredness, weakness and dizziness','Aldesleukin, Interleukin-2 (IL-2)','Proleukin','Intravenous','',NULL,'BRM','Biological'),(2,'11.1 ug/0.5mL, 22.2 ug/0.5mL, 33.3 ug/0.5mL','Powder, for solution, Liquid',NULL,'Interferon can worsen existing heart, kidney, liver, and mental health problems','fever, chills, body weakness, fatigue, confusion, and skin issues','Alpha Interferon','Intron, Roferon-A','Intramuscular; Subcutaneous','',NULL,'BRM','Biological'),(3,'2.5 mg/1g, 37.5 mg/1g, 50 mg/1g, 50 mg/1000mg','Cream	',NULL,'','redness, itching or burning at site of application, swelling or flaking of skin, headache, back pain and tiredness','Imiquimod','Aldara','Topical','3-(2-methylpropyl)-3,5,8-triazatricyclo[7.4.0.02,6]trideca-1(9),2(6),4,7,10,12-hexaen-7-amine',NULL,'BRM','Biological'),(4,'2.5 mg, 5 mg, 7.5mg, 10 mg, 15mg, 20mg, 25mg','Capsule',NULL,'Lenalidomide (as an analog of thalidomide) poses an extremely high risk to a developing fetus and can result in severe birth defects and even death. Therefore, lenalidomide is distributed via the RevAssist program, in which patients, pharmacies and prescribing physicians much register. Before beginning lenalidomide treatment, a woman of childbearing age must have two negative pregnancy tests and be willing to employ two separate methods of birth control before, during and at least four weeks after treatment. Women must have repeated pregnancy tests throughout treatment. Males receiving lenalidomide must not have unprotected sexual intercourse with women of childbearing age during treatment since it is unknown whether the drug can be present in semen. Men cannot donate sperm, and neither men nor women can donate blood during lenalidomide treatment. Also, new mothers should discontinue nursing infants during and immediately following treatment.','Low blood counts, diarrhea, constipation and/or nausea, rash and itching, fatigue and perceived weakness, fever','Lenalidomide','Revlimid','Oral','3-(7-amino-3-oxo-1H-isoindol-2-yl)piperidine-2,6-dione',NULL,'BRM','Biological'),(8,'10000 [iU]/1','Injection, powder, lyophilized, for solution',NULL,'Allergic reactions to this drug are relatively common and can be serious and the chance of reaction is greater in patients that have received this treatment at an earlier time. For this reason asparaginase should only be administered in a hospital setting. Asparaginase often has a negative effect on liver function which may be greater in cases where liver function is already abnormal. This decrease in liver function may cause the toxic effects of other drugs to be greater.','nausea and vomiting, loss of appetite, changes in blood clotting and blood sugar levels and also temporary bone marrow depression','Asparaginase','Elspar','Intramuscular; Intravenous','Not Applicable: This is an enzyme (protein)','EnzymeActivator',NULL,'Targeted'),(9,'25 mg, 100 mg/4mL, 400 mg/16mL','Injection, solution',NULL,'Previous conditions like stroke or NSCLC can lead to severe reactions from Bevacizumab and should be communicated to your physician','gastrointestinal abscesses, perforations, and bleeding, delayed wound healing,weakness, diarrhea, low white blood cell count, abdominal pain, headache, hypertension','Bevacizumab','Avastin','Intravenous','Humanized anti-VEGF antibody','AngiogenesisInhibitors',NULL,'Targeted'),(10,'1 g/100g, 10 mg/1g, 75 mg/1','Capsule, liquid filled capsule, Gel',NULL,'Bexarotene should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus','blood lipid level changes, tiredness, weakness, headache, decreased thyroid hormone levels, skin abnormalities,  rashes, other skin abnormalities, and also pain','Bexarotene','Targretin','Oral, Topical','4-[1-(3,5,5,8,8-pentamethyltetralin-2-yl)ethenyl]','Drug that Affects a Molecular Receptor',NULL,'Targeted'),(11,'1 mg/1mL, 1.0 mg, 3.5 mg/1','Injection, powder, lyophilized, for solution',NULL,'Women should not become pregnant while taking this medication as it may cause damage to the unborn child.','fatigue and weakness, nausea, diarrhea, decreased appetite, constipation, lowered blood cell count, nerve pain and vomiting','Bortezomib','Velcade','Intravenous; Subcutaneous','[(1S)-3-methyl-1-[[(2R)-3-phenyl-2-(pyrazine-2-carbonylamino)propanoyl]amino]butyl]boronic acid','Proteosome Inhibitor',NULL,'Targeted'),(12,'150 ug/1mL','Injection, solution',NULL,'','nausea\r\nvomiting\r\ndiarrhea\r\nloss of appetite\r\nchange in ability to taste,\r\nfeeling tired,\r\npain, including back, muscle, or joint pain, cough, headache, weakness, rash\r\nitching','Denileukin diftitox','ONTAK','Intravenous','','Drug that Affects a Molecular Receptor',NULL,'Targeted'),(13,'250 mg/1','Tablet, film coated tablet',NULL,'','elevations in blood pressure, Pruritus, mild nausea','Gefitinib','Iressa','Oral','N-(3-chloro-4-fluorophenyl)-7-methoxy-6-(3-morpholin-4-ylpropoxy)quinazolin-4-amine','KinaseInhibitor',NULL,'Targeted'),(14,'50 mg, 100 mg/1, 400 mg/1','Capsule, Tablet',NULL,'','nausea and vomiting, diarrhea, leg aches or cramps, swelling of the face, altered bone marrow function and fluid retention','Imatinib Mesylate','Gleevec, Glivec','Oral','4-[(4-methylpiperazin-1-yl)methyl]-N-[4-methyl-3-[(4-pyridin-3-ylpyrimidin-2-yl)amino]phenyl]benzamide','Kinase Inhibitor',NULL,'Targeted'),(15,'250 mg/1','Tablet, film coated',NULL,'Inform your doctor about any heart conditions prior to treatment with lapatinib. It has been shown to decrease left ventricle ejection fraction (LVEF) in some patients, therefore LVEF should be evaluated in all patients. Lapatinib may also cause toxic effects on the hepatic (liver) system, so inform your doctor about any pre-existing liver conditions. Lapatinib may have harmful effects on a developing fetus, women who are pregnant should not take lapatinib and any woman who becomes pregnant while on lapatinib should inform their doctor immediately. Also, women who are breast feeding should speak with their doctor; it is not known if lapatinib passes into breast milk or what effects it can have on a developing child. Some drugs may interact with lapatinib. Your doctor needs to know what prescription or nonprescription (supplements) drugs you are on to decide the correct dose of lapatinib.',' diarrhea, mouth sores, loss of appetite, indigestion, rash, nausea and vomiting, fatigue, hand-foot syndrome','Lapatinib','Tykerb','Oral','','Kinase Inhibitor',NULL,'Targeted'),(16,'200 mg/1','Tablet, film coated tablet',NULL,'','nausea, diarrhea, hair loss, fatigue, hypertension, effects on bone marrow resulting in leukopenia, and lymphopenia','Sorafenib','Nexavar','Oral','4-[4-[[4-chloro-3-(trifluoromethyl)phenyl]carbamoylamino] phenoxy]-N-methyl-pyridine-2-carboxamide','Kinase Inhibitor',NULL,'Targeted'),(17,'12.5 mg/1, 25 mg/1, 37.5 mg/1, 50 mg/1','Capsule',NULL,'','fatigue, swelling, taste changes, nausea, vomiting, high blood pressure, mouth pain/irritation, upset stomach, constipation, diarrhea, skin changes, bleeding, extremely tired, short of breath, or experience swelling in the feet or ankles, hole in the stomach or bowels or bleeding from the tumor','Sunitinib','Sutent','Oral','N-(2-diethylaminoethyl)-5-[(Z)-(5-fluoro-2-oxo-1H-indol-3-ylidene)methyl]-2,4-dimethyl-1H-pyrrole-3-carboxamide','Kinase Inhibitor',NULL,'Targeted'),(23,'12 mg, 12 mg/1.2mL, 30 mg/1mL','Injection, solution, concentrate',NULL,'Birth control should be used during treatment and at least six months after treatment has ended for both men and women','anemia, increased risk of bleeding, and infection,weakened immune system, fever, chills, nausea, vomiting, and low blood pressure,  rash, fatigue, shortness of breath, coughing, diarrhea, headache, loss of appetite, itching, sweating, dizziness, and abdominal pain','Alemtuzumab','Campath','Intravenous','Humanized anti-CD52 antibody',NULL,'Antibody','Antibody'),(24,'25 mg, 100 mg, 100 mg/4mL, 400 mg, 400 mg/16mL','Injection, solution',NULL,'Previous conditions like stroke or NSCLC can lead to severe reactions from Bevacizumab and should be communicated to your physician','gastrointestinal abscesses, perforations, and bleeding, delay wound healing, weakness, diarrhea, low white blood cell count, abdominal pain, headache, hypertension','Bevacizumab','Avastin','Intravenous','Humanized anti-VEGF antibody',NULL,'Antibody','Antibody'),(25,'4.5 mg, 5 mg/5mL','Injection, powder, lyophilized, for solution',NULL,'','rash, diarrhea,\nconstipation,\nnausea,\nvomiting,\nheadache,\npain,\npain, swelling, or sores in mouth or throat, unusual or severe bleeding or bruising\ncough, shortness of breath, or difficulty breathing\nfast heartbeat\nfever, chills, sore throat, or other signs of infection','Gemtuzumab','Mylotarg','Intravenous','',NULL,'Antibody','Antibody'),(26,'1.6 mg/1mL','Kit',NULL,'','nausea and vomiting, abdominal pain, diarrhea, cough, shortness of breath, dizziness, loss of appetite, joint pain, nervousness, bruising, low blood cell counts, decrease blood clotting, and cause weakness and fatigue','Ibritumomab','Zevalin','Intravenous','',NULL,'Antibody','Antibody'),(27,'10 mg/1mL, 100 mg, 100 mg/10mL, 500 mg, 500 mg/50mL','Injection, solution',NULL,'','fever, chills, infection, loweredlymphocytecount, cough and rhinitis','Rituximab','Rituxan,Mabthera','Intravenous','Chimeric murine/human monoclonal anti-CD20 antibody',NULL,'Antibody','Antibody'),(28,'0.61 mCi/1mL, 5.6 mCi/1mL','Injection, KIT, Solution',NULL,'Patients should not become pregnant while undergoing tositumomab therapy and therapy should not be given before pregnancy is ruled out. Contraception should be used by males and females during and 12 months after treatment has ended.  Patients who have already received murine proteins and may have mounted an anti-mouse immune response are at a higher risk for a reaction of this sort. In some patients hypothyroidism (reduced thyroid gland function) may occur. For this reason thyroid blocking agents must be administered with tositumomab. Treatment and screening for hypothyroidism should continue on an annual basis after treatment ends. Because this therapy includes a radioactive material that is inside the body for some period of time, patients should be given special instructions and precautions to prevent harm to any other person','lowered blood cell count, weakness, fever, nausea, infection, cough','Tositumomab','Bexxar','Intravenous','Humanized anti-VEGF antibody',NULL,'Antibody','Antibody'),(29,'150 mg, 150 mg/7.4mL,150 mg/20mL, 420 mg/20mL, 440 mg, 440 mg/20mL, 600 mg','Injection, powder, lyophilized, for solution',NULL,'','fever, chills, fatigue, nausea and vomiting, myelosuppression, cardiotoxicity and pulmonary toxicity','Trastuzumab','Herceptin','Intravenous, Subcutaneous','Humanized anti-HER2 antibody',NULL,'Antibody','Antibody'),(30,'100 mg/5mL, 20 mg/1mL','Infusion, or under the skin injection',NULL,'Cytarabine should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus','bone marrow suppression, anorexia, nausea and vomiting, diarrhea, oral/anal inflammation or ulceration, rash, fever','Arabinosylcytosine (ARA-C), Cytarabine','Cytosar-U','Intrathecal; Intravenous; Subcutaneous','4-amino-1-[(2R,3S,4S,5R)-3,4-dihydroxy-5-(hydroxymethyl)oxolan-2-yl]pyrimidin-2-one',NULL,'Antimetabolite','Chemotherapy'),(31,'15 [USP\'U]/1, 30 [USP\'U]/1, 15000 [iU]/1','Injection, powder, for solution',NULL,'','Pain and swelling at the injection site, cough or breathing problems, Poor blood flow in your fingers and toes,Scleroderma, Sore mouth ,loss of appitite, Increased risk of getting a chest infection, nail and skin changes, hair loss, feeling or being sick, fatigue. ','Bleomycin','Blenoxane','Intramuscular; Intrapleural; Intravenous; Subcutaneous','(3-{[2-(2-{2-[(2S,3R)-2-[(2S,3S,4R)-4-[(2S,3R)-2-({6-amino-2-[(1S)-1-{[(2S)-2-amino-2-carbamoylethyl]amino}-2-carbamoylethyl]-5-methylpyrimidin-4-yl}formamido)-3-[(3-{[4-(carbamoyloxy)-3,5-dihydroxy-6-(hydroxymethyl)oxan-2-yl]oxy}-4,5-dihydroxy-6-(hydroxymethyl)oxan-2-yl)oxy]-3-(1H-imidazol-4-yl)propanamido]-3-hydroxy-2-methylpentanamido]-3-hydroxybutanamido]ethyl}-1,3-thiazol-4-yl)-1,3-thiazol-4-yl]formamido}propyl)dimethylsulfanium',NULL,'Other','Chemotherapy'),(32,'2 mg, 2mg/1, 6 mg/1mL, 60 mg/10mL, 60 mg/1','Injection, powder, for solution, tablet, film coated tablet',NULL,'Busulfan should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. Busulfan can cause interstitial pneumonitis, as such patients should be monitored for pulmonary issues.','bone marrow depression, altered blood cell count, nausea, vomiting and diarrhea','Busulfan','Myleran','Intravenous, Oral','4-methylsulfonyloxybutyl methanesulfonate',NULL,'GenotoxicAgent','Chemotherapy'),(33,'150 mg/1, 500 mg/1','tablet, film coated tablet',NULL,'','nausea and vomiting, mouth sores, abdominal pain, diarrhea, loss of appetite, and changes in skin, temporary bone marrow suppression, hair loss, increased tear production, headache and dizziness.','Capecitabine','Xeloda','Oral','pentyl[1-(3,4-dihydroxy-5-methyl-tetrahydrofuran-2-yl)- 5-fluoro-2-oxo-1H-pyrimidin- 4-yl]aminomethanoate',NULL,'Antimetabolite','Chemotherapy'),(34,'10 mg/1mL, 50 mg/5mL','Injection, solution,powder, lyophilized, for solution',NULL,'','decreased white blood cell count with increased risk of infection, decreased platelet count with increased risk of bleeding, brittle hair, altered kidney function (at high doses), fetal abnormalities may occur if the patient is pregnant or becomes pregnant during treatment, nausea, vomiting and possible allergic reaction.','Carboplatin','Paraplatin','Intravenous','cyclobutane-1,1-dicarboxylic acid',NULL,'Genotoxic Agent','Chemotherapy'),(35,'7.7 mg/1, 100 mg/30mL','intravenously or as an implanted wafer.',NULL,'','nausea,vomiting,headache,loss of balance or coordination,\r\npale skin, fainting, dizziness,\r\nfast or irregular heartbeat,\r\nchest pain, darkened skin,\r\nswelling, pain, redness, or burning at the injection site\r\nupset stomach\r\nextreme tiredness or weakness\r\nlack of energy\r\nloss of appetite\r\npain in the upper right part of the stomach\r\nyellowing of the skin or eyes\r\ndecreased urination\r\nswelling of the hands, feet, ankles, or lower legs','Carmustine','Bicnu, Gliadel','Intravenous, Intracavitary, Intralesional		','',NULL,'Genotoxic Agent','Chemotherapy'),(36,'2 mg/1','tablet, film coated tablet',NULL,'Chlorambucil should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. This drug may also have negative effects on fertility in the years following treatment. Bone marrow depression is the most common toxicity associated with chlorambucil\'s usage. It is important to monitor the levels of white blood cells, platelets, and hemoglobin. ','bone marrow suppression, nausea and vomiting, diarrhea, oral ulcers, tremors, twitching, seizures, other abnormal activity of the nervous system, and also changes in and allergic reactions of the skin','Chlorambucil','Leukeran','oral','4-[4-[bis(2-chloroethyl)amino]phenyl]butanoic acid',NULL,'Genotoxic Agent','Chemotherapy'),(37,'1 mg/1mL','Injection, solution',NULL,'Birth defects could occur if patient is pregnant while on treatment. The patient should have no immunizations (vaccinations) during and after treatment without prior discussion with the health care provider. Contact with people who have recently taken the oral polio vaccine should be avoided as directed by the health care provider. Kidney damage caused by cisplatin may be prevented by checking kidney function prior to administering the drug, giving extra intravenous fluids, and drinking extra fluids after the drug is given.','kidney damage, decreased blood levels of magnesium, potassium, and calcium, nausea and vomiting, taste changes, including metallic taste to foods, sensation of \'pins and needles\' in hands and/or feet, decreased red blood cell counts.','Cisplatin','Platinol, IntraDose(Cisplatin; Collagen; Epinephrine)','Intravenous','(SP-4-2)-diamminedichloroplatinum',NULL,'Genotoxic Agent','Chemotherapy'),(38,'1 g/50mL, 2 g/100mL, 25 mg/1, 50 mg/1, 500 mg/25mL','Injection, powder, lyophilized, for solution, capsule, tablet',NULL,'patients considering cyclophosphamide therapy should talk to their doctor about the drug\'s effects on fertility, potential or current pregnancy, and breast-feeding. Secondary cancers may appear years after cyclphosphamide therapy.','hair loss (alopecia), nausea and vomiting, diarrhea, depression of blood cell counts, loss of appetite, irritation of the bladder, cough, fever and/or chills, lower back or side pain, as well as skin and mouth ulcers, effects on the germ cells resulting in amenorrhea (cessation of menstrual periods) testicular atrophy, and sterility.','Cyclophosphamide','Cytoxan, CytoxanIV, Neosar, Procytox','Intravenous; Oral','N,N-bis(2-chloroethyl)-2-oxo-1-oxa-3-aza-2$l^{5}-phosphacyclohexan-2-amine',NULL,'Genotoxic Agent','Chemotherapy'),(39,'10 mg/1mL, 200 mg/20mL','Injection, powder, for solution',NULL,'Dacarbazine should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful effects on the developing fetus. Bone marrow depression is the most common toxicity associated with dacarbazine usage. It is important to monitor the levels of white blood cells, red blood cells and platelets.','extreme nausea and vomiting, anorexia, hair loss, and facial flushing','Dacarbazine','DTIC-Dome','Intravenous','5-(3,3-Dimethyl-1-triazenyl)imidazole-4-carboxamide',NULL,'Genotoxic Agentor','Chemotherapy'),(40,'2 mg/1mL, 5 mg/1mL, 20 mg/1','Injection, powder, for solution',NULL,'Daunorubicin should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. This drug may have effects on fertility after treatment has ended.Patients should note that after an infusion the urine may have a temporary red tinting. Daunorubicin is a strong suppressor of bone marrow activity. It is important to monitor blood cell and platelet counts throughout the duration of treatment. Daunorubicin may also have toxic effects on other systems, therefore, renal (kidney) function, and hepatic (liver) function tests should be performed routinely. Also, cardiac function must be monitored to avoid irreversible effects of toxicity. Evaluations of the function of these systems should be made before each infusion.','bone marrow suppression, nausea and vomiting (near time of treatment), hair loss, infection due to bone marrow suppression, abdominal cramps and diarrhea.','Daunorubicin','Cerubidine','Intravenous','(7S,9S)-9-acetyl-7-[(2R,4S,5S,6S)-4-amino-5-hydroxy-6-methyloxan-2-yl]oxy-6,9,11-trihydroxy-4-methoxy-8,10-dihydro-7H-tetracene-5,12-dione',NULL,'Genotoxic Agent','Chemotherapy'),(41,'10 mg/1mL,20 mg/0.8mL, 20 mg/1mL, 20 mg/2mL, 80 mg/4mL,80 mg/8mL	 ','Injection, solution, concentrate,, KIT, ',NULL,'Docetaxel should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. Patients with abnormal lover function should also be cautious, as they are at a higher risk of toxicity.','bone marrow suppression, fluid retention, hair loss, infection due to bone marrow suppression, diarrhea and rash','Docetaxel','Taxotere','Intravenous','(2R,3S)-N-carboxy-3-phenylisoserine, N-tert-butyl ester, 13-ester with 5, 20-epoxy-1, 2, 4, 7, 10, 13-hexahydroxytax-11-en-9-one 4-acetate 2-benzoate, trihydrate',NULL,'Spindle Inhibitor','Chemotherapy'),(42,'2 mg/ml','Injection, solution, concentrate, powder, for solution',NULL,'Cardiac toxicity becomes relevant at high doses. If present, the cardiomyopathy may lead to irreversible congestive heart failure.','decreased blood cell counts, increased risk of infection and bleeding, loss of appetite, stomatitis, alopecia (hair loss), Nausea and vomiting, mouth sores, Birth defects, liver toxicity, and acute arrhythmia.','Doxorubicin','Adriamycin, Rubex, Doxil, Caelyx, Myocet','Intravenous; Intravesical','(7S,9S)-7-[(2R,4S,5S,6S)-4-amino-5-hydroxy-6-methyloxan-2-yl]oxy-6,9,11-trihydroxy-9-(2-hydroxyacetyl)-4-methoxy-8,10-dihydro-7H-tetracene-5,12-dione',NULL,'Genotoxic Agent','Chemotherapy'),(43,'	2 mg/1mL, 50 mg/25mL, 200 mg/100mL','Injection, solution, powder, lyophilized, for solution',NULL,'Epirubicin should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. This drug may have effects on fertility after treatment has ended.','nausea and vomiting, fatigue, hair loss, mouth sores, heart problems or acute myelogenous leukemia','Epirubicin','Ellence','Intravenous','(7S,9S)-7-[(2R,4S,5R,6S)-4-amino-5-hydroxy-6-methyloxan-2-yl]oxy-6,9,11-trihydroxy-9-(2-hydroxyacetyl)-4-methoxy-8,10-dihydro-7H-tetracene-5,12-dione',NULL,'Genotoxic Agent','Chemotherapy'),(44,'20 mg/1mL	, 100 mg/1','Liquid, Injection, powder, lyophilized, for solution',NULL,'Women who are pregnant or thinking of becoming pregnant should not take this drug. Patients may also experience an increased tendency to bleed and should avoid taking aspirin, as this \'thins\' the blood increasing the chance of bleeding. Etopside may have a negative affects on the the immune system. Because of this, patients should not receive immunizations while being treated.','alopecia (hair loss), decreased white blood cell count, nausea. Birth defects are possible','Etoposide','Etopophos, Vepesid, Toposar, VP-16','Intravenous','4\'-demethyl-epipodophyllotoxin 9-[4,6-O-(R)-ethylidene-beta-D-glucopyranoside], 4\'-(dihydrogen phosphate)',NULL,'Genotoxic Agent','Chemotherapy'),(45,'10 mg/1, 25 mg/1mL, 50 mg/2mL','Injection, powder, lyophilized, for solution, tablet, film coated tablet',NULL,'Caution should be used in patients with abnormal renal function and elderly patients with previous bone marrow issues. It is also important to monitor patients for signs of infection from treatment.','bone marrow suppression, fever and chills, fatigue, infection, nausea and vomiting, weakness, decrease in t cells','Fludarabine','Fludara','Oral, Intravenous','[(2R,3S,4S,5R)-5-(6-amino-2-fluoropurin-9-yl)-3,4-dihydroxyoxolan-2-yl]methyl dihydrogen phosphate',NULL,'Antimetabolite','Chemotherapy'),(46,'0.5 g/10mL, 1.25 g/10mL, 2 g/40g, 5 mg/1g, 10 mg/1g, 50 mg','Solution, Liquid, Cream',NULL,'','myelosuppression, mucositis, seizures and hand-foot syndrome, confusion, cardiac symptoms, conjunctivitis and skin issues.','5-Fluorouracil','Adrucil, Carac, Fluoroplex, Efudex(Injection)','Intravenous, Topical','5-fluoro-1H-pyrimidine-2,4-dione',NULL,'Antimetabolite','Chemotherapy'),(47,'38 mg/1mL, 100 mg/1mL','Solution,Powder, for solution, Injection',NULL,'','bone marrow suppression, weakness, fever, nausea and vomiting, rash','Gemcitabine','Gemzar','Intravenous','4-amino-1-[(2R,4R,5R)-3,3-difluoro-4-hydroxy-5-(hydroxymethyl)oxolan-2-yl]pyrimidin-2-one',NULL,'Antimetabolite','Chemotherapy'),(48,'100 mg/1, 200 mg/1, 300 mg/1, 400 mg/1, 500 mg/1, 1000 mg/1','Capsule, film coated tablet',NULL,'Hydroxyurea should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus.','bone marrow depression, nausea and vomiting, diarrhea, constipation, and skin changes.','Hydroxyurea','Hydrea','Oral','hydroxyurea',NULL,'Other','Chemotherapy'),(49,'1 mg/1mL','Injection, powder, lyophilized, for solution, capsule, tablet, Solution',NULL,'Use caution in patients with abnormal liver function and make sure breastfeeding is avoided for nursing mothers on the treatment.','bone marrow suppression, nausea and vomiting, hair loss, infection, abdominal cramps and diarrhea, rashes','Idarubicin','Idamycin PFS','Intravenous','(1S,3S)-3-acetyl-3,5,12-trihydroxy-6,11-dioxo-1,2,3,4,6,11-hexahydrotetracen-1-yl 3-amino-2,3,6-trideoxo--L-lyxo-hexopyranoside',NULL,'Genotoxic Agent','Chemotherapy'),(50,'1 g, 1 g/20mL, 3 g, 3 g/60mL','Injection, powder, for solution',NULL,'A very serious problem that may result with treatment is hemorrhagic cystitis, which is prevented by administering ifosfamide in combination with a compound called Mesna (Uromitexan, Mesnex), which inactivates the toxic compounds, minimizing the problem. Patients considering ifosfamide as cancer therapy should talk to their doctor about the drug\'s effects on fertility, potential or current pregnancy, breast-feeding, chickenpox status, shingles status, kidney disease, liver disease, and all other medications currently taken.','alopecia (hair loss), temporary ridging of the nails, nausea and vomiting, diarrhea, depression of blood cell counts, temporary toxicities, changes in liver function, skin rashes or darkening, confusion, lethargy, sleepiness, and loss of balance.','Ifosfamide','Ifex','Intravenous','N,3-bis(2-chloroethyl)-1,3,2-oxazaphosphinan-2-amide-2-oxide',NULL,'Genotoxic Agent','Chemotherapy'),(51,'20mg, 20 mg/1mL','Injection, solution',NULL,'','diarrhea and abdominal cramps, abnormal body , temperature, fever, body aches, nausea and vomiting, fatigue, hair loss, decrease in the number of infection-fighting cells','Irinotecan','Camptosar','Intravenous	','2-chloro-N-(2-chloroethyl)-N-methylethanamine',NULL,'Genotoxic Agent','Chemotherapy'),(52,'5 mg/1, 10 mg/1, 40 mg/1, 100 mg/1','Capsule, gelatin coated Capsule',NULL,'Women who are pregnant or thinking of becoming pregnant should not take this drug as birth defects are a possibility. There is also an increased tendency to bleed making it necessary that the person not take aspirin as it \'thins\' the blood, further increasing bleeding potential. Lomustine may have a negative effects on the the immune system. Because of this, patients should not receive immunizations while being treated.','myelosupression, nausea and vomiting, birth defects, loss of appetite, weight loss, weakness, excessive bleeding, difficulty walking, diarrhea, lethargy','Lomustine','CeeNU','Oral','1-(2-chloroethyl)-3-cyclohexyl-1-nitrosourea',NULL,'Genotoxic Agent','Chemotherapy'),(53,'0.012 g/60g, 10 mg/10mL','Powder, for solution, Gel',NULL,'','myelosuppression, nausea, vomiting, pain at site of injection, and alopecia.','Mechlorethamine','Mustargen','Intracavitary; Intravenous, Topical','2-chloro-N-(2-chloroethyl)-N-methylethanamine',NULL,'Genotoxic Agent','Chemotherapy'),(54,'2mg, 2 mg/1, 50 mg/10mL','Injection, powder, lyophilized, for solution, tablet, film coated tablet,kit',NULL,'Women who are pregnant or are thinking of becoming pregnant should not take this drug.','myelosupression (decreased blood cell counts), excessive bleeding, nausea and vomiting, may also cause birth defects.','Melphalan','Alkeran','Intravenous, Oral','2-amino-3-[4-[bis(2-chloroethyl)amino]phenyl]propanoic acid',NULL,'Genotoxic Agent','Chemotherapy'),(55,'20 mg/1mL, 50 mg, 50 mg/1  ','Oral, Suspension',NULL,'Side effects are rare in children.','low blood counts (Myelosuppression), mouth sores, diarrhea, skin rash/acne, mild nausea, abnormal liver function','6-Mercaptopurine (6-MP)','Purinethol, Puri-Nethol','	Oral','3,7-dihydropurine-6-thione',NULL,'Antimetabolite','Chemotherapy'),(56,'2.5 mg, 2.5 mg/1,25 mg/1mL','Injection, solution, tablet',NULL,'Due to the possibly high toxicity of Methotrexate a lot of consideration must be taken by your physician to look at previous conditions and dosages.  Extra concern should also be taken in patients with abnormal renal function, patients with late stage bladder cancer and patients with third-space fluid collections (pleural effusion and ascites).  Many checks must also be done on a consistent basis to be sure the medication is working properly and effectively.','very toxic at high doses, myelosuppression, mucositis, acute renal failure and possibility of pneumonitis.','Methotrexate','Rheumatrex, Trexall, Mexate, MTX','Oral, Intra-arterial; Intramuscular; Intrathecal; Intravenous, Subcutaneous',' (2S)-2-[[4-[(2,4-diaminopteridin-6-yl)methyl-methylamino]benzoyl]amino]pentanedioic acid',NULL,'Antimetabolite','Chemotherapy'),(57,'0.2 mg/1mL','Powder, for solution,Kit, ',NULL,'Birth defects are a possibility, therefore patients should not become pregnant or father a child during treatment with mitomycin. Also, patients planning to have children in the future should consult with their doctor before beginning treatment as this drug may cause sterility. Doctors should be informed of pre-existing conditions such as chickenpox, heart disease or heart failure, gout, shingles, kidney stones or liver disease as these health conditions could increase the incidence and severity of side effects. Patients receiving this treatment should also avoid immunizations due to treatment-induced immunosuppression.','Myelosuppression, nausea and vomiting, mucositis and fatigue','Mitomycin C','Mutamycin','Intravenous; Intravesical, Ophthalmic','6-Amino-1,1a,2,8,8a,8b-hexahydro-8-(hydroxymethyl)-8a-methoxy-5-methyl-azirino[2\',3\':3,4]pyrrolo[1,2-a]indole-4,7-dione carbamate (ester)',NULL,'Genotoxic Agent','Chemotherapy'),(58,'2 mg, 20 mg/10mL, 25 mg/12.5mL, 30 mg/15mL ','Injection, solution, Liquid',NULL,'Patients should note that after an infusion the urine may have a temporary blue-green tinting. Mitoxantrone is a suppressor of bone marrow activity. It is important to monitor blood cell and platelet counts throughout the duration of treatment with blood tests before each infusion. Mitoxantrone may also have toxic effects the liver, which require liver function to be monitored routinely. Also, heart function must be monitored to avoid irreversible effects of toxicity. Evaluations of the function of these systems should be made before each infusion. Mitoxantrone should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. It is unclear whether this drug may have effects on fertility after treatment has ended.','myelosuppression, nausea and vomiting, mucositis, diarrhea, alopecia and cardiotoxicity','Mitoxantrone','Novantrone','Intravenous','1,4-dihydroxy-5,8-bis[2-(2-hydroxyethylamino) ethylamino]-anthracene-9,10-dione',NULL,'Genotoxic Agent','Chemotherapy'),(59,'5mg, 5 mg/1mL, 50mg, 50 mg/1, 100mg, 100 mg/1','Injection, solution, concentrate,power, for solution',NULL,'Many patients do experience neuropathy which most commonly appears as spasms, tingling, or abnormal tongue sensations which may worsen in cold temperatures. The neuropathy may be either temporary or persist after treatment has been suspended. Oxaliplatin should not be taken by women who are pregnant and patients should not become pregnant while using this drug, as it may have harmful affects on the developing fetus. This drug may also have negative effects on fertility in the years following treatment. Low blood cell counts may result from oxaliplatin treatment which makes it necessary for blood tests to be done before each infusion. Also, patients should notify their doctors if any signs of infection appear, such as, fever, persistent diarrhea, or cough','neuropathy, tiredness, weakness, diarrhea, nausea and vomiting, abdominal pain, fever, loss of appetite, pain','Oxaliplatin','Eloxatin','Intravenous','(1R,2R)-cyclohexane-1,2-diamine; oxalate; platinum(+2) cation',NULL,'Genotoxic Agent','Chemotherapy'),(60,'5 mg/ml, 6mg, 6 mg/1mL, 100 mg/20mL','Injection, powder, for suspension, Liquid, solution',NULL,'The drug may cause birth defects. Patients should not take this drug if they are pregnant or plan to become pregnant. Breast feeding should also be avoided by patients taking paclitaxel. Immunosuppression may lead to increased risk of infection. Patients should tell their clinician if they are currently taking any other medications.','reduction in bone marrow function which may result in anemia, blood in stools or black stools, fast or irregular heartbeat, fever, chills, lower back pain, numbness or tingling of the hands or feet, mouth sores, painful, bloody, or difficult urination, swelling of the face, lips, or throat, nausea, vomiting, or diarrhea, unusual bleeding or bruising, wheezing or trouble breathing, hair loss','Paclitaxel','Taxol, Onxol, Paxene','Intravenous','5 beta,20-Epoxy-1,2a,4,7 beta,10 beta,13 alpha-hexahydroxytax-11-en-9-one 4,10-diacetate 2-benzoate 13-ester with (2 R,3S)-N-benzoyl-3-phenylisoserine',NULL,'Spindle Inhibitor','Chemotherapy'),(61,'100 mg/1mL','Powder, for solution',NULL,'Due to streptozocin\'s potential to cause harm to the unborn fetus, pregnant women should fully consider the risks and benefits of treatment before beginning. The drug is also toxic to the kidneys.','nausea and vomiting, diarrhea, pain at injection site, elevated liver enzymes, renal toxicity ','Streptozocin','Zanosar','Intravenous','1-methyl-1-nitroso-3-[(2S,3R,4R,5S,6R)-2,4,5-trihydroxy-6-(hydroxymethyl)oxan-3-yl]urea',NULL,'Other','Chemotherapy'),(62,'20mg, 100mg, 140mg','Capsule',NULL,'Women who are or plan to become pregnant should consult with their physician before beginning treatment with this drug','nausea and vomiting, headache, fatigue,myelosuppression(reduced bone marrow activity)','Temozolomide','Temodar','Oral','3-methyl-4-oxoimidazo[5,1-d][1,2,3,5]tetrazine-8-carboxamide',NULL,'Genotoxic Agent','Chemotherapy'),(63,'40 mg/1','Tablet',NULL,'','nausea,\r\nvomiting,\r\nloss of appetite or weight,\r\nsores in the mouth and throat,\r\nheadache,\r\nunusual tiredness or weakness,\r\nunusual bleeding or bruising,\r\nyellowing of the skin or eyes,\r\nflu-like symptoms,\r\nswelling of the stomach area,\r\nstomach pain, particularly in the right part of the stomach\r\nswelling of the face, arms, hands, feet, ankles or lower legs\r\nbloody vomit\r\nblack, tarry or bloody stools\r\nfever, sore throat, ongoing cough and congestion, or other signs of infection\r\nshortness of breath\r\nlightheadedness','6-Thioguanine','Tabloid, Lanvis','Oral','\r\n2-amino-6,7-dihydro-3H-purine-6-thione',NULL,'Antimetabolite','Chemotherapy'),(64,'0.25 mg/1, 1 mg/1, 4 mg/4mL','Injection, powder, lyophilized, for solution, Capsule',NULL,'','low blood counts, platelets may temporarily decrease;  infection, anemia, and/or bleeding); nausea and vomiting; hair loss; and diarrhea, constipation; fatigue; fever; abdominal pain; bone pain; weakness; mouth sores; poor appetite; rash; shortness of breath; cough; and headache. ','Topotecan','Hycamtin','Oral, Intravenous','(S)-10-[(dimethylamino)methyl]-4-ethyl-4,9- dihydroxy-1H-pyrano[3\',4\':6,7]indolizino[1,2-b] quinoline-3,14(4H,12H)-dione monohydrochloride',NULL,'Genotoxic Agent','Chemotherapy'),(65,'','Powder, for solution, Liquid, Solution',NULL,'','bone or muscle pain, nausea and vomiting, alopecia (loss of hair), sores in mouth and on lips, swelling of feet or lower legs, dizziness, double vision, drooping eyelids, headache, jaw pain, mental depression, numbness or tingling in fingers and toes, pain finger and toe pain, testicle pain, waking difficulties, weakness, blood in urine or stools, and unusual bleeding or bruising.','Vinblastine','Velban, Velbe','Intravenous','dimethyl (2_,3_,4_,5,12_,19)-15-[(5S,9S)-5-ethyl-5-hydroxy-9-(methoxycarbonyl)-1,4,5,6,7,8,9,10-octahydro-2H-3,7-methanoazacycloundecino[5,4-b]indol-9-yl]-3-hydroxy-16-methoxy-1- methyl-6,7-didehydroaspidospermidine-3,4-dicarboxylate',NULL,'Spindle Inhibitor','Chemotherapy'),(66,'5 mg/5mL','Powder, for solution, Solution, Liquid, Kit',NULL,'This drug should not be taken by a patient who is pregnant, planning a pregnancy, or breast-feeding as it may cause birth defects. Patients should not receive any immunizations (vaccinations) while taking this medication. Vincristine may cause immunosuppression (weakened immunity) and vaccinations could lead to an illness. Patients should notify their clinician about any prescription drugs taken concurrently with the chemotherapy and any other medical conditions, such as, chickenpox, herpes zoster infection, gout, kidney stones, infections, liver disease, nerve or muscle disease.','hair loss, pain/redness at location of injection, nausea/stomach pain/vomiting, lowered blood cell count, numbness, headache, constipation, nervous system problems such as neuropathy or sensory impairment, blurred or double vision, back pain, overall weakness','Vincristine','Oncovin, Vincasar PFS, Vincrex','Intravenous','methyl (1R,9R,10S,11R,12R,19R)-11-(acetyloxy)-12-ethyl-4-[(1R,13S,15R,17S)-17-ethyl-17-hydroxy-13-(methoxycarbonyl)-1,11-diazatetracyclo[13.3.1.0^{4,12}.0^{5,10}]nonadeca-4(12),5,7,9-tetraen-13-yl]-8-formyl-10-hydroxy-5-methoxy-8,16-diazapentacyclo[10.6.1.0^{1,9}.0^{2,7}.0^{16,19}]nonadeca-2(7),3,5,13-tetraene-10-carboxylate',NULL,'Spindle Inhibitor','Chemotherapy'),(67,'5mg/2ml','Powder, for solution',NULL,'','hair loss, rash, nausea and vomiting, constipation, stomach cramps, jaw pain, vein inflammation (phlebitis), decreased blood cell counts (also called bone marrow suppression or, myelosuppression), decrease in blood platelet number (thrombocytopenia)','Vindesine','Eldisine, Fildesin','Intravenous','methyl (5S,7S,9S)-9-[(2_,3_,4_,5,12_,19)-3-(aminocarbonyl)-3,4-dihydroxy-16-methoxy-1-methyl-6,7-didehydroaspidospermidin-15-yl]-5-ethyl-5-hydroxy-1,4,5,6,7,8,9,10-octahydro-2H-3,7-methanoazacycloundecino[5,4-b]indole-9-carboxylate',NULL,'Spindle Inhibitor','Chemotherapy'),(68,'10 mg/1mL','Solution, Injection',NULL,'',' myelosuppression,nausea and vomiting, shortness of breath, constipation or loose stools, alopecia (hair loss), numbness in the hands or feet','Vinorelbine','Navelbine','Intravenous','4-(acetyloxy)-6,7-didehydro-15- ((2R,6R,8S)-4-ethyl-1,3,6,7,8,9-hexahydro- 8-(methoxycarbonyl)-2,6-methano- 2H-azecino(4,3-b)indol-8-yl)-3-hydroxy-16-methoxy-1-methyl-,methyl ester, (2b,3b,4b,5a,12R,19alpha)-aspidospermidine-3-carboxylic acid',NULL,'Spindle Inhibitor','Chemotherapy'),(93,'1 mg/1','Tablet, film coated tablet',NULL,NULL,'hot flashes, nausea, decreased energy, back and bone pain, joint pain or stiffness','Anastrozole','Arimidex','Oral','2-[3-(2-cyanopropan-2-yl)-5-(1,2,4-triazol-1-ylmethyl)phenyl]-2-methylpropanenitrile',NULL,'Aromatase Inhibitor','Hormonal'),(94,'50mg, 50 mg/1','Tablet',NULL,'Patients with pre-existing liver conditions should be cautious be receiving this treatment and periodic blood tests to check liver function should be done throughout the duration of treatment',' hot flashes, decreased libido, impotence, general pain, pelvic and back pain weakness, constipation, potential liver toxicity','Bicalutamide','Casodex','Oral','(2R)-N-[4-cyano-3-(trifluoromethyl)phenyl]-3-(4-fluorophenyl)sulfonyl-2-hydroxy-2-methylpropanamide',NULL,'Exemestane','Hormonal'),(95,'25 mg, 25 mg/1','Tablet',NULL,'It is recommended only for postmenopausal women. If exposed to aromasin while pregnant, patients should contact a physician to assess the potential hazard to the fetus and possible risk of pregnancy loss','hot flashes, nausea, fatigue, eye disturbances, headaches dizziness, insomnia, depression, hypertension, joint pain, limb pains, back pains and osteoarthritis','Exemestane','Aromasin','Oral','(8R,9S,10R,13S,14S)-10,13-dimethyl-6-methylidene-7,8,9,11,12,14,15,16-octahydrocyclopenta[a]phenanthrene-3,17-dione',NULL,'Aromatase Inhibitor','Hormonal'),(96,'250 mg','Tablet, 	Capsule',NULL,NULL,'breast swelling or soreness, diarrhea and cramping Decreased energy, hot flashes, potential liver toxicity','Flutamide','Eulexin','Oral','2-methyl-N-[4-nitro-3-(trifluoromethyl)phenyl]propanamide',NULL,'Specific Androgen Receptor Modulator (SARM)','Hormonal'),(97,'50 mg/1mL, 250 mg/5ml','Injection, solution',NULL,'atients should not become pregnant while being treated with Fulvestrant as it may cause harm to the unborn child. Breastfeeding should be avoided in patients nursing infants. Patients with bleeding diatheses and thrombocytopenia should use extreme caution','nausea, vomiting, constipation, diarrhea, abdominal pain, headache, back pain, hot flashes, sore throat','Fulvestrant','Faslodex','Intramuscular','13-methyl-7-[9-( 4,4,5,5,5-pentafluoropentylsulfinyl)nonyl]- 7,8,9,11,12,13,14,15,16, 17-decahydro- 6H-cyclopenta[a] phenanthrene-3,17-diol',NULL,'Estrogen Receptor Down-Regulator','Hormonal'),(98,'2.5 mg/1','Tablet, film coated tablet',NULL,'Letrozole is only indicated for use in postmenopausal women, as efficacy in premenopausal women has not been established. Caution should also be taken in patients with abnormal liver function','muscle and bone pain, hot flashes, back pain, difficulty breathing, coughing, fatigue, headache','Letrozole','Femara','Oral','4-[(4-cyanophenyl)-(1,2,4-triazol-1-yl)methyl]benzonitrile',NULL,'Aromatase Inhibitor','Hormonal'),(99,'20 mg/1, 40 mg/1mL, 125 mg/1mL, 160 mg','Tablet, Suspension',NULL,'Megestrol must not be taken by women who are pregnant as it can cause harm to the unborn child. In diabetics, treatment with megestrol may result in a worsening of diabetes that results in an increase in insulin requirements','weight gain due to increased appetite and mild fluid retention, nausea and vomiting, hyperglycemia and heat flashes','Megestrol','Megace','Oral',' (8R,9S,10R,13S,14S,17R)-17-acetyl-17-hydroxy-6,10,13-trimethyl-2,8,9,11,12,14,15,16-octahydro-1H-cyclopenta[a]phenanthren-3-one',NULL,'Additional Hormonal Treatments','Hormonal'),(100,'60 mg/1','Tablet, film coated tablet',NULL,'Women who have or have had blood clots in the legs, lung, or eyes should not take EVISTA , as this treatment has the possibility of leading to blood clots or death by stroke','hot flashes, leg cramps, swelling, flu-like symptoms, joint pain, sweating','Raloxifene','Evista','Oral','[6-hydroxy-2-(4-hydroxyphenyl)- benzothiophen-3-yl]- [4-[2-(1-piperidyl)ethoxy]phenyl] -methanone',NULL,'Selective Estrogen Receptor Modulator (SERM)','Hormonal'),(101,'10 mg/1, 10 mg/5mL, 20 mg/1, 20 mg/10mL','Tablet, Liquid',NULL,'Patients being treated with tamoxifen are also at increased risk for blood clots in the legs and lungs, and also for strokes. These events are serious but are rare. Tamoxifen may also increase the risk of endometrial cancer in patients receiving treatment that have not undergone a hysterectomy. Patients should not become pregnant while taking tamoxifen or within 2 months after treatment is stopped as the drug could harm the unborn child. Also, oral contraceptives should not be used while taking tamoxifen. Therefore other forms of birth control must be used, such as condom or diaphragm.','hot flashes, vaginal discharge or bleeding, menstrual irregularities, fluid retention, headache, lethargy, skin rash and myelosuppression','Tamoxifen','Nolvadex','Oral','2-[4-[(Z)-1,2-di(phenyl)but-1-enyl]phenoxy]-N,N-dimethylethanamine',NULL,'Selective Estrogen Receptor Modulator (SERM)','Hormonal'),(102,'60 mg/1','Tablet',NULL,NULL,'hot flashes and sweating, nausea and vomiting, vaginal discharge, dizziness, swelling, vaginal bleeding, proliferation of endometrial','Toremifene','Fareston','Oral','2-[4-[(Z)-4-chloro-1,2-di(phenyl)but-1-enyl]phenoxy]-N,N-dimethylethanamine',NULL,'Selective Estrogen Receptor Modulator (SERM)','Hormonal');
/*!40000 ALTER TABLE `Medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medications_has_Genes`
--

DROP TABLE IF EXISTS `Medications_has_Genes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medications_has_Genes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Medications_ID` int NOT NULL,
  `Genes_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Medications_has_Genes_Genes1_idx` (`Genes_ID`),
  KEY `fk_Medications_has_Genes_Medications1_idx` (`Medications_ID`),
  CONSTRAINT `fk_Medications_has_Genes_Genes1` FOREIGN KEY (`Genes_ID`) REFERENCES `Genes` (`ID`),
  CONSTRAINT `fk_Medications_has_Genes_Medications1` FOREIGN KEY (`Medications_ID`) REFERENCES `Medications` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medications_has_Genes`
--

LOCK TABLES `Medications_has_Genes` WRITE;
/*!40000 ALTER TABLE `Medications_has_Genes` DISABLE KEYS */;
INSERT INTO `Medications_has_Genes` VALUES (1,32,10),(2,37,8),(3,41,5),(4,41,1),(5,46,3),(6,51,7),(7,55,4),(8,55,9),(9,63,4),(10,63,9),(11,66,10),(12,27,13),(13,29,12),(14,29,5),(15,29,1),(16,4,14),(17,13,11),(18,13,15),(19,15,12),(20,15,5),(21,15,16),(22,15,17),(23,93,5),(24,93,1),(25,95,1),(26,95,5),(27,97,1),(28,97,5),(29,97,12),(30,98,1),(31,98,5),(32,100,5),(33,101,1),(34,101,5),(35,101,15),(36,102,5);
/*!40000 ALTER TABLE `Medications_has_Genes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pathways`
--

DROP TABLE IF EXISTS `Pathways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pathways` (
  `ID` int NOT NULL,
  `Medication_ID` int NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`ID`),
  KEY `fk_Pathways_Medication1_idx` (`Medication_ID`),
  CONSTRAINT `fk_Pathways_Medication1` FOREIGN KEY (`Medication_ID`) REFERENCES `Medications` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pathways`
--

LOCK TABLES `Pathways` WRITE;
/*!40000 ALTER TABLE `Pathways` DISABLE KEYS */;
INSERT INTO `Pathways` VALUES (1,9,'Bevacizumab Action Pathway','Drug Action'),(2,13,'Gefitinib Action Pathway','Drug Action'),(3,14,'Imatinib Inhibition of BCR-ABL','Drug Action'),(4,16,'Sorafenib Metabolism Pathway','Drug Metabolism'),(5,101,'Tamoxifen Action Pathway','Drug Action'),(6,101,'Tamoxifen Metabolism Pathway','Drug Metabolism'),(7,24,'Bevacizumab Action Pathway','Drug Action'),(8,29,'Trastuzumab Action Pathway','Drug Action'),(9,33,'Capecitabine Action Pathway','Drug Action'),(10,33,'Capecitabine Metabolism Pathway','Drug Metabolism'),(11,38,'Cyclophosphamide Action Pathway','Drug Action'),(12,38,'Cyclophosphamide Metabolism Pathway','Drug Metabolism'),(13,41,'Docetaxel Action Pathway','Drug Action'),(14,42,'Doxorubicin Metabolism Pathway','Drug Metabolism'),(15,44,'Etoposide Action Pathway','Drug Action'),(16,44,'Etoposide Metabolism Pathway','Drug Metabolism'),(17,46,'Capecitabine Action Pathway','Drug Action'),(18,46,'Fluorouracil Action Pathway','Drug Action'),(19,46,'Capecitabine Metabolism Pathway','Drug Metabolism'),(20,46,'Fluorouracil Metabolism Pathway','Drug Metabolism'),(21,47,'Gemcitabine Action Pathway','Drug Action'),(22,47,'Gemcitabine Metabolism Pathway','Drug Metabolism'),(23,50,'Ifosfamide Action Pathway','Drug Action'),(24,50,'Ifosfamide Metabolism Pathway','Drug Metabolism'),(25,51,'Irinotecan Action Pathway','Drug Action'),(26,51,'Irinotecan Metabolism Pathway','Drug Metabolism'),(27,55,'Mercaptopurine Action Pathway','Drug Action'),(28,55,'Azathioprine Action Pathway','Drug Action'),(29,55,'Thioguanine Action Pathway','Drug Action'),(30,55,'Azathioprine Metabolism Pathway','Drug Metabolism'),(31,55,'Mercaptopurine Metabolism Pathway','Drug Metabolism'),(32,56,'Methotrexate Action Pathway','Drug Action'),(33,60,'Paclitaxel Action Pathway','Drug Action');
/*!40000 ALTER TABLE `Pathways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GENDER` varchar(45) DEFAULT NULL,
  `AGE` varchar(25) DEFAULT NULL,
  `VITAL_STATUS` varchar(255) DEFAULT NULL,
  `HEIGHT` varchar(5) DEFAULT NULL,
  `WEIGHT` varchar(10) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `STAGE` varchar(1) DEFAULT NULL,
  `SYMPTOMS` text,
  `TESTS` text,
  `APPOINTMENT_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
/*!40000 ALTER TABLE `Patients` DISABLE KEYS */;
INSERT INTO `Patients` VALUES (1,'M','56',NULL,'6\'7','185lbs','Aatrox','Demon','3','Darker looking skin, nausea, sores that do not heal',NULL,'2020-05-01 08:00:00'),(2,'M','35',NULL,'6\'4','150lbs','Azir','SandKnight','1','Unexplained weight loss, fever, pain, jaundice',NULL,'2020-05-01 09:00:00'),(3,'M','25',NULL,'6\'3','143lbs','Brand','Fireman','4','Blood in stool, unusual bleeding, change in bowel habits, abdominal pain',NULL,'2020-05-01 10:30:00'),(4,'F','33',NULL,'6\'5','174lbs','Illaoi','KrackenSquid',NULL,NULL,NULL,'2020-05-01 11:00:00'),(5,'F','22',NULL,'5\'4','118lbs','Caitlyn','Snipper','2','Lump in the breast, nausea',NULL,'2020-05-01 11:30:00'),(6,'F','18',NULL,'5\'1','116lbs','Ahri','LoveFox','1','Excessive bleeding, unusual discharge, pain after urination, change in bladder function',NULL,'2020-05-01 13:00:00'),(7,'M','44',NULL,'6\'3','166lbs','Pantheon','TeleSoldier',NULL,NULL,NULL,'2020-05-01 14:00:00'),(8,'F','25',NULL,'5\'4','110lbs','Elise','ForestSpider','2','sores that do not heal, frequent unexplained fevers',NULL,'2020-05-01 15:00:00'),(9,'F','16',NULL,'4\'11','123lbs','Sona','MusicalHarp','1','white patches inside mouth, unusual bleeding, unusual discharge',NULL,'2020-05-02 09:00:00'),(10,'M','22',NULL,'5\'8','155lbs','Sett','Fighter',NULL,NULL,NULL,'2020-05-02 11:00:00'),(11,'F','31',NULL,'5\'1','135lbs','Syndra','DarkSpheres ',NULL,NULL,NULL,'2020-05-02 12:00:00'),(12,'M','32',NULL,'4\'5','99lbs','Veigar','ShadowDwarf','3','trouble breathing, trouble swallowing, nagging cough, hoarseness, unexplained weight loss',NULL,'2020-05-02 13:00:00'),(13,'F','18',NULL,'5\'6','118lbs','Xayah','Blades',NULL,NULL,NULL,'2020-05-02 15:00:00'),(14,'F','30',NULL,'4\'12','125lbs','Yuumi','Kitty',NULL,NULL,NULL,'2020-05-02 16:00:00');
/*!40000 ALTER TABLE `Patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients_has_Cancer`
--

DROP TABLE IF EXISTS `Patients_has_Cancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients_has_Cancer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` int NOT NULL,
  `Cancer_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Patients_has_Cancer_Cancer1_idx` (`Cancer_ID`),
  KEY `fk_Patients_has_Cancer_Patients_idx` (`Patient_ID`),
  CONSTRAINT `fk_Patients_has_Cancer_Cancer1` FOREIGN KEY (`Cancer_ID`) REFERENCES `Cancers` (`ID`),
  CONSTRAINT `fk_Patients_has_Cancer_Patients` FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients_has_Cancer`
--

LOCK TABLES `Patients_has_Cancer` WRITE;
/*!40000 ALTER TABLE `Patients_has_Cancer` DISABLE KEYS */;
INSERT INTO `Patients_has_Cancer` VALUES (1,2,3),(2,1,4),(3,8,7),(4,9,8),(5,5,31),(6,6,33),(7,12,50),(8,3,88);
/*!40000 ALTER TABLE `Patients_has_Cancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients_has_Genes`
--

DROP TABLE IF EXISTS `Patients_has_Genes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients_has_Genes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` int NOT NULL,
  `Gene_ID` int NOT NULL,
  `SEQUENCE` text,
  `ISVARIANT` tinyint DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_Patients_has_Genes_Genes1_idx` (`Gene_ID`),
  KEY `fk_Patients_has_Genes_Patients1_idx` (`Patient_ID`),
  CONSTRAINT `fk_Patients_has_Genes_Genes1` FOREIGN KEY (`Gene_ID`) REFERENCES `Genes` (`ID`),
  CONSTRAINT `fk_Patients_has_Genes_Patients1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients_has_Genes`
--

LOCK TABLES `Patients_has_Genes` WRITE;
/*!40000 ALTER TABLE `Patients_has_Genes` DISABLE KEYS */;
INSERT INTO `Patients_has_Genes` VALUES (1,1,4,NULL,0),(2,1,10,NULL,0),(3,8,9,NULL,0),(4,8,4,NULL,0),(5,8,10,NULL,0),(6,9,9,NULL,0),(7,3,4,NULL,0),(8,5,31,NULL,0),(9,3,12,NULL,0),(10,6,5,NULL,0),(11,6,9,NULL,0),(12,10,101,NULL,0),(13,10,102,NULL,0),(14,11,62,NULL,0),(15,11,23,NULL,0),(16,12,48,NULL,0),(18,12,32,NULL,0),(19,12,33,NULL,0),(20,13,98,NULL,0),(21,13,99,NULL,0),(22,14,4,NULL,0),(23,14,11,NULL,0);
/*!40000 ALTER TABLE `Patients_has_Genes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients_has_Medication`
--

DROP TABLE IF EXISTS `Patients_has_Medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients_has_Medication` (
  `Patient_ID` int NOT NULL,
  `Medication_ID` int NOT NULL,
  PRIMARY KEY (`Patient_ID`,`Medication_ID`),
  KEY `fk_Patients_has_Medication_Medication1_idx` (`Medication_ID`),
  KEY `fk_Patients_has_Medication_Patients1_idx` (`Patient_ID`),
  CONSTRAINT `fk_Patients_has_Medication_Medication1` FOREIGN KEY (`Medication_ID`) REFERENCES `Medications` (`ID`),
  CONSTRAINT `fk_Patients_has_Medication_Patients1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients_has_Medication`
--

LOCK TABLES `Patients_has_Medication` WRITE;
/*!40000 ALTER TABLE `Patients_has_Medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `Patients_has_Medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Variants`
--

DROP TABLE IF EXISTS `Variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Variants` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Gene_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `SEQUENCE` text,
  PRIMARY KEY (`ID`),
  KEY `fk_Variants_Genes1_idx` (`Gene_ID`),
  KEY `fk_Variants_Patients1_idx` (`Patient_ID`),
  CONSTRAINT `fk_Variants_Genes1` FOREIGN KEY (`Gene_ID`) REFERENCES `Genes` (`ID`),
  CONSTRAINT `fk_Variants_Patients1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Variants`
--

LOCK TABLES `Variants` WRITE;
/*!40000 ALTER TABLE `Variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `Variants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 14:48:04
