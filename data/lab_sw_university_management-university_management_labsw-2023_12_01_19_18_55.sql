-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: university_management_labsw
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `academicPrograms_academicprogram`
--

DROP TABLE IF EXISTS `academicPrograms_academicprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicPrograms_academicprogram` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `semester` int NOT NULL,
  `period` varchar(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicPrograms_academicprogram`
--

LOCK TABLES `academicPrograms_academicprogram` WRITE;
INSERT INTO `academicPrograms_academicprogram` VALUES ('2023-11-26 00:59:52.000000',1,'Academic program test',1,'2023-2','2023-11-26 01:00:10.621988'),('2023-11-27 22:17:04.000000',2,'INGENIERIA DE SISTEMAS',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',3,'INGENIERIA INDUSTRIAL',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',4,'MEDICINA',13,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',5,'INGENIERIA MECÁNICA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',6,'QUIMICA FARMACEUTICA',8,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',7,'ECONOMIA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',8,'DERECHO',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',9,'FINANZAS Y COMERCIO INTERNACIONAL',8,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',10,'PEDAGOGIA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',11,'ARQUITECTURA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',12,'INGENIERIA ELECTRICA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',13,'INGENIERIA MECATRÓNICA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',14,'INGENIERIA FISICA',10,'2023-2','2023-11-27 22:17:04.000000'),('2023-11-27 22:17:04.000000',15,'LICENCIATURA EN ARTES PLASTICAS',10,'2023-2','2023-11-27 22:17:04.000000');
UNLOCK TABLES;

--
-- Table structure for table `academicPrograms_academicprogramwithsubjects`
--

DROP TABLE IF EXISTS `academicPrograms_academicprogramwithsubjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicPrograms_academicprogramwithsubjects` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  `academic_program_id_id` bigint NOT NULL,
  `subject_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academicPrograms_aca_academic_program_id__57093ff6_fk_academicP` (`academic_program_id_id`),
  KEY `academicPrograms_aca_subject_id_id_7a169e21_fk_subjects_` (`subject_id_id`),
  CONSTRAINT `academicPrograms_aca_academic_program_id__57093ff6_fk_academicP` FOREIGN KEY (`academic_program_id_id`) REFERENCES `academicPrograms_academicprogram` (`id`),
  CONSTRAINT `academicPrograms_aca_subject_id_id_7a169e21_fk_subjects_` FOREIGN KEY (`subject_id_id`) REFERENCES `subjects_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicPrograms_academicprogramwithsubjects`
--

LOCK TABLES `academicPrograms_academicprogramwithsubjects` WRITE;
INSERT INTO `academicPrograms_academicprogramwithsubjects` VALUES ('2023-11-28 08:06:57.000000',1,'2023-11-28 08:06:57.000000',2,27),('2023-11-28 08:06:57.000000',2,'2023-11-28 08:06:57.000000',2,28),('2023-11-28 08:06:57.000000',3,'2023-11-28 08:06:57.000000',2,29),('2023-11-28 08:06:57.000000',4,'2023-11-28 08:06:57.000000',2,30),('2023-11-28 08:06:57.000000',5,'2023-11-28 08:06:57.000000',3,1),('2023-11-28 08:06:57.000000',6,'2023-11-28 08:06:57.000000',3,2),('2023-11-28 08:06:57.000000',7,'2023-11-28 08:06:57.000000',3,27),('2023-11-28 08:06:57.000000',8,'2023-11-28 08:06:57.000000',3,28),('2023-11-28 08:06:57.000000',9,'2023-11-28 08:06:57.000000',3,29),('2023-11-28 08:06:57.000000',10,'2023-11-28 08:06:57.000000',3,30),('2023-11-28 08:06:57.000000',11,'2023-11-28 08:06:57.000000',4,3),('2023-11-28 08:06:57.000000',12,'2023-11-28 08:06:57.000000',4,4),('2023-11-28 08:06:57.000000',13,'2023-11-28 08:06:57.000000',5,5),('2023-11-28 08:06:57.000000',14,'2023-11-28 08:06:57.000000',5,6),('2023-11-28 08:06:57.000000',15,'2023-11-28 08:06:57.000000',5,27),('2023-11-28 08:06:57.000000',16,'2023-11-28 08:06:57.000000',5,28),('2023-11-28 08:06:57.000000',17,'2023-11-28 08:06:57.000000',5,29),('2023-11-28 08:06:57.000000',18,'2023-11-28 08:06:57.000000',5,30),('2023-11-28 08:06:57.000000',19,'2023-11-28 08:06:57.000000',6,7),('2023-11-28 08:06:57.000000',20,'2023-11-28 08:06:57.000000',6,8),('2023-11-28 08:06:57.000000',21,'2023-11-28 08:06:57.000000',7,9),('2023-11-28 08:06:57.000000',22,'2023-11-28 08:06:57.000000',7,10),('2023-11-28 08:06:57.000000',23,'2023-11-28 08:06:57.000000',8,11),('2023-11-28 08:06:57.000000',24,'2023-11-28 08:06:57.000000',8,12),('2023-11-28 08:06:57.000000',25,'2023-11-28 08:06:57.000000',9,13),('2023-11-28 08:06:57.000000',26,'2023-11-28 08:06:57.000000',9,14),('2023-11-28 08:06:57.000000',27,'2023-11-28 08:06:57.000000',10,15),('2023-11-28 08:06:57.000000',28,'2023-11-28 08:06:57.000000',10,16),('2023-11-28 08:06:57.000000',29,'2023-11-28 08:06:57.000000',11,17),('2023-11-28 08:06:57.000000',30,'2023-11-28 08:06:57.000000',11,18),('2023-11-28 08:06:57.000000',31,'2023-11-28 08:06:57.000000',12,19),('2023-11-28 08:06:57.000000',32,'2023-11-28 08:06:57.000000',12,20),('2023-11-28 08:06:57.000000',33,'2023-11-28 08:06:57.000000',12,27),('2023-11-28 08:06:57.000000',34,'2023-11-28 08:06:57.000000',12,28),('2023-11-28 08:06:57.000000',35,'2023-11-28 08:06:57.000000',12,29),('2023-11-28 08:06:57.000000',36,'2023-11-28 08:06:57.000000',12,30),('2023-11-28 08:06:57.000000',37,'2023-11-28 08:06:57.000000',13,21),('2023-11-28 08:06:57.000000',38,'2023-11-28 08:06:57.000000',13,22),('2023-11-28 08:06:57.000000',39,'2023-11-28 08:06:57.000000',13,27),('2023-11-28 08:06:57.000000',40,'2023-11-28 08:06:57.000000',13,28),('2023-11-28 08:06:57.000000',41,'2023-11-28 08:06:57.000000',13,29),('2023-11-28 08:06:57.000000',42,'2023-11-28 08:06:57.000000',13,30),('2023-11-28 08:06:57.000000',43,'2023-11-28 08:06:57.000000',14,23),('2023-11-28 08:06:57.000000',44,'2023-11-28 08:06:57.000000',14,24),('2023-11-28 08:06:57.000000',45,'2023-11-28 08:06:57.000000',14,27),('2023-11-28 08:06:57.000000',46,'2023-11-28 08:06:57.000000',14,28),('2023-11-28 08:06:57.000000',47,'2023-11-28 08:06:57.000000',14,29),('2023-11-28 08:06:57.000000',48,'2023-11-28 08:06:57.000000',14,30),('2023-11-28 08:06:57.000000',49,'2023-11-28 08:06:57.000000',15,25),('2023-11-28 08:06:57.000000',50,'2023-11-28 08:06:57.000000',15,26);
UNLOCK TABLES;

--
-- Table structure for table `academicPrograms_changesinsubject`
--

DROP TABLE IF EXISTS `academicPrograms_changesinsubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicPrograms_changesinsubject` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `verification_file` varchar(100) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `academic_program_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `academicPrograms_cha_academic_program_id__a09ddf76_fk_academicP` (`academic_program_id_id`),
  CONSTRAINT `academicPrograms_cha_academic_program_id__a09ddf76_fk_academicP` FOREIGN KEY (`academic_program_id_id`) REFERENCES `academicPrograms_academicprogram` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicPrograms_changesinsubject`
--

LOCK TABLES `academicPrograms_changesinsubject` WRITE;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add identity document type',7,'add_identitydocumenttype'),(26,'Can change identity document type',7,'change_identitydocumenttype'),(27,'Can delete identity document type',7,'delete_identitydocumenttype'),(28,'Can view identity document type',7,'view_identitydocumenttype'),(29,'Can add role',8,'add_role'),(30,'Can change role',8,'change_role'),(31,'Can delete role',8,'delete_role'),(32,'Can view role',8,'view_role'),(33,'Can add user profile',9,'add_userprofile'),(34,'Can change user profile',9,'change_userprofile'),(35,'Can delete user profile',9,'delete_userprofile'),(36,'Can view user profile',9,'view_userprofile'),(37,'Can add academic program',10,'add_academicprogram'),(38,'Can change academic program',10,'change_academicprogram'),(39,'Can delete academic program',10,'delete_academicprogram'),(40,'Can view academic program',10,'view_academicprogram'),(41,'Can add changes in subject',11,'add_changesinsubject'),(42,'Can change changes in subject',11,'change_changesinsubject'),(43,'Can delete changes in subject',11,'delete_changesinsubject'),(44,'Can view changes in subject',11,'view_changesinsubject'),(45,'Can add academic program with subjects',12,'add_academicprogramwithsubjects'),(46,'Can change academic program with subjects',12,'change_academicprogramwithsubjects'),(47,'Can delete academic program with subjects',12,'delete_academicprogramwithsubjects'),(48,'Can view academic program with subjects',12,'view_academicprogramwithsubjects'),(49,'Can add extension course',13,'add_extensioncourse'),(50,'Can change extension course',13,'change_extensioncourse'),(51,'Can delete extension course',13,'delete_extensioncourse'),(52,'Can view extension course',13,'view_extensioncourse'),(53,'Can add grade group',14,'add_gradegroup'),(54,'Can change grade group',14,'change_gradegroup'),(55,'Can delete grade group',14,'delete_gradegroup'),(56,'Can view grade group',14,'view_gradegroup'),(57,'Can add subject',15,'add_subject'),(58,'Can change subject',15,'change_subject'),(59,'Can delete subject',15,'delete_subject'),(60,'Can view subject',15,'view_subject'),(61,'Can add subject with groups of grades',16,'add_subjectwithgroupsofgrades'),(62,'Can change subject with groups of grades',16,'change_subjectwithgroupsofgrades'),(63,'Can delete subject with groups of grades',16,'delete_subjectwithgroupsofgrades'),(64,'Can view subject with groups of grades',16,'view_subjectwithgroupsofgrades'),(65,'Can add grade',17,'add_grade'),(66,'Can change grade',17,'change_grade'),(67,'Can delete grade',17,'delete_grade'),(68,'Can view grade',17,'view_grade'),(69,'Can add class',18,'add_class'),(70,'Can change class',18,'change_class'),(71,'Can delete class',18,'delete_class'),(72,'Can view class',18,'view_class'),(73,'Can add group',19,'add_group'),(74,'Can change group',19,'change_group'),(75,'Can delete group',19,'delete_group'),(76,'Can view group',19,'view_group'),(77,'Can add users in group',20,'add_usersingroup'),(78,'Can change users in group',20,'change_usersingroup'),(79,'Can delete users in group',20,'delete_usersingroup'),(80,'Can view users in group',20,'view_usersingroup'),(81,'Can add classes in group',21,'add_classesingroup'),(82,'Can change classes in group',21,'change_classesingroup'),(83,'Can delete classes in group',21,'delete_classesingroup'),(84,'Can view classes in group',21,'view_classesingroup'),(85,'Can add blacklisted token',22,'add_blacklistedtoken'),(86,'Can change blacklisted token',22,'change_blacklistedtoken'),(87,'Can delete blacklisted token',22,'delete_blacklistedtoken'),(88,'Can view blacklisted token',22,'view_blacklistedtoken'),(89,'Can add outstanding token',23,'add_outstandingtoken'),(90,'Can change outstanding token',23,'change_outstandingtoken'),(91,'Can delete outstanding token',23,'delete_outstandingtoken'),(92,'Can view outstanding token',23,'view_outstandingtoken'),(93,'Can add group with groups of grades',24,'add_groupwithgroupsofgrades'),(94,'Can change group with groups of grades',24,'change_groupwithgroupsofgrades'),(95,'Can delete group with groups of grades',24,'delete_groupwithgroupsofgrades'),(96,'Can view group with groups of grades',24,'view_groupwithgroupsofgrades');
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$Oswnf9g2oAkiNSEqYuoHNy$LdSgQjVDFA09kEQsu4UDPvpIrvgqvV/X/fLdBJo4a6Q=','2023-11-28 04:12:33.025680',1,'miguellopez','','','miguel.lopez@utp.edu.co',1,1,'2023-11-09 16:19:54.738057'),(4,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'123456','','','test@example.com',0,1,'2023-11-26 03:07:20.772500'),(9,'pbkdf2_sha256$600000$Coj2yzcHKS1cmaenJuZjDE$jbnvufkqZFtZzrKNw6TRJ2vBSqauEogO2VhBjhazCrs=',NULL,0,'1004718953','','','miguel.lopez@utp.edu.co',0,1,'2023-11-26 22:36:21.820513'),(10,'pbkdf2_sha256$600000$qtkKTKquZRFsGHpSeJH5bQ$SlK1vYevf5VW6FboiTkSM9GrpoVjYuCGFnJKidxzY3E=',NULL,0,'102030','','','profesor@example.com',0,1,'2023-11-26 23:54:55.451998'),(11,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4==',NULL,0,'6575432179','','','elias.funk@example.org',0,1,'2023-11-05 11:49:04.000000'),(12,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4==',NULL,0,'31505193190','','','zhilpert@example.net',0,1,'2023-11-15 00:20:05.000000'),(13,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4==',NULL,0,'41824007975','','','towne.pat@example.net',0,1,'2023-11-17 12:27:13.000000'),(14,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4==',NULL,0,'29224828154','','','huel.idell@example.net',0,1,'2023-11-01 12:30:40.000000'),(15,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4==',NULL,0,'39680492705','','','nicolas.frederique@example.com',0,1,'2023-11-18 19:29:43.000000'),(16,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'97840573375','','','johnston.luigi@example.com',0,1,'2023-11-18 20:52:53.000000'),(17,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'45889966726','','','golden24@example.org',0,1,'2023-10-31 06:48:04.000000'),(18,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'44791044889','','','dpfeffer@example.net',0,1,'2023-11-02 18:08:53.000000'),(19,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'17870037324','','','abernathy.janis@example.net',0,1,'2023-10-30 00:00:48.000000'),(20,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'87629579838','','','furman56@example.org',0,1,'2023-11-22 12:02:49.000000'),(21,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'74258582750','','','benjamin.reichert@example.net',0,1,'2023-11-12 14:44:50.000000'),(22,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'33635539016','','','larson.gordon@example.org',0,1,'2023-10-30 05:32:31.000000'),(23,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'71998706274','','','arnoldo24@example.org',0,1,'2023-11-18 07:31:59.000000'),(24,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'26661905914','','','kellen.bayer@example.org',0,1,'2023-11-13 11:30:01.000000'),(25,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'58823127867','','','ncronin@example.net',0,1,'2023-11-21 05:20:23.000000'),(26,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'56353783128','','','abernathy.aileen@example.com',0,1,'2023-11-16 01:15:18.000000'),(27,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'44946689303','','','jennings39@example.com',0,1,'2023-11-27 07:59:53.000000'),(28,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'59978611450','','','abe33@example.com',0,1,'2023-11-22 21:31:59.000000'),(29,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'66290320271','','','oreilly.blanca@example.com',0,1,'2023-11-21 18:14:33.000000'),(30,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'84661787689','','','doris56@example.org',0,1,'2023-10-30 23:30:27.000000'),(31,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'12775146262','','','elenora.olson@example.org',0,1,'2023-11-20 02:16:07.000000'),(32,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'46706165407','','','ebony.borer@example.com',0,1,'2023-11-27 21:47:16.000000'),(33,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'58621891157','','','maggio.daron@example.net',0,1,'2023-11-07 02:26:50.000000'),(34,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'96070403474','','','cathryn.kuvalis@example.com',0,1,'2023-11-22 16:57:48.000000'),(35,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'53917083846','','','arden06@example.net',0,1,'2023-11-11 15:54:13.000000'),(36,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'63592124529','','','hackett.jadyn@example.org',0,1,'2023-11-09 13:43:29.000000'),(37,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'88739496317','','','wisozk.albina@example.com',0,1,'2023-11-17 10:31:16.000000'),(38,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'29325672364','','','adaline.shanahan@example.org',0,1,'2023-11-13 06:58:20.000000'),(39,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'73484703059','','','adriel10@example.com',0,1,'2023-11-01 02:54:38.000000'),(40,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'92743089526','','','wolff.devin@example.net',0,1,'2023-11-07 23:02:55.000000'),(41,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'90520865613','','','miller.osborne@example.net',0,1,'2023-11-07 12:40:45.000000'),(42,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'15003653290','','','white.juliet@example.net',0,1,'2023-11-24 06:59:15.000000'),(43,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'97257697040','','','kira.conn@example.org',0,1,'2023-11-08 20:33:32.000000'),(44,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'80389086879','','','sanford.jailyn@example.net',0,1,'2023-11-19 07:00:21.000000'),(45,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'3081105472','','','kiehn.baylee@example.org',0,1,'2023-11-02 03:04:38.000000'),(46,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'87102658453','','','rhoda68@example.net',0,1,'2023-11-15 22:16:00.000000'),(47,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'17688797647','','','hintz.loyal@example.net',0,1,'2023-11-20 05:44:18.000000'),(48,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'20924234011','','','jacobs.harmony@example.org',0,1,'2023-10-29 06:05:30.000000'),(49,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'8225204723','','','zritchie@example.net',0,1,'2023-11-02 23:25:55.000000'),(50,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'16342325848','','','nlindgren@example.org',0,1,'2023-11-19 11:17:33.000000'),(51,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'31311314288','','','rylee71@example.org',0,1,'2023-11-15 15:33:06.000000'),(52,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'10678819868','','','dsteuber@example.com',0,1,'2023-11-17 07:54:31.000000'),(53,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'64680120406','','','zankunding@example.org',0,1,'2023-11-14 19:58:18.000000'),(54,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'96845623604','','','stehr.beaulah@example.net',0,1,'2023-11-23 07:21:24.000000'),(55,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'61380331077','','','webert@example.org',0,1,'2023-10-29 20:00:01.000000'),(56,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'90154108938','','','aryanna.von@example.com',0,1,'2023-11-23 08:52:01.000000'),(57,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'17909096667','','','arlo39@example.org',0,1,'2023-11-09 20:13:54.000000'),(58,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'27491212576','','','tpredovic@example.net',0,1,'2023-11-27 17:07:32.000000'),(59,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'78261598906','','','mrunte@example.com',0,1,'2023-11-25 19:19:34.000000'),(60,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'96032211671','','','olabadie@example.com',0,1,'2023-11-26 23:02:18.000000'),(61,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'60981241165','','','melba.reynolds@example.com',0,1,'2023-10-31 02:37:33.000000'),(62,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'11453559322','','','benjamin.emmerich@example.com',0,1,'2023-11-04 08:15:33.000000'),(63,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'450252907','','','hermiston.stanley@example.net',0,1,'2023-11-14 10:13:00.000000'),(64,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'17746391045','','','nickolas69@example.net',0,1,'2023-11-08 00:02:36.000000'),(65,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'19823537340','','','billie75@example.org',0,1,'2023-10-30 15:23:51.000000'),(66,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'70916406937','','','stark.dovie@example.org',0,1,'2023-11-22 17:25:21.000000'),(67,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'61938515296','','','vlangosh@example.net',0,1,'2023-11-05 17:21:17.000000'),(68,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'63440694871','','','nkautzer@example.org',0,1,'2023-11-19 03:45:26.000000'),(69,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'13952229025','','','briana.simonis@example.net',0,1,'2023-11-27 11:45:23.000000'),(70,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'84571600311','','','green75@example.org',0,1,'2023-11-06 01:12:14.000000'),(71,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'50923902863','','','kovacek.eliseo@example.org',0,1,'2023-11-13 12:40:18.000000'),(72,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'66632913078','','','zita58@example.com',0,1,'2023-11-17 16:59:44.000000'),(73,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'90443843300','','','arvilla89@example.com',0,1,'2023-11-19 14:49:28.000000'),(74,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'87707259269','','','dlang@example.com',0,1,'2023-11-20 07:37:42.000000'),(75,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'1320793009','','','morris77@example.net',0,1,'2023-11-07 14:06:55.000000'),(76,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'79187768929','','','nellie82@example.net',0,1,'2023-11-07 14:04:48.000000'),(77,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'5619679126','','','glenda.marquardt@example.net',0,1,'2023-11-16 21:50:49.000000'),(78,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'46615080913','','','kulas.eva@example.org',0,1,'2023-11-09 08:13:25.000000'),(79,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'77483170516','','','clementine.lindgren@example.org',0,1,'2023-11-01 19:18:22.000000'),(80,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'18504016322','','','fay.maegan@example.net',0,1,'2023-11-11 08:22:50.000000'),(81,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'52517631015','','','herta.pollich@example.net',0,1,'2023-11-14 01:30:03.000000'),(82,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'44024168828','','','xtromp@example.com',0,1,'2023-11-06 13:26:48.000000'),(83,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'95173192313','','','cassin.ana@example.net',0,1,'2023-11-06 23:04:16.000000'),(84,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'69231464266','','','xbaumbach@example.org',0,1,'2023-11-05 23:40:19.000000'),(85,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'89484372499','','','kmitchell@example.org',0,1,'2023-11-19 06:22:12.000000'),(86,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'98654563880','','','sokon@example.org',0,1,'2023-11-13 19:40:05.000000'),(87,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'13328207524','','','oleffler@example.com',0,1,'2023-11-08 07:09:38.000000'),(88,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'69638277768','','','delpha02@example.net',0,1,'2023-11-16 01:00:19.000000'),(89,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'34487591310','','','carolyn78@example.net',0,1,'2023-11-01 03:35:56.000000'),(90,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'27530911932','','','veum.wilfrid@example.net',0,1,'2023-11-13 16:11:52.000000'),(91,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'55610763278','','','johnathan.towne@example.org',0,1,'2023-11-06 23:27:36.000000'),(92,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'53477417675','','','toni81@example.net',0,1,'2023-11-23 17:35:27.000000'),(93,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'79303234041','','','brunolfsdottir@example.com',0,1,'2023-11-23 10:29:36.000000'),(94,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'55081763358','','','ubaldo19@example.net',0,1,'2023-11-12 04:46:46.000000'),(95,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'89845599225','','','brekke.henri@example.org',0,1,'2023-11-06 13:28:29.000000'),(96,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'6077555016','','','kavon33@example.org',0,1,'2023-11-12 00:58:36.000000'),(97,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'78458120573','','','heaney.erin@example.org',0,1,'2023-11-23 08:50:53.000000'),(98,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'71076688007','','','leo.legros@example.net',0,1,'2023-10-28 08:06:17.000000'),(99,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'19014832119','','','boyer.carrie@example.com',0,1,'2023-11-19 15:28:46.000000'),(100,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'57200119825','','','corwin.gregoria@example.net',0,1,'2023-11-17 18:35:36.000000'),(101,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'1605336404','','','hschaden@example.com',0,1,'2023-11-10 03:01:53.000000'),(102,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'80972108997','','','margarita73@example.com',0,1,'2023-11-22 10:31:32.000000'),(103,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'19383072532','','','heaney.audreanne@example.net',0,1,'2023-11-11 11:07:34.000000'),(104,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'18900357458','','','vdare@example.com',0,1,'2023-11-24 17:21:31.000000'),(105,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'3647671889','','','zschumm@example.net',0,1,'2023-11-17 22:20:39.000000'),(106,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'57469336332','','','goodwin.kamren@example.org',0,1,'2023-11-12 17:41:00.000000'),(107,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'73608526628','','','romaguera.german@example.org',0,1,'2023-11-19 09:20:43.000000'),(108,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'67515045434','','','morissette.chadrick@example.net',0,1,'2023-10-31 09:47:27.000000'),(109,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'87652704191','','','altenwerth.marianne@example.net',0,1,'2023-11-10 19:38:08.000000'),(110,'pbkdf2_sha256$600000$riNuwcXFRnwQ4hGGuDiHbA$RYQv173mRcTgAZ1qMmYZsj0sLFddT1JxIkQhrY+Maz4=',NULL,0,'65011244810','','','nyasia80@example.net',0,1,'2023-11-17 10:12:24.000000');
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-26 00:52:57.159383','1','1-CEDULA',1,'[{\"added\": {}}]',7,1),(2,'2023-11-26 00:53:04.384483','2','2-TARJETA_IDENTIDAD',1,'[{\"added\": {}}]',7,1),(3,'2023-11-26 00:53:13.109593','3','3-CEDULA_EXTRANJERIA',1,'[{\"added\": {}}]',7,1),(4,'2023-11-26 00:53:18.719718','4','4-PASAPORTE',1,'[{\"added\": {}}]',7,1),(5,'2023-11-26 00:53:53.012331','1','1-ESTUDIANTE',1,'[{\"added\": {}}]',8,1),(6,'2023-11-26 00:53:57.880613','2','2-DOCENTE',1,'[{\"added\": {}}]',8,1),(7,'2023-11-26 00:54:02.292384','3','3-SUPERADMINISTRADOR',1,'[{\"added\": {}}]',8,1),(8,'2023-11-26 00:54:06.674164','4','4-ADMINISTRADOR',1,'[{\"added\": {}}]',8,1),(9,'2023-11-26 01:00:10.623801','1','1-Academic program test-1-<class \'django.db.models.fields.IntegerField\'>',1,'[{\"added\": {}}]',10,1),(10,'2023-11-30 04:34:48.191550','1','ClassesInGroup object (1)',1,'[{\"added\": {}}]',21,1),(11,'2023-11-30 04:35:00.450398','2','ClassesInGroup object (2)',1,'[{\"added\": {}}]',21,1),(12,'2023-11-30 04:35:24.680663','3','ClassesInGroup object (3)',1,'[{\"added\": {}}]',21,1),(13,'2023-11-30 04:35:43.733344','4','ClassesInGroup object (4)',1,'[{\"added\": {}}]',21,1),(14,'2023-11-30 04:36:06.596410','5','ClassesInGroup object (5)',1,'[{\"added\": {}}]',21,1),(15,'2023-11-30 04:36:23.877828','6','ClassesInGroup object (6)',1,'[{\"added\": {}}]',21,1),(16,'2023-11-30 04:36:46.391547','7','ClassesInGroup object (7)',1,'[{\"added\": {}}]',21,1),(17,'2023-11-30 04:37:00.713686','8','ClassesInGroup object (8)',1,'[{\"added\": {}}]',21,1),(18,'2023-11-30 04:37:13.120085','9','ClassesInGroup object (9)',1,'[{\"added\": {}}]',21,1),(19,'2023-11-30 04:37:28.015574','10','ClassesInGroup object (10)',1,'[{\"added\": {}}]',21,1),(20,'2023-11-30 04:37:44.093563','11','ClassesInGroup object (11)',1,'[{\"added\": {}}]',21,1),(21,'2023-11-30 04:38:01.606399','12','ClassesInGroup object (12)',1,'[{\"added\": {}}]',21,1),(22,'2023-11-30 04:38:15.670668','13','ClassesInGroup object (13)',1,'[{\"added\": {}}]',21,1),(23,'2023-11-30 04:38:47.732626','14','ClassesInGroup object (14)',1,'[{\"added\": {}}]',21,1),(24,'2023-11-30 04:39:10.456851','15','ClassesInGroup object (15)',1,'[{\"added\": {}}]',21,1),(25,'2023-11-30 04:39:24.190102','16','ClassesInGroup object (16)',1,'[{\"added\": {}}]',21,1),(26,'2023-11-30 04:39:37.312200','17','ClassesInGroup object (17)',1,'[{\"added\": {}}]',21,1),(27,'2023-11-30 04:39:53.632701','18','ClassesInGroup object (18)',1,'[{\"added\": {}}]',21,1),(28,'2023-11-30 04:40:11.557618','19','ClassesInGroup object (19)',1,'[{\"added\": {}}]',21,1),(29,'2023-11-30 04:40:24.838615','20','ClassesInGroup object (20)',1,'[{\"added\": {}}]',21,1),(30,'2023-11-30 04:40:37.821082','21','ClassesInGroup object (21)',1,'[{\"added\": {}}]',21,1),(31,'2023-11-30 04:40:53.329841','22','ClassesInGroup object (22)',1,'[{\"added\": {}}]',21,1),(32,'2023-11-30 04:41:13.194052','23','ClassesInGroup object (23)',1,'[{\"added\": {}}]',21,1),(33,'2023-11-30 04:41:26.734220','24','ClassesInGroup object (24)',1,'[{\"added\": {}}]',21,1),(34,'2023-11-30 04:41:37.980867','25','ClassesInGroup object (25)',1,'[{\"added\": {}}]',21,1),(35,'2023-11-30 04:42:05.137252','26','ClassesInGroup object (26)',1,'[{\"added\": {}}]',21,1),(36,'2023-11-30 04:42:17.589946','27','ClassesInGroup object (27)',1,'[{\"added\": {}}]',21,1),(37,'2023-11-30 04:42:33.416261','28','ClassesInGroup object (28)',1,'[{\"added\": {}}]',21,1),(38,'2023-11-30 04:42:46.713226','29','ClassesInGroup object (29)',1,'[{\"added\": {}}]',21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
INSERT INTO `django_content_type` VALUES (10,'academicPrograms','academicprogram'),(12,'academicPrograms','academicprogramwithsubjects'),(11,'academicPrograms','changesinsubject'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'groups','class'),(21,'groups','classesingroup'),(19,'groups','group'),(20,'groups','usersingroup'),(6,'sessions','session'),(13,'subjects','extensioncourse'),(17,'subjects','grade'),(14,'subjects','gradegroup'),(24,'subjects','groupwithgroupsofgrades'),(15,'subjects','subject'),(16,'subjects','subjectwithgroupsofgrades'),(22,'token_blacklist','blacklistedtoken'),(23,'token_blacklist','outstandingtoken'),(7,'users','identitydocumenttype'),(8,'users','role'),(9,'users','userprofile');
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
INSERT INTO `django_migrations` VALUES (1,'academicPrograms','0001_initial','2023-11-06 02:09:15.009693'),(2,'contenttypes','0001_initial','2023-11-06 02:09:15.055384'),(3,'auth','0001_initial','2023-11-06 02:09:15.390035'),(4,'admin','0001_initial','2023-11-06 02:09:15.491655'),(5,'admin','0002_logentry_remove_auto_add','2023-11-06 02:09:15.503530'),(6,'admin','0003_logentry_add_action_flag_choices','2023-11-06 02:09:15.517547'),(7,'contenttypes','0002_remove_content_type_name','2023-11-06 02:09:15.600758'),(8,'auth','0002_alter_permission_name_max_length','2023-11-06 02:09:15.650115'),(9,'auth','0003_alter_user_email_max_length','2023-11-06 02:09:15.683126'),(10,'auth','0004_alter_user_username_opts','2023-11-06 02:09:15.697845'),(11,'auth','0005_alter_user_last_login_null','2023-11-06 02:09:15.740345'),(12,'auth','0006_require_contenttypes_0002','2023-11-06 02:09:15.746630'),(13,'auth','0007_alter_validators_add_error_messages','2023-11-06 02:09:15.756132'),(14,'auth','0008_alter_user_username_max_length','2023-11-06 02:09:15.814053'),(15,'auth','0009_alter_user_last_name_max_length','2023-11-06 02:09:15.887526'),(16,'auth','0010_alter_group_name_max_length','2023-11-06 02:09:15.916130'),(17,'auth','0011_update_proxy_permissions','2023-11-06 02:09:15.986548'),(18,'auth','0012_alter_user_first_name_max_length','2023-11-06 02:09:16.045257'),(19,'users','0001_initial','2023-11-06 02:09:16.182367'),(20,'subjects','0001_initial','2023-11-06 02:09:16.426155'),(21,'groups','0001_initial','2023-11-06 02:09:16.709450'),(22,'sessions','0001_initial','2023-11-06 02:09:16.734820'),(23,'token_blacklist','0001_initial','2023-11-25 22:36:09.979445'),(24,'token_blacklist','0002_outstandingtoken_jti_hex','2023-11-25 22:36:10.023724'),(25,'token_blacklist','0003_auto_20171017_2007','2023-11-25 22:36:10.069877'),(26,'token_blacklist','0004_auto_20171017_2013','2023-11-25 22:36:10.130687'),(27,'token_blacklist','0005_remove_outstandingtoken_jti','2023-11-25 22:36:10.170862'),(28,'token_blacklist','0006_auto_20171017_2113','2023-11-25 22:36:10.203306'),(29,'token_blacklist','0007_auto_20171017_2214','2023-11-25 22:36:10.363664'),(30,'token_blacklist','0008_migrate_to_bigautofield','2023-11-25 22:36:10.510405'),(31,'token_blacklist','0010_fix_migrate_to_bigautofield','2023-11-25 22:36:10.551779'),(32,'token_blacklist','0011_linearizes_history','2023-11-25 22:36:10.555482'),(33,'token_blacklist','0012_alter_outstandingtoken_user','2023-11-25 22:36:10.644311'),(34,'users','0002_alter_userprofile_career_average_and_more','2023-11-26 00:40:08.411239'),(35,'users','0003_alter_userprofile_created','2023-11-26 02:07:24.112995'),(36,'users','0004_alter_userprofile_identification_number','2023-11-26 06:41:46.845199'),(37,'users','0005_rename_phone_number_userprofile_personal_phone_number_and_more','2023-11-26 21:36:02.819180'),(38,'subjects','0002_groupwithgroupsofgrades_and_more','2023-11-28 01:58:23.194696'),(39,'subjects','0003_remove_gradegroup_subject_id_and_more','2023-11-28 02:32:49.067717'),(40,'academicPrograms','0002_academicprogramwithsubjects_subject_id','2023-11-28 02:32:49.130621'),(41,'users','0006_userprofile_academic_program_id','2023-11-28 02:32:49.221711'),(42,'groups','0002_class_day_alter_class_end_time_and_more','2023-11-28 17:57:56.171251'),(43,'subjects','0004_alter_subject_code','2023-11-28 17:57:56.213094'),(44,'subjects','0005_remove_gradegroup_grade_group_score_and_more','2023-12-01 22:52:47.114546'),(45,'subjects','0006_alter_gradegroup_created','2023-12-01 23:21:13.620809'),(46,'subjects','0007_alter_gradegroup_name','2023-12-01 23:22:32.323054');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
INSERT INTO `django_session` VALUES ('ogvjz06xzec3z26uihimrjmndyakp52g','.eJxVjEEOwiAQRe_C2hCgCI5L956BzDBTqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWVh1-N8L8kLoBvmO9NZ1bXeaJ9KbonXZ9bSzPy-7-HRTs5VsLxxA8G4qERjxmA5B5tBYlkwWLA3lyQwynmJnQRedBhpGM4QhHAfX-AAXXOIc:1r17lM:qVGRdjfpyTE4D-amfyVG5TfB81J2vVm_SYhFK-uS3Gc','2023-11-23 16:20:12.499500'),('unnwcpjj790rh4197yg4p2nuxfekrz9z','.eJxVjEEOwiAQRe_C2hCgCI5L956BzDBTqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWVh1-N8L8kLoBvmO9NZ1bXeaJ9KbonXZ9bSzPy-7-HRTs5VsLxxA8G4qERjxmA5B5tBYlkwWLA3lyQwynmJnQRedBhpGM4QhHAfX-AAXXOIc:1r73IO:AMBHhzm30Gv0fzHxHe5wmvTswiSkSin-pwzs-yqdioo','2023-12-10 00:46:48.231023'),('wibopellrfaqnn8gfid80d50c1jyo9jx','.eJxVjEEOwiAQRe_C2hCgCI5L956BzDBTqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWVh1-N8L8kLoBvmO9NZ1bXeaJ9KbonXZ9bSzPy-7-HRTs5VsLxxA8G4qERjxmA5B5tBYlkwWLA3lyQwynmJnQRedBhpGM4QhHAfX-AAXXOIc:1r7pSb:TW8FhOjRTcRB57ec63MHLgrg1ur9-Af7Oog9qyXxgW4','2023-12-12 04:12:33.029170');
UNLOCK TABLES;

--
-- Table structure for table `groups_class`
--

DROP TABLE IF EXISTS `groups_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_class` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_time` varchar(8) NOT NULL,
  `end_time` varchar(8) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `day` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_class`
--

LOCK TABLES `groups_class` WRITE;
INSERT INTO `groups_class` VALUES ('2023-11-28 13:40:38.000000',1,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',2,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',3,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',4,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',5,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',6,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',7,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','LUNES'),('2023-11-28 13:40:38.000000',8,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',9,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',10,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',11,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',12,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',13,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',14,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','MARTES'),('2023-11-28 13:40:38.000000',15,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',16,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',17,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',18,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',19,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',20,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',21,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','MIERCOLES'),('2023-11-28 13:40:38.000000',22,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',23,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',24,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',25,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',26,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',27,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',28,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','JUEVES'),('2023-11-28 13:40:38.000000',29,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',30,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',31,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',32,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',33,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',34,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',35,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','VIERNES'),('2023-11-28 13:40:38.000000',36,'7:00 AM','9:00 AM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',37,'9:00 AM','11:00 AM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',38,'11:00 AM','1:00 PM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',39,'2:00 PM','4:00 PM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',40,'4:00 PM','6:00 PM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',41,'6:00 PM','8:00 PM','2023-11-28 13:40:38.000000','SABADO'),('2023-11-28 13:40:38.000000',42,'8:00 PM','10:00 PM','2023-11-28 13:40:38.000000','SABADO');
UNLOCK TABLES;

--
-- Table structure for table `groups_classesingroup`
--

DROP TABLE IF EXISTS `groups_classesingroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_classesingroup` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  `class_id_id` bigint NOT NULL,
  `group_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_classesingroup_class_id_id_4ddd99d7_fk_groups_class_id` (`class_id_id`),
  KEY `groups_classesingroup_group_id_id_b9657d04_fk_groups_group_id` (`group_id_id`),
  CONSTRAINT `groups_classesingroup_class_id_id_4ddd99d7_fk_groups_class_id` FOREIGN KEY (`class_id_id`) REFERENCES `groups_class` (`id`),
  CONSTRAINT `groups_classesingroup_group_id_id_b9657d04_fk_groups_group_id` FOREIGN KEY (`group_id_id`) REFERENCES `groups_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_classesingroup`
--

LOCK TABLES `groups_classesingroup` WRITE;
INSERT INTO `groups_classesingroup` VALUES ('2023-11-30 04:34:30.000000',1,'2023-11-30 04:34:48.189253',3,1),('2023-11-30 04:34:50.000000',2,'2023-11-30 04:35:00.448063',4,1),('2023-11-30 04:35:02.000000',3,'2023-11-30 04:35:24.679073',34,1),('2023-11-30 04:35:26.000000',4,'2023-11-30 04:35:43.731680',30,1),('2023-11-30 04:35:54.000000',5,'2023-11-30 04:36:06.595427',15,3),('2023-11-30 04:36:08.000000',6,'2023-11-30 04:36:23.876134',22,3),('2023-11-30 04:36:35.000000',7,'2023-11-30 04:36:46.389615',37,3),('2023-11-30 04:36:56.000000',8,'2023-11-30 04:37:00.711819',2,5),('2023-11-30 04:37:02.000000',9,'2023-11-30 04:37:13.119047',8,5),('2023-11-30 04:37:21.000000',10,'2023-11-30 04:37:28.014229',25,5),('2023-11-30 04:37:32.000000',11,'2023-11-30 04:37:44.091902',41,5),('2023-11-30 04:37:51.000000',12,'2023-11-30 04:38:01.605284',10,7),('2023-11-30 04:38:05.000000',13,'2023-11-30 04:38:15.669291',23,7),('2023-11-30 04:38:39.000000',14,'2023-11-30 04:38:47.730996',32,7),('2023-11-30 04:38:55.000000',15,'2023-11-30 04:39:10.454964',16,19),('2023-11-30 04:39:13.000000',16,'2023-11-30 04:39:24.188717',35,19),('2023-11-30 04:39:29.000000',17,'2023-11-30 04:39:37.311042',38,19),('2023-11-30 04:39:45.000000',18,'2023-11-30 04:39:53.631705',28,21),('2023-11-30 04:40:03.000000',19,'2023-11-30 04:40:11.556293',42,21),('2023-11-30 04:40:13.000000',20,'2023-11-30 04:40:24.836495',40,21),('2023-11-30 04:40:31.000000',21,'2023-11-30 04:40:37.819687',5,57),('2023-11-30 04:40:42.000000',22,'2023-11-30 04:40:53.328722',14,57),('2023-11-30 04:41:00.000000',23,'2023-11-30 04:41:13.192839',12,58),('2023-11-30 04:41:20.000000',24,'2023-11-30 04:41:26.732885',20,58),('2023-11-30 04:41:37.000000',25,'2023-11-30 04:41:37.979389',31,58),('2023-11-30 04:42:03.000000',26,'2023-11-30 04:42:05.135686',18,59),('2023-11-30 04:42:11.000000',27,'2023-11-30 04:42:17.588388',9,60),('2023-11-30 04:42:23.000000',28,'2023-11-30 04:42:33.415031',19,60),('2023-11-30 04:42:35.000000',29,'2023-11-30 04:42:46.712012',24,60),('2023-11-30 00:29:31.000000',30,'2023-11-30 00:29:31.000000',20,31),('2023-11-30 00:29:31.000000',31,'2023-11-30 00:29:31.000000',33,31),('2023-11-30 00:29:31.000000',32,'2023-11-30 00:29:31.000000',31,31),('2023-11-30 00:29:31.000000',33,'2023-11-30 00:29:31.000000',42,31),('2023-11-30 00:29:31.000000',34,'2023-11-30 00:29:31.000000',7,33),('2023-11-30 00:29:31.000000',35,'2023-11-30 00:29:31.000000',27,33),('2023-11-30 00:29:31.000000',36,'2023-11-30 00:29:31.000000',40,33),('2023-11-30 00:29:31.000000',37,'2023-11-30 00:29:31.000000',11,35),('2023-11-30 00:29:31.000000',38,'2023-11-30 00:29:31.000000',19,35),('2023-11-30 00:29:31.000000',39,'2023-11-30 00:29:31.000000',24,35),('2023-11-30 00:29:31.000000',40,'2023-11-30 00:29:31.000000',39,35),('2023-11-30 00:29:31.000000',41,'2023-11-30 00:29:31.000000',5,37),('2023-11-30 00:29:31.000000',42,'2023-11-30 00:29:31.000000',9,37),('2023-11-30 00:29:31.000000',43,'2023-11-30 00:29:31.000000',29,37),('2023-11-30 00:29:31.000000',44,'2023-11-30 00:29:31.000000',1,49),('2023-11-30 00:29:31.000000',45,'2023-11-30 00:29:31.000000',17,49),('2023-11-30 00:29:31.000000',46,'2023-11-30 00:29:31.000000',28,49);
UNLOCK TABLES;

--
-- Table structure for table `groups_group`
--

DROP TABLE IF EXISTS `groups_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_group` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `max_num_persons` int NOT NULL,
  `updated` datetime(6) NOT NULL,
  `extension_course_id_id` bigint DEFAULT NULL,
  `subject_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_group_extension_course_id__8312ea9f_fk_subjects_` (`extension_course_id_id`),
  KEY `groups_group_subject_id_id_8c8c3e79_fk_subjects_subject_id` (`subject_id_id`),
  CONSTRAINT `groups_group_extension_course_id__8312ea9f_fk_subjects_` FOREIGN KEY (`extension_course_id_id`) REFERENCES `subjects_extensioncourse` (`id`),
  CONSTRAINT `groups_group_subject_id_id_8c8c3e79_fk_subjects_subject_id` FOREIGN KEY (`subject_id_id`) REFERENCES `subjects_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_group`
--

LOCK TABLES `groups_group` WRITE;
INSERT INTO `groups_group` VALUES ('2023-11-28 17:00:06.000000',1,20,'2023-11-28 17:00:06.000000',NULL,1),('2023-11-28 17:00:06.000000',2,20,'2023-11-28 17:00:06.000000',NULL,2),('2023-11-28 17:00:06.000000',3,20,'2023-11-28 17:00:06.000000',NULL,3),('2023-11-28 17:00:06.000000',4,20,'2023-11-28 17:00:06.000000',NULL,4),('2023-11-28 17:00:06.000000',5,20,'2023-11-28 17:00:06.000000',NULL,5),('2023-11-28 17:00:06.000000',6,20,'2023-11-28 17:00:06.000000',NULL,6),('2023-11-28 17:00:06.000000',7,20,'2023-11-28 17:00:06.000000',NULL,7),('2023-11-28 17:00:06.000000',8,20,'2023-11-28 17:00:06.000000',NULL,8),('2023-11-28 17:00:06.000000',9,20,'2023-11-28 17:00:06.000000',NULL,9),('2023-11-28 17:00:06.000000',10,20,'2023-11-28 17:00:06.000000',NULL,10),('2023-11-28 17:00:06.000000',11,20,'2023-11-28 17:00:06.000000',NULL,11),('2023-11-28 17:00:06.000000',12,20,'2023-11-28 17:00:06.000000',NULL,12),('2023-11-28 17:00:06.000000',13,20,'2023-11-28 17:00:06.000000',NULL,13),('2023-11-28 17:00:06.000000',14,20,'2023-11-28 17:00:06.000000',NULL,14),('2023-11-28 17:00:06.000000',15,20,'2023-11-28 17:00:06.000000',NULL,15),('2023-11-28 17:00:06.000000',16,20,'2023-11-28 17:00:06.000000',NULL,16),('2023-11-28 17:00:06.000000',17,20,'2023-11-28 17:00:06.000000',NULL,17),('2023-11-28 17:00:06.000000',18,20,'2023-11-28 17:00:06.000000',NULL,18),('2023-11-28 17:00:06.000000',19,20,'2023-11-28 17:00:06.000000',NULL,19),('2023-11-28 17:00:06.000000',20,20,'2023-11-28 17:00:06.000000',NULL,20),('2023-11-28 17:00:06.000000',21,20,'2023-11-28 17:00:06.000000',NULL,21),('2023-11-28 17:00:06.000000',22,20,'2023-11-28 17:00:06.000000',NULL,22),('2023-11-28 17:00:06.000000',23,20,'2023-11-28 17:00:06.000000',NULL,23),('2023-11-28 17:00:06.000000',24,20,'2023-11-28 17:00:06.000000',NULL,24),('2023-11-28 17:00:06.000000',25,20,'2023-11-28 17:00:06.000000',NULL,25),('2023-11-28 17:00:06.000000',26,20,'2023-11-28 17:00:06.000000',NULL,26),('2023-11-28 17:00:06.000000',27,20,'2023-11-28 17:00:06.000000',NULL,27),('2023-11-28 17:00:06.000000',28,20,'2023-11-28 17:00:06.000000',NULL,28),('2023-11-28 17:00:06.000000',29,20,'2023-11-28 17:00:06.000000',NULL,29),('2023-11-28 17:00:06.000000',30,20,'2023-11-28 17:00:06.000000',NULL,30),('2023-11-28 17:00:06.000000',31,20,'2023-11-28 17:00:06.000000',NULL,1),('2023-11-28 17:00:06.000000',32,20,'2023-11-28 17:00:06.000000',NULL,2),('2023-11-28 17:00:06.000000',33,20,'2023-11-28 17:00:06.000000',NULL,3),('2023-11-28 17:00:06.000000',34,20,'2023-11-28 17:00:06.000000',NULL,4),('2023-11-28 17:00:06.000000',35,20,'2023-11-28 17:00:06.000000',NULL,5),('2023-11-28 17:00:06.000000',36,20,'2023-11-28 17:00:06.000000',NULL,6),('2023-11-28 17:00:06.000000',37,20,'2023-11-28 17:00:06.000000',NULL,7),('2023-11-28 17:00:06.000000',38,20,'2023-11-28 17:00:06.000000',NULL,8),('2023-11-28 17:00:06.000000',39,20,'2023-11-28 17:00:06.000000',NULL,9),('2023-11-28 17:00:06.000000',40,20,'2023-11-28 17:00:06.000000',NULL,10),('2023-11-28 17:00:06.000000',41,20,'2023-11-28 17:00:06.000000',NULL,11),('2023-11-28 17:00:06.000000',42,20,'2023-11-28 17:00:06.000000',NULL,12),('2023-11-28 17:00:06.000000',43,20,'2023-11-28 17:00:06.000000',NULL,13),('2023-11-28 17:00:06.000000',44,20,'2023-11-28 17:00:06.000000',NULL,14),('2023-11-28 17:00:06.000000',45,20,'2023-11-28 17:00:06.000000',NULL,15),('2023-11-28 17:00:06.000000',46,20,'2023-11-28 17:00:06.000000',NULL,16),('2023-11-28 17:00:06.000000',47,20,'2023-11-28 17:00:06.000000',NULL,17),('2023-11-28 17:00:06.000000',48,20,'2023-11-28 17:00:06.000000',NULL,18),('2023-11-28 17:00:06.000000',49,20,'2023-11-28 17:00:06.000000',NULL,19),('2023-11-28 17:00:06.000000',50,20,'2023-11-28 17:00:06.000000',NULL,20),('2023-11-28 17:00:06.000000',51,20,'2023-11-28 17:00:06.000000',NULL,21),('2023-11-28 17:00:06.000000',52,20,'2023-11-28 17:00:06.000000',NULL,22),('2023-11-28 17:00:06.000000',53,20,'2023-11-28 17:00:06.000000',NULL,23),('2023-11-28 17:00:06.000000',54,20,'2023-11-28 17:00:06.000000',NULL,24),('2023-11-28 17:00:06.000000',55,20,'2023-11-28 17:00:06.000000',NULL,25),('2023-11-28 17:00:06.000000',56,20,'2023-11-28 17:00:06.000000',NULL,26),('2023-11-28 17:00:06.000000',57,20,'2023-11-28 17:00:06.000000',NULL,27),('2023-11-28 17:00:06.000000',58,20,'2023-11-28 17:00:06.000000',NULL,28),('2023-11-28 17:00:06.000000',59,20,'2023-11-28 17:00:06.000000',NULL,29),('2023-11-28 17:00:06.000000',60,20,'2023-11-28 17:00:06.000000',NULL,30);
UNLOCK TABLES;

--
-- Table structure for table `groups_usersingroup`
--

DROP TABLE IF EXISTS `groups_usersingroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_usersingroup` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  `group_id_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_usersingroup_group_id_id_ce3a0340_fk_groups_group_id` (`group_id_id`),
  KEY `groups_usersingroup_user_id_id_ed85fd53_fk_users_userprofile_id` (`user_id_id`),
  CONSTRAINT `groups_usersingroup_group_id_id_ce3a0340_fk_groups_group_id` FOREIGN KEY (`group_id_id`) REFERENCES `groups_group` (`id`),
  CONSTRAINT `groups_usersingroup_user_id_id_ed85fd53_fk_users_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_usersingroup`
--

LOCK TABLES `groups_usersingroup` WRITE;
INSERT INTO `groups_usersingroup` VALUES ('2023-11-28 18:03:29.000000',1,'2023-11-28 18:03:34.000000',1,21),('2023-11-28 18:03:30.000000',2,'2023-11-28 18:03:37.000000',1,22),('2023-11-28 18:03:31.000000',3,'2023-11-28 18:03:39.000000',1,23),('2023-11-28 18:03:32.000000',4,'2023-11-28 18:03:40.000000',1,24),('2023-11-28 18:28:56.000000',5,'2023-11-28 18:29:00.000000',31,25),('2023-11-28 18:28:58.000000',6,'2023-11-28 18:29:00.000000',31,26),('2023-11-28 18:29:06.000000',7,'2023-11-28 18:29:01.000000',31,27),('2023-11-28 18:29:05.000000',8,'2023-11-28 18:29:03.000000',31,28),('2023-11-28 18:29:18.000000',9,'2023-11-28 18:29:24.000000',3,31),('2023-11-28 18:29:18.000000',10,'2023-11-28 18:29:24.000000',3,32),('2023-11-28 18:29:18.000000',11,'2023-11-28 18:29:24.000000',3,33),('2023-11-28 18:29:18.000000',12,'2023-11-28 18:29:24.000000',3,34),('2023-11-28 18:29:18.000000',13,'2023-11-28 18:29:24.000000',33,35),('2023-11-28 18:29:18.000000',14,'2023-11-28 18:29:24.000000',33,36),('2023-11-28 18:29:18.000000',15,'2023-11-28 18:29:24.000000',33,37),('2023-11-28 18:29:18.000000',16,'2023-11-28 18:29:24.000000',33,38),('2023-11-28 18:30:21.000000',17,'2023-11-28 18:30:30.000000',5,41),('2023-11-28 18:30:21.000000',18,'2023-11-28 18:30:30.000000',5,42),('2023-11-28 18:30:21.000000',19,'2023-11-28 18:30:30.000000',5,43),('2023-11-28 18:30:21.000000',20,'2023-11-28 18:30:30.000000',5,44),('2023-11-28 18:30:21.000000',21,'2023-11-28 18:30:30.000000',35,45),('2023-11-28 18:30:21.000000',22,'2023-11-28 18:30:30.000000',35,46),('2023-11-28 18:30:21.000000',23,'2023-11-28 18:30:30.000000',35,47),('2023-11-28 18:30:21.000000',24,'2023-11-28 18:30:30.000000',35,48),('2023-11-28 18:31:20.000000',32,'2023-11-28 18:31:26.000000',7,51),('2023-11-28 18:31:20.000000',33,'2023-11-28 18:31:26.000000',7,52),('2023-11-28 18:31:20.000000',34,'2023-11-28 18:31:26.000000',7,53),('2023-11-28 18:31:20.000000',35,'2023-11-28 18:31:26.000000',7,54),('2023-11-28 18:31:20.000000',36,'2023-11-28 18:31:26.000000',37,55),('2023-11-28 18:31:20.000000',37,'2023-11-28 18:31:26.000000',37,56),('2023-11-28 18:31:20.000000',38,'2023-11-28 18:31:26.000000',37,57),('2023-11-28 18:31:20.000000',39,'2023-11-28 18:31:26.000000',37,58),('2023-11-28 18:32:57.000000',40,'2023-11-28 18:33:05.000000',19,71),('2023-11-28 18:32:57.000000',41,'2023-11-28 18:33:05.000000',19,72),('2023-11-28 18:32:57.000000',42,'2023-11-28 18:33:05.000000',19,73),('2023-11-28 18:32:57.000000',43,'2023-11-28 18:33:05.000000',19,74),('2023-11-28 18:32:57.000000',44,'2023-11-28 18:33:05.000000',49,75),('2023-11-28 18:32:57.000000',45,'2023-11-28 18:33:05.000000',49,76),('2023-11-28 18:32:57.000000',46,'2023-11-28 18:33:05.000000',49,77),('2023-11-28 18:32:57.000000',47,'2023-11-28 18:33:05.000000',49,78),('2023-11-28 18:33:54.000000',48,'2023-11-28 18:33:59.000000',21,81),('2023-11-28 18:33:54.000000',49,'2023-11-28 18:33:59.000000',21,82),('2023-11-28 18:33:54.000000',50,'2023-11-28 18:33:59.000000',21,83),('2023-11-28 18:33:54.000000',51,'2023-11-28 18:33:59.000000',21,84),('2023-11-28 18:33:54.000000',52,'2023-11-28 18:33:59.000000',51,85),('2023-11-28 18:33:54.000000',53,'2023-11-28 18:33:59.000000',51,86),('2023-11-28 18:33:54.000000',54,'2023-11-28 18:33:59.000000',51,87),('2023-11-28 18:33:54.000000',55,'2023-11-28 18:33:59.000000',51,88),('2023-11-28 18:34:41.000000',56,'2023-11-28 18:34:45.000000',57,21),('2023-11-28 18:34:41.000000',57,'2023-11-28 18:34:45.000000',57,41),('2023-11-28 18:34:41.000000',58,'2023-11-28 18:34:45.000000',57,71),('2023-11-28 18:34:41.000000',59,'2023-11-28 18:34:45.000000',57,81),('2023-11-28 18:34:41.000000',60,'2023-11-28 18:34:45.000000',58,21),('2023-11-28 18:34:41.000000',61,'2023-11-28 18:34:45.000000',58,41),('2023-11-28 18:34:41.000000',62,'2023-11-28 18:34:45.000000',58,71),('2023-11-28 18:34:41.000000',63,'2023-11-28 18:34:45.000000',58,81),('2023-11-28 18:37:17.000000',64,'2023-11-28 18:37:12.000000',59,21),('2023-11-28 18:37:17.000000',65,'2023-11-28 18:37:12.000000',59,41),('2023-11-28 18:37:17.000000',66,'2023-11-28 18:37:12.000000',59,71),('2023-11-28 18:37:17.000000',67,'2023-11-28 18:37:12.000000',59,81),('2023-11-28 18:37:46.000000',68,'2023-11-28 18:37:40.000000',60,21),('2023-11-28 18:37:46.000000',69,'2023-11-28 18:37:40.000000',60,41),('2023-11-28 18:37:46.000000',70,'2023-11-28 18:37:40.000000',60,71),('2023-11-28 18:37:46.000000',71,'2023-11-28 18:37:40.000000',60,81),('2023-11-28 19:25:04.000000',72,'2023-11-28 19:25:11.000000',57,4),('2023-11-28 19:25:50.000000',73,'2023-11-28 19:25:52.000000',58,4),('2023-11-28 19:26:12.000000',74,'2023-11-28 19:26:11.000000',59,5),('2023-11-28 19:26:23.000000',75,'2023-11-28 19:26:24.000000',60,5),('2023-11-28 19:34:18.000000',76,'2023-11-28 19:34:19.000000',21,4),('2023-11-28 19:34:40.000000',77,'2023-11-28 19:34:41.000000',51,4),('2023-11-28 19:35:11.000000',78,'2023-11-28 19:35:10.000000',19,4),('2023-11-28 19:35:22.000000',79,'2023-11-28 19:35:23.000000',49,4),('2023-11-28 19:35:51.000000',80,'2023-11-28 19:35:50.000000',7,9),('2023-11-28 19:36:02.000000',81,'2023-11-28 19:36:03.000000',37,9),('2023-11-28 19:36:21.000000',82,'2023-11-28 19:36:22.000000',5,8),('2023-11-28 19:36:33.000000',83,'2023-11-28 19:36:34.000000',35,8),('2023-11-28 19:37:03.000000',84,'2023-11-28 19:37:04.000000',3,7),('2023-11-28 19:37:20.000000',85,'2023-11-28 19:37:21.000000',33,7),('2023-11-28 19:37:42.000000',86,'2023-11-28 19:37:41.000000',1,6),('2023-11-28 19:37:59.000000',87,'2023-11-28 19:38:01.000000',31,8);
UNLOCK TABLES;

--
-- Table structure for table `subjects_extensioncourse`
--

DROP TABLE IF EXISTS `subjects_extensioncourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_extensioncourse` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `cost` int NOT NULL,
  `places` int NOT NULL,
  `hours` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `updated` datetime(6) NOT NULL,
  `academic_program_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_extensionco_academic_program_id__bc3cdf2d_fk_academicP` (`academic_program_id_id`),
  CONSTRAINT `subjects_extensionco_academic_program_id__bc3cdf2d_fk_academicP` FOREIGN KEY (`academic_program_id_id`) REFERENCES `academicPrograms_academicprogram` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_extensioncourse`
--

LOCK TABLES `subjects_extensioncourse` WRITE;
INSERT INTO `subjects_extensioncourse` VALUES ('2023-11-28 18:49:13.000000',1,'Curso de Extensión en Ingeniería Industrial','Este es un curso de extensión especializado en el área de Ingeniería Industrial.',1500000,20,40,'2024-03-15','2024-08-15','2023-11-28 18:49:13.000000',3),('2023-11-28 18:49:13.000000',2,'Curso de Extensión en Medicina','Este es un curso de extensión especializado en el área de Medicina.',2000000,25,60,'2024-04-20','2024-09-20','2023-11-28 18:49:13.000000',4),('2023-11-28 18:49:13.000000',3,'Curso de Extensión en Ingeniería Mecánica','Este es un curso de extensión especializado en el área de Ingeniería Mecánica.',1800000,15,50,'2024-05-05','2024-10-05','2023-11-28 18:49:13.000000',5),('2023-11-28 18:49:13.000000',4,'Curso de Extensión en Química Farmacéutica','Este es un curso de extensión especializado en el área de Química Farmacéutica.',1700000,18,45,'2024-06-10','2024-11-10','2023-11-28 18:49:13.000000',6),('2023-11-28 18:49:13.000000',5,'Curso de Extensión en Economía','Este es un curso de extensión especializado en el área de Economía.',1600000,22,30,'2024-07-15','2024-12-15','2023-11-28 18:49:13.000000',7);
UNLOCK TABLES;

--
-- Table structure for table `subjects_grade`
--

DROP TABLE IF EXISTS `subjects_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_grade` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `grade_score` double NOT NULL,
  `grade_state` varchar(10) NOT NULL,
  `percentage_in_group` double NOT NULL,
  `updated` datetime(6) NOT NULL,
  `grade_group_id_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_grade_grade_group_id_id_1f376ca9_fk_subjects_` (`grade_group_id_id`),
  KEY `subjects_grade_user_id_id_71a29850_fk_users_userprofile_id` (`user_id_id`),
  CONSTRAINT `subjects_grade_grade_group_id_id_1f376ca9_fk_subjects_` FOREIGN KEY (`grade_group_id_id`) REFERENCES `subjects_gradegroup` (`id`),
  CONSTRAINT `subjects_grade_user_id_id_71a29850_fk_users_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_grade`
--

LOCK TABLES `subjects_grade` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `subjects_gradegroup`
--

DROP TABLE IF EXISTS `subjects_gradegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_gradegroup` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `percentage_in_subject` double NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_gradegroup`
--

LOCK TABLES `subjects_gradegroup` WRITE;
INSERT INTO `subjects_gradegroup` VALUES ('2023-12-01 23:24:16.704333',1,'Nota prueba #1',30,'2023-12-01 23:24:16.704365'),('2023-12-01 23:27:13.301626',2,'Nota prueba #2',30,'2023-12-01 23:27:13.301668'),('2023-12-01 23:27:36.694809',3,'Nota prueba #3',30,'2023-12-01 23:27:36.694852');
UNLOCK TABLES;

--
-- Table structure for table `subjects_groupwithgroupsofgrades`
--

DROP TABLE IF EXISTS `subjects_groupwithgroupsofgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_groupwithgroupsofgrades` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  `grade_group_id_id` bigint NOT NULL,
  `group_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_groupwithgr_grade_group_id_id_1a561df0_fk_subjects_` (`grade_group_id_id`),
  KEY `subjects_groupwithgr_group_id_id_c96b1fc1_fk_groups_gr` (`group_id_id`),
  CONSTRAINT `subjects_groupwithgr_grade_group_id_id_1a561df0_fk_subjects_` FOREIGN KEY (`grade_group_id_id`) REFERENCES `subjects_gradegroup` (`id`),
  CONSTRAINT `subjects_groupwithgr_group_id_id_c96b1fc1_fk_groups_gr` FOREIGN KEY (`group_id_id`) REFERENCES `groups_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_groupwithgroupsofgrades`
--

LOCK TABLES `subjects_groupwithgroupsofgrades` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `subjects_subject`
--

DROP TABLE IF EXISTS `subjects_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_subject` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `credits` int NOT NULL,
  `schedule_intensity` int NOT NULL,
  `place_in_semester` int NOT NULL,
  `pre_requisite` varchar(6) DEFAULT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_subject`
--

LOCK TABLES `subjects_subject` WRITE;
INSERT INTO `subjects_subject` VALUES ('2023-11-28 03:41:10.000000',1,'Gestión de Operaciones','II993',3,8,9,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',2,'Ergonomía','II1103',3,6,1,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',3,'Anatomía Humana','M863',3,6,8,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',4,'Bioquímica Clínica','M1023',3,4,10,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',5,'Termodinámica Aplicada','IM893',3,8,8,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',6,'Mecánica de Fluidos','IM983',3,8,9,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',7,'Farmacología','QF163',3,6,1,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',8,'Química Orgánica','QF753',3,2,7,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',9,'Microeconomía Avanzada','E613',3,2,6,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',10,'Econometría','E7103',3,6,7,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',11,'Derecho Constitucional','D263',3,4,2,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',12,'Derecho Penal','D1033',3,6,10,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',13,'Mercados Financieros','FY983',3,4,9,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',14,'Comercio Internacional','FY233',3,6,2,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',15,'Teorías del Aprendizaje','P223',3,4,2,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',16,'Pedagogía Contemporánea','P363',3,6,3,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',17,'Diseño Arquitectónico','A883',3,2,8,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',18,'Urbanismo','A763',3,4,7,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',19,'Electrónica de Potencia','IE163',3,6,1,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',20,'Sistemas de Control','IE513',3,2,5,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',21,'Robótica','IM173',3,6,1,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',22,'Automatización Industrial','IM1103',3,20,1,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',23,'Mecánica Cuántica','IF393',3,8,3,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',24,'Física de Materiales','IF813',3,2,8,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',25,'Técnicas de Pintura','LA1063',3,6,10,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',26,'Escultura Moderna','LEA473',3,4,4,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',27,'Matemáticas Básicas','G873',3,4,8,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',28,'Física General','G1063',3,6,10,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',29,'Química General','G513',3,2,5,NULL,'2023-11-28 03:41:10.000000'),('2023-11-28 03:41:10.000000',30,'Introducción a la Programación','G853',3,6,8,NULL,'2023-11-28 03:41:10.000000');
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (5,'2023-11-26 18:46:26.965212',41),(6,'2023-11-26 22:37:39.446674',42),(7,'2023-11-26 23:52:45.086991',43),(8,'2023-11-27 00:04:26.014660',44),(9,'2023-11-27 00:05:15.364065',45),(10,'2023-11-27 00:05:23.623159',46),(11,'2023-11-27 00:30:40.080978',47),(12,'2023-11-27 00:37:04.404189',48),(13,'2023-11-27 02:46:46.162910',52),(14,'2023-11-29 00:17:10.322088',56),(15,'2023-11-29 01:51:38.646492',58),(16,'2023-11-29 02:26:48.736104',59),(17,'2023-11-29 02:57:08.903463',60),(18,'2023-11-29 03:32:04.519093',61),(19,'2023-11-29 03:39:12.482705',62),(20,'2023-11-29 15:06:20.274616',72),(21,'2023-11-29 15:18:34.434077',73),(22,'2023-11-29 15:34:57.073307',76),(23,'2023-11-29 15:38:25.672077',78),(24,'2023-11-29 18:16:57.107987',83),(25,'2023-11-29 20:38:37.361886',87),(26,'2023-11-29 20:51:00.601980',88),(27,'2023-11-29 20:51:40.057829',89),(28,'2023-11-30 06:34:45.748257',93),(29,'2023-11-30 07:00:47.527702',94),(30,'2023-11-30 07:01:17.468079',95),(31,'2023-11-30 14:30:37.564718',96),(32,'2023-11-30 14:37:53.029583',97),(33,'2023-11-30 14:40:15.258564',98),(34,'2023-11-30 14:43:26.026311',99),(35,'2023-11-30 15:33:48.591864',101),(36,'2023-11-30 16:56:38.437054',104),(37,'2023-11-30 20:00:29.179149',109),(38,'2023-12-01 18:27:52.750604',110),(39,'2023-12-01 18:29:58.630846',111);
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTExMDc4MiwiaWF0IjoxNzAxMDI0MzgyLCJqdGkiOiI3MTgwNzQxODdjNjA0MGQxYTE0YjgzOWMzZDc3NmFjMCIsInVzZXJfaWQiOiIxMjM0NTYifQ.g9mHuh_0EsvAkZExBxV2Y2NKQfT_hStji275BE_pQDo','2023-11-26 18:46:22.959675','2023-11-27 18:46:22.000000',4,'718074187c6040d1a14b839c3d776ac0'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEyNDYyNiwiaWF0IjoxNzAxMDM4MjI2LCJqdGkiOiI2MzAzZTM5YjFkMjc0NDcwODFmNjM4MDA5NjJiMDUzMCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0._u7MsYK_1qrL2xU0LKf1xDH2_aFDMfWTjJtIP26qo6E','2023-11-26 22:37:06.100761','2023-11-27 22:37:06.000000',9,'6303e39b1d27447081f63800962b0530'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEyOTA5MCwiaWF0IjoxNzAxMDQyNjkwLCJqdGkiOiI0OTZhZDkxNTEwMzk0Y2VjYTA0MTY1NWU5MWVmMGNkMSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.CWpyWAO5VVpUBQYbrJ_KIeUgAZa7KhQgAqqka0NsGJ4','2023-11-26 23:51:30.124037','2023-11-27 23:51:30.000000',9,'496ad91510394ceca041655e91ef0cd1'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEyOTMwNCwiaWF0IjoxNzAxMDQyOTA0LCJqdGkiOiI3ODVmMjY0ZWUwMjc0OTdjYmUyZTcxZTE5MzU4NTNlNyIsInVzZXJfaWQiOiIxMDIwMzAifQ.k8NI9vaLRh1xYQZuQkmplwrFHP_vY8j_9_WFGD-diqY','2023-11-26 23:55:04.711568','2023-11-27 23:55:04.000000',10,'785f264ee027497cbe2e71e1935853e7'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEyOTkxMSwiaWF0IjoxNzAxMDQzNTExLCJqdGkiOiI5N2NjNzNiMTI1MGQ0ZjJmODI5NWQzYTAwMDFlYzFmYSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.ndrR6YyWW-2ssnrn0yaMxuzAO0QwlmBNZbOWS_I7j8Q','2023-11-27 00:05:11.443233','2023-11-28 00:05:11.000000',9,'97cc73b1250d4f2f8295d3a0001ec1fa'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEyOTkyMSwiaWF0IjoxNzAxMDQzNTIxLCJqdGkiOiIzNjgyMDdkZGFlYzE0NzliYWY5YWI1M2ZlOWE4ZjM3NCIsInVzZXJfaWQiOiIxMDIwMzAifQ.nc42E9ycqL9rGhwQhjZtzdcBa-YwUKa87rYeulOAsoQ','2023-11-27 00:05:21.596821','2023-11-28 00:05:21.000000',10,'368207ddaec1479baf9ab53fe9a8f374'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzMTI3NCwiaWF0IjoxNzAxMDQ0ODc0LCJqdGkiOiJhNmEwNzFkYzcwNjM0ZWEzYjA0OTUwY2U2YzIyZjkyYiIsInVzZXJfaWQiOiIxMDIwMzAifQ.s-to3IDDnBe3pDJgYl6SH0f5ddtWdDq3bLKsnptkW8M','2023-11-27 00:27:54.099687','2023-11-28 00:27:54.000000',10,'a6a071dc70634ea3b04950ce6c22f92b'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzMTQ0NiwiaWF0IjoxNzAxMDQ1MDQ2LCJqdGkiOiIwMjViYzBlODEzZWE0MThiODE5ZTQwYzJmY2I5Yjk0YyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.IqTtYxwS2Zc6LCb2TKWFlXAa6xukW30ymtp-dbO5KKA','2023-11-27 00:30:46.620034','2023-11-28 00:30:46.000000',9,'025bc0e813ea418b819e40c2fcb9b94c'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzMTgzMywiaWF0IjoxNzAxMDQ1NDMzLCJqdGkiOiI1YzEwNWMxMTczMTc0OWE4YTIwYjNmZGUzOGZjOTZiZCIsInVzZXJfaWQiOiIxMDIwMzAifQ._LtvQRy5q7ZJRQz4SAbc9Sx0ibXt_7aN7VBNVQy11dc','2023-11-27 00:37:13.551201','2023-11-28 00:37:13.000000',10,'5c105c11731749a8a20b3fde38fc96bd'),(50,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzNDAxOCwiaWF0IjoxNzAxMDQ3NjE4LCJqdGkiOiJiZjU5Njg0NDczMzY0MWUzODRlYTkzNTNlNTRjZWM3NyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.6uvuN-OuMaYGUmoYwu1H04I4x0yvePleNY44VIccC_E','2023-11-27 01:13:38.739239','2023-11-28 01:13:38.000000',9,'bf596844733641e384ea9353e54cec77'),(51,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzNTQ2MywiaWF0IjoxNzAxMDQ5MDYzLCJqdGkiOiI0Y2I3ZjdkZTgyMDU0ZjYwOTQ3MTc0MjFlNzlkN2VkOSIsInVzZXJfaWQiOiIxMDIwMzAifQ.OouOZpm9lYt2EoD_AMsrMWpnurkDcvsqumIWo0ZdRjM','2023-11-27 01:37:43.466984','2023-11-28 01:37:43.000000',10,'4cb7f7de82054f6094717421e79d7ed9'),(52,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzOTU5NywiaWF0IjoxNzAxMDUzMTk3LCJqdGkiOiJiNDViNzMyZGZmZTI0MDcwYjdjOWYxZTkyY2Y4Yzg0MyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.W6ihepq6X3i9o2NHL47s4SVf4qSuDjyGjVzEv0Zole0','2023-11-27 02:46:37.972494','2023-11-28 02:46:37.000000',9,'b45b732dffe24070b7c9f1e92cf8c843'),(53,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTEzOTYxMiwiaWF0IjoxNzAxMDUzMjEyLCJqdGkiOiJhNDQ1ZmVjMTY4N2U0ZDQyODI1NDMwZDI5MDg0ZmFkNyIsInVzZXJfaWQiOiIxMDIwMzAifQ.ZY5yI23fQJnBagMuyLz6GCL9G64LqLbJVtXd3iNGbr8','2023-11-27 02:46:52.752377','2023-11-28 02:46:52.000000',10,'a445fec1687e4d42825430d29084fad7'),(54,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTIwMDE3NSwiaWF0IjoxNzAxMTEzNzc1LCJqdGkiOiI2ZjI1MjBhZjY0YzI0ZTk2OGZlMmIzNTQ1ZWI0ZWUxZCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.urvOL3yYY0U77cITyYo09ZZpZSVx5_yjAF2ORjy09c8','2023-11-27 19:36:15.614910','2023-11-28 19:36:15.000000',9,'6f2520af64c24e968fe2b3545eb4ee1d'),(55,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTIwMDczNCwiaWF0IjoxNzAxMTE0MzM0LCJqdGkiOiI4ODcyMjJkMGQ5Yzk0YzFjYTVhMDlkN2FmMGQwYjFiMCIsInVzZXJfaWQiOiIxMDIwMzAifQ.8RUa8Us3fOaTy29oxUsL48SBjpZJ97Ft2_yGaCrpDhM','2023-11-27 19:45:34.050371','2023-11-28 19:45:34.000000',10,'887222d0d9c94c1ca5a09d7af0d0b1b0'),(56,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMwMzM4MywiaWF0IjoxNzAxMjE2OTgzLCJqdGkiOiJkZGJjMjcwNDIxYjU0MmMzYWJhODYxOGRhNTk5ZTI2NyIsInVzZXJfaWQiOiI1OTk3ODYxMTQ1MCJ9.gOb7Q8JynRNB4iGE0xPaR2PpKFdWxQ-7EsBUtVnE3Tc','2023-11-29 00:16:23.276639','2023-11-30 00:16:23.000000',28,'ddbc270421b542c3aba8618da599e267'),(57,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMwMzQ0MSwiaWF0IjoxNzAxMjE3MDQxLCJqdGkiOiIwNGU4NmEwODAyY2E0NmFmYjZhMWFmMzI4NjAwMDcxYyIsInVzZXJfaWQiOiIxMDIwMzAifQ.6NJ4KHrrQe3Ck3fegwZ92_PEDsWWHb3OW6mEf8OeIIE','2023-11-29 00:17:21.691566','2023-11-30 00:17:21.000000',10,'04e86a0802ca46afb6a1af328600071c'),(58,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMwNzIxNSwiaWF0IjoxNzAxMjIwODE1LCJqdGkiOiI3MzEwYzE0ZjM3ODA0YmVkODE0NDQ4ZDlhZjg3ZWFjYyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.ySXonJFu2K1EyK680JvQaTXOFRS_7pW6Zqq-UHUnJyM','2023-11-29 01:20:15.783124','2023-11-30 01:20:15.000000',9,'7310c14f37804bed814448d9af87eacc'),(59,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMwOTA5OCwiaWF0IjoxNzAxMjIyNjk4LCJqdGkiOiI4ZmEzOGEzYjZiNTc0NjEyOTM3NWQyNjQ3NTM0Yjg2OSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.qwMWfFgHEFfazrIGety7uDo0BDVW-PAJ5rgU8rSrupE',NULL,'2023-11-30 01:51:38.000000',NULL,'8fa38a3b6b5746129375d2647534b869'),(60,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxMTIwOCwiaWF0IjoxNzAxMjI0ODA4LCJqdGkiOiIwODUwYmQ0ZTQyYWE0MTM0OTEyN2U0ZjFmMzRkNTdiMyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.TcLLw8x6DrqRz7Dq_2roo441F-RsGZMWLPsvyq8T4wY',NULL,'2023-11-30 02:26:48.000000',NULL,'0850bd4e42aa41349127e4f1f34d57b3'),(61,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxMzAyOCwiaWF0IjoxNzAxMjI2NjI4LCJqdGkiOiJlMmRjMmRjNjVkZGY0NTU1YjNhMjc0YzFjOTlkMDE4ZiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.e9Q4YDJOB3M9ecVJIF_-jOEppmtHKASZXLvwed5Vm98',NULL,'2023-11-30 02:57:08.000000',NULL,'e2dc2dc65ddf4555b3a274c1c99d018f'),(62,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxNTEyNCwiaWF0IjoxNzAxMjI4NzI0LCJqdGkiOiJmMzM4ZDYxMGUxOWU0NmY0YTQ4MTk5MTk4MTk4M2UzNyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.tz-DWkK9XoOJBg5IydT2__wzA_pNxXWNmPxZgdrA8N4',NULL,'2023-11-30 03:32:04.000000',NULL,'f338d610e19e46f4a481991981983e37'),(63,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxNzQxMiwiaWF0IjoxNzAxMjMxMDEyLCJqdGkiOiI4MzFmMTZhNDU5Yjg0M2QxODFhMGU3ZmIyNjI1MTE4MSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.Xx7ZMXF1cYbsa2L89pQwD7f8mkrlzWEvaOXB_4y8qgc','2023-11-29 04:10:12.956869','2023-11-30 04:10:12.000000',9,'831f16a459b843d181a0e7fb26251181'),(64,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxOTY2MSwiaWF0IjoxNzAxMjMzMjYxLCJqdGkiOiJiODIzN2ZmODEwNGE0ZjE5OWIwNGZmN2RkZDUyNzA5NyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.4w0q6wxrRXh1ps_9K5b50VMPfjfxh9_Hi8fVOnB5gS8','2023-11-29 04:47:41.166283','2023-11-30 04:47:41.000000',9,'b8237ff8104a4f199b04ff7ddd527097'),(65,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMxOTcwOSwiaWF0IjoxNzAxMjMzMzA5LCJqdGkiOiI5MWE5YWY3NzI0ZGI0NWExYTJkZWJiOGNiOTFjZDdkNCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.-u3zaj1pc1BBwCYR1DXlc5zcTfk0HkD0VVdi9FyZKN4','2023-11-29 04:48:29.557781','2023-11-30 04:48:29.000000',9,'91a9af7724db45a1a2debb8cb91cd7d4'),(66,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMyMjEyMCwiaWF0IjoxNzAxMjM1NzIwLCJqdGkiOiJmNGY4YzM2NDljZTE0NjI2ODE5NjY3MmM3OWYwNTVhOCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.vC7eqvLTiO4LDu5oayjgClxYd3g2sr6vhz9fvWJAc8k','2023-11-29 05:28:40.998601','2023-11-30 05:28:40.000000',9,'f4f8c3649ce146268196672c79f055a8'),(67,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMyNDA5MSwiaWF0IjoxNzAxMjM3NjkxLCJqdGkiOiJkMTBhMWM0NmVjMDc0MWE1YTI0ZTRlNDgwYzM1NzIzNyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.mi3PODnx-lJ4fZOXVNsx86ZxWpoC9WqD7jMMoOj03LA','2023-11-29 06:01:31.272438','2023-11-30 06:01:31.000000',9,'d10a1c46ec0741a5a24e4e480c357237'),(68,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMyNDIzOSwiaWF0IjoxNzAxMjM3ODM5LCJqdGkiOiI1MDkxN2Q0ZTk4NzA0ODNhOGFiNjA0MDI2OWJjODBjMyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.KMDs6SkPho14ennG280dStIqN5mffUqT9UzwcScBiE4','2023-11-29 06:03:59.847468','2023-11-30 06:03:59.000000',9,'50917d4e9870483a8ab6040269bc80c3'),(69,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMyNjEzNSwiaWF0IjoxNzAxMjM5NzM1LCJqdGkiOiJiMDBkMGEzZDdiNTQ0MTdiOWVkOWE5OTY2YTZlZjU1OCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.oPrJoLhgg4TO4TXxjFkdzg5U8UDVe-hLuhNVSoMe6Kk','2023-11-29 06:35:35.911163','2023-11-30 06:35:35.000000',9,'b00d0a3d7b54417b9ed9a9966a6ef558'),(70,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTMyNzAyNywiaWF0IjoxNzAxMjQwNjI3LCJqdGkiOiI4OWFkZmZlNGYyMDQ0MWU0OWIxM2ZmZjljOWUwMTdmYyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0._FsOKL5mZ_EJ-wlcOzDiXWUzgqaWfhM9kXZKt4-Y0n4','2023-11-29 06:50:27.928264','2023-11-30 06:50:27.000000',9,'89adffe4f20441e49b13fff9c9e017fc'),(71,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1NTYxNywiaWF0IjoxNzAxMjY5MjE3LCJqdGkiOiIxZWUwZjE4NTFlMzM0YmFiYmI2ZTMyZTI4NWY3MGVkNSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.Jd7d-1FRvAjmwcyqMDxsZ6rw24awR9s3LQ5jpT2hghA','2023-11-29 14:46:57.153642','2023-11-30 14:46:57.000000',9,'1ee0f1851e334babbb6e32e285f70ed5'),(72,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1Njc0NCwiaWF0IjoxNzAxMjcwMzQ0LCJqdGkiOiIzMzU4MWYzZTMwYWQ0YzEzYWQyMWQxZTk3MmUxYzJhOCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.w5XDUMZRSZYXMHHMpb1DyyM0nQwxt62OjD-9UK2jFkc','2023-11-29 15:05:44.223956','2023-11-30 15:05:44.000000',9,'33581f3e30ad4c13ad21d1e972e1c2a8'),(73,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1NzUwMSwiaWF0IjoxNzAxMjcxMTAxLCJqdGkiOiJlMThkOTNkM2ViMDQ0YzljOTdmN2U4NzdhOWI5MThiNCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.TLmOx4kx3TX3wu90DXySkaUSDCx34v-kGUecWOjeBD8','2023-11-29 15:18:21.774002','2023-11-30 15:18:21.000000',9,'e18d93d3eb044c9c97f7e877a9b918b4'),(74,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1NzcyOCwiaWF0IjoxNzAxMjcxMzI4LCJqdGkiOiJjZGI5ZDMwZWYzYzE0YzdiOTRiOTVjMDYzMGQyZmQ5MiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.gjNyzKlnYE_PI_bx4nXY-ng6gvI47ctHAXDkgywC8u4','2023-11-29 15:22:08.575238','2023-11-30 15:22:08.000000',9,'cdb9d30ef3c14c7b94b95c0630d2fd92'),(75,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1ODA4MywiaWF0IjoxNzAxMjcxNjgzLCJqdGkiOiI0NDdjZjU5MjdjMmQ0YWMwYTAwOTViM2VlMDg5ZTIzYiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.whQS1CrpKbp_Zeae5ALIuQuaIpSdRqWyOHW7MVd_lUk','2023-11-29 15:28:03.030951','2023-11-30 15:28:03.000000',9,'447cf5927c2d4ac0a0095b3ee089e23b'),(76,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1ODQxMywiaWF0IjoxNzAxMjcyMDEzLCJqdGkiOiJkOWE2NDI0OGJiYzI0OWJjYWFkZDZiMThhNjllZTYwMyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.RGR1Supi8u67xWNRHC_eJXblVwD-n0K5dCwZjAUd_r4','2023-11-29 15:33:33.269869','2023-11-30 15:33:33.000000',9,'d9a64248bbc249bcaadd6b18a69ee603'),(77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1ODY0NSwiaWF0IjoxNzAxMjcyMjQ1LCJqdGkiOiJkMWM0YTkxYjhmNjc0ZDYwOWRlYTgwODdkMWNjMWZiYiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.1vbAAXZjxf7myGRCKL-McmwNPIiH7o6DN5xmJU1EczI','2023-11-29 15:37:25.002186','2023-11-30 15:37:25.000000',9,'d1c4a91b8f674d609dea8087d1cc1fbb'),(78,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1ODcwMSwiaWF0IjoxNzAxMjcyMzAxLCJqdGkiOiIxYTg0NTgyNWY1MDY0YjU0YTRiM2JhZDY3NGU2MDFhNSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.hEwhpPyvh2u6qzDwpsHeCDWGO3A_vQhawKUtsaKKctc','2023-11-29 15:38:21.939779','2023-11-30 15:38:21.000000',9,'1a845825f5064b54a4b3bad674e601a5'),(79,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM1ODkzMywiaWF0IjoxNzAxMjcyNTMzLCJqdGkiOiJkODlkZmU1NjRkNjQ0MTJlOWI1MTA1YWZhMTg3MTY3ZSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.EXSV0r67abASLuZ8fDcfsfnxucbUUTowUaw5m5yalm8','2023-11-29 15:42:13.048969','2023-11-30 15:42:13.000000',9,'d89dfe564d64412e9b5105afa187167e'),(80,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM2MTAyMCwiaWF0IjoxNzAxMjc0NjIwLCJqdGkiOiI2NjYwYzIyNTgwZDI0Mzc0OTNmZTNjODY0YTAxZTI2YiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.fuMSWrp-q57E1O6kqXhHvls-Bp3izOjpwhmh-nZp3MU','2023-11-29 16:17:00.330061','2023-11-30 16:17:00.000000',9,'6660c22580d2437493fe3c864a01e26b'),(81,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM2Mjg4OSwiaWF0IjoxNzAxMjc2NDg5LCJqdGkiOiJlMTU2NzFmY2YyMzg0NTZlOTk1MDMxMzdjYWU0MTg4NyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.DYrTGzqFXNU1LgK97iONOfwNaGwy21FureD6obrA2c8','2023-11-29 16:48:09.016950','2023-11-30 16:48:09.000000',9,'e15671fcf238456e99503137cae41887'),(82,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM2NDgyNywiaWF0IjoxNzAxMjc4NDI3LCJqdGkiOiI0ODVmYzQxM2RjMWQ0YTZiOWJhM2M1MjNiMTllOGUwNiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.SqLIiitUICmghLdZRtB4Mf4FvN7FjRRdoqORveKmQn0','2023-11-29 17:20:27.316459','2023-11-30 17:20:27.000000',9,'485fc413dc1d4a6b9ba3c523b19e8e06'),(83,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM2NzAxOSwiaWF0IjoxNzAxMjgwNjE5LCJqdGkiOiJmYTBkNGQ2MmU4YmI0ZGJkOTMxMTIxMWJkMjU3MWMxYyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.QAGyjetbx-eJV4QoCTNpe_z2ichplXc9XWBnplXKc6k','2023-11-29 17:56:59.333787','2023-11-30 17:56:59.000000',9,'fa0d4d62e8bb4dbd9311211bd2571c1c'),(84,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM2ODIyNCwiaWF0IjoxNzAxMjgxODI0LCJqdGkiOiJjNDdjODg5YmYyMTc0NWJhYTQzNzg4YzA0NzAwZWY3MiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.lHXOHtUdzc3wAmuG2g-IQmjSBBcHC_4Hkn0kUnVo98o','2023-11-29 18:17:04.809078','2023-11-30 18:17:04.000000',9,'c47c889bf21745baa43788c04700ef72'),(85,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3MDM2NywiaWF0IjoxNzAxMjgzOTY3LCJqdGkiOiIwNjJmZGU2YjlhMzg0NDY2YTY5ZTc4YzI4MjBjZjQyMiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.TbmP2IyA6rsb3zGKtacih-Pc9K27pAw--coITiMD_Fk','2023-11-29 18:52:47.157337','2023-11-30 18:52:47.000000',9,'062fde6b9a384466a69e78c2820cf422'),(86,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3MzkzNiwiaWF0IjoxNzAxMjg3NTM2LCJqdGkiOiI5MTMyOTgxYmY0ZmM0ZDgyODljNzM5MDFkYjUzOTc2NyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.iL4jBupoh0j-qT92bMryeQES2uAY5uFtkdpWVhtesok','2023-11-29 19:52:16.076495','2023-11-30 19:52:16.000000',9,'9132981bf4fc4d8289c73901db539767'),(87,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3NTg0OCwiaWF0IjoxNzAxMjg5NDQ4LCJqdGkiOiIzNTNlZjA0NmM5MDY0ZGEyYTgwYTVmOWEwNWQ2YTU5YSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.xsHCNQXOwwbJ3CoRcAnclYdeusGQbGthGk1dZEArIUg','2023-11-29 20:24:08.148380','2023-11-30 20:24:08.000000',9,'353ef046c9064da2a80a5f9a05d6a59a'),(88,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3NzA1MywiaWF0IjoxNzAxMjkwNjUzLCJqdGkiOiI4MjJlMjZkYTE0ZGM0ODMxOTU0ZmIwZWEwOGMxNjY1MCIsInVzZXJfaWQiOiIxMjM0NTYifQ.X68D06gcC82gYLfFC09cFuA9xpcxVsclRO-psjDbkyI','2023-11-29 20:44:13.816916','2023-11-30 20:44:13.000000',4,'822e26da14dc4831954fb0ea08c16650'),(89,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3NzQ5MiwiaWF0IjoxNzAxMjkxMDkyLCJqdGkiOiIxM2JhMGEwMThjMDg0MTk4YWY5MTUwYzA1ZWFkZGJlNCIsInVzZXJfaWQiOiI3MTk5ODcwNjI3NCJ9.teKFLqtkxlz0hbRJxWscnWjsLjDck71xoZGPlkW8P1g','2023-11-29 20:51:32.504937','2023-11-30 20:51:32.000000',23,'13ba0a018c084198af9150c05eaddbe4'),(90,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTM3NzUxMCwiaWF0IjoxNzAxMjkxMTEwLCJqdGkiOiI3ZTdhMjA0MDZiZDA0NmUzYWQ3ZjVjOWVlZDU3NzgwNiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.sO-8_n4kZwtB0Rr7Ad19Wd8okcyzmsjfWfWfnFgoaRg','2023-11-29 20:51:50.017689','2023-11-30 20:51:50.000000',9,'7e7a20406bd046e3ad7f5c9eed577806'),(91,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQwNjgwOCwiaWF0IjoxNzAxMzIwNDA4LCJqdGkiOiJlMGE2MWEwNzljMTI0MTM4OTkzMmQ5MmNhZDRjYzIxZiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.NAtv-uuSGhw-CuZWF6CHf_63wbNvrqzSyhM_kONOjPo','2023-11-30 05:00:08.656156','2023-12-01 05:00:08.000000',9,'e0a61a079c1241389932d92cad4cc21f'),(92,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQxMDM4NywiaWF0IjoxNzAxMzIzOTg3LCJqdGkiOiI1YmUzMDliNjA1MTM0NWU2YjY1MTU4ODhlMmMzYTZiOCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.k-hTEf4oYKPLlyoL9g8Atnld-a3L3hNzQDZ_D4l0Ljk','2023-11-30 05:59:47.290063','2023-12-01 05:59:47.000000',9,'5be309b6051345e6b6515888e2c3a6b8'),(93,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQxMjQ4MSwiaWF0IjoxNzAxMzI2MDgxLCJqdGkiOiI3ODc2ZTBlNmQ0OGU0YzJkYmNkODU4MDJjODliYWI4MSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.zBZU-ikhT9dqB9sGGSeUHpcSVS6M6CFZwXPAEMAw5mQ','2023-11-30 06:34:41.312881','2023-12-01 06:34:41.000000',9,'7876e0e6d48e4c2dbcd85802c89bab81'),(94,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQxMjQ5NCwiaWF0IjoxNzAxMzI2MDk0LCJqdGkiOiJkZjE4OTI4MGQ5ZWE0ZmZjOTRiNjJiYTBhODdlMTY4OCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.JQoeRsVvwSIKEfuEjv0wc15F-HDobnwmqf87dCKD5js','2023-11-30 06:34:54.864399','2023-12-01 06:34:54.000000',9,'df189280d9ea4ffc94b62ba0a87e1688'),(95,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQxNDA1NSwiaWF0IjoxNzAxMzI3NjU1LCJqdGkiOiJiZDAyYTYyNWRmMTY0OTVjOGU5NDU1NDUyMzk3NTEzNiIsInVzZXJfaWQiOiIxMDIwMzAifQ.nRwPMIvAUCV2sDynSBfXU8Dwlst8XsKSfXvKiw9KfHc','2023-11-30 07:00:55.825192','2023-12-01 07:00:55.000000',10,'bd02a625df16495c8e94554523975136'),(96,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0MDg4NSwiaWF0IjoxNzAxMzU0NDg1LCJqdGkiOiJjOGZjNDczNDlhMGI0ZjE1ODA0OGNjMTVjZmIxNDhiZiIsInVzZXJfaWQiOiIxMDIwMzAifQ.7syjAI6C_V4nXiPy5WRyRwd7qOrNXyKTMHqlpopo_n0','2023-11-30 14:28:05.490389','2023-12-01 14:28:05.000000',10,'c8fc47349a0b4f158048cc15cfb148bf'),(97,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0MTQ2NywiaWF0IjoxNzAxMzU1MDY3LCJqdGkiOiIyOTg1ZTY1NGYwZDA0M2VjYjIzMGUwNjg1YWRjNzAyMSIsInVzZXJfaWQiOiIxMjM0NTYifQ.deQ7nSVCIiVhj3GR7LHZutM3rCS4Evdpn0-nukyZUcs','2023-11-30 14:37:47.277890','2023-12-01 14:37:47.000000',4,'2985e654f0d043ecb230e0685adc7021'),(98,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0MTYxMywiaWF0IjoxNzAxMzU1MjEzLCJqdGkiOiJjYTQyNTFhZGUxODk0NmQxOWY3ODM3Mjc4ZTcyNzAzMiIsInVzZXJfaWQiOiIxMjM0NTYifQ.MLTBEFsjad8w7-84JP10lEeGHDvmuqVf48COkJv-XKM','2023-11-30 14:40:13.079289','2023-12-01 14:40:13.000000',4,'ca4251ade18946d19f7837278e727032'),(99,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0MTY2MiwiaWF0IjoxNzAxMzU1MjYyLCJqdGkiOiIyNGJhNzk4NTkxOGM0MWUwODE0YmZiMTdiMDkwZGQ4NCIsInVzZXJfaWQiOiI3NDI1ODU4Mjc1MCJ9.IqR2A__weapg_7SSfZgfw4y1KTUwdo1CrlwPZ6HlQpI','2023-11-30 14:41:02.218525','2023-12-01 14:41:02.000000',21,'24ba7985918c41e0814bfb17b090dd84'),(100,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0MTgyNSwiaWF0IjoxNzAxMzU1NDI1LCJqdGkiOiJkM2RhMDFjY2FlNmQ0NmRkYTBmNzVkOWQ0MzlmZjlmOSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.O6mqf8C0g54XIyy5F6D0IAnD4YsHtpXCgO_l5XvUw2I','2023-11-30 14:43:45.950892','2023-12-01 14:43:45.000000',9,'d3da01ccae6d46dda0f75d9d439ff9f9'),(101,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0Mzk1NCwiaWF0IjoxNzAxMzU3NTU0LCJqdGkiOiJlMjFhNjRiY2I4Y2I0MjlhYTEyODM3MDQ3ZDg5YzRjZSIsInVzZXJfaWQiOiIxMDIwMzAifQ.Eb40IJu8C5f-HbUlMY7dG1dIuDCVpcPro0KKwa4Zaas','2023-11-30 15:19:14.276291','2023-12-01 15:19:14.000000',10,'e21a64bcb8cb429aa12837047d89c4ce'),(102,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0NDgzNywiaWF0IjoxNzAxMzU4NDM3LCJqdGkiOiIzYzQwYTY3ZGM1NjA0YjdiYWM1YTkwYWQxNDgwNjQ3MyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.ZVQVTt6beKfHV58u4_rqSdJbHDk-qK8UfZulS6vy2oE','2023-11-30 15:33:57.730140','2023-12-01 15:33:57.000000',9,'3c40a67dc5604b7bac5a90ad14806473'),(103,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0NzY3MiwiaWF0IjoxNzAxMzYxMjcyLCJqdGkiOiIyZjRkYTM1OTU0OTk0ZjU3YWZlOTJjNTM4MjMyNzBlYyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.ELYJjDbO9nSQDROFe_8HaESydiwnRKv9ey91gwYCwAA','2023-11-30 16:21:12.359969','2023-12-01 16:21:12.000000',9,'2f4da35954994f57afe92c53823270ec'),(104,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0OTYxOCwiaWF0IjoxNzAxMzYzMjE4LCJqdGkiOiIyZjNiOTQ1NTc1NjQ0NmYxODhlZjUzZmExNTJlYjE5NyIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.cfoQkK1z17A5N2-pYyPgZLzP1Y-my8yqiRSYgDAnzss','2023-11-30 16:53:38.475354','2023-12-01 16:53:38.000000',9,'2f3b9455756446f188ef53fa152eb197'),(105,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ0OTgxMywiaWF0IjoxNzAxMzYzNDEzLCJqdGkiOiIxYzE4ZjM0NzMwNmI0MTNiODU5ZDRhNmFhNWU5ZWMwMCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.s0pZGf8whbaEKCW22-n650Bk63LIC6tUFBegG9kK794','2023-11-30 16:56:53.052402','2023-12-01 16:56:53.000000',9,'1c18f347306b413b859d4a6aa5e9ec00'),(106,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ1MjI5NCwiaWF0IjoxNzAxMzY1ODk0LCJqdGkiOiJkMDkxZDE3ZjRkOGY0NzgzYjU3NzIwNWZiM2FkNGUwMCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.GerV98H6BgtVBoe9Cx_yWrhUloOhsp2a4dG59FKKBas','2023-11-30 17:38:14.182507','2023-12-01 17:38:14.000000',9,'d091d17f4d8f4783b577205fb3ad4e00'),(107,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ1NTA4NywiaWF0IjoxNzAxMzY4Njg3LCJqdGkiOiJlNTM2OTE0ZDFjNGY0NDRiOGJhMGUzMjEyM2NiNzliOSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0._6dBr5f7euVrNnvDsL0x4Bwtm7hRBbYdMOOQFMduy2g','2023-11-30 18:24:47.476775','2023-12-01 18:24:47.000000',9,'e536914d1c4f444b8ba0e32123cb79b9'),(108,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ1NzM4MywiaWF0IjoxNzAxMzcwOTgzLCJqdGkiOiI5NjAwNTUzYWU2MzQ0MDlkYmEzMDg2MmM5YjJjODQ2ZCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.GIy3J5jrI8xfgVWAgxAV4apA4zk18FAn7Hzir3cizug','2023-11-30 19:03:03.276240','2023-12-01 19:03:03.000000',9,'9600553ae634409dba30862c9b2c846d'),(109,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTQ2MDM4MCwiaWF0IjoxNzAxMzczOTgwLCJqdGkiOiI4MzFlZTk5YTYxZDY0YTQyODQyOTM3OGU1MDhhOWNkYiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.7uyX9F3rkwcuBhv1jGMoydEsPB3XrLJNd_l48jL8Guw','2023-11-30 19:53:00.880365','2023-12-01 19:53:00.000000',9,'831ee99a61d64a428429378e508a9cdb'),(110,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU0MTY0NiwiaWF0IjoxNzAxNDU1MjQ2LCJqdGkiOiI1NDVkNjU0NDJkZjA0NTEyODdhOGFhYWUzNDU2NzJiNCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.FfQQGio4ovVHKr1AAkN9zS44rskFu0a5Zdi5HI-duP4','2023-12-01 18:27:26.728106','2023-12-02 18:27:26.000000',9,'545d65442df0451287a8aaae345672b4'),(111,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU0MTc2OSwiaWF0IjoxNzAxNDU1MzY5LCJqdGkiOiJhM2ZhMmI4Mzk5ZmI0ODFiOThiZTVlNTljYmNhN2ZmYiIsInVzZXJfaWQiOiI5Nzg0MDU3MzM3NSJ9.0L3krwaWg65B_1Oe8rX75dCErPC0J53jwtvSOlTiMfo','2023-12-01 18:29:29.711576','2023-12-02 18:29:29.000000',16,'a3fa2b8399fb481b98be5e59cbca7ffb'),(112,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU0MjY5NiwiaWF0IjoxNzAxNDU2Mjk2LCJqdGkiOiIyYmVhZTAwMmU3ZWI0NzJiYjQ5MGM2YTQzNDVjODQ0NCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.reDtDKD1VHfrQC4xNCfHwz6z8Y8JJQdOniRinjDe8KU','2023-12-01 18:44:56.048172','2023-12-02 18:44:56.000000',9,'2beae002e7eb472bb490c6a4345c8444'),(113,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU0Nzg2NywiaWF0IjoxNzAxNDYxNDY3LCJqdGkiOiIzMDYzMDE4M2MxYzU0MmM0OGIyZjYwYzNiN2Q5YmQyZiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.gQqzWXOtX4v5VB128_0lSKOlkKRELfEXXvl66o9QTiE','2023-12-01 20:11:07.765164','2023-12-02 20:11:07.000000',9,'30630183c1c542c48b2f60c3b7d9bd2f'),(114,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU0OTgxOSwiaWF0IjoxNzAxNDYzNDE5LCJqdGkiOiI1NTA0OGQwNjEwY2E0NjEzOWRlMzQwYmQyNzIxOGQ1ZiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.AByx6s7_AAv5UdbqTb1Kze-EMge1bzUvWPUr7KL0t6A','2023-12-01 20:43:39.381334','2023-12-02 20:43:39.000000',9,'55048d0610ca46139de340bd27218d5f'),(115,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU1MzIxNSwiaWF0IjoxNzAxNDY2ODE1LCJqdGkiOiIzMDg1MGQwMmU3ZWU0M2ZmYjcxNDQ5YWU1ZTA3MzA4ZCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.7kCONKekwA091tTPe67dR_uE9htMABN0ok1jM0jd2O8','2023-12-01 21:40:15.157335','2023-12-02 21:40:15.000000',9,'30850d02e7ee43ffb71449ae5e07308d'),(116,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU1NTI0NCwiaWF0IjoxNzAxNDY4ODQ0LCJqdGkiOiI3ZTU3NjVmOThjNzM0NGI2ODY4OWEzODUyZjNiZWFkNCIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.9MfrYZRM9F3savaK_RvsP1Iz4StoLQnLPn0m3jhzhVA','2023-12-01 22:14:04.025227','2023-12-02 22:14:04.000000',9,'7e5765f98c7344b68689a3852f3bead4'),(117,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU1NzUyMiwiaWF0IjoxNzAxNDcxMTIyLCJqdGkiOiJlYTYzOGZhMDlkNTE0MjNiYjdmY2RjNjQ4MzcyMjdkYiIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.FlRrAk-upzMnF4RHQmUOZzf868Dy8Fr5PwMrkUagakA','2023-12-01 22:52:02.170618','2023-12-02 22:52:02.000000',9,'ea638fa09d51423bb7fcdc64837227db'),(118,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU1OTQzNiwiaWF0IjoxNzAxNDczMDM2LCJqdGkiOiI5MTBjNWI2OWNlYzY0NzA1YmEwZDgwNTk2YTNkZjNhOSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.iD_KGjmJZWXyeQ2J3HH0V9bn0ekWwUYpQcMVoTmp1bg','2023-12-01 23:23:56.313445','2023-12-02 23:23:56.000000',9,'910c5b69cec64705ba0d80596a3df3a9'),(119,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMTU2MTUwOCwiaWF0IjoxNzAxNDc1MTA4LCJqdGkiOiI4NmNjZDc3ZGY4MzQ0ZjM5OTcxNTAyN2FiN2VjNDYyYSIsInVzZXJfaWQiOiIxMDA0NzE4OTUzIn0.HKeTPbZDEoQugBqwvzLUr7p4pxXwXrMxP3nTg4hCKqQ','2023-12-01 23:58:28.444730','2023-12-02 23:58:28.000000',9,'86ccd77df8344f399715027ab7ec462a');
UNLOCK TABLES;

--
-- Table structure for table `users_identitydocumenttype`
--

DROP TABLE IF EXISTS `users_identitydocumenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_identitydocumenttype` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_identitydocumenttype`
--

LOCK TABLES `users_identitydocumenttype` WRITE;
INSERT INTO `users_identitydocumenttype` VALUES ('2023-11-26 00:52:51.000000',1,'CEDULA','2023-11-26 00:52:57.157425'),('2023-11-26 00:53:02.000000',2,'TARJETA_IDENTIDAD','2023-11-26 00:53:04.377564'),('2023-11-26 00:53:08.000000',3,'CEDULA_EXTRANJERIA','2023-11-26 00:53:13.108042'),('2023-11-26 00:53:16.000000',4,'PASAPORTE','2023-11-26 00:53:18.717678');
UNLOCK TABLES;

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS `users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_role` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

LOCK TABLES `users_role` WRITE;
INSERT INTO `users_role` VALUES ('2023-11-26 00:53:50.000000',1,'ESTUDIANTE','2023-11-26 00:53:53.010067'),('2023-11-26 00:53:54.000000',2,'DOCENTE','2023-11-26 00:53:57.877980'),('2023-11-26 00:53:59.000000',3,'SUPERADMINISTRADOR','2023-11-26 00:54:02.290656'),('2023-11-26 00:54:03.000000',4,'ADMINISTRADOR','2023-11-26 00:54:06.672657');
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprofile` (
  `created` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `second_last_name` varchar(50) NOT NULL,
  `identification_number` varchar(12) NOT NULL,
  `personal_phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `career_average` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `updated` datetime(6) NOT NULL,
  `identification_type_id` bigint NOT NULL,
  `role_id_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `home_phone_number` varchar(20) NOT NULL,
  `academic_program_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `users_userprofile_identification_number_d02117a0_uniq` (`identification_number`),
  KEY `users_userprofile_identification_type__a690c043_fk_users_ide` (`identification_type_id`),
  KEY `users_userprofile_role_id_id_e1f184c2_fk_users_role_id` (`role_id_id`),
  KEY `users_userprofile_academic_program_id__062433c3_fk_academicP` (`academic_program_id_id`),
  CONSTRAINT `users_userprofile_academic_program_id__062433c3_fk_academicP` FOREIGN KEY (`academic_program_id_id`) REFERENCES `academicPrograms_academicprogram` (`id`),
  CONSTRAINT `users_userprofile_identification_type__a690c043_fk_users_ide` FOREIGN KEY (`identification_type_id`) REFERENCES `users_identitydocumenttype` (`id`),
  CONSTRAINT `users_userprofile_role_id_id_e1f184c2_fk_users_role_id` FOREIGN KEY (`role_id_id`) REFERENCES `users_role` (`id`),
  CONSTRAINT `users_userprofile_user_id_87251ef1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
INSERT INTO `users_userprofile` VALUES ('2023-11-26 03:07:21.190662',3,'John','William','Doe','Smith','123456','+1234567890','123 Main St, City',0,'ACTIVE',0,'2023-11-26 03:07:21.190705',1,2,4,'',1),('2023-11-26 22:36:22.288268',4,'Miguel','Angel','Fernández','López','1004718953','3218484132','RISARALDA-PEREIRA-PARQUE INDUSTRIAL MANZANA 6 CASA 4 SECTOR B',0,'ACTIVE',0,'2023-11-26 22:36:22.288300',1,2,9,'',2),('2023-11-26 23:54:55.873282',5,'Jhon','William','Doe','Sanchez','102030','3218484132','RISARALDA-PEREIRA-Una casa muy bonita',0,'ACTIVE',0,'2023-11-26 23:54:55.873320',1,2,10,'',2),('2023-11-27 19:00:00.873282',6,'Joannes','Batham','Gar','Hallatt','6575432179','580-500-6488','2833 Prairie Rose Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,2,11,'',3),('2023-11-27 19:00:00.873282',7,'Gordy','Mewis','Sharleen','McGillecole','31505193190','915-176-8587','901 Columbus Avenue',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,2,12,'',4),('2023-11-27 19:00:00.873282',8,'Kippie','Stammers','Damara','Prendergast','41824007975','899-991-4963','640 Calypso Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,2,13,'',5),('2023-11-27 19:00:00.873282',9,'Lenore','Craythorne','Garrot','Labusquiere','29224828154','354-992-7821','024 Summit Park',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,2,14,'',6),('2023-11-27 19:00:00.873282',10,'Cris','Halliday','Zola','Cheetham','39680492705','115-628-3212','45782 Autumn Leaf Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,2,15,'',2),('2023-11-27 19:00:00.873282',11,'Penn','Ewbank','Dieter','Krugmann','97840573375','851-971-3835','1 Dahle Place',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,16,'',2),('2023-11-27 19:00:00.873282',12,'Dell','Gudyer','Hewie','Berzon','45889966726','735-137-9519','77648 Southridge Avenue',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,17,'',2),('2023-11-27 19:00:00.873282',13,'Chico','Sprules','Lloyd','Velez','44791044889','439-692-2445','60 Old Shore Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,18,'',2),('2023-11-27 19:00:00.873282',14,'Arielle','Rishworth','Francois','Malsher','17870037324','961-512-7003','431 Sunbrook Plaza',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,19,'',2),('2023-11-27 19:00:00.873282',15,'Dania','Lowne','Welsh','Keeney','87629579838','397-239-8819','18758 Glendale Park',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,20,'',2),('2023-11-27 19:00:00.873282',16,'Edmon','McLarty','Roanne','Allabarton','74258582750','788-847-0235','11301 Myrtle Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,21,'',2),('2023-11-27 19:00:00.873282',17,'Salvidor','Gethen','Alethea','Pfeffle','33635539016','939-482-8370','0 Farmco Point',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,22,'',2),('2023-11-27 19:00:00.873282',18,'Isaac','Ledger','Gayle','Fearnill','71998706274','600-831-3139','588 Buhler Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,23,'',2),('2023-11-27 19:00:00.873282',19,'Chery','Levay','Karylin','Hardes','26661905914','693-299-5271','51621 Cottonwood Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,24,'',2),('2023-11-27 19:00:00.873282',20,'Woodman','Bazley','Noll','Sillars','58823127867','600-607-4240','136 North Junction',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,25,'',2),('2023-11-27 19:00:00.873282',21,'Dionne','Guest','Zachary','Waddams','56353783128','161-974-2312','60 Mosinee Trail',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,26,'',3),('2023-11-27 19:00:00.873282',22,'Thomasine','Reggiani','Kailey','Tribbeck','44946689303','236-746-2851','08 Boyd Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,27,'',3),('2023-11-27 19:00:00.873282',23,'Greer','Pardey','Melania','Rate','59978611450','335-550-3953','9 Fieldstone Road',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,28,'',3),('2023-11-27 19:00:00.873282',24,'Alan','Jedraszczyk','Ulises','Clapson','66290320271','263-743-1593','87 Dorton Point',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,29,'',3),('2023-11-27 19:00:00.873282',25,'Sayre','McKennan','Gregor','Bursnall','84661787689','710-207-1100','3525 Arrowood Terrace',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,30,'',3),('2023-11-27 19:00:00.873282',26,'Akim','Gandrich','Buddie','Lothean','12775146262','635-503-2936','9 Sage Hill',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,31,'',3),('2023-11-27 19:00:00.873282',27,'Corissa','Biggin','Jodi','Wittey','46706165407','953-663-8461','94 Stang Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,32,'',3),('2023-11-27 19:00:00.873282',28,'Glennie','Irwin','Scottie','Cuffe','58621891157','770-710-5256','94091 Twin Pines Hill',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,33,'',3),('2023-11-27 19:00:00.873282',29,'Caryl','Searle','Cole','Zoellner','96070403474','187-149-3740','14 Hermina Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,34,'',3),('2023-11-27 19:00:00.873282',30,'Matthaeus','Schimke','Tobye','Devinn','53917083846','307-116-2423','508 Briar Crest Pass',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,35,'',3),('2023-11-27 19:00:00.873282',31,'Terrijo','OLeahy','Cass','Shoosmith','63592124529','608-236-0562','57411 Calypso Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,36,'',4),('2023-11-27 19:00:00.873282',32,'Dame','Allgood','Josefa','Babb','88739496317','658-505-5921','5 Stang Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,37,'',4),('2023-11-27 19:00:00.873282',33,'Valli','Enterle','Harold','Halliday','29325672364','513-784-6347','7696 Grover Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,38,'',4),('2023-11-27 19:00:00.873282',34,'Loren','Galletly','Carena','Oxx','73484703059','579-578-3598','349 Arizona Crossing',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,39,'',4),('2023-11-27 19:00:00.873282',35,'Theobald','Fazan','Lannie','Forri','92743089526','175-386-2051','667 Sunfield Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,40,'',4),('2023-11-27 19:00:00.873282',36,'Peggy','Baumler','Gilbertina','Hazlewood','90520865613','718-725-9906','29097 Algoma Park',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,41,'',4),('2023-11-27 19:00:00.873282',37,'Osgood','Pohlke','Ward','Hannen','15003653290','753-734-1353','8963 Bonner Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,42,'',4),('2023-11-27 19:00:00.873282',38,'Bea','Wychard','Jemmie','Coldicott','97257697040','216-610-8838','56 Michigan Place',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,43,'',4),('2023-11-27 19:00:00.873282',39,'Brnaba','Tebbitt','Alain','Shephard','80389086879','396-249-4071','3612 Arkansas Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,44,'',4),('2023-11-27 19:00:00.873282',40,'Lutero','Mirfield','Adelle','Pitrelli','3081105472','757-288-4293','145 Roxbury Circle',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,45,'',4),('2023-11-27 19:00:00.873282',41,'Mariam','Ibbs','Concettina','Escalera','87102658453','356-149-4038','89961 Grayhawk Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,46,'',5),('2023-11-27 19:00:00.873282',42,'Gillie','Cranshaw','Mercie','Edgeworth','17688797647','453-127-5224','69 Walton Terrace',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,47,'',5),('2023-11-27 19:00:00.873282',43,'Erin','McLenahan','Emilee','Peetermann','20924234011','448-103-3510','74214 Sullivan Trail',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,48,'',5),('2023-11-27 19:00:00.873282',44,'Jules','Coldrick','Bartholomew','Sturr','8225204723','286-976-0018','306 Derek Place',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,49,'',5),('2023-11-27 19:00:00.873282',45,'Max','Parvin','Nathaniel','Castelletto','16342325848','953-263-0693','49625 Farwell Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,50,'',5),('2023-11-27 19:00:00.873282',46,'Philis','Dorrance','Saunder','McMyler','31311314288','775-814-0455','92 Spaight Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,51,'',5),('2023-11-27 19:00:00.873282',47,'Phillida','Breukelman','Nadya','Mitchely','10678819868','732-740-3812','618 Trailsway Circle',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,52,'',5),('2023-11-27 19:00:00.873282',48,'Wilie','Mitham','Rebekkah','Dudman','64680120406','649-121-4051','7 Jana Place',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,53,'',5),('2023-11-27 19:00:00.873282',49,'Tedi','Foreman','Tremayne','McArtan','96845623604','806-373-8920','08520 Reindahl Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,54,'',5),('2023-11-27 19:00:00.873282',50,'Glynn','Rodolphe','Delcina','Cunah','61380331077','661-728-8209','24361 Kenwood Avenue',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,55,'',5),('2023-11-27 19:00:00.873282',51,'Dominique','Parysowna','Aile','Tasseler','90154108938','539-602-2605','436 7th Drive',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,56,'',6),('2023-11-27 19:00:00.873282',52,'Marris','Whibley','Bondy','Scholefield','17909096667','280-203-0617','3923 Mcbride Road',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,57,'',6),('2023-11-27 19:00:00.873282',53,'Katharine','OSpillane','Corbin','Cordobes','27491212576','869-439-9435','4 Granby Point',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,58,'',6),('2023-11-27 19:00:00.873282',54,'Ella','Cockshtt','Theo','Sparey','78261598906','915-566-4273','6 Macpherson Road',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,59,'',6),('2023-11-27 19:00:00.873282',55,'Gweneth','Barfield','Nonah','Garaway','96032211671','268-924-1940','87084 Rigney Junction',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,60,'',6),('2023-11-27 19:00:00.873282',56,'Abagael','Silbersak','Morena','Mallison','60981241165','615-909-5749','0333 Lunder Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,61,'',6),('2023-11-27 19:00:00.873282',57,'Sanderson','Farmery','Natty','Wheble','11453559322','958-371-0553','232 Prairie Rose Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,62,'',6),('2023-11-27 19:00:00.873282',58,'Brodie','Sudron','Laetitia','Jackalin','450252907','112-606-6210','06407 Onsgard Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,63,'',6),('2023-11-27 19:00:00.873282',59,'Ashil','Groome','Gerick','Siebert','17746391045','272-218-4249','5 South Terrace',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,64,'',6),('2023-11-27 19:00:00.873282',60,'Todd','Matonin','Ula','Bugge','19823537340','357-337-8228','9 Golden Leaf Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,65,'',6),('2023-11-27 19:00:00.873282',61,'Feodora','Denzey','Rebecka','Grabert','70916406937','247-831-3820','0754 Gina Pass',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,66,'',10),('2023-11-27 19:00:00.873282',62,'Lazare','de Courcy','Dotty','Toffano','61938515296','225-570-3736','4399 Dawn Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,67,'',10),('2023-11-27 19:00:00.873282',63,'Rachael','Lyons','Lynde','Valti','63440694871','383-264-7057','26 Mayfield Plaza',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,68,'',10),('2023-11-27 19:00:00.873282',64,'Bancroft','Garvagh','Oona','Holdworth','13952229025','868-889-9017','43 Huxley Park',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,69,'',10),('2023-11-27 19:00:00.873282',65,'Lara','Dozdill','Aldwin','Bernli','84571600311','174-356-9382','47296 Thackeray Plaza',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,70,'',10),('2023-11-27 19:00:00.873282',66,'Alana','Rechert','Vern','Ruben','50923902863','263-947-1206','95 Summer Ridge Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,71,'',10),('2023-11-27 19:00:00.873282',67,'Clayton','Bubear','Malina','Pedden','66632913078','160-602-3371','299 Loftsgordon Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,72,'',10),('2023-11-27 19:00:00.873282',68,'Ardath','Carrel','Dyan','Ffrench','90443843300','215-131-7300','7527 Prentice Junction',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,73,'',10),('2023-11-27 19:00:00.873282',69,'Livy','Meeks','Marcos','Morsley','87707259269','902-127-1955','224 Hintze Point',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,74,'',10),('2023-11-27 19:00:00.873282',70,'Allina','Lapish','Hephzibah','Romaynes','1320793009','955-984-2156','0895 Delaware Road',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,75,'',10),('2023-11-27 19:00:00.873282',71,'Rozalie','Sansom','Regina','Antcliff','79187768929','651-494-9714','412 Mitchell Drive',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,76,'',12),('2023-11-27 19:00:00.873282',72,'Waiter','Alliker','Myer','Haste','5619679126','596-652-0265','700 Melby Circle',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,77,'',12),('2023-11-27 19:00:00.873282',73,'Edeline','Josskovitz','Kristyn','Aldrick','46615080913','760-171-9701','456 Kinsman Hill',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,78,'',12),('2023-11-27 19:00:00.873282',74,'Caz','Rodgers','Lenard','Hackleton','77483170516','115-465-7221','2001 Delladonna Pass',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,79,'',12),('2023-11-27 19:00:00.873282',75,'Kelila','Gritsunov','Dorthy','Sickamore','18504016322','261-746-2022','81 Carberry Way',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,80,'',12),('2023-11-27 19:00:00.873282',76,'George','Causey','Dave','Hucknall','52517631015','531-522-2745','37 West Terrace',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,81,'',12),('2023-11-27 19:00:00.873282',77,'Jilli','Mayte','Wilie','Capeloff','44024168828','389-847-1911','33 Forest Drive',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,82,'',12),('2023-11-27 19:00:00.873282',78,'Irwinn','Griston','Clarine','Wolseley','95173192313','758-683-7487','6 Jay Pass',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,83,'',12),('2023-11-27 19:00:00.873282',79,'Brian','Selland','Florida','Idale','69231464266','703-901-5425','610 Dryden Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,84,'',12),('2023-11-27 19:00:00.873282',80,'Leda','Griffiths','Carree','Janeway','89484372499','882-348-6125','44 Melody Center',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,85,'',12),('2023-11-27 19:00:00.873282',81,'Ciel','Stailey','Susana','Caulkett','98654563880','487-267-1200','8541 Vidon Road',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,86,'',13),('2023-11-27 19:00:00.873282',82,'Jacob','Briggdale','Nelli','Couser','13328207524','548-628-3377','62358 Armistice Terrace',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,87,'',13),('2023-11-27 19:00:00.873282',83,'Yurik','Wasson','Hank','Ollett','69638277768','585-649-2823','0 Northfield Junction',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,88,'',13),('2023-11-27 19:00:00.873282',84,'Merrielle','Aneley','Tab','Maxworthy','34487591310','134-621-3844','09 Barnett Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,89,'',13),('2023-11-27 19:00:00.873282',85,'Willyt','Leedal','Ange','Shaves','27530911932','194-532-7099','084 Dennis Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,90,'',13),('2023-11-27 19:00:00.873282',86,'Trueman','Retter','Heloise','Maffy','55610763278','421-286-4901','2 Heffernan Court',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,91,'',13),('2023-11-27 19:00:00.873282',87,'Kayle','Van Der Straaten','Jojo','53477417675','Ferrolli','870-372-8734','1357 Dahle Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,92,'',13),('2023-11-27 19:00:00.873282',88,'Belicia','Cypler','Koo','Burnand','79303234041','994-408-2166','6 Buell Plaza',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,93,'',13),('2023-11-27 19:00:00.873282',89,'Izzy','Rolfo','Eugenio','Twelftree','55081763358','885-372-2638','93 Graedel Parkway',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,94,'',13),('2023-11-27 19:00:00.873282',90,'Faustina','Bamsey','Leland','Blencowe','89845599225','685-985-6047','2691 Acker Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,95,'',13),('2023-11-27 19:00:00.873282',91,'Helsa','Tollow','Obidiah','Hardisty','6077555016','460-588-4917','8462 Northfield Street',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,96,'',14),('2023-11-27 19:00:00.873282',92,'Tadd','Santry','Almeta','Lorence','78458120573','669-229-8548','563 Golden Leaf Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,97,'',14),('2023-11-27 19:00:00.873282',93,'Marthe','Pounder','Ivonne','Svanetti','71076688007','392-728-0486','76 Beilfuss Trail',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,98,'',14),('2023-11-27 19:00:00.873282',94,'Alikee','Currey','Lari','Daniell','19014832119','545-807-6648','10 Hovde Alley',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,99,'',14),('2023-11-27 19:00:00.873282',95,'Tamas','Gabbatt','Flinn','Guyan','57200119825','747-529-1397','93718 Meadow Ridge Plaza',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',3,1,100,'',14),('2023-11-27 19:00:00.873282',96,'Arabele','Hummerston','Marabel','Yockney','1605336404','660-366-9093','0 Morrow Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,101,'',14),('2023-11-27 19:00:00.873282',97,'Sioux','Gerault','Tiffanie','Niemetz','80972108997','946-447-0798','8 North Junction',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',1,1,102,'',14),('2023-11-27 19:00:00.873282',98,'Tyrone','Overton','Fitz','Guillem','19383072532','814-220-2981','233 Arizona Avenue',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,103,'',14),('2023-11-27 19:00:00.873282',99,'Callean','Ellsom','Norris','Bamlett','18900357458','999-345-9444','7 Logan Way',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,104,'',14),('2023-11-27 19:00:00.873282',100,'Mathilda','Snodin','Helenelizabeth','Drakeford','3647671889','971-513-8234','332 Quincy Park',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,105,'',14),('2023-11-27 19:00:00.873282',101,'Evelyn','Pankhurst.','Artair','Dewane','57469336332','161-101-1914','14 Cascade Hill',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,106,'',15),('2023-11-27 19:00:00.873282',102,'Alyosha','Eastham','Dallis','Broyd','73608526628','372-924-8732','367 Knutson Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,107,'',15),('2023-11-27 19:00:00.873282',103,'Haywood','Penhallurick','Vinnie','Kelwick','67515045434','897-520-4306','6 Helena Lane',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,108,'',15),('2023-11-27 19:00:00.873282',104,'Rakel','Huggett','Bronson','Sangster','87652704191','228-935-3115','411 Sheridan Point',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',2,1,109,'',15),('2023-11-27 19:00:00.873282',105,'Alec','Nealey','Bryana','Cowperthwaite','65011244810','790-758-9363','44543 Eastwood Trail',0,'ACTIVE',0,'2023-11-27 19:00:00.873282',4,1,110,'',15);
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01 19:18:56
