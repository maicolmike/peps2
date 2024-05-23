-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: peps2
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add persona pep',6,'add_personapep'),(22,'Can change persona pep',6,'change_personapep'),(23,'Can delete persona pep',6,'delete_personapep'),(24,'Can view persona pep',6,'view_personapep'),(25,'Can add familiar',7,'add_familiar'),(26,'Can change familiar',7,'change_familiar'),(27,'Can delete familiar',7,'delete_familiar'),(28,'Can view familiar',7,'view_familiar'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'personas','familiar'),(6,'personas','personapep'),(5,'sessions','session'),(8,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-23 16:23:07.706423'),(2,'contenttypes','0002_remove_content_type_name','2023-11-23 16:23:07.768231'),(3,'auth','0001_initial','2023-11-23 16:23:08.013959'),(4,'auth','0002_alter_permission_name_max_length','2023-11-23 16:23:08.067657'),(5,'auth','0003_alter_user_email_max_length','2023-11-23 16:23:08.074131'),(6,'auth','0004_alter_user_username_opts','2023-11-23 16:23:08.082089'),(7,'auth','0005_alter_user_last_login_null','2023-11-23 16:23:08.091444'),(8,'auth','0006_require_contenttypes_0002','2023-11-23 16:23:08.096055'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-23 16:23:08.101839'),(10,'auth','0008_alter_user_username_max_length','2023-11-23 16:23:08.109969'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-23 16:23:08.118646'),(12,'auth','0010_alter_group_name_max_length','2023-11-23 16:23:08.133660'),(13,'auth','0011_update_proxy_permissions','2023-11-23 16:23:08.139728'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-23 16:23:08.148555'),(15,'users','0001_initial','2023-11-23 16:23:08.407209'),(16,'admin','0001_initial','2023-11-23 16:23:08.540488'),(17,'admin','0002_logentry_remove_auto_add','2023-11-23 16:23:08.548514'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-23 16:23:08.556883'),(19,'personas','0001_initial','2023-11-23 16:23:08.636121'),(20,'sessions','0001_initial','2023-11-23 16:23:08.668815'),(21,'users','0002_remove_user_is_admin','2023-11-23 16:23:08.701567');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5w8jlcjhrej8bry4tyt6i19okz0ga22h','.eJxVjMsOwiAQRf-FtSEwMDxcuvcbCDAgVUOT0q6M_65NutDtPefcFwtxW1vYRlnCROzMJDv9binmR-k7oHvst5nnua_LlPiu8IMOfp2pPC-H-3fQ4mjfWjvhUFmFMmeoQhdrERNJ6ROSNEWhASFsTQIAnaqyUIroDZD2CJnY-wOvdTbb:1r6CYV:1Yf-rf8t46eCTGhoC70N6YtLvnNoi9fI-FpbCqNBwKA','2023-12-07 16:27:55.164105');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas_familiar`
--

DROP TABLE IF EXISTS `personas_familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas_familiar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `persona_pep_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personas_familiar_persona_pep_id_5a4457b6_fk_personas_` (`persona_pep_id`),
  CONSTRAINT `personas_familiar_persona_pep_id_5a4457b6_fk_personas_` FOREIGN KEY (`persona_pep_id`) REFERENCES `personas_personapep` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_familiar`
--

