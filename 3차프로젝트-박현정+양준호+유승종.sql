-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add seat',7,'add_seat'),(26,'Can change seat',7,'change_seat'),(27,'Can delete seat',7,'delete_seat'),(28,'Can view seat',7,'view_seat'),(29,'Can add info',8,'add_info'),(30,'Can change info',8,'change_info'),(31,'Can delete info',8,'delete_info'),(32,'Can view info',8,'view_info'),(33,'Can add timetable',9,'add_timetable'),(34,'Can change timetable',9,'change_timetable'),(35,'Can delete timetable',9,'delete_timetable'),(36,'Can view timetable',9,'view_timetable'),(37,'Can add reservation',10,'add_reservation'),(38,'Can change reservation',10,'change_reservation'),(39,'Can delete reservation',10,'delete_reservation'),(40,'Can view reservation',10,'view_reservation'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add chart',12,'add_chart'),(46,'Can change chart',12,'change_chart'),(47,'Can delete chart',12,'delete_chart'),(48,'Can view chart',12,'view_chart'),(49,'Can add member',13,'add_member'),(50,'Can change member',13,'change_member'),(51,'Can delete member',13,'delete_member'),(52,'Can view member',13,'view_member'),(53,'Can add member',14,'add_member'),(54,'Can change member',14,'change_member'),(55,'Can delete member',14,'delete_member'),(56,'Can view member',14,'view_member'),(57,'Can add reply',15,'add_reply'),(58,'Can change reply',15,'change_reply'),(59,'Can delete reply',15,'delete_reply'),(60,'Can view reply',15,'view_reply'),(61,'Can add info',16,'add_info'),(62,'Can change info',16,'change_info'),(63,'Can delete info',16,'delete_info'),(64,'Can view info',16,'view_info'),(65,'Can add member3',14,'add_member3'),(66,'Can change member3',14,'change_member3'),(67,'Can delete member3',14,'delete_member3'),(68,'Can view member3',14,'view_member3');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(16,'info','info'),(14,'info','member3'),(15,'info','reply'),(13,'member','member'),(12,'reserve','chart'),(8,'reserve','info'),(11,'reserve','member'),(10,'reserve','reservation'),(7,'reserve','seat'),(9,'reserve','timetable'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-06-01 06:14:03.252463'),(2,'auth','0001_initial','2020-06-01 06:14:03.439961'),(3,'admin','0001_initial','2020-06-01 06:14:03.803988'),(4,'admin','0002_logentry_remove_auto_add','2020-06-01 06:14:03.883776'),(5,'admin','0003_logentry_add_action_flag_choices','2020-06-01 06:14:03.891753'),(6,'contenttypes','0002_remove_content_type_name','2020-06-01 06:14:03.970568'),(7,'auth','0002_alter_permission_name_max_length','2020-06-01 06:14:04.016447'),(8,'auth','0003_alter_user_email_max_length','2020-06-01 06:14:04.068284'),(9,'auth','0004_alter_user_username_opts','2020-06-01 06:14:04.078257'),(10,'auth','0005_alter_user_last_login_null','2020-06-01 06:14:04.126128'),(11,'auth','0006_require_contenttypes_0002','2020-06-01 06:14:04.130117'),(12,'auth','0007_alter_validators_add_error_messages','2020-06-01 06:14:04.145077'),(13,'auth','0008_alter_user_username_max_length','2020-06-01 06:14:04.196939'),(14,'auth','0009_alter_user_last_name_max_length','2020-06-01 06:14:04.248800'),(15,'auth','0010_alter_group_name_max_length','2020-06-01 06:14:04.290687'),(16,'auth','0011_update_proxy_permissions','2020-06-01 06:14:04.300661'),(17,'sessions','0001_initial','2020-06-01 06:14:04.323599'),(21,'member','0001_initial','2020-06-11 01:22:32.879234'),(22,'info','0001_initial','2020-06-11 02:57:38.874340'),(23,'info','0002_auto_20200611_1202','2020-06-11 03:02:54.758426');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `django_session` VALUES ('tyged2gpj5cwz4qqituhuxufgi6j6k42','NmRhYjI4YjZjNzJkMjhhYWUxOWNhN2ZlOWY1NjgzZmQ4OTJjNjczMDp7ImlkIjoianVwaWNlMzMyMiIsIm1vdmllX2lkIjozLCJ0aGVhdGVyIjoxLCJ3YXRjaGRheSI6IjIwMjAtMDYtMTIiLCJ3YXRjaHRpbWUiOjV9','2020-06-25 13:05:30.590995');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_info`
--

DROP TABLE IF EXISTS `info_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `title` longtext NOT NULL,
  `genre` longtext NOT NULL,
  `runningtime` longtext NOT NULL,
  `openday` longtext NOT NULL,
  `director` longtext NOT NULL,
  `actor` longtext NOT NULL,
  `agecut` longtext NOT NULL,
  `content` longtext NOT NULL,
  `counting` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_info`
--

LOCK TABLES `info_info` WRITE;
/*!40000 ALTER TABLE `info_info` DISABLE KEYS */;
INSERT INTO `info_info` VALUES (1,'https://movie-phinf.pstatic.net/20200518_300/1589776956506KIHU1_JPEG/movie_image.jpg?type=m203_290_2','언더워터','스릴러','95분 ','2020.05.27','윌리엄 유뱅크','크리스틴 스튜어트(노라), 뱅상 카셀(캡틴), T.J. 밀러(파울)','15세 관람가','30일 동안 해저 시추 시설에서 엄청난 압력을 견디며 바다의 밑바닥을 뚫어야 하는 캐플러 기지의 대원들.\n 어느 날, 큰 지진으로 콘크리트 구조물을 뚫고 급류가 들이 닥쳐 기지는 순식간에 파괴되고 대혼란이 일어난다.\n \n 갑작스런 대재앙 속에서 가까스로 살아남은 대원들은 전기 엔지니어 노라를 비롯한 5명.\n 이들이 시도해 볼 수 있는 유일한 방법은 또 다른 해저 기지 ‘로우벅’으로 이동해 탈출 포트를 찾는 것 뿐.\n \n 하지만 어두운 심해엔 그들만이 존재하는 것이 아니었다.\n 무언가 그들을 바짝 따라오고 있다.\n 불가사의한 포식자와 쫓고 쫓기는 위험천만한 게임에 갇혀버린 대원들.\n 살아남기 위해선 남은 용기를 전부 쥐어 짜내야만 한다..\n \n 살고 싶다면 모든 감각을 깨워라!',''),(2,'https://movie-phinf.pstatic.net/20200604_287/1591247101011RnPbV_JPEG/movie_image.jpg?type=m203_290_2','침입자','미스터리','102분 ','2020.06.04','손원평','송지효(유진), 김무열(서진)','15세 관람가','얼마 전 사고로 아내를 잃고 실의에 빠져 있는 건축가 ‘서진’에게 25년 전 실종된 동생을 찾았다는 연락이 온다 처음 본 자신을 친근하게 “오빠”라고 부르는 ‘유진’이 어딘가 불편한 ‘서진’과 달리 가족들은 금세 그녀를 받아들인다  그런데 ‘유진’이 돌아온 후 가족들에게 이상한 일들이 벌어지기 시작하고, 이를 의심스럽게 여긴 ‘서진’은 동생의 비밀을 쫓다 자신의 일상을 송두리째 뒤흔든 사건에 그녀가 연관되어 있음을 알게 되는데...  추적 끝에 드러나는 충격적인 진실!',''),(3,'https://movie-phinf.pstatic.net/20200428_196/1588038709486FYyHu_JPEG/movie_image.jpg?type=m203_290_2','프리즌 이스케이프','모험','106분 ','2020.05.06','프란시스 아난','다니엘 래드클리프(팀), 다니엘 웨버(스티븐)','12세 관람가','인권운동가 ‘팀’과 ‘스티븐’은 억울한 판결로 투옥된다. 둘은 불의에 굴복하지 않고 탈출을 결심한다. 나가기 위해 열어야 할 강철 문은 15개! 그들은 나뭇조각으로 열쇠를 만들기 시작하고, 지금껏 아무도 성공한 적 없는 0%의 확률 속에서 목숨을 건 단 한 번의 기회를 노리는데…',''),(4,'https://movie-phinf.pstatic.net/20171218_47/1513561221134wvRja_JPEG/movie_image.jpg?type=m203_290_2','위대한 쇼맨','드라마','104분 ','2020.05.21','마이클 그레이시','휴 잭맨(P.T. 바넘), 잭 에프론(필립 칼라일), 미셸 윌리엄스(채러티 바넘)','12세 관람가','쇼 비즈니스의 창시자이자, 꿈의 무대로 전세계를 매료시킨 남자\n ‘바넘’의 이야기에서 영감을 받아 탄생한 오리지널 뮤지컬 영화 <위대한 쇼맨>.\n <레미제라블> 이후 다시 뮤지컬 영화로 돌아온 휴 잭맨부터 잭 에프론, 미셸 윌리엄스, 레베카 퍼거슨, 젠다야까지\n 할리우드 최고의 배우들이 합류해 환상적인 앙상블을 선보인다.\n 여기에 <미녀와 야수> 제작진과 <라라랜드> 작사팀의 합류로\n 더욱 풍성해진 비주얼과 스토리, 음악까지 선보일 <위대한 쇼맨>은\n ‘우리는 누구나 특별하다’는 메시지로 관객들에게 재미는 물론, 감동까지 선사할 것이다.\n \n THIS IS ME! 우리는 누구나 특별하다!',''),(5,'https://movie-phinf.pstatic.net/20200527_46/1590566157871xm82Y_JPEG/movie_image.jpg?type=m203_290_2','초미의 관심사','드라마','92분 ','2020.05.27','남연우','조민수(엄마), 치타(순덕)','15세 관람가','가수 ‘블루로 활동하며 주가를 올리고 있는 ‘순덕’(김은영). 어느 날 성격 차이로 별거(?) 중이었던 엄마(조민수)가 들이닥쳐 엄청난 소식을 전한다. 막내가 엄마의 가겟세와 ‘순덕’의 비상금을 들고 튀었다는 것!  괘씸한 막내를 쫓기 위해 두 사람은 단 하루, 손을 잡기로 합의하고 도시를 누비기 시작한다. 그러나 극과 극의 성격을 가진 두 사람은 사사건건 부딪히기 시작하고, 추적 끝에 밝혀지는 막내의 비밀은 수상하기 짝이 없는데...  “가족은 다 같아야 하니?!” 달라도 너무 다른 극과 극 모녀의 예측불허 추격전이 시작된다!',''),(6,'https://movie-phinf.pstatic.net/20200513_255/1589352192563Cb3mX_JPEG/movie_image.jpg?type=m203_290_2','카페 벨에포크','코미디','115분 ','2020.05.20','니콜라스 베도스','다니엘 오떼유(빅토르), 기욤 까네(앙투안), 도리아 틸리에(마고)','15세 관람가','행복했던 그때 그 모든 것이 그리워진 ‘빅토르’는\n 100% 고객 맞춤형 핸드메이드 시간여행의 설계자 ‘앙투안’의 초대로\n 하룻밤의 시간여행을 떠난다\n 그의 눈 앞에 마법처럼 펼쳐진 ‘카페 벨에포크’에서\n ‘빅토르’는 꿈에 그리던 첫사랑과 재회하게 되는데...',''),(7,'https://movie-phinf.pstatic.net/20200506_168/1588731103437Jz8kl_JPEG/movie_image.jpg?type=m203_290_2','더 플랫폼','SF','94분 ','2020.05.13','가더 가츠테루-우루샤','이반 마사구에(고렝)','청소년 관람불가','0 … 33 … 101 …\n 30일마다 랜덤으로 레벨이 바뀌는 극한 생존의 수직 감옥 ‘플랫폼’\n 최상위 레벨 0에서 아래로 내려갈수록 음식도 인간성도 바닥나는데…',''),(8,'https://movie-phinf.pstatic.net/20200513_183/15893326116456JYXK_JPEG/movie_image.jpg?type=m203_290_2','그집','공포','104분 ','2020.05.27','알베르트 핀토','베고냐 바르가스(암파로), 이반 마르코스(마놀로), 베아 세구라(칸델라)','15세 관람가','1976년 스페인 마드리드, 새 출발을 꿈꾸며 도시로 이주한 6명의 가족.\n 그들이 이사한 ‘그 집’에는 수상한 기운이 감돌기 시작하고,\n 마침내 가족의 꿈은 악몽이 되고 마는데...',''),(9,'https://movie-phinf.pstatic.net/20200504_35/1588575878907j85rf_JPEG/movie_image.jpg?type=m203_290_2','범털','범죄','108분 ','2020.05.14','강태호','이설구(범털), 강인성(사형수), 유상재(정태수)','15세 관람가','우발적 폭력 사건에 휘말려 억울하게 수감된 ‘만희’는  교도소의 범털이 기거하는 폭력방에 입소되어, 왈왈이, 사형수, 벌구, 꼬마, 개털과 함께 한솥밥을 먹게 된다.  한편, 반대파 메이커 건달 두목인 ‘태수’가 같은 사동으로 입소하게 되면서, 범털에게 불만을 품은 봉천동파 부두목 조.밥과 용주골 갈치, 가리봉동파 와꾸, 도끼,  패거리들이 모여들고, 재소자 목욕탕에서 샤워 중인 범털을 기습해온다.  위기를 제압한 범털은 태수와 한 편인 보안과장이 출동시킨 타격대에 의해 구금당할 위험에 처하고, 이때 숨겨놓은 칼을 찾아든 사형수로 인해 일촉즉발의 사태로 번지게 되는데…  가진 자와 못 가진 자의 목숨을 건 마지막 승부가 펼쳐진다!',''),(10,'https://movie-phinf.pstatic.net/20200515_153/1589521029136pyDNk_JPEG/movie_image.jpg?type=m203_290_2','날씨의 아이','애니메이션','112분 ','2020.05.21','신카이 마코토','심규혁(호다카), 김유림(히나), 최한(스가)','15세 관람가','비가 그치지 않던 어느 여름날,\n 가출 소년 ‘호다카’는 수상한 잡지사에 취직하게 되고\n 비밀스러운 소녀 ‘히나’를 우연히 만난다.\n \n “지금부터 하늘이 맑아질 거야”\n \n 그녀의 기도에 거짓말 같이 빗줄기는 멈추고,\n 사람들의 얼굴에 환한 빛이 내려온다.\n \n “신기해, 날씨 하나에 사람들의 감정이 이렇게나 움직이다니”\n \n 하지만, 맑음 뒤 흐림이 찾아오듯\n 두 사람은 엄청난 세계의 비밀을 마주하게 되는데…\n \n 흐리기만 했던 세상이 빛나기 시작했고, 그 끝에는 네가 있었다.',''),(11,'https://movie-phinf.pstatic.net/20200514_72/1589435843946AjfFa_JPEG/movie_image.jpg?type=m203_290_2','미스비헤이비어','드라마','106분 ','2020.05.27','필립파 로소프','키이라 나이틀리(샐리 알렉산더), 제시 버클리(조 로빈슨 ), 구구 바샤-로(제니퍼 호스텐)','15세 관람가','여자라는 이유만으로 학계에서 무시당하지만 \n 실력으로 이기겠다는 여성 운동가이자 역사가 \'샐리\' (키이라 나이틀리)\n \n 성적 대상화의 주범 미스월드에 \n 한 방 먹일 작전을 짠 페미니스트 예술가 \'조\' (제시 버클리)\n \n 역사상 최초의 미스 그레나다로서 \n 흑인 아이들에게 희망을 전하고 싶은 \'제니퍼\' (구구 바샤-로)\n \n 1970년, 달 착륙과 월드컵 결승보다 더 많은 1억 명이 지켜본 \'미스월드\'\n \n 성적 대상화를 국민 스포츠로 만든 미스월드에 맞서\n 자신만의 스타일로 진정한 자유를 외친 여성들의 유쾌한 반란이 시작된다!',''),(12,'https://movie-phinf.pstatic.net/20200504_35/1588575878907j85rf_JPEG/movie_image.jpg?type=m203_290_2','범털','범죄','108분 ','2020.05.14','강태호','이설구(범털), 강인성(사형수), 유상재(정태수)','15세 관람가','우발적 폭력 사건에 휘말려 억울하게 수감된 ‘만희’는  교도소의 범털이 기거하는 폭력방에 입소되어, 왈왈이, 사형수, 벌구, 꼬마, 개털과 함께 한솥밥을 먹게 된다.  한편, 반대파 메이커 건달 두목인 ‘태수’가 같은 사동으로 입소하게 되면서, 범털에게 불만을 품은 봉천동파 부두목 조.밥과 용주골 갈치, 가리봉동파 와꾸, 도끼,  패거리들이 모여들고, 재소자 목욕탕에서 샤워 중인 범털을 기습해온다.  위기를 제압한 범털은 태수와 한 편인 보안과장이 출동시킨 타격대에 의해 구금당할 위험에 처하고, 이때 숨겨놓은 칼을 찾아든 사형수로 인해 일촉즉발의 사태로 번지게 되는데…  가진 자와 못 가진 자의 목숨을 건 마지막 승부가 펼쳐진다!',''),(13,'https://movie-phinf.pstatic.net/20200414_29/15868256845244B38u_JPEG/movie_image.jpg?type=m203_290_2','패왕별희 디 오리지널','드라마','171분 ','2020.05.01','천카이거','장국영(두지), 공리(주샨), 장풍의(시투)','15세 관람가','어렸을 때부터 함께 경극을 해온 ‘두지’(장국영)와 ‘시투’(장풍의).  세상에 둘도 없는 절친한 아우와 형이지만,  ‘두지’는 남몰래 ‘시투’에 대한 마음을 품고 있다.  하지만 ‘시투’는 여인 ‘주샨’(공리)에 마음을 빼앗기고,  그로 인해 ‘두지’는 감정의 소용돌이에 빠지게 되는데…  사랑과 운명, 아름다움을 뒤바꾼 화려한 막이 열린다!',''),(14,'https://movie-phinf.pstatic.net/20200520_72/1589955100593Ndd9T_JPEG/movie_image.jpg?type=m203_290_2','아홉 스님','드라마','72분 ','2020.05.27','윤성준','자승(본인), 무연(본인), 진각(본인)','전체 관람가','한국 불교 역사상 최초, 천막 동안거를 통해 정진하게 된 아홉 스님들. 살을 에는 한겨울, 난방 기구 하나 없이 폐쇄된 천막에서 7개의 엄격한 규칙과 함께 참선의 90일이 시작되고, 단 한 벌의 옷과 하루 한 끼의 극한 수행을 버티면서도 신음 소리 한 번 내지 않던 스님들에게 위기가 찾아오는데….',''),(15,'https://movie-phinf.pstatic.net/20111223_157/1324646162713IylFU_JPEG/movie_image.jpg?type=m203_290_2','컨테이젼','미스터리','103분 ','2011.09.22','스티븐 소더버그','마리옹 꼬띠아르 (리어노러 오랑테스 박사), 맷 데이먼(토마스 엠호프), 로렌스 피시번(엘리스 치버 박사)','12세 관람가','아무 것도 만지지 마라! 누구도 만나지 마라! 홍콩 출장에서 돌아온 베스(기네스 팰트로)가 발작을 일으키며 사망하고 그녀의 남편(맷 데이먼)이 채 원인을 알기 전에 아들마저 죽음을 당한다. 얼마 지나지 않아 세계 각국의 사람들이 같은 증상으로 사망한다. 일상생활의 접촉을 통해 이루어진 전염은 그 수가 한 명에서 네 명, 네 명에서 열 여섯 명, 수백, 수천 명으로 늘어난다. 한편, 미국 질병통제센터의 치버 박사(로렌스 피시번)는 경험이 뛰어난 박사(케이트 윈슬렛)를 감염현장으로 급파하고 세계보건기구의 오란테스 박사(마리옹 꼬띠아르)는 최초발병경로를 조사한다. 이 가운데 진실이 은폐됐다고 주장하는 프리랜서 저널리스트(주드 로)가 촉발한 음모론의 공포는 그가 운영하는 블로그를 통해 원인불명의 전염만큼이나 빠르게 세계로 퍼져가는데…',''),(16,'https://movie-phinf.pstatic.net/20200417_103/1587088820009DdKKx_JPEG/movie_image.jpg?type=m203_290_2','톰보이','드라마','82분 ','2020.05.14','셀린 시아마','조 허란(로레 / 미카엘), 말론 레바나(잔)','12세 관람가','새로 이사 온 아이, ‘미카엘’.\n 파란색을 좋아하고, 끝내주는 축구 실력과 유난히 잘 어울리는 짧은 머리로\n 친구들을 사로잡는 그의 진짜 이름은 ‘로레’!\n 눈물겹게 아름답고, 눈부시게 다정했던\n 10살 여름의 비밀 이야기가 시작된다!',''),(17,'https://movie-phinf.pstatic.net/20200514_17/1589432302442ftAeW_JPEG/movie_image.jpg?type=m203_290_2','조금씩, 천천히 안녕','가족','127분 ','2020.05.27','나카노 료타','아오이 유우(후미), 다케우치 유코(마리), 마츠바라 치에코(어머니)','전체 관람가','아버지의 70번째 생일날, \n 두 딸 ‘마리’와 ‘후미’를 불러 모은 어머니는 \n 아버지가 치매에 걸렸다는 충격적인 소식을 전한다.  \n \n “많은 것들이 점점 멀어져…”\n \n ‘후미’네 가족은 서서히 기억을 잃어가는 아버지와 헤어짐을 준비하며\n 자신의 아픔과 서로의 상처를 조금씩 보듬어가기 시작하는데…\n \n 당신에게 전하는 특별한 작별 인사\n “조금씩, 천천히 안녕”',''),(18,'https://movie-phinf.pstatic.net/20200429_215/15881414327594O6hj_JPEG/movie_image.jpg?type=m203_290_2','트롤','애니메이션','91분 ','2020.04.29','월트 도른, 데이빗 P. 스미스','안나 켄드릭, 저스틴 팀버레이크','전체 관람가','노래와 춤을 즐기며 평화로운 나날을 보내던 팝 트롤 ‘파피’와 ‘브랜치’ 그리고 친구들.\n 어느 날 ‘파피’는 자신들 외에도 서로 다른 외모와 노래를 가진 5개의 트롤 마을이 더 있다는 것을 알게 된다.\n \n 모두와 친구가 되어 신나게 지내고 싶은 ‘파피’와 달리,\n 록 트롤 마을의 여왕 ‘바브’는 록을 제외한 모든 음악을 없애기 위해 다른 트롤 마을들을 하나씩 파괴하기 시작하고\n ‘파피’는 위기에 빠진 트롤 세계를 구하기 위해 친구들과 위험천만한 모험을 떠나게 되는데…',''),(19,'https://movie-phinf.pstatic.net/20200513_16/1589346464117W7CKv_JPEG/movie_image.jpg?type=m203_290_2','라스트 풀 메저','드라마','116분 ','2020.05.20','토드 로빈슨','세바스찬 스탠(스콧 허프만), 사무엘 L. 잭슨(빌리 타코다), 크리스토퍼 플러머(프랭크 피첸바거)','15세 관람가','1966년 4월 11일, 베트남 전쟁 사상 최악의 미군 사상자를 낸 애블린 전투.\n 그곳에 전우들을 구하기 위해 주저없이 뛰어든 공군 항공대원 \'피츠\'.\n 32년이 지난 후 국방부 소속 변호사 스콧 허프만(세바스찬 스탠)은 \n 그날의 생존자들의 기억을 토대로 \n \'피츠\'에게 군 최고의 영예인 명예 훈장 수여를 위해 조사하던 중,\n 국가의 은폐된 진실을 알게 되고 파헤치기 시작하는데...\n \n 기적을 넘어선 감동 실화가 세상에 공개된다.',''),(20,'https://movie-phinf.pstatic.net/20200518_153/1589778290753sxMnv_JPEG/movie_image.jpg?type=m203_290_2','매드맥스','액션','120분 ','2020.06.04','조지 밀러','톰 하디(맥스 로켓탄스키), 샤를리즈 테론(임페라토르 퓨리오사), 니콜라스 홀트(눅스)','15세 관람가','핵전쟁으로 멸망한 22세기. 얼마 남지 않은 물과 기름을 차지한 독재자 임모탄 조가 살아남은 인류를 지배한다.  한편, 아내와 딸을 잃고 살아남기 위해 사막을 떠돌던 맥스(톰 하디)는  임모탄의 부하들에게 납치되어 노예로 끌려가고, 폭정에 반발한 사령관 퓨리오사(샤를리즈 테론)는  인류 생존의 열쇠를 쥔 임모탄의 여인들을 탈취해 분노의 도로로 폭주한다.  이에 임모탄의 전사들과 신인류 눅스(니콜라스 홀트)는 맥스를 이끌고 퓨리오사의 뒤를 쫓는데...  끝내주는 날, 끝내주는 액션이 폭렬한다!',''),(21,'https://movie-phinf.pstatic.net/20200526_172/1590480126993aPfB9_JPEG/movie_image.jpg?type=m203_290_2','국도극장','드라마','92분 ','2020.05.29','전지희','이동휘(기태)','12세 관람가','만년 고시생 기태가 고향 벌교로 돌아왔다. 사법고시가 폐지되어 고시생이라는 그 서글픈 타이틀마저 이제는 쓸 수 없게 되었다. 유배지로 향하듯 돌아온 고향엔 그다지 반가운 사람도, 반겨주는 사람도 없다.  생계를 위해 낡은 재개봉 영화관 ‘국도극장’에서 일을 시작하는 기태. 간판장이 겸 극장 관리인 오 씨는 ‘급하시다 해서 잠깐 도와주러’ 왔다는 기태가 못마땅하다.  우연히 만나게 된 동창생이자 가수 지망생 영은은 기태와 달리 24시간을 쪼개 쓰며 여러 일을 전전하고, 밤낮없이 술에 취해 있는 오 씨는 기태의 말동무가 되어준다. 자식들을 위해 몸 아픈 것도 돌보지 않는 엄마는 여전히 안쓰럽다. 기태는 왠지 이 사람들과, 다시 돌아온 고향이 싫지만은 않다.  괜찮아요. 나의 지금이 그리 영화 같진 않더라도.',''),(22,'https://movie-phinf.pstatic.net/20200417_176/1587098239671MiQEL_JPEG/movie_image.jpg?type=m203_290_2','레이니 데이 인 뉴욕','멜로/로맨스','92분 ','2020.05.06','우디 앨런','티모시 샬라메(개츠비), 엘르 패닝(애슐리), 셀레나 고메즈(챈)','15세 관람가','재즈를 사랑하는 ‘개츠비’(티모시 샬라메)\n 영화에 푹 빠진 ‘애슐리’(엘르 패닝)\n 낭만을 꿈꾸는 ‘챈’(셀레나 고메즈)\n 매력적인 세 남녀가 선사하는 낭만적인 하루!\n \n 운명 같은 만남을 기대하며\n 봄비 내리는 뉴욕에서\n 로맨틱한 하루를 함께 하실래요?',''),(23,'https://movie-phinf.pstatic.net/20200525_300/15903683812082091p_JPEG/movie_image.jpg?type=m203_290_2','킬러의 보디가드 무삭제 특별판','액션','125분 ','2020.05.20','패트릭 휴즈','라이언 레이놀즈(마이클 브라이스), 사무엘 L. 잭슨(다리우스 킨케이드)','청소년 관람불가','세상 제일 잘난 맛에 사는 섭외 1순위 앵그리 보디가드가 지명수배 1순위 구강 액션 지존 킬러를 보호하게 되면서 벌어지는 누가 누구를 지키는 지 모를, 서로 못 죽여서 안달 난 브로맨스 제로, 환장 케미의 킬링 액션 블록버스터',''),(24,'https://movie-phinf.pstatic.net/20200521_160/1590039921269Nsa94_JPEG/movie_image.jpg?type=m203_290_2','루팡 3세','애니메이션','92분 ','2020.05.21','야마자키 다카시','쿠리타 칸이치, 히로세 스즈, 후지와라 타츠야','전체 관람가','세상의 운명을 바꿀 비밀이 담겨 있는 브레송 다이어리.\n 어느 날, 다이어리가 전시된 브레송 회고전에 ‘루팡 3세’의 예고장이 날아들고, 다이어리를 노리는 비밀 조직 역시 고고학도 ‘레티시아’를 이용해 이를 가로채려고 하는데…\n \n 과연, ‘루팡 3세’는 브레송 다이어리를 손에 넣고 그 안에 숨겨진 비밀을 풀 수 있을까?',''),(25,'https://movie-phinf.pstatic.net/20200520_144/1589941594270Acogh_JPEG/movie_image.jpg?type=m203_290_2','런 보이 런','드라마','100분 ','2020.05.28','오원재','장동윤(도원), 서벽준(진수)','15세 관람가','촉망받는 달리기 선수였던 ‘도원’은 불의의 사고로 부상을 당한 후  도망치듯 전학을 온 학교에서 어릴 적 함께 달리던 단짝 ‘진수’를 만난다. 재회의 반가움도 잠시, 순수했던 과거와 다른 모습의 ‘진수’와  함께 하던 ‘도원’은 예상치 못한 사건에 휩쓸리게 되는데…  점점 나락으로 빠지는 상황을 벗어나  같은 꿈을 꾸던 미래를 맞이할 수 있을까?',''),(26,'https://movie-phinf.pstatic.net/20200518_15/1589763097565dNabl_JPEG/movie_image.jpg?type=m203_290_2','블러드샷','액션','109분 ','2020.05.21','데이브 윌슨','빈 디젤(레이 개리슨/블러드샷), 에이사 곤살레스(케이티), 샘 휴건(지미 달튼)','15세 관람가','아내와 함께 휴가를 보내던 특수 부대원 ‘레이’(빈 디젤)는 정체불명의 적에게 납치되어 살해당한다. 혈액 속에 수많은 나노봇을 주입하는 최첨단 프로젝트 블러드샷을 통해 부활한 레이. 놀라운 치유력과 가공할 만한 파워의 슈퍼 히어로로 업그레이드된 레이는 아내를 죽인 놈을 찾아 무차별적인 복수의 질주를 시작한다. 하지만, 자신이 진짜라고 생각했던 것들이 거짓임을 깨닫게 되는데…',''),(27,'https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m203_290_2','기생충','드라마','131분 ','2019.05.30','봉준호','송강호(기택), 이선균(동익), 조여정(연교)','15세 관람가','전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족. 장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는 모처럼 싹튼 고정수입의 희망이다. 온 가족의 도움과 기대 속에 박사장(이선균) 집으로 향하는 기우. 글로벌 IT기업 CEO인 박사장의 저택에 도착하자 젊고 아름다운 사모님 연교(조여정)가 기우를 맞이한다.  그러나 이렇게 시작된 두 가족의 만남 뒤로, 걷잡을 수 없는 사건이 기다리고 있었으니…',''),(28,'https://movie-phinf.pstatic.net/20181017_83/15397650480164Sm4J_JPEG/movie_image.jpg?type=m203_290_2','여곡성','공포','94분 ','2018.11.08','유영선','서영희(신씨부인), 손나은(옥분), 이태리(해천비)','15세 관람가','원인 모를 기이한 죽음이 이어지는 한 저택. 우연히 이곳에 발을 들이게 된 옥분은 비밀을 간직한 신씨 부인을 만난다. 신씨 부인은 옥분에게 집안에 있는 동안 반드시 지켜야 할 규칙을 이야기하고, 옥분은 상상조차 할 수 없는 서늘한 진실을 마주하게 된다.  죽음이 소리 내어 울기 시작한다! 살고 싶다면, 귀를 막아라!',''),(29,'https://movie-phinf.pstatic.net/20200520_187/1589940155568BsYic_JPEG/movie_image.jpg?type=m203_290_2','레미','드라마','108분 ','2020.05.28','앙트완 블로시에르','다니엘 오떼유(비탈리스), 말룸 파킨(레미)','전체 관람가','자신이 버려진 아이란 걸 알게 된 소년 레미는\n 어느 날 거리의 음악가 비탈리스를 만나게 된다.\n 소년이 가진 아름다운 목소리와 노래의 재능을 알아본 비탈리스는\n 레미에게 따뜻한 스승이자 인생 멘토가 되어주고,\n 두 사람은 동물 친구들과 함께 프랑스 전역을 여행하며 공연을 이어간다.\n \n 거듭되는 시련들 속에서도 희망을 잃지 않고 꿈을 노래하던 레미는\n 어느 날 자신의 출생에 숨겨진 비밀을 풀어줄 단서를 알게 되는데...\n 과연, 레미는 자신의 진짜 가족을 찾을 수 있을까?',''),(30,'https://movie-phinf.pstatic.net/20130206_29/13601146693401seof_JPEG/movie_image.jpg?type=m203_290_2','신세계','범죄','134분 ','2020.05.21','박훈정','이정재(이자성), 최민식(강과장), 황정민(정청)','청소년 관람불가','\"너, 나하고 일 하나 같이 하자\" 경찰청 수사 기획과 강과장(최민식)은 국내 최대 범죄 조직인 \'골드문\'이 기업형 조직으로 그 세력이 점점 확장되자 신입경찰 이자성(이정재)에게 잠입 수사를 명한다. 그리고 8년, 자성은 골드문의 2인자이자 그룹 실세인 정청(황정민)의 오른팔이 되기에 이른다.  \"우리 브라더는 그냥 딱, 이 형님만 믿으면 돼야!\" 골드문 회장이 갑자기 사망하자, 강과장(최민식)은 후계자 결정에 직접 개입하는 \'신세계\' 작전을 설계한다. 피도 눈물도 없는 후계자 전쟁의 한 가운데, 정청(황정민)은 8년 전, 고향 여수에서 처음 만나 지금까지 친형제처럼 모든 순간을 함께 해 온 자성(이정재)에게 더욱 강한 신뢰를 보낸다.  \"약속 했잖습니까... 이번엔 진짜 끝이라고\" 한편, 작전의 성공만 생각하는 강과장(최민식)은 계속해서 자성(이정재)의 목을 조여만 간다. 시시각각 신분이 노출될 위기에 처한 자성(이정재)은 언제 자신을 배신할 지 모르는 경찰과, 형제의 의리로 대하는 정청(황정민) 사이에서 갈등하게 되는데…','');
/*!40000 ALTER TABLE `info_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_member3`
--

DROP TABLE IF EXISTS `info_member3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_member3` (
  `id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_member3`
--

LOCK TABLES `info_member3` WRITE;
/*!40000 ALTER TABLE `info_member3` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_member3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_reply`
--

DROP TABLE IF EXISTS `info_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `replyday` datetime(6) NOT NULL,
  `member_id_id` varchar(100) NOT NULL,
  `movie_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `info_reply_movie_id_id_8fe974ef_fk_info_info_id` (`movie_id_id`),
  KEY `info_reply_member_id_id_876c3429_fk_member_member_id` (`member_id_id`),
  CONSTRAINT `info_reply_member_id_id_876c3429_fk_member_member_id` FOREIGN KEY (`member_id_id`) REFERENCES `member_member` (`id`),
  CONSTRAINT `info_reply_movie_id_id_8fe974ef_fk_info_info_id` FOREIGN KEY (`movie_id_id`) REFERENCES `info_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_reply`
--

LOCK TABLES `info_reply` WRITE;
/*!40000 ALTER TABLE `info_reply` DISABLE KEYS */;
INSERT INTO `info_reply` VALUES (6,'최악이에요... 올해 최악의 영화','2020-06-11 17:14:18.000000','cjy101010',1),(7,'음 나쁘지 않은듯','2020-06-11 17:15:06.000000','ggangpae11',1),(8,'지효누나 최고에요!','2020-06-11 17:15:28.000000','ggangpae11',2),(9,'뻔한 감방 탈출 영화','2020-06-11 17:15:47.000000','ggangpae11',3);
/*!40000 ALTER TABLE `info_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_member`
--

DROP TABLE IF EXISTS `member_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_member` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `add` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birth` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member`
--

LOCK TABLES `member_member` WRITE;
/*!40000 ALTER TABLE `member_member` DISABLE KEYS */;
INSERT INTO `member_member` VALUES ('cjy101010','1010101010','최지용','01077772222','보령','cjy23@naver.com','940121','남'),('ggangpae11','5555555555','문동규','01065443221','서울','gpgp23@naver.com','930601','남'),('jupice1479','1212121212','유첨지','01099992222','대전 서구 둔산동','jupice3322@gmail.com','910911','남'),('jupice3232','1212121212','유첨지','01053332222','서울 서초구 효령로','ninicu@naver.com','930910','남'),('jupice3322','2222222222','유승종','01080335251','대전 서구 둔산동','jupice3322@gmail.com','920922','남'),('jupice7766','1212121212','유첨지','01066664444','대전 서구 둔산동','jupice1122@gmail.com','910912','남'),('nicus3322','1111111111','유수지','01099605251','서울','jupice1111@gmail.com','861028','여'),('sulrungtang','7777777777','김첨지','0114325551','울산','nicus@naver.com','501022','남');
/*!40000 ALTER TABLE `member_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_info`
--

DROP TABLE IF EXISTS `reserve_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `runningtime` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `agecut` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `counting` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_info`
--

LOCK TABLES `reserve_info` WRITE;
/*!40000 ALTER TABLE `reserve_info` DISABLE KEYS */;
INSERT INTO `reserve_info` VALUES (1,'언더워터','윌리엄 유뱅크','크리스틴 스튜어트(노라), 뱅상 카셀(캡틴), T.J. 밀러(파울)','95분 ','스릴러','15세 관람가','30일 동안 해저 시추 시설에서 엄청난 압력을 견디며 바다의 밑바닥을 뚫어야 하는 캐플러 기지의 대원들.\n 어느 날, 큰 지진으로 콘크리트 구조물을 뚫고 급류가 들이 닥쳐 기지는 순식간에 파괴되고 대혼란이 일어난다.\n \n 갑작스런 대재앙 속에서 가까스로 살아남은 대원들은 전기 엔지니어 노라를 비롯한 5명.\n 이들이 시도해 볼 수 있는 유일한 방법은 또 다른 해저 기지 ‘로우벅’으로 이동해 탈출 포트를 찾는 것 뿐.\n \n 하지만 어두운 심해엔 그들만이 존재하는 것이 아니었다.\n 무언가 그들을 바짝 따라오고 있다.\n 불가사의한 포식자와 쫓고 쫓기는 위험천만한 게임에 갇혀버린 대원들.\n 살아남기 위해선 남은 용기를 전부 쥐어 짜내야만 한다..\n \n 살고 싶다면 모든 감각을 깨워라!','https://movie-phinf.pstatic.net/20200518_300/1589776956506KIHU1_JPEG/movie_image.jpg?type=m203_290_2',NULL),(2,'침입자','손원평','송지효(유진), 김무열(서진)','102분 ','미스터리','15세 관람가','얼마 전 사고로 아내를 잃고 실의에 빠져 있는 건축가 ‘서진’에게 25년 전 실종된 동생을 찾았다는 연락이 온다 처음 본 자신을 친근하게 “오빠”라고 부르는 ‘유진’이 어딘가 불편한 ‘서진’과 달리 가족들은 금세 그녀를 받아들인다  그런데 ‘유진’이 돌아온 후 가족들에게 이상한 일들이 벌어지기 시작하고, 이를 의심스럽게 여긴 ‘서진’은 동생의 비밀을 쫓다 자신의 일상을 송두리째 뒤흔든 사건에 그녀가 연관되어 있음을 알게 되는데...  추적 끝에 드러나는 충격적인 진실!','https://movie-phinf.pstatic.net/20200604_287/1591247101011RnPbV_JPEG/movie_image.jpg?type=m203_290_2',NULL),(3,'프리즌 이스케이프','프란시스 아난','다니엘 래드클리프(팀), 다니엘 웨버(스티븐)','106분 ','모험','12세 관람가','인권운동가 ‘팀’과 ‘스티븐’은 억울한 판결로 투옥된다. 둘은 불의에 굴복하지 않고 탈출을 결심한다. 나가기 위해 열어야 할 강철 문은 15개! 그들은 나뭇조각으로 열쇠를 만들기 시작하고, 지금껏 아무도 성공한 적 없는 0%의 확률 속에서 목숨을 건 단 한 번의 기회를 노리는데…','https://movie-phinf.pstatic.net/20200428_196/1588038709486FYyHu_JPEG/movie_image.jpg?type=m203_290_2',NULL),(4,'위대한 쇼맨','마이클 그레이시','휴 잭맨(P.T. 바넘), 잭 에프론(필립 칼라일), 미셸 윌리엄스(채러티 바넘)','104분 ','드라마','12세 관람가','쇼 비즈니스의 창시자이자, 꿈의 무대로 전세계를 매료시킨 남자\n ‘바넘’의 이야기에서 영감을 받아 탄생한 오리지널 뮤지컬 영화 <위대한 쇼맨>.\n <레미제라블> 이후 다시 뮤지컬 영화로 돌아온 휴 잭맨부터 잭 에프론, 미셸 윌리엄스, 레베카 퍼거슨, 젠다야까지\n 할리우드 최고의 배우들이 합류해 환상적인 앙상블을 선보인다.\n 여기에 <미녀와 야수> 제작진과 <라라랜드> 작사팀의 합류로\n 더욱 풍성해진 비주얼과 스토리, 음악까지 선보일 <위대한 쇼맨>은\n ‘우리는 누구나 특별하다’는 메시지로 관객들에게 재미는 물론, 감동까지 선사할 것이다.\n \n THIS IS ME! 우리는 누구나 특별하다!','https://movie-phinf.pstatic.net/20171218_47/1513561221134wvRja_JPEG/movie_image.jpg?type=m203_290_2',NULL),(5,'초미의 관심사','남연우','조민수(엄마), 치타(순덕)','92분 ','드라마','15세 관람가','가수 ‘블루로 활동하며 주가를 올리고 있는 ‘순덕’(김은영). 어느 날 성격 차이로 별거(?) 중이었던 엄마(조민수)가 들이닥쳐 엄청난 소식을 전한다. 막내가 엄마의 가겟세와 ‘순덕’의 비상금을 들고 튀었다는 것!  괘씸한 막내를 쫓기 위해 두 사람은 단 하루, 손을 잡기로 합의하고 도시를 누비기 시작한다. 그러나 극과 극의 성격을 가진 두 사람은 사사건건 부딪히기 시작하고, 추적 끝에 밝혀지는 막내의 비밀은 수상하기 짝이 없는데...  “가족은 다 같아야 하니?!” 달라도 너무 다른 극과 극 모녀의 예측불허 추격전이 시작된다!','https://movie-phinf.pstatic.net/20200527_46/1590566157871xm82Y_JPEG/movie_image.jpg?type=m203_290_2',NULL),(6,'카페 벨에포크','니콜라스 베도스','다니엘 오떼유(빅토르), 기욤 까네(앙투안), 도리아 틸리에(마고)','115분 ','코미디','15세 관람가','행복했던 그때 그 모든 것이 그리워진 ‘빅토르’는\n 100% 고객 맞춤형 핸드메이드 시간여행의 설계자 ‘앙투안’의 초대로\n 하룻밤의 시간여행을 떠난다\n 그의 눈 앞에 마법처럼 펼쳐진 ‘카페 벨에포크’에서\n ‘빅토르’는 꿈에 그리던 첫사랑과 재회하게 되는데...','https://movie-phinf.pstatic.net/20200513_255/1589352192563Cb3mX_JPEG/movie_image.jpg?type=m203_290_2',NULL),(7,'더 플랫폼','가더 가츠테루-우루샤','이반 마사구에(고렝)','94분 ','SF','청소년 관람불가','0 … 33 … 101 …\n 30일마다 랜덤으로 레벨이 바뀌는 극한 생존의 수직 감옥 ‘플랫폼’\n 최상위 레벨 0에서 아래로 내려갈수록 음식도 인간성도 바닥나는데…','https://movie-phinf.pstatic.net/20200506_168/1588731103437Jz8kl_JPEG/movie_image.jpg?type=m203_290_2',NULL),(8,'그집','알베르트 핀토','베고냐 바르가스(암파로), 이반 마르코스(마놀로), 베아 세구라(칸델라)','104분 ','공포','15세 관람가','1976년 스페인 마드리드, 새 출발을 꿈꾸며 도시로 이주한 6명의 가족.\n 그들이 이사한 ‘그 집’에는 수상한 기운이 감돌기 시작하고,\n 마침내 가족의 꿈은 악몽이 되고 마는데...','https://movie-phinf.pstatic.net/20200513_183/15893326116456JYXK_JPEG/movie_image.jpg?type=m203_290_2',NULL),(9,'범털','강태호','이설구(범털), 강인성(사형수), 유상재(정태수)','108분 ','범죄','15세 관람가','우발적 폭력 사건에 휘말려 억울하게 수감된 ‘만희’는  교도소의 범털이 기거하는 폭력방에 입소되어, 왈왈이, 사형수, 벌구, 꼬마, 개털과 함께 한솥밥을 먹게 된다.  한편, 반대파 메이커 건달 두목인 ‘태수’가 같은 사동으로 입소하게 되면서, 범털에게 불만을 품은 봉천동파 부두목 조.밥과 용주골 갈치, 가리봉동파 와꾸, 도끼,  패거리들이 모여들고, 재소자 목욕탕에서 샤워 중인 범털을 기습해온다.  위기를 제압한 범털은 태수와 한 편인 보안과장이 출동시킨 타격대에 의해 구금당할 위험에 처하고, 이때 숨겨놓은 칼을 찾아든 사형수로 인해 일촉즉발의 사태로 번지게 되는데…  가진 자와 못 가진 자의 목숨을 건 마지막 승부가 펼쳐진다!','https://movie-phinf.pstatic.net/20200504_35/1588575878907j85rf_JPEG/movie_image.jpg?type=m203_290_2',NULL),(10,'날씨의 아이','신카이 마코토','심규혁(호다카), 김유림(히나), 최한(스가)','112분 ','애니메이션','15세 관람가','비가 그치지 않던 어느 여름날,\n 가출 소년 ‘호다카’는 수상한 잡지사에 취직하게 되고\n 비밀스러운 소녀 ‘히나’를 우연히 만난다.\n \n “지금부터 하늘이 맑아질 거야”\n \n 그녀의 기도에 거짓말 같이 빗줄기는 멈추고,\n 사람들의 얼굴에 환한 빛이 내려온다.\n \n “신기해, 날씨 하나에 사람들의 감정이 이렇게나 움직이다니”\n \n 하지만, 맑음 뒤 흐림이 찾아오듯\n 두 사람은 엄청난 세계의 비밀을 마주하게 되는데…\n \n 흐리기만 했던 세상이 빛나기 시작했고, 그 끝에는 네가 있었다.','https://movie-phinf.pstatic.net/20200515_153/1589521029136pyDNk_JPEG/movie_image.jpg?type=m203_290_2',NULL),(11,'미스비헤이비어','필립파 로소프','키이라 나이틀리(샐리 알렉산더), 제시 버클리(조 로빈슨 ), 구구 바샤-로(제니퍼 호스텐)','106분 ','드라마','15세 관람가','여자라는 이유만으로 학계에서 무시당하지만 \n 실력으로 이기겠다는 여성 운동가이자 역사가 \'샐리\' (키이라 나이틀리)\n \n 성적 대상화의 주범 미스월드에 \n 한 방 먹일 작전을 짠 페미니스트 예술가 \'조\' (제시 버클리)\n \n 역사상 최초의 미스 그레나다로서 \n 흑인 아이들에게 희망을 전하고 싶은 \'제니퍼\' (구구 바샤-로)\n \n 1970년, 달 착륙과 월드컵 결승보다 더 많은 1억 명이 지켜본 \'미스월드\'\n \n 성적 대상화를 국민 스포츠로 만든 미스월드에 맞서\n 자신만의 스타일로 진정한 자유를 외친 여성들의 유쾌한 반란이 시작된다!','https://movie-phinf.pstatic.net/20200514_72/1589435843946AjfFa_JPEG/movie_image.jpg?type=m203_290_2',NULL),(12,'범털','강태호','이설구(범털), 강인성(사형수), 유상재(정태수)','108분 ','범죄','15세 관람가','우발적 폭력 사건에 휘말려 억울하게 수감된 ‘만희’는  교도소의 범털이 기거하는 폭력방에 입소되어, 왈왈이, 사형수, 벌구, 꼬마, 개털과 함께 한솥밥을 먹게 된다.  한편, 반대파 메이커 건달 두목인 ‘태수’가 같은 사동으로 입소하게 되면서, 범털에게 불만을 품은 봉천동파 부두목 조.밥과 용주골 갈치, 가리봉동파 와꾸, 도끼,  패거리들이 모여들고, 재소자 목욕탕에서 샤워 중인 범털을 기습해온다.  위기를 제압한 범털은 태수와 한 편인 보안과장이 출동시킨 타격대에 의해 구금당할 위험에 처하고, 이때 숨겨놓은 칼을 찾아든 사형수로 인해 일촉즉발의 사태로 번지게 되는데…  가진 자와 못 가진 자의 목숨을 건 마지막 승부가 펼쳐진다!','https://movie-phinf.pstatic.net/20200504_35/1588575878907j85rf_JPEG/movie_image.jpg?type=m203_290_2',NULL),(13,'패왕별희 디 오리지널','천카이거','장국영(두지), 공리(주샨), 장풍의(시투)','171분 ','드라마','15세 관람가','어렸을 때부터 함께 경극을 해온 ‘두지’(장국영)와 ‘시투’(장풍의).  세상에 둘도 없는 절친한 아우와 형이지만,  ‘두지’는 남몰래 ‘시투’에 대한 마음을 품고 있다.  하지만 ‘시투’는 여인 ‘주샨’(공리)에 마음을 빼앗기고,  그로 인해 ‘두지’는 감정의 소용돌이에 빠지게 되는데…  사랑과 운명, 아름다움을 뒤바꾼 화려한 막이 열린다!','https://movie-phinf.pstatic.net/20200414_29/15868256845244B38u_JPEG/movie_image.jpg?type=m203_290_2',NULL),(14,'아홉 스님','윤성준','자승(본인), 무연(본인), 진각(본인)','72분 ','드라마','전체 관람가','한국 불교 역사상 최초, 천막 동안거를 통해 정진하게 된 아홉 스님들. 살을 에는 한겨울, 난방 기구 하나 없이 폐쇄된 천막에서 7개의 엄격한 규칙과 함께 참선의 90일이 시작되고, 단 한 벌의 옷과 하루 한 끼의 극한 수행을 버티면서도 신음 소리 한 번 내지 않던 스님들에게 위기가 찾아오는데….','https://movie-phinf.pstatic.net/20200520_72/1589955100593Ndd9T_JPEG/movie_image.jpg?type=m203_290_2',NULL),(15,'컨테이젼','스티븐 소더버그','마리옹 꼬띠아르 (리어노러 오랑테스 박사), 맷 데이먼(토마스 엠호프), 로렌스 피시번(엘리스 치버 박사)','103분 ','미스터리','12세 관람가','아무 것도 만지지 마라! 누구도 만나지 마라! 홍콩 출장에서 돌아온 베스(기네스 팰트로)가 발작을 일으키며 사망하고 그녀의 남편(맷 데이먼)이 채 원인을 알기 전에 아들마저 죽음을 당한다. 얼마 지나지 않아 세계 각국의 사람들이 같은 증상으로 사망한다. 일상생활의 접촉을 통해 이루어진 전염은 그 수가 한 명에서 네 명, 네 명에서 열 여섯 명, 수백, 수천 명으로 늘어난다. 한편, 미국 질병통제센터의 치버 박사(로렌스 피시번)는 경험이 뛰어난 박사(케이트 윈슬렛)를 감염현장으로 급파하고 세계보건기구의 오란테스 박사(마리옹 꼬띠아르)는 최초발병경로를 조사한다. 이 가운데 진실이 은폐됐다고 주장하는 프리랜서 저널리스트(주드 로)가 촉발한 음모론의 공포는 그가 운영하는 블로그를 통해 원인불명의 전염만큼이나 빠르게 세계로 퍼져가는데…','https://movie-phinf.pstatic.net/20111223_157/1324646162713IylFU_JPEG/movie_image.jpg?type=m203_290_2',NULL),(16,'톰보이','셀린 시아마','조 허란(로레 / 미카엘), 말론 레바나(잔)','82분 ','드라마','12세 관람가','새로 이사 온 아이, ‘미카엘’.\n 파란색을 좋아하고, 끝내주는 축구 실력과 유난히 잘 어울리는 짧은 머리로\n 친구들을 사로잡는 그의 진짜 이름은 ‘로레’!\n 눈물겹게 아름답고, 눈부시게 다정했던\n 10살 여름의 비밀 이야기가 시작된다!','https://movie-phinf.pstatic.net/20200417_103/1587088820009DdKKx_JPEG/movie_image.jpg?type=m203_290_2',NULL),(17,'조금씩, 천천히 안녕','나카노 료타','아오이 유우(후미), 다케우치 유코(마리), 마츠바라 치에코(어머니)','127분 ','가족','전체 관람가','아버지의 70번째 생일날, \n 두 딸 ‘마리’와 ‘후미’를 불러 모은 어머니는 \n 아버지가 치매에 걸렸다는 충격적인 소식을 전한다.  \n \n “많은 것들이 점점 멀어져…”\n \n ‘후미’네 가족은 서서히 기억을 잃어가는 아버지와 헤어짐을 준비하며\n 자신의 아픔과 서로의 상처를 조금씩 보듬어가기 시작하는데…\n \n 당신에게 전하는 특별한 작별 인사\n “조금씩, 천천히 안녕”','https://movie-phinf.pstatic.net/20200514_17/1589432302442ftAeW_JPEG/movie_image.jpg?type=m203_290_2',NULL),(18,'트롤','월트 도른, 데이빗 P. 스미스','안나 켄드릭, 저스틴 팀버레이크','91분 ','애니메이션','전체 관람가','노래와 춤을 즐기며 평화로운 나날을 보내던 팝 트롤 ‘파피’와 ‘브랜치’ 그리고 친구들.\n 어느 날 ‘파피’는 자신들 외에도 서로 다른 외모와 노래를 가진 5개의 트롤 마을이 더 있다는 것을 알게 된다.\n \n 모두와 친구가 되어 신나게 지내고 싶은 ‘파피’와 달리,\n 록 트롤 마을의 여왕 ‘바브’는 록을 제외한 모든 음악을 없애기 위해 다른 트롤 마을들을 하나씩 파괴하기 시작하고\n ‘파피’는 위기에 빠진 트롤 세계를 구하기 위해 친구들과 위험천만한 모험을 떠나게 되는데…','https://movie-phinf.pstatic.net/20200429_215/15881414327594O6hj_JPEG/movie_image.jpg?type=m203_290_2',NULL),(19,'라스트 풀 메저','토드 로빈슨','세바스찬 스탠(스콧 허프만), 사무엘 L. 잭슨(빌리 타코다), 크리스토퍼 플러머(프랭크 피첸바거)','116분 ','드라마','15세 관람가','1966년 4월 11일, 베트남 전쟁 사상 최악의 미군 사상자를 낸 애블린 전투.\n 그곳에 전우들을 구하기 위해 주저없이 뛰어든 공군 항공대원 \'피츠\'.\n 32년이 지난 후 국방부 소속 변호사 스콧 허프만(세바스찬 스탠)은 \n 그날의 생존자들의 기억을 토대로 \n \'피츠\'에게 군 최고의 영예인 명예 훈장 수여를 위해 조사하던 중,\n 국가의 은폐된 진실을 알게 되고 파헤치기 시작하는데...\n \n 기적을 넘어선 감동 실화가 세상에 공개된다.','https://movie-phinf.pstatic.net/20200513_16/1589346464117W7CKv_JPEG/movie_image.jpg?type=m203_290_2',NULL),(20,'매드맥스','조지 밀러','톰 하디(맥스 로켓탄스키), 샤를리즈 테론(임페라토르 퓨리오사), 니콜라스 홀트(눅스)','120분 ','액션','15세 관람가','핵전쟁으로 멸망한 22세기. 얼마 남지 않은 물과 기름을 차지한 독재자 임모탄 조가 살아남은 인류를 지배한다.  한편, 아내와 딸을 잃고 살아남기 위해 사막을 떠돌던 맥스(톰 하디)는  임모탄의 부하들에게 납치되어 노예로 끌려가고, 폭정에 반발한 사령관 퓨리오사(샤를리즈 테론)는  인류 생존의 열쇠를 쥔 임모탄의 여인들을 탈취해 분노의 도로로 폭주한다.  이에 임모탄의 전사들과 신인류 눅스(니콜라스 홀트)는 맥스를 이끌고 퓨리오사의 뒤를 쫓는데...  끝내주는 날, 끝내주는 액션이 폭렬한다!','https://movie-phinf.pstatic.net/20200518_153/1589778290753sxMnv_JPEG/movie_image.jpg?type=m203_290_2',NULL),(21,'국도극장','전지희','이동휘(기태)','92분 ','드라마','12세 관람가','만년 고시생 기태가 고향 벌교로 돌아왔다. 사법고시가 폐지되어 고시생이라는 그 서글픈 타이틀마저 이제는 쓸 수 없게 되었다. 유배지로 향하듯 돌아온 고향엔 그다지 반가운 사람도, 반겨주는 사람도 없다.  생계를 위해 낡은 재개봉 영화관 ‘국도극장’에서 일을 시작하는 기태. 간판장이 겸 극장 관리인 오 씨는 ‘급하시다 해서 잠깐 도와주러’ 왔다는 기태가 못마땅하다.  우연히 만나게 된 동창생이자 가수 지망생 영은은 기태와 달리 24시간을 쪼개 쓰며 여러 일을 전전하고, 밤낮없이 술에 취해 있는 오 씨는 기태의 말동무가 되어준다. 자식들을 위해 몸 아픈 것도 돌보지 않는 엄마는 여전히 안쓰럽다. 기태는 왠지 이 사람들과, 다시 돌아온 고향이 싫지만은 않다.  괜찮아요. 나의 지금이 그리 영화 같진 않더라도.','https://movie-phinf.pstatic.net/20200526_172/1590480126993aPfB9_JPEG/movie_image.jpg?type=m203_290_2',NULL),(22,'레이니 데이 인 뉴욕','우디 앨런','티모시 샬라메(개츠비), 엘르 패닝(애슐리), 셀레나 고메즈(챈)','92분 ','멜로/로맨스','15세 관람가','재즈를 사랑하는 ‘개츠비’(티모시 샬라메)\n 영화에 푹 빠진 ‘애슐리’(엘르 패닝)\n 낭만을 꿈꾸는 ‘챈’(셀레나 고메즈)\n 매력적인 세 남녀가 선사하는 낭만적인 하루!\n \n 운명 같은 만남을 기대하며\n 봄비 내리는 뉴욕에서\n 로맨틱한 하루를 함께 하실래요?','https://movie-phinf.pstatic.net/20200417_176/1587098239671MiQEL_JPEG/movie_image.jpg?type=m203_290_2',NULL),(23,'킬러의 보디가드 무삭제 특별판','패트릭 휴즈','라이언 레이놀즈(마이클 브라이스), 사무엘 L. 잭슨(다리우스 킨케이드)','125분 ','액션','청소년 관람불가','세상 제일 잘난 맛에 사는 섭외 1순위 앵그리 보디가드가 지명수배 1순위 구강 액션 지존 킬러를 보호하게 되면서 벌어지는 누가 누구를 지키는 지 모를, 서로 못 죽여서 안달 난 브로맨스 제로, 환장 케미의 킬링 액션 블록버스터','https://movie-phinf.pstatic.net/20200525_300/15903683812082091p_JPEG/movie_image.jpg?type=m203_290_2',NULL),(24,'루팡 3세','야마자키 다카시','쿠리타 칸이치, 히로세 스즈, 후지와라 타츠야','92분 ','애니메이션','전체 관람가','세상의 운명을 바꿀 비밀이 담겨 있는 브레송 다이어리.\n 어느 날, 다이어리가 전시된 브레송 회고전에 ‘루팡 3세’의 예고장이 날아들고, 다이어리를 노리는 비밀 조직 역시 고고학도 ‘레티시아’를 이용해 이를 가로채려고 하는데…\n \n 과연, ‘루팡 3세’는 브레송 다이어리를 손에 넣고 그 안에 숨겨진 비밀을 풀 수 있을까?','https://movie-phinf.pstatic.net/20200521_160/1590039921269Nsa94_JPEG/movie_image.jpg?type=m203_290_2',NULL),(25,'런 보이 런','오원재','장동윤(도원), 서벽준(진수)','100분 ','드라마','15세 관람가','촉망받는 달리기 선수였던 ‘도원’은 불의의 사고로 부상을 당한 후  도망치듯 전학을 온 학교에서 어릴 적 함께 달리던 단짝 ‘진수’를 만난다. 재회의 반가움도 잠시, 순수했던 과거와 다른 모습의 ‘진수’와  함께 하던 ‘도원’은 예상치 못한 사건에 휩쓸리게 되는데…  점점 나락으로 빠지는 상황을 벗어나  같은 꿈을 꾸던 미래를 맞이할 수 있을까?','https://movie-phinf.pstatic.net/20200520_144/1589941594270Acogh_JPEG/movie_image.jpg?type=m203_290_2',NULL),(26,'블러드샷','데이브 윌슨','빈 디젤(레이 개리슨/블러드샷), 에이사 곤살레스(케이티), 샘 휴건(지미 달튼)','109분 ','액션','15세 관람가','아내와 함께 휴가를 보내던 특수 부대원 ‘레이’(빈 디젤)는 정체불명의 적에게 납치되어 살해당한다. 혈액 속에 수많은 나노봇을 주입하는 최첨단 프로젝트 블러드샷을 통해 부활한 레이. 놀라운 치유력과 가공할 만한 파워의 슈퍼 히어로로 업그레이드된 레이는 아내를 죽인 놈을 찾아 무차별적인 복수의 질주를 시작한다. 하지만, 자신이 진짜라고 생각했던 것들이 거짓임을 깨닫게 되는데…','https://movie-phinf.pstatic.net/20200518_15/1589763097565dNabl_JPEG/movie_image.jpg?type=m203_290_2',NULL),(27,'기생충','봉준호','송강호(기택), 이선균(동익), 조여정(연교)','131분 ','드라마','15세 관람가','전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족. 장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는 모처럼 싹튼 고정수입의 희망이다. 온 가족의 도움과 기대 속에 박사장(이선균) 집으로 향하는 기우. 글로벌 IT기업 CEO인 박사장의 저택에 도착하자 젊고 아름다운 사모님 연교(조여정)가 기우를 맞이한다.  그러나 이렇게 시작된 두 가족의 만남 뒤로, 걷잡을 수 없는 사건이 기다리고 있었으니…','https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m203_290_2',NULL),(28,'여곡성','유영선','서영희(신씨부인), 손나은(옥분), 이태리(해천비)','94분 ','공포','15세 관람가','원인 모를 기이한 죽음이 이어지는 한 저택. 우연히 이곳에 발을 들이게 된 옥분은 비밀을 간직한 신씨 부인을 만난다. 신씨 부인은 옥분에게 집안에 있는 동안 반드시 지켜야 할 규칙을 이야기하고, 옥분은 상상조차 할 수 없는 서늘한 진실을 마주하게 된다.  죽음이 소리 내어 울기 시작한다! 살고 싶다면, 귀를 막아라!','https://movie-phinf.pstatic.net/20181017_83/15397650480164Sm4J_JPEG/movie_image.jpg?type=m203_290_2',NULL),(29,'레미','앙트완 블로시에르','다니엘 오떼유(비탈리스), 말룸 파킨(레미)','108분 ','드라마','전체 관람가','자신이 버려진 아이란 걸 알게 된 소년 레미는\n 어느 날 거리의 음악가 비탈리스를 만나게 된다.\n 소년이 가진 아름다운 목소리와 노래의 재능을 알아본 비탈리스는\n 레미에게 따뜻한 스승이자 인생 멘토가 되어주고,\n 두 사람은 동물 친구들과 함께 프랑스 전역을 여행하며 공연을 이어간다.\n \n 거듭되는 시련들 속에서도 희망을 잃지 않고 꿈을 노래하던 레미는\n 어느 날 자신의 출생에 숨겨진 비밀을 풀어줄 단서를 알게 되는데...\n 과연, 레미는 자신의 진짜 가족을 찾을 수 있을까?','https://movie-phinf.pstatic.net/20200520_187/1589940155568BsYic_JPEG/movie_image.jpg?type=m203_290_2',NULL),(30,'신세계','박훈정','이정재(이자성), 최민식(강과장), 황정민(정청)','134분 ','범죄','청소년 관람불가','\"너, 나하고 일 하나 같이 하자\" 경찰청 수사 기획과 강과장(최민식)은 국내 최대 범죄 조직인 \'골드문\'이 기업형 조직으로 그 세력이 점점 확장되자 신입경찰 이자성(이정재)에게 잠입 수사를 명한다. 그리고 8년, 자성은 골드문의 2인자이자 그룹 실세인 정청(황정민)의 오른팔이 되기에 이른다.  \"우리 브라더는 그냥 딱, 이 형님만 믿으면 돼야!\" 골드문 회장이 갑자기 사망하자, 강과장(최민식)은 후계자 결정에 직접 개입하는 \'신세계\' 작전을 설계한다. 피도 눈물도 없는 후계자 전쟁의 한 가운데, 정청(황정민)은 8년 전, 고향 여수에서 처음 만나 지금까지 친형제처럼 모든 순간을 함께 해 온 자성(이정재)에게 더욱 강한 신뢰를 보낸다.  \"약속 했잖습니까... 이번엔 진짜 끝이라고\" 한편, 작전의 성공만 생각하는 강과장(최민식)은 계속해서 자성(이정재)의 목을 조여만 간다. 시시각각 신분이 노출될 위기에 처한 자성(이정재)은 언제 자신을 배신할 지 모르는 경찰과, 형제의 의리로 대하는 정청(황정민) 사이에서 갈등하게 되는데…','https://movie-phinf.pstatic.net/20130206_29/13601146693401seof_JPEG/movie_image.jpg?type=m203_290_2',NULL);
/*!40000 ALTER TABLE `reserve_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_member`
--

DROP TABLE IF EXISTS `reserve_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_member` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `add` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth` varchar(100) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_member`
--

LOCK TABLES `reserve_member` WRITE;
/*!40000 ALTER TABLE `reserve_member` DISABLE KEYS */;
INSERT INTO `reserve_member` VALUES ('cjy91910','1010101010','최지용','01077772222','보령','cjy23@naver.com','940121','남'),('ggangpae11','5555555555','문동규','01065443221','서울','gpgp23@naver.com','930601','남'),('jupice1479','1212121212','유첨지','01099992222','대전 서구 둔산동','jupice3322@gmail.com','910911','남'),('jupice3322','2222222222','유승종','01080335251','대전','jupice3322@gmail.com','920922','남'),('nicus3322','1111111111','유수지','01099605251','서울','jupice1111@gmail.com','861028','여'),('sulrungtang','7777777777','김첨지','0114325551','울산','nicus@naver.com','501022','남'),('tangtang','1313131313','허첨지','01065442211','보령','tangtang@google.com','800812','여');
/*!40000 ALTER TABLE `reserve_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_reservation`
--

DROP TABLE IF EXISTS `reserve_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchday` varchar(100) NOT NULL,
  `watchtime` int(11) NOT NULL,
  `theater` int(11) NOT NULL,
  `bookingday` datetime(6) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `person` int(11) NOT NULL,
  `member_id_id` varchar(100) NOT NULL,
  `movie_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reserve_reservation_member_id_id_2bdbfb94_fk_reserve_member_id` (`member_id_id`),
  KEY `reserve_reservation_movie_id_id_901d2635_fk_reserve_info_id` (`movie_id_id`),
  CONSTRAINT `reserve_reservation_member_id_id_2bdbfb94_fk_reserve_member_id` FOREIGN KEY (`member_id_id`) REFERENCES `reserve_member` (`id`),
  CONSTRAINT `reserve_reservation_movie_id_id_901d2635_fk_reserve_info_id` FOREIGN KEY (`movie_id_id`) REFERENCES `reserve_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_reservation`
--

LOCK TABLES `reserve_reservation` WRITE;
/*!40000 ALTER TABLE `reserve_reservation` DISABLE KEYS */;
INSERT INTO `reserve_reservation` VALUES (7,'2020-06-01',1,1,'2020-06-10 15:08:49.000000','5,6',2,'ggangpae11',1),(8,'2020-06-01',1,2,'2020-06-10 15:09:24.000000','11,12',2,'cjy91910',2),(9,'2020-06-01',5,1,'2020-06-10 15:11:23.000000','5,6,7',3,'jupice1479',3),(10,'2020-06-01',2,2,'2020-06-10 15:11:32.000000','1,2',2,'ggangpae11',5),(11,'2020-06-01',6,2,'2020-06-10 15:11:48.000000','4,5,6,7,8,9',6,'cjy91910',7),(12,'2020-06-03',6,2,'2020-06-10 15:12:00.000000','10',1,'nicus3322',6),(13,'2020-06-01',1,1,'2020-06-10 15:12:10.000000','2,3',2,'ggangpae11',1),(15,'2020-06-03',5,2,'2020-06-10 15:12:50.000000','2,3',2,'nicus3322',3),(16,'2020-06-02',5,2,'2020-06-10 15:13:07.000000','4,6,8,10',4,'cjy91910',5),(17,'2020-06-01',4,2,'2020-06-10 15:13:25.000000','5,6,7,8',4,'ggangpae11',1),(19,'2020-06-02',1,1,'2020-06-10 15:13:51.000000','4,5,6',3,'cjy91910',2),(21,'2020-06-01',3,3,'2020-06-10 15:14:51.000000','4,5',2,'cjy91910',9),(23,'2020-06-01',3,2,'2020-06-10 15:15:12.000000','9,10',2,'cjy91910',8),(24,'2020-06-01',3,1,'2020-06-10 15:15:23.000000','3,4',2,'cjy91910',7),(25,'2020-06-01',2,3,'2020-06-10 15:15:33.000000','5',1,'nicus3322',6),(26,'2020-06-02',3,2,'2020-06-10 15:15:46.000000','5,6,7,8',4,'ggangpae11',9),(27,'2020-06-02',3,1,'2020-06-10 15:15:56.000000','5,6',2,'nicus3322',8),(28,'2020-06-02',1,3,'2020-06-10 15:16:07.000000','4,5,6',3,'cjy91910',1),(29,'2020-06-02',5,3,'2020-06-10 15:16:18.000000','3',1,'jupice1479',3),(30,'2020-06-01',2,1,'2020-06-10 15:16:29.000000','4,5,6',3,'jupice1479',4),(31,'2020-06-01',5,2,'2020-06-10 15:17:02.000000','6,7',2,'ggangpae11',4),(32,'2020-06-01',5,2,'2020-06-10 15:18:08.000000','3,4',2,'ggangpae11',4),(33,'2020-06-01',4,2,'2020-06-10 15:18:18.000000','2',1,'sulrungtang',1),(34,'2020-06-01',1,3,'2020-06-10 15:18:30.000000','3,4,5',3,'cjy91910',3),(35,'2020-06-02',4,2,'2020-06-10 15:18:47.000000','5',1,'sulrungtang',2),(36,'2020-06-02',2,3,'2020-06-10 15:18:56.000000','4,5',2,'cjy91910',4),(37,'2020-06-01',5,3,'2020-06-10 15:19:08.000000','4,5,6',3,'sulrungtang',5),(38,'2020-06-02',4,2,'2020-06-10 15:19:22.000000','7,8',2,'cjy91910',2),(39,'2020-06-02',6,3,'2020-06-10 15:19:33.000000','4,5',2,'cjy91910',6),(40,'2020-06-01',6,2,'2020-06-10 15:19:43.000000','2',1,'nicus3322',7),(41,'2020-06-02',5,1,'2020-06-10 15:19:54.000000','4,6,8',3,'cjy91910',4),(42,'2020-06-03',1,3,'2020-06-10 15:20:04.000000','3,4',2,'jupice1479',2),(44,'2020-06-02',1,3,'2020-06-10 17:58:17.000000','7,8',2,'ggangpae11',1),(45,'2020-06-01',1,1,'2020-06-10 20:55:30.000000','10',1,'jupice1479',1),(46,'2020-06-03',1,1,'2020-06-10 21:29:46.000000','5,6',2,'cjy91910',3),(47,'2020-06-03',4,1,'2020-06-11 09:54:34.000000','5',1,'cjy91910',2),(50,'2020-06-02',6,1,'2020-06-11 16:05:28.000000','5,6',2,'ggangpae11',7),(51,'2020-06-03',5,2,'2020-06-11 16:06:52.000000','7',1,'ggangpae11',3),(52,'2020-06-02',2,2,'2020-06-11 16:07:54.000000','6',1,'ggangpae11',6),(53,'2020-06-03',5,1,'2020-06-11 16:08:41.000000','6',1,'ggangpae11',5),(57,'2020-06-12',1,2,'2020-06-11 18:26:38.000000','2,3,4',3,'jupice3322',2),(58,'2020-06-12',5,1,'2020-06-11 21:38:18.000000','1,2',2,'jupice3322',3);
/*!40000 ALTER TABLE `reserve_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_seat`
--

DROP TABLE IF EXISTS `reserve_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchday` varchar(100) NOT NULL,
  `watchtime` int(11) NOT NULL,
  `theater` int(11) NOT NULL,
  `booking` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_seat`
--

LOCK TABLES `reserve_seat` WRITE;
/*!40000 ALTER TABLE `reserve_seat` DISABLE KEYS */;
INSERT INTO `reserve_seat` VALUES (1,'2020-06-12',1,1,'0110110001'),(2,'2020-06-12',2,1,'0001110000'),(3,'2020-06-12',3,1,'0011000000'),(4,'2020-06-12',4,1,'0000000000'),(5,'2020-06-12',5,1,'1100111000'),(6,'2020-06-12',6,1,'0000000000'),(7,'2020-06-12',1,2,'111111000011'),(8,'2020-06-12',2,2,'110000000000'),(9,'2020-06-12',3,2,'000111001100'),(10,'2020-06-12',4,2,'010011110000'),(11,'2020-06-12',5,2,'001101100000'),(12,'2020-06-12',6,2,'010111111000'),(13,'2020-06-12',1,3,'001110000'),(14,'2020-06-12',2,3,'000010000'),(15,'2020-06-12',3,3,'000110000'),(16,'2020-06-12',4,3,'000011110'),(17,'2020-06-12',5,3,'000111000'),(18,'2020-06-12',6,3,'000000000'),(19,'2020-06-13',1,1,'0001110000'),(20,'2020-06-13',2,1,'0000000000'),(21,'2020-06-13',3,1,'0000110000'),(22,'2020-06-13',4,1,'0000001000'),(23,'2020-06-13',5,1,'0001010100'),(24,'2020-06-13',6,1,'0000110000'),(25,'2020-06-13',1,2,'000000000000'),(26,'2020-06-13',2,2,'000001000000'),(27,'2020-06-13',3,2,'000011110000'),(28,'2020-06-13',4,2,'111010110000'),(29,'2020-06-13',5,2,'000101010100'),(30,'2020-06-13',6,2,'000000000000'),(31,'2020-06-13',1,3,'000111110'),(32,'2020-06-13',2,3,'000110000'),(33,'2020-06-13',3,3,'000000000'),(34,'2020-06-13',4,3,'001110000'),(35,'2020-06-13',5,3,'001000000'),(36,'2020-06-13',6,3,'000110000'),(37,'2020-06-14',1,1,'0000110000'),(38,'2020-06-14',2,1,'0000000000'),(39,'2020-06-14',3,1,'0000000000'),(40,'2020-06-14',4,1,'0000100000'),(41,'2020-06-14',5,1,'0000010000'),(42,'2020-06-14',6,1,'0000000000'),(43,'2020-06-14',1,2,'000000000000'),(44,'2020-06-14',2,2,'000000000000'),(45,'2020-06-14',3,2,'000000000000'),(46,'2020-06-14',4,2,'000000000000'),(47,'2020-06-14',5,2,'011000100000'),(48,'2020-06-14',6,2,'000000000100'),(49,'2020-06-14',1,3,'001100000'),(50,'2020-06-14',2,3,'000000000'),(51,'2020-06-14',3,3,'000000000'),(52,'2020-06-14',4,3,'000010000'),(53,'2020-06-14',5,3,'000000000'),(54,'2020-06-14',6,3,'000000000');
/*!40000 ALTER TABLE `reserve_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_timetable`
--

DROP TABLE IF EXISTS `reserve_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theater` int(11) NOT NULL,
  `watchday` varchar(100) NOT NULL,
  `watchtime` int(11) NOT NULL,
  `movie_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reserve_timetable_movie_id_id_1844928b_fk_reserve_info_id` (`movie_id_id`),
  CONSTRAINT `reserve_timetable_movie_id_id_1844928b_fk_reserve_info_id` FOREIGN KEY (`movie_id_id`) REFERENCES `reserve_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_timetable`
--

LOCK TABLES `reserve_timetable` WRITE;
/*!40000 ALTER TABLE `reserve_timetable` DISABLE KEYS */;
INSERT INTO `reserve_timetable` VALUES (1,1,'2020-06-12',1,1),(2,1,'2020-06-12',2,4),(3,1,'2020-06-12',3,7),(4,1,'2020-06-12',4,10),(5,1,'2020-06-12',5,3),(6,1,'2020-06-12',6,6),(7,2,'2020-06-12',1,2),(8,2,'2020-06-12',2,5),(9,2,'2020-06-12',3,8),(10,2,'2020-06-12',4,1),(11,2,'2020-06-12',5,4),(12,2,'2020-06-12',6,7),(13,3,'2020-06-12',1,3),(14,3,'2020-06-12',2,6),(15,3,'2020-06-12',3,9),(16,3,'2020-06-12',4,2),(17,3,'2020-06-12',5,5),(18,3,'2020-06-12',6,8),(19,3,'2020-06-13',1,1),(20,3,'2020-06-13',2,4),(21,3,'2020-06-13',3,7),(22,3,'2020-06-13',4,10),(23,3,'2020-06-13',5,3),(24,3,'2020-06-13',6,6),(25,1,'2020-06-13',1,2),(26,1,'2020-06-13',2,5),(27,1,'2020-06-13',3,8),(28,1,'2020-06-13',4,1),(29,1,'2020-06-13',5,4),(30,1,'2020-06-13',6,7),(31,2,'2020-06-13',1,3),(32,2,'2020-06-13',2,6),(33,2,'2020-06-13',3,9),(34,2,'2020-06-13',4,2),(35,2,'2020-06-13',5,5),(36,2,'2020-06-13',6,8),(37,2,'2020-06-14',1,1),(38,2,'2020-06-14',2,4),(39,2,'2020-06-14',3,7),(40,2,'2020-06-14',4,10),(41,2,'2020-06-14',5,3),(42,2,'2020-06-14',6,6),(43,3,'2020-06-14',1,2),(44,3,'2020-06-14',2,5),(45,3,'2020-06-14',3,8),(46,3,'2020-06-14',4,1),(47,3,'2020-06-14',5,4),(48,3,'2020-06-14',6,7),(49,1,'2020-06-14',1,3),(50,1,'2020-06-14',2,6),(51,1,'2020-06-14',3,9),(52,1,'2020-06-14',4,2),(53,1,'2020-06-14',5,5),(54,1,'2020-06-14',6,8);
/*!40000 ALTER TABLE `reserve_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'movie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12  9:54:38
