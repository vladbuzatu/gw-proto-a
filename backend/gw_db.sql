-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: gw_db
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1

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
  `name` varchar(80) NOT NULL,
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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add event',1,'add_event'),(2,'Can change event',1,'change_event'),(3,'Can delete event',1,'delete_event'),(4,'Can add venue',2,'add_venue'),(5,'Can change venue',2,'change_venue'),(6,'Can delete venue',2,'delete_venue'),(7,'Can add event_ date_ venue',3,'add_event_date_venue'),(8,'Can change event_ date_ venue',3,'change_event_date_venue'),(9,'Can delete event_ date_ venue',3,'delete_event_date_venue'),(10,'Can add log entry',4,'add_logentry'),(11,'Can change log entry',4,'change_logentry'),(12,'Can delete log entry',4,'delete_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add content type',8,'add_contenttype'),(23,'Can change content type',8,'change_contenttype'),(24,'Can delete content type',8,'delete_contenttype'),(25,'Can add session',9,'add_session'),(26,'Can change session',9,'change_session'),(27,'Can delete session',9,'delete_session');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(9,'sessions','session'),(1,'utilityapp','event'),(3,'utilityapp','event_date_venue'),(2,'utilityapp','venue');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-07 10:10:27.304668'),(2,'auth','0001_initial','2016-06-07 10:10:35.640048'),(3,'admin','0001_initial','2016-06-07 10:10:38.019546'),(4,'admin','0002_logentry_remove_auto_add','2016-06-07 10:10:38.128960'),(5,'contenttypes','0002_remove_content_type_name','2016-06-07 10:10:39.686845'),(6,'auth','0002_alter_permission_name_max_length','2016-06-07 10:10:40.339531'),(7,'auth','0003_alter_user_email_max_length','2016-06-07 10:10:41.059944'),(8,'auth','0004_alter_user_username_opts','2016-06-07 10:10:41.113245'),(9,'auth','0005_alter_user_last_login_null','2016-06-07 10:10:41.637749'),(10,'auth','0006_require_contenttypes_0002','2016-06-07 10:10:41.671092'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-07 10:10:41.714049'),(12,'sessions','0001_initial','2016-06-07 10:10:42.181836'),(13,'utilityapp','0001_initial','2016-06-07 10:10:42.678340'),(14,'utilityapp','0002_auto_20160607_0952','2016-06-07 10:10:43.922920'),(15,'utilityapp','0003_auto_20160607_1010','2016-06-07 10:10:47.304932');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilityapp_event`
--

DROP TABLE IF EXISTS `utilityapp_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilityapp_event` (
  `eventID` varchar(4) NOT NULL,
  `showName` varchar(200) NOT NULL,
  `generalGenre` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `suitability` int(11) NOT NULL,
  `minutesDuration` int(11) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilityapp_event`
--

LOCK TABLES `utilityapp_event` WRITE;
/*!40000 ALTER TABLE `utilityapp_event` DISABLE KEYS */;
INSERT INTO `utilityapp_event` VALUES ('0001','Putnam County Spelling Bee','Musicals and Opera','Six quirky adolescents compete to be the best speller in \n        the 25th Annual Putnam County Spelling Bee.',12,80),('0002','The 25th Annual Putnam County Spelling Bee','Musicals and Opera','Only those blessed with an extraordinary ability and love of language qualify for the Putnam County Spelling Bee. But there can only be one winner, and with a place in the national final at stake, emotions run high, hopes are quashed and dreams are broken. Dust off your dictionary and prepare yourself for the spelling challenge of a lifetime. This riotous musical comedy is guaranteed to have you cachinnating (use this in a sentence, request a definition?).',12,60),('0003','27 Wagons Full of Cotton by Tennessee Williams','Theatre','In 1930s Mississippi a cotton gin mysteriously burns down. In desperate financial times it appears that the rules of business are different. Do two wrongs make a right? A dysfunctional relationship centres this disturbing look at abuse and how one woman may find a silver lining in a desperate situation. This play deals with the social and economic climate of a country coming out of recession, and transcends this with the still relevant issues of mental health, domestic abuse and rape. â€˜Seemingly fragile people are the strong people really.â€™ Classic Tennessee Williams.',12,50),('0004','360 Allstars','Dance, Physical Theatre and Circus','360 Allstars is a phenomenal physical performance exploring all forms of rotation. Boasting a stellar international cast, including world champion athletes and world-class performers, the production connects the street with the elite to deliver a radical reinvention of circus! Fusing amazing physical skills with the extraordinary artistry that emerges from urban culture and with a stunning live soundtrack delivered by award-winning musicians, 360 Allstars is a revolutionary production that will leave you dizzy with excitement! \'A supercharged show\' (Theatermania.com). \'As a modern circus performance this was as slick as it gets\' (StageWhispers.com.au).',0,60),('0005','4 Minute Warning','Comedy','Armageddon is imminent. And no one saw it coming. A sketch show for the end of days, starring speed daters, ghost dinosaurs and cockroaches. The end is nigh! Directed by Lee Griffiths of Late Night Gimp Fight (Chortle Award for Best Character of Sketch Act). By Sasha Ellen and Daniel Collard. Daniel\'s audio play, Dark Shadows: Tainted Love was produced by Big Finish Productions. He can be seen in CBC\'s X Company. Sasha\'s last Edinburgh show, Signal Failure, got four-star reviews from the Scotsman, BroadwayBaby.com, EdinburghGuide.com and transferred to Soho Playhouse, New York.',14,80),('0006','4D Cinema','Theatre','Sporting a screen and a projector around his face, Mamoru Iriguchi turns himself into a mobile cinema and explores what is live and what is pre-recorded, fixed eternally on film; what liveness means when technology blurs actual and virtual realities. â€˜The sheer craft and inventionâ€¦ this is a really cunning, witty work that makes the brain cells spark with delightâ€™ (Herald). â€˜Iriguchiâ€™s haunting, whimsical reflection on the life of Dietrich, driven by brilliant use of technologyâ€™ (Scotsman). â€˜A great show, full of wit and subtle metaphorâ€¦ Its liveness contains its deathâ€™ (Stage).',12,60),('0007','5 Guys Chillin\'','Theatre','Graphic verbatim drama exposing the chill-out chemsex scene. Surgeons to students, couples to kink; guys that love it, lost guys longing to be loved. Discover a drug-fuelled world of Grindr Lee Griffiths of Late Night Gimp Fight (Chortle Award for Best Character of Sketch Act). By Sasha Ellen and Daniel Collard. Daniel\'s audio play, Dark Shadows: Tainted Love was produced by Big Finish Productions. He can be seen in CBC\'s X Company. Sasha\'s last Edinburgh show, Signal Failure, got four-star reviews from the Scotsman, BroadwayBaby.com, EdinburghGuide.com and transferred to Soho Playhouse, New York.',14,80),('0008','5 Out of 10 Men...','Theatre','On average, 12 men take their own life every single day. Rooted in true experiences and deep exploration of mental health, 5 Out of 10 Men invites men to be open â€“ to journey unabashedly into themselves. With a fun, interactive style and a penetrating dark humour, a mixed ensemble leads a wounded man as he weaves a confessional hymn to his dead brother, torn between the man he is and a man he strives to be.',14,60),('0009','5 Years','Theatre','5 Years is a brand new solo show by Birmingham based writer/performer Hayley Davis. The show takes aim at the way our bodies are scrutinised and judged, ultimately asking: What is the perfect body anyway? The piece is a light-hearted look at how we are judged by the way we look and how this intersects with race and sex. www.mshayleydavis.com',16,55),('0010','50% Liability','Comedy','How can one person have so much bad luck in one lifetime? Drowning. Electrocution. Hypothermia. Frostbite. Malaria. Broken neck. Take a catalogue of near-death experiences, add the not-so-glamorous side of working as a stripper, unique everyday predicaments, a couple of stalkers â€“ and it\'s a wonder John is alive to tell the tale. In telling some of these real-life experiences, John realises that, rather than bad luck, a fair percentage of his misadventures, he has brought upon himself. Careless? Immortal? Or just unlucky?',12,55),('0011','1%','Theatre','Are you the 99% that won\'t stop and help your fellow man in trouble? Are you the 99% who cant break free from the scourge of apathy? Statistics show only 1% patrols the Scottish streets, buses and cafes so you donâ€™t have to. Only 1% fails to mind their own business. Agony aunt, superhero and nosy bastard Iain Heggie is that 1%. 1% is written and performed by double Fringe First winning Iain Heggie, the writer of Fringe smash hit Tobacco Merchants Lawyer. Directed by Chris Price.',16,55),('0012','1 Woman, a Dwarf Planet and 2 Cox: Samantha Baines','Comedy','Award-winning comedian Samantha Baines (BBC Radio, Call the Midwife, Sunny D) needs space... the final frontier one. It\'s science meets funny. There will be puns, there will be facts, there\'ll even be Cox (Brian) in this debut show from one of comedy\'s brightest new stars. Catch her now before she volunteers to go to Mars â€“ well if Matt Damon managed it... \'Masterful\' (Funny Women Magazine). \'Mind-blowing... You\'ve got nothing to lose... except perhaps your centre of gravity\' (HuffingtonPost.co.uk). Top 100 Jokes of the Fringe (Mirror).',14,60),('0013','101 Comedy Club','Comedy','A premiering play based on the life of the 19th-century Indian soldier Turrebaz Khan who rebelled for his country\'s freedom. It is a gripping drama of the last few hours spent with his dictatorial captor, who in fact, is a slave to the very system that Khan is fighting against.',18,60),('0014','1857: Turrebaz Khan','Theatre','A premiering play based on the life of the 19th-century Indian soldier Turrebaz Khan who rebelled for his country\'s freedom. It is a gripping drama of the last few hours spent with his dictatorial captor, who in fact, is a slave to the very system that Khan is fighting against.',0,45),('0015','1984','Theatre','War is peace. Freedom is slavery. Ignorance is strength. In a world of technological sovereignty, Orwell\'s harrowing dystopian vision seems more prescient than ever. Close Up Theatre presents a gripping, visceral abridgement of the classic novel. Witness a life lived under the suffocation of constant surveillance. Where Big Brother\'s eyes are on every screen, in every home, in every room. Where even thought is monitored and restricted. If you want a vision of the future, imagine a boot stamping on a human face â€“ forever. Close Up Theatre sell-out status 2004-2015.',12,45),('0016','2 Become 1','Musicals and Opera','Comedy pop musical following four 90s girls embarking on a wild night of speed dating, meeting Mr Wrongs and Mr Rights along the way. A hilarious non-stop journey through infectious pop anthems and ballads. After her recent break-up Jess is left crying into her Haagen-Dazs, and what better way to unbreak her heart than to meet a man a minute? Relive that 90s love with all your favourite classics from Shania Twain to All Saints and witness speed dating before the takeover of Tinder.',14,60),('0017','2 Girls, 1 Cup of Comedy','Comedy','Award-winning comedian Samantha Baines (Lee Nelson\'s Well Funny People, Call the Midwife, Radio 4) brings you a selection of the best comedians at the Fringe. A supersized cup of comedy with TV names as well as the very best new comedians and brilliant guest MCs. Join us for some late-night laughs! â€˜The gift that\'s keeps on givingâ€™ (HuffingtonPost.co.uk). â€˜Hilariousâ€™ (BroadwayBaby.com).',18,60),('0019','23, Please: The Sketch Show That Never Was','Comedy','23 what? 23 pleases? 23 hours in a day? We know that the number 23 is crucial. We donâ€™t know why. From the Cambridge Footlights; this sketch show hasnâ€™t happened, isnâ€™t happening and will not happen. But donâ€™t let that stop you coming to see it. â€˜23, Pleaseâ€™ combines sketch, mime, songs, and impressions for an hour of unadulterated hilarity. ***** (Varsity). â€˜Varied, relatable and, most importantly of all, funnyâ€™ **** (TheTab.com). â€˜Innovative and Excellentâ€™ **** (CambridgeTheatreReview.com).',12,60),('0020','24 Hours With Mary Lynn Rajskub','Comedy','Mary Lynn (Chloe from 24) gets knocked up by a hunky stranger, becomes the good wife and mother, blows all her cash, and takes an ex-girlfriendâ€™s advice to invest in miniature horses to save her marriage. As seen on 2 Broke Girls and Californication, and as a regular panellist on Chelsea Lately. ',14,60);
/*!40000 ALTER TABLE `utilityapp_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilityapp_event_date_venue`
--

DROP TABLE IF EXISTS `utilityapp_event_date_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilityapp_event_date_venue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventID` varchar(4) NOT NULL,
  `date` varchar(30) NOT NULL,
  `venueID` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilityapp_event_date_venue`
--

LOCK TABLES `utilityapp_event_date_venue` WRITE;
/*!40000 ALTER TABLE `utilityapp_event_date_venue` DISABLE KEYS */;
INSERT INTO `utilityapp_event_date_venue` VALUES (1,'0001','1700AUG22','0001'),(2,'0001','1700AUG23','0001'),(3,'0001','1700AUG24','0001'),(4,'0001','1700AUG25','0001'),(5,'0001','1700AUG26','0001'),(6,'0001','1700AUG27','0001'),(7,'0001','1700AUG28','0001'),(8,'0002','1615AUG12-13','0002'),(9,'0002','1615AUG15-20','0002'),(10,'0003','1610AUG05-13','0003'),(11,'0003','1610AUG15-20','0003'),(12,'0003','1610AUG22-27','0003'),(13,'0004','1620AUG04-14','0004'),(14,'0004','1620AUG16-29','0004'),(15,'0005','1605AUG04-14','0005'),(16,'0005','1605AUG16-28','0005'),(17,'0006','1750AUG03','0006'),(18,'0006','1750AUG05-07','0006'),(19,'0006','1750AUG09-14','0006'),(20,'0006','1750AUG16-21','0006'),(21,'0006','1750AUG23-28','0006'),(22,'0007','2300AUG04-29','0007'),(23,'0008','1655AUG05-13','0008'),(24,'0008','1655AUG15-27','0008'),(25,'0009','1230AUG21-28','0009'),(26,'0010','1600AUG03-15','0010'),(27,'0010','1600AUG17-29','0010'),(28,'0010','2210AUG05-13','0010'),(29,'0010','2210AUG15-27','0010'),(30,'0012','1530AUG03-05','0012'),(31,'0012','1530AUG07-29','0012'),(32,'0013','1930AUG04-28','0013'),(33,'0014','1810AUG12-13','0014'),(34,'0015','1740AUG22-27','0015'),(35,'0016','1600AUG04-16','0016'),(36,'0016','1600AUG18-28','0016'),(37,'0017','2300AUG07-14','0017'),(38,'0017','2300AUG16-28','0017'),(39,'0018','1630AUG03-16','0018'),(40,'0018','1630AUG18-29','0018'),(41,'0019','2035AUG03-15','0019'),(42,'0019','2035AUG17-29','0019'),(43,'0020','2020AUG03-14','0020'),(44,'0020','2020AUG16-28','0020');
/*!40000 ALTER TABLE `utilityapp_event_date_venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilityapp_venue`
--

DROP TABLE IF EXISTS `utilityapp_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilityapp_venue` (
  `venueID` varchar(4) NOT NULL,
  `location` varchar(200) NOT NULL,
  `wheelchair_acc` tinyint(1) NOT NULL,
  `level_acc` tinyint(1) NOT NULL,
  `disabled_toilets` tinyint(1) NOT NULL,
  `hearing_loop` tinyint(1) NOT NULL,
  PRIMARY KEY (`venueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilityapp_venue`
--

LOCK TABLES `utilityapp_venue` WRITE;
/*!40000 ALTER TABLE `utilityapp_venue` DISABLE KEYS */;
INSERT INTO `utilityapp_venue` VALUES ('0001','Paradise in Augustines (Venue 152)',1,0,0,1),('0002','theSpace @ Venue45 (Venue 45)',1,1,1,0),('0003','Greenside @ Infirmary Street (Venue 236)',0,0,0,0),('0004','Assembly Hall (Venue 35)',1,1,1,0),('0005','Just the Tonic at The Caves (Venue 88)',0,0,0,0),('0006','Summerhall (Venue 26)',0,0,0,0),('0007','C venues â€“ C too (Venue 4)',1,1,1,0),('0008','theSpace on Niddry St (Venue 9)',0,0,0,0),('0009','Laughing Horse @ Espionage (Venue 185)',0,0,1,0),('0010','C venues â€“ C soco at ibis (Venue 81)',1,1,1,0),('0011','theSpace @ Surgeons Hall (Venue 53)',1,1,1,0),('0012','Pleasance Courtyard (Venue 33)',1,1,0,1),('0013','Laughing Horse @ The Hanover Tap (Venue 259)',0,0,0,0),('0014','SpaceTriplex (Venue 38)',1,1,1,0),('0015','theSpace @ Jury\'s Inn (Venue 260)',0,0,0,0),('0016','Underbelly, Cowgate (Venue 61)',0,0,1,1),('0017','Just the Tonic at The Mash House (Venue 288)',0,0,0,0),('0018','Underbelly Med Quad (Venue 302)',1,0,0,0),('0019','C venues â€“ C nova (Venue 145)',0,0,0,0),('0020','Assembly George Square Studios (Venue 17)',0,0,0,0);
/*!40000 ALTER TABLE `utilityapp_venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07 12:51:28