LOCK TABLES `personas_familiar` WRITE;
/*!40000 ALTER TABLE `personas_familiar` DISABLE KEYS */;
INSERT INTO `personas_familiar` VALUES (1,' GUERRERO  CARLOS ARTURO','97471206','Cónyuge','Asociado',1),(2,'PASCUAZA LOPEZ LAURA SOFIA','1016113722','Hijo(a)','Asociado',1),(3,'PASCUAZA LOPEZ MARIA JOSE','1004235760','Hijo(a)','Asociado',1),(4,'PASCUAZA LOPEZ CAMILA VALENTINA','1140014593','Hijo(a)','Asociado',1),(5,'PASCUAZA LOPEZ SANTIAGO TOKE','1080061803','Hijo(a)','Retirado',1),(6,'LOPEZ LOPEZ HECTOR RAUL','12956636','Padre','No asociado',1),(7,'AURA ELSA NARVAEZ','30706867','Madre','No asociado',1),(8,'LOPEZ NARVAEZ IGNACIO RAUL','98379661','Hermano(a)','No asociado',1),(9,'LOPEZ NARVAEZ LUZ IMELDA','59822652','Hermano(a)','No asociado',1),(10,'LOPEZ NARVAEZ WILTON EMIRO','98393083','Hermano(a)','No asociado',1),(11,'LOPEZ NARVAEZ HENRY OCTAVIO','5203679','Hermano(a)','No asociado',1),(12,'ANACONA CHANCHI ENRIQUE (Q.E.P.D)','318294','Padre','No asociado',2),(13,'DELGADO VELASCO ELBA','27353287','Madre','Asociado',2),(14,'ANACONA DELGADO EMILIO ENRIQUE','18124637','Hermano(a)','No asociado',2),(15,'ANACONA DELGADO JAVIER (Q.E.P.D)','18125164','Hermano(a)','No asociado',2),(16,'ANACONA DELGADO LUZ ANGELA','69005994','Hermano(a)','Retirado',2),(17,'ANACONA DELGADO JESUS ERNESTO','18126475','Hermano(a)','No asociado',2),(18,'ANACONA DELAGDO JOSE  ALFREDO','18126732','Hermano(a)','No asociado',2),(19,'ANACONA DELGADO JORGE ELIESER','18125669','Hermano(a)','No asociado',2),(20,'ALVARADO VIVEROS MARIANA DE JESUS','41180439','Cónyuge','Retirado',3),(21,'MAIGUAL ALVARADO CAROLINA MARCELA','69055620','Hijo(a)','Asociado',3),(22,'MAIGUAL ALVARADO OSCAR HERNAN','1120216342','Hijo(a)','Retirado',3),(23,'MAIGUAL ALVARADO GABRIEL ALEXANDER','1004131527','Hijo(a)','Retirado',3),(24,'SALAZAR ERNESTO','98339590','Suegro','No asociado',3),(25,'DELGADO SEVERIANO MIGUEL','5349122','Hermano(a)','No asociado',3),(26,'DELGADO MARCIONILA MIGUEL','41180947','Hermano(a)','Asociado',3),(27,'MAIGUAL DELGADO MARUJA','27474289','Hermano(a)','No asociado',3),(28,'MAIGUAL DELGADO PABLO','5349106','Hermano(a)','No asociado',3),(29,'MAIGUAL DELGADO MAGDALENA','41687794','Hermano(a)','No asociado',3),(30,'MAIGUAL DELGADO ALEJANDRO','97490042','Hermano(a)','No asociado',3),(31,'MAIGUAL JOJOA JOHAN','1006908076','Nieto(a)','No asociado',3),(32,'SALAZAR MAIGUAL MARCIAL ERNESTO','1120216932','Nieto(a)','No asociado',3),(33,'ZAMBRANO  LINA MARCELA','1059812076','Cónyuge','No asociado',4),(34,'ACOSTA ZULUAGA MELANNYN ESTRELLA','1123208810','Hijo(a)','No asociado',4),(35,'CAMPUZANO ZAMBRANO ISABEL SOFIA','1061279159','*Hijo(a) adoptivo','No asociado',4),(36,'CAMPUZANO ZAMBRANO JUAN ESTEBAN','1085718140','*Hijo(a) adoptivo','No asociado',4),(37,'SINSAJOA DEJOY SIXTA TULIA','27474546','Madre','No asociado',4),(38,'ZAMBRANO LIDIA','30323389','Suegra','No asociado',4),(39,'ACOSTA SINSAJOA AMANDA ANGELICA','27474800','Hermano(a)','Asociado',4),(40,'ACOSTA SINSAJOA CAMPO JULIAN','97481129','Hermano(a)','Retirado',4),(41,'ACOSTA SINSAJOA DORIS PATRICIA','69055132','Hermano(a)','No asociado',4),(42,'ACOSTA SINSAJOA GLADIS SANDRA','27474971','Hermano(a)','Asociado',4),(43,'DELGADO TENORIO JHON JAIRO','17610572','Cónyuge','Asociado',5),(44,'DELGADO ORTEGON JHAJAIRA ALEXANDRA','1117546454','Hijo(a)','Asociado',5),(45,'BETANCOURTH MOLINA ROSA MARIA','26643631','Madre','No asociado',5),(46,'TENORIO CANTICUS MARIA CARMELINA','40595478','Suegra','No asociado',5),(47,'DELGADO  MEDARDO','17675021','Suegro','No asociado',5),(48,'MOLINA NARVAEZ MERY','26642416','Abuela','No asociado',5),(49,'ORTEGON BETANCOURTH DIANA PATRICIA','40690954','Hermano(a)','No asociado',5),(50,'ORTEGON BETANCOURTH ALEXANDER','17674969','Hermano(a)','No asociado',5),(51,'ORTEGON PALENCIA JOSE MANUEL','17674287','Hermano(a)','No asociado',5),(52,'AREVALO OCAMPO CARLOS ANDRES','18157819','Cónyuge','Retirado',6),(53,'VARGAS VIVAS KEVIN SANTIAGO','1126449000','Hijo(a)','Retirado',6),(54,'AREVALO VIVAS BENYAMIN JESUS','1126139592','Hijo(a)','Retirado',6),(55,'VIVAS BENAVIDES GUILLERMO','18100256','Padre','No asociado',6),(56,'RUALES DE VIVAS AURA ELIZA (Fallecida)',NULL,'Madre','No asociado',6),(57,'OCAMPO  ANA LIBIA','41115098','Suegra','Asociado',6),(58,'AREVALO LUIS ALFONSO','188152210','Suegro','No asociado',6),(59,'VIVAS RUALES CARMEN DORIS','41181033','Hermano(a)','No asociado',6),(60,'CRUZ ITER NILSA IRENE','1125411109','Cónyuge','Asociado',7),(61,'CAMPO CRUZ NIYIRETH ALEXANDRA','1125410370','Hijo(a)','Asociado',7),(62,'CAMPO CRUZ UUKWE YU LEIDY','1125413247','Hijo(a)','No asociado',7),(63,'CAMPO CAMPO JESUS ANTONIO','4721747','Padre','No asociado',7),(64,'PAJA PILLIMUE BLANCA ISMENIA','25546862','Madre','No asociado',7),(65,'ITER DORA CONSUELO','39841365','Suegra','No asociado',7),(66,'CAMPO PECHENE SALUSTRIANO','4721597','Abuelo','No asociado',7),(67,'CAMPO PAJA FERNEY','4720726','Hermano(a)','No asociado',7),(68,'CAMPO PAJA JORGE LUIS','1059597241','Hermano(a)','No asociado',7),(69,'CAMPO PAJA FLOR ESTELA','25547479','Hermano(a)','No asociado',7),(70,'CAMPO PAJA NIDIA YURANI','1059599952','Hermano(a)','No asociado',7),(71,'CAMPO PAJA JARLINTON','1002847698','Hermano(a)','No asociado',7),(72,'CAMPO PAJA JHON WILMAR','1002848502','Hermano(a)','No asociado',7),(73,'CAMPO PAJA ANA LEIDY','1059602313','Hermano(a)','No asociado',7),(74,'BOLANOS  LENNY MARGOTH','27355067','Cónyuge','Asociado',8),(75,'BURBANO BOLAÑOS LAURA ADRIANA','25289842','Hijo(a)','No asociado',8),(76,'BURBANO BOLAÑOS LILIANA ROCIO','1026255937','Hijo(a)','Asociado',8),(77,'BURBANO JURADO JUAN FELIPE','1013263424','Hijo(a)','No asociado',8),(78,'BURBANO PORTILLO ROSA ALBA','27357380','Hermano(a)','No asociado',8),(79,'BURBANO PORTILLA FANNY CONCEPCION','27476489','Hermano(a)','No asociado',8),(80,'BURBANO PORTILLA MARIA REBECA','41180021','Hermano(a)','No asociado',8),(81,'BURBANO PORTILLA JOSE IGNACIO','97470093','Hermano(a)','Asociado',8),(82,'MESTIZO RAMOS MARIA STELLA','69007044','Cónyuge','No asociado',9),(83,'TENORIO MESTIZO HEIDI YAKELINE','1007012737','Hijo(a)','Asociado',9),(84,'TENORIO MESTIZO ALEXANDRA YURLEY','1124851800','Hijo(a)','Asociado',9),(85,'TENORIO IPIA JOSE FRANCISCO','4760039','Padre','Asociado',9),(86,'BUESAQUILLO BASTO MARIA OBDULIA','34592318','Madre','No asociado',9),(87,'MESTIZO CONDA JESUS','10478440','Suegro','No asociado',9),(88,'TENORIO BUESAQUILLO JOSE FRANCISCO','18129282','Hermano(a)','Retirado',9),(89,'TENORIO BUESAQUILLO VICTOR HUGO','1124849304','Hermano(a)','No asociado',9),(90,'TENORIO BUESAQUILLO FLOR LIMBANIA','52890993','Hermano(a)','No asociado',9),(91,'LOPEZ BOTERO RUBIELA','27387167','Madre','No asociado',10),(92,'PERENGUEZ LOPEZ EVER AFRANIO','1085634175','Hermano(a)','Asociado',10),(93,'PERENGUEZ LOPEZ MARTHA LUCIA','36860514','Hermano(a)','Asociado',10),(94,'PERENGUEZ LOPEZ YONI','18156004','Hermano(a)','No asociado',10),(95,'PERENGUEZ LOPEZ JAMES','98344168','Hermano(a)','No asociado',10),(96,'PERENGUEZ LOPEZ JARO','98343961','Hermano(a)','No asociado',10),(97,'PERENGUEZ LOPEZ HENRY','98343793','Hermano(a)','No asociado',10),(98,'PERENGUEZ LOPEZ WILLIAM','98343640','Hermano(a)','No asociado',10),(99,'SOLARTE SALAZAR CARMEN FIDALFIA','30704546','Madre','No asociado',11),(100,'GOMEZ SOLARTE JOHN WILLIAM','97445597','Hermano(a)','No asociado',11),(101,'SOLARTE HOMARO EMIRO','97445863','Hermano(a)','No asociado',11),(102,'GUARNICA SOLARTE SAVIO LEODAN','12754729','Hermano(a)','No asociado',11),(103,'GUARNICA SOLARTE SILVIO RAMIRO','18182656','Hermano(a)','No asociado',11),(104,'GUARNICA SOLARTE OSCAR AUDELO','1122336947','Hermano(a)','No asociado',11),(105,'GUARNICA SOLARTE JESUS HUMBERTO','1085294006','Hermano(a)','No asociado',11),(106,'GUARNICA SOLARTE GREISS TATIANA','1122341590','Hermano(a)','Asociado',11),(107,'LOPEZ IMBAJOA MARIA CLAUDIA MARCELA','39579185','Hijo(a)','No asociado',12),(108,'IMBAJOA ZAMBRANO ISMAELINA','27352030','Madre','No asociado',12),(109,'IMBAJOA FERNANDO ADALBERTO','5299369','Hermano(a)','No asociado',12),(110,'SANCHEZ LOPEZ ANGIE DANIELA','1151971000','Nieto(a)','No asociado',12),(111,'MARIN LOPEZ FRANCISCO YESID','1006665014','Nieto(a)','No asociado',12),(112,'OLIVERO HURTADO INGRID JOHANA','1075229039','Hijo(a)','No asociado',13),(113,'OLIVERO HUERTADO SANDRA LIZETH','1140831683','Hijo(a)','No asociado',13),(114,'OLIVERO HUERTADO KAREN PAOLA','1075268652','Hijo(a)','No asociado',13),(115,'VIVAS RUALES CARMEN DORIS','1075294225','Hijo(a)','Retirado',13),(116,'NOGUERA MUÑOZ RAQUEL','26636472','Madre','No asociado',13),(117,'HURTADO NOGUERA GLORIA','45432177','Hermano(a)','No asociado',13),(118,'HURTADO NOGUERA CARLOS CESAR','73077879','Hermano(a)','No asociado',13),(119,'HURTADO NOGUERA YALILE','26636480','Hermano(a)','Retirado',13),(120,'HURTADO NOGUERA ARISTOBULO','6716464','Hermano(a)','No asociado',13),(121,'HURTADO NOGUERA RAFAEL','6716844','Hermano(a)','No asociado',13),(122,'ROZO OLIVERO CHRISTOPHER ENRIQUE','1075795195','Nieto(a)','Asociado',13),(123,'CALDERON OLIVERO ARIADNE','1077734790','Nieto(a)','No asociado',13),(124,'MARTINEZ OLIVERO JOSE ADRIAN','1076920565','Nieto(a)','No asociado',13),(125,'CHINDOY BECERRA TOMÁS','18126239','Cónyuge','No asociado',14),(126,'CHINDOY CHINDOY DENISSE JINETH','1018486318','Hijo(a)','No asociado',14),(127,'CHINDOY CHINDOY ANGIE NATHALIA','1006946884','Hijo(a)','No asociado',14),(128,'CHINDOY CHINDOY JAIDER OLIVER','1006947696','Hijo(a)','No asociado',14),(129,'CHINDOY JACANAMEJOY FERMIN','1907915','Padre','No asociado',14),(130,'MUCHAVISOY JAJOY DOMICIANA','27361597','Madre','No asociado',14),(131,'CHINDOY MUCHAVISOY SOR MARTHA','69008939','Hermano(a)','No asociado',14),(132,'CHINDOY MUCHAVISOY MARIA MELBA','27361711','Hermano(a)','No asociado',14),(133,'CHINDOY MUCHAVISOY JOSE NORBERTO','18130963','Hermano(a)','No asociado',14),(134,'CHINDOY MUCHAVISOY LUZ ANGELA','1124853239','Hermano(a)','No asociado',14),(135,'APRAEZ CRUZ MARIA EDITA','69005427','Cónyuge','No asociado',15),(136,'LOPE CUARAN JHON FREDDY','86063266','Hijo(a)','No asociado',15),(137,'LOPEZ LOMBANA FAVIO ANDERSON','18129445','Hijo(a)','No asociado',15),(138,'LOPEZ LOMBANA MARLY CAROLINA','27362095','Hijo(a)','No asociado',15),(139,'LOPEZ LOMBANA JAIRO ANDRES','1122782216','Hijo(a)','No asociado',15),(140,'LOPEZ APRAEZ JOSE FERNANDO','1124859701','Hijo(a)','No asociado',15),(141,'APRAEZ MENA JORGE GILBERTO','1906024','Suegro','No asociado',15),(142,'MORILLO ANGIE','1124863274','Yerno/Nuera','No asociado',15),(143,'CORREDOR MARTHA','1124856135','Yerno/Nuera','No asociado',15),(144,'BERMEO HERNANDEZ LINA KATHERINE','1121917216','Yerno/Nuera','No asociado',15),(145,'LOPEZ MORA LUZ ANGELICA','41415995','Hermano(a)','No asociado',15),(146,'LOPEZ MORA JOSE MARIA','19090924','Hermano(a)','No asociado',15),(147,'LOPEZ MORA CUSTODIA','27353333','Hermano(a)','No asociado',15),(148,'LOPEZ MORA SEGUNDO EUDORO','18122682','Hermano(a)','No asociado',15),(149,'LOPEZ GILBERTO','97480145','Hermano(a)','No asociado',15),(150,'LOPEZ MORA SEGUNDO MARCIAL','5296518','Hermano(a)','No asociado',15),(151,'LOPEZ MORA JOSE LUIS ANTONIO','5296689','Hermano(a)','No asociado',15),(152,'LOPEZ BERMEO NICOLAS','1029997297','Nieto(a)','No asociado',15),(153,'LOPEZ BERMEO SANTIAGO','1122941761','Nieto(a)','No asociado',15),(154,'LOPEZ ANGIE MARCELA','1004134090','Nieto(a)','No asociado',15),(155,'MOSQUERA LOPEZ WALNER ESTEBAN','1030081050','Nieto(a)','No asociado',15),(156,'LOPEZ LUNA KEVIN STIVEN','1030080578','Nieto(a)','No asociado',15),(157,'LOPEZ LUNA MARCOS DANIEL','1030082042','Nieto(a)','No asociado',15),(158,'LOPEZ GOMEZ TATIANA VALENTINA','1124313806','Nieto(a)','No asociado',15),(159,'MENESES TIMANA WILSON STIVEN','1007397570','Hijo(a)','No asociado',16),(160,'MENESES TIMANA LIZETH DAYANA','1124867380','Hijo(a)','No asociado',16),(161,'GARZON SARRIA ALBA MARIA','48550020','Madre','No asociado',16),(162,'MENESES GARZON DEIBER','76342799','Hermano(a)','No asociado',16),(163,'MENESES GARZON NIRZA','34659617','Hermano(a)','No asociado',16),(164,'MENESES GARZON AIDA LIDA','34658982','Hermano(a)','No asociado',16),(165,'ROSADA CUELLAR ALISSON CAROLINA','1094279387','Hijo(a)','Asociado',17),(166,'TABOADA CUELLAR SARA DANIELA','1018450922','Hijo(a)','Asociado',17),(167,'ALVARADO MACANILLA MARIA JANNLE','26636800','Padre','No asociado',17),(168,'HERNANDEZ ALVARADO LILIANA','1151939106','Hermano(a)','Asociado',17),(169,'HERNANDEZ ALVARADO DIANA ISABEL','1122727230','Hermano(a)','No asociado',17),(170,'HERNANDEZ ALVARADO ALVEIRO','97447448','Hermano(a)','No asociado',17),(171,'GREFFA DIAZ DAMARIS DALILA','1122731407','Cónyuge','No asociado',18),(172,'DELGADO PERLAZA DANIVER','1143953447','Hijo(a)','No asociado',18),(173,'DELGADO PERLAZA MARTIN ALONSO','1234190725','Hijo(a)','No asociado',18),(174,'DELGDO GREFFA SHIREL ADAIA','1122735656','Hijo(a)','No asociado',18),(175,'GREFFA YOGE EVELIO','6567858','Suegro','No asociado',18),(176,'DIAZ GONZALES SANDRA LILIANA','41059711','Suegra','No asociado',18),(177,'DELGADO ORDOÑEZ DIEGO EUGENIO','5272845','Hermano(a)','No asociado',18),(178,'DELGADO ORDOÑEZ DIMAS NICOLAS','87180043','Hermano(a)','No asociado',18),(179,'DELGADO ORDOÑEZ GERARDINA','5905028','Hermano(a)','No asociado',18),(180,'DELGADO ORDOÑEZ AURA','59105039','Hermano(a)','No asociado',18),(181,'DELGADO ORDOÑEZ ANGEL','87180028','Hermano(a)','No asociado',18),(182,'VALENCIA SANDRA PATRICIA','25349747','Cónyuge','No asociado',19),(183,'ELAGO VALENCIA EENDEXI J LIZETH','1193106966','Hijo(a)','No asociado',19),(184,'ELAGO VALENCIA KEVIN YAMIR','1058731402','Hijo(a)','Asociado',19),(185,'ELAGO VALENCIA JAMES YOHAN','1060107777','Hijo(a)','No asociado',19),(186,'ELAGO PEÑA JOSE DOMINGO','4645429','Padre','No asociado',19),(187,'QUITUMBO GUETOTO JULIA','25348444','Madre','No asociado',19),(188,'RAMOS CAMPO RUSNURA','25355744','Suegra','No asociado',19),(189,'ELAGO QUITUMBO ZORAIDA','1060100927','Hermano(a)','No asociado',19),(190,'ELAGO QUITUMBO KELY JOHANA','1060107713','Hermano(a)','No asociado',19),(191,'ABARKA VELASQUEZ CARLOS EDUARDO','1075251035','Hijo(a)','Retirado',20),(192,'ABARKA VELASQUEZ JODY LORENA','1075262722','Hijo(a)','No asociado',20),(193,'ABARKA VELASQUEZ LESLY JULIANA','1006814738','Hijo(a)','No asociado',20),(194,'ABARKA VELASQUEZ SARY PAULA LISETH','1122722704','Hijo(a)','No asociado',20),(195,'TAFUR VARGAS KATHERIN','1075248653','Yerno/Nuera','Asociado',20),(196,'DUARTE SILVA ARMANDO','6715751','Hermano(a)','Asociado',20),(197,'NIETO SILVA MERCEDES ROSA','52233593','Hermano(a)','Retirado',20),(198,'ABARCA SILVA SOLCIRE','26637048','Hermano(a)','Asociado',20),(199,'ABARKA TAFUR MADELEINE','1077232872','Nieto(a)','No asociado',20),(200,'ABARKA TAFUR JOSE EDUARDO','1077242791','Nieto(a)','No asociado',20),(201,'ABARKA TAFUR GIAN CARLOS','1077251706','Nieto(a)','No asociado',20),(202,'QUITIAQUEZ JESUS ANIBAL','97471382','Cónyuge','No asociado',21),(203,'MUYUY QUINCHOA JUAN CARLOS','1121507625','Hijo(a)','No asociado',21),(204,'QUITIAQUEZ QUINCHOA JESUS ANDRES','1121508320','Hijo(a)','Retirado',21),(205,'QUITIAQUEZ QUINCHOA PAOLA ANDREA','1124312676','Hijo(a)','No asociado',21),(206,'SALVADORA TISOY','27468098','Padre','No asociado',21),(207,'QUINCHOA TISOY FRANCISCO JAVIER','97471580','Hermano(a)','No asociado',21),(208,'QUINCHOA TISOY ROSA ETELVINA','27470222','Hermano(a)','Retirado',21),(209,'QUINCHOA TISOY MARIA ESPERANZA','27469893','Hermano(a)','No asociado',21),(210,'MOREANO MURIEL DIGNA STELLA','41103544','Cónyuge','No asociado',22),(211,'ESCOBAR MOREANO HELENA PATRICIA','67039863','Hijo(a)','No asociado',22),(212,'ESCOBAR MOREANO RAUL ARMANDO','1143825245','Hijo(a)','No asociado',22),(213,'ESCOBAR MOREANO SAMIRA FERNANDA','1124863560','Hijo(a)','No asociado',22),(214,'ESCOBAR MOREANO CRISTIAN CAMILO','1007548857','Hijo(a)','Retirado',22),(215,'ROSA MURIEL','39835086','Suegra','No asociado',22),(216,'ESCOBAR RAMIREZ ALEXANDER','18122567','Hermano(a)','No asociado',22),(217,'ESCOBAR RAMIREZ ARTURO ASDRUBAL','18101060','Hermano(a)','Retirado',22),(218,'ESCOBAR RAMIREZ JAVIER','18101945','Hermano(a)','No asociado',22),(219,'ESCOBAR RAMIREZ NELLY','27360384','Hermano(a)','No asociado',22),(220,'ESCOBAR RAMIREZ NUBIA','27359817','Hermano(a)','No asociado',22),(221,'ESCOBAR RAMIREZ RICARDO','18102189','Hermano(a)','No asociado',22),(222,'ESCOBAR RAMIREZ HAROLD','93396197','Hermano(a)','No asociado',22),(223,'ESCOBAR RAMIREZ OSCAR','18127901','Hermano(a)','No asociado',22),(224,'VALLEJO SIGINDIOY NELSON NORBEY','6394589','Hijo(a)','Asociado',23),(225,'VALLEJO SIGINDIOY LUIS HUVEIMAR','75104776','Hijo(a)','No asociado',23),(226,'VALLEJO SIGINDIOY JULIO ALFONSO','1122782251','Hijo(a)','Retirado',23),(227,'VALLEJO SIGINDIOY INGRID YURANY','1122783672','Hijo(a)','Retirado',23),(228,'SIGINDIOY DEJOY MIGUEL','5349860','Padre','Asociado',23),(229,'SIGINDIOY MUCHAVISOY MARIA GLORIA','41181081','Hermano(a)','Asociado',23),(230,'VILLARREAL VALLEJO JHORDAN STIVEN','1124313731','Nieto(a)','Retirado',23),(231,'VALLEJO OBANDO MIGUEL ESNEIDER','1124312624','Nieto(a)','Retirado',23),(232,'VALLEJO JACANAMEJOY BINYETH JULIANA','1124314445','Nieto(a)','Asociado',23),(233,'GARCIA SOLARTE SULEYMA MERCEDES','69027325','Cónyuge','No asociado',24),(234,'HERRERA GARCIA FERNANDO NICOLAS','1124854347','Hijo(a)','No asociado',24),(235,'HERRERA GARCIA MARIA CAMILA','1124858089','Hijo(a)','No asociado',24),(236,'LAGOS GARCIA DANIA LISETH','1124866506','Hijo(a)','No asociado',24),(237,'HERRERA EFRAIN','2637541','Padre','No asociado',24),(238,'SOLARTE DE GARCIA LUZ ESTELA','27474266','Suegra','Asociado',24),(239,'GARCIA DELGADO SEGUNDO','5297548','Suegro','No asociado',24),(240,'NARVAEZ BLANCA NIDIA','59831734','Hermano(a)','No asociado',24),(241,'HURTADO CAMPOS FLOR MERY','69006953','Cónyuge','No asociado',25),(242,'TISOY HURTADO JHENNY CAROLINA ','1124855301','Hijo(a)','No asociado',25),(243,'TISOY HURTADO CRISTIAN ALBERTO','1124861465','Hijo(a)','No asociado',25),(244,'TISOY HURTADO FLOR MERY','1026574219','Hijo(a)','No asociado',25),(245,'TISOY HURTADO MARIA ALEJANDRA','1125184815','Hijo(a)','No asociado',25),(246,'BECERRA ALEXANDER','1124849056','Yerno/Nuera','No asociado',25),(247,'TISOY ADELINA','41108494','Hermano(a)','No asociado',25),(248,'HOYOS TISOY DANIEL STIVEN','1026572006','Nieto(a)','No asociado',25),(249,'HUACA TISOY MARIA STEFANNY','1120060042','Nieto(a)','No asociado',25),(250,'TISOY HURTADO LUZ MIREYA','1124853391','Hijo(a)','Asociado',25),(251,'TISOY HURTADO LUZ DARY','1124852385','Hijo(a)','No asociado',25),(252,'FLOREZ LUNA JONATHAN FRANCISCO','80074890','Hijo(a)','Asociado',26),(253,'LINARES DE LUNA MELANIA','27468030','Madre','No asociado',26),(254,'LUNA LINARES MARIN DE JESUS','18112298','Hermano(a)','Asociado',26),(255,'LUNA LINARES MILVIAM DE JESUS','27469930','Hermano(a)','Asociado',26),(256,'LUNA LINARES GUIOMAR DEL CARMEN','27470025','Hermano(a)','Asociado',26),(257,'LUNA LINARES PAULO JUAN','5348223','Hermano(a)','No asociado',26),(258,'LUNA LINARES EULER','5348452','Hermano(a)','No asociado',26),(259,'LUNA LINARES NEILA MELANIA','27470237','Hermano(a)','Asociado',26),(260,'ROA MATURANA GEOSER','1131044926','Hijo(a)','Asociado',27),(261,'ROA MATURANA GEOSELIN','1122733890','Hijo(a)','No asociado',27),(262,'ROA COPETE GIOSAN YAMARY','1077996831','Hijo(a)','No asociado',27),(263,'ROA MORENO GEOHAN DAVID','1122731062','Hijo(a)','Asociado',27),(264,'BERMUDEZ HINESTROZA MARCELINA','26393818','Madre','No asociado',27),(265,'ROA BERMUDEZ YEARCY','35587945','Hermano(a)','No asociado',27),(266,'YANNY ROA BERMUDEZ','1131044056','Hermano(a)','No asociado',27),(267,'ZAMBRANO CORAL ZENAYDA EDITH','1124849149','Cónyuge','Asociado',28),(268,'RUIZ ZAMBRANO JULIAN FERNANDO','1124857072','Hijo(a)','No asociado',28),(269,'RUIZ ZAMBRANO MARIA CELESTE','1030023525','Hijo(a)','No asociado',28),(270,'CORAL TAQUEZ BLANCA OLIVA','27356294','Suegra','No asociado',28),(271,'ZAMBRANO QUENAN JESUS MELANIO','16658926','Suegro','No asociado',28),(272,'TACAN ARTEAGA HAROLD GEOVANY','1121506373','Hermano(a)','No asociado',28),(273,'TACAN ARTEAGA ANDREA NATHALY','1121506799','Hermano(a)','No asociado',28),(274,'PAZ BENAVIDES FAVIO ALEJANDRO','1096221741','Hijo(a)','Asociado',29),(275,'BENAVIDES MANUEL ALBERTO','18105316','Padre','No asociado',29),(276,'BENAVIDES HERNANDEZ OSCAR','1123323462','Hermano(a)','No asociado',29),(277,'BENAVIDES HERNANDEZ NEREIDA','29973913','Hermano(a)','No asociado',29),(278,'BENAVIDES HERNANDEZ MARCELA','1123323015','Hermano(a)','No asociado',29),(279,'MENESES CASTRO CARLOS ADRIAN','1126445007','Cónyuge','Retirado',30),(280,'MENESES CUARAN KATHERYN BRYANNA','1085311556','Hijo(a)','No asociado',30),(281,'HERNANDEZ CUARAN ZHARICK MISHELLE','1081274244','Hijo(a)','Asociado',30),(282,'CUARAN RUANO HERMILO RUPERTO','5237166','Padre','No asociado',30),(283,'RUANO CUARAN ROSALBA','59787203','Madre','No asociado',30),(284,'MENESES PARRA JOEL','1505408','Suegro','No asociado',30),(285,'CUARAN RUANO JENNER STIVEN','87063902','Hermano(a)','No asociado',30),(286,'ARAUJO BRAVO ROSALBA VERONICA','27354882','Madre','No asociado',31),(287,'JUAN MARIN CORDOBA','18123814','Padre','No asociado',31),(288,'CORDOBA ARAUJO LEYDA LILIANA','1124848759','Hermano(a)','Retirado',31),(289,'CORDOBA ARAUJO BLANCA YANIRA','69009539','Hermano(a)','Asociado',31),(290,'MARIXA JOHANA CORDOBA ARAUJO','1124860992','Hermano(a)','No asociado',31),(291,'EDUAR HAROL CORDOBA ARAUJO','1124853090','Hermano(a)','No asociado',31),(292,'HURTADO VELASQUEZ WILSON','6716225','Padre','Asociado',32),(293,'ALZATE DIAZ LUZ DARY','26637003','Madre','No asociado',32),(294,'HURTADO ALZATE LUZ ELENA','1129577499','Hermano(a)','No asociado',32),(295,'JURTADO ALZATE CARLOS ANDRES','1122727347','Hermano(a)','No asociado',32),(296,'HURTADO ALZATE LORENIS','1152692065','Hermano(a)','No asociado',32),(297,'GUERRERO  ANABEIBA','41117184','Cónyuge','No asociado',33),(298,'QUETA GUERRERO ANA KATERINE','1126447460','Hijo(a)','Asociado',33),(299,'QUETA GOMEZ ENEIDA PATRICIA','1089242115','Hijo(a)','Retirado',33),(300,'HILDA GUERRERO','41100692','Suegra','No asociado',33),(301,'DANIEL URRESTI QUETA','1126457228','Yerno/Nuera','No asociado',33),(302,'QUETA QUINTERO NELLY SALOME','69085060','Hermano(a)','No asociado',33),(303,'QUETA QUINTERO JESUS FEDERMAN','5298614','Hermano(a)','No asociado',33),(304,'QUETA QUINTERO CANDIDA INOCENCIA','27357637','Hermano(a)','Asociado',33),(305,'QUETA QUINTERO TOBIAS SALOMON','5298625','Hermano(a)','No asociado',33),(306,'URRESTI QUETA IAN MANUEL','1126460616','Nieto(a)','No asociado',33),(307,'IAN MANUEL URRESTI QUETA','1140015311','Nieto(a)','No asociado',33),(308,'RIOS QUETA MARTIN','1126139881','Nieto(a)','No asociado',33),(309,'MUÑOZ TRUJILLO FAISULI','1006956837','Cónyuge','Asociado',34),(310,'MAVISOY MUÑOZ MAICOL ANDRES','1124860007','Hijo(a)','No asociado',34),(311,'MAVISOY MUÑOZ LUIS FELIPE','1120070644','Hijo(a)','No asociado',34),(312,'CHAVEZ MUÑOZ LISANY','1120068375','Hijo(a) adoptivo','Retirado',34),(313,'MAVISOY MUTUBAJOY CLEMENCIA','69005618','Madre','Asociado',34),(314,'MUÑOZ TRUJILLO OEFELINA','69011005','Suegra','No asociado',34),(315,'MUTUMBAJOY DE MAVISOY JOSEFA','27475316','Abuela','No asociado',34),(316,'EDIXON ROSERO MAVISOY','1124860217','Hermano(a)','No asociado',34),(317,'ROSERO MAVISOY BLANCA LICENIA','1124853246','Hermano(a)','No asociado',34),(318,'AREVALO PAYA SAMANTHA','1122735078','Hijo(a)','Asociado',35),(319,'RODRIGUEZ CASTRO CARMEN JULIA','30000668','Madre','Retirado',35),(320,'AREVALO RODRIGUEZ LUIS FERNANDO','16762273','Hermano(a)','No asociado',35),(321,'AREVALO RODRIGUEZ CARLOS ALBERTO','6716903','Hermano(a)','No asociado',35),(322,'AREVALO RODRIGUEZ ERASMO','19446682','Hermano(a)','No asociado',35),(323,'AREVALO RODRIGUEZ ALFONSO','6715390','Hermano(a)','No asociado',35),(324,'MENESES PANTOJA EDY YANETH','41145219','Cónyuge','Asociado',36),(325,'RODRIGUEZ MENESES KAREN YULIETH','1122337649','Hijo(a)','Asociado',36),(326,'RODRIGUEZ TAICUS NIDIA JAKELIN','1122336443','Hijo(a)','Asociado',36),(327,'RODRIGUEZ MENESES MARIA CELESTE','1122344386','Hijo(a)','No asociado',36),(328,'DIAZ CARRERA MARIA CLEMENTINA','69030112','Madre','Asociado',36),(329,'RODRIGUEZ DIAZ GIL MAURICIO','18182655','Hermano(a)','Asociado',36),(330,'RODRIGUEZ DIAZ JUAN CARLOS','1122339372','Hermano(a)','No asociado',36),(331,'ERAZO DIAZ LUZ DARY','1085323265','Hermano(a)','No asociado',36),(332,'HERNANDEZ SANDRA PATRICIA','39842034','Hijo(a)','No asociado',37),(333,'HENRIQUEZ HERNANDEZ MARGOD CRISTINA','41109668','Hijo(a)','No asociado',37),(334,'ARTEAGA HERNANDEZ VIVIANA MARIA','1123204120','Hijo(a)','No asociado',37),(335,'HERNANDEZ  JESUS ARMANDO','1123324445','Hijo(a)','No asociado',37),(336,'HERNANDEZ ANDERSON DAVID','1006848967','*Hijo(a) adoptivo','No asociado',37),(337,'GOMEZ ANGULO HILBERTH ANDRES','97435804','Yerno/Nuera','No asociado',37),(338,'ANGULO SANCHEZ ELVAR','94429078','Yerno/Nuera','No asociado',37),(339,'CERON CHALACAN JOHANA MARCELA','1123329039','Yerno/Nuera','No asociado',37),(340,'HERNANDEZ ILES LUIS GILBERTO','5297810','Hermano(a)','No asociado',37),(341,'HERNANDEZ ILES SEGUNDO RODRIGO','97450001','Hermano(a)','Asociado',37),(342,'HERNANDEZ ILES DANIEL','16647838','Hermano(a)','No asociado',37),(343,'HERNANDEZ ILES MARIA DEL CARMEN','41106023','Hermano(a)','No asociado',37),(344,'HERNANDEZ ILES FLORALBA','41103942','Hermano(a)','No asociado',37),(345,'HERNANDEZ ILES LUCIA','41104384','Hermano(a)','No asociado',37),(346,'HERNANDEZ ILES OLGA LUCIA','41106881','Hermano(a)','No asociado',37),(347,'HERNANDEZ ILES GLORIA INES','41106882','Hermano(a)','No asociado',37),(348,'HERNANDEZ ILES MILENA BEATRIZ','33205196','Hermano(a)','No asociado',37),(349,'HERNANDEZ ILES MARIA CONCEPCION','69028181','Hermano(a)','No asociado',37),(350,'HERNANDEZ ILES ANTONIO ABADIAS','18127251','Hermano(a)','No asociado',37),(351,'GOMEZ ENRIQUEZ JEFERSON ANDRES','1006851104','Nieto(a)','No asociado',37),(352,'ESTUPIÑAN HERNANDEZ LUIS ALBEIRO','1006848965','Nieto(a)','No asociado',37),(353,'CORTES HERNANDEZ BRAYAN STIVEN','1006850760','Nieto(a)','No asociado',37),(354,'CORTES HERNANDEZ CAMILO','1123323289','Nieto(a)','No asociado',37),(355,'HERNANDEZ BRENDA VANESSA','1006848547','Nieto(a)','No asociado',37),(356,'ESTUPIÑAN HERNANDEZ KEVIN ALEJANDRO','1193082189','Nieto(a)','No asociado',37),(357,'ANGULO ARTEAGA LIZETH YADIRA','1005832116','Nieto(a)','No asociado',37),(358,'ANGULO ARTEAGA SHARY SMITH','1123321973','Nieto(a)','No asociado',37),(359,'ANGULO ARTEAGA DAIRO MATIAS','1123334743','Nieto(a)','Asociado',37),(360,'HERNANDEZ CERON JOHAN SMITH','1124314652','Nieto(a)','No asociado',37),(361,'HERNANDEZ CERON JOSIMAR YAMPIER','1124316262','Nieto(a)','No asociado',37),(362,'HERNANDEZ CERON DERICK JOSSEPH','1122343341','Nieto(a)','No asociado',37),(363,'GARCIA CORTES RUBY LEONOR','31322226','Hijo(a)','Asociado',38),(364,'GARCIA CORTES DIEGO ANTONIO','18146205','Hijo(a)','No asociado',38),(365,'GARCIA CORTES LUIS GERMAN','1130145230','Hijo(a)','Asociado',38),(366,'CORTES QUIÑONES JUSTO GERMAN','5218574','Padre','No asociado',38),(367,'QUIJANO CABEZAS AURA FIDELA','27121966','Madre','No asociado',38),(368,'LUNA CASTILLO KELLY JHOANNA','59313820','Yerno/Nuera','No asociado',38),(369,'CORTES QUIJANO NIDIA ESPERANZA','30727639','Hermano(a)','No asociado',38),(370,'CORTES QUIJANO ALBA GERMANIA','59813396','Hermano(a)','No asociado',38),(371,'CORTES QUIJANO AURA MAGALI','41107313','Hermano(a)','Asociado',38),(372,'CORTES QUIJANO DENIS AMPARO','41105524','Hermano(a)','No asociado',38),(373,'GARCIA CORTES JUAN JOSE','1123334151','Nieto(a)','Asociado',38),(374,'GARCIA MANTILLA GISSETH VALENTINA','1123334171','Nieto(a)','No asociado',38),(375,'GAMBOA CORREA DANIELA','1006850925','Nieto(a)','No asociado',38),(376,'PANTOJA  FRANCISCO','5213730','Cónyuge','Retirado',39),(377,'PANTOJA HERNANDEZ MIGUEL ANGEL','1126458220','Hijo(a)','No asociado',39),(378,'PANTOJA HERNANDEZ KAREN DAYANA','1081274342','Hijo(a)','Asociado',39),(379,'ESTRADA DE HERNANDEZ BEATRIZ','27164315','Madre','No asociado',39),(380,'HERNANDEZ ESTRADA MARTHA LUCIA','30726948','Hermano(a)','Retirado',39),(381,'HERNANDEZ ESTRADA RICARDO GUILLERMO','19367668','Hermano(a)','Retirado',39),(382,'HERNANDEZ ESTRADA RUTH ALICIA','27167266','Hermano(a)','Retirado',39),(383,'HERNANDEZ ESTRADA CLEMENCIA ELVIRA','41474711','Hermano(a)','No asociado',39),(384,'HERNANDEZ ESTRADA ROSA EDILIA','27167714','Hermano(a)','No asociado',39),(385,'BURBANO CAICEDO RODRIGO SIGIFREDO','5283339','Padre','Asociado',40),(386,'GARCIA ERASO MARIA GRACIELA','27302286','Madre','Asociado',40),(387,'BURBANO GARCIA SANDRA MIREYI','36756934','Hermano(a)','No asociado',40),(388,'MARTINEZ MONTILLA LORENA ELIZABETH','69006692','Cónyuge','No asociado',41),(389,'ACHICANOY MARTINEZ VALERIE TATIANA','1030080803','Hijo(a)','Asociado',41),(390,'ACHICANOY MARTINEZ JUAN PABLO','1124855407','Hijo(a)','Asociado',41),(391,'MONTILLA NARVAEZ MARIA CARMELA','27353238','Suegra','No asociado',41),(392,'ACHICANOY MARTINEZ MANUEL ANTONIO','12999282','Hermano(a)','No asociado',41),(393,'ACHICANOY MARTINEZ MARIA YAZMIN','59822062','Hermano(a)','No asociado',41),(394,'ACHICANOY MARTINEZ WILSON OLMEDO','76319890','Hermano(a)','No asociado',41),(395,'PORTILLA PAI OSCAR AUSTO','18130250','Hijo(a)','No asociado',42),(396,'PORTILLA PAI WILMAN ORLANDO','18130459','Hijo(a)','Asociado',42),(397,'PORTILLA PAI EDWIN ANDRES','1124850476','Hijo(a)','No asociado',42),(398,'ROMO ROSERO SONIA','39841968','Yerno/Nuera','Retirado',42),(399,'MACUACE PAI JAVIER','13053072','Hermano(a)','No asociado',42),(400,'MACUACE PAI MARIA EUGENIA','59671014','Hermano(a)','Asociado',42),(401,'MACUACE PAI WILINTON','18127082','Hermano(a)','Asociado',42),(402,'MACUACE PAI NUBIA MARLENY','27359481','Hermano(a)','No asociado',42),(403,'MACUACE PAI  ROSA JAKELINE','27361693','Hermano(a)','No asociado',42),(404,'MACUACE PAI MILENA','27359393','Hermano(a)','No asociado',42),(405,'MACUACE PAI WILSON','1124898852','Hermano(a)','No asociado',42),(406,'PORTILLA ROMO WILMAN ALEXIS','1030080232','Nieto(a)','No asociado',42),(407,'PORTILLA ROMO EDWIN ORLANDO','1030080233','Nieto(a)','No asociado',42),(408,'PORTILLA BERMEO EINER ANDRES','1120066891','Nieto(a)','No asociado',42),(409,'CHINDOY CHINDOY CECILIA','69005711','Cónyuge','Asociado',43),(410,'PIAGUAJE CHINDOY ASTRID YULIANA','1123311172','Hijo(a)','No asociado',43),(411,'PIAGUAJE CHINDOY DARIL HANS','1123314223','Hijo(a)','No asociado',43),(412,'PIAGUAJE CHINDOY GLADIS TATIANA','1123208572','Hijo(a)','No asociado',43),(413,'PIAGUAJE YAIGUAJE HUMBERTO','6564778','Padre','No asociado',43),(414,'CABRERA DE PIAGUAJE MARIA GLADYS','41235029','Madre','No asociado',43),(415,'PIAGUAJE CABRERA SANDRO FEDERMAN','18189746','Hermano(a)','No asociado',43),(416,'PIAGUAJE CABRERA CLAUDIA ARACELI','41135112','Hermano(a)','No asociado',43),(417,'PIAGUAJE CABRERA GLADYS ESNEDA','69026970','Hermano(a)','No asociado',43),(418,'TOLEDO PIAGUAJE NICOLAS ANDRES','1123313808','Nieto(a)','No asociado',43),(419,'GOMEZ PIAGUAJE JUAN DAVID','1123213224','Nieto(a)','No asociado',43),(420,'ROSERO NARVAEZ AYDA MARINA','69030350','Cónyuge','Asociado',44),(421,'VALLEJO ROSERO YUDY ANDREA','1122338106','Hijo(a)','Asociado',44),(422,'VALLEJO ROSERO MILLER FERNEY','1122338761','Hijo(a)','No asociado',44),(423,'VALLEJO ROSERO DIMAR ANCIZAR','1122339627','Hijo(a)','Asociado',44),(424,'VALLEJO ROSERO JANER ARVEY','1122340288','Hijo(a)','No asociado',44),(425,'VALLEJO ROSERO VIVIANA ESNEIDA','1122341827','Hijo(a)','Asociado',44),(426,'VALLEJO CARRERA EDIS HUMBERTO','1124848420','Hijo(a)','Asociado',44),(427,'MADROÑERO CORREA AURA NELLY','1088735315','Yerno/Nuera','No asociado',44),(428,'ROSERO BUESAQUILLO YEIMY MARCELA','1127078526','Yerno/Nuera','Asociado',44),(429,'AREVALO RUALES RONALD FABRICIO','1122342613','Yerno/Nuera','No asociado',44),(430,'VALLEJO DIAZ MARIA AURINA','59793210','Hermano(a)','No asociado',44),(431,'DIAZ DIAZ CARMELA','29703824','Hermano(a)','No asociado',44),(432,'VALLEJO DIAZ MARIA VISITACIÓN','27423660','Hermano(a)','No asociado',44),(433,'ROSERO VALLEJO LESLLYE SHAID','1087411890','Nieto(a)','Asociado',44),(434,'VALLEJO ROSERO EMANUEL SANTIAGO','1126143907','Nieto(a)','Asociado',44),(435,'AREVALO VALLEJO JUAN FELIPE','1122342353','Nieto(a)','Asociado',44),(436,'VALLEJO MADROÑERO ARLES MATHIAS','1122343434','Nieto(a)','No asociado',44),(437,'VALLEJO ROSERO HELLEN ISABELLA','1127079899','Nieto(a)','Asociado',44),(438,'VALLEJO ROSERO YUDY ANDREA','1122338106','Cónyuge','Asociado',45),(439,'GUACANEME CORREA YORJAN MAURICIO','1084331086','Hijo(a)','No asociado',45),(440,'GUACANEME ALFONSO','19369637','Padre','No asociado',45),(441,'CASTAÑO MARTINEZ GLORIA AMPARO','31197242','Madre','No asociado',45),(442,'VALLEJO DIAZ MARCO ANTONIO','87451308','Suegro','Asociado',45),(443,'ROSERO NARVAEZ AYDA','69030350','Suegra','Asociado',45),(444,'GUACANEME CASTAÑO JAIRO ALFONSO','89063585','Hermano(a)','Asociado',45),(445,'ZULUAGA CASTAÑO LIZ ANGELITH','1116245104','Hermano(a)','Asociado',45),(446,'RAMOS RAMOS OMAR YOVANNY','98215313','Cónyuge','No asociado',53),(447,'RAMOS CANTICUS JOSE ALEJANDRO','1122340659','Hijo(a)','Asociado',53),(448,'RAMOS CANTICUS JUAN DIEGO','1139964178','Hijo(a)','No asociado',53),(449,'CANTINCUS CHUQUIZAN SEGUNDO DEMETRIO','5331773','Padre','No asociado',53),(450,'RAMOS ORTEGA OMAR','5280921','Suegro','No asociado',53),(451,'RAMOS MUÑOZ MARÍA','27093101','Suegra','No asociado',53),(452,'CANTICUS YANGUATIN MAURILIO','87572009','Hermano(a)','No asociado',53),(453,'CANTICUS YANGUATIN EDILMA','27434025','Hermano(a)','No asociado',53),(454,'VALLEJO OCAÑA LUIS ANTONIO','12978791','Cónyuge','No asociado',54),(455,'VALLEJO CORDOBA SILVANA LORENA','1085245495','Hijo(a)','No asociado',54),(456,'VALLEJO CORDOBA GERMAN ESTEBAN','1128282031','Hijo(a)','No asociado',54),(457,'MELENGUE ESCUDERO JAMES ALEXANDER','75093955','Yerno/Nuera','No asociado',54),(458,'CORDOBA ALBAN HUMERTO OCTAVIANO','5198151','Hermano(a)','No asociado',54),(459,'CORDOBA ALBAN MIRIAM AYDA ','27245849','Hermano(a)','No asociado',54),(460,'CORDOBA ALBAN GLORIA FANNY','27079247','Hermano(a)','No asociado',54),(461,'CORDOBA ALBAN EDNA MARINA','30709970','Hermano(a)','No asociado',54),(462,'CORDOBA ALBAN ALICIA ANALIDA','30714362','Hermano(a)','Retirado',54),(463,'CORDOBA ALBAN JESUS ERNESTO','12974138','Hermano(a)','No asociado',54),(464,'CORDOBA ALBAN BILMA ROCIO','30733775','Hermano(a)','No asociado',54),(465,'RECALDE LASSO JUAN DAVID','1122340700','Hijo(a)','No asociado',55),(466,'RECALDE RODRIGUEZ CARMEN MARIA','41105532','Madre','No asociado',55),(467,'RECALDE BUESAQUILLO MARCO ANTONIO','1907160','Abuelo','No asociado',55),(468,'NARVAEZ RECALDE MARTHA MILENA','41118513','Hermano(a)','No asociado',55),(469,'ARIAS RECALDE JHON JAIRO','18158374','Hermano(a)','No asociado',55),(470,'RODRIGUEZ RECALDE CARLOS MAURICIO','1122342488','Hermano(a)','No asociado',55),(471,'MUÑOZ AVILES LUIS EDUARDO','1835184',NULL,'No asociado',56),(472,'BURBANO DE MUÑOZ MARIA AURA','27475923',NULL,'Retirado',56),(473,'MUÑOZ BURBANO JAIME DANIEL','98396075',NULL,'Retirado',56),(474,'CHATES  CECILIA','66951643','Hermano(a)','No asociado',57),(475,'SANCHEZ TACAN VICTOR ONOFRE','1115861290','Hijo(a)','No asociado',58),(476,'SANCHEZ TACAN JORGE ANTONIO','1121508348','Hijo(a)','No asociado',58),(477,'SANCHEZ TACAN DARIEVELI','1123334836','Hijo(a)','No asociado',58),(478,'SANCHEZ TACAN INGRID LILIANA','1006946635','Hijo(a)','No asociado',58),(479,'HAROLD ROSERO VICTORIA','94494732','Yerno/Nuera','No asociado',58),(480,'TACAN ARTEAGA AURA ELVIRA','27469406','Hermano(a)','No asociado',58),(481,'TACAN ARTEAGA LUCELLY DEL CARMEN','27469758','Hermano(a)','No asociado',58),(482,'TACAN ARTEAGA MERCY DIANNDLY','27470145','Hermano(a)','No asociado',58),(483,'VELASCO SANCHEZ ANDRES FELIPE','1130147065','Nieto(a)','Asociado',58),(484,'SANCHEZ TACAN EMMANUEL SANTIAGO','1123333253','Nieto(a)','No asociado',58),(485,'BETANCOUR SANCHEZ DARI SAMANTHA','1123333470','Nieto(a)','No asociado',58),(486,'ROSERO LASSO CHRISTOPHER','1123334278','Nieto(a)','Asociado',58),(487,'LASSO TACAN MARIA ALEJANDRA','1123322713','Hijo(a)','No asociado',58),(488,'LASSO TACAN DIANOLY ANYOLINA','1123324708','Hijo(a)','No asociado',58),(489,'SANCHEZ  TACAN ANGIE CRISTINA','1014228882','Hijo(a)','No asociado',58),(490,'SANCHEZ TACAN OLGA LUCIA','1123328298','Hijo(a)','No asociado',58),(491,'TACAN ARTEAGA MARY ARGENIS','27470322','Hermano(a)','Asociado',58),(492,'VELASCO SANCHEZ YEIMY LUCIANA','1123335359','Nieto(a)','No asociado',58),(493,'SANCHEZ TACAN YENNIFER TATIANA','1006946636','Hijo(a)','No asociado',58),(494,'SANCHEZ TACAN LAURA SOFIA','1006850241','Hijo(a)','No asociado',58),(495,'ROBIRA LIMBANIA TACAN','27470023','Hermano(a)','No asociado',58),(496,'TACAN ARTEAGA ANNELLYE SISTERY','27470244','Hermano(a)','Asociado',58),(497,'GUERRERO GAVIRIA GLORIA CRISTINA','69005060','Cónyuge','Asociado',59),(498,'ZAMBRANO DE ROSERO MARIA FLORINDA','27476382','Madre','Asociado',60),(499,'MARTINEZ SUAREZ GUSTAVO JAVIER','97446177','Cónyuge','Retirado',61),(500,'MARTINEZ MOSQUERA JOHAN JAVIER','1006813452','Hijo(a)','Asociado',61),(501,'MARTINEZ MOSQUERA KELLLY JOHANA','1122726815','Hijo(a)','Asociado',61),(502,'MARTINEZ MOSQUERA KRISTHAL SOPHIA','1122734156','Hijo(a)','No asociado',61),(503,'MARTINEZ GRAFFE JESUS GUSTAVO','1122731462','Hijo(a) adoptivo','No asociado',61),(504,'GONZALES TELLO DIGNA MARIA','22236904','Madre','No asociado',61),(505,'MOSQUERA GONZALEZ LUZ MILENA','35892702','Hermano(a)','No asociado',61),(506,'MOSQUERA GONSALEZ LUZ ENEIDA','35587529','Hermano(a)','No asociado',61),(507,'NOGUERA  GLORIA','30738256','Hermano(a)','No asociado',62),(508,'NOGUERA MARIA AURA ELISA','27360301','Hermano(a)','No asociado',62),(509,'CHACUA ERASO OSCAR DAVID','1082748415','Cónyuge','No asociado',63),(510,'CHACUA BELALCAZAR JERONIMO DAVID','1085958696','Hijo(a)','No asociado',63),(511,'BELALCAZAR FREIRE HUGO ADALBERTO','87550146','Padre','No asociado',63),(512,'FLOREZ RODRIGUEZ MARY','59669777','Madre','No asociado',63),(513,'ERAZO PIEDAD DEL SOCORRO','27155951','Suegra','No asociado',63),(514,'BELALCAZAR FLOREZ CRISTINA KATHERINE','1085941180','Hermano(a)','No asociado',63),(515,'BELALCAZAR FLOREZ JULISSA GABRIELA','1085952029','Hermano(a)','No asociado',63),(516,'BELALCAZAR FLOREZ LAURITA SOFIA','1085925596','Hermano(a)','No asociado',63),(517,'MORALES RODRIGUEZ JESUS AFRANIO','87450709','Cónyuge','No asociado',64),(518,'MORALES PORTILLA DEYVY','1088731865','Hijo(a)','No asociado',64),(519,'MORALES PORTILLA ANYELY','1123332887','Hijo(a)','No asociado',64),(520,'PORTILLA VALENCIA FLOR ALBA','59793765','Hermano(a)','Retirado',64),(521,'PORTILLA VALENCIA JANETH MARLENY','59811760','Hermano(a)','No asociado',64),(522,'PORTILLA VALENCIA MARY CIELO','59795205','Hermano(a)','No asociado',64),(523,'MORALES BELALCAZAR ANITA ISABEL','1088733309','Hermano(a)','No asociado',64),(524,'PORTILLO VALENCIA RUBY MIRIAN','59795361','Hermano(a)','Asociado',64),(525,'PORTILLA VALENCIA NANCY ELVIRA','1123330784','Hermano(a)','No asociado',64),(526,'BOTINA PRECIADO EMMA','1123210589','Hijo(a)','No asociado',65),(527,'RIASCOS CECILIA','27438623','Madre','No asociado',65),(528,'BOTINA RIASCOS LUZ MERI','66959675','Hermano(a)','No asociado',65),(529,'BOTINA RIASCOS YAMILE','1130626670','Hermano(a)','No asociado',65),(530,'BOTINA RIASCOS DIEGO DIOMAR','14638524','Hermano(a)','No asociado',65),(531,'BOTINA RIASCOS ALEX','1144165338','Hermano(a)','No asociado',65),(532,'LOPEZ DE GARCIA MAXIMA ERNESTINA','41100660','Madre','Asociado',66),(533,'GARCIA LOPEZ JANETH','69006543','Hermano(a)','Asociado',66),(534,'MARTINEZ YAIGUAJE LIAM KALETH','1182713265','Hijo(a)','Asociado',67),(535,'ZAMBRANO DUEÑAS ANGELA GENITH','700343','Cónyuge','Asociado',68),(536,'VILLOTA ZAMBRANO INGRID MILENA','171997989-9','Hijo(a)','No asociado',68),(537,'VILLOTA ZAMBRANO CINDY RAQUEL','1127454029','Hijo(a)','No asociado',68),(538,'VILLOTA MUESES JOSEPH STIVEN','1081277093','Hijo(a)','Asociado',68),(539,'VILLOTA ROJAS DOLORES MELIDA','30708340','Hermano(a)','No asociado',68),(540,'PEREZ QUINTERO JORGE MARIO','1006946926','Hijo(a)','No asociado',69),(541,'PEREZ QUINTERO ISABELA','1120068505','Hijo(a)','No asociado',69),(542,'ROSERO LOPEZ BLANCA LIDIA','27354790','Madre','No asociado',69),(543,'PEREZ ROSERO ERIKA LIZETH','69009915','Hermano(a)','Retirado',69),(544,'PEREZ ROSERO NATALIA CAROLINA','27362208','Hermano(a)','No asociado',69),(545,'ALVARADO  ESPERANZA','40768417','Cónyuge','Asociado',70),(546,'ORDOÑEZ ALVARADO ERIKA','1085302218','Hijo(a)','No asociado',70),(547,'ORDOÑEZ ALVARADO TAHIRS','1123328906','Hijo(a)','No asociado',70),(548,'RODRIGUEZ ALVARADO NORMA CONSTANZA','1123322252','Hijo(a) adoptivo','No asociado',70),(549,'RODRIGUEZ ALVARADO LUIS ANTONIO','1123324328','Hijo(a) adoptivo','No asociado',70),(550,'ALVARADO MUTUMBAJOY SARA','40757364','suegra','No asociado',70),(551,'CULMAN YATE JOSÉ','1676605','suegro','No asociado',70),(552,'MOLINA COLLAZOS CRISTIAN FABIAN','1018436192','Yerno/Nuera','No asociado',70),(553,'ORDONEZ VALLEJO NIMIA RUFINA','27476417','Hermano(a)','No asociado',70),(554,'ORDOÑEZ VALLEJO CARMEN IBETH','27476274','Hermano(a)','Retirado',70),(555,'ORDOÑEZ VALLEJO ALEIDA ESPERANZA','39614230','Hermano(a)','No asociado',70),(556,'BURBANO ORDOÑEZ MELANY ALEJANDRA','1123329203','Nieto(a)','No asociado',70),(557,'MOLINA ORDOÑEZ ANI SALOME','1130147166','Nieto(a)','No asociado',70);
/*!40000 ALTER TABLE `personas_familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas_personapep`
--

DROP TABLE IF EXISTS `personas_personapep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas_personapep` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `es_pep` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `tipo_pep` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `fecha_vinculacion` date DEFAULT NULL,
  `fecha_desvinculacion` date DEFAULT NULL,
  `cuentas_extranjeras` varchar(50) DEFAULT NULL,
  `fecha_registro_pep` date DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identificacion` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_personapep`
--

LOCK TABLES `personas_personapep` WRITE;
/*!40000 ALTER TABLE `personas_personapep` DISABLE KEYS */;
INSERT INTO `personas_personapep` VALUES (1,'LOPEZ NARVAEZ GLADIS LUCIA','59824956','Si','Asociado','Maneja recursos públicos nacionales',NULL,NULL,NULL,'NO','2021-10-27',NULL),(2,'ANACONA DELGADO MARIANO LEON','79905621','Si','Asociado','Función pública prominente','CONCEJAL','2020-01-01','2023-12-31','NO','2021-11-08','2022-06-28'),(3,'MAIGUAL DELGADO JACINTO','97470076','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2021-11-08',NULL),(4,'ACOSTA SINSAJOA ELKIN ALONSO','1120216110','Si','Asociado','Maneja recursos públicos nacionales','DIRECTOR I.E.',NULL,NULL,'NO','2021-11-17',NULL),(5,'ORTEGON BETANCOURTH MAGNOLIA','40690298','Si','Asociado','Maneja recursos públicos nacionales','DIRECTORA RURAL','2021-03-24',NULL,'NO','2021-11-19','2024-02-14'),(6,'VIVAS RUALES LEYDY CONSTANZA','69055685','Si','Asociado','Maneja recursos públicos nacionales','DIRECTORA I.E.',NULL,NULL,'NO','2021-11-22',NULL),(7,'CAMPO PAJA ELBIS NEUBER','76258984','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-01-11','2024-02-19'),(8,'BURBANO PORTILLO FELIPE NERY','5350223','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-01-14',NULL),(9,'TENORIO BUESAQUILLO LUIS ADOLFO','18103352','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-02-08',NULL),(10,'PERENGUEZ LOPEZ WILMAN','98344330','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.','2022-02-09',NULL,'NO','2022-02-04','2024-02-09'),(11,'GUARNICA SOLARTE SULY MARCELA','1085278645','Si','Asociado','Maneja recursos públicos nacionales','SUBGERENTE HOSPITAL','2021-02-02',NULL,'NO','2022-02-08','2023-05-25'),(12,'IMBAJOA MARIA GLORIA AMPARO','27354931','Si','Asociado','Función pública prominente','CONCEJAL',NULL,NULL,'NO','2022-02-16','2023-12-12'),(13,'HURTADO NOGUERA SANDRA','26637519','Si','Asociado','Maneja recursos públicos nacionales','DIRECTORA RURAL',NULL,NULL,'NO','2022-02-25','2023-08-23'),(14,'CHINDOY MUCHAVISOY CARMENZA RUTH','69007029','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-04-05','2023-03-03'),(15,'LOPEZ MORA SEGUNDO LUCIO','18122679','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-03-16',NULL),(16,'MENESES GARZON WILSON FABIAN','94286643','Si','Retirado','Función pública prominente','CONCEJAL',NULL,NULL,'NO','2022-03-29',NULL),(17,'CUELLAR ALVARADO RUTH MILENA','26638141','Si','Asociado','Maneja recursos públicos nacionales','DIRECTORA I.E.','2023-09-20',NULL,'NO','2022-04-05','2023-11-03'),(18,'DELGADO ORDOÑEZ MARTIN ALONSO','16759066','Si','Asociado','Función pública prominente','CONCEJAL','2019-01-01',NULL,'NO','2022-05-04','2023-11-20'),(19,'ELAGO QUITUMBO CARLOS','76300327','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-06-09',NULL),(20,'ABARKA SILVA EDUARDO','6716370','Si','Asociado','Función pública prominente','CONCEJAL',NULL,NULL,'NO','2022-06-21',NULL),(21,'QUINCHOA TISOY MARTA','27470124','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-07-14',NULL),(22,'ESCOBAR RAMIREZ SEGUNDO RAUL','18100777','Si','Retirado','Maneja recursos públicos nacionales','DIRECTOR RURAL',NULL,NULL,'NO','2022-08-10',NULL),(23,'SIGINDIOY MUCHAVISOY MARIA ANTONIA','41180381','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-07-08',NULL),(24,'HERRERA NARVAEZ FERNANDO','12987271','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-07-25',NULL),(25,'TISOY JOJOA JOSE ALBERTO','18124149','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-09-12',NULL),(26,'LUNA LINARES LIGIA ESPERANZA','27469575','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-09-28','2023-07-19'),(27,'ROA BERMUDEZ GEOVANNY','82361746','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-10-18',NULL),(28,'RUIZ TACAN PEDRO FERNANDO','18147780','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2022-10-24',NULL),(29,'BENAVIDES ALBAN ARACELY','31995083','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-10-25',NULL),(30,'CUARAN RUANO ALBA MERY','36751214','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2022-11-03','2023-05-08'),(31,'CORDOBA ARAUJO NELSON ALEXANDER','18129980','Si','Asociado','Maneja recursos públicos nacionales','TESORERO GENERAL GOBERNACION DEL PUTUMAYO',NULL,NULL,'NO','2022-11-09',NULL),(32,'HURTADO ALZATE JHON EDINSON','1122724681','Si','Asociado','Maneja recursos públicos exterior','PERSONERO ALCALDIA',NULL,NULL,'NO','2022-11-22',NULL),(33,'QUETA QUINTERO ABDON IVAN','18152812','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.','2004-03-28',NULL,'NO','2022-12-29','2024-01-19'),(34,'MAVISOY  LUIS PABLO','1124850237','Si','Asociado','Maneja recursos públicos nacionales','DIRECTOR RURAL',NULL,NULL,'NO','2022-11-01',NULL),(35,'AREVALO RODRIGUEZ JAVIER EMILIO','6716319','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2023-02-08',NULL),(36,'RODRIGUEZ DIAZ OSCAR ANTONIO','18162933','Si','Asociado','Función pública prominente','CONCEJAL',NULL,NULL,'NO','2023-02-02','2024-02-21'),(37,'HERNANDEZ ILES ROSALBA','41105647','Si','Asociado','Función pública prominente','INSPECTORA','2019-10-10',NULL,'NO','2023-05-03',NULL),(38,'CORTES QUIJANO DORIS CONSTANZA','27123135','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2023-06-06',NULL),(39,'HERNANDEZ ESTRADA GLADYS DEL SOCORRO','27167267','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.','2016-08-31',NULL,'NO','2023-06-06',NULL),(40,'BURBANO GARCIA WILMAN FERNEY','12752051','Si','Asociado','Función pública prominente','CONCEJAL','2016-01-01',NULL,'NO','2023-06-02',NULL),(41,'ACHICANOY MARTINEZ JOSE LUIS','12995935','Si','Asociado','Maneja recursos públicos nacionales','RECTOR','2006-08-01',NULL,'NO','2023-06-13',NULL),(42,'PAI  MARIA TERESA','59665354','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,'NO','2023-06-21',NULL),(43,'PIAGUAJE CABRERA HUMBERTO ERNEY','18124339','Si','Asociado','Maneja recursos públicos nacionales','DIRECTOR I.E.','1993-10-20',NULL,'NO','2023-06-27',NULL),(44,'VALLEJO DIAZ MARCO ANTONIO','87451308','Si','Asociado','Función pública prominente','CONCEJAL','2020-01-01','2023-12-31','NO','2023-07-14',NULL),(45,'GUACANEME CASTANO OSCAR MAURICIO','94151068','Si','Asociado','Maneja recursos públicos nacionales','GERENTE EMSANMIGUEL','2021-06-10',NULL,'NO','2023-07-11',NULL),(46,'GONZALEZ CORTES OSCAR GERMAN','80824742','Si','Asociado','Maneja recursos públicos nacionales','Gerente de empresa de servicios públicos',NULL,NULL,NULL,NULL,NULL),(47,'SEGURA CORTEZ JHON JAIRO','18162961','Si','Asociado','Maneja recursos públicos nacionales','Secretario general y de gobierno alcaldía de san Miguel',NULL,NULL,NULL,NULL,NULL),(48,'ORTIZ GUERRERO JACQUELINE JANNETH','30719374','Si','Asociado','Función pública prominente','Juez Circuito de Pasto Nariño',NULL,NULL,NULL,NULL,NULL),(49,'CHAMORRO RAMIREZ CAMILA MARIA','1124312956','Si','Asociado','Maneja recursos públicos nacionales','Gerente Hospital PIO XII colón',NULL,NULL,NULL,NULL,NULL),(50,'ANZUETA TARACHE YULE VIANEY','8191774','Si','Asociado','Función pública prominente','Diputado',NULL,NULL,NULL,NULL,NULL),(51,'LARA CEBALLOS YURI JAZMIN','1126450360','Si','Asociado','Maneja recursos públicos nacionales','Presupuestos- ESP valle',NULL,NULL,NULL,NULL,NULL),(52,'CADENA PATIÑO CARMEN MARIA','59834320','Si','Asociado','Maneja recursos públicos nacionales','Secretario de hacienda Alcaldía de San Miguel',NULL,NULL,NULL,NULL,NULL),(53,'CANTICUS YANGUATIN SORAIDA AURAELI','27435004','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.','2021-08-30',NULL,'NO','2023-07-19',NULL),(54,'CORDOBA ALBAN AURA LUZMILA','30717406','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.','1979-08-30',NULL,'NO','2023-08-16',NULL),(55,'RECALDE  LUIS OMAR','1085276073','Si','Asociado','Función pública prominente','CONCEJAL','2020-01-01','2023-12-31','NO','2023-09-20',NULL),(56,'MUNOZ BURBANO LUIS GERMAN','12994940','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.','2023-01-16',NULL,'NO','2023-10-25',NULL),(57,'LOPEZ CHATES LUIS ALBERTO','98323316','Si','Asociado','Maneja recursos públicos nacionales','DIRECTOR RURAL','2021-06-17',NULL,'NO','2023-10-17',NULL),(58,'TACAN ARTEAGA LUZ DARI DE FATIMA','27469890','Si','Retirado','Maneja recursos públicos nacionales','RECTORA I.E.',NULL,NULL,NULL,NULL,NULL),(59,'JAMIOY JOJOA JUAN PABLO','97470890','Si','No asociado',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'ROSERO ZAMBRANO ALADINO MANUEL','97471288','Si','No asociado','Función pública prominente',NULL,NULL,NULL,NULL,NULL,NULL),(61,'MOSQUERA GONZALEZ LUZ YUBERNY','35890617','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.','2024-03-01',NULL,'NO','2024-02-04',NULL),(62,'IMBACUAN NOGUERA LUIS ANTONIO','12992618','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.','1996-02-23',NULL,'NO','2024-01-31',NULL),(63,' BELALCAZAR FLOREZ JINA ANDREA','1085925538','Si','Asociado','Maneja recursos públicos nacionales','Gerente Hospital fronterizo La Dorada','2021-08-26',NULL,'NO','2024-01-18',NULL),(64,'PORTILLA VALENCIA FANY RUBIELA','59793014','Si','Asociado','Maneja recursos públicos nacionales','RECTORA I.E.','2011-07-25',NULL,NULL,'2024-02-02',NULL),(65,'BOTINA RIASCOS CRISTHIAN ERMEL','6228482','Si','Asociado','Maneja recursos públicos nacionales','RECTOR',NULL,NULL,NULL,'2024-02-23',NULL),(66,'GARCIA LOPEZ JORGE HERLINTO','18127336','Si','No asociado','Maneja recursos públicos nacionales','ALCALDE  DE PUERTO ASIS',NULL,NULL,NULL,NULL,NULL),(67,'MARTINEZ ORTIZ FABIAN','1123303202','Si','Asociado','Función pública prominente','CONCEJAL - sin diligenciar formato familiares',NULL,NULL,NULL,NULL,NULL),(68,'VILLOTA ROJAS CARLOS JULIO','12963136','Si','Asociado','Maneja recursos públicos nacionales','RECTOR I.E.',NULL,NULL,'NO','2024-04-22',NULL),(69,'PEREZ ROSERO MARIO FERNANDO','18128840','Si','Asociado','Maneja recursos públicos nacionales','Gerente AGUAS MOCOA','2022-09-07','2023-06-26','NO','2024-04-30',NULL),(70,'ORDOÑEZ VALLEJO ROBERTO','97470776','Si','Asociado','Maneja recursos públicos nacionales','DIRECTOR RURAL','1987-03-09',NULL,'NO','2024-05-20',NULL);
/*!40000 ALTER TABLE `personas_personapep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$600000$kRi2sQ0bLKjZcS25r3DthU$ICDYEkFxeZmwJvUak/zV1q5gfu7s09i/jvw0mmk9ito=','2023-11-23 16:27:55.160469',1,'admin11','','','soportesistemas@cootep.com.co',1,1,'2023-11-23 16:27:14.937907');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 14:20:25
