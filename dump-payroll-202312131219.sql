-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: payroll
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attendance_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,'740320','740320','2023-12-11 15:21:47',NULL,'2023-12-11 08:21:47','2023-12-11 08:21:47'),(2,'740320','740320','2023-12-11 15:29:11',NULL,'2023-12-11 08:29:11','2023-12-11 08:29:11'),(3,'740320','740320','2023-12-11 15:30:05',NULL,'2023-12-11 08:30:05','2023-12-11 08:30:05'),(4,'740320','740320','2023-12-11 15:32:33',NULL,'2023-12-11 08:32:33','2023-12-11 08:32:33'),(5,'740320','740320','2023-12-11 16:07:21',NULL,'2023-12-11 09:07:21','2023-12-11 09:07:21'),(6,'740320','740320','2023-12-11 16:07:39',NULL,'2023-12-11 09:07:39','2023-12-11 09:07:39'),(7,'740320','740320','2023-12-11 16:08:46',NULL,'2023-12-11 09:08:46','2023-12-11 09:08:46'),(8,'740320','740320','2023-12-11 16:09:32',NULL,'2023-12-11 09:09:32','2023-12-11 09:09:32'),(9,'740320','740320','2023-12-11 16:11:12',NULL,'2023-12-11 09:11:12','2023-12-11 09:11:12'),(10,'740320','740320','2023-12-11 16:11:33',NULL,'2023-12-11 09:11:33','2023-12-11 09:11:33'),(11,'7403202023-12-11 00:00:00','7403202023-12-11 00:00:00','2023-12-11 16:15:25',NULL,'2023-12-11 09:15:25','2023-12-11 09:15:25'),(12,'740320-2023-12-11 00:00:00','740320-2023-12-11 00:00:00','2023-12-11 16:15:54','2023-12-11 16:36:32','2023-12-11 09:15:54','2023-12-11 09:36:32'),(13,'740320-2023-12-11 00:00:00','740320','2023-12-11 16:35:43','2023-12-11 16:36:32','2023-12-11 09:35:43','2023-12-11 09:36:32'),(14,'740320-2023-12-12 00:00:00','740320','2023-12-12 00:00:00','2023-12-12 01:19:03','2023-12-11 18:13:49','2023-12-11 18:19:03'),(15,'740320-2023-12-12 00:00:00','740320','2023-12-12 00:00:00','2023-12-12 01:19:03','2023-12-11 18:16:31','2023-12-11 18:19:03'),(16,'740320-2023-12-12','740320','2023-12-12 01:19:06','2023-12-12 22:56:05','2023-12-11 18:19:06','2023-12-12 15:56:05'),(17,'740320-2023-12-12','740320','2023-12-12 04:16:29','2023-12-12 22:56:05','2023-12-11 21:16:29','2023-12-12 15:56:05'),(18,'740320-2023-12-12','740320','2023-12-12 04:17:04','2023-12-12 22:56:05','2023-12-11 21:17:04','2023-12-12 15:56:05'),(19,'740320-2023-12-12','740320','2023-12-12 14:35:17','2023-12-12 22:56:05','2023-12-12 07:35:17','2023-12-12 15:56:05'),(20,'740320-2023-12-12','740320','2023-12-12 22:56:02','2023-12-12 22:56:05','2023-12-12 15:56:02','2023-12-12 15:56:05'),(21,'740320-2023-12-13','740320','2023-12-13 01:53:34','2023-12-13 04:35:33','2023-12-12 18:53:34','2023-12-12 21:35:33'),(22,'740320-2023-12-13','740320','2023-12-13 01:53:50','2023-12-13 04:35:33','2023-12-12 18:53:50','2023-12-12 21:35:33'),(23,'740320-2023-12-13','740320','2023-12-13 01:54:00','2023-12-13 04:35:33','2023-12-12 18:54:00','2023-12-12 21:35:33'),(24,'740320-2023-12-13','740320','2023-12-13 01:54:14','2023-12-13 04:35:33','2023-12-12 18:54:14','2023-12-12 21:35:33'),(25,'740320-2023-12-13','740320','2023-12-13 04:26:15','2023-12-13 04:35:33','2023-12-12 21:26:15','2023-12-12 21:35:33'),(26,'740320-2023-12-13','740320','2023-12-13 04:27:39','2023-12-13 04:35:33','2023-12-12 21:27:39','2023-12-12 21:35:33'),(27,'740320-2023-12-13','740320','2023-12-13 04:30:42','2023-12-13 04:35:33','2023-12-12 21:30:42','2023-12-12 21:35:33'),(28,'740320-2023-12-13','740320','2023-12-13 04:31:33','2023-12-13 04:35:33','2023-12-12 21:31:33','2023-12-12 21:35:33'),(29,'740320-2023-12-13','740320','2023-12-13 04:32:12','2023-12-13 04:35:33','2023-12-12 21:32:12','2023-12-12 21:35:33'),(30,'740320-2023-12-13','740320','2023-12-13 04:32:43','2023-12-13 04:35:33','2023-12-12 21:32:43','2023-12-12 21:35:33'),(31,'740320-2023-12-13','740320','2023-12-13 04:35:31','2023-12-13 04:35:33','2023-12-12 21:35:31','2023-12-12 21:35:33'),(32,'425494-2023-12-13','425494','2023-12-13 04:36:06','2023-12-13 04:53:38','2023-12-12 21:36:06','2023-12-12 21:53:38'),(33,'425494-2023-12-13','425494','2023-12-13 04:53:36','2023-12-13 04:53:38','2023-12-12 21:53:36','2023-12-12 21:53:38');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_titles`
--

DROP TABLE IF EXISTS `job_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_titles` (
  `title_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_titles`
--

LOCK TABLES `job_titles` WRITE;
/*!40000 ALTER TABLE `job_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2023_12_10_024536_create_employees_table',1),(5,'2023_12_10_161509_create_attendances_table',1),(6,'2023_12_10_161722_create_departments_table',1),(7,'2023_12_10_161752_create_job_titles_table',1),(8,'2023_12_10_161808_create_salaries_table',1),(9,'2023_12_10_162233_create_reports_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `total_working_hours` int(11) DEFAULT NULL,
  `total_working_day` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'740320-2023-12','740320','2023-12-13',NULL,2,'2023-12-12 21:32:12','2023-12-12 21:35:31'),(2,'425494-2023-12','425494','2023-12-13',NULL,2,'2023-12-12 21:36:06','2023-12-12 21:53:36');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `salary` decimal(8,2) NOT NULL,
  `title_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_working_days` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_employee_id_unique` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'21488','Ms. Mara Oberbrunner','male','lysanne50@example.net','$2y$10$xDG5/TY2HJRU1njSJaNPq.JulxuoGlbV.AdJZou2aTBXrF.JLg5uq','PRD','MGR',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(2,'582546','Mrs. Kathryn Moen I','male','ydenesik@example.net','$2y$10$qs5eMeTsuSZ821IopJAf9.0mRfp9n6aT0kvI6Wl.F35BJ0zo7a.sW','WHS','SPV',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(3,'740320','Adella Schowalter','female','keegan17@example.net','$2y$10$8xFYC301230oF49wTCL5BuV95Nh3.ZU3OmDotBhaAZrw99lG5vqBK','PRD','OPT',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(4,'775420','Josie Flatley','female','verna.stark@example.org','$2y$10$kDygZaVFlcD8571jU87Sv.5OjLJfK4LZd6qwovoouno8xtganzoJC','PRD','OPT',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(5,'923758','Madonna Turcotte','male','christ.dickinson@example.org','$2y$10$Pgzjm.VGgcWR66MYQ59d8u3T.6KSggBhXrgmjt0NhvGicLmAPaDDq','PRD','SPV',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(6,'873621','Marian Hodkiewicz','male','oberbrunner.janae@example.net','$2y$10$F3OuHApjZe4k5OthsEViTOObc8odJxyp/BMo76rUej7llvuM0gsp6','WHS','SPV',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(7,'425494','Emilie McDermott','female','leonora93@example.com','$2y$10$fLwqs8k.sAooQevVy6XVu.mibJNKjgyAJ0I47x/nLL68Z2q0iUVNW','PRD','SPV',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(8,'904356','Julius Kovacek','female','egaylord@example.net','$2y$10$SUBMoJIHvcHr.PfZ2Sltk.1VTmCsq3mwnfWYzIbL2gL9N8IbtUQ6G','PRD','MGR',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(9,'264770','Prof. Tess Bradtke','male','friesen.carey@example.com','$2y$10$Y5K6CExEIZ/L1wc8FDu8fuTCvnST1EmX/8dwH0Wc7u3uGnhPFkRKO','WHS','MGR',0,'2023-12-10 23:44:03','2023-12-10 23:44:03'),(10,'824921','Christy Kerluke','female','lilly47@example.net','$2y$10$TOIF59Gf8dSO3cP/aTirP.09v7LRpZvVDMUr5yc31xm2vjmCvbxMi','PRD','OPT',0,'2023-12-10 23:44:03','2023-12-10 23:44:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'payroll'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-13 12:19:57
