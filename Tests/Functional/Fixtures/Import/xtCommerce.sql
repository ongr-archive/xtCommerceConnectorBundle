-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: xtLove
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1-log

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
-- Table structure for table `adodb_logsql`
--

DROP TABLE IF EXISTS `adodb_logsql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adodb_logsql` (
  `created` datetime NOT NULL,
  `sql0` varchar(250) NOT NULL,
  `sql1` text NOT NULL,
  `params` text NOT NULL,
  `tracer` text NOT NULL,
  `timer` decimal(16,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adodb_logsql`
--

LOCK TABLES `adodb_logsql` WRITE;
/*!40000 ALTER TABLE `adodb_logsql` DISABLE KEYS */;
/*!40000 ALTER TABLE `adodb_logsql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_area`
--

DROP TABLE IF EXISTS `xt_acl_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(64) NOT NULL,
  `area_description` text,
  `category` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_area`
--

LOCK TABLES `xt_acl_area` WRITE;
/*!40000 ALTER TABLE `xt_acl_area` DISABLE KEYS */;
INSERT INTO `xt_acl_area` VALUES (1,'category','Erlaubt Zugriff auf die Kategorieverwaltung','default'),(2,'multistore',NULL,'default'),(3,'product','Erlaubt Zugriff auf die Produktverwaltung','default'),(4,'supportcenter',NULL,'default'),(5,'documentation','Erlaubt den Zugriff auf die XT:COMMERCE VEYTON Produktdokumentation.','default'),(6,'ac_actindo','Erlaubt den Zugriff auf den LINK zu ACTINDO ERP','default'),(7,'order','Erlaubt Zugriff auf Bestellungen','default'),(8,'customer','Erlaubt Zugriff auf die Kundendaten','default'),(9,'customers_status','Erlaubt Zugriff auf die Kundengruppen und deren Kundenzuweisung','default'),(10,'email_manager','Erlaubt Zugriff auf die Maileinstellungen','default'),(11,'manufacturer','Erlaubt Zugriff auf die Hersteller','default'),(12,'xt_reviews','Erlaubt Zugriff auf die Bewertungen','default'),(13,'payment','Erlaubt Zugriff auf die Zahlungsarten','default'),(14,'shipping','Erlaubt Zugriff auf die Versandarten','default'),(15,'acl_area',NULL,'default'),(16,'acl_groups','Erlaubt Zugriff auf die Admin-Gruppen','default'),(17,'acl_user','Erlaubt Zugriff auf die Administratoren','default'),(18,'acl_group_to_permission','Erlaubt Zugriff auf die Admin-Gruppenberechtigungen','default'),(19,'configuration','Erlaubt Zugriff auf die Konfiguration des Shopsystems','default'),(20,'MediaImageManager','Erlaubt Zugriff auf den Mediamanager für Bilder','default'),(21,'MediaFileManager','Erlaubt Zugriff auf den Media-Manager für Dateien','default'),(22,'MediaFileTypes','Erlaubt Zugriff auf den Media-Manager für Dateitypen','default'),(23,'ImageTypes','Erlaubt Zugriff auf den Media-Manager für Bildtypen','default'),(24,'MediaImages',NULL,'default'),(25,'MediaGallery',NULL,'default'),(26,'plugin_installed','Erlaubt Zugriff auf die Installierten Plugins','default'),(27,'plugin_uninstalled','Erlaubt Zugriff auf die nicht installierten Plugins','default'),(28,'tax','Erlaubt Zugriff auf die Steuersätze','default'),(29,'currency','Erlaubt Zugriff auf die W&auml;hrungen','default'),(30,'tax_class','Erlaubt Zugriff auf die Steuerklassen','default'),(31,'countries','Erlaubt Zugriff auf die Länderlisten','default'),(32,'language','Erlaubt Zugriff auf die Sprachen','default'),(33,'language_content','Erlaubt Zugriff auf die Sprachinhalte','default'),(34,'bruto_force_protection',NULL,'default'),(35,'callback',NULL,'default'),(36,'adodbquery',NULL,'default'),(37,'adodblive',NULL,'default'),(38,'shipping_price','Erlaubt Zugriff auf die Versandpreise','default'),(39,'payment_price','Erlaubt Zugriff auf die Aufpreise von Zahlungsarten','default'),(40,'stock_rule','Erlaubt zugriff auf die Zuordnung des Lagerbestandes','default'),(41,'shipping_status','Erlaubt Zugriff auf die Versndstatis','default'),(42,'base_price',NULL,'default'),(43,'order_status','Erlaubt Zugriff auf die Bestellstatis','default'),(44,'zone','Erlaubt Zugriff auf die Zonenverwaltung','default'),(45,'campaign','Erlaubt Zugriff auf die Kampagnen','default'),(46,'export','Erlaubt Zugriff auf die Exportverwaltung','default'),(47,'content','Erlaubt Zugriff auf die Contents','default'),(48,'content_blocks','Erlaubt Zugriff auf die Content Bl&ouml;cke','default'),(49,'address','Erlaubt Zugriff auf die Kundenadressen','default'),(50,'cross_selling_products','Erlaubt Zugriff auf das Produkt-Cross-Selling','default'),(51,'product_to_media','Erlaubt Zugriff auf die Zuordnung von Produkten zu Medien ','default'),(52,'product_to_cat','Erlaubt Zugriff auf die Zuordnung von Produkten zu Kategorien','default'),(53,'product_to_mastercat','Erlaubt Zugriff auf die Zuordnung von Produkten zu Masterkategorien','default'),(54,'plugin_hookpoints','Erlaubt Zugriff auf die Hookpoints von Plugins','default'),(55,'xt_master_slave','Erlaubt Zugriff auf das Master-Slave System','default'),(56,'xt_im_export','Erlaubt Zugriff auf die Im- und Export Verwaltung','default'),(57,'cross_selling_to_products','Erlaubt Zugriff auf die Zuordnung von Cross-Selling Produkten','default'),(58,'dashboard',NULL,'default'),(59,'MediaImage',NULL,'default'),(60,'MediaFiles',NULL,'default'),(61,'xt_payments_configuration',NULL,'default'),(62,'shop',NULL,'default'),(63,'ordertab',NULL,'default'),(64,'contentroot',NULL,'default'),(65,'config',NULL,'default'),(66,'config_plugin',NULL,'default'),(67,'config_seo',NULL,'default'),(68,'config_store',NULL,'default'),(69,'systemroot',NULL,'default'),(70,'magnalister',NULL,'default'),(71,'xt_startpage_products',NULL,'default'),(72,'xt_cron',NULL,'default'),(73,'elefunds_account',NULL,'default'),(74,'conf_seo',NULL,'default'),(75,'seo_regenerate',NULL,'default'),(76,'phpinfo',NULL,'default'),(77,'stop_words',NULL,'default'),(78,'license_info',NULL,'default'),(79,'seo_plugins',NULL,'default'),(80,'shipping_zone',NULL,'default'),(81,'federal_states',NULL,'default'),(82,'redirect_deleted',NULL,'default'),(83,'redirect_404',NULL,'default'),(84,'xt_hermes_collect',NULL,'default'),(85,'xt_hermes_settings',NULL,'default'),(86,'xt_ship_and_track',NULL,'default'),(87,'MediaList',NULL,'default'),(88,'product_to_attributes',NULL,'default'),(89,'generate_slaves',NULL,'default'),(90,'MediaImageList',NULL,'default'),(91,'MediaImageSearch',NULL,'default');
/*!40000 ALTER TABLE `xt_acl_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_area_permissions`
--

DROP TABLE IF EXISTS `xt_acl_area_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_area_permissions` (
  `perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `acl_read` int(11) DEFAULT NULL,
  `acl_edit` int(11) DEFAULT NULL,
  `acl_new` int(11) DEFAULT NULL,
  `acl_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`perm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_area_permissions`
--

LOCK TABLES `xt_acl_area_permissions` WRITE;
/*!40000 ALTER TABLE `xt_acl_area_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_acl_area_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_groups`
--

DROP TABLE IF EXISTS `xt_acl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_groups`
--

LOCK TABLES `xt_acl_groups` WRITE;
/*!40000 ALTER TABLE `xt_acl_groups` DISABLE KEYS */;
INSERT INTO `xt_acl_groups` VALUES (1,'Super Admin',1);
/*!40000 ALTER TABLE `xt_acl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_nav`
--

DROP TABLE IF EXISTS `xt_acl_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_nav` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(64) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_i` varchar(255) DEFAULT NULL,
  `url_d` varchar(255) DEFAULT NULL,
  `sortorder` int(10) unsigned DEFAULT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `navtype` varchar(1) DEFAULT NULL,
  `cls` varchar(15) DEFAULT NULL,
  `handler` varchar(20) DEFAULT NULL,
  `iconCls` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_nav`
--

LOCK TABLES `xt_acl_nav` WRITE;
/*!40000 ALTER TABLE `xt_acl_nav` DISABLE KEYS */;
INSERT INTO `xt_acl_nav` VALUES (1,'language','images/icons/comments.png','&pg=overview','adminHandler.php',311000,'localizing','I','W',NULL,NULL,''),(2,'language_content','images/icons/comment_edit.png',NULL,'adminHandler.php',311000,'localizing','I','W',NULL,NULL,''),(3,'localizing','images/icons/world.png',NULL,NULL,310000,'config','G','W',NULL,NULL,''),(4,'config_plugin',NULL,NULL,NULL,350000,'0','G','W',NULL,NULL,'config_plugin'),(5,'email_manager','images/icons/email.png','&pg=overview','adminHandler.php',220000,'contentroot','I','W',NULL,NULL,''),(6,'content_manager','images/icons/page_white_stack.png',NULL,NULL,210000,'contentroot','G','W',NULL,NULL,''),(7,'manufacturer','images/icons/wrench.png','&pg=overview','adminHandler.php',3000,'shop','I','W',NULL,NULL,NULL),(8,'config_store',NULL,NULL,NULL,400000,'0','G','W',NULL,NULL,'settings_store'),(9,'product','images/icons/application_side_tree.png','&pg=overview','adminHandler.php',2000,'shop','I','W',NULL,NULL,NULL),(10,'config',NULL,NULL,NULL,300000,'0','G','W',NULL,NULL,'settings'),(11,'contentroot',NULL,NULL,NULL,200000,'0','G','W',NULL,NULL,'management'),(12,'shop',NULL,NULL,NULL,100000,'0','G','W',NULL,NULL,'cart'),(13,'tax','images/icons/table_save.png','&pg=overview','adminHandler.php',2,'localizing','I','W',NULL,NULL,NULL),(14,'currency','images/icons/money_euro.png','&pg=overview','adminHandler.php',2,'localizing','I','W',NULL,NULL,NULL),(15,'tax_class','images/icons/table_relationship.png','&pg=overview','adminHandler.php',2,'localizing','I','W',NULL,NULL,NULL),(16,'payment','images/icons/money.png','&pg=overview','adminHandler.php',2,'config','G','W',NULL,NULL,NULL),(17,'shipping','images/icons/package_green.png','&pg=overview','adminHandler.php',2,'config','I','W',NULL,NULL,NULL),(18,'countries','images/icons/page_world.png','&pg=overview','adminHandler.php',2,'localizing','G','W',NULL,NULL,NULL),(19,'ordertab',NULL,NULL,NULL,100000,'0','G','W',NULL,NULL,'order'),(20,'order','images/icons/basket_edit.png','&pg=overview','adminHandler.php',2,'ordertab','I','W',NULL,NULL,NULL),(21,'customer','images/icons/group.png','&pg=overview','adminHandler.php',2,'ordertab','I','W',NULL,NULL,NULL),(22,'customers_status','images/icons/folder_user.png','&pg=overview','adminHandler.php',2,'ordertab','I','W',NULL,NULL,NULL),(23,'exp','images/icons/transmit_blue.png',NULL,NULL,NULL,'contentroot','G','W',NULL,NULL,NULL),(24,'export','images/icons/transmit_go.png',NULL,'adminHandler.php',NULL,'exp','I','W',NULL,NULL,NULL),(25,'stores','images/icons/server.png',NULL,NULL,NULL,'config_store','G','W',NULL,NULL,NULL),(26,'system_status','images/icons/application_view_tile.png',NULL,NULL,NULL,'config','G','W',NULL,NULL,NULL),(27,'content','images/icons/layout.png','&pg=overview','adminHandler.php',210000,'content_manager','I','W',NULL,NULL,''),(28,'content_blocks','images/icons/layout_content.png','&pg=overview','adminHandler.php',210000,'content_manager','I','W',NULL,NULL,''),(29,'media_manager','images/icons/cd.png',NULL,NULL,210000,'contentroot','G','W',NULL,NULL,''),(30,'plugin_installed','images/icons/plugin_add.png','&pg=overview','adminHandler.php',1000,'config_plugin','I','W',NULL,NULL,''),(31,'plugin_uninstalled','images/icons/plugin_disabled.png','&pg=overview','adminHandler.php',1100,'config_plugin','I','W',NULL,NULL,''),(32,'configuration','images/icons/cog.png',NULL,NULL,NULL,'config','G','W',NULL,NULL,NULL),(33,'admin_perm','images/icons/key.png',NULL,NULL,NULL,'config','G','W',NULL,NULL,NULL),(34,'acl_area','images/icons/page_key.png','&pg=overview','adminHandler.php',NULL,'admin_perm','I','W',NULL,NULL,NULL),(35,'acl_groups','images/icons/folder_key.png','&pg=overview','adminHandler.php',NULL,'admin_perm','I','W',NULL,NULL,NULL),(36,'acl_user','images/icons/user_red.png','&pg=overview','adminHandler.php',NULL,'admin_perm','I','W',NULL,NULL,NULL),(37,'systemroot',NULL,NULL,NULL,600000,'0','G','W',NULL,NULL,'system'),(38,'adodbperformance','images/icons/database_lightning.png',NULL,NULL,2,'systemroot','G','W',NULL,NULL,NULL),(39,'adodbquery','images/icons/database_lightning.png','adodb_performance.php?mode=query',NULL,2,'adodbperformance','I','W',NULL,NULL,NULL),(40,'adodblive','images/icons/database_lightning.png','adodb_liveperformance.php',NULL,2,'adodbperformance','I','W',NULL,NULL,NULL),(41,'logs','images/icons/script_code_red.png',NULL,NULL,2,'systemroot','G','W',NULL,NULL,NULL),(42,'bruto_force_protection','images/icons/script_code.png','&pg=overview','adminHandler.php',NULL,'logs','I','W',NULL,NULL,NULL),(43,'MediaGallery','','','',NULL,'media_manager','G','W',NULL,NULL,NULL),(44,'MediaFileTypes','images/icons/connect.png','&pg=overview','adminHandler.php',NULL,'media_manager','I','W',NULL,NULL,NULL),(45,'ImageTypes','images/icons/camera_edit.png','&pg=overview','adminHandler.php',NULL,'media_manager','I','W',NULL,NULL,NULL),(46,'callback','images/icons/script_code.png','&pg=overview','adminHandler.php',NULL,'logs','I','W',NULL,NULL,NULL),(47,'LogHandler','images/icons/script_code.png','&pg=overview','adminHandler.php',NULL,'logs','I','W',NULL,NULL,NULL),(48,'shipping_zone','images/icons/package_link.png','&pg=overview','adminHandler.php',10,'localizing','I','W',NULL,NULL,NULL),(49,'federal_states','images/icons/page_world.png','&pg=overview','adminHandler.php',7000,'countries','I','W',NULL,NULL,NULL),(50,'phpinfo','images/icons/page_white_php.png','','phpinfo.php?pg=overview',7000,'systemroot','I','W',NULL,NULL,NULL),(51,'license_info','images/icons/textfield_key.png','','license_info.php?pg=overview',7001,'systemroot','I','W',NULL,NULL,NULL),(52,'xt_cron','images/icons/clock.png','&pg=overview','adminHandler.php',4050,'config','I','W',NULL,NULL,NULL),(53,'cat_store1',NULL,NULL,NULL,1000,'shop','G','W',NULL,NULL,NULL),(54,'unasigned_cats',NULL,NULL,NULL,1001,'shop','G','W',NULL,NULL,NULL),(55,'config_seo',NULL,NULL,NULL,360000,'0','G','W',NULL,NULL,'config_seo'),(56,'seo_plugins','images/icons/script_gear.png','&pg=overview','adminHandler.php',1200,'config_seo','I','W',NULL,NULL,NULL),(57,'stop_words','images/icons/page_red.png','&pg=overview','adminHandler.php',1100,'config_seo','I','W',NULL,NULL,NULL),(58,'redirect','images/icons/link_go.png',NULL,NULL,1300,'config_seo','G','W',NULL,NULL,''),(59,'redirect_deleted','images/icons/link_delete.png','&pg=overview','adminHandler.php',12,'redirect','I','W',NULL,NULL,''),(60,'redirect_404','images/icons/link_break.png','&pg=overview','adminHandler.php',12,'redirect','I','W',NULL,NULL,''),(61,'conf_seo','images/icons/page_link.png',NULL,'adminHandler.php?load_section=configuration&edit_id=21',1000,'config_seo','I','W',NULL,NULL,''),(62,'seo_regenerate','images/icons/building_link.png','&pg=overview','adminHandler.php',1000,'config_seo','I','W',NULL,NULL,NULL),(63,'xt_reviews','images/icons/user_comment.png','&plugin=xt_reviews','adminHandler.php',4000,'shop','I','W',NULL,NULL,NULL),(64,'xt_startpage_products','images/icons/database_gear.png','&plugin=xt_startpage_products','adminHandler.php',5002,'shop','I','W',NULL,NULL,NULL),(65,'xt_master_slave','images/icons/building_link.png','&plugin=xt_master_slave','adminHandler.php',5000,'shop','I','W',NULL,NULL,NULL),(66,'xt_im_export','images/icons/arrow_refresh.png','&plugin=xt_im_export','adminHandler.php',4000,'contentroot','I','W',NULL,NULL,NULL),(67,'xt_payments_configuration','../plugins/xt_payments/images/money.png','plugin=xt_payments&load_section=XTPaymentsRegistration&pg=xtPaymentsCPanelLogin','adminHandler.php?',NULL,'0','I','N',NULL,'clickHandler2',NULL),(68,'xt_payments_configuration_left','../plugins/xt_payments/images/money.png','&plugin=xt_payments&load_section=XTPaymentsRegistration&pg=xtPaymentsCPanelLogin','adminHandler.php',4000,'payment','I','W',NULL,NULL,NULL),(69,'xt_cleancache','images/icons/page_save.png','','',4000,'systemroot','G','W',NULL,NULL,NULL),(70,'xt_cleancache_types','images/icons/page.png','&plugin=xt_cleancache&load_section=xt_cleancache_types','adminHandler.php',4010,'xt_cleancache','I','W',NULL,NULL,NULL),(71,'xt_cleancache_logs','images/icons/folder.png','&plugin=xt_cleancache&load_section=xt_cleancache_logs','adminHandler.php',4020,'xt_cleancache','I','W',NULL,NULL,NULL),(72,'magnalister','../plugins/magnalister/images/magnalister_icon_veyton_menue.png','../plugins/magnalister/magnalister.php','NULL',5000,'shop','I','W',NULL,'clickHandler2',NULL),(73,'xt_ship_and_track','../plugins/xt_ship_and_track/images/icons/hermes16.png','&plugin=xt_ship_and_track','adminHandler.php',9000,'ordertab','G','W',NULL,NULL,NULL),(74,'xt_hermes_collect','../xtAdmin/images/icons/lorry.png','&plugin=xt_ship_and_track&load_section=xt_hermes_collect&pg=overview','adminHandler.php',9000,'xt_ship_and_track','I','W',NULL,NULL,NULL),(75,'xt_hermes_settings','../xtAdmin/images/icons/wrench.png','&plugin=xt_ship_and_track&load_section=xt_hermes_settings&edit_id=1','adminHandler.php',9001,'xt_ship_and_track','I','W',NULL,NULL,NULL),(76,'elefunds_account','images/icons/building_key.png','','row_actions.php?type=elefunds&seckey=ec702a351198bfecfda0a0c1e842fe3b',320000,'config','I','W',NULL,NULL,'');
/*!40000 ALTER TABLE `xt_acl_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_task`
--

DROP TABLE IF EXISTS `xt_acl_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `class` varchar(32) NOT NULL,
  `active_id` varchar(32) DEFAULT NULL,
  `action` enum('new','edit','save','view','delete','select','unset','copy','move','link','setStatus','setAllRights','unsetAllRights','rebuildSeo') NOT NULL,
  `closed` enum('true','false') NOT NULL,
  `task_key` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_task`
--

LOCK TABLES `xt_acl_task` WRITE;
/*!40000 ALTER TABLE `xt_acl_task` DISABLE KEYS */;
INSERT INTO `xt_acl_task` VALUES (65,1,'content','0','view','false','2cb0dad6c32da6b5bf9196f0a272cea6','2014-12-19 11:18:51','2014-12-19 11:18:51'),(66,1,'content','4','edit','true','fb596c670fc90569608ee31edd9ac285','2014-12-19 11:20:06','2014-12-19 11:20:06');
/*!40000 ALTER TABLE `xt_acl_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_acl_user`
--

DROP TABLE IF EXISTS `xt_acl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_acl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `default_language_code` char(2) NOT NULL DEFAULT '',
  `password_request_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_acl_user`
--

LOCK TABLES `xt_acl_user` WRITE;
/*!40000 ALTER TABLE `xt_acl_user` DISABLE KEYS */;
INSERT INTO `xt_acl_user` VALUES (1,1,'xtLove','b2587a93e5a390793e30e186c439072f','test@home.lt','Admin','Admin',1,'en','');
/*!40000 ALTER TABLE `xt_acl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_callback_log`
--

DROP TABLE IF EXISTS `xt_callback_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_callback_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `callback_data` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `class` varchar(32) NOT NULL,
  `error_msg` varchar(255) NOT NULL,
  `error_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_callback_log`
--

LOCK TABLES `xt_callback_log` WRITE;
/*!40000 ALTER TABLE `xt_callback_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_callback_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_campaigns`
--

DROP TABLE IF EXISTS `xt_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_campaigns` (
  `campaigns_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaigns_name` varchar(32) NOT NULL DEFAULT '',
  `campaigns_refID` varchar(64) DEFAULT NULL,
  `campaigns_leads` int(11) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`campaigns_id`),
  KEY `IDX_CAMPAIGNS_NAME` (`campaigns_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_campaigns`
--

LOCK TABLES `xt_campaigns` WRITE;
/*!40000 ALTER TABLE `xt_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_categories`
--

DROP TABLE IF EXISTS `xt_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `categories_owner` int(11) NOT NULL DEFAULT '1',
  `categories_image` varchar(255) DEFAULT NULL,
  `categories_left` int(11) NOT NULL DEFAULT '0',
  `categories_right` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `categories_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `categories_template` varchar(64) DEFAULT NULL,
  `listing_template` varchar(64) DEFAULT NULL,
  `sort_order` int(3) DEFAULT '0',
  `products_sorting` varchar(32) DEFAULT NULL,
  `products_sorting2` varchar(32) DEFAULT NULL,
  `top_category` int(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `category_custom_link` tinyint(4) NOT NULL,
  `category_custom_link_type` varchar(32) NOT NULL,
  `category_custom_link_id` int(11) NOT NULL,
  `google_product_cat` varchar(255) NOT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_categories`
--

LOCK TABLES `xt_categories` WRITE;
/*!40000 ALTER TABLE `xt_categories` DISABLE KEYS */;
INSERT INTO `xt_categories` VALUES (1,NULL,NULL,1,'',1,2,0,1,'','',0,'','',0,NULL,'2008-08-08 00:40:19',0,'',0,''),(2,NULL,NULL,1,'',3,4,0,1,'','',0,'','',0,NULL,'2008-08-08 00:40:48',0,'',0,'');
/*!40000 ALTER TABLE `xt_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_categories_custom_link_url`
--

DROP TABLE IF EXISTS `xt_categories_custom_link_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_categories_custom_link_url` (
  `categories_id` int(11) NOT NULL,
  `link_url` varchar(256) NOT NULL,
  `language_code` char(2) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`language_code`,`categories_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_categories_custom_link_url`
--

LOCK TABLES `xt_categories_custom_link_url` WRITE;
/*!40000 ALTER TABLE `xt_categories_custom_link_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_categories_custom_link_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_categories_description`
--

DROP TABLE IF EXISTS `xt_categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_code` char(2) NOT NULL DEFAULT '1',
  `categories_name` varchar(255) DEFAULT NULL,
  `categories_heading_title` varchar(255) DEFAULT NULL,
  `categories_description` text,
  `categories_description_bottom` text,
  `categories_store_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`,`language_code`,`categories_store_id`),
  KEY `idx_categories_name` (`categories_name`),
  FULLTEXT KEY `language_code` (`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_categories_description`
--

LOCK TABLES `xt_categories_description` WRITE;
/*!40000 ALTER TABLE `xt_categories_description` DISABLE KEYS */;
INSERT INTO `xt_categories_description` VALUES (1,'de','Kategorie 1',NULL,NULL,NULL,1),(2,'de','Kategorie 2',NULL,NULL,NULL,1),(1,'en','Categorie 1',NULL,NULL,NULL,1),(2,'en','Categorie 2',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `xt_categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_categories_permission`
--

DROP TABLE IF EXISTS `xt_categories_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_categories_permission` (
  `pid` int(11) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_categories_permission`
--

LOCK TABLES `xt_categories_permission` WRITE;
/*!40000 ALTER TABLE `xt_categories_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_categories_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_clean_cache`
--

DROP TABLE IF EXISTS `xt_clean_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_clean_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `last_run` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_clean_cache`
--

LOCK TABLES `xt_clean_cache` WRITE;
/*!40000 ALTER TABLE `xt_clean_cache` DISABLE KEYS */;
INSERT INTO `xt_clean_cache` VALUES (1,'All',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00'),(2,'Feed',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00'),(3,'HTML',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00'),(4,'CSS',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00'),(5,'Javascript',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00'),(6,'Templates ',NULL,'2012-04-05 00:00:00','2012-04-05 00:00:00');
/*!40000 ALTER TABLE `xt_clean_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_clean_cache_logs`
--

DROP TABLE IF EXISTS `xt_clean_cache_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_clean_cache_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `change_trigger` varchar(5) COLLATE utf8_bin NOT NULL,
  `last_run` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_clean_cache_logs`
--

LOCK TABLES `xt_clean_cache_logs` WRITE;
/*!40000 ALTER TABLE `xt_clean_cache_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_clean_cache_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_config`
--

DROP TABLE IF EXISTS `xt_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(64) NOT NULL,
  `config_value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_configuration_group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_config`
--

LOCK TABLES `xt_config` WRITE;
/*!40000 ALTER TABLE `xt_config` DISABLE KEYS */;
INSERT INTO `xt_config` VALUES (1,'_SYSTEM_VERSION','4.2.00',0,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(2,'_SYSTEM_FILE_COUNT','100',24,25,NULL,'0000-00-00 00:00:00','',''),(3,'_SYSTEM_FILE_SIZE','100',24,26,NULL,'0000-00-00 00:00:00','',''),(4,'_SYSTEM_DEBUG','false',18,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(5,'_STORE_PRODUCT_NO_PICTURE','noimage.gif',18,9,NULL,'0000-00-00 00:00:00','',''),(6,'_STORE_IMAGES_PATH_FULL','true',23,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(7,'_SYSTEM_SAVE_IP','false',18,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(8,'_SYSTEM_PARSE_TIME','false',18,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(9,'_SYSTEM_SEARCH_MIN_CHARS','2',18,9,NULL,'0000-00-00 00:00:00','',''),(10,'_SYSTEM_TEMPLATE','xt_grid',15,99,NULL,'0000-00-00 00:00:00','dropdown','templateSets'),(11,'_SYSTEM_MOBILE_TEMPLATE','xt_mobile',15,99,NULL,'0000-00-00 00:00:00','dropdown','templateSets'),(12,'_SYSTEM_GROUP_CHECK','true',17,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(13,'_SYSTEM_ADMIN_PERMISSIONS','blacklist',17,9,NULL,'0000-00-00 00:00:00','dropdown','admin_perm'),(14,'_SYSTEM_GROUP_PERMISSIONS','blacklist',17,9,NULL,'0000-00-00 00:00:00','dropdown','admin_perm'),(15,'_SYSTEM_SIMPLE_GROUP_PERMISSIONS','false',17,11,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(16,'_SYSTEM_SENDMAIL_PATH','/usr/sbin/sendmail',19,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(17,'_SYSTEM_MAIL_TYPE','sendmail',19,3,NULL,'0000-00-00 00:00:00','dropdown','mail_types'),(18,'_SYSTEM_MAIL_DEBUG','true',19,4,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(19,'_SYSTEM_USE_DB_HOOKS','true',20,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(20,'_SYSTEM_ADMIN_RIGHTS','db',20,9,NULL,'0000-00-00 00:00:00','dropdown','admin_rights'),(21,'_SYSTEM_AUTOLOAD','false',20,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(22,'_SYSTEM_SEARCH_SPLIT','false',20,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(23,'_SYSTEM_MOD_REWRITE','false',21,1,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(24,'_SYSTEM_MOD_REWRITE_404','true',21,2,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(25,'_SYSTEM_HIDE_SUMAURL','false',21,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(26,'_SYSTEM_METATAGS_WORDLENGTH','6',21,4,NULL,'0000-00-00 00:00:00',NULL,NULL),(27,'_SYSTEM_METATAGS_MAXLENGTH','800',21,5,NULL,'0000-00-00 00:00:00',NULL,NULL),(28,'_SYSTEM_METATAGS_MAXCOUNT','20',21,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(29,'_SYSTEM_METATAGS_AUTOGENERATE','true',21,7,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(30,'_SYSTEM_SEO_FILE_TYPE','',21,8,NULL,'0000-00-00 00:00:00','',''),(31,'_SYSTEM_SEO_URL_LANG_BASED','true',21,9,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(32,'_SYSTEM_SEO_PRODUCTS_CATEGORIES','true',21,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(33,'_SYSTEM_MOD_REWRITE_DEFAULT','true',21,11,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(34,'_SYSTEM_CSS_MINIFY_OPTION','single',21,12,NULL,'0000-00-00 00:00:00','dropdown','minify'),(35,'_SYSTEM_JS_MINIFY_OPTION','single',21,13,NULL,'0000-00-00 00:00:00','dropdown','minify'),(36,'_SYSTEM_CSS_CACHE_TIME','423000',21,14,NULL,'0000-00-00 00:00:00',NULL,NULL),(37,'_SYSTEM_JS_CACHE_TIME','423000',21,15,NULL,'0000-00-00 00:00:00',NULL,NULL),(38,'_SYSTEM_MOD_REWRITE_NO_DUPLICATE_URLS','false',21,16,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(39,'_SYSTEM_STOCK_HANDLING','false',22,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(40,'_SYSTEM_SHIPPING_STATUS','false',22,11,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(41,'_SYSTEM_STOCK_RULES','true',22,11,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(42,'_SYSTEM_METATAGS_WORDS_COUNTER','true',25,16,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(43,'_SYSTEM_ADMIN_FILTER','true',25,15,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(44,'_SYSTEM_FILE_SORT','file_asc',25,17,NULL,'0000-00-00 00:00:00','dropdown','file_sort'),(45,'_SYSTEM_SAVEBUTTON_POSITION','bottom',25,18,NULL,'0000-00-00 00:00:00','dropdown','savebutton_position'),(46,'_SYSTEM_BACKEND_THEME','xtheme-gray.css',25,18,NULL,'0000-00-00 00:00:00','dropdown','backend_themes'),(47,'_SYSTEM_SHOW_OVERLOAD_MESSAGE','true',25,18,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(48,'_SYSTEM_ADMIN_PAGE_SIZE','50',25,15,NULL,'0000-00-00 00:00:00',NULL,NULL),(49,'_SYSTEM_USE_WYSIWYG','ckeditor',25,10,NULL,'0000-00-00 00:00:00','dropdown','wysiwyg'),(50,'_SYSTEM_ORDER_EDIT_NEW_ORDER_IN_FRONTEND','true',25,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(51,'_SYSTEM_ORDER_EDIT_SHOW_ORDER_EDITOR_COLUMN','true',25,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(52,'_SYSTEM_USE_PRICE','true',23,12,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(53,'_SYSTEM_SRV_WEBROOT_PREFIX','',23,15,NULL,'0000-00-00 00:00:00','',''),(54,'_SYSTEM_IMG_QUALITY','90',23,10,NULL,'0000-00-00 00:00:00',NULL,NULL),(55,'_SYSTEM_PRODUCT_COPY_PREFIX','-Kopie-',23,10,NULL,'0000-00-00 00:00:00',NULL,NULL),(56,'_SYSTEM_IMG_SHRINK_ONLY','true',23,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(57,'_SYSTEM_SECURITY_KEY','ec702a351198bfecfda0a0c1e842fe3b',0,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `xt_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_config_1`
--

DROP TABLE IF EXISTS `xt_config_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_config_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(64) NOT NULL,
  `config_value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_configuration_group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_config_1`
--

LOCK TABLES `xt_config_1` WRITE;
/*!40000 ALTER TABLE `xt_config_1` DISABLE KEYS */;
INSERT INTO `xt_config_1` VALUES (1,'_STORE_NAME','TestShop',1,5,NULL,'0000-00-00 00:00:00',NULL,NULL),(2,'_STORE_STORE_CLAIM','More than a Shop',1,10,NULL,'0000-00-00 00:00:00',NULL,NULL),(3,'_STORE_LOGO','logo.png',1,12,NULL,'0000-00-00 00:00:00','dropdown','conf_storelogo'),(4,'_STORE_FAVICON','favicon',1,15,NULL,'0000-00-00 00:00:00',NULL,NULL),(5,'_STORE_ZONE','31',1,18,NULL,'0000-00-00 00:00:00','dropdown','tax_zones'),(6,'_STORE_CURRENCY','EUR',1,30,NULL,'0000-00-00 00:00:00','dropdown','currencies'),(7,'_STORE_LANGUAGE','en',1,40,NULL,'0000-00-00 00:00:00','dropdown','language_codes'),(8,'_STORE_CAPTCHA','Standard',1,80,NULL,'0000-00-00 00:00:00','dropdown','captcha'),(9,'_STORE_CUSTOMERS_STATUS_ID_GUEST','1',1,90,NULL,'0000-00-00 00:00:00','dropdown','customers_status'),(10,'_STORE_CUSTOMERS_STATUS_ID','2',1,91,NULL,'0000-00-00 00:00:00','dropdown','customers_status'),(11,'_STORE_DEFAULT_ORDER_STATUS','16',1,95,NULL,'0000-00-00 00:00:00','dropdown','order_status'),(12,'_STORE_ALLOW_DECIMAL_QUANTITIY','false',1,100,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(13,'_STORE_TERMSCOND_CHECK','false',1,110,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(14,'_STORE_DIGITALCOND_CHECK','true',1,120,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(15,'_STORE_ACCOUNT_GENDER','true',5,1,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(16,'_STORE_ACCOUNT_DOB','true',5,2,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(17,'_STORE_ACCOUNT_COMPANY','true',5,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(18,'_STORE_ACCOUNT_SUBURB','true',5,4,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(19,'_STORE_ACCOUNT_COMPANY_VAT_CHECK','true',5,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(20,'_STORE_LAST_NAME_MIN_LENGTH','2',5,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(21,'_STORE_FIRST_NAME_MIN_LENGTH','2',5,1,NULL,'0000-00-00 00:00:00',NULL,NULL),(22,'_STORE_CITY_MIN_LENGTH','3',5,8,NULL,'0000-00-00 00:00:00',NULL,NULL),(23,'_STORE_ALLOW_GUEST_ORDERS','true',5,12,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(24,'_STORE_ACCOUNT_DOB_FORMAT','dd.mm.yyyy',5,2,NULL,'0000-00-00 00:00:00','dropdown','date_format'),(25,'_STORE_TELEPHONE_MIN_LENGTH','0',5,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(26,'_STORE_ACCOUNT_FEDERAL_STATES','true',5,9,'0000-00-00 00:00:00','0000-00-00 00:00:00','dropdown','conf_truefalse'),(27,'_STORE_EMAIL_ADDRESS_MIN_LENGTH','6',5,4,NULL,'0000-00-00 00:00:00',NULL,NULL),(28,'_STORE_STREET_ADDRESS_MIN_LENGTH','5',5,5,NULL,'0000-00-00 00:00:00',NULL,NULL),(29,'_STORE_POSTCODE_MIN_LENGTH','4',5,7,NULL,'0000-00-00 00:00:00',NULL,NULL),(30,'_STORE_PASSWORD_MIN_LENGTH','5',5,11,NULL,'0000-00-00 00:00:00',NULL,NULL),(31,'_STORE_ADDRESS_BOOK_ENTRIES','5',5,1,NULL,'0000-00-00 00:00:00',NULL,NULL),(32,'_STORE_MOBILE_PHONE_MIN_LENGTH','0',5,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(33,'_STORE_COMPANY_MIN_LENGTH','0',5,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(34,'_STORE_FAX_MIN_LENGTH','0',5,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(35,'_STORE_SHOW_PHONE_PREFIX','false',5,12,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(36,'_STORE_VAT_CHECK_TYPE','simple',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','dropdown','vat_check'),(37,'_STORE_VAT_CHECK_MOVE','false',6,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(38,'_STORE_VAT_CHECK_STATUS_IN','3',6,3,NULL,'0000-00-00 00:00:00','dropdown','customers_status'),(39,'_STORE_VAT_CHECK_STATUS_OUT','3',6,3,NULL,'0000-00-00 00:00:00','dropdown','customers_status'),(40,'_STORE_VAT_CHANGE_CLIENT_GROUP_ON_VAT_CHANGE','false',6,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(41,'_STORE_STOCK_CHECK_DISPLAY','true',7,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(42,'_STORE_STOCK_CHECK_BUY','false',7,3,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(43,'_STORE_SEARCH_RESULTS','20',8,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(44,'_STORE_PRODUCT_LIST_RESULTS','20',8,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(45,'_STORE_MAX_CATEGORIES_PER_ROW','3',8,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL),(46,'_STORE_TEMPLATE_PRODUCT_LISTING','product_listing_v1.html',8,120,NULL,'0000-00-00 00:00:00','dropdown','listing_template'),(47,'_STORE_TEMPLATE_CATEGORY_LISTING','categorie_listing.html',8,120,NULL,'0000-00-00 00:00:00','dropdown','categories_template'),(48,'_STORE_TEMPLATE_PRODUCT_SEARCH_RESULT','product_listing_v1.html',8,120,NULL,'0000-00-00 00:00:00','dropdown','listing_template'),(49,'_STORE_TEMPLATE_PRODUCT_LIST','product_list_default.html',8,120,NULL,'0000-00-00 00:00:00','dropdown','product_list_template'),(50,'_STORE_TEMPLATE_PRODUCT_LISTING_MANUFACTURERS','product_listing_v1.html',8,120,NULL,'0000-00-00 00:00:00','dropdown','listing_template'),(51,'_STORE_PRODUCT_DOWNLOAD_PUBLIC_ALLOWED','true',8,200,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(52,'_STORE_SMTP_HOST','localhost',12,3,NULL,'0000-00-00 00:00:00',NULL,NULL),(53,'_STORE_SMTP_PORT','25',12,4,NULL,'0000-00-00 00:00:00',NULL,NULL),(54,'_STORE_SMTP_USERNAME','Please Enter',12,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(55,'_STORE_SMTP_PASSWORD','Please Enter',12,7,NULL,'0000-00-00 00:00:00',NULL,NULL),(56,'_STORE_CONTACT_EMAIL','',12,8,NULL,'0000-00-00 00:00:00',NULL,NULL),(57,'_STORE_SMTP_AUTH','false',12,8,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(58,'_STORE_SMTP_SECURE','tls',12,9,NULL,'0000-00-00 00:00:00','dropdown','smtp_secure'),(59,'_STORE_META_DOCTYPE_HTML','html',16,13,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL),(60,'_STORE_META_AUTHOR','',16,4,NULL,'0000-00-00 00:00:00',NULL,NULL),(61,'_STORE_META_PUBLISHER','',16,5,NULL,'0000-00-00 00:00:00',NULL,NULL),(62,'_STORE_META_COMPANY','',16,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(63,'_STORE_META_TOPIC','',16,7,NULL,'0000-00-00 00:00:00',NULL,NULL),(64,'_STORE_META_REPLY_TO','',16,8,NULL,'0000-00-00 00:00:00',NULL,NULL),(65,'_STORE_META_REVISIT_AFTER','',16,9,NULL,'0000-00-00 00:00:00',NULL,NULL),(66,'_STORE_META_ROBOTS','index,follow',16,10,NULL,'0000-00-00 00:00:00',NULL,NULL),(67,'_STORE_META_DESCRIPTION','',16,11,NULL,'0000-00-00 00:00:00',NULL,NULL),(68,'_STORE_META_KEYWORDS','',16,12,NULL,'0000-00-00 00:00:00',NULL,NULL),(69,'_STORE_META_FREE_META','',16,12,NULL,'0000-00-00 00:00:00',NULL,NULL),(70,'_STORE_META_PAGINATION_ROBOTS','false',16,13,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(71,'_STORE_DEFAULT_TEMPLATE','xt_grid',18,26,NULL,'0000-00-00 00:00:00','dropdown','templateSets'),(72,'_STORE_JQUERY_VERSION','1.8.2',18,30,NULL,'0000-00-00 00:00:00','dropdown','jqversion'),(73,'_STORE_JQUERY_CDN','Google CDN',18,40,NULL,'0000-00-00 00:00:00','dropdown','jqcdn'),(74,'_STORE_JQUERY_ACTIVATE','true',18,50,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(75,'_STORE_TPL_LISTING_COLUMNS','four',18,50,NULL,'0000-00-00 00:00:00','dropdown','tplcolumns'),(76,'_STORE_SHOPOWNER_COMPANY','TEST',26,1,NULL,'0000-00-00 00:00:00',NULL,NULL),(77,'_STORE_SHOPOWNER_CEO','Me',26,2,NULL,'0000-00-00 00:00:00',NULL,NULL),(78,'_STORE_SHOPOWNER_STREETADDRESS','Nomatter',26,4,NULL,'0000-00-00 00:00:00',NULL,NULL),(79,'_STORE_SHOPOWNER_CITY','nocity',26,5,NULL,'0000-00-00 00:00:00',NULL,NULL),(80,'_STORE_SHOPOWNER_ZIP','nocode',26,6,NULL,'0000-00-00 00:00:00',NULL,NULL),(81,'_STORE_COUNTRY','LT',26,7,NULL,'0000-00-00 00:00:00','dropdown','countries'),(82,'_STORE_SHOPOWNER_TELEPHONE','',26,8,NULL,'0000-00-00 00:00:00',NULL,NULL),(83,'_STORE_SHOPOWNER_FAX','',26,9,NULL,'0000-00-00 00:00:00',NULL,NULL),(84,'_STORE_SHOPOWNER_VATID','none',26,10,NULL,'0000-00-00 00:00:00',NULL,NULL),(85,'_STORE_MOBILE_ACTIVATE','true',27,1,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(86,'_STORE_TABLET_IS_MOBILE','true',27,5,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(87,'_STORE_DEFAULT_MOBILE_TEMPLATE','xt_mobile',27,10,NULL,'0000-00-00 00:00:00','dropdown','templateSets'),(88,'_STORE_MOBILE_SWITCH_METHOD','auto',27,20,NULL,'0000-00-00 00:00:00','dropdown','conf_mobile_switch_method'),(89,'_SYSTEM_ORDER_EDIT_USE_CUSTOMER_CURRENCY','true',28,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(90,'_SYSTEM_ORDER_EDIT_ALLOW_NEGATIVE_STOCK','true',28,10,NULL,'0000-00-00 00:00:00','dropdown','conf_truefalse'),(91,'_SYSTEM_ORDER_EDIT_NEW_ORDER_PAYMENT','xt_prepayment',28,10,NULL,'0000-00-00 00:00:00','dropdown','order_edit_payment_methods'),(92,'_SYSTEM_ORDER_EDIT_NEW_ORDER_SHIPPING','self',28,10,NULL,'0000-00-00 00:00:00','dropdown','shipping_methods'),(93,'_SYSTEM_ORDER_EDIT_NEW_ORDER_ORDER_SOURCE','1',28,10,NULL,'0000-00-00 00:00:00','dropdown','order_sources'),(94,'_store_email_footer_txt_de','TEST\nNomatter\nnocode nocity\nE-mail: test@home.lt\n\nUSt-Id: none',12,8,NULL,'0000-00-00 00:00:00','textarea',''),(95,'_store_email_footer_html_de','TEST\n<br />Nomatter\n<br />nocode nocity\n<br />E-mail: test@home.lt\n<br />\n<br />USt-Id: none',12,8,NULL,'0000-00-00 00:00:00','textarea',''),(96,'_store_email_footer_txt_en','TEST\nNomatter\nnocode nocity\nE-mail: test@home.lt\n\nVAT-Id: none',12,8,NULL,'0000-00-00 00:00:00','textarea',''),(97,'_store_email_footer_html_en','TEST\n<br />Nomatter\n<br />nocode nocity\n<br />E-mail: test@home.lt\n<br />\n<br />VAT-Id: none',12,8,NULL,'0000-00-00 00:00:00','textarea','');
/*!40000 ALTER TABLE `xt_config_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_config_group`
--

DROP TABLE IF EXISTS `xt_config_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_config_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_title` varchar(64) NOT NULL,
  `group_icon` varchar(64) DEFAULT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_title` (`group_title`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_config_group`
--

LOCK TABLES `xt_config_group` WRITE;
/*!40000 ALTER TABLE `xt_config_group` DISABLE KEYS */;
INSERT INTO `xt_config_group` VALUES (1,'TEXT_MY_STORE','wrench_orange.png',1,1),(6,'TEXT_VAT_ID_OPTIONS','tag_green.png',6,1),(7,'TEXT_STOCK_OPTIONS','lorry.png',7,1),(5,'TEXT_CUSTOMER_DETAILS','vcard.png',5,1),(8,'TEXT_PRODUCT_LISTING','table.png',8,1),(12,'TEXT_EMAIL_OPTIONS','email_open.png',12,1),(15,'TEXT_CONF_TEMPLATES_NAV','application_view_gallery.png',1,2),(16,'TEXT_SEARCH_ENGINES','ipod_cast.png',16,1),(17,'TEXT_CONF_PERMISSIONS','shield.png',17,2),(18,'TEXT_TEMPLATES_NAV','application_view_gallery.png',1,1),(19,'TEXT_CONF_MAIL','email_go.png',19,2),(20,'TEXT_CONF_PERFORMANCE','database_lightning.png',20,2),(21,'TEXT_CONF_SEO','page_link.png',21,0),(22,'TEXT_CONF_STOCK','layers.png',22,2),(23,'TEXT_CONF_OTHER','application_osx.png',23,2),(24,'TEXT_CONF_IMAGES','camera.png',24,2),(25,'TEXT_CONF_ADMIN_OPTIONS_NAV','application_view_tile.png',25,2),(26,'TEXT_MY_STORE_INFO','building_edit.png',2,1),(27,'TEXT_MOBILE_TEMPLATE','application_view_gallery.png',2,1),(28,'TEXT_ORDERS_EDIT','basket_edit.png',2,1);
/*!40000 ALTER TABLE `xt_config_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_config_payment`
--

DROP TABLE IF EXISTS `xt_config_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_config_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(64) NOT NULL,
  `config_value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_key` (`config_key`,`shop_id`),
  KEY `idx_configuration_group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_config_payment`
--

LOCK TABLES `xt_config_payment` WRITE;
/*!40000 ALTER TABLE `xt_config_payment` DISABLE KEYS */;
INSERT INTO `xt_config_payment` VALUES (1,'XT_PAYMENTS_PENDING','17',0,1,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(2,'XT_PAYMENTS_APPROVED','23',0,2,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(3,'XT_PAYMENTS_DECLINED','32',0,3,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(4,'XT_PAYMENTS_ERROR','34',0,4,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(5,'XT_PAYMENTS_HOLD','34',0,4,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(6,'XT_PAYMENTS_TEST_MODE','0',0,5,'2014-12-17 15:37:04',NULL,'status','',1,1),(7,'XT_PAYMENTS_REGISTERED','false',0,14,'2014-12-17 15:37:04',NULL,'hidden','conf_truefalse',1,1),(8,'XT_PAYMENTS_REGISTRATION_SERVICE_URL','https://api.xt-commerce.com/service/service.php',0,15,'2014-12-17 15:37:04',NULL,'hidden','',1,1),(9,'XT_PAYMENTS_COMMERCIAL_PAGE_URL','https://gp1.wac.edgecastcdn.net/8020B1/ppp/pppthemes/xtlogos/xtc_commercialpage/content.html',0,16,'2014-12-17 15:37:04',NULL,'hidden','',1,1),(10,'XT_PAYMENTS_REGISTRATION_SUCCESS_PAGE_URL','https://gp1.wac.edgecastcdn.net/8020B1/ppp/pppthemes/xtlogos/xtc_registraion_success_page/success_page.html',0,16,'2014-12-17 15:37:04',NULL,'hidden','',1,1),(11,'XT_PAYMENTS_CC_CARD_LOGO','https://gp1.wac.edgecastcdn.net/8020B1/ppp/pppthemes/xtlogos/100_50_debit.png',0,17,'2014-12-17 15:37:04',NULL,'hidden','',1,1),(12,'XT_PAYMENTS_PAYPAL_MODE_SANDBOX','false',0,18,'2014-12-17 15:37:04',NULL,'hidden','conf_truefalse',1,1),(13,'XT_PAYMENTS_PAYPAL_EXPRESS_ENABLED','true',0,19,'2014-12-17 15:37:04',NULL,'dropdown','conf_truefalse',1,1),(14,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_COMPLETED','23',0,6,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(15,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_DENIED','32',0,7,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(16,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_FAILED','32',0,8,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(17,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_REFUNDED','32',0,9,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(18,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_REVERSED','17',0,10,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(19,'XT_PAYMENTS_PAYPAL_ORDER_STATUS_PENDING','17',0,11,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1),(20,'XT_PAYMENTS_PAYPAL_LOGO','',0,12,'2014-12-17 15:37:04',NULL,'textfield','',1,1),(21,'XT_PAYMENTS_PAYPAL_BORDER_COLOR','',0,13,'2014-12-17 15:37:04',NULL,'textfield','',1,1),(22,'XT_PAYMENTS_PAYPAL_PAYMENT_TYPE_ORDER','true',0,14,'2014-12-17 15:37:04',NULL,'dropdown','conf_truefalse',1,1),(23,'XT_PAYMENTS_ORDER_STATUS_NEW','16',0,0,'2014-12-17 15:37:04',NULL,'dropdown','status:order_status',1,1);
/*!40000 ALTER TABLE `xt_config_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_config_plugin`
--

DROP TABLE IF EXISTS `xt_config_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_config_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) DEFAULT NULL,
  `config_value` text,
  `plugin_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT '0',
  `shop_id` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_key` (`config_key`,`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_config_plugin`
--

LOCK TABLES `xt_config_plugin` WRITE;
/*!40000 ALTER TABLE `xt_config_plugin` DISABLE KEYS */;
INSERT INTO `xt_config_plugin` VALUES (1,'XT_AUTO_CROSS_SELL_MAX_DISPLAY','5',1,'','',0,1,'2014-12-17 15:36:30',NULL,1),(2,'XT_CROSS_SELLING_MAX_DISPLAY','5',2,'','',0,1,'2014-12-17 15:36:32',NULL,1),(3,'ACTIVATE_XT_NEW_PRODUCTS_PAGE','true',3,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:35',NULL,1),(4,'ACTIVATE_XT_NEW_PRODUCTS_BOX','true',3,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:35',NULL,2),(5,'XT_NEW_PRODUCTS_BOX_LIMIT','1',3,'','',0,1,'2014-12-17 15:36:35',NULL,3),(6,'XT_NEW_PRODUCTS_PAGE_LIMIT','25',3,'','',0,1,'2014-12-17 15:36:35',NULL,4),(7,'XT_NEW_PRODUCTS_BOX_DAYS','30',3,'','',0,1,'2014-12-17 15:36:35',NULL,5),(8,'XT_NEW_PRODUCTS_PAGE_DAYS','30',3,'','',0,1,'2014-12-17 15:36:35',NULL,6),(9,'XT_NEW_PRODUCTS_PAGE_TPL','product_listing_v1.html',3,'','',0,1,'2014-12-17 15:36:35',NULL,7),(10,'INSTALLED_XT_NEW_PRODUCTS','true',3,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:35',NULL,8),(11,'XT_REVIEWS_MAX_DISPLAY_PRODUCTS','5',4,'','',0,1,'2014-12-17 15:36:38',NULL,1),(12,'XT_REVIEWS_ALL_REVIEWS_PAGE','true',4,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:38',NULL,2),(13,'XT_REVIEWS_PRODUCT_ON_ALL_REVIEWS_PAGE','true',4,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:38',NULL,3),(14,'XT_REVIEWS_AUTO_ACTIVATE','false',4,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:38',NULL,4),(15,'XT_REVIEWS_MASTER_SLAVE','default',4,'dropdown','xt_reviews_master_slave',0,1,'2014-12-17 15:36:38',NULL,5),(16,'XT_REVIEWS_NOTIFY_ADMIN','true',4,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:38',NULL,6),(17,'XT_REVIEWS_ALLOW_GUEST_REVIEWS','false',4,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:38',NULL,7),(18,'ACTIVATE_XT_SPECIAL_PRODUCTS_PAGE','true',6,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:44',NULL,1),(19,'ACTIVATE_XT_SPECIAL_PRODUCTS_BOX','true',6,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:44',NULL,2),(20,'XT_SPECIAL_PRODUCTS_BOX_LIMIT','3',6,'','',0,1,'2014-12-17 15:36:44',NULL,3),(21,'XT_SPECIAL_PRODUCTS_PAGE_LIMIT','25',6,'','',0,1,'2014-12-17 15:36:44',NULL,4),(22,'XT_SPECIAL_PRODUCTS_PAGE_TPL','product_listing_v1.html',6,'','',0,1,'2014-12-17 15:36:44',NULL,5),(23,'XT_SPECIAL_PRODUCTS_SHOW_TYPE','nothing',6,'dropdown','plg_xt_special_products_show_type',0,1,'2014-12-17 15:36:44',NULL,6),(24,'ACTIVATE_XT_STARTPAGE_PRODUCTS_PAGE','true',7,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:47',NULL,1),(25,'XT_STARTPAGE_PRODUCTS_PAGE_LIMIT','12',7,'','',0,1,'2014-12-17 15:36:47',NULL,2),(26,'XT_STARTPAGE_PRODUCTS_PAGE_TPL','product_listing_v1.html',7,'','',0,1,'2014-12-17 15:36:47',NULL,3),(27,'XT_MASTER_SLAVE_ACTIVE','true',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,1),(28,'_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_PRODUCTS','true',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,2),(29,'_PLUGIN_MASTER_SLAVE_REDIRECT_TO_SLAVE','true',9,'dropdown','plg_xt_master_slave_redirect_to_slaves',0,1,'2014-12-17 15:36:52',NULL,3),(30,'_PLUGIN_MASTER_SLAVE_SHOW_OPTIONS','true',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,4),(31,'_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_LIST','true',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,5),(32,'_PLUGIN_MASTER_SLAVE_SHOW_MAX_PRODUCTS','10',9,'hidden','',0,1,'2014-12-17 15:36:52',NULL,6),(33,'XT_MASTER_SLAVE_LOAD_MASTER_IMAGE_IN_SLAVE','false',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,7),(34,'XT_MASTER_SLAVE_SHOP_SEARCH','master',9,'dropdown','plg_xt_master_slave_shop_search',0,1,'2014-12-17 15:36:52',NULL,8),(35,'XT_MASTER_SLAVE_FILTERLIST_ON_SELECTION','false',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,9),(36,'XT_MASTER_SLAVE_CONF_SHOW_RESET','false',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,10),(37,'XT_MASTER_SLAVE_INHERIT_ASSIGNED_MASTER_IMAGES','true',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,11),(38,'XT_MASTER_SLAVE_SLAVE_ORDER','ASC',9,'dropdown','status_ascdesc',0,1,'2014-12-17 15:36:52',NULL,12),(39,'XT_MASTER_SLAVE_SUM_SLAVE_QUANTITY_FOR_GRADUATED_PRICE','false',9,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:52',NULL,13),(40,'EI_ALLOWED_PRIMARY','products_id,external_id,products_model,products_ean',10,'','',0,1,'2014-12-17 15:36:54',NULL,1),(41,'EI_ALLOWED_SECONDARY','manufacturers_id',10,'','',0,1,'2014-12-17 15:36:54',NULL,2),(42,'XT_PRIVACYCHECK_SHOW','true',11,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:56',NULL,1),(43,'XT_PRIVACYCHECK_TYPE','false',11,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:56',NULL,2),(44,'ACTIVATE_XT_BESTSELLER_PRODUCTS_PAGE','true',12,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:58',NULL,1),(45,'ACTIVATE_XT_BESTSELLER_PRODUCTS_BOX','true',12,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:58',NULL,2),(46,'XT_BESTSELLER_PRODUCTS_BOX_LIMIT','3',12,'textfield','',0,1,'2014-12-17 15:36:58',NULL,3),(47,'XT_BESTSELLER_PRODUCTS_PAGE_LIMIT','25',12,'textfield','',0,1,'2014-12-17 15:36:58',NULL,4),(48,'XT_BESTSELLER_PRODUCTS_PAGE_TPL','product_listing_v1.html',12,'','',0,1,'2014-12-17 15:36:58',NULL,5),(49,'XT_BESTSELLER_PRODUCTS_CACHE_HOURS','0',12,'textfield','',0,1,'2014-12-17 15:36:58',NULL,6),(50,'XT_BESTSELLER_PRODUCTS_SHOW_TYPE','nothing',12,'dropdown','plg_xt_bestseller_products_show_type',0,1,'2014-12-17 15:36:58',NULL,7),(51,'XT_BESTSELLER_PRODUCTS_CATEGORY_DEPENDS','false',12,'dropdown','conf_truefalse',0,1,'2014-12-17 15:36:58',NULL,8),(52,'XT_RECAPTCHA_PUBLICKEY','',13,'textfield','',0,1,'2014-12-17 15:37:02',NULL,1),(53,'XT_RECAPTCHA_PRIVATEKEY','',13,'textfield','',0,1,'2014-12-17 15:37:02',NULL,2),(54,'XT_RECAPTCHA_THEME','white',13,'textfield','',0,1,'2014-12-17 15:37:02',NULL,3),(55,'XT_GOOGLE_PRODUCT_CATEGORIES_CAT','',15,'dropdown','google_categories',0,1,'2014-12-17 15:37:06',NULL,1),(56,'XT_GOOGLE_PRODUCT_CATEGORIES_LANG','de',15,'dropdown','language_codes',0,1,'2014-12-17 15:37:06',NULL,2),(57,'XT_GOOGLE_PRODUCT_CATEGORIES_LENGTH_DROPDOWN','450',15,'textfield','',0,1,'2014-12-17 15:37:06',NULL,3),(58,'SX_FANCY_CLOUD_ZOOM_CZ_ENABLED','true',17,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:10',NULL,1),(59,'SX_FANCY_CLOUD_ZOOM_FB_ENABLED','true',17,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:10',NULL,2),(60,'SX_FANCY_CLOUD_ZOOM_CZ_ENABLED_ON_MOBILE','false',17,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:10',NULL,3),(61,'SX_FANCY_CLOUD_ZOOM_FB_ENABLED_ON_MOBILE','true',17,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:10',NULL,4),(62,'XT_NEWSLETTER2GO_LOGIN_MAIL','',18,'textfield','',0,1,'2014-12-17 15:37:13',NULL,1),(63,'XT_NEWSLETTER2GO_LOGIN_PASS','',18,'textfield','',0,1,'2014-12-17 15:37:13',NULL,2),(64,'XT_NEWSLETTER2GO_API_USER','',18,'textfield','',0,1,'2014-12-17 15:37:13',NULL,3),(65,'XT_NEWSLETTER2GO_API_KEY','',18,'textfield','',0,1,'2014-12-17 15:37:13',NULL,4),(66,'XT_NEWSLETTER2GO_CHECKBOX','true',18,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:13',NULL,5),(67,'XT_RESCISSION_SHOW','true',21,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:20',NULL,1),(68,'XT_RESCISSION_SHOW_CONFIRMATION','true',21,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:20',NULL,2),(69,'XT_CANONICAL_APPLY_TO_ALL_SLAVES','false',22,'dropdown','conf_truefalse',0,1,'2014-12-17 15:37:22',NULL,1),(70,'XT_ELEFUNDS_CLIENT_ID','',23,'','',0,1,'2014-12-17 15:37:25',NULL,1),(71,'XT_ELEFUNDS_API_KEY','',23,'','',0,1,'2014-12-17 15:37:25',NULL,2),(72,'XT_ELEFUNDS_FORM_SELECTOR','#checkout-form',23,'','',0,1,'2014-12-17 15:37:25',NULL,3),(73,'XT_ELEFUNDS_TOTAL_SELECTOR','#grand-total-value',23,'','',0,1,'2014-12-17 15:37:25',NULL,4),(74,'XT_ELEFUNDS_STATUS_COMPLETED_MAPPING','33,23',23,'','',0,1,'2014-12-17 15:37:25',NULL,5),(75,'XT_ELEFUNDS_STATUS_PENDING_MAPPING','16,17',23,'','',0,1,'2014-12-17 15:37:25',NULL,6),(76,'XT_ELEFUNDS_STATUS_CANCELLED_MAPPING','32,34',23,'','',0,1,'2014-12-17 15:37:25',NULL,7),(77,'XT_ELEFUNDS_THEME','light',23,'dropdown','elefunds_themes',0,1,'2014-12-17 15:37:25',NULL,8),(78,'XT_ELEFUNDS_COLOR','#00efa2',23,'','',0,1,'2014-12-17 15:37:25',NULL,9);
/*!40000 ALTER TABLE `xt_config_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_content`
--

DROP TABLE IF EXISTS `xt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_parent` int(11) NOT NULL DEFAULT '0',
  `content_status` int(1) NOT NULL DEFAULT '0',
  `content_hook` int(11) NOT NULL,
  `content_form` varchar(64) DEFAULT NULL,
  `content_image` varchar(255) DEFAULT NULL,
  `link_ssl` tinyint(1) DEFAULT '0',
  `content_sort` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_content`
--

LOCK TABLES `xt_content` WRITE;
/*!40000 ALTER TABLE `xt_content` DISABLE KEYS */;
INSERT INTO `xt_content` VALUES (1,0,1,1,'shipping.php','',0,0),(2,0,1,2,'0','',0,0),(3,0,1,3,'0','',0,0),(4,0,1,0,'0','',0,0),(5,0,1,4,'0','',0,0),(6,0,1,5,'contact.php','',1,0),(7,0,1,8,'0','',0,0),(8,0,1,0,'0','',0,0),(9,0,1,10,'0','',0,0),(10,0,1,0,'0','',0,0);
/*!40000 ALTER TABLE `xt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_content_block`
--

DROP TABLE IF EXISTS `xt_content_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_content_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `block_tag` varchar(64) NOT NULL,
  `block_status` int(1) DEFAULT '0',
  `block_protected` int(1) DEFAULT '0',
  PRIMARY KEY (`block_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_content_block`
--

LOCK TABLES `xt_content_block` WRITE;
/*!40000 ALTER TABLE `xt_content_block` DISABLE KEYS */;
INSERT INTO `xt_content_block` VALUES (1,'shipping',1,1),(2,'privacy',1,1),(3,'conditions',1,1),(4,'startpage',1,1),(5,'contact',1,1),(6,'footer',1,0),(7,'information',1,0),(8,'rescission',1,1),(9,'content',1,0);
/*!40000 ALTER TABLE `xt_content_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_content_elements`
--

DROP TABLE IF EXISTS `xt_content_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_content_elements` (
  `content_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `content_title` varchar(255) DEFAULT NULL,
  `content_heading` varchar(255) DEFAULT NULL,
  `content_body` text,
  `content_body_short` text,
  `content_file` varchar(255) DEFAULT NULL,
  `content_store_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`language_code`,`content_store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_content_elements`
--

LOCK TABLES `xt_content_elements` WRITE;
/*!40000 ALTER TABLE `xt_content_elements` DISABLE KEYS */;
INSERT INTO `xt_content_elements` VALUES (1,'de','Lieferinformationen','Lieferinformationen','<p>Geben Sie hier Ihre Liefer- und Versandkosten ein.&nbsp;</p><p>Sie haben <strong>keine Zeit</strong> sich um die Pflege Ihre Rechtstexte zu k&uuml;mmern? Da k&ouml;nnen wir die Protected&nbsp;<span style=\"line-height:1.6em\">Shops GmbH helfen.</span></p><ul>	<li><strong>Innerhalb weniger Minuten Liefer- und Versandkosten</strong> im Zusammenhang mit AGB,&nbsp;<span style=\"line-height:1.6em\">Widerrufsbelehrung, Datenschutzerkl&auml;rung und Impressum erstellen.</span></li>	<li><span style=\"line-height:1.6em\">Mithilfe unserer Schnittstelle werden die Texte <strong>direkt in ihren Shop eingebunden</strong> und bei&nbsp;ver&auml;ndernder Rechtslage automatisch aktualisiert</span></li>	<li><span style=\"line-height:1.6em\">F&uuml;r unsere Rechtstexte &uuml;bernehmen wir die Haftung</span></li></ul><p>Und so geht&rsquo;s: Einfach unseren Rechtstextkonfigurator durchlaufen und so <strong>innerhalb weniger&nbsp;</strong><span style=\"line-height:1.6em\"><strong>Minuten</strong> die Rechtstexte erstellen und in ihren Shop </span>einbinden<span style=\"line-height:1.6em\">. So k&ouml;nnen sie ganz entspannt&nbsp;</span><span style=\"line-height:1.6em\">Abmahnungen abwehren <strong>ohne selbst aktiv</strong> zu werden.&nbsp;</span></p><p><a href=\"http://www.protectedshops.de/partner/xtcommerce\" target=\"_blank\">Jetzt einen Monat kostenfrei unseren Service in Anspruch nehmen.</a>&nbsp;</p><p>Gutscheincode: XT-2014-1</p>','','',1),(2,'de','Privatsphäre und Datenschutz','Privatsphäre und Datenschutz','<p>Geben Sie hier Ihre Datenschutzerkl&auml;rung ein.</p><p>Sie haben<strong> keine Zeit</strong> sich um die Pflege Ihre Rechtstexte zu k&uuml;mmern? Da k&ouml;nnen wir, die Protected&nbsp;<span style=\"line-height:1.6em\">Shops GmbH helfen.</span></p><ul>	<li><strong>Innerhalb weniger Minuten Datenschutzerkl&auml;rung</strong> im Zusammenhang mit&nbsp;<span style=\"line-height:1.6em\">Widerrufsbelehrung, AGB und Impressum erstellen.</span></li>	<li><span style=\"line-height:1.6em\">Mithilfe unserer Schnittstelle werden die Texte<strong> direkt in ihren Shop eingebunden</strong> und bei&nbsp;ver&auml;ndernder Rechtslage automatisch aktualisiert</span></li>	<li><span style=\"line-height:1.6em\">F&uuml;r unsere Rechtstexte &uuml;bernehmen wir die Haftung</span></li></ul><p>Und so geht&rsquo;s: Einfach unseren Rechtstextkonfigurator durchlaufen und so<strong> innerhalb weniger&nbsp;</strong><span style=\"line-height:1.6em\"><strong>Minuten</strong> die Rechtstexte erstellen und in ihren Shop </span>einbinden<span style=\"line-height:1.6em\">. So k&ouml;nnen sie ganz entspannt&nbsp;</span><span style=\"line-height:1.6em\">Abmahnungen abwehren <strong>ohne selbst aktiv</strong> zu werden.&nbsp;</span></p><p><a href=\"http://www.protectedshops.de/partner/xtcommerce\" target=\"_blank\">Jetzt einen Monat kostenfrei unseren Service in Anspruch nehmen.&nbsp;</a></p><p>Gutscheincode: XT-2014-1</p>','','',1),(3,'de','Unsere AGB','Allgemeine Geschäftsbedingungen','<p>Geben Sie hier Ihre AGB ein.</p><p>Sie haben <strong>keine Zeit</strong> sich um die Pflege Ihre Rechtstexte zu k&uuml;mmern? Da k&ouml;nnen wir, die Protected&nbsp;<span style=\"line-height:1.6em\">Shops GmbH helfen.</span></p><ul>	<li><strong style=\"line-height:1.6em\">Innerhalb weniger Minuten AGB</strong><span style=\"line-height:1.6em\"> im Zusammenhang mit Widerrufsbelehrung,&nbsp;</span><span style=\"line-height:1.6em\">Datenschutzerkl&auml;rung und Impressum erstellen.</span></li>	<li><span style=\"line-height:1.6em\">Mithilfe unserer Schnittstelle werden die Texte <strong>direkt in ihren Shop eingebunden</strong> und bei&nbsp;ver&auml;ndernder Rechtslage automatisch aktualisiert</span></li>	<li><span style=\"line-height:1.6em\">F&uuml;r unsere Rechtstexte &uuml;bernehmen wir die Haftung</span></li></ul><p>Und so geht&rsquo;s: Einfach unseren Rechtstextkonfigurator durchlaufen und so <strong>innerhalb weniger&nbsp;</strong><span style=\"line-height:1.6em\"><strong>Minuten</strong> die Rechtstexte erstellen und in ihren Shop </span>einbinden<span style=\"line-height:1.6em\">. So k&ouml;nnen sie ganz entspannt&nbsp;</span><span style=\"line-height:1.6em\">Abmahnungen abwehren <strong>ohne selbst aktiv</strong> zu werden.&nbsp;</span></p><p><a href=\"http://www.protectedshops.de/partner/xtcommerce\" target=\"_blank\">Jetzt einen Monat kostenfrei unseren Service in Anspruch nehmen.&nbsp;</a></p><p>Gutscheincode: XT-2014-1</p>','','',1),(4,'de','Impressum','Impressum','<p>Geben Sie hier Ihre Impressum ein.&nbsp;</p><p>Sie haben <strong>keine Zeit</strong> sich um die Pflege Ihre Rechtstexte zu k&uuml;mmern? Da k&ouml;nnen wir, die Protected&nbsp;<span style=\"line-height:1.6em\">Shops GmbH helfen.</span></p><ul>	<li><strong>Innerhalb weniger Minuten Impressum</strong> im Zusammenhang mit Widerrufsbelehrung,&nbsp;<span style=\"line-height:1.6em\">Datenschutzerkl&auml;rung und AGB erstellen.</span></li>	<li><span style=\"line-height:1.6em\">Mithilfe unserer Schnittstelle werden die Texte<strong> direkt in ihren Shop eingebunden</strong> und bei&nbsp;ver&auml;ndernder Rechtslage automatisch aktualisiert</span></li>	<li><span style=\"line-height:1.6em\">F&uuml;r unsere Rechtstexte &uuml;bernehmen wir die Haftung</span></li></ul><p>Und so geht&rsquo;s: Einfach unseren Rechtstextkonfigurator durchlaufen und so <strong>innerhalb weniger&nbsp;</strong><span style=\"line-height:1.6em\"><strong>Minuten</strong> die Rechtstexte erstellen und in ihren Shop </span>einbinden<span style=\"line-height:1.6em\">. So k&ouml;nnen sie ganz entspannt&nbsp;</span><span style=\"line-height:1.6em\">Abmahnungen abwehren <strong>ohne selbst aktiv</strong> zu werden.&nbsp;</span></p><p><a href=\"http://www.protectedshops.de/partner/xtcommerce\" target=\"_blank\">Jetzt einen Monat kostenfrei unseren Service in Anspruch nehmen.&nbsp;</a></p><p>Gutscheincode: XT-2014-1</p>','','',1),(5,'de','Index','Willkommen','Dies ist die Standardinstallation der xt:Commerce 4.1 Shopsoftware. Alle dargestellten Produkte dienen zur Demonstration der Funktionsweise. Wenn Sie Produkte bestellen, so werden diese weder ausgeliefert, noch in Rechnung gestellt. Alle Informationen zu den verschiedenen Produkten sind erfunden und daher kann kein Anspruch\ndaraus abgeleitet werden.<br /><br />Sollten Sie daran interessiert sein das Programm, welches die Grundlage für diesen Shop bildet, einzusetzen, so besuchen Sie bitte  <a href=\"http://www.xt-commerce.com\" title=\"www.xt-commerce.com\" target=\"_blank\">www.xt-commerce.com</a>. Dieser Shop basiert auf der xt:Commerce 4.1 Shopsoftware','','',1),(6,'de','Kontakt','Kontakt','Ihre Kontaktinformationen','','',1),(7,'de','Widerrufsbelehrung','Widerrufsbelehrung','<p>Geben Sie hier Ihre Widerrufsbelehrung ein.&nbsp;</p><p>Sie <strong>haben keine Zeit</strong> sich um die Pflege Ihre Rechtstexte zu k&uuml;mmern? Da k&ouml;nnen wir, die Protected&nbsp;<span style=\"line-height:1.6em\">Shops GmbH helfen.</span></p><ul>	<li><strong>Innerhalb weniger Minuten Widerrufsbelehrung</strong> im Zusammenhang mit AGB,&nbsp;Datenschutzerkl&auml;rung und Impressum erstellen.</li>	<li>Mithilfe unserer Schnittstelle werden die Texte<strong> direkt in ihren Shop eingebunden</strong> und bei&nbsp;ver&auml;ndernder Rechtslage automatisch aktualisiert</li>	<li>F&uuml;r unsere Rechtstexte &uuml;bernehmen wir die Haftung</li></ul><p>Und so geht&rsquo;s: Einfach unseren Rechtstextkonfigurator durchlaufen und so <strong>innerhalb weniger&nbsp;</strong><span style=\"line-height:1.6em\"><strong>Minuten</strong> die Rechtstexte erstellen und in ihren Shop einbinden. So k&ouml;nnen sie ganz entspannt&nbsp;</span><span style=\"line-height:1.6em\">Abmahnungen abwehren <strong>ohne selbst aktiv</strong> zu werden.&nbsp;</span></p><p><a href=\"http://www.protectedshops.de/partner/xtcommerce\" target=\"_blank\">Jetzt einen Monat kostenfrei unseren Service in Anspruch nehmen.&nbsp;</a></p><p>Gutscheincode: XT-2014-1</p>','','',1),(8,'de','Über uns','Über uns','Ihre Informationen über Ihren Shop','','',1),(10,'de','Zahlungsarten','Zahlungsarten','<p>Fügen Sie hier Ihre Zahlungsweisen ein.</p>','','',1),(1,'en','Shipping & Returns','Shipping & Returns','Put here your Shipping & Returns information','','',1),(2,'en','Privacy Notice','Privacy Notice','Put here your Privacy Notice information','','',1),(3,'en','Conditions of Use','Conditions of Use','Conditions of Use<br />Put here your Conditions of Use information','','',1),(4,'en','Impressum','Impressum','Put here your Company information','','',1),(5,'en','Index','Welcome','This is a standard installation of the xt:Commerce 4.1 Shopsoftware.','','',1),(6,'en','Contact','Contact','Please enter your contact informations','','',1),(7,'en','Right of rescission','Right of rescission','Your informations on the right of rescission','','',1),(8,'en','About Us','About Us','Your informations about your shop','','',1),(10,'en','Payment','Payment','<p>List here your payment methods.</p>','','',1);
/*!40000 ALTER TABLE `xt_content_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_content_permission`
--

DROP TABLE IF EXISTS `xt_content_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_content_permission` (
  `pid` int(11) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `type` varchar(32) NOT NULL,
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`type`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_content_permission`
--

LOCK TABLES `xt_content_permission` WRITE;
/*!40000 ALTER TABLE `xt_content_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_content_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_content_to_block`
--

DROP TABLE IF EXISTS `xt_content_to_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_content_to_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_content_to_block`
--

LOCK TABLES `xt_content_to_block` WRITE;
/*!40000 ALTER TABLE `xt_content_to_block` DISABLE KEYS */;
INSERT INTO `xt_content_to_block` VALUES (1,7,1),(2,7,2),(3,7,3),(4,7,4),(5,7,6),(14,7,7),(7,6,1),(8,6,2),(9,6,3),(10,6,4),(11,6,6),(13,6,7),(15,9,8),(16,6,10),(17,7,10);
/*!40000 ALTER TABLE `xt_content_to_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_countries`
--

DROP TABLE IF EXISTS `xt_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_countries` (
  `countries_iso_code_2` char(2) NOT NULL,
  `countries_iso_code_3` char(3) NOT NULL,
  `status` int(1) DEFAULT '1',
  `zone_id` int(11) DEFAULT NULL,
  `phone_prefix` varchar(32) NOT NULL,
  PRIMARY KEY (`countries_iso_code_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_countries`
--

LOCK TABLES `xt_countries` WRITE;
/*!40000 ALTER TABLE `xt_countries` DISABLE KEYS */;
INSERT INTO `xt_countries` VALUES ('AD','AND',0,30,'00376'),('AE','ARE',0,24,'00971'),('AF','AFG',0,24,'0093'),('AG','ATG',0,26,'001268'),('AI','AIA',0,26,'001264'),('AL','ALB',0,30,'00355'),('AM','ARM',0,24,'00374'),('AN','ANT',0,0,'00599'),('AO','AGO',0,25,'00244'),('AQ','ATA',0,0,''),('AR','ARG',0,27,'0054'),('AS','ASM',0,0,'001684'),('AT','AUT',0,31,'0043'),('AU','AUS',0,29,'0061'),('AW','ABW',0,26,'00297'),('AZ','AZE',0,24,'00994'),('BA','BIH',0,30,'00387'),('BB','BRB',0,26,'001246'),('BD','BGD',0,24,'00880'),('BE','BEL',0,31,'0032'),('BF','BFA',0,25,'00226'),('BG','BGR',0,31,'00359'),('BH','BHR',0,24,'00973'),('BI','BDI',0,25,'00257'),('BJ','BEN',0,25,'00229'),('BM','BMU',0,26,'001441'),('BN','BRN',0,24,'00673'),('BO','BOL',0,27,'00591'),('BR','BRA',0,27,'0055'),('BS','BHS',0,26,'001242'),('BT','BTN',0,24,'00975'),('BV','BVT',0,0,''),('BW','BWA',0,25,'00267'),('BY','BLR',0,30,'00375'),('BZ','BLZ',0,26,'00501'),('CA','CAN',0,26,'001'),('CC','CCK',0,0,'006189162'),('CF','CAF',0,25,'00236'),('CG','COG',0,25,'00242'),('CH','CHE',0,30,'0041'),('CI','CIV',0,25,'00225'),('CK','COK',0,0,'00682'),('CL','CHL',0,27,'0056'),('CM','CMR',0,25,'00237'),('CN','CHN',0,24,'0086'),('CO','COL',0,27,'0057'),('CR','CRI',0,26,'00506'),('CU','CUB',0,26,'0053'),('CV','CPV',0,25,'00238'),('CX','CXR',0,0,'006189164'),('CY','CYP',0,31,'00357'),('CZ','CZE',0,31,'00420'),('DE','DEU',0,31,'0049'),('DJ','DJI',0,25,'00253'),('DK','DNK',0,31,'0045'),('DM','DMA',0,26,'001767'),('DO','DOM',0,26,'001809,001829,001849'),('DZ','DZA',0,25,'00213'),('EC','ECU',0,27,'00593'),('EE','EST',0,31,'00372'),('EG','EGY',0,25,'0020'),('EH','ESH',0,25,'002125288,002125289'),('ER','ERI',0,25,'00291'),('ES','ESP',0,31,'0034'),('ET','ETH',0,25,'00251'),('FI','FIN',0,31,'00358'),('FJ','FJI',0,0,'00679'),('FK','FLK',0,27,'00500'),('FM','FSM',0,0,'00691'),('FO','FRO',0,0,'00298'),('FR','FRA',0,31,'0033'),('FX','FXX',0,0,''),('GA','GAB',0,25,'00241'),('GB','GBR',0,31,'0044'),('GD','GRD',0,26,'001473'),('GE','GEO',0,24,'00995'),('GF','GUF',0,27,'00594'),('GH','GHA',0,25,'00233'),('GI','GIB',0,0,'00350'),('GL','GRL',0,26,'00299'),('GM','GMB',0,25,'00220'),('GN','GIN',0,25,'00224'),('GP','GLP',0,26,'00590'),('GQ','GNQ',0,25,'00240'),('GR','GRC',0,31,'0030'),('GS','SGS',0,27,'00500'),('GT','GTM',0,26,'00502'),('GU','GUM',0,0,'001671'),('GW','GNB',0,25,'00245'),('GY','GUY',0,27,'00592'),('HK','HKG',0,24,'00852'),('HM','HMD',0,0,''),('HN','HND',0,26,'00504'),('HR','HRV',0,30,'00385'),('HT','HTI',0,26,'00509'),('HU','HUN',0,31,'0036'),('ID','IDN',0,24,'0062'),('IE','IRL',0,31,'00353'),('IL','ISR',0,24,'00972'),('IN','IND',0,24,'0091'),('IO','IOT',0,0,'00246'),('IQ','IRQ',0,24,'00964'),('IR','IRN',0,24,'0098'),('IS','ISL',0,30,'00354'),('IT','ITA',0,31,'0039'),('JM','JAM',0,26,'001876'),('JO','JOR',0,24,'00962'),('JP','JPN',0,24,'0081'),('KE','KEN',0,25,'00254'),('KG','KGZ',0,24,'00996'),('KH','KHM',0,24,'00855'),('KI','KIR',0,0,'00686'),('KM','COM',0,25,'00269'),('KN','KNA',0,26,'001869'),('KP','PRK',0,24,'00850'),('KR','KOR',0,24,'0082'),('KW','KWT',0,24,'00965'),('KY','CYM',0,26,'001345'),('KZ','KAZ',0,24,'007'),('LA','LAO',0,24,'00856'),('LB','LBN',0,24,'00961'),('LC','LCA',0,26,'001758'),('LI','LIE',0,30,'00423'),('LK','LKA',0,24,'0094'),('LR','LBR',0,25,'00231'),('LS','LSO',0,25,'00266'),('LT','LTU',1,31,'00370'),('LU','LUX',0,31,'00352'),('LV','LVA',0,31,'00371'),('LY','LBY',0,25,'00218'),('MA','MAR',0,25,'00212'),('MC','MCO',0,30,'00377'),('MD','MDA',0,0,'00373'),('MG','MDG',0,25,'00261'),('MH','MHL',0,0,'00692'),('MK','MKD',0,0,'00389'),('ML','MLI',0,25,'00223'),('MM','MMR',0,24,'0095'),('MN','MNG',0,24,'00976'),('MO','MAC',0,0,'00853'),('MP','MNP',0,0,'001670'),('MQ','MTQ',0,26,'00596'),('MR','MRT',0,0,'00222'),('MS','MSR',0,26,'001664'),('MT','MLT',0,31,'00356'),('MU','MUS',0,25,'00230'),('MV','MDV',0,24,'00960'),('MW','MWI',0,25,'00265'),('MX','MEX',0,26,'0052'),('MY','MYS',0,24,'0060'),('MZ','MOZ',0,25,'00258'),('NA','NAM',0,25,'00264'),('NC','NCL',0,0,'00687'),('NE','NER',0,25,'00227'),('NF','NFK',0,0,'00672'),('NG','NGA',0,0,'00234'),('NI','NIC',0,26,'00505'),('NL','NLD',0,31,'0031'),('NO','NOR',0,30,'0047'),('NP','NPL',0,24,'00977'),('NR','NRU',0,0,'00674'),('NU','NIU',0,0,'00683'),('NZ','NZL',0,29,'0064'),('OM','OMN',0,24,'00968'),('PA','PAN',0,26,'00507'),('PE','PER',0,27,'0051'),('PF','PYF',0,0,'00689'),('PG','PNG',0,0,'00675'),('PH','PHL',0,24,'0063'),('PK','PAK',0,24,'0092'),('PL','POL',0,31,'0048'),('PM','SPM',0,26,'00508'),('PN','PCN',0,0,'0064'),('PR','PRI',0,26,'001787,001939'),('PT','PRT',0,31,'00351'),('PW','PLW',0,0,'00680'),('PY','PRY',0,27,'00595'),('QA','QAT',0,24,'00974'),('RE','REU',0,0,'00262'),('RO','ROM',0,31,'0040'),('RU','RUS',0,24,'007'),('RW','RWA',0,25,'00250'),('SA','SAU',0,24,'00966'),('SB','SLB',0,0,'00677'),('SC','SYC',0,25,'00248'),('SD','SDN',0,25,'00249'),('SE','SWE',0,31,'0046'),('SG','SGP',0,24,'0065'),('SH','SHN',0,0,'00290'),('SI','SVN',0,31,'00386'),('SJ','SJM',0,0,''),('SK','SVK',0,31,'00421'),('SL','SLE',0,25,'00232'),('SM','SMR',0,30,'00378'),('SN','SEN',0,25,'00221'),('SO','SOM',0,25,'00252'),('SR','SUR',0,27,'00597'),('ST','STP',0,25,'00239'),('SV','SLV',0,26,'00503'),('SY','SYR',0,24,'00963'),('SZ','SWZ',0,25,'00268'),('TC','TCA',0,0,'001649'),('TD','TCD',0,25,'00235'),('TF','ATF',0,0,''),('TG','TGO',0,25,'00228'),('TH','THA',0,24,'0066'),('TJ','TJK',0,24,'00992'),('TK','TKL',0,0,'00690'),('TM','TKM',0,24,'00993'),('TN','TUN',0,25,'00216'),('TO','TON',0,0,'00676'),('TP','TMP',0,0,'00670'),('TR','TUR',0,24,'0090'),('TT','TTO',0,26,'001868'),('TV','TUV',0,0,'00688'),('TW','TWN',0,24,'00886'),('TZ','TZA',0,25,'00255'),('UA','UKR',0,30,'00380'),('UG','UGA',0,25,'00256'),('UM','UMI',0,0,''),('US','USA',0,26,'001'),('UY','URY',0,27,'00598'),('UZ','UZB',0,24,'00998'),('VA','VAT',0,30,'0039'),('VC','VCT',0,26,'001784'),('VE','VEN',0,27,'0058'),('VG','VGB',0,26,'001284'),('VI','VIR',0,26,'001340'),('VN','VNM',0,24,'0084'),('VU','VUT',0,0,'00678'),('WF','WLF',0,0,'00681'),('WS','WSM',0,0,'00685'),('YE','YEM',0,24,'00967'),('YT','MYT',0,0,'00262'),('ZA','ZAF',0,25,'0027'),('ZM','ZMB',0,25,'00260'),('ZR','ZAR',0,0,'00243'),('ZW','ZWE',0,25,'00263'),('RS','SRB',0,30,'00381'),('TL','TLS',0,24,'00670');
/*!40000 ALTER TABLE `xt_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_countries_description`
--

DROP TABLE IF EXISTS `xt_countries_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_countries_description` (
  `language_code` char(2) NOT NULL,
  `countries_name` varchar(64) DEFAULT NULL,
  `countries_iso_code_2` char(2) NOT NULL,
  PRIMARY KEY (`language_code`,`countries_iso_code_2`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_countries_description`
--

LOCK TABLES `xt_countries_description` WRITE;
/*!40000 ALTER TABLE `xt_countries_description` DISABLE KEYS */;
INSERT INTO `xt_countries_description` VALUES ('de','Afghanistan','AF'),('de','Ägypten','EG'),('de','Albanien','AL'),('de','Algerien','DZ'),('de','Amerikanisch-Samoa','AS'),('de','Andorra','AD'),('de','Angola','AO'),('de','Anguilla','AI'),('de','Antarktis','AQ'),('de','Antigua und Barbuda','AG'),('de','Arabische Republik Syrien','SY'),('de','Argentinien','AR'),('de','Armenien','AM'),('de','Aruba','AW'),('de','Aserbaidschan','AZ'),('de','Äthiopien','ET'),('de','Australien','AU'),('de','Äquatorial-Guinea','GQ'),('de','Bahamas','BS'),('de','Bahrain','BH'),('de','Bangladesch','BD'),('de','Barbados','BB'),('de','Belarus','BY'),('de','Belgien','BE'),('de','Belize','BZ'),('de','Benin','BJ'),('de','Bermuda','BM'),('de','Bhutan','BT'),('de','Bolivien','BO'),('de','Bosnien und Herzegowina','BA'),('de','Botswana','BW'),('de','Bouvet Island','BV'),('de','Brasil','BR'),('de','British Indian Ocean Territory','IO'),('de','Brunei Darussalam','BN'),('de','Bulgarien','BG'),('de','Burkina Faso','BF'),('de','Burundi','BI'),('de','Cape Verde','CV'),('de','Cayman Islands','KY'),('de','Chile','CL'),('de','China','CN'),('de','Christmas Island','CX'),('de','Cocos (Keeling)-Inseln','CC'),('de','Congo','CG'),('de','Cook-Inseln','CK'),('de','Costa Rica','CR'),('de','Cote D\'Ivoire','CI'),('de','Dänemark','DK'),('de','Deutschland','DE'),('de','Dominica','DM'),('de','Dominikanische Republik','DO'),('de','Dschibuti','DJ'),('de','Ecuador','EC'),('de','El Salvador','SV'),('de','Eritrea','ER'),('de','Estland','EE'),('de','Falkland-Inseln (Malvinas)','FK'),('de','Färöer-Inseln','FO'),('de','Fidschi','FJ'),('de','Finnland','FI'),('de','Föderierte Staaten von Mikronesien','FM'),('de','Frankreich','FR'),('de','Frankreich, Metropolitan','FX'),('de','Französisch-Guayana','GF'),('de','Französisch-Polynesien','PF'),('de','Französische Südgebiete','TF'),('de','Gabun','GA'),('de','Gambia','GM'),('de','Georgia','GE'),('de','Ghana','GH'),('de','Gibraltar','GI'),('de','Griechenland','GR'),('de','Grönland','GL'),('de','Grenada','GD'),('de','Guadeloupe','GP'),('de','Guam','GU'),('de','Guatemala','GT'),('de','Guinea','GN'),('de','Guinea-Bissau','GW'),('de','Guyana','GY'),('de','Haiti','HT'),('de','Heard und Mc Donald Inseln','HM'),('de','Honduras','HN'),('de','Hong Kong','HK'),('de','Island','IS'),('de','Indien','IN'),('de','Indonesien','ID'),('de','Iran (Islamische Republik)','IR'),('de','Irak','IQ'),('de','Irland','IE'),('de','Israel','IL'),('de','Italien','IT'),('de','Jamaika','JM'),('de','Japan','JP'),('de','Jemen','YE'),('de','Jordanien','JO'),('de','Kambodscha','KH'),('de','Kamerun','CM'),('de','Kanada','CA'),('de','Kasachstan','KZ'),('de','Katar','QA'),('de','Kenia','KE'),('de','Kirgisistan','KG'),('de','Kiribati','KI'),('de','Kolumbien','CO'),('de','Komoren','KM'),('de','Nordkorea','KP'),('de','Südkorea','KR'),('de','Kroatien','HR'),('de','Kuba','CU'),('de','Kuwait','KW'),('de','Laos Demokratische Volksrepublik','LA'),('de','Lettland','LV'),('de','Libanon','LB'),('de','Lesotho','LS'),('de','Liberia','LR'),('de','Libyen','LY'),('de','Liechtenstein','LI'),('de','Litauen','LT'),('de','Luxemburg','LU'),('de','Macau','MO'),('de','Mazedonien, die ehemalige jugoslawische Republik','MK'),('de','Madagaskar','MG'),('de','Malawi','MW'),('de','Malaysia','MY'),('de','Malediven','MV'),('de','Mali','ML'),('de','Malta','MT'),('de','Marshall-Inseln','MH'),('de','Martinique','MQ'),('de','Mauretanien','MR'),('de','Mauritius','MU'),('de','Mayotte','YT'),('de','Mexiko','MX'),('de','Moldau, Republik','MD'),('de','Monaco','MC'),('de','Mongolei','MN'),('de','Montserrat','MS'),('de','Marokko','MA'),('de','Mosambik','MZ'),('de','Myanmar','MM'),('de','Namibia','NA'),('de','Nauru','NR'),('de','Nepal','NP'),('de','Niederlande','NL'),('de','Niederländische Antillen','AN'),('de','New Caledonia','NC'),('de','New Zealand','NZ'),('de','Nicaragua','NI'),('de','Niger','NE'),('de','Nigeria','NG'),('de','Niue','NU'),('de','Norfolk Island','NF'),('de','Nördliche Marianen-Inseln','MP'),('de','Norwegen','NO'),('de','Oman','OM'),('de','Ost-Timor','TP'),('de','Österreich','AT'),('de','Pakistan','PK'),('de','Palau','PW'),('de','Panama','PA'),('de','Papua New Guinea','PG'),('de','Paraguay','PY'),('de','Peru','PE'),('de','Philippinen','PH'),('de','Pitcairn','PN'),('de','Polen','PL'),('de','Portugal','PT'),('de','Puerto Rico','PR'),('de','Reunion','RE'),('de','Rumänien','RO'),('de','Russische Föderation','RU'),('de','Ruanda','RW'),('de','Saint Kitts und Nevis','KN'),('de','Saint Lucia','LC'),('de','Saint Vincent und die Grenadinen','VC'),('de','Samoa','WS'),('de','Sambia','ZM'),('de','San Marino','SM'),('de','Sao Tome und Principe','ST'),('de','Saudi-Arabien','SA'),('de','Senegal','SN'),('de','Seychellen','SC'),('de','Sierra Leone','SL'),('de','Simbabwe','ZW'),('de','Singapur','SG'),('de','Slowakei (Slowakische Republik)','SK'),('de','Slowenien','SI'),('de','Solomon-Inseln','SB'),('de','Somalia','SO'),('de','Südafrika','ZA'),('de','Süd-Georgien und Südsandwichinseln','GS'),('de','Spanien','ES'),('de','Sri Lanka','LK'),('de','St. Helena','SH'),('de','St. Pierre und Miquelon','PM'),('de','Sudan','SD'),('de','Suriname','SR'),('de','Svalbard und Jan-Mayen-Inseln','SJ'),('de','Swasiland','SZ'),('de','Schweden','SE'),('de','Schweiz','CH'),('de','Taiwan','TW'),('de','Tadschikistan','TJ'),('de','Tansania, Vereinigte Republik','TZ'),('de','Thailand','TH'),('de','Togo','TG'),('de','Tokelau','TK'),('de','Tonga','TO'),('de','Trinidad und Tobago','TT'),('de','Tschad','TD'),('de','Tschechische Republik','CZ'),('de','Tunesien','TN'),('de','Türkei','TR'),('de','Turkmenistan','TM'),('de','Turks- und Caicosinseln','TC'),('de','Tuvalu','TV'),('de','Uganda','UG'),('de','Ukraine','UA'),('de','Ungarn','HU'),('de','United Kingdom','GB'),('de','United States','US'),('de','United States Minor Outlying Islands','UM'),('de','Uruguay','UY'),('de','Usbekistan','UZ'),('de','Vanuatu','VU'),('de','Staat Vatikanstadt (Heiliger Stuhl)','VA'),('de','Venezuela','VE'),('de','Vereinigte Arabische Emirate','AE'),('de','Vietnam','VN'),('de','Virgin Islands (British)','VG'),('de','Virgin Islands (US)','VI'),('de','Wallis und Futuna-Inseln','WF'),('de','Westsahara','EH'),('de','Zaire','ZR'),('de','Zentralafrikanischen Republik','CF'),('de','Zypern','CY'),('de','Osttimor','TL'),('de','Republik Serbien','RS'),('en','Andorra','AD'),('en','United Arab Emirates','AE'),('en','Afghanistan','AF'),('en','Antigua and Barbuda','AG'),('en','Anguilla','AI'),('en','Albania','AL'),('en','Armenia','AM'),('en','Netherlands Antilles','AN'),('en','Angola','AO'),('en','Antarctica','AQ'),('en','Argentina','AR'),('en','American Samoa','AS'),('en','Austria','AT'),('en','Australia','AU'),('en','Aruba','AW'),('en','Azerbaijan','AZ'),('en','Bosnia and Herzegowina','BA'),('en','Barbados','BB'),('en','Bangladesh','BD'),('en','Belgium','BE'),('en','Burkina Faso','BF'),('en','Bulgaria','BG'),('en','Bahrain','BH'),('en','Burundi','BI'),('en','Benin','BJ'),('en','Bermuda','BM'),('en','Brunei Darussalam','BN'),('en','Bolivia','BO'),('en','Brazil','BR'),('en','Bahamas','BS'),('en','Bhutan','BT'),('en','Bouvet Island','BV'),('en','Botswana','BW'),('en','Belarus','BY'),('en','Belize','BZ'),('en','Canada','CA'),('en','Cocos (Keeling) Islands','CC'),('en','Central African Republic','CF'),('en','Congo','CG'),('en','Switzerland','CH'),('en','Cote D\'Ivoire','CI'),('en','Cook Islands','CK'),('en','Chile','CL'),('en','Cameroon','CM'),('en','China','CN'),('en','Colombia','CO'),('en','Costa Rica','CR'),('en','Cuba','CU'),('en','Cape Verde','CV'),('en','Christmas Island','CX'),('en','Cyprus','CY'),('en','Czech Republic','CZ'),('en','Germany','DE'),('en','Djibouti','DJ'),('en','Denmark','DK'),('en','Dominica','DM'),('en','Dominican Republic','DO'),('en','Algeria','DZ'),('en','Ecuador','EC'),('en','Estonia','EE'),('en','Egypt','EG'),('en','Western Sahara','EH'),('en','Eritrea','ER'),('en','Spain','ES'),('en','Ethiopia','ET'),('en','Finland','FI'),('en','Fiji','FJ'),('en','Falkland Islands (Malvinas)','FK'),('en','Micronesia, Federated States of','FM'),('en','Faroe Islands','FO'),('en','France','FR'),('en','France, Metropolitan','FX'),('en','Gabon','GA'),('en','United Kingdom','GB'),('en','Grenada','GD'),('en','Georgia','GE'),('en','French Guiana','GF'),('en','Ghana','GH'),('en','Gibraltar','GI'),('en','Greenland','GL'),('en','Gambia','GM'),('en','Guinea','GN'),('en','Guadeloupe','GP'),('en','Equatorial Guinea','GQ'),('en','Greece','GR'),('en','South Georgia and the South Sandwich Islands','GS'),('en','Guatemala','GT'),('en','Guam','GU'),('en','Guinea-bissau','GW'),('en','Guyana','GY'),('en','Hong Kong','HK'),('en','Heard and Mc Donald Islands','HM'),('en','Honduras','HN'),('en','Croatia','HR'),('en','Haiti','HT'),('en','Hungary','HU'),('en','Indonesia','ID'),('en','Ireland','IE'),('en','Israel','IL'),('en','India','IN'),('en','British Indian Ocean Territory','IO'),('en','Iraq','IQ'),('en','Iran (Islamic Republic of)','IR'),('en','Iceland','IS'),('en','Italy','IT'),('en','Jamaica','JM'),('en','Jordan','JO'),('en','Japan','JP'),('en','Kenya','KE'),('en','Kyrgyzstan','KG'),('en','Cambodia','KH'),('en','Kiribati','KI'),('en','Comoros','KM'),('en','Saint Kitts and Nevis','KN'),('en','Northkorea','KP'),('en','Southkorea','KR'),('en','Kuwait','KW'),('en','Cayman Islands','KY'),('en','Kazakhstan','KZ'),('en','Lao People\'s Democratic Republic','LA'),('en','Lebanon','LB'),('en','Saint Lucia','LC'),('en','Liechtenstein','LI'),('en','Sri Lanka','LK'),('en','Liberia','LR'),('en','Lesotho','LS'),('en','Lithuania','LT'),('en','Luxembourg','LU'),('en','Latvia','LV'),('en','Libyan Arab Jamahiriya','LY'),('en','Morocco','MA'),('en','Monaco','MC'),('en','Moldova, Republic of','MD'),('en','Madagascar','MG'),('en','Marshall Islands','MH'),('en','Macedonia, The Former Yugoslav Republic of','MK'),('en','Mali','ML'),('en','Myanmar','MM'),('en','Mongolia','MN'),('en','Macau','MO'),('en','Northern Mariana Islands','MP'),('en','Martinique','MQ'),('en','Mauritania','MR'),('en','Montserrat','MS'),('en','Malta','MT'),('en','Mauritius','MU'),('en','Maldives','MV'),('en','Malawi','MW'),('en','Mexico','MX'),('en','Malaysia','MY'),('en','Mozambique','MZ'),('en','Namibia','NA'),('en','New Caledonia','NC'),('en','Niger','NE'),('en','Norfolk Island','NF'),('en','Nigeria','NG'),('en','Nicaragua','NI'),('en','Netherlands','NL'),('en','Norway','NO'),('en','Nepal','NP'),('en','Nauru','NR'),('en','Niue','NU'),('en','New Zealand','NZ'),('en','Oman','OM'),('en','Panama','PA'),('en','Peru','PE'),('en','French Polynesia','PF'),('en','Papua New Guinea','PG'),('en','Philippines','PH'),('en','Pakistan','PK'),('en','Poland','PL'),('en','St. Pierre and Miquelon','PM'),('en','Pitcairn','PN'),('en','Puerto Rico','PR'),('en','Portugal','PT'),('en','Palau','PW'),('en','Paraguay','PY'),('en','Qatar','QA'),('en','Reunion','RE'),('en','Romania','RO'),('en','Serbia','RS'),('en','Russian Federation','RU'),('en','Rwanda','RW'),('en','Saudi Arabia','SA'),('en','Solomon Islands','SB'),('en','Seychelles','SC'),('en','Sudan','SD'),('en','Sweden','SE'),('en','Singapore','SG'),('en','St. Helena','SH'),('en','Slovenia','SI'),('en','Svalbard and Jan Mayen Islands','SJ'),('en','Slovakia (Slovak Republic)','SK'),('en','Sierra Leone','SL'),('en','San Marino','SM'),('en','Senegal','SN'),('en','Somalia','SO'),('en','Suriname','SR'),('en','Sao Tome and Principe','ST'),('en','El Salvador','SV'),('en','Syrian Arab Republic','SY'),('en','Swaziland','SZ'),('en','Turks and Caicos Islands','TC'),('en','Chad','TD'),('en','French Southern Territories','TF'),('en','Togo','TG'),('en','Thailand','TH'),('en','Tajikistan','TJ'),('en','Tokelau','TK'),('en','East timor','TL'),('en','Turkmenistan','TM'),('en','Tunisia','TN'),('en','Tonga','TO'),('en','East Timor','TP'),('en','Turkey','TR'),('en','Trinidad and Tobago','TT'),('en','Tuvalu','TV'),('en','Taiwan','TW'),('en','Tanzania, United Republic of','TZ'),('en','Ukraine','UA'),('en','Uganda','UG'),('en','United States Minor Outlying Islands','UM'),('en','United States','US'),('en','Uruguay','UY'),('en','Uzbekistan','UZ'),('en','Vatican City State (Holy See)','VA'),('en','Saint Vincent and the Grenadines','VC'),('en','Venezuela','VE'),('en','Virgin Islands (British)','VG'),('en','Virgin Islands (U.S.)','VI'),('en','Viet Nam','VN'),('en','Vanuatu','VU'),('en','Wallis and Futuna Islands','WF'),('en','Samoa','WS'),('en','Yemen','YE'),('en','Mayotte','YT'),('en','South Africa','ZA'),('en','Zambia','ZM'),('en','Zaire','ZR'),('en','Zimbabwe','ZW');
/*!40000 ALTER TABLE `xt_countries_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_countries_permission`
--

DROP TABLE IF EXISTS `xt_countries_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_countries_permission` (
  `pid` varchar(3) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_countries_permission`
--

LOCK TABLES `xt_countries_permission` WRITE;
/*!40000 ALTER TABLE `xt_countries_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_countries_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_cron`
--

DROP TABLE IF EXISTS `xt_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_cron` (
  `cron_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cron_note` varchar(150) DEFAULT NULL,
  `active_status` tinyint(1) unsigned DEFAULT NULL,
  `cron_value` smallint(5) unsigned DEFAULT NULL,
  `cron_type` char(1) DEFAULT NULL,
  `hour` tinyint(3) unsigned DEFAULT NULL,
  `minute` tinyint(3) unsigned DEFAULT NULL,
  `cron_action` varchar(150) DEFAULT NULL,
  `cron_parameter` text,
  `last_run_date` datetime DEFAULT NULL,
  `next_run_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_cron`
--

LOCK TABLES `xt_cron` WRITE;
/*!40000 ALTER TABLE `xt_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_currencies`
--

DROP TABLE IF EXISTS `xt_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `prefix` varchar(12) DEFAULT NULL,
  `suffix` varchar(12) DEFAULT NULL,
  `dec_point` char(1) DEFAULT NULL,
  `thousands_sep` char(1) DEFAULT NULL,
  `decimals` char(1) DEFAULT NULL,
  `value_multiplicator` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`currencies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_currencies`
--

LOCK TABLES `xt_currencies` WRITE;
/*!40000 ALTER TABLE `xt_currencies` DISABLE KEYS */;
INSERT INTO `xt_currencies` VALUES (1,'EUR','EUR','EUR','',',','.','2',1.00000000,NULL);
/*!40000 ALTER TABLE `xt_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_customers`
--

DROP TABLE IF EXISTS `xt_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `customers_cid` varchar(32) DEFAULT NULL,
  `customers_vat_id` varchar(20) DEFAULT NULL,
  `customers_vat_id_status` int(2) DEFAULT NULL,
  `customers_status` int(5) NOT NULL DEFAULT '1',
  `customers_email_address` varchar(96) NOT NULL,
  `customers_password` varchar(40) DEFAULT NULL,
  `account_type` int(1) DEFAULT '0',
  `password_request_key` varchar(32) DEFAULT NULL,
  `payment_unallowed` varchar(255) DEFAULT NULL,
  `shipping_unallowed` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `shop_id` int(11) NOT NULL DEFAULT '1',
  `customers_default_currency` char(3) DEFAULT NULL,
  `customers_default_language` char(2) DEFAULT NULL,
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `nl2go_newsletter_status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_customers`
--

LOCK TABLES `xt_customers` WRITE;
/*!40000 ALTER TABLE `xt_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_customers_addresses`
--

DROP TABLE IF EXISTS `xt_customers_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_customers_addresses` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) DEFAULT NULL,
  `customers_dob` datetime DEFAULT '0000-00-00 00:00:00',
  `customers_phone` varchar(32) DEFAULT NULL,
  `customers_mobile_phone` varchar(32) DEFAULT NULL,
  `customers_fax` varchar(32) DEFAULT NULL,
  `customers_company` varchar(64) DEFAULT NULL,
  `customers_company_2` varchar(64) DEFAULT NULL,
  `customers_company_3` varchar(64) DEFAULT NULL,
  `customers_firstname` varchar(32) NOT NULL,
  `customers_lastname` varchar(32) NOT NULL,
  `customers_street_address` varchar(64) NOT NULL,
  `customers_suburb` varchar(32) DEFAULT NULL,
  `customers_postcode` varchar(10) NOT NULL,
  `customers_city` varchar(32) NOT NULL,
  `customers_country_code` char(2) NOT NULL,
  `customers_federal_state_code` int(11) DEFAULT NULL,
  `address_class` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_customers_addresses`
--

LOCK TABLES `xt_customers_addresses` WRITE;
/*!40000 ALTER TABLE `xt_customers_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_customers_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_customers_basket`
--

DROP TABLE IF EXISTS `xt_customers_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_customers_basket` (
  `basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_key` varchar(255) DEFAULT NULL,
  `products_id` int(11) DEFAULT NULL,
  `products_quantity` decimal(15,2) DEFAULT NULL,
  `products_info` longtext,
  `date_added` datetime DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  PRIMARY KEY (`basket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_customers_basket`
--

LOCK TABLES `xt_customers_basket` WRITE;
/*!40000 ALTER TABLE `xt_customers_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_customers_status`
--

DROP TABLE IF EXISTS `xt_customers_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_customers_status` (
  `customers_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_status_min_order` int(7) DEFAULT NULL,
  `customers_status_max_order` int(7) DEFAULT NULL,
  `customers_status_show_price` int(1) NOT NULL DEFAULT '1',
  `customers_status_show_price_tax` int(1) NOT NULL DEFAULT '1',
  `customers_status_add_tax_ot` int(1) DEFAULT '0',
  `customers_status_graduated_prices` int(1) NOT NULL DEFAULT '1',
  `customers_fsk18` int(1) NOT NULL DEFAULT '1',
  `customers_fsk18_display` int(1) NOT NULL DEFAULT '1',
  `customers_status_master` int(11) DEFAULT '0',
  `customers_status_template` varchar(255) DEFAULT NULL,
  `customers_status_mobile_template` varchar(255) DEFAULT NULL,
  `shop_1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customers_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_customers_status`
--

LOCK TABLES `xt_customers_status` WRITE;
/*!40000 ALTER TABLE `xt_customers_status` DISABLE KEYS */;
INSERT INTO `xt_customers_status` VALUES (1,0,0,1,1,0,1,1,1,0,'','',1),(2,0,0,1,1,0,1,1,1,0,'','',1),(3,0,0,1,0,0,1,1,1,0,'','',1);
/*!40000 ALTER TABLE `xt_customers_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_customers_status_description`
--

DROP TABLE IF EXISTS `xt_customers_status_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_customers_status_description` (
  `customers_status_id` int(11) NOT NULL DEFAULT '0',
  `language_code` char(2) NOT NULL DEFAULT '1',
  `customers_status_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`customers_status_id`,`language_code`),
  KEY `idx_orders_status_name` (`customers_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_customers_status_description`
--

LOCK TABLES `xt_customers_status_description` WRITE;
/*!40000 ALTER TABLE `xt_customers_status_description` DISABLE KEYS */;
INSERT INTO `xt_customers_status_description` VALUES (1,'de','Gast'),(2,'de','Neuer Kunde'),(3,'de','Händler'),(1,'en','Guest'),(2,'en','New customer'),(3,'en','Merchant');
/*!40000 ALTER TABLE `xt_customers_status_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_download_log`
--

DROP TABLE IF EXISTS `xt_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_download_log` (
  `download_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `download_action` varchar(255) NOT NULL DEFAULT '',
  `download_count` varchar(255) NOT NULL DEFAULT '1',
  `attempts_left` varchar(255) NOT NULL DEFAULT '0',
  `log_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`download_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_download_log`
--

LOCK TABLES `xt_download_log` WRITE;
/*!40000 ALTER TABLE `xt_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_elefunds_transactions`
--

DROP TABLE IF EXISTS `xt_elefunds_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_elefunds_transactions` (
  `orders_id` int(11) NOT NULL,
  `donation` blob,
  `donation_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_elefunds_transactions`
--

LOCK TABLES `xt_elefunds_transactions` WRITE;
/*!40000 ALTER TABLE `xt_elefunds_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_elefunds_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_exportimport`
--

DROP TABLE IF EXISTS `xt_exportimport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_exportimport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ei_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'import',
  `ei_type_spec` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'products',
  `ei_type_match` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'products_id',
  `ei_type_match_2` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ei_title` varchar(64) COLLATE utf8_bin NOT NULL,
  `ei_filename` varchar(64) COLLATE utf8_bin NOT NULL,
  `ei_delimiter` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT ';',
  `ei_cat_tree_delimiter` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '/',
  `ei_enclosure` char(1) COLLATE utf8_bin NOT NULL DEFAULT '"',
  `ei_limit` int(11) NOT NULL DEFAULT '100',
  `ei_language` int(1) NOT NULL DEFAULT '0',
  `ei_price_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'false',
  `ei_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `ei_store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_exportimport`
--

LOCK TABLES `xt_exportimport` WRITE;
/*!40000 ALTER TABLE `xt_exportimport` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_exportimport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_exportimport_log`
--

DROP TABLE IF EXISTS `xt_exportimport_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_exportimport_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ei_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `error_message` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_exportimport_log`
--

LOCK TABLES `xt_exportimport_log` WRITE;
/*!40000 ALTER TABLE `xt_exportimport_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_exportimport_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_failed_login`
--

DROP TABLE IF EXISTS `xt_failed_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_failed_login` (
  `fail_id` int(11) NOT NULL AUTO_INCREMENT,
  `check_type` int(1) NOT NULL,
  `lookup` varchar(64) NOT NULL,
  `last_try` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fail_count` int(11) NOT NULL DEFAULT '0',
  `lock_until` timestamp NULL DEFAULT NULL,
  `fail_type` varchar(32) NOT NULL,
  PRIMARY KEY (`fail_id`),
  UNIQUE KEY `check` (`lookup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_failed_login`
--

LOCK TABLES `xt_failed_login` WRITE;
/*!40000 ALTER TABLE `xt_failed_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_failed_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_failed_pages`
--

DROP TABLE IF EXISTS `xt_failed_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_failed_pages` (
  `fail_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(64) NOT NULL,
  `last_try` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fail_count` int(11) NOT NULL DEFAULT '0',
  `lock_until` timestamp NULL DEFAULT NULL,
  `fail_type` varchar(32) NOT NULL,
  PRIMARY KEY (`fail_id`),
  UNIQUE KEY `check` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_failed_pages`
--

LOCK TABLES `xt_failed_pages` WRITE;
/*!40000 ALTER TABLE `xt_failed_pages` DISABLE KEYS */;
INSERT INTO `xt_failed_pages` VALUES (1,'192.168.32.1','2014-12-18 13:03:29',1,NULL,'customers_404');
/*!40000 ALTER TABLE `xt_failed_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_federal_states`
--

DROP TABLE IF EXISTS `xt_federal_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_federal_states` (
  `states_id` int(11) NOT NULL AUTO_INCREMENT,
  `states_code` varchar(5) NOT NULL,
  `country_iso_code_2` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`states_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_federal_states`
--

LOCK TABLES `xt_federal_states` WRITE;
/*!40000 ALTER TABLE `xt_federal_states` DISABLE KEYS */;
INSERT INTO `xt_federal_states` VALUES (1,'AL','US',1),(2,'AK','US',1),(3,'AS','US',1),(4,'AZ','US',1),(5,'AR','US',1),(6,'CA','US',1),(7,'CO','US',1),(8,'CT','US',1),(9,'DE','US',1),(10,'DC','US',1),(11,'FM','US',1),(12,'FL','US',1),(13,'GA','US',1),(14,'GU','US',1),(15,'HI','US',1),(16,'ID','US',1),(17,'IL','US',1),(18,'IN','US',1),(19,'IA','US',1),(20,'KS','US',1),(21,'KY','US',1),(22,'LA','US',1),(23,'ME','US',1),(24,'MH','US',1),(25,'MD','US',1),(26,'MA','US',1),(27,'MI','US',1),(28,'MN','US',1),(29,'MS','US',1),(30,'MO','US',1),(31,'MT','US',1),(32,'NE','US',1),(33,'NV','US',1),(34,'NH','US',1),(35,'NJ','US',1),(36,'NM','US',1),(37,'NY','US',1),(38,'NC','US',1),(39,'ND','US',1),(40,'MP','US',1),(41,'OH','US',1),(42,'OK','US',1),(43,'OR','US',1),(44,'PW','US',1),(45,'PA','US',1),(46,'PR','US',1),(47,'RI','US',1),(48,'SC','US',1),(49,'SD','US',1),(50,'TN','US',1),(51,'TX','US',1),(52,'UT','US',1),(53,'VT','US',1),(54,'VI','US',1),(55,'VA','US',1),(56,'WA','US',1),(57,'WV','US',1),(58,'WI','US',1),(59,'WY','US',1),(60,'AA','US',1),(61,'AE','US',1),(62,'AP','US',1);
/*!40000 ALTER TABLE `xt_federal_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_federal_states_description`
--

DROP TABLE IF EXISTS `xt_federal_states_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_federal_states_description` (
  `states_id` int(11) NOT NULL,
  `language_code` varchar(2) NOT NULL,
  `state_name` varchar(64) NOT NULL,
  PRIMARY KEY (`states_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_federal_states_description`
--

LOCK TABLES `xt_federal_states_description` WRITE;
/*!40000 ALTER TABLE `xt_federal_states_description` DISABLE KEYS */;
INSERT INTO `xt_federal_states_description` VALUES (1,'de','Alabama'),(2,'de','Alaska'),(3,'de','American Samoa'),(4,'de','Arizona'),(5,'de','Arkansas'),(6,'de','California'),(7,'de','Colorado'),(8,'de','Connecticut'),(9,'de','Delaware'),(10,'de','District of Columbia'),(11,'de','Federated States of Micronesia'),(12,'de','Florida'),(13,'de','Georgia'),(14,'de','Guam'),(15,'de','Hawaii'),(16,'de','Idaho'),(17,'de','Illinois'),(18,'de','Indiana'),(19,'de','Iowa'),(20,'de','Kansas'),(21,'de','Kentucky'),(22,'de','Louisiana'),(23,'de','Maine'),(24,'de','Marshall Islands'),(25,'de','Maryland'),(26,'de','Massachusetts'),(27,'de','Michigan'),(28,'de','Minnesota'),(29,'de','Mississippi'),(30,'de','Missouri'),(31,'de','Montana'),(32,'de','Nebraska'),(33,'de','Nevada'),(34,'de','New Hampshire'),(35,'de','New Jersey'),(36,'de','New Mexico'),(37,'de','New York'),(38,'de','North Carolina'),(39,'de','North Dakota'),(40,'de','Northern Mariana Islands'),(41,'de','Ohio'),(42,'de','Oklahoma'),(43,'de','Oregon'),(44,'de','Palau'),(45,'de','Pennsylvania'),(46,'de','Puerto Rico'),(47,'de','Rhode Island'),(48,'de','South Carolina'),(49,'de','South Dakota'),(50,'de','Tennessee'),(51,'de','Texas'),(52,'de','Utah'),(53,'de','Vermont'),(54,'de','Virgin Islands'),(55,'de','Virginia'),(56,'de','Washington'),(57,'de','West Virginia'),(58,'de','Wisconsin'),(59,'de','Wyoming'),(60,'de','Armed Forces Americas'),(61,'de','Armed Forces'),(62,'de','Armed Forces Pacific'),(1,'en','Alabama'),(2,'en','Alaska'),(3,'en','American Samoa'),(4,'en','Arizona'),(5,'en','Arkansas'),(6,'en','California'),(7,'en','Colorado'),(8,'en','Connecticut'),(9,'en','Delaware'),(10,'en','District of Columbia'),(11,'en','Federated States of Micronesia'),(12,'en','Florida'),(13,'en','Georgia'),(14,'en','Guam'),(15,'en','Hawaii'),(16,'en','Idaho'),(17,'en','Illinois'),(18,'en','Indiana'),(19,'en','Iowa'),(20,'en','Kansas'),(21,'en','Kentucky'),(22,'en','Louisiana'),(23,'en','Maine'),(24,'en','Marshall Islands'),(25,'en','Maryland'),(26,'en','Massachusetts'),(27,'en','Michigan'),(28,'en','Minnesota'),(29,'en','Mississippi'),(30,'en','Missouri'),(31,'en','Montana'),(32,'en','Nebraska'),(33,'en','Nevada'),(34,'en','New Hampshire'),(35,'en','New Jersey'),(36,'en','New Mexico'),(37,'en','New York'),(38,'en','North Carolina'),(39,'en','North Dakota'),(40,'en','Northern Mariana Islands'),(41,'en','Ohio'),(42,'en','Oklahoma'),(43,'en','Oregon'),(44,'en','Palau'),(45,'en','Pennsylvania'),(46,'en','Puerto Rico'),(47,'en','Rhode Island'),(48,'en','South Carolina'),(49,'en','South Dakota'),(50,'en','Tennessee'),(51,'en','Texas'),(52,'en','Utah'),(53,'en','Vermont'),(54,'en','Virgin Islands'),(55,'en','Virginia'),(56,'en','Washington'),(57,'en','West Virginia'),(58,'en','Wisconsin'),(59,'en','Wyoming'),(60,'en','Armed Forces Americas'),(61,'en','Armed Forces'),(62,'en','Armed Forces Pacific');
/*!40000 ALTER TABLE `xt_federal_states_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_feed`
--

DROP TABLE IF EXISTS `xt_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_key` varchar(32) NOT NULL,
  `feed_language_code` char(2) NOT NULL,
  `feed_store_id` int(11) NOT NULL DEFAULT '0',
  `feed_title` varchar(64) NOT NULL,
  `feed_type` int(11) NOT NULL,
  `feed_header` text,
  `feed_body` text,
  `feed_footer` text,
  `feed_mail` varchar(255) DEFAULT NULL,
  `feed_mail_flag` int(1) NOT NULL DEFAULT '0',
  `feed_mail_header` varchar(255) DEFAULT NULL,
  `feed_mail_body` text,
  `feed_ftp_flag` int(1) NOT NULL DEFAULT '0',
  `feed_ftp_server` varchar(255) DEFAULT NULL,
  `feed_ftp_user` varchar(64) DEFAULT NULL,
  `feed_ftp_password` varchar(64) DEFAULT NULL,
  `feed_ftp_dir` varchar(255) DEFAULT NULL,
  `feed_ftp_passiv` int(1) NOT NULL DEFAULT '1',
  `feed_filename` varchar(64) DEFAULT NULL,
  `feed_filetype` varchar(64) DEFAULT NULL,
  `feed_encoding` varchar(32) NOT NULL DEFAULT 'UTF-8',
  `feed_save` int(1) NOT NULL DEFAULT '0',
  `feed_export_limit` int(11) NOT NULL DEFAULT '100',
  `feed_linereturn_deactivated` tinyint(4) NOT NULL DEFAULT '0',
  `feed_p_currency_code` char(32) NOT NULL DEFAULT '0',
  `feed_p_customers_status` int(11) NOT NULL DEFAULT '0',
  `feed_p_campaign` varchar(64) DEFAULT NULL,
  `feed_p_price_min` text,
  `feed_p_price_max` text,
  `feed_p_quantity_min` text,
  `feed_p_quantity_max` text,
  `feed_p_model_min` varchar(255) DEFAULT NULL,
  `feed_p_model_max` varchar(255) DEFAULT NULL,
  `feed_p_deactivated_status` tinyint(4) NOT NULL DEFAULT '0',
  `feed_categories` text,
  `feed_manufacturers` text,
  `feed_o_customers_status` int(11) NOT NULL DEFAULT '0',
  `feed_o_orders_status` int(11) NOT NULL DEFAULT '0',
  `feed_date_range_orders` int(11) NOT NULL DEFAULT '0',
  `feed_date_from_orders` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `feed_date_to_orders` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `feed_post_flag` int(11) NOT NULL DEFAULT '0',
  `feed_post_server` varchar(255) DEFAULT NULL,
  `feed_post_field` varchar(255) DEFAULT NULL,
  `feed_pw_flag` int(1) NOT NULL DEFAULT '0',
  `feed_pw_user` varchar(32) DEFAULT NULL,
  `feed_pw_pass` varchar(32) DEFAULT NULL,
  `feed_p_slave` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_feed`
--

LOCK TABLES `xt_feed` WRITE;
/*!40000 ALTER TABLE `xt_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_hermes_collect`
--

DROP TABLE IF EXISTS `xt_hermes_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_hermes_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collect_date` datetime NOT NULL,
  `collect_request_no` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_hermes_collect`
--

LOCK TABLES `xt_hermes_collect` WRITE;
/*!40000 ALTER TABLE `xt_hermes_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_hermes_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_hermes_order`
--

DROP TABLE IF EXISTS `xt_hermes_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_hermes_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hermes_order_no` varchar(256) COLLATE utf8_bin NOT NULL,
  `xt_orders_id` int(11) NOT NULL,
  `hermes_shipping_id` varchar(256) COLLATE utf8_bin DEFAULT '',
  `parcel_class` varchar(256) COLLATE utf8_bin DEFAULT '',
  `hermes_status` int(11) DEFAULT '1',
  `hermes_amount_cash_on_delivery` int(11) DEFAULT '0',
  `hermes_bulk_good` int(1) DEFAULT '0',
  `collect_date` datetime DEFAULT NULL,
  `hermes_ts_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_hermes_order`
--

LOCK TABLES `xt_hermes_order` WRITE;
/*!40000 ALTER TABLE `xt_hermes_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_hermes_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_hermes_settings`
--

DROP TABLE IF EXISTS `xt_hermes_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_hermes_settings` (
  `hermes_user` varchar(256) COLLATE utf8_bin NOT NULL,
  `hermes_pwd` varchar(256) COLLATE utf8_bin NOT NULL,
  `hermes_sandbox` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_hermes_settings`
--

LOCK TABLES `xt_hermes_settings` WRITE;
/*!40000 ALTER TABLE `xt_hermes_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_hermes_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_image_type`
--

DROP TABLE IF EXISTS `xt_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_image_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder` varchar(32) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `watermark` enum('true','false') NOT NULL DEFAULT 'true',
  `process` enum('true','false') NOT NULL DEFAULT 'true',
  `class` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_image_type`
--

LOCK TABLES `xt_image_type` WRITE;
/*!40000 ALTER TABLE `xt_image_type` DISABLE KEYS */;
INSERT INTO `xt_image_type` VALUES (11,'thumb',153,153,'false','true','default'),(12,'info',350,350,'false','true','default'),(13,'popup',450,500,'false','true','default'),(14,'icon',20,20,'false','true','default'),(15,'sidebar',138,138,'false','true','default'),(16,'smallproduct',100,100,'false','true','default'),(17,'manufacturer/thumb',120,80,'false','true','manufacturer'),(18,'manufacturer/info',200,180,'false','true','manufacturer'),(19,'manufacturer/popup',450,500,'false','true','manufacturer'),(20,'manufacturer/icon',20,20,'false','true','manufacturer'),(21,'category/thumb',120,80,'false','true','category'),(22,'category/info',200,180,'false','true','category'),(23,'category/popup',450,500,'false','true','category'),(24,'category/icon',20,20,'false','true','category'),(25,'mobile/thumb',80,80,'false','true','default'),(26,'mobile/info',200,200,'false','true','default'),(27,'mobile/popup',680,400,'false','true','default'),(28,'mobile/pslider',200,200,'false','true','default'),(29,'mobile/islider',270,180,'false','true','default');
/*!40000 ALTER TABLE `xt_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_language_content`
--

DROP TABLE IF EXISTS `xt_language_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_language_content` (
  `language_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `translated` int(1) NOT NULL DEFAULT '1',
  `language_code` char(2) DEFAULT NULL,
  `language_key` varchar(255) DEFAULT NULL,
  `language_value` text,
  `class` varchar(32) NOT NULL DEFAULT 'store',
  `plugin_key` varchar(32) DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`language_content_id`),
  UNIQUE KEY `language_code` (`language_code`,`language_key`,`class`),
  KEY `language_code_2` (`language_code`,`class`)
) ENGINE=MyISAM AUTO_INCREMENT=4578 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_language_content`
--

LOCK TABLES `xt_language_content` WRITE;
/*!40000 ALTER TABLE `xt_language_content` DISABLE KEYS */;
INSERT INTO `xt_language_content` VALUES (1,1,'de','BUTTON_BROWSE_FILES','Datein durchsuchen','admin','',0),(2,1,'de','BUTTON_BROWSE_IMAGES','Bilder durchsuchen','admin','',0),(3,1,'de','BUTTON_CANCEL','Abbrechen','admin','',0),(4,1,'de','BUTTON_CLOSE_WINDOW','Schliessen','admin','',0),(5,1,'de','BUTTON_COPY','Kopieren','admin','',0),(6,1,'de','BUTTON_DELETE','Löschen','admin','',0),(7,1,'de','BUTTON_EDIT','Bearbeiten','admin','',0),(8,1,'de','BUTTON_EDIT_IMAGES','Bilder bearbeiten','admin','',0),(9,1,'de','BUTTON_LOGIN','Anmelden','admin','',0),(10,1,'de','BUTTON_LOGOFF','Abmelden','admin','',0),(11,1,'de','BUTTON_NEW','Neu','admin','',0),(12,1,'de','BUTTON_POPUP','Suchen','admin','',0),(13,1,'de','BUTTON_PROCESS_CURRENT_IMAGES','Starte Imageprocessing','admin','',0),(14,1,'de','BUTTON_REENABLE_DOWNLOAD','Downloadversuche zurücksetzen','admin','',0),(15,1,'de','BUTTON_RESET','Neu laden','admin','',0),(16,1,'de','BUTTON_SAVE','Speichern','admin','',0),(17,1,'de','BUTTON_SELECT','Auswahl übernehmen','admin','',0),(18,1,'de','BUTTON_SEND_ORDER_MAIL','Bestellbestätigungsmail senden','admin','',0),(19,1,'de','BUTTON_START_SEO','Starte Generierung','admin','',0),(20,1,'de','BUTTON_STATUS_FALSE','Auswahl deaktivieren','admin','',0),(21,1,'de','BUTTON_STATUS_TRUE','Auswahl aktivieren','admin','',0),(22,1,'de','BUTTON_UPDATE','Übernehmen','admin','',0),(23,1,'de','BUTTON_UPLOAD_FILES','Datein hochladen','admin','',0),(24,1,'de','BUTTON_UPLOAD_IMAGES','Bilder hochladen','admin','',0),(25,1,'de','DESC_LANGUAGE_ADMIN_DESC','Diese Sprachtexte sind für den Adminbereich','admin','',0),(26,1,'de','DESC_LANGUAGE_STORE_DESC','Diese Sprachtexte sind für den Shopbereich','admin','',0),(27,1,'de','ERROR_BLANK','Keine Daten','admin','',0),(28,1,'de','ERROR_HEADING_RIGHT_CLICK_FORBID','Fehler','admin','',0),(29,1,'de','ERROR_LOGIN_COUNT','Sie haben einen falschen Benutzernamen oder ein falsches Kennwort eingegeben. Gehen Sie bitte die richtigen Daten ein. Haben Sie vielleicht Ihr Kennwort vergessen?<br /><br />  Sie haben bisher %s mal versucht, sich anzumelden. Nach dem 5. fehlerhaften Versuch ist eine Anmeldung für die nächsten %s Minuten nicht mehr möglich.','admin','',0),(30,1,'de','ERROR_LOGIN_LOCKED','Die maximale Anzahl an Anmeldeversuchen wurde verbraucht. Der Account wurde für %s minuten gesperrt, bitte versuchen Sie es nach Ablauf dieser Zeit erneut.','admin','',0),(31,1,'de','ERROR_MAX','Eingabe für dieses Feld zu lang','admin','',0),(32,1,'de','ERROR_MIN','Eingabe für dieses Feld zu kurz','admin','',0),(33,1,'de','ERROR_MISSING_PLG_LIC_FILE','Dieses Plugin ist kostenpflichtig und benötigt eine Lizenzdatei','admin','',0),(34,1,'de','ERROR_TEXT_RIGHT_CLICK_FORBID','Rechts Klick gesperrt','admin','',0),(35,1,'de','FEED_LANGUAGE_CODE','Sprache','admin','',0),(36,1,'de','FEED_MANUFACTURER','Hersteller','admin','',0),(37,1,'de','FEED_P_CUSTOMERS_STATUS','Kundengruppe','admin','',0),(38,1,'de','HEADING_ACL_AREA','Admin Rechte','admin','',0),(39,1,'de','HEADING_ACL_GROUPS','Admin Gruppen','admin','',0),(40,1,'de','HEADING_ACL_GROUP_TO_PERMISSION','Gruppenrechte','admin','',0),(41,1,'de','HEADING_ACL_USER','Admin Benutzer','admin','',0),(42,1,'de','HEADING_ADDRESS','Kundenadressen','admin','',0),(43,1,'de','HEADING_BASE_PRICE','Verpackungseinheit','admin','',0),(44,1,'de','HEADING_BRUTO_FORCE_PROTECTION','fehlgeschlagene Logins','admin','',0),(45,1,'de','HEADING_CALLBACK','IPN Log','admin','',0),(46,1,'de','HEADING_CAMPAIGN','Kampagnen','admin','',0),(47,1,'de','HEADING_CATEGORY','Kategorie','admin','',0),(48,1,'de','HEADING_CONFIGURATION','Konfiguration','admin','',0),(49,1,'de','HEADING_CONTENT','Content','admin','',0),(50,1,'de','HEADING_CONTENT_BLOCKS','Content Blöcke','admin','',0),(51,1,'de','HEADING_COUNTRIES','Länder','admin','',0),(52,1,'de','HEADING_CROSS_SELLING_PRODUCTS','Cross Selling Artikel','admin','',0),(53,1,'de','HEADING_CURRENCY','Währung','admin','',0),(54,1,'de','HEADING_CUSTOMER','Kunden','admin','',0),(55,1,'de','HEADING_CUSTOMERS_STATUS','Kundengruppen','admin','',0),(56,1,'de','HEADING_EMAIL_MANAGER','E-Mail Manager','admin','',0),(57,1,'de','HEADING_EXPORT','Export-Manager','admin','',0),(58,1,'de','HEADING_IMAGETYPES','Bildgrößen','admin','',0),(59,1,'de','HEADING_LANGUAGE','Sprachen','admin','',0),(60,1,'de','HEADING_LANGUAGE_CONTENT','Sprachpakete','admin','',0),(61,1,'de','HEADING_MANUFACTURER','Hersteller','admin','',0),(62,1,'de','HEADING_MEDIAFILEMANAGER','Datei Verwaltung','admin','',0),(63,1,'de','HEADING_MEDIAFILETYPES','Dateitypen','admin','',0),(64,1,'de','HEADING_ORDER','Bestellungen','admin','',0),(65,1,'de','HEADING_ORDER_STATUS','Bestellstatus','admin','',0),(66,1,'de','HEADING_PAYMENT','Zahlung','admin','',0),(67,1,'de','HEADING_PAYMENT_PRICE','Zahlungsart Gebühren','admin','',0),(68,1,'de','HEADING_PLUGIN_HOOKPOINTS','Hookpoints','admin','',0),(69,1,'de','HEADING_PLUGIN_INSTALLED','Installierte Plugins','admin','',0),(70,1,'de','HEADING_PLUGIN_UNINSTALLED','deinstallierte Plugins','admin','',0),(71,1,'de','HEADING_PRODUCT','Artikel','admin','',0),(72,1,'de','HEADING_PRODUCT_PRICE','Kundengruppen / Staffelpreise','admin','',0),(73,1,'de','HEADING_PRODUCT_SERIALS','Seriennummern','admin','',0),(74,1,'de','HEADING_PRODUCT_SP_PRICE','Sonderpreise','admin','',0),(75,1,'de','HEADING_PRODUCT_TO_CAT','Kategoriezuweisung','admin','',0),(76,1,'de','HEADING_SHIPPING','Versand','admin','',0),(77,1,'de','HEADING_SHIPPING_PRICE','Versandkosten','admin','',0),(78,1,'de','HEADING_SHIPPING_STATUS','Lieferzeit','admin','',0),(79,1,'de','HEADING_STOCK_RULE','Lagerampel','admin','',0),(80,1,'de','HEADING_TAX','Umsatzsteuer','admin','',0),(81,1,'de','HEADING_TAX_CLASS','Steuerklasse','admin','',0),(82,1,'de','HEADING_XT_REVIEWS','Bewertungen','admin','',0),(83,1,'de','HEADING_ZONE','Steuerzone','admin','',0),(84,1,'de','TABTEXT_ACL_AREA','Admin Rechte','admin','',0),(85,1,'de','TABTEXT_ACL_GROUPS','Admin Gruppen','admin','',0),(86,1,'de','TABTEXT_ACL_USER','Admin Benutzer','admin','',0),(87,1,'de','TABTEXT_ADMIN_PERM','Adminrechte','admin','',0),(88,1,'de','TABTEXT_CATEGORY','Kategorien','admin','',0),(89,1,'de','TABTEXT_CONFIG','Configuration','admin','',0),(90,1,'de','TABTEXT_CONFIGURATION','Konfiguration','admin','',0),(91,1,'de','TABTEXT_CONFIG_STORE','Shop Konfiguration','admin','',0),(92,1,'de','TABTEXT_CONTENT','Content','admin','',0),(93,1,'de','TABTEXT_CONTENTROOT','Root','admin','',0),(94,1,'de','TABTEXT_CONTENT_BLOCKS','Content Blöcke','admin','',0),(95,1,'de','TABTEXT_CONTENT_MANAGER','Contentmanager','admin','',0),(96,1,'de','TABTEXT_COUNTRIES','Länder','admin','',0),(97,1,'de','TABTEXT_CURRENCY','Währung','admin','',0),(98,1,'de','TABTEXT_CUSTOMER','Kunden','admin','',0),(99,1,'de','TABTEXT_CUSTOMERS_STATUS','Kundengruppe','admin','',0),(100,1,'de','TABTEXT_DASHBOARD','Dashboard','admin','',0),(101,1,'de','TABTEXT_EMAIL_MANAGER','Emailmanager','admin','',0),(102,1,'de','TABTEXT_EXPORT','Export','admin','',0),(103,1,'de','TABTEXT_LANGUAGE','Sprache','admin','',0),(104,1,'de','TABTEXT_LANGUAGE_CONTENT','Sprachpakete','admin','',0),(105,1,'de','TABTEXT_LOCALIZING','Lokalisierung','admin','',0),(106,1,'de','TABTEXT_MANUFACTURER','Hersteller','admin','',0),(107,1,'de','TABTEXT_MEDIA_MANAGER','Mediamanager','admin','',0),(108,1,'de','TABTEXT_ORDER','Bestellungen','admin','',0),(109,1,'de','TABTEXT_ORDERTAB','Bestellungen','admin','',0),(110,1,'de','TABTEXT_PAYMENT','Zahlungsarten','admin','',0),(111,1,'de','TABTEXT_PLUGIN','Plugin','admin','',0),(112,1,'de','TABTEXT_PLUGIN_INSTALLED','installierte Plugins','admin','',0),(113,1,'de','TABTEXT_PLUGIN_UNINSTALLED','deinstallierte Plugins','admin','',0),(114,1,'de','TABTEXT_PRODUCT','Artikel','admin','',0),(115,1,'de','TABTEXT_SHIPPING','Versandarten','admin','',0),(116,1,'de','TABTEXT_SHOP','Shop','admin','',0),(117,1,'de','TABTEXT_STORES','Shops','admin','',0),(118,1,'de','TABTEXT_SYSTEM_STATUS','Systemstatus','admin','',0),(119,1,'de','TABTEXT_TAX','Umsatzsteuer','admin','',0),(120,1,'de','TABTEXT_TAX_CLASS','Steuerklasse','admin','',0),(121,1,'de','TABTEXT_XT_REVIEWS','Bewertungen','admin','',0),(122,1,'de','TEXT_ACL_AREA','Admin Rechte','admin','',0),(123,1,'de','TEXT_ACL_DELETE','Löschen','admin','',0),(124,1,'de','TEXT_ACL_EDIT','Bearbeiten','admin','',0),(125,1,'de','TEXT_ACL_GROUPS','Admin Gruppen','admin','',0),(126,1,'de','TEXT_ACL_GROUP_PERMISSIONS','Admin Rechte Berechtigungen','admin','',0),(127,1,'de','TEXT_ACL_GROUP_TO_PERMISSION','Zugriffsrecht','admin','',0),(128,1,'de','TEXT_ACL_NEW','Neu','admin','',0),(129,1,'de','TEXT_ACL_READ','Lesen','admin','',0),(130,1,'de','TEXT_ACL_USER','Admin Benutzer','admin','',0),(131,1,'de','TEXT_ACTION','Aktion','admin','',0),(132,1,'de','TEXT_ACTIVE','Review status','admin','',0),(133,1,'de','TEXT_ACTIVE_STATUS','Status','admin','',0),(134,1,'de','TEXT_ADDED_PAYMENT MODULE','Zahlungsmodul angelegt:','admin','',0),(135,1,'de','TEXT_ADDED_PAYMENT_CONFIG_FOR_STORE','Zahlungsmoduloption angelegt für Shop','admin','',0),(136,1,'de','TEXT_ADDED_PAYMENT_MODULE','Zahlungsmodul hinzugefügt:','admin','',0),(137,1,'de','TEXT_ADDED_PLUGIN_CONFIG_FOR_STORE','Pluginoption angelegt für Shop','admin','',0),(138,1,'de','TEXT_ADDRESS','Kundenadressen','admin','',0),(139,1,'de','TEXT_ADDRESS_BOOK_ID','Adress ID','admin','',0),(140,1,'de','TEXT_ADDRESS_CLASS','Adress Typ','admin','',0),(141,1,'de','TEXT_ADD_CUSTOM_LINK','Individueller Link','admin','',0),(142,1,'de','TEXT_ADMIN','Administrator','admin','',0),(143,1,'de','TEXT_ADMIN_ACTON_STATUS','Status','admin','',0),(144,1,'de','TEXT_ADMIN_DROPDOWN_SELECT','- Bitte wählen -','admin','',0),(145,1,'de','TEXT_ADMIN_NEWS','News','admin','',0),(146,1,'de','TEXT_ADMIN_PAID_ONLY','Lizenzeinschränkung','admin','',0),(147,1,'de','TEXT_ADMIN_PAID_ONLY_INFO','Diese Funktion steht ab der kostenpflichtigen Version xt:Commerce Professional+ zur Verfügung.<br />Das Upgrade auf diese Version können Sie in unserem Marketplace erwerben.<br /><br/>Sollten Sie Fragen zum Upgrade haben, steht Ihnen unser Helpdesk-Team unter helpdesk@xt-commerce.com zur Verfügung.<br/><br/>','admin','',0),(148,1,'de','TEXT_ADMIN_PERM','Adminrechte','admin','',0),(149,1,'de','TEXT_ADMIN_SSL','Admin SSL','admin','',0),(150,1,'de','TEXT_ADODBHEALTH','Status','admin','',0),(151,1,'de','TEXT_ADODBLIVE','Live-Performance','admin','',0),(152,1,'de','TEXT_ADODBPERFORMANCE','Datenbankmonitor','admin','',0),(153,1,'de','TEXT_ADODBQUERY','Query','admin','',0),(154,1,'de','TEXT_ADVANCED_FILTER','Erweiterte Filter','admin','',0),(155,1,'de','TEXT_ALBUMS','Alben','admin','',0),(156,1,'de','TEXT_ALERT','Hinweis','admin','',0),(157,1,'de','TEXT_ALERT_NOT_A_CATEGORY','Dieses ist kein zulässiger Link','admin','',0),(158,1,'de','TEXT_ALERT_NOT_A_CUSTOM_LINK','Dieses ist kein zulässiger Link','admin','',0),(159,1,'de','TEXT_ALL','Alle','admin','',0),(160,1,'de','TEXT_ALLOW_EDIT','Eingabefeld Admin','admin','',0),(161,1,'de','TEXT_ALL_PRODUCTS','Alle Produkte','admin','',0),(162,1,'de','TEXT_AMOUNT','Betrag','admin','',0),(163,1,'de','TEXT_AMOUNT_TOTAL','Gesamt','admin','',0),(164,1,'de','TEXT_AREA_DESCRIPTION','Admin Rechte Beschreibung','admin','',0),(165,1,'de','TEXT_AREA_ID','Admin Rechte ID','admin','',0),(166,1,'de','TEXT_AREA_NAME','Admin Rechte Name','admin','',0),(167,1,'de','TEXT_ARTICLE','Produkte','admin','',0),(168,1,'de','TEXT_ASC','Aufsteigend','admin','',0),(169,1,'de','TEXT_ASK_DELETE_CATEGORY','Kategorie incl aller Unterkategorien wirklich löschen ?','admin','',0),(170,1,'de','TEXT_ASK_DELETE_CUSTOM_LINK','Wollen Sie wirklich den Link löschen?','admin','',0),(171,1,'de','TEXT_ASK_DELETE_MEDIA_CATEGORY','Kategorie löschen ?','admin','',0),(172,1,'de','TEXT_ASK_DELETE_SHOP','Mandant wirklich löschen ? Kunden und Bestellungen dieses Mandanten werden mit gelöscht !!!','admin','',0),(173,1,'de','TEXT_ASK_DISABLE_CATEGORIES_SHOP','Es werden ALLE Kategorien für diesen Mandanten DEAKTIVIERT!','admin','',0),(174,1,'de','TEXT_ASK_DISABLE_MANUFACTURERS_SHOP','Es werden ALLE Hersteller für diesen Mandanten DEAKTIVIERT!','admin','',0),(175,1,'de','TEXT_ASK_DISABLE_PRODUCTS_SHOP','Es werden ALLE Produkte für diesen Mandanten DEAKTIVIERT!','admin','',0),(176,1,'de','TEXT_ASK_ENABLE_CATEGORIES_SHOP','Es werden ALLE Kategorien für diesen Mandanten AKTIVIERT!','admin','',0),(177,1,'de','TEXT_ASK_ENABLE_MANUFACTURERS_SHOP','Es werden ALLE Hersteller für diesen Mandanten AKTIVIERT!','admin','',0),(178,1,'de','TEXT_ASK_ENABLE_PRODUCTS_SHOP','Es werden ALLE Produkte für diesen Mandanten AKTIVIERT!','admin','',0),(179,1,'de','TEXT_ATTACHED_FILES','Dateianhänge','admin','',0),(180,1,'de','TEXT_ATTEMPTS_LEFT','Übrige Versuche','admin','',0),(181,1,'de','TEXT_BASE_PRICE','Grundeinheit / Lagereinheit','admin','',0),(182,1,'de','TEXT_BILLING_ADDRESS','Rechnungsadresse','admin','',0),(183,1,'de','TEXT_BILLING_FIRSTNAME','Vorname','admin','',0),(184,1,'de','TEXT_BILLING_LASTNAME','Nachname','admin','',0),(185,1,'de','TEXT_BILLING_MOBILE_PHONE','Mobiltelefon','admin','',0),(186,1,'de','TEXT_BLACKLIST','Blacklist','admin','',0),(187,1,'de','TEXT_BLACKLIST_PERMISSIONS','(Auswählen zum Sperren)','admin','',0),(188,1,'de','TEXT_BLACKLIST_PERMISSIONS_INFO','Ihr Rechte-System ist eingestellt auf \"Blacklist\"Wenn Sie eine Berechtigung auswählen wird dieser Datensatz für die Gruppe deaktiviert!','admin','',0),(189,1,'de','TEXT_BLOCKS','Anzeige','admin','',0),(190,1,'de','TEXT_BLOCK_ID','Block ID','admin','',0),(191,1,'de','TEXT_BLOCK_PERMISSION_INFO','Hinweis','admin','',0),(192,1,'de','TEXT_BLOCK_PROTECTED','Geschützter Block','admin','',0),(193,1,'de','TEXT_BLOCK_STATUS','Block Status','admin','',0),(194,1,'de','TEXT_BLOCK_TAG','Block Bezeichnung','admin','',0),(195,1,'de','TEXT_BRUTO_FORCE_PROTECTION','fehlgeschlagene Logins','admin','',0),(196,1,'de','TEXT_CALCULATE_STATISTIC','Berechnung in Statistik','admin','',0),(197,1,'de','TEXT_CALLBACK','IPN Log','admin','',0),(198,1,'de','TEXT_CAMPAIGN','Kampagnen','admin','',0),(199,1,'de','TEXT_CAMPAIGN_ID','Kampagne','admin','',0),(200,1,'de','TEXT_CAMPAIGN_SELECT','Kampagne','admin','',0),(201,1,'de','TEXT_CARTS_COUNT','Warenkörbe Anzahl','admin','',0),(202,1,'de','TEXT_CATEGORIES_DESCRIPTION','Beschreibung','admin','',0),(203,1,'de','TEXT_CATEGORIES_DESCRIPTION_BOTTOM','Beschreibung 2','admin','',0),(204,1,'de','TEXT_CATEGORIES_HEADING_TITLE','Überschrift','admin','',0),(205,1,'de','TEXT_CATEGORIES_ID','Kategorie ID','admin','',0),(206,1,'de','TEXT_CATEGORIES_IMAGE','Bild','admin','',0),(207,1,'de','TEXT_CATEGORIES_META_DESCRIPTION','Meta Beschreibung','admin','',0),(208,1,'de','TEXT_CATEGORIES_META_KEYWORDS','Meta Keywords','admin','',0),(209,1,'de','TEXT_CATEGORIES_META_TITLE','Meta Titel','admin','',0),(210,1,'de','TEXT_CATEGORIES_NAME','Name','admin','',0),(211,1,'de','TEXT_CATEGORIES_SELECTION','Kategorieauswahl','admin','',0),(212,1,'de','TEXT_CATEGORIES_STATUS','Status','admin','',0),(213,1,'de','TEXT_CATEGORIES_TEMPLATE','Kategorie Template','admin','',0),(214,1,'de','TEXT_CATEGORY','Kategorie','admin','',0),(215,1,'de','TEXT_CATEGORY_CUSTOM_LINK_CATEGORY','Link zu Kategorie','admin','',0),(216,1,'de','TEXT_CATEGORY_CUSTOM_LINK_CONTENT','Link zu Inhalts-Seite','admin','',0),(217,1,'de','TEXT_CATEGORY_CUSTOM_LINK_CUSTOM_LINK','Individueller Link','admin','',0),(218,1,'de','TEXT_CATEGORY_CUSTOM_LINK_ID','Link ID','admin','',0),(219,1,'de','TEXT_CATEGORY_CUSTOM_LINK_PLUGIN_PAGE','Link auf Plugin-Seite','admin','',0),(220,1,'de','TEXT_CATEGORY_CUSTOM_LINK_PRODUCT','Link zu Produkt','admin','',0),(221,1,'de','TEXT_CATEGORY_CUSTOM_LINK_TYPE','Link Typ','admin','',0),(222,1,'de','TEXT_CATEGORY_CUSTOM_LINK_TYPE_PERVIEW','Link Typ','admin','',0),(223,1,'de','TEXT_CATEGORY_MORE_DETAILS','Mehr Details','admin','',0),(224,1,'de','TEXT_CATEGORY_WINDOW','Kategorie','admin','',0),(225,1,'de','TEXT_CAT_IMAGE','Kategorie Bild','admin','',0),(226,1,'de','TEXT_CAT_STORE1','Main store','admin','',0),(227,1,'de','TEXT_CAT_STORE2','Test 2','admin','',0),(228,1,'de','TEXT_CAT_STORE3','test','admin','',0),(229,1,'de','TEXT_CAT_STORE4','test 3','admin','',0),(230,1,'de','TEXT_CAT_STORE5','test 4','admin','',0),(231,1,'de','TEXT_CE_VERSION_NOTICE','xt:Commerce Community Edition 4 (CE).','admin','',0),(232,1,'de','TEXT_CE_VERSION_NOTICE_MORE','mehr info','admin','',0),(233,1,'de','TEXT_CHANGE_STATUS_FALSE','Auswahl deaktivieren','admin','',0),(234,1,'de','TEXT_CHANGE_STATUS_TRUE','Auswahl aktivieren','admin','',0),(235,1,'de','TEXT_CHANGE_TRIGGER','Von','admin','',0),(236,1,'de','TEXT_CHARACTER_COUNTER','Zeichen','admin','',0),(237,1,'de','TEXT_CHECKALLITEMS','Alles','admin','',0),(238,1,'de','TEXT_CHECKFORUPDATES','Nach Update suchen','admin','',0),(239,1,'de','TEXT_CHECK_TYPE','type','admin','',0),(240,1,'de','TEXT_CHOOSE_IMAGE','Bilder wählen','admin','',0),(241,1,'de','TEXT_CLASS','Klasse','admin','',0),(242,1,'de','TEXT_CLOCK','Uhrzeit','admin','',0),(243,1,'de','TEXT_CODE','Code','admin','',0),(244,1,'de','TEXT_CODE_ADDED_FOR_HOOKPOINT','Code angelegt für Hookpoint:','admin','',0),(245,1,'de','TEXT_CODE_STATUS','Hook-Code Status','admin','',0),(246,1,'de','TEXT_COMMENTS','Kommentare','admin','',0),(247,1,'de','TEXT_COMMENTS_SEND','Notiz mitsenden','admin','',0),(248,1,'de','TEXT_COMPANY','Firma','admin','',0),(249,1,'de','TEXT_CONFIG','Einstellungen','admin','',0),(250,1,'de','TEXT_CONFIGURATION','Konfiguration','admin','',0),(251,1,'de','TEXT_CONFIGURATION_KEY','Konfigurationsvariable:','admin','',0),(252,1,'de','TEXT_CONFIG_INFO','&nbsp;','admin','',0),(253,1,'de','TEXT_CONFIG_PLUGIN','Plugins','admin','',0),(254,1,'de','TEXT_CONFIG_SEO','SEO &amp; Shop Optimierung','admin','',0),(255,1,'de','TEXT_CONFIG_STORE','Shop-Einstellungen','admin','',0),(256,1,'de','TEXT_CONFIRM','Bestätigen','admin','',0),(257,1,'de','TEXT_CONF_ADMIN_OPTIONS_NAV','Admin Optionen','admin','',0),(258,1,'de','TEXT_CONF_DEBUG','Dev. Einstellungen','admin','',0),(259,1,'de','TEXT_CONF_IMAGES','Datei Verwaltung','admin','',0),(260,1,'de','TEXT_CONF_MAIL','EMail Einstellungen','admin','',0),(261,1,'de','TEXT_CONF_OTHER','Sonstiges','admin','',0),(262,1,'de','TEXT_CONF_PERFORMANCE','Performance','admin','',0),(263,1,'de','TEXT_CONF_PERMISSIONS','Rechte','admin','',0),(264,1,'de','TEXT_CONF_SEO','Suchmaschinen','admin','',0),(265,1,'de','TEXT_CONF_STOCK','Lager','admin','',0),(266,1,'de','TEXT_CONF_TEMPLATES_NAV','Template','admin','',0),(267,1,'de','TEXT_CONTENT','Content','admin','',0),(268,1,'de','TEXT_CONTENTROOT','Inhalte','admin','',0),(269,1,'de','TEXT_CONTENT_BLOCKS','Content Blöcke','admin','',0),(270,1,'de','TEXT_CONTENT_BODY','Text','admin','',0),(271,1,'de','TEXT_CONTENT_BODY_SHORT','Kurztext','admin','',0),(272,1,'de','TEXT_CONTENT_FORM','Content Formular','admin','',0),(273,1,'de','TEXT_CONTENT_HEADING','Content Name','admin','',0),(274,1,'de','TEXT_CONTENT_HOOK','Content Position','admin','',0),(275,1,'de','TEXT_CONTENT_ID','Content ID','admin','',0),(276,1,'de','TEXT_CONTENT_IMAGE','Bild','admin','',0),(277,1,'de','TEXT_CONTENT_LANGUAGE','Inhalts-Sprache','admin','',0),(278,1,'de','TEXT_CONTENT_MANAGER','Contentmanager','admin','',0),(279,1,'de','TEXT_CONTENT_META_DESCRIPTION','Meta Beschreibung','admin','',0),(280,1,'de','TEXT_CONTENT_META_KEYWORDS','Meta Keywords','admin','',0),(281,1,'de','TEXT_CONTENT_META_TITLE','Meta Titel','admin','',0),(282,1,'de','TEXT_CONTENT_PARENT','Übergeordneter Content','admin','',0),(283,1,'de','TEXT_CONTENT_SORT','Sortierung','admin','',0),(284,1,'de','TEXT_CONTENT_STATUS','Status','admin','',0),(285,1,'de','TEXT_CONTENT_TITLE','Content Titel','admin','',0),(286,1,'de','TEXT_CONTENT_TITLE_STORE1','Content Titel','admin','',0),(287,1,'de','TEXT_CONTENT_TITLE_STORE2','Content Titel','admin','',0),(288,1,'de','TEXT_CONTENT_TITLE_STORE3','Content Titel','admin','',0),(289,1,'de','TEXT_CONTENT_TITLE_STORE4','Content Titel','admin','',0),(290,1,'de','TEXT_CONTENT_TITLE_STORE5','Content Titel','admin','',0),(291,1,'de','TEXT_CONTENT_WINDOW','Content','admin','',0),(292,1,'de','TEXT_COPY','kopieren','admin','',0),(293,1,'de','TEXT_COUNT','Anzahl','admin','',0),(294,1,'de','TEXT_COUNTRIES','Länder','admin','',0),(295,1,'de','TEXT_COUNTRIES_ISO_CODE_2','ISO Code 2','admin','',0),(296,1,'de','TEXT_COUNTRIES_ISO_CODE_3','ISO Code 3','admin','',0),(297,1,'de','TEXT_COUNTRIES_MORE_DETAILS','Mehr Details','admin','',0),(298,1,'de','TEXT_COUNTRIES_NAME','Länder Name','admin','',0),(299,1,'de','TEXT_COUNTRY_ISO_CODE_2','Land Code','admin','',0),(300,1,'de','TEXT_CREATED','Zeitstempel','admin','',0),(301,1,'de','TEXT_CRON_ACTION','Cronjob','admin','',0),(302,1,'de','TEXT_CRON_ID','Cronjob ID','admin','',0),(303,1,'de','TEXT_CRON_LOG','Cronjob Log','admin','',0),(304,1,'de','TEXT_CRON_NOTE','Notiz','admin','',0),(305,1,'de','TEXT_CRON_PARAMETER','Cronjob Parameter','admin','',0),(306,1,'de','TEXT_CRON_TYPE','Cronjob Typ','admin','',0),(307,1,'de','TEXT_CRON_VALUE','Wert (für Typ)','admin','',0),(308,1,'de','TEXT_CROSS_SELL_POPUP','Cross Selling','admin','',0),(309,1,'de','TEXT_CSTATUS_ID','Kundengruppe','admin','',0),(310,1,'de','TEXT_CURRENCIES_ID','Währungs ID','admin','',0),(311,1,'de','TEXT_CURRENCY','Währungen','admin','',0),(312,1,'de','TEXT_CURRENCY_SELECT','Währung','admin','',0),(313,1,'de','TEXT_CUSTOMER','Kunden','admin','',0),(314,1,'de','TEXT_CUSTOMERS','Kunden','admin','',0),(315,1,'de','TEXT_CUSTOMERS_ADRESS_DATA','Kundenadressen','admin','',0),(316,1,'de','TEXT_CUSTOMERS_CID','Kundennummer','admin','',0),(317,1,'de','TEXT_CUSTOMERS_CITY','Stadt','admin','',0),(318,1,'de','TEXT_CUSTOMERS_COMPANY','Firma','admin','',0),(319,1,'de','TEXT_CUSTOMERS_COMPANY_2','Firma Zeile 2','admin','',0),(320,1,'de','TEXT_CUSTOMERS_COMPANY_3','Firma Zeile 3','admin','',0),(321,1,'de','TEXT_CUSTOMERS_COUNT','Anzahl Kunden','admin','',0),(322,1,'de','TEXT_CUSTOMERS_COUNTRY_CODE','Land','admin','',0),(323,1,'de','TEXT_CUSTOMERS_DEFAULT_CURRENCY','Währung','admin','',0),(324,1,'de','TEXT_CUSTOMERS_DEFAULT_LANGUAGE','Sprache','admin','',0),(325,1,'de','TEXT_CUSTOMERS_DOB','Geburtsdatum','admin','',0),(326,1,'de','TEXT_CUSTOMERS_EMAIL_ADDRESS','E-Mail Adresse','admin','',0),(327,1,'de','TEXT_CUSTOMERS_FAX','Fax','admin','',0),(328,1,'de','TEXT_CUSTOMERS_FEDERAL_STATE_CODE','Bundesländer','admin','',0),(329,1,'de','TEXT_CUSTOMERS_FIRSTNAME','Vorname','admin','',0),(330,1,'de','TEXT_CUSTOMERS_FSK18','FSK 18','admin','',0),(331,1,'de','TEXT_CUSTOMERS_FSK18_DISPLAY','FSK 18 Anzeige','admin','',0),(332,1,'de','TEXT_CUSTOMERS_GENDER','Anrede','admin','',0),(333,1,'de','TEXT_CUSTOMERS_ID','Kunden ID','admin','',0),(334,1,'de','TEXT_CUSTOMERS_LASTNAME','Nachname','admin','',0),(335,1,'de','TEXT_CUSTOMERS_MOBILE_PHONE','Handy','admin','',0),(336,1,'de','TEXT_CUSTOMERS_ORDER_DATA','Kundenbestelldaten','admin','',0),(337,1,'de','TEXT_CUSTOMERS_PASSWORD','Passwort','admin','',0),(338,1,'de','TEXT_CUSTOMERS_PHONE','Telefon','admin','',0),(339,1,'de','TEXT_CUSTOMERS_POSTCODE','Postleitzahl','admin','',0),(340,1,'de','TEXT_CUSTOMERS_SEND','Kunde informieren','admin','',0),(341,1,'de','TEXT_CUSTOMERS_STATUS','Kundengruppen','admin','',0),(342,1,'de','TEXT_CUSTOMERS_STATUS_ADD_TAX_OT','USt in Bestellung ausweisen','admin','',0),(343,1,'de','TEXT_CUSTOMERS_STATUS_GRADUATED_PRICES','Staffelpreise','admin','',0),(344,1,'de','TEXT_CUSTOMERS_STATUS_ID','Kundengruppen ID','admin','',0),(345,1,'de','TEXT_CUSTOMERS_STATUS_IMAGE','Kundengruppen Bild','admin','',0),(346,1,'de','TEXT_CUSTOMERS_STATUS_MASTER','Übergeordnete Kundengruppe','admin','',0),(347,1,'de','TEXT_CUSTOMERS_STATUS_MAX_ORDER','Maximaler Bestellwert','admin','',0),(348,1,'de','TEXT_CUSTOMERS_STATUS_MIN_ORDER','Mindestbestellwert','admin','',0),(349,1,'de','TEXT_CUSTOMERS_STATUS_MOBILES_TEMPLATE','mobile template','admin','',0),(350,1,'de','TEXT_CUSTOMERS_STATUS_MOBILE_TEMPLATE','Mobiles Template','admin','',0),(351,1,'de','TEXT_CUSTOMERS_STATUS_NAME','Kundengruppen Name','admin','',0),(352,1,'de','TEXT_CUSTOMERS_STATUS_SELECT','Kundengruppe','admin','',0),(353,1,'de','TEXT_CUSTOMERS_STATUS_SHOW_PRICE','Preisanzeige','admin','',0),(354,1,'de','TEXT_CUSTOMERS_STATUS_SHOW_PRICE_TAX','Preis incl USt','admin','',0),(355,1,'de','TEXT_CUSTOMERS_STATUS_TEMPLATE','Shop Template','admin','',0),(356,1,'de','TEXT_CUSTOMERS_STREET_ADDRESS','Strasse','admin','',0),(357,1,'de','TEXT_CUSTOMERS_SUBURB','Vorort','admin','',0),(358,1,'de','TEXT_CUSTOMERS_VAT_ID','USt. ID','admin','',0),(359,1,'de','TEXT_CUSTOMERS_VAT_ID_STATUS','Status UstID','admin','',0),(360,1,'de','TEXT_CUSTOMER_DETAILS','Kundendetails','admin','',0),(361,1,'de','TEXT_CUSTOMER_NAME','Kundenname','admin','',0),(362,1,'de','TEXT_CUSTOMER_NOTIFIED','Benachrichtigung','admin','',0),(363,1,'de','TEXT_CUSTOM_LINK','Individueller link','admin','',0),(364,1,'de','TEXT_CUSTOM_LINK_DEFINE','Define link','admin','',0),(365,1,'de','TEXT_CUSTOM_LNK_SAVE_PREV_STEP','Link bearbeiten','admin','',0),(366,1,'de','TEXT_C_SORT_ID','Kundengruppe','admin','',0),(367,1,'de','TEXT_DAILY','täglich','admin','',0),(368,1,'de','TEXT_DASHBOARD','Dashboard','admin','',0),(369,1,'de','TEXT_DASHBOARD_SEARCH_SUBTAB1','Alle Suchanfragen','admin','',0),(370,1,'de','TEXT_DASHBOARD_SEARCH_SUBTAB2','Ohne Ergebnis','admin','',0),(371,1,'de','TEXT_DASHBOARD_SEARCH_TAB','Shopsuche','admin','',0),(372,1,'de','TEXT_DATA_TOTAL','Zusatz Summe','admin','',0),(373,1,'de','TEXT_DATE','Datum','admin','',0),(374,1,'de','TEXT_DATE_ADDED','Hinzugefügt','admin','',0),(375,1,'de','TEXT_DATE_AVAILABLE','Erscheinungsdatum','admin','',0),(376,1,'de','TEXT_DATE_EXPIRED','Ablaufdatum','admin','',0),(377,1,'de','TEXT_DATE_OF_BIRTH_FROM','Geburtsdatum (von)','admin','',0),(378,1,'de','TEXT_DATE_OF_BIRTH_TO','Geburtsdatum (bis)','admin','',0),(379,1,'de','TEXT_DATE_PURCHASED','Bestelldatum','admin','',0),(380,1,'de','TEXT_DATE_TIME','Datum & Zeit','admin','',0),(381,1,'de','TEXT_DAY','Tag','admin','',0),(382,1,'de','TEXT_DB_INSTALL','Datenbank Install','admin','',0),(383,1,'de','TEXT_DB_RIGHTS','Datenbank','admin','',0),(384,1,'de','TEXT_DB_UNINSTALL','Datenbank uninstall','admin','',0),(385,1,'de','TEXT_DECIMALS','Dezimalstellen','admin','',0),(386,1,'de','TEXT_DEC_POINT','Dezimal Trenner','admin','',0),(387,1,'de','TEXT_DEFAULT','Standard','admin','',0),(388,1,'de','TEXT_DEFAULT_ADDRESS','Standard','admin','',0),(389,1,'de','TEXT_DEFAULT_CURRENCY','Standard Währung','admin','',0),(390,1,'de','TEXT_DEFAULT_IMAGE','Standard Bild','admin','',0),(391,1,'de','TEXT_DEFAULT_LANGUAGE_CODE','Standard Sprache','admin','',0),(392,1,'de','TEXT_DEFAULT_TEMPLATE','Standardtemplate','admin','',0),(393,1,'de','TEXT_DELETE','Löschen','admin','',0),(394,1,'de','TEXT_DELETE_CATEGORY','Kategorie löschen','admin','',0),(395,1,'de','TEXT_DELETE_CUSTOM_LINK','Link löschen','admin','',0),(396,1,'de','TEXT_DELETE_ORDER','Bestellung löschen?','admin','',0),(397,1,'de','TEXT_DELETE_ORDER_ASK','Soll beim löschen der Lagerbestand gutgeschrieben werden ?','admin','',0),(398,1,'de','TEXT_DELETE_SHOP','Mandant Löschen','admin','',0),(399,1,'de','TEXT_DELETE_TRASH','Papierkorb leeren','admin','',0),(400,1,'de','TEXT_DELIVERY_ADDRESS','Lieferadresse','admin','',0),(401,1,'de','TEXT_DELIVERY_COUNTRY','Versandziel','admin','',0),(402,1,'de','TEXT_DESC','Absteigend','admin','',0),(403,1,'de','TEXT_DESCRIPTION','Beschreibung','admin','',0),(404,1,'de','TEXT_DEVELOPER','Developer','admin','',0),(405,1,'de','TEXT_DIRECTORY','Verzeichnis','admin','',0),(406,1,'de','TEXT_DISABLED_PRODUCTS','Deaktivierte Produkte','admin','',0),(407,1,'de','TEXT_DISABLE_ALL_CATEGORIES','Alle Kategorien deaktivieren','admin','',0),(408,1,'de','TEXT_DISABLE_ALL_MANUFACTURERS','Alle Hersteller deaktivieren','admin','',0),(409,1,'de','TEXT_DISABLE_ALL_PRODUCTS','Alle Produkte deaktivieren','admin','',0),(410,1,'de','TEXT_DISCOUNT_QUANTITY','Mengengrenze','admin','',0),(411,1,'de','TEXT_DISPLAY_BY','Anzeige nach','admin','',0),(412,1,'de','TEXT_DISPLAY_TYPE','Anzeige Typ','admin','',0),(413,1,'de','TEXT_DOCUMENTATION','Handbuch','admin','',0),(414,1,'de','TEXT_DOCUMENTATION_LINK','Documentation','admin','',0),(415,1,'de','TEXT_DOWNLOAD_REENABLED','Downloadversuche wurden zurückgesetzt','admin','',0),(416,1,'de','TEXT_DOWNLOAD_STATUS','Download Status','admin','',0),(417,1,'de','TEXT_DOWNLOAD_TRANSLATIONS','Sprachinhalte aktualisieren','admin','',0),(418,1,'de','TEXT_DROPDOWN_CLASS','Klasse','admin','',0),(419,1,'de','TEXT_DROPDOWN_GROUP_ID','Admin Gruppe','admin','',0),(420,1,'de','TEXT_DROPDOWN_LANGUAGE_CODE','Sprachcode','admin','',0),(421,1,'de','TEXT_DROPDOWN_LANGUAGE_KEY','Schlüssel','admin','',0),(422,1,'de','TEXT_DROPDOWN_LISTING_TEMPLATE','Artikellisting Template','admin','',0),(423,1,'de','TEXT_DROPDOWN_SORT_ORDER','Reihenfolge','admin','',0),(424,1,'de','TEXT_DROPDOWN_TAX_CLASS_ID','Steuerklasse ID','admin','',0),(425,1,'de','TEXT_DROPDOWN_TAX_ZONE_ID','Steuerzone ID','admin','',0),(426,1,'de','TEXT_DROPDOWN_ZONE_ID','Zone ID','admin','',0),(427,1,'de','TEXT_DROPDOWN__STORE_COUNTRY','Land','admin','',0),(428,1,'de','TEXT_DROPDOWN__STORE_CURRENCY','Währung','admin','',0),(429,1,'de','TEXT_DROPDOWN__STORE_CUSTOMERS_STATUS_ID','Kundengruppe','admin','',0),(430,1,'de','TEXT_DROPDOWN__STORE_CUSTOMERS_STATUS_ID_GUEST','Kundengruppe Gast','admin','',0),(431,1,'de','TEXT_DROPDOWN__STORE_LANGUAGE','Sprache','admin','',0),(432,1,'de','TEXT_DROPDOWN__STORE_TEMPLATE','Template','admin','',0),(433,1,'de','TEXT_DROPDOWN__STORE_ZONE','Zone','admin','',0),(434,1,'de','TEXT_EDIT','Bearbeiten','admin','',0),(435,1,'de','TEXT_EDIT_CATEGORY','Kategorie bearbeiten','admin','',0),(436,1,'de','TEXT_EDIT_CUSTOM_LINK','individuellen Link bearbeiten','admin','',0),(437,1,'de','TEXT_EDIT_SHOP','Shop bearbeiten','admin','',0),(438,1,'de','TEXT_EKOMI_PORTAL','eKomi Kundenbewertungen','admin','',0),(439,1,'de','TEXT_EMAIL','E-Mail','admin','',0),(440,1,'de','TEXT_EMAIL_FORWARD','Weiterleitung an (E-Mail)','admin','',0),(441,1,'de','TEXT_EMAIL_FROM','Absender (E-mail)','admin','',0),(442,1,'de','TEXT_EMAIL_FROM_NAME','Absender (Name)','admin','',0),(443,1,'de','TEXT_EMAIL_MANAGER','E-Mail Manager','admin','',0),(444,1,'de','TEXT_EMAIL_MEDIA','Anhänge','admin','',0),(445,1,'de','TEXT_EMAIL_OPTIONS','Email Einstellungen','admin','',0),(446,1,'de','TEXT_EMAIL_REPLY','Reply (E-Mail)','admin','',0),(447,1,'de','TEXT_EMAIL_REPLY_NAME','Reply (Name)','admin','',0),(448,1,'de','TEXT_EMAIL_SENT','Bestellbestätigungsmail wurde gesendet','admin','',0),(449,1,'de','TEXT_EMPTY','Kein Eintrag vorhanden','admin','',0),(450,1,'de','TEXT_EMPTY_DUMMY_COLUMN','','admin','',0),(451,1,'de','TEXT_EMPTY_SELECTION','Keine Auswahl','admin','',0),(452,1,'de','TEXT_ENABLED_PRODUCTS','Nur aktivierte Produkte','admin','',0),(453,1,'de','TEXT_ENABLE_ALL_CATEGORIES','Alle Kategorien aktivieren','admin','',0),(454,1,'de','TEXT_ENABLE_ALL_MANUFACTURERS','Alle Hersteller aktivieren','admin','',0),(455,1,'de','TEXT_ENABLE_ALL_PRODUCTS','Alle Produkte aktivieren','admin','',0),(456,1,'de','TEXT_ENABLE_DOWNLOAD','Downloads erlauben','admin','',0),(457,1,'de','TEXT_ERROR_DATA','Fehlerdaten','admin','',0),(458,1,'de','TEXT_ERROR_MAX_STORES','Maximale Anzahl an Mandanten erreicht, um weitere Mandanten hinzufügen müssen Sie Ihre Lizenz erweitern.','admin','',0),(459,1,'de','TEXT_ERROR_MINIMUM_SHOP_VERSION','Ihre Shop-Version ist zu gering um das Plugin zu aktualisieren. Führen Sie zuerst eine aktualisierung des Shops durch.','admin','',0),(460,1,'de','TEXT_ERROR_MINIMUM_STORE_VERSION','Fehler! Plugin %s benötigt mindestens die Shop-Version %s. Ihre Version ist %s.<br />Bitte spielen Sie die vorherigen Dateien wieder ein.','admin','',0),(461,1,'de','TEXT_ERROR_MSG','Fehlermeldung','admin','',0),(462,1,'de','TEXT_EXP','Exporte','admin','',0),(463,1,'de','TEXT_EXPORT','Export-Manager','admin','',0),(464,1,'de','TEXT_EXPORT_LANGUAGE','Sprachexport','admin','',0),(465,1,'de','TEXT_EXPORT_NOTTRANSLATED','Nicht übersetzte exportieren','admin','',0),(466,1,'de','TEXT_EXPORT_SUCCESS','Export ausgeführt','admin','',0),(467,1,'de','TEXT_EXPORT_TO_CATEGORIES','Kategoriezuweisung','admin','',0),(468,1,'de','TEXT_EXPORT_TO_MANUFACTURERS','Herstellerzuweisung','admin','',0),(469,1,'de','TEXT_EXPORT_TPLS','Vorlagen','admin','',0),(470,1,'de','TEXT_EXPORT_TPLS_IMPORT','Vorlage importieren','admin','',0),(471,1,'de','TEXT_FAILURE','Kein Erfolg','admin','',0),(472,1,'de','TEXT_FAIL_COUNT','fail count','admin','',0),(473,1,'de','TEXT_FAIL_ID','Id','admin','',0),(474,1,'de','TEXT_FAIL_TYPE','fail type','admin','',0),(475,1,'de','TEXT_FALSE','nein','admin','',0),(476,1,'de','TEXT_FAX_PREFIX','Fax prefix','admin','',0),(477,1,'de','TEXT_FEED_BODY','Body','admin','',0),(478,1,'de','TEXT_FEED_BROWSER','An Browser senden','admin','',0),(479,1,'de','TEXT_FEED_DATE_FROM_ORDERS','Von Datum','admin','',0),(480,1,'de','TEXT_FEED_DATE_RANGE_ORDERS','Anzahl Stunden','admin','',0),(481,1,'de','TEXT_FEED_DATE_TO_ORDERS','Bis Datum','admin','',0),(482,1,'de','TEXT_FEED_ENCODING','Zeichensatz','admin','',0),(483,1,'de','TEXT_FEED_EXPORT_LIMIT','Datens&auml;tze pro Durchgang','admin','',0),(484,1,'de','TEXT_FEED_FILENAME','Dateiname','admin','',0),(485,1,'de','TEXT_FEED_FILETYPE','Dateityp','admin','',0),(486,1,'de','TEXT_FEED_FOOTER','Footer','admin','',0),(487,1,'de','TEXT_FEED_FTP_DIR','Verzeichnis','admin','',0),(488,1,'de','TEXT_FEED_FTP_FLAG','Aktiv','admin','',0),(489,1,'de','TEXT_FEED_FTP_PASSIV','FTP Passiv Modus','admin','',0),(490,1,'de','TEXT_FEED_FTP_PASSWORD','FTP Passwort','admin','',0),(491,1,'de','TEXT_FEED_FTP_SERVER','FTP Server','admin','',0),(492,1,'de','TEXT_FEED_FTP_USER','FTP Benutzer','admin','',0),(493,1,'de','TEXT_FEED_HEADER','Header','admin','',0),(494,1,'de','TEXT_FEED_ID','Feed ID','admin','',0),(495,1,'de','TEXT_FEED_KEY','Export ID','admin','',0),(496,1,'de','TEXT_FEED_LINERETURN_DEACTIVATED','Zeilenumbruch im Body deaktivieren','admin','',0),(497,1,'de','TEXT_FEED_MAIL','Empfänger','admin','',0),(498,1,'de','TEXT_FEED_MAIL_BODY','E-Mail Body','admin','',0),(499,1,'de','TEXT_FEED_MAIL_FLAG','Aktiv','admin','',0),(500,1,'de','TEXT_FEED_MAIL_HEADER','E-Mail Betreff','admin','',0),(501,1,'de','TEXT_FEED_POST_FIELD','Upload Feld','admin','',0),(502,1,'de','TEXT_FEED_POST_FLAG','Aktiv','admin','',0),(503,1,'de','TEXT_FEED_POST_SERVER','Formular URL','admin','',0),(504,1,'de','TEXT_FEED_PRINT_BROWSER','An Browser ausgeben','admin','',0),(505,1,'de','TEXT_FEED_PW_FLAG','Aktiv','admin','',0),(506,1,'de','TEXT_FEED_PW_PASS','Passwort','admin','',0),(507,1,'de','TEXT_FEED_PW_USER','Benutzername','admin','',0),(508,1,'de','TEXT_FEED_P_CAMPAIGN','Kampagne','admin','',0),(509,1,'de','TEXT_FEED_P_CURRENCY_CODE','Währung','admin','',0),(510,1,'de','TEXT_FEED_P_DEACTIVATED_STATUS','Deaktivierte Produkte Exportieren?','admin','',0),(511,1,'de','TEXT_FEED_P_MODEL_MAX','Bis Artikelnummer','admin','',0),(512,1,'de','TEXT_FEED_P_MODEL_MIN','Von Artikelnummer','admin','',0),(513,1,'de','TEXT_FEED_P_PRICE_MAX','Höchst-Produktpreis','admin','',0),(514,1,'de','TEXT_FEED_P_PRICE_MIN','Mindest-Produktpreis','admin','',0),(515,1,'de','TEXT_FEED_P_QUANTITY_MAX','Höchstmenge','admin','',0),(516,1,'de','TEXT_FEED_P_QUANTITY_MIN','Mindestmenge','admin','',0),(517,1,'de','TEXT_FEED_P_SLAVE','Slaves exportieren?','admin','',0),(518,1,'de','TEXT_FEED_SAVE','Auf Server Speichern ?','admin','',0),(519,1,'de','TEXT_FEED_STORE_ID','Shop ID','admin','',0),(520,1,'de','TEXT_FEED_TITLE','Titel','admin','',0),(521,1,'de','TEXT_FEED_TYPE','Export Typ','admin','',0),(522,1,'de','TEXT_FEMALE','Frau','admin','',0),(523,1,'de','TEXT_FILE','Datei','admin','',0),(524,1,'de','TEXT_FILENAME','Dateiname','admin','',0),(525,1,'de','TEXT_FILES','Dateien','admin','',0),(526,1,'de','TEXT_FILES_UPLOADED','hochgeladen','admin','',0),(527,1,'de','TEXT_FILE_DOWNLOADS','Datei Downloads','admin','',0),(528,1,'de','TEXT_FILE_EXT','Dateiendung','admin','',0),(529,1,'de','TEXT_FILE_TYPE','Datei Typ','admin','',0),(530,1,'de','TEXT_FILTER','Filter','admin','',0),(531,1,'de','TEXT_FIND','Suchen','admin','',0),(532,1,'de','TEXT_FIRSTNAME','Vorname','admin','',0),(533,1,'de','TEXT_FLASH_UPLOAD','Flash Dateiupload (Flash10+)','admin','',0),(534,1,'de','TEXT_FLASH_UPLOAD_OLD','Flash Dateiupload (Flash 9)','admin','',0),(535,1,'de','TEXT_FOLDER','Verzeichnis','admin','',0),(536,1,'de','TEXT_FONT','Schriftart','admin','',0),(537,1,'de','TEXT_FONT_POSITION','Position','admin','',0),(538,1,'de','TEXT_FONT_SIZE','Schrift Grösse','admin','',0),(539,1,'de','TEXT_FREE_DOWNLOAD','Freier Download','admin','',0),(540,1,'de','TEXT_FROM','von','admin','',0),(541,1,'de','TEXT_FTP','FTP','admin','',0),(542,1,'de','TEXT_GROUP','Gruppe','admin','',0),(543,1,'de','TEXT_GROUP_ID','Gruppen ID','admin','',0),(544,1,'de','TEXT_GROUP_PERMISSION_ALL','Alle','admin','',0),(545,1,'de','TEXT_GROUP_PERMISSION_INFO','Hinweis','admin','',0),(546,1,'de','TEXT_HANDLE','Benutzername','admin','',0),(547,1,'de','TEXT_HEIGHT','Höhe','admin','',0),(548,1,'de','TEXT_HOOK','Hookpoint','admin','',0),(549,1,'de','TEXT_HOUR','Stunde','admin','',0),(550,1,'de','TEXT_ID','ID','admin','',0),(551,1,'de','TEXT_IDENTIFICATION','ID','admin','',0),(552,1,'de','TEXT_IMAGE','Bild','admin','',0),(553,1,'de','TEXT_IMAGES','Bilder','admin','',0),(554,1,'de','TEXT_IMAGETYPES','Bildtypen','admin','',0),(555,1,'de','TEXT_IMAGE_PREVIEW','Bild Vorschau','admin','',0),(556,1,'de','TEXT_IMAGE_PROCESSING','Imageprocessing','admin','',0),(557,1,'de','TEXT_IMPORT','Datei Import','admin','',0),(558,1,'de','TEXT_IMPORT_ASK','Datein aus Media Ordner importieren ? <br />!! Dieser Vorgang kann mehrere Minuten dauern !! <br />Bitte nicht unterbrechen und Erfolgs oder Misserfolgsmeldung abwarten !','admin','',0),(559,1,'de','TEXT_IMPORT_IMAGES','Bilder Importieren','admin','',0),(560,1,'de','TEXT_INCLUDES','enthält','admin','',0),(561,1,'de','TEXT_INFO_NONDEFINE','Um die Constanten in das Dropdown zu bekommen, sollte jeder textaufruf über den Funktionsaufruf: __define() erfolgen','admin','',0),(562,1,'de','TEXT_INSTALLATION_FAIL','Installation fehlgeschlagen, bitte setzen Sie schreibrechte auf folgende Pfaade/Datein','admin','',0),(563,1,'de','TEXT_INSTALLATION_FAIL_LICENSE','Fehler: Lizenzdatei fehlt','admin','',0),(564,1,'de','TEXT_INSTALLATION_FAIL_REQUIRED_PLUGINS','Dieses Plugin benötigt folgende Plugins, bitte installieren Sie diese zuvor.','admin','',0),(565,1,'de','TEXT_INSTALLATION_SUCCESSFULL','Installation erfolgreich, Sie können das Modul nun unter \"Plugin->installierte Plugins\" konfigurieren.','admin','',0),(566,1,'de','TEXT_INSTALL_PLUGIN','Plugin Installieren','admin','',0),(567,1,'de','TEXT_IP_ADDRESS','IP:','admin','',0),(568,1,'de','TEXT_ITEMS_PER_PAGE','Items pro Seite','admin','',0),(569,1,'de','TEXT_KEY','Plugin Key','admin','',0),(570,1,'de','TEXT_KEYWORD','Keyword','admin','',0),(571,1,'de','TEXT_LANGUAGE','Sprachen','admin','',0),(572,1,'de','TEXT_LANGUAGES_ID','Sprach ID','admin','',0),(573,1,'de','TEXT_LANGUAGE_CHARSET','Charset','admin','',0),(574,1,'de','TEXT_LANGUAGE_CODE','Sprachcode (iso-2)','admin','',0),(575,1,'de','TEXT_LANGUAGE_CONTENT','Sprachtexte','admin','',0),(576,1,'de','TEXT_LANGUAGE_CONTENT_ID','ID','admin','',0),(577,1,'de','TEXT_LANGUAGE_FILE','Sprachdatei','admin','',0),(578,1,'de','TEXT_LANGUAGE_IMPORT','Sprache Importieren','admin','',0),(579,1,'de','TEXT_LANGUAGE_KEY','Schlüssel','admin','',0),(580,1,'de','TEXT_LANGUAGE_MORE_DETAILS','Mehr Details','admin','',0),(581,1,'de','TEXT_LANGUAGE_SELECT','Sprache','admin','',0),(582,1,'de','TEXT_LANGUAGE_STATUS','Status','admin','',0),(583,1,'de','TEXT_LANGUAGE_VALUE','Text','admin','',0),(584,1,'de','TEXT_LANG_EXPORT_SUCCESS','Sprache wurde als XML unter export/ gespeichert','admin','',0),(585,1,'de','TEXT_LASTNAME','Nachname','admin','',0),(586,1,'de','TEXT_LAST_COUNT','Anzahl','admin','',0),(587,1,'de','TEXT_LAST_MODIFIED','Zuletzt geändert','admin','',0),(588,1,'de','TEXT_LAST_RUN','Letzter Start','admin','',0),(589,1,'de','TEXT_LAST_RUNTIME','Letzte Laufzeit','admin','',0),(590,1,'de','TEXT_LAST_RUN_DATE','Letzte Ausführung','admin','',0),(591,1,'de','TEXT_LAST_TRY','last try','admin','',0),(592,1,'de','TEXT_LICENSE','Lizenz','admin','',0),(593,1,'de','TEXT_LICENSE_INFO','Lizenzinfo','admin','',0),(594,1,'de','TEXT_LINK_ID','Link ID','admin','',0),(595,1,'de','TEXT_LINK_LOSTPASSWORD','Passwort vergessen?','admin','',0),(596,1,'de','TEXT_LINK_LOST_PASSWORD','Passwort vergessen ?','admin','',0),(597,1,'de','TEXT_LINK_SSL','SSL','admin','',0),(598,1,'de','TEXT_LINK_TYPE','Link Type ID','admin','',0),(599,1,'de','TEXT_LINK_URL','URL','admin','',0),(600,1,'de','TEXT_LISTING_TEMPLATE','Template Kategorielisting','admin','',0),(601,1,'de','TEXT_LOADING','Laden','admin','',0),(602,1,'de','TEXT_LOCALIZING','Lokalisierung','admin','',0),(603,1,'de','TEXT_LOCK_UNTIL','locked until','admin','',0),(604,1,'de','TEXT_LOGHANDLER','System-Log','admin','',0),(605,1,'de','TEXT_LOGINTIME','Eingeloggt seit','admin','',0),(606,1,'de','TEXT_LOGS','Logfiles','admin','',0),(607,1,'de','TEXT_LOG_ID','Log ID','admin','',0),(608,1,'de','TEXT_LOOKUP','lookup','admin','',0),(609,1,'de','TEXT_MAGNALISTER','xt:MultiConnect','admin','',0),(610,1,'de','TEXT_MAIL','E-Mail','admin','',0),(611,1,'de','TEXT_MAILADDRESS','E-mail','admin','',0),(612,1,'de','TEXT_MAILTYPE_MAIL','mail/qmail','admin','',0),(613,1,'de','TEXT_MAILTYPE_SENDMAIL','sendmail','admin','',0),(614,1,'de','TEXT_MAILTYPE_SMTP','Smtp','admin','',0),(615,1,'de','TEXT_MAIL_BODY_HTML','Html Email','admin','',0),(616,1,'de','TEXT_MAIL_BODY_TXT','Text Email','admin','',0),(617,1,'de','TEXT_MAIL_SUBJECT','Betreff','admin','',0),(618,1,'de','TEXT_MAIN','Haupt','admin','',0),(619,1,'de','TEXT_MALE','Herr','admin','',0),(620,1,'de','TEXT_MANUFACTURER','Hersteller','admin','',0),(621,1,'de','TEXT_MANUFACTURERS_DESCRIPTION','Beschreibung','admin','',0),(622,1,'de','TEXT_MANUFACTURERS_ID','Hersteller ID','admin','',0),(623,1,'de','TEXT_MANUFACTURERS_IMAGE','Bild','admin','',0),(624,1,'de','TEXT_MANUFACTURERS_META_DESCRIPTION','Meta Description','admin','',0),(625,1,'de','TEXT_MANUFACTURERS_META_KEYWORDS','Meta Keywords','admin','',0),(626,1,'de','TEXT_MANUFACTURERS_META_TITLE','Meta Title','admin','',0),(627,1,'de','TEXT_MANUFACTURERS_NAME','Name','admin','',0),(628,1,'de','TEXT_MANUFACTURERS_SORT','Reihenfolge','admin','',0),(629,1,'de','TEXT_MANUFACTURERS_STATUS','Status','admin','',0),(630,1,'de','TEXT_MANUFACTURERS_URL','Url','admin','',0),(631,1,'de','TEXT_MANUFACTURER_IMAGE','Hersteller Bild','admin','',0),(632,1,'de','TEXT_MANUFACTURER_SELECT','Hersteller','admin','',0),(633,1,'de','TEXT_MANUFACTURER_WINDOW','Hersteller','admin','',0),(634,1,'de','TEXT_MARKETPLACE_LINK','Marketplace Link','admin','',0),(635,1,'de','TEXT_MASTER_KEY','master key','admin','',0),(636,1,'de','TEXT_MAXPRODUCTS','Limitierung Produkte','admin','',0),(637,1,'de','TEXT_MAXSTORES','Limitierung Mandanten','admin','',0),(638,1,'de','TEXT_MAXVERSION','Limitierung Shop-Version','admin','',0),(639,1,'de','TEXT_MAX_DL_COUNT','Mögliche Downloads','admin','',0),(640,1,'de','TEXT_MAX_DL_DAYS','Downloads - Tage','admin','',0),(641,1,'de','TEXT_MEDIAFILEMANAGER','Datei Verwaltung','admin','',0),(642,1,'de','TEXT_MEDIAFILEMANAGER_WINDOW','Dateiupload','admin','',0),(643,1,'de','TEXT_MEDIAFILETYPES','Dateitypen','admin','',0),(644,1,'de','TEXT_MEDIAGALLERY','Media Gallery','admin','',0),(645,1,'de','TEXT_MEDIAIMAGEMANAGER','Bilder Verwaltung','admin','',0),(646,1,'de','TEXT_MEDIALIST','Media Verwaltung','admin','',0),(647,1,'de','TEXT_MEDIA_DESCRIPTION','Beschreibung','admin','',0),(648,1,'de','TEXT_MEDIA_MANAGER','Media','admin','',0),(649,1,'de','TEXT_MEDIA_NAME','Name','admin','',0),(650,1,'de','TEXT_MEMO','Bestellstatus ändern','admin','',0),(651,1,'de','TEXT_MENU_OPTIONS','Bearbeiten','admin','',0),(652,1,'de','TEXT_MESSAGE_SOURCE','Quelle/Info','admin','',0),(653,1,'de','TEXT_META_DESCRIPTION','Meta Beschreibung','admin','',0),(654,1,'de','TEXT_META_KEYWORDS','Meta Schlüsselwörter','admin','',0),(655,1,'de','TEXT_META_TITLE','Meta Titel','admin','',0),(656,1,'de','TEXT_MFT_ID','ID','admin','',0),(657,1,'de','TEXT_MINUTE','Minute','admin','',0),(658,1,'de','TEXT_ML_ID','ID','admin','',0),(659,1,'de','TEXT_MOBILE_PHONE_PREFIX','Handy prefix','admin','',0),(660,1,'de','TEXT_MOBILE_TEMPLATE','Mobile Template','admin','',0),(661,1,'de','TEXT_MODE_LIVE','PayPal in Live-Betrieb','admin','',0),(662,1,'de','TEXT_MODE_SANDBOX','Testmodus (PayPal Sandbox)','admin','',0),(663,1,'de','TEXT_MODULE','Zahlungsmodul','admin','',0),(664,1,'de','TEXT_MONTH','Monat','admin','',0),(665,1,'de','TEXT_MONTHLY','monatlich','admin','',0),(666,1,'de','TEXT_MORE_CATEGORIES','weitere Kategorien','admin','',0),(667,1,'de','TEXT_MORE_IMAGES','weitere Artikelbilder','admin','',0),(668,1,'de','TEXT_MORE_THAN_ONE_MAIN_CATEGORY_SELECTED','Fehler: Nur eine Kategorie kann einem Produkt als Hauptkategorie zugewiesen werden.','admin','',0),(669,1,'de','TEXT_MOVE_PRODUCT','Verschieben','admin','',0),(670,1,'de','TEXT_MULTIPLE_UPLOAD','Multi Datei Upload','admin','',0),(671,1,'de','TEXT_MULTI_ACTION_MENU','mehrfach Aktionen','admin','',0),(672,1,'de','TEXT_MULTI_COPY','Mehrfach kopieren','admin','',0),(673,1,'de','TEXT_MULTI_LINK','Mehrfach verlinken','admin','',0),(674,1,'de','TEXT_MULTI_MOVE','Mehrfach verschieben','admin','',0),(675,1,'de','TEXT_MY_STORE','Mein Shop','admin','',0),(676,1,'de','TEXT_MY_STORE_INFO','Adressdaten','admin','',0),(677,1,'de','TEXT_M_ID','Media ID','admin','',0),(678,1,'de','TEXT_NAME','Name','admin','',0),(679,1,'de','TEXT_NEW','Neu','admin','',0),(680,1,'de','TEXT_NEWS_XT_WORLD','xt:Commerce News','admin','',0),(681,1,'de','TEXT_NEW_ALBUM','Neues Album','admin','',0),(682,1,'de','TEXT_NEW_CATEGORY','Neue Kategorie anlegen','admin','',0),(683,1,'de','TEXT_NEW_CUSTOM_LINK','Neuer Individueller Link','admin','',0),(684,1,'de','TEXT_NEW_MAIN_CATEGORY','Neue Hauptkategorie','admin','',0),(685,1,'de','TEXT_NEW_ORDER','Neue Bestellung','admin','',0),(686,1,'de','TEXT_NEW_PRODUCT','Neues Produkt','admin','',0),(687,1,'de','TEXT_NEW_SHOP','Neuer Shop','admin','',0),(688,1,'de','TEXT_NEW_SUB_CATEGORY','Neue Unterkategorie','admin','',0),(689,1,'de','TEXT_NEXT_RUN_DATE','Nächste Ausführung','admin','',0),(690,1,'de','TEXT_NO_CHANGES','Keine Änderungen','admin','',0),(691,1,'de','TEXT_NO_IMAGE','-Kein Bild-','admin','',0),(692,1,'de','TEXT_NO_LANGUAGE','Keine Sprache','admin','',0),(693,1,'de','TEXT_NO_MANUCFACTURER','Kein Hersteller','admin','',0),(694,1,'de','TEXT_NO_SUCCESS','Kein Erfolg','admin','',0),(695,1,'de','TEXT_NO_TAX_CLASS','Keine Steuerklasse','admin','',0),(696,1,'de','TEXT_NO_TEXT_LANGUAGES','Keine Sprache','admin','',0),(697,1,'de','TEXT_NO_WYSIWYG','Kein Html Editor','admin','',0),(698,1,'de','TEXT_NO_ZONE','Keine Zone','admin','',0),(699,1,'de','TEXT_ON_INDEXPAGE','Auf Startseite','admin','',0),(700,1,'de','TEXT_ORDER','Bestellungen','admin','',0),(701,1,'de','TEXT_ORDERED_PRODUCTS','bestellte Artikel','admin','',0),(702,1,'de','TEXT_ORDERS','Bestellungen','admin','',0),(703,1,'de','TEXT_ORDERS_EDIT','Admin Bestellungen','admin','',0),(704,1,'de','TEXT_ORDERS_ID','Bestellnummer','admin','',0),(705,1,'de','TEXT_ORDERS_PRODUCTS_ID','Bestellposition','admin','',0),(706,1,'de','TEXT_ORDERS_SOURCE','Bestellweg','admin','',0),(707,1,'de','TEXT_ORDERS_SOURCE_CASUAL','Laufkunde','admin','',0),(708,1,'de','TEXT_ORDERS_SOURCE_EMAIL','E-Mail','admin','',0),(709,1,'de','TEXT_ORDERS_SOURCE_EXTERNAL','External order source','admin','',0),(710,1,'de','TEXT_ORDERS_SOURCE_FAX','Fax','admin','',0),(711,1,'de','TEXT_ORDERS_SOURCE_PHONE','Telefon','admin','',0),(712,1,'de','TEXT_ORDERS_STATUS','Bestellstatus','admin','',0),(713,1,'de','TEXT_ORDERS_STATUS_SELECT','Bestellstatus','admin','',0),(714,1,'de','TEXT_ORDERTAB','Bestellungen/Kunden','admin','',0),(715,1,'de','TEXT_ORDER_COMMENTS','Notiz','admin','',0),(716,1,'de','TEXT_ORDER_DELETE_SUCCESS','Bestellung wurde gelöscht','admin','',0),(717,1,'de','TEXT_ORDER_DOWNLOAD','Kostenpflichtiger Download','admin','',0),(718,1,'de','TEXT_ORDER_EDIT_ACL_USER','Bearbeitet von','admin','',0),(719,1,'de','TEXT_ORDER_EDIT_ADDRESS_TO_APPLY','Zu verwendende Adresse (oder neue unten)','admin','',0),(720,1,'de','TEXT_ORDER_EDIT_ADDRESS_TYPE','Zu ändernde Adresse','admin','',0),(721,1,'de','TEXT_ORDER_EDIT_ADD_ITEM','Position hinzufügen','admin','',0),(722,1,'de','TEXT_ORDER_EDIT_APPLY_EDITED_ADDRESS','Geänderte Adresse speichern und anwenden','admin','',0),(723,1,'de','TEXT_ORDER_EDIT_APPLY_EXISTING_ADDRESS','Gewählte Adresse anwenden','admin','',0),(724,1,'de','TEXT_ORDER_EDIT_APPLY_NEW_ADDRESS','Als neue Adresse speichern und anwenden','admin','',0),(725,1,'de','TEXT_ORDER_EDIT_APPLY_PAYMENT_SHIPPING','Übernehmen','admin','',0),(726,1,'de','TEXT_ORDER_EDIT_CALCULATE_GRADUATED','Staffelpreis berechnen','admin','',0),(727,1,'de','TEXT_ORDER_EDIT_CURRENT_COUPON_CODE','Aktueller Gutschein','admin','',0),(728,1,'de','TEXT_ORDER_EDIT_EDIT_ADDRESS','Adressen bearbeiten','admin','',0),(729,1,'de','TEXT_ORDER_EDIT_EDIT_COUPON','Gutschein bearbeiten','admin','',0),(730,1,'de','TEXT_ORDER_EDIT_EDIT_ITEM','Position bearbeiten','admin','',0),(731,1,'de','TEXT_ORDER_EDIT_EDIT_PAYMENT_SHIPPING','Zahlung/Versand/Bestellweg','admin','',0),(732,1,'de','TEXT_ORDER_EDIT_FIELDS_REQUIRED','Pflichtfelder','admin','',0),(733,1,'de','TEXT_ORDER_EDIT_ITEMS','Bestellpositionen bearbeiten','admin','',0),(734,1,'de','TEXT_ORDER_EDIT_NEW_COUPON_CODE_CODE','Gutschein anfügen/ersetzen (Code)','admin','',0),(735,1,'de','TEXT_ORDER_EDIT_NEW_COUPON_CODE_TEMPLATE','Gutschein anfügen/ersetzen (Vorlage)','admin','',0),(736,1,'de','TEXT_ORDER_EDIT_NEW_ORDER','Neue Bestellung','admin','',0),(737,1,'de','TEXT_ORDER_EDIT_REMOVED_COUPON_CODE','Letzer Gutschein (z.Z. enfernt)','admin','',0),(738,1,'de','TEXT_ORDER_EDIT_REMOVE_COUPON','Gutschein entfernen','admin','',0),(739,1,'de','TEXT_ORDER_EDIT_REMOVE_ITEM','Position entfernen','admin','',0),(740,1,'de','TEXT_ORDER_EDIT_SAVE_COUPON','Gutschein speichern','admin','',0),(741,1,'de','TEXT_ORDER_EDIT_UPDATE_ITEM','Position ändern','admin','',0),(742,1,'de','TEXT_ORDER_EDIT_WARNING_COUPON_REMOVED','Gutschein wurde entfernt:','admin','',0),(743,1,'de','TEXT_ORDER_ID','Bestellnummer','admin','',0),(744,1,'de','TEXT_ORDER_INFOS','Infos','admin','',0),(745,1,'de','TEXT_ORDER_MORE_DETAILS','Mehr Details','admin','',0),(746,1,'de','TEXT_ORDER_PRODUCTS_ID','Bestellposition','admin','',0),(747,1,'de','TEXT_ORDER_PRODUCTS_QUANTITY','Bestellmenge','admin','',0),(748,1,'de','TEXT_ORDER_PURCHASED','Bestelldatum','admin','',0),(749,1,'de','TEXT_ORDER_STATUS','Bestellstatus','admin','',0),(750,1,'de','TEXT_ORDER_TOTAL','Summe','admin','',0),(751,1,'de','TEXT_ORDER_TOTAL_FINALPRICE','Zusatz Gesamtpreis','admin','',0),(752,1,'de','TEXT_ORDER_TOTAL_NAME','Zusatz Bezeichnung','admin','',0),(753,1,'de','TEXT_ORDER_TOTAL_OTAX','Gesamt Netto','admin','',0),(754,1,'de','TEXT_ORDER_TOTAL_SINGLEPRICE','Zusatz Einzelpreis','admin','',0),(755,1,'de','TEXT_ORDER_TOTAL_TAX','Zusatz USt','admin','',0),(756,1,'de','TEXT_ORDER_WINDOW','Bestellfenster','admin','',0),(757,1,'de','TEXT_OVERLOAD_PRODUCT_DATA','Wenn Sie das Produkt speichern werden die Inhalte von dem von Ihnen ausgewählten Shop anstelle der vorherigen Inhalte geladen. Die derzeitigen Inhalte der Felder werden dabei überschrieben.','admin','',0),(758,1,'de','TEXT_OVERVIEW','Übersicht','admin','',0),(759,1,'de','TEXT_PARENT_ID','Übergeordnete Kategorie','admin','',0),(760,1,'de','TEXT_PASSWORD_ADMIN','Admin Passwort','admin','',0),(761,1,'de','TEXT_PAYED_DOWNLOAD','Kostenpflichtiger Download','admin','',0),(762,1,'de','TEXT_PAYMENT','Zahlungsweise','admin','',0),(763,1,'de','TEXT_PAYMENT_ADDRESS','Rechnungsadresse','admin','',0),(764,1,'de','TEXT_PAYMENT_ALLOWED','Zahlungsmodul aktiv','admin','',0),(765,1,'de','TEXT_PAYMENT_AVAILABLE_MOBILE','Für Mobile-Geräte aktivieren','admin','',0),(766,1,'de','TEXT_PAYMENT_CODE','Zahlungsart Code','admin','',0),(767,1,'de','TEXT_PAYMENT_COST_ADD','Kosten (Gebühr)','admin','',0),(768,1,'de','TEXT_PAYMENT_COST_ADD_PERCENT','Kosten (Prozent Aufschlag)','admin','',0),(769,1,'de','TEXT_PAYMENT_COST_DISCOUNT','Gebühr-Typ','admin','',0),(770,1,'de','TEXT_PAYMENT_COST_DISCOUNT_PERCENT','Rabatt in Prozent','admin','',0),(771,1,'de','TEXT_PAYMENT_COST_ID','ID','admin','',0),(772,1,'de','TEXT_PAYMENT_COST_INFO','Kostenhinweis anzeigen','admin','',0),(773,1,'de','TEXT_PAYMENT_COST_PERCENT','Prozent vom Warenkorb','admin','',0),(774,1,'de','TEXT_PAYMENT_COUNTRY_CODE','Beschränken auf Land','admin','',0),(775,1,'de','TEXT_PAYMENT_DESC','Zahlungsart Beschreibung','admin','',0),(776,1,'de','TEXT_PAYMENT_DIR','Verzeichnis','admin','',0),(777,1,'de','TEXT_PAYMENT_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(778,1,'de','TEXT_PAYMENT_EMAIL_DESC_TXT','E-Mail Text (txt)','admin','',0),(779,1,'de','TEXT_PAYMENT_GEO_ZONE','Beschränken auf Zone','admin','',0),(780,1,'de','TEXT_PAYMENT_ICON','Icon','admin','',0),(781,1,'de','TEXT_PAYMENT_ID','Zahungsart ID','admin','',0),(782,1,'de','TEXT_PAYMENT_MIN_ORDERS','ab Anzahl Bestellungen','admin','',0),(783,1,'de','TEXT_PAYMENT_NAME','Zahlungsart Bezeichnung','admin','',0),(784,1,'de','TEXT_PAYMENT_PERMISSION','Zahlungsweisen','admin','',0),(785,1,'de','TEXT_PAYMENT_PRICE','Zahlungsgebühr','admin','',0),(786,1,'de','TEXT_PAYMENT_TAX_CLASS','Steuerklasse','admin','',0),(787,1,'de','TEXT_PAYMENT_TPL','Template','admin','',0),(788,1,'de','TEXT_PAYMENT_TYPE','Payment Art','admin','',0),(789,1,'de','TEXT_PAYMENT_TYPE_VALUE_FROM','Von Wert','admin','',0),(790,1,'de','TEXT_PAYMENT_TYPE_VALUE_TO','Bis Wert','admin','',0),(791,1,'de','TEXT_PAYMENT_UNALLOWED','Nicht erlaubte Zahlungsarten','admin','',0),(792,1,'de','TEXT_PERCENTAGE','Trigger (%)','admin','',0),(793,1,'de','TEXT_PERIOD_TYPE','Zeitraum','admin','',0),(794,1,'de','TEXT_PERMISSION','Berechtigungen','admin','',0),(795,1,'de','TEXT_PERM_ID','ID','admin','',0),(796,1,'de','TEXT_PHONE_PREFIX','Telefon prefix','admin','',0),(797,1,'de','TEXT_PHPINFO','phpinfo','admin','',0),(798,1,'de','TEXT_PHRASE_ADDED_FOR','Sprachvariable angelegt für:','admin','',0),(799,1,'de','TEXT_PLG_BUY_LIC','Lizenz kaufen','admin','',0),(800,1,'de','TEXT_PLUGIN','Plugin','admin','',0),(801,1,'de','TEXT_PLUGINVERSION_AVAILABLE','Aktuelle Version:','admin','',0),(802,1,'de','TEXT_PLUGIN_CODE','Plugin Code','admin','',0),(803,1,'de','TEXT_PLUGIN_HOOKPOINTS','Hookpoints','admin','',0),(804,1,'de','TEXT_PLUGIN_ID','Plugin ID','admin','',0),(805,1,'de','TEXT_PLUGIN_INSTALLED','installierte Plugins','admin','',0),(806,1,'de','TEXT_PLUGIN_PAGE','Plugin page','admin','',0),(807,1,'de','TEXT_PLUGIN_STATUS','Plugin Status','admin','',0),(808,1,'de','TEXT_PLUGIN_UNINSTALLED','deinstallierte Plugins','admin','',0),(809,1,'de','TEXT_PLUGIN_UPDATE','Plugin update','admin','',0),(810,1,'de','TEXT_PLUGIN_UPDATE_TRANSLATIONS','Aktuelle Sprachinhalte für dieses Plugin vom xt:Commerce Server laden','admin','',0),(811,1,'de','TEXT_POST','Formular','admin','',0),(812,1,'de','TEXT_PREFIX','Prefix','admin','',0),(813,1,'de','TEXT_PRICE_FLAG_GRADUATED','Status Gruppenpreis','admin','',0),(814,1,'de','TEXT_PRICE_SAVING','Ersparnis','admin','',0),(815,1,'de','TEXT_PROCESS','Image Processing','admin','',0),(816,1,'de','TEXT_PROCESS_SEO','Suma URLs neu generieren','admin','',0),(817,1,'de','TEXT_PRODUCT','Artikel','admin','',0),(818,1,'de','TEXT_PRODUCTS','Artikel','admin','',0),(819,1,'de','TEXT_PRODUCTS_AVERAGE_QUANTITY','Lagerampel Durchschnittsbestand','admin','',0),(820,1,'de','TEXT_PRODUCTS_COUNT','Produkte Anzahl','admin','',0),(821,1,'de','TEXT_PRODUCTS_DESCRIPTION','Beschreibung','admin','',0),(822,1,'de','TEXT_PRODUCTS_DIGITAL','Digitaler Artikel','admin','',0),(823,1,'de','TEXT_PRODUCTS_EAN','EAN','admin','',0),(824,1,'de','TEXT_PRODUCTS_FINALPRICE','Artikel Gesamtpreis','admin','',0),(825,1,'de','TEXT_PRODUCTS_FSK18','FSK 18','admin','',0),(826,1,'de','TEXT_PRODUCTS_GROUP_PRICE','Kundengruppen / Staffelpreise','admin','',0),(827,1,'de','TEXT_PRODUCTS_ID','Artikel ID','admin','',0),(828,1,'de','TEXT_PRODUCTS_IMAGE','Bild','admin','',0),(829,1,'de','TEXT_PRODUCTS_IN_CATEGORY','Artikel','admin','',0),(830,1,'de','TEXT_PRODUCTS_KEYWORDS','weitere Suchbegriffe','admin','',0),(831,1,'de','TEXT_PRODUCTS_MASTER_MODEL','Master Artikelnummer','admin','',0),(832,1,'de','TEXT_PRODUCTS_MEDIA','Dateianhänge','admin','',0),(833,1,'de','TEXT_PRODUCTS_META_DESCRIPTION','Meta Beschreibung','admin','',0),(834,1,'de','TEXT_PRODUCTS_META_KEYWORDS','Meta Keywords','admin','',0),(835,1,'de','TEXT_PRODUCTS_META_TITLE','Meta Titel','admin','',0),(836,1,'de','TEXT_PRODUCTS_MODEL','Artikelnummer','admin','',0),(837,1,'de','TEXT_PRODUCTS_NAME','Artikelname','admin','',0),(838,1,'de','TEXT_PRODUCTS_NAME_STORE1','Artikelname','admin','',0),(839,1,'de','TEXT_PRODUCTS_NAME_STORE2','Artikelname','admin','',0),(840,1,'de','TEXT_PRODUCTS_NAME_STORE3','Artikelname','admin','',0),(841,1,'de','TEXT_PRODUCTS_NAME_STORE4','Artikelname','admin','',0),(842,1,'de','TEXT_PRODUCTS_NAME_STORE5','Artikelname','admin','',0),(843,1,'de','TEXT_PRODUCTS_OPTION_TEMPLATE','Template für Artikeloptionen','admin','',0),(844,1,'de','TEXT_PRODUCTS_ORDERED','Bestellte Artikel','admin','',0),(845,1,'de','TEXT_PRODUCTS_ORDER_PRICE','Kunden-Endpreis','admin','',0),(846,1,'de','TEXT_PRODUCTS_PREIS_FORMATED','Shop-Preis','admin','',0),(847,1,'de','TEXT_PRODUCTS_PRICE','Preis','admin','',0),(848,1,'de','TEXT_PRODUCTS_PRICE_GROSS','Preis brutto','admin','',0),(849,1,'de','TEXT_PRODUCTS_PRICE_NET','Preis netto','admin','',0),(850,1,'de','TEXT_PRODUCTS_QUANTITY','Bestand','admin','',0),(851,1,'de','TEXT_PRODUCTS_SHIPPINGTIME','Lieferzeit','admin','',0),(852,1,'de','TEXT_PRODUCTS_SHORT_DESCRIPTION','Kurzbeschreibung','admin','',0),(853,1,'de','TEXT_PRODUCTS_SINGLEPRICE','Artikel Einzelpreis','admin','',0),(854,1,'de','TEXT_PRODUCTS_SORT','Reihenfolge','admin','',0),(855,1,'de','TEXT_PRODUCTS_SORTING','Artikelsortierung nach','admin','',0),(856,1,'de','TEXT_PRODUCTS_SORTING2','Artikelsortierung Reihenfolge','admin','',0),(857,1,'de','TEXT_PRODUCTS_SPECIAL_PRICE','Sonderpreise','admin','',0),(858,1,'de','TEXT_PRODUCTS_STARTPAGE','Artikel auf Startseite anzeigen','admin','',0),(859,1,'de','TEXT_PRODUCTS_STARTPAGE_SORT','Reihenfolge auf Startseite','admin','',0),(860,1,'de','TEXT_PRODUCTS_STATS','Produkt Verkaufsstatistik','admin','',0),(861,1,'de','TEXT_PRODUCTS_STATUS','Status','admin','',0),(862,1,'de','TEXT_PRODUCTS_TAX','Artikel USt','admin','',0),(863,1,'de','TEXT_PRODUCTS_TAX_CLASS_ID','Steuerklasse','admin','',0),(864,1,'de','TEXT_PRODUCTS_TO_CATEGORIES','Kategoriezuweisung','admin','',0),(865,1,'de','TEXT_PRODUCTS_TO_MEDIA','Dateianhänge','admin','',0),(866,1,'de','TEXT_PRODUCTS_TO_MORE_CATEGORIES','Weitere Kategorien','admin','',0),(867,1,'de','TEXT_PRODUCTS_TYPE','Typ','admin','',0),(868,1,'de','TEXT_PRODUCTS_UNIT','Lagereinheit','admin','',0),(869,1,'de','TEXT_PRODUCTS_URL','Url','admin','',0),(870,1,'de','TEXT_PRODUCTS_VPE','Grundeinheit','admin','',0),(871,1,'de','TEXT_PRODUCTS_VPE_STATUS','Grundpreis anzeigen','admin','',0),(872,1,'de','TEXT_PRODUCTS_VPE_VALUE','Umrechnungsfaktor','admin','',0),(873,1,'de','TEXT_PRODUCTS_WEIGHT','Gewicht','admin','',0),(874,1,'de','TEXT_PRODUCT_IMAGE','Artikel Bild','admin','',0),(875,1,'de','TEXT_PRODUCT_LISTING','Artikel Listing','admin','',0),(876,1,'de','TEXT_PRODUCT_LIST_TEMPLATE','Artikellisting Template','admin','',0),(877,1,'de','TEXT_PRODUCT_MORE_DETAILS','Mehr Details','admin','',0),(878,1,'de','TEXT_PRODUCT_PRICE','Preis','admin','',0),(879,1,'de','TEXT_PRODUCT_SERIALS','Seriennummer','admin','',0),(880,1,'de','TEXT_PRODUCT_SP_PRICE','Sonderpreis','admin','',0),(881,1,'de','TEXT_PRODUCT_TAX','USt','admin','',0),(882,1,'de','TEXT_PRODUCT_TEMPLATE','Artikelinfo Template','admin','',0),(883,1,'de','TEXT_PRODUCT_TOTAL','Zwischensumme','admin','',0),(884,1,'de','TEXT_PRODUCT_TOTAL_OTAX','Zwischensummer netto','admin','',0),(885,1,'de','TEXT_PRODUCT_TO_MASTERCAT','Artikel Hauptkategorie','admin','',0),(886,1,'de','TEXT_PRODUCT_WINDOW','Artikelfenster','admin','',0),(887,1,'de','TEXT_PROJECT','Produkt (Project)','admin','',0),(888,1,'de','TEXT_QUANTITY','Lagerbestand','admin','',0),(889,1,'de','TEXT_QUANTITY_ORDERED','Bestellt','admin','',0),(890,1,'de','TEXT_QUANTITY_SOLD','Verkaufte Menge','admin','',0),(891,1,'de','TEXT_READONLY','Nicht Synchronisieren','admin','',0),(892,1,'de','TEXT_READ_MORE','Weiter lesen','admin','',0),(893,1,'de','TEXT_REDIRECT','Weiterleitungs URLs','admin','',0),(894,1,'de','TEXT_REDIRECT_404','404 URLs','admin','',0),(895,1,'de','TEXT_REDIRECT_DELETED','Gelöschte URLs','admin','',0),(896,1,'de','TEXT_REDUCE_STOCK','Bestand auffüllen','admin','',0),(897,1,'de','TEXT_REENABLE_DOWNLOAD','Downloadversuche zurücksetzen?','admin','',0),(898,1,'de','TEXT_REF_ID','Url Parameter','admin','',0),(899,1,'de','TEXT_RELOAD','Neu laden','admin','',0),(900,1,'de','TEXT_RELOAD_INFO','Bitte beachten Sie, dass Sie nachdem Sie diese Optionen angepasst und gespeichert haben den Administrationsbereich mit dem drücken der F5 Taste Ihrer tastatur neu laden müssen.','admin','',0),(901,1,'de','TEXT_RELOAD_ST','Daten von Store laden','admin','',0),(902,1,'de','TEXT_REPLACE_EXISTING','Phrasen überschreiben','admin','',0),(903,1,'de','TEXT_REPLACE_WORD','Ersetzen','admin','',0),(904,1,'de','TEXT_RESET','Suche zurücksetzen','admin','',0),(905,1,'de','TEXT_REVIEW_DATE','Review Datum','admin','',0),(906,1,'de','TEXT_REVIEW_ID','ID','admin','',0),(907,1,'de','TEXT_REVIEW_RATING','Bewertung','admin','',0),(908,1,'de','TEXT_REVIEW_STATUS','Review Status','admin','',0),(909,1,'de','TEXT_REVIEW_TEXT','Reviews Text','admin','',0),(910,1,'de','TEXT_REVIEW_TITLE','Review Titel','admin','',0),(911,1,'de','TEXT_RUNTIME','Laufzeit/Meldung','admin','',0),(912,1,'de','TEXT_RUN_EXPORT','Export starten','admin','',0),(913,1,'de','TEXT_RUN_INSTALL','Plugin updaten','admin','',0),(914,1,'de','TEXT_SAVE','Speichern','admin','',0),(915,1,'de','TEXT_SAVE_ALL','Alles Speichern','admin','',0),(916,1,'de','TEXT_SEARCH','Suchen:','admin','',0),(917,1,'de','TEXT_SEARCH_ENGINES','Metatags','admin','',0),(918,1,'de','TEXT_SEARCH_IMAGES','Bilder Suche','admin','',0),(919,1,'de','TEXT_SEARCH_KEYWORD','Such Phrase','admin','',0),(920,1,'de','TEXT_SEARCH_LAST_DATE','Anfragdatum','admin','',0),(921,1,'de','TEXT_SEARCH_REQUEST_COUNT','Anzahl der Anfragen','admin','',0),(922,1,'de','TEXT_SEARCH_RESULT_COUNT','Anzahl der Ergebnisse','admin','',0),(923,1,'de','TEXT_SECURITY','Sicherheit','admin','',0),(924,1,'de','TEXT_SELECT','Auswahl speichern?','admin','',0),(925,1,'de','TEXT_SELECTED_ITEMS','Auswahl','admin','',0),(926,1,'de','TEXT_SELECTION_MERGE','Kombinieren','admin','',0),(927,1,'de','TEXT_SELECTION_MINIFYMERGE','Minimieren & kombinieren','admin','',0),(928,1,'de','TEXT_SELECTION_SINGLE','Einzeln ausliefern','admin','',0),(929,1,'de','TEXT_SEO_COUNTRY','Server-Standort','admin','',0),(930,1,'de','TEXT_SEO_HELP','>> zur SEO-Hilfe und Begriffserklärung','admin','',0),(931,1,'de','TEXT_SEO_INDEXED_PAGES','Indexierte Seiten','admin','',0),(932,1,'de','TEXT_SEO_IP','Server IP','admin','',0),(933,1,'de','TEXT_SEO_KEYWORDS_TITLE','Keyword / Phrase','admin','',0),(934,1,'de','TEXT_SEO_KEYWORDS_TRAFFIC','Traffic','admin','',0),(935,1,'de','TEXT_SEO_NEBBLOCK_OWNER','Webhoster','admin','',0),(936,1,'de','TEXT_SEO_OPTIMIZATION_BOX_TITLE','SEO-Trend','admin','',0),(937,1,'de','TEXT_SEO_OPTIMIZATION_DOMAIN_INFO','SEO-Kennzahlen','admin','',0),(938,1,'de','TEXT_SEO_OPTIMIZATION_KEYWORDS_FORM_TEXT','Keyword-Recherche','admin','',0),(939,1,'de','TEXT_SEO_OPTIMIZATION_TITLE','SEO','admin','',0),(940,1,'de','TEXT_SEO_PAGERANK','Pagerank','admin','',0),(941,1,'de','TEXT_SEO_PLUGINS','Plugin-Meta-Daten','admin','',0),(942,1,'de','TEXT_SEO_REGENERATE','SEO Urls neu generieren','admin','',0),(943,1,'de','TEXT_SEO_STATIC_VISIBILITY','Sichtbarkeit der Domain','admin','',0),(944,1,'de','TEXT_SEO_STATIC_VISIBILITY_CHANGES','Sichtbarkeite Veränderung','admin','',0),(945,1,'de','TEXT_SERIAL_ID','ID','admin','',0),(946,1,'de','TEXT_SESSION_RIGHTS','Session','admin','',0),(947,1,'de','TEXT_SETLOCALE','Setlocale','admin','',0),(948,1,'de','TEXT_SET_ALL_RIGHTS','Alle Berechtigungen freischalten','admin','',0),(949,1,'de','TEXT_SET_RIGHTS','Gruppen Berechtigungen','admin','',0),(950,1,'de','TEXT_SHIPPING','Versandkosten','admin','',0),(951,1,'de','TEXT_SHIPPING_ADDRESS','Lieferadresse','admin','',0),(952,1,'de','TEXT_SHIPPING_ALLOWED','Versand erlaubt','admin','',0),(953,1,'de','TEXT_SHIPPING_CODE','Versand Code','admin','',0),(954,1,'de','TEXT_SHIPPING_COST_ID','Versand ID','admin','',0),(955,1,'de','TEXT_SHIPPING_COUNTRY_CODE','Versand Land','admin','',0),(956,1,'de','TEXT_SHIPPING_DESC','Versand Beschreibung','admin','',0),(957,1,'de','TEXT_SHIPPING_DIR','Verzeichnis','admin','',0),(958,1,'de','TEXT_SHIPPING_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(959,1,'de','TEXT_SHIPPING_EMAIL_DESC_TXT','E-Mail Text (txt)','admin','',0),(960,1,'de','TEXT_SHIPPING_GEO_ZONE','Versand Zone','admin','',0),(961,1,'de','TEXT_SHIPPING_ICON','Icon','admin','',0),(962,1,'de','TEXT_SHIPPING_ID','Versand ID','admin','',0),(963,1,'de','TEXT_SHIPPING_NAME','Versand Bezeichnung','admin','',0),(964,1,'de','TEXT_SHIPPING_PERMISSION','Versandarten','admin','',0),(965,1,'de','TEXT_SHIPPING_PERMISSION_INFO','Hinweis','admin','',0),(966,1,'de','TEXT_SHIPPING_PRICE','Versandpreis','admin','',0),(967,1,'de','TEXT_SHIPPING_STATUS','Lieferzeit','admin','',0),(968,1,'de','TEXT_SHIPPING_TAX_CLASS','Steuerklasse','admin','',0),(969,1,'de','TEXT_SHIPPING_TPL','Template','admin','',0),(970,1,'de','TEXT_SHIPPING_TYPE','Berechnungsgrundlage','admin','',0),(971,1,'de','TEXT_SHIPPING_TYPE_VALUE_FROM','von','admin','',0),(972,1,'de','TEXT_SHIPPING_TYPE_VALUE_TO','bis','admin','',0),(973,1,'de','TEXT_SHIPPING_UNALLOWED','Nicht erlaubte Versandarten','admin','',0),(974,1,'de','TEXT_SHIPPING_ZONE','Versandzonen','admin','',0),(975,1,'de','TEXT_SHOP','Shop','admin','',0),(976,1,'de','TEXT_SHOPPING_CART','Warenkorb','admin','',0),(977,1,'de','TEXT_SHOPPING_CART_ADDED','Zu Warenkörben hinzugefügt','admin','',0),(978,1,'de','TEXT_SHOPPING_CART_CHECKOUT','Abgeschlossene Warenkörbe','admin','',0),(979,1,'de','TEXT_SHOPPING_CART_NOT_CHECKOUT','Nicht abgeschlossene Warenkörbe','admin','',0),(980,1,'de','TEXT_SHOP_ADD','Neuer Mandant','admin','',0),(981,1,'de','TEXT_SHOP_DOMAIN','Shop Domain','admin','',0),(982,1,'de','TEXT_SHOP_EDIT','Mandant bearbeiten','admin','',0),(983,1,'de','TEXT_SHOP_HTTP','Url http','admin','',0),(984,1,'de','TEXT_SHOP_HTTPS','Url https','admin','',0),(985,1,'de','TEXT_SHOP_ID','Shop','admin','',0),(986,1,'de','TEXT_SHOP_PERMISSION_INFO','Hinweis','admin','',0),(987,1,'de','TEXT_SHOP_SSL','SSL','admin','',0),(988,1,'de','TEXT_SHOP_SSL_DOMAIN','SSL Domain','admin','',0),(989,1,'de','TEXT_SHOP_STATUS','Status','admin','',0),(990,1,'de','TEXT_SHOP_TITLE','Shop Admin-Titel','admin','',0),(991,1,'de','TEXT_SIMPLE_UPLOAD','einfacher Dateiupload','admin','',0),(992,1,'de','TEXT_SIMPLE_WYSIWYG','Einfacher Html Editor','admin','',0),(993,1,'de','TEXT_SITEMAP','sitemap','admin','',0),(994,1,'de','TEXT_SORTING','Sortierung','admin','',0),(995,1,'de','TEXT_SORTORDER','Reihenfolge','admin','',0),(996,1,'de','TEXT_SORT_DOWN','Abwärts','admin','',0),(997,1,'de','TEXT_SORT_ORDER','Reihenfolge','admin','',0),(998,1,'de','TEXT_SORT_UP','Aufwärts','admin','',0),(999,1,'de','TEXT_SPECIALS_PRICE','Angebotspreis','admin','',0),(1000,1,'de','TEXT_START','Starten','admin','',0),(1001,1,'de','TEXT_STARTPAGE','Artikel auf Startseite anzeigen','admin','',0),(1002,1,'de','TEXT_START_ASK','Vorgang starten ?','admin','',0),(1003,1,'de','TEXT_STATES_CODE','Bundesland code','admin','',0),(1004,1,'de','TEXT_STATES_ID','Bundesland id','admin','',0),(1005,1,'de','TEXT_STATE_NAME','Bundesland Name','admin','',0),(1006,1,'de','TEXT_STATS_SALES','Verkäufe','admin','',0),(1007,1,'de','TEXT_STATS_TOTAL_ORDERS','Gesamt','admin','',0),(1008,1,'de','TEXT_STATUS','Status','admin','',0),(1009,1,'de','TEXT_STATUS_CLASS','Status Klasse','admin','',0),(1010,1,'de','TEXT_STATUS_ID','Status ID','admin','',0),(1011,1,'de','TEXT_STATUS_IMAGE','Status Icon','admin','',0),(1012,1,'de','TEXT_STATUS_NAME','Status Name','admin','',0),(1013,1,'de','TEXT_STATUS_VALUES','Werte','admin','',0),(1014,1,'de','TEXT_STOCK_OPTIONS','Lagerverwaltung','admin','',0),(1015,1,'de','TEXT_STOCK_RULE','Lagerampel','admin','',0),(1016,1,'de','TEXT_STOPWORD_LOOKUP','Suchen','admin','',0),(1017,1,'de','TEXT_STOPWORD_REPLACEMENT','Zeichen Ersetzen','admin','',0),(1018,1,'de','TEXT_STOP_WORDS','SEO Stopwords','admin','',0),(1019,1,'de','TEXT_STOP_WORD_ID','ID','admin','',0),(1020,1,'de','TEXT_STORE','Shop','admin','',0),(1021,1,'de','TEXT_STORES','Mandanten','admin','',0),(1022,1,'de','TEXT_STORES_ADD_NEW','Mandant hinzufügen','admin','',0),(1023,1,'de','TEXT_STORE_ACCOUNT_COMPANY','Firma','admin','',0),(1024,1,'de','TEXT_STORE_ACCOUNT_COMPANY_VAT_CHECK','USt ID','admin','',0),(1025,1,'de','TEXT_STORE_ACCOUNT_DOB','Geburtsdatum','admin','',0),(1026,1,'de','TEXT_STORE_ACCOUNT_DOB_FORMAT','Datumsformat (d=Tag; y=Jahr)','admin','',0),(1027,1,'de','TEXT_STORE_ACCOUNT_FEDERAL_STATES','Bundesländer','admin','',0),(1028,1,'de','TEXT_STORE_ACCOUNT_GENDER','Geschlecht','admin','',0),(1029,1,'de','TEXT_STORE_ACCOUNT_SUBURB','Vorort','admin','',0),(1030,1,'de','TEXT_STORE_ADDRESS_BOOK_ENTRIES','Anzahl Adressbucheinträge','admin','',0),(1031,1,'de','TEXT_STORE_ALLOW_DECIMAL_QUANTITIY','erlaube Kommastellen im Warenkorb','admin','',0),(1032,1,'de','TEXT_STORE_ALLOW_GUEST_ORDERS','Gastbestellungen erlauben','admin','',0),(1033,1,'de','TEXT_STORE_CAPTCHA','Captcha','admin','',0),(1034,1,'de','TEXT_STORE_CITY_MIN_LENGTH','Mindest Länge Stadt','admin','',0),(1035,1,'de','TEXT_STORE_CLAIM','Shop Claim','admin','',0),(1036,1,'de','TEXT_STORE_COMPANY_MIN_LENGTH','Firma mindest länge','admin','',0),(1037,1,'de','TEXT_STORE_CONTACT_EMAIL','Empfänger - Kontaktformular','admin','',0),(1038,1,'de','TEXT_STORE_COUNTRY','Land','admin','',0),(1039,1,'de','TEXT_STORE_CREATED','Der Mandant wurde erstellt, bitte laden Sie den Adminbereich mit der F5 Taste neu.','admin','',0),(1040,1,'de','TEXT_STORE_CURRENCY','Währung','admin','',0),(1041,1,'de','TEXT_STORE_CUSTOMERS_STATUS_ID','Kundengruppe','admin','',0),(1042,1,'de','TEXT_STORE_CUSTOMERS_STATUS_ID_GUEST','Kundengruppe Gast','admin','',0),(1043,1,'de','TEXT_STORE_DATA','Mandant','admin','',0),(1044,1,'de','TEXT_STORE_DEFAULT_MOBILE_TEMPLATE','Mobiles Template','admin','',0),(1045,1,'de','TEXT_STORE_DEFAULT_ORDER_STATUS','Standard Bestellstatus','admin','',0),(1046,1,'de','TEXT_STORE_DEFAULT_TEMPLATE','Template','admin','',0),(1047,1,'de','TEXT_STORE_DIGITALCOND_CHECK','Zustimmung zum Beginn der Ausführung des Vertrages und Bestätigung der Kenntnisnahme über Verlust des Widerrufsrechts bei digitalen Produkten','admin','',0),(1048,1,'de','TEXT_STORE_EMAIL_ADDRESS_MIN_LENGTH','Mindest Länge Mailadresse','admin','',0),(1049,1,'de','TEXT_STORE_EMAIL_FOOTER_HTML','E-Mail Footer (html)','admin','',0),(1050,1,'de','TEXT_STORE_EMAIL_FOOTER_TXT','E-Mail Footer (txt)','admin','',0),(1051,1,'de','TEXT_STORE_FAVICON','Shop-Favicon','admin','',0),(1052,1,'de','TEXT_STORE_FAX_MIN_LENGTH','Fax mindest länge','admin','',0),(1053,1,'de','TEXT_STORE_FIRST_NAME_MIN_LENGTH','Mindest Länge Vorname','admin','',0),(1054,1,'de','TEXT_STORE_ID','Mandanten ID','admin','',0),(1055,1,'de','TEXT_STORE_IMAGES_PATH_FULL','Bilder absoluter Pfad','admin','',0),(1056,1,'de','TEXT_STORE_JQUERY_ACTIVATE','jQuery Bibliothek laden','admin','',0),(1057,1,'de','TEXT_STORE_JQUERY_CDN','jQuery CDN','admin','',0),(1058,1,'de','TEXT_STORE_JQUERY_VERSION','jQuery Version','admin','',0),(1059,1,'de','TEXT_STORE_LANGUAGE','Sprache','admin','',0),(1060,1,'de','TEXT_STORE_LAST_NAME_MIN_LENGTH','Mindest Länge Nachname','admin','',0),(1061,1,'de','TEXT_STORE_LOGO','Shop-Logo','admin','',0),(1062,1,'de','TEXT_STORE_MAX_CATEGORIES_PER_ROW','Max Kategorien pro Reihe','admin','',0),(1063,1,'de','TEXT_STORE_META_AUTHOR','Autor','admin','',0),(1064,1,'de','TEXT_STORE_META_COMPANY','Firma','admin','',0),(1065,1,'de','TEXT_STORE_META_DESCRIPTION','Meta Description (Startseite)','admin','',0),(1066,1,'de','TEXT_STORE_META_DOCTYPE_HTML','HTML Version','admin','',0),(1067,1,'de','TEXT_STORE_META_FREE_META','Freie Metatags','admin','',0),(1068,1,'de','TEXT_STORE_META_KEYWORDS','Meta Keywords (Startseite)','admin','',0),(1069,1,'de','TEXT_STORE_META_PAGINATION_ROBOTS','Robots-Pagination','admin','',0),(1070,1,'de','TEXT_STORE_META_PUBLISHER','Publisher','admin','',0),(1071,1,'de','TEXT_STORE_META_REPLY_TO','Reply to','admin','',0),(1072,1,'de','TEXT_STORE_META_REVISIT_AFTER','Neu Indexierung','admin','',0),(1073,1,'de','TEXT_STORE_META_ROBOTS','Robots','admin','',0),(1074,1,'de','TEXT_STORE_META_TOPIC','Topic','admin','',0),(1075,1,'de','TEXT_STORE_MOBILE_ACTIVATE','Mobiles Template aktivieren','admin','',0),(1076,1,'de','TEXT_STORE_MOBILE_PHONE_MIN_LENGTH','Mindest Länge Handy','admin','',0),(1077,1,'de','TEXT_STORE_MOBILE_SWITCH_METHOD','Mobile erkennung','admin','',0),(1078,1,'de','TEXT_STORE_NAME','Shop Titel','admin','',0),(1079,1,'de','TEXT_STORE_PASSWORD_MIN_LENGTH','Mindest Länge Passwort','admin','',0),(1080,1,'de','TEXT_STORE_POSTCODE_MIN_LENGTH','Mindest Länge Postleitzahl','admin','',0),(1081,1,'de','TEXT_STORE_PRODUCT_DOWNLOAD_PUBLIC_ALLOWED','Freie Downloads ohne Login','admin','',0),(1082,1,'de','TEXT_STORE_PRODUCT_LIST_RESULTS','Anzahl Artikel pro Seite','admin','',0),(1083,1,'de','TEXT_STORE_PRODUCT_NO_PICTURE','Kein bild','admin','',0),(1084,1,'de','TEXT_STORE_SEARCH_RESULTS','Anzahl Suchergebnisse pro Seite','admin','',0),(1085,1,'de','TEXT_STORE_SHOPOWNER_CEO','Vertretungsberechtigter','admin','',0),(1086,1,'de','TEXT_STORE_SHOPOWNER_CITY','Stadt','admin','',0),(1087,1,'de','TEXT_STORE_SHOPOWNER_COMPANY','Firma','admin','',0),(1088,1,'de','TEXT_STORE_SHOPOWNER_FAX','Fax','admin','',0),(1089,1,'de','TEXT_STORE_SHOPOWNER_STREETADDRESS','Strasse/Hausnummer','admin','',0),(1090,1,'de','TEXT_STORE_SHOPOWNER_TELEPHONE','Telefon','admin','',0),(1091,1,'de','TEXT_STORE_SHOPOWNER_VATID','Umsatzsteuer ID','admin','',0),(1092,1,'de','TEXT_STORE_SHOPOWNER_ZIP','Postleitzahl','admin','',0),(1093,1,'de','TEXT_STORE_SHOW_PHONE_PREFIX','Show Telefon Prefix-Feld','admin','',0),(1094,1,'de','TEXT_STORE_SMTP_AUTH','SMTP Auth','admin','',0),(1095,1,'de','TEXT_STORE_SMTP_HOST','SMTP Host','admin','',0),(1096,1,'de','TEXT_STORE_SMTP_PASSWORD','SMTP Passwort','admin','',0),(1097,1,'de','TEXT_STORE_SMTP_PORT','SMTP Port','admin','',0),(1098,1,'de','TEXT_STORE_SMTP_SECURE','SMTP Security','admin','',0),(1099,1,'de','TEXT_STORE_SMTP_USERNAME','SMTP User','admin','',0),(1100,1,'de','TEXT_STORE_STOCK_CHECK_BUY','Einkauf nicht vorrätiger Ware','admin','',0),(1101,1,'de','TEXT_STORE_STOCK_CHECK_DISPLAY','Nicht verfügbare anzeigen','admin','',0),(1102,1,'de','TEXT_STORE_STORE_CLAIM','Shop-Slogan','admin','',0),(1103,1,'de','TEXT_STORE_STREET_ADDRESS_MIN_LENGTH','Mindest Länge Strasse','admin','',0),(1104,1,'de','TEXT_STORE_TABLET_IS_MOBILE','Tabler als Mobile behandeln','admin','',0),(1105,1,'de','TEXT_STORE_TELEPHONE_MIN_LENGTH','Mindest Länge Telefon','admin','',0),(1106,1,'de','TEXT_STORE_TEMPLATE','Template','admin','',0),(1107,1,'de','TEXT_STORE_TEMPLATE_CATEGORY_LISTING','Template Kategorielisting','admin','',0),(1108,1,'de','TEXT_STORE_TEMPLATE_PRODUCT_LIST','Template Produkt Listing (einzelnes Produkt)','admin','',0),(1109,1,'de','TEXT_STORE_TEMPLATE_PRODUCT_LISTING','Template Produktlisting','admin','',0),(1110,1,'de','TEXT_STORE_TEMPLATE_PRODUCT_LISTING_MANUFACTURERS','Template Herstellerlisting','admin','',0),(1111,1,'de','TEXT_STORE_TEMPLATE_PRODUCT_SEARCH_RESULT','Template Produktsuche','admin','',0),(1112,1,'de','TEXT_STORE_TERMSCOND_CHECK','AGB müssen akzeptiert werden','admin','',0),(1113,1,'de','TEXT_STORE_TPL_LISTING_COLUMNS','Artikelspalten (xt_grid)','admin','',0),(1114,1,'de','TEXT_STORE_VAT_CHANGE_CLIENT_GROUP_ON_VAT_CHANGE','Kundengruppe bei Änderung der VAT-ID anpassen','admin','',0),(1115,1,'de','TEXT_STORE_VAT_CHECK_BLOCK','falsch/ungeprüft blocken','admin','',0),(1116,1,'de','TEXT_STORE_VAT_CHECK_LIVE','Live-Check aktiv','admin','',0),(1117,1,'de','TEXT_STORE_VAT_CHECK_MOVE','Kundengruppe anpassen','admin','',0),(1118,1,'de','TEXT_STORE_VAT_CHECK_STATUS','Check aktiv','admin','',0),(1119,1,'de','TEXT_STORE_VAT_CHECK_STATUS_IN','Mit USt-ID (Inland)','admin','',0),(1120,1,'de','TEXT_STORE_VAT_CHECK_STATUS_OUT','Mit USt-ID (Ausland)','admin','',0),(1121,1,'de','TEXT_STORE_VAT_CHECK_TYPE','Check typ','admin','',0),(1122,1,'de','TEXT_STORE_ZONE','Zone','admin','',0),(1123,1,'de','TEXT_SUCCESS','Erfolg','admin','',0),(1124,1,'de','TEXT_SUCCESS_DELETE_CATEGORY','Kategorie erfolgreich gelöscht','admin','',0),(1125,1,'de','TEXT_SUCCESS_DELETE_CUSTOM_LINK','Link wurde erfolgreich gelöscht','admin','',0),(1126,1,'de','TEXT_SUCCESS_DELETE_SHOP','Mandant erfolgreich gelöscht.','admin','',0),(1127,1,'de','TEXT_SUFFIX','Suffix','admin','',0),(1128,1,'de','TEXT_SUPPORTCENTER','Helpdesk','admin','',0),(1129,1,'de','TEXT_SYSTEMROOT','System','admin','',0),(1130,1,'de','TEXT_SYSTEM_ADMIN_FILTER','Admin Filter','admin','',0),(1131,1,'de','TEXT_SYSTEM_ADMIN_PAGE_SIZE','Items pro Seite','admin','',0),(1132,1,'de','TEXT_SYSTEM_ADMIN_PERMISSIONS','Admin Rechte','admin','',0),(1133,1,'de','TEXT_SYSTEM_ADMIN_RIGHTS','Admin Rechte Verwaltung','admin','',0),(1134,1,'de','TEXT_SYSTEM_AUTOLOAD','Lade Dropdowns automatisch vor','admin','',0),(1135,1,'de','TEXT_SYSTEM_BACKEND_THEME','Backend Theme','admin','',0),(1136,1,'de','TEXT_SYSTEM_CSS_CACHE_TIME','CSS Cache Zeit (Sekunden)','admin','',0),(1137,1,'de','TEXT_SYSTEM_CSS_MINIFY_OPTION','CSS minify','admin','',0),(1138,1,'de','TEXT_SYSTEM_DEBUG','Debug Status','admin','',0),(1139,1,'de','TEXT_SYSTEM_FILE_COUNT','Anzahl gleichzeitiger Dateiupload','admin','',0),(1140,1,'de','TEXT_SYSTEM_FILE_SIZE','Maximale Dateigröße: (MB nur für Flashupload)','admin','',0),(1141,1,'de','TEXT_SYSTEM_FILE_SORT','Datei Sortierung','admin','',0),(1142,1,'de','TEXT_SYSTEM_GROUP_CHECK','Kundengruppen Check','admin','',0),(1143,1,'de','TEXT_SYSTEM_GROUP_PERMISSIONS','Kundengruppen Rechte','admin','',0),(1144,1,'de','TEXT_SYSTEM_HIDE_SUMAURL','Sperre SEO-URL manuell bearbeiten','admin','',0),(1145,1,'de','TEXT_SYSTEM_IMAGE_CHOOSER','Benutze Media Manager für Bildauswahl','admin','',0),(1146,1,'de','TEXT_SYSTEM_IMG_QUALITY','Bildqualität','admin','',0),(1147,1,'de','TEXT_SYSTEM_IMG_SHRINK_ONLY','Thumbnails nicht vergrößern','admin','',0),(1148,1,'de','TEXT_SYSTEM_JS_CACHE_TIME','Javascript Cache Zeit (Sekunden)','admin','',0),(1149,1,'de','TEXT_SYSTEM_JS_MINIFY_OPTION','Javascript minify','admin','',0),(1150,1,'de','TEXT_SYSTEM_MAIL_DEBUG','E-Mail Debug','admin','',0),(1151,1,'de','TEXT_SYSTEM_MAIL_TYPE','E-Mail System','admin','',0),(1152,1,'de','TEXT_SYSTEM_METATAGS_AUTOGENERATE','Meta-keywords automatisch generieren?','admin','',0),(1153,1,'de','TEXT_SYSTEM_METATAGS_MAXCOUNT','Meta Keywords - max. Wörter','admin','',0),(1154,1,'de','TEXT_SYSTEM_METATAGS_MAXLENGTH','Meta Keywords - max Zeichen','admin','',0),(1155,1,'de','TEXT_SYSTEM_METATAGS_WORDLENGTH','Meta Keywords - min. Wortlänge','admin','',0),(1156,1,'de','TEXT_SYSTEM_METATAGS_WORDS_COUNTER','Metatag Wörterzähler','admin','',0),(1157,1,'de','TEXT_SYSTEM_MOBILE_TEMPLATE','Mobiles Standard Template','admin','',0),(1158,1,'de','TEXT_SYSTEM_MOD_REWRITE','Mod Rewrite URL','admin','',0),(1159,1,'de','TEXT_SYSTEM_MOD_REWRITE_404','404 Seite bei falscher URL','admin','',0),(1160,1,'de','TEXT_SYSTEM_MOD_REWRITE_DEFAULT','SEO-URLs für Seiten (pages)','admin','',0),(1161,1,'de','TEXT_SYSTEM_MOD_REWRITE_NO_DUPLICATE_URLS','Weiterleitung auf exakte URL erzwingen','admin','',0),(1162,1,'de','TEXT_SYSTEM_MORE_PRODUCT_IMAGES','Zusätzliche Artikelbilder','admin','',0),(1163,1,'de','TEXT_SYSTEM_ORDER_EDIT_ALLOW_NEGATIVE_STOCK','Verkauf nicht vorrätiger Waren','admin','',0),(1164,1,'de','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_IN_FRONTEND','Neue Bestellung im Shop-Frontend anlegen','admin','',0),(1165,1,'de','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_ORDER_SOURCE','Bestellweg neuer Bestellungen','admin','',0),(1166,1,'de','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_PAYMENT','Zahlungsart neuer Bestellungen','admin','',0),(1167,1,'de','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_SHIPPING','Lieferart neuer Bestellungen','admin','',0),(1168,1,'de','TEXT_SYSTEM_ORDER_EDIT_SHOW_ORDER_EDITOR_COLUMN','Spalte &quot;Bearbeitet von&quot; anzeigen','admin','',0),(1169,1,'de','TEXT_SYSTEM_ORDER_EDIT_USE_CUSTOMER_CURRENCY','Kundenwährung verwenden','admin','',0),(1170,1,'de','TEXT_SYSTEM_PRODUCT_COPY_PREFIX','Markierung einer Kopie (Artikel)','admin','',0),(1171,1,'de','TEXT_SYSTEM_SAVEBUTTON_POSITION','Speichern button','admin','',0),(1172,1,'de','TEXT_SYSTEM_SAVE_IP','IP Adressen speichern','admin','',0),(1173,1,'de','TEXT_SYSTEM_SEARCH_SPLIT','Suchanfragen trennen','admin','',0),(1174,1,'de','TEXT_SYSTEM_SENDMAIL_PATH','Pfad zu Sendmail','admin','',0),(1175,1,'de','TEXT_SYSTEM_SEO_FILE_TYPE','Dateiendung der SEO-URLs','admin','',0),(1176,1,'de','TEXT_SYSTEM_SEO_PRODUCTS_CATEGORIES','Produkt-URLS mit Kategorien','admin','',0),(1177,1,'de','TEXT_SYSTEM_SEO_URL_LANG_BASED','Sprachabh&amp;ngige SEO-URLs','admin','',0),(1178,1,'de','TEXT_SYSTEM_SHIPPING_STATUS','Lieferzeit anzeigen','admin','',0),(1179,1,'de','TEXT_SYSTEM_SHOW_OVERLOAD_MESSAGE','Show overload message','admin','',0),(1180,1,'de','TEXT_SYSTEM_SIMPLE_GROUP_PERMISSIONS','Einfache Rechteverwaltung','admin','',0),(1181,1,'de','TEXT_SYSTEM_SRV_WEBROOT_PREFIX','Download Pfadpräfix','admin','',0),(1182,1,'de','TEXT_SYSTEM_STATUS','Systemstatus','admin','',0),(1183,1,'de','TEXT_SYSTEM_STOCK_HANDLING','Lagerverwaltung','admin','',0),(1184,1,'de','TEXT_SYSTEM_STOCK_RULES','Lagerampel anzeigen','admin','',0),(1185,1,'de','TEXT_SYSTEM_TEMPLATE','Standard Template','admin','',0),(1186,1,'de','TEXT_SYSTEM_UPLOAD_TYPE','Art des Dateiuploads','admin','',0),(1187,1,'de','TEXT_SYSTEM_USE_DB_HOOKS','Datenbank Hooks verwenden','admin','',0),(1188,1,'de','TEXT_SYSTEM_USE_PRICE','Brutto Admin','admin','',0),(1189,1,'de','TEXT_SYSTEM_USE_WYSIWYG','HTML Editor','admin','',0),(1190,1,'de','TEXT_TAX','Steuersätze','admin','',0),(1191,1,'de','TEXT_TAX_CLASS','Steuerklasse','admin','',0),(1192,1,'de','TEXT_TAX_CLASS_ID','Steuerklasse ID','admin','',0),(1193,1,'de','TEXT_TAX_CLASS_TITLE','Steuerklasse Bezeichnung','admin','',0),(1194,1,'de','TEXT_TAX_EXC','Netto','admin','',0),(1195,1,'de','TEXT_TAX_INC','Brutto','admin','',0),(1196,1,'de','TEXT_TAX_RATE','Steuersatz','admin','',0),(1197,1,'de','TEXT_TAX_RATES_ID','Steuersatz ID','admin','',0),(1198,1,'de','TEXT_TAX_RATE_COUNTRIES','Länder','admin','',0),(1199,1,'de','TEXT_TAX_ZONE_ID','Zone ID','admin','',0),(1200,1,'de','TEXT_TEMPLATE','Template','admin','',0),(1201,1,'de','TEXT_TEMPLATES_NAV','Template','admin','',0),(1202,1,'de','TEXT_THOUSANDS_SEP','Tausender Trenner','admin','',0),(1203,1,'de','TEXT_TINY_WYSIWYG','Tiny MCE','admin','',0),(1204,1,'de','TEXT_TITLE','Titel','admin','',0),(1205,1,'de','TEXT_TMPL','Optionsgruppen Template','admin','',0),(1206,1,'de','TEXT_TO','bis','admin','',0),(1207,1,'de','TEXT_TODAY','Heute','admin','',0),(1208,1,'de','TEXT_TOP_CATEGORY','Top Kategorie','admin','',0),(1209,1,'de','TEXT_TOTAL','Gesamt Summe','admin','',0),(1210,1,'de','TEXT_TOTAL_COUNT','Anzahl (gesamt)','admin','',0),(1211,1,'de','TEXT_TOTAL_DOWNLOADS','Downloads','admin','',0),(1212,1,'de','TEXT_TOTAL_OTAX','Summe Netto','admin','',0),(1213,1,'de','TEXT_TPL_ID','Mail Template ID','admin','',0),(1214,1,'de','TEXT_TPL_SPECIAL','Template Special','admin','',0),(1215,1,'de','TEXT_TPL_TYPE','Type','admin','',0),(1216,1,'de','TEXT_TRANSACTION_ID','Transaktions ID','admin','',0),(1217,1,'de','TEXT_TRANSLATED','Übersetzt','admin','',0),(1218,1,'de','TEXT_TRASH','Papierkorb','admin','',0),(1219,1,'de','TEXT_TRIGGERED_BY','Von','admin','',0),(1220,1,'de','TEXT_TRUE','ja','admin','',0),(1221,1,'de','TEXT_TYPE','Modulklasse','admin','',0),(1222,1,'de','TEXT_UNASIGNED_CATS','Nicht zugewiesenen Kategorien','admin','',0),(1223,1,'de','TEXT_UNSET_ALL_RIGHTS','Alle Berechtigungen entfernen','admin','',0),(1224,1,'de','TEXT_UPDATESUNTIL','Updates bis (Update until)','admin','',0),(1225,1,'de','TEXT_UPDATE_INFO','','admin','',0),(1226,1,'de','TEXT_UPDATE_NO','xt:Commerce VEYTON %s ist auf aktuellem Stand, kein Update erforderlich.','admin','',0),(1227,1,'de','TEXT_UPDATE_PLUGIN','Plugin-Update wird durchgeführt','admin','',0),(1228,1,'de','TEXT_UPDATE_PLUGIN_LOCAL_VERSION','Für folgendes Plugin ist ein neuere Version verfügbar:','admin','',0),(1229,1,'de','TEXT_UPDATE_PLUGIN_MIN_UPDATE_SCRIPT','Die Updatefunktion steht für dieses Plugin ab Version %s  bereit. Das Update wurde abgebrochen, bitte spielen Sie die Ursprünglichen Dateien wieder in den Shop ein.','admin','',0),(1230,1,'de','TEXT_UPDATE_PLUGIN_UPDATED_SCRIPT','Database update script was executed to update plugin from version %s to version %s','admin','',0),(1231,1,'de','TEXT_UPDATE_TRANSLATIONS','Sprachinhalte aktuslisieren','admin','',0),(1232,1,'de','TEXT_UPDATE_VERSION_MIN_INFO','Die Pluginversion %s welche Sie derzeit installiert haben unterstützt das automatische Pluginupdate noch nicht, bitte führen Sie ein Update auf Version %s manuell durch um diese Funktion zu nutzen','admin','',0),(1233,1,'de','TEXT_UPDATE_YES','Für xt:Commerce VEYTON %s ist ein Update auf Version %s Verfügbar. Bitte aktualisieren sie ihre Version.','admin','',0),(1234,1,'de','TEXT_UPLOAD','Datei Upload','admin','',0),(1235,1,'de','TEXT_UPLOADING','Status Upload','admin','',0),(1236,1,'de','TEXT_UPLOAD_CANCEL','Upload abbrechen','admin','',0),(1237,1,'de','TEXT_UPLOAD_ERROR','Upload nicht erfolgreich','admin','',0),(1238,1,'de','TEXT_UPLOAD_FILES','Datei und Bildupload','admin','',0),(1239,1,'de','TEXT_UPLOAD_PLUGIN','Sie k&ouml;nnen nun &uuml;ber ihren FTP-Client das Plugin in das Verzeichnis <b>%s</b> hochladen','admin','',0),(1240,1,'de','TEXT_UPLOAD_START','Dateiordner durchsuchen','admin','',0),(1241,1,'de','TEXT_UPLOAD_SUBMIT','Datei hochladen','admin','',0),(1242,1,'de','TEXT_UPLOAD_SUCCESS','Upload erfolgreich','admin','',0),(1243,1,'de','TEXT_UPLOAD_TIP','Tip: nutze STRG - Taste im Dateibrowser, um mehrere Dateien zu markieren.','admin','',0),(1244,1,'de','TEXT_URL','Plugin Hersteller URL','admin','',0),(1245,1,'de','TEXT_URL_TEXT','Suma URL','admin','',0),(1246,1,'de','TEXT_URL_TEXT_REDIRECT','Umleitungs URL','admin','',0),(1247,1,'de','TEXT_URL_TYPE','Url Typ','admin','',0),(1248,1,'de','TEXT_URL_TYPE_TEXT','Url Typ','admin','',0),(1249,1,'de','TEXT_USER_ID','Benutzer ID','admin','',0),(1250,1,'de','TEXT_USER_PASSWORD','Passwort','admin','',0),(1251,1,'de','TEXT_USE_SHIPPING_ZONE','Versandzonen','admin','',0),(1252,1,'de','TEXT_VALUE','Wert','admin','',0),(1253,1,'de','TEXT_VALUE_MULTIPLICATOR','Multiplikator','admin','',0),(1254,1,'de','TEXT_VAT_CHECK_COMPLEX','Komplex','admin','',0),(1255,1,'de','TEXT_VAT_CHECK_LIVE','Live','admin','',0),(1256,1,'de','TEXT_VAT_CHECK_SIMPLE','Einfach','admin','',0),(1257,1,'de','TEXT_VAT_ID_OPTIONS','USt-ID Optionen','admin','',0),(1258,1,'de','TEXT_VERSION','Plugin Version','admin','',0),(1259,1,'de','TEXT_VIRTUAL_FOLDER','Virtueller Ordner','admin','',0),(1260,1,'de','TEXT_VISIBLE','Für Kunden Sichtbar','admin','',0),(1261,1,'de','TEXT_VISIBLE_ADMIN','Für Admin Sichtbar','admin','',0),(1262,1,'de','TEXT_WATERMARK','Wasserzeichen','admin','',0),(1263,1,'de','TEXT_WEEK','Woche','admin','',0),(1264,1,'de','TEXT_WHITELIST','Whitelist','admin','',0),(1265,1,'de','TEXT_WHITELIST_PERMISSIONS','(Auswählen zum Anzeigen)','admin','',0),(1266,1,'de','TEXT_WHITELIST_PERMISSIONS_INFO','Ihr Rechte-System ist eingestellt auf \"Whitelist\"Wenn Sie eine Berechtigung auswählen wird dieser Datensatz für die Gruppe aktiviert!','admin','',0),(1267,1,'de','TEXT_WIDTH','Breite','admin','',0),(1268,1,'de','TEXT_WILLBE_BACKUP','wird gesichert','admin','',0),(1269,1,'de','TEXT_WILLBE_INSTALL','wird installiert','admin','',0),(1270,1,'de','TEXT_WILLBE_UPDATE','wird aktuallisiert','admin','',0),(1271,1,'de','TEXT_WORDS_COUNT','Wörter','admin','',0),(1272,1,'de','TEXT_WRONG_ADMIN_SESSION_SECURITY_KEY','Admin Session Security Key is missing or wrong','admin','',0),(1273,1,'de','TEXT_XT_CRON','Cronjobs','admin','',0),(1274,1,'de','TEXT_XT_MOBILE_SWITCH_METHOD_AUTO','Automatische Erkennung','admin','',0),(1275,1,'de','TEXT_XT_MOBILE_SWITCH_METHOD_MANUEL','Nur über Link','admin','',0),(1276,1,'de','TEXT_XT_PAYMENTS_CONFIGURATION','XT Payments','admin','',0),(1277,1,'de','TEXT_XT_PAYMENT_RESTRICTION','Zahlungbeschränkungen','admin','',0),(1278,1,'de','TEXT_XT_REVIEWS','Bewertungen','admin','',0),(1279,1,'de','TEXT_XT_TEMPLATES','xt:Commerce Templates','admin','',0),(1280,1,'de','TEXT_YEAR','Jahr','admin','',0),(1281,1,'de','TEXT_YEARLY','jährlich','admin','',0),(1282,1,'de','TEXT_YEARS','Jahre','admin','',0),(1283,1,'de','TEXT_YESTERDAY','Gestern','admin','',0),(1284,1,'de','TEXT_ZONE','Steuerzone','admin','',0),(1285,1,'de','TEXT_ZONE_COUNTRIES','Länder (ISO Code 2 mit , getrennt)','admin','',0),(1286,1,'de','TEXT_ZONE_ID','Zone ID','admin','',0),(1287,1,'de','TEXT_ZONE_NAME','Zone','admin','',0),(1288,1,'de','TITLE_ACL_AREA','Admin Rechte','admin','',0),(1289,1,'de','TITLE_ACL_GROUPS','Admin Gruppen','admin','',0),(1290,1,'de','TITLE_ACL_USER','Admin Benutzer','admin','',0),(1291,1,'de','TITLE_ADDRESS','Kundenadressen','admin','',0),(1292,1,'de','TITLE_BASE_PRICE','Verpackungseinheit','admin','',0),(1293,1,'de','TITLE_CATEGORY','Kategorie','admin','',0),(1294,1,'de','TITLE_CONFIGURATION','Konfiguration','admin','',0),(1295,1,'de','TITLE_CONTENT','Content','admin','',0),(1296,1,'de','TITLE_COUNTRIES','Länder','admin','',0),(1297,1,'de','TITLE_CURRENCY','Währung','admin','',0),(1298,1,'de','TITLE_CUSTOMER','Kunden','admin','',0),(1299,1,'de','TITLE_CUSTOMERS_STATUS','Kundengruppen','admin','',0),(1300,1,'de','TITLE_EMAIL_MANAGER','E-Mail Manager','admin','',0),(1301,1,'de','TITLE_EXPORT','Export','admin','',0),(1302,1,'de','TITLE_LANGUAGE','Sprache','admin','',0),(1303,1,'de','TITLE_LANGUAGE_CONTENT','Sprachpakete','admin','',0),(1304,1,'de','TITLE_MANUFACTURER','Hersteller','admin','',0),(1305,1,'de','TITLE_ORDER','Bestellungen','admin','',0),(1306,1,'de','TITLE_ORDER_STATUS','Bestellstatus','admin','',0),(1307,1,'de','TITLE_PAYMENT','Zahlung','admin','',0),(1308,1,'de','TITLE_PLUGIN_HOOKPOINTS','Hookpoints','admin','',0),(1309,1,'de','TITLE_PLUGIN_INSTALLED','installierte Plugins','admin','',0),(1310,1,'de','TITLE_PRODUCT','Artikel','admin','',0),(1311,1,'de','TITLE_PRODUCT_PRICE','Kundengruppen / Staffelpreise','admin','',0),(1312,1,'de','TITLE_PRODUCT_SP_PRICE','Sonderpeise','admin','',0),(1313,1,'de','TITLE_PRODUCT_TO_CAT','Kategoriezuweisung','admin','',0),(1314,1,'de','TITLE_SHIPPING','Versand','admin','',0),(1315,1,'de','TITLE_SHIPPING_STATUS','Lieferzeit','admin','',0),(1316,1,'de','TITLE_STOCK_RULE','Lagerampel','admin','',0),(1317,1,'de','TITLE_TAX','Umsatzsteuer','admin','',0),(1318,1,'de','TITLE_TAX_CLASS','Steuerklasse','admin','',0),(1319,1,'de','TITLE_XT_REVIEWS','Reviews','admin','',0),(1320,1,'de','TITLE_ZONE','Steuerzone','admin','',0),(1321,1,'de','XT_CORE_ERROR_SHIPPINGCODE_WHITESPACE','Das Feld \"Versand Code\" darf keine Sonderzeichen, Umlaute oder Leerzeichen enthalten','admin','',0),(1322,1,'de','XT_LASTEST_ACTIVITIES','xt:Commerce Marketplace','admin','',0),(1323,1,'de','XT_NEW_PLUGINS','Neue Plugins/Templates','admin','',0),(1324,1,'de','XT_ORDER_EDIT_ALLOW_NEGATIVE_STOCK','Verkauf nicht vorrätiger Waren','admin','',0),(1325,1,'de','XT_ORDER_EDIT_NEW_ORDER_IN_FRONTEND','Neue Bestellung im Shop-Frontend anlegen','admin','',0),(1326,1,'de','XT_ORDER_EDIT_NEW_ORDER_ORDER_SOURCE','Bestellweg neuer Bestellungen','admin','',0),(1327,1,'de','XT_ORDER_EDIT_NEW_ORDER_PAYMENT','Zahlungsart neuer Bestellungen','admin','',0),(1328,1,'de','XT_ORDER_EDIT_NEW_ORDER_SHIPPING','Lieferart neuer Bestellungen','admin','',0),(1329,1,'de','XT_ORDER_EDIT_SHOW_ORDER_EDITOR_COLUMN','Spalte &quot;Bearbeitet von&quot; anzeigen','admin','',0),(1330,1,'de','XT_ORDER_EDIT_USE_CUSTOMER_CURRENCY','Kundenwährung verwenden','admin','',0),(1331,1,'de','XT_SHIPPING_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(1332,1,'de','XT_TOP_PLUGINS','Top Plugins','admin','',0),(1333,1,'de','BUTTON_NEXT','Weiter','both','',0),(1334,1,'de','ERROR_LOGIN_EMPTY_PARAMS','Bitte überprüfen Sie ihre Eingabe','both','',0),(1335,1,'de','ERROR_REMEMBER_KEY_ERROR','Fehler! Ihr Passwort Link ist abgelaufen oder fehlerhaft, bitte führen Sie den Vorgang erneut durch.','both','',0),(1336,1,'de','SUCCESS_CAPTCHA_VALID','Anforderung erfolgreich! Es wurde soeben eine Bestätigungsemail an Ihre E-Mail Adresse geschickt.','both','',0),(1337,1,'de','SUCCESS_PASSWORD_SEND','Passwortänderung erfolgreich! Ein neues Passwort wurde soeben an Ihre E-Mail Adresse versendet.','both','',0),(1338,1,'de','TEXT_BILLING_PHONE','Rechnungstelefon','both','',0),(1339,1,'de','TEXT_CAPTCHA','Sicherheitscode','both','',0),(1340,1,'de','TEXT_CREATE_ELEFUNDS_ACCOUNT_SLOGAN','AUFRUNDEN, SPENDEN & WEITERSAGEN','both','',0),(1341,1,'de','TEXT_DAY_FRIDAY','Freitag','both','',0),(1342,1,'de','TEXT_DAY_MONDAY','Montag','both','',0),(1343,1,'de','TEXT_DAY_SATURDAY','Samstag','both','',0),(1344,1,'de','TEXT_DAY_SUNDAY','Sonntag','both','',0),(1345,1,'de','TEXT_DAY_THURSDAY','Donnerstag','both','',0),(1346,1,'de','TEXT_DAY_TUESDAY','Dienstag','both','',0),(1347,1,'de','TEXT_DAY_WEDNESDAY','Mittwoch','both','',0),(1348,1,'de','TEXT_ELEFUNDS_ANMELDUNG','Anmeldung','both','',0),(1349,1,'de','TEXT_ELEFUNDS_LEFT_CONTENT','<b>elefunds</b> ist das führende Social Commerce Tool, mit dem Sie nachhaltige Erfolge für Ihren Online-Shop erzielen werden.<br /><br />  Mit elefunds runden Ihre Kunden den Warenkorb mit frei wählbaren Beträgen auf und spenden an renommierte Hilfsorganisationen.','both','',0),(1350,1,'de','TEXT_ELEFUNDS_RIGHT_CONTENT','<b class=\\\'b_large\\\'>Ihre Vorteile im Überblick:</b> <br />• Zugang zu renommierten Hilfsorganisationen<br/>• Erstellung von Spendenquittungen & Abwicklung der Spenden durch die elefunds Stiftung<br/>• Dashboard zur Analyse der Spendenaktivitäten<br/>• elefunds ist kostenlos, sicher und schnell installiert<br/>• weitere Funktionen: Social Media Empfehlung, Marketing Kit, Partnerprogramm u.v.m','both','',0),(1351,1,'de','TEXT_ELFUNDS_TEXT_BOTTOM','Jetzt kostenloses elefunds Profil anlegen und soziales Engagement zeigen!','both','',0),(1352,1,'de','TEXT_FEDERAL_STATES','Bundesländer','both','',0),(1353,1,'de','TEXT_MOBILE_PHONE','Handy','both','',0),(1354,1,'de','TEXT_MONTH_APRIL','April','both','',0),(1355,1,'de','TEXT_MONTH_AUGUST','August','both','',0),(1356,1,'de','TEXT_MONTH_DECEMBER','December','both','',0),(1357,1,'de','TEXT_MONTH_FEBRUARY','Februar','both','',0),(1358,1,'de','TEXT_MONTH_JANUARY','Januar','both','',0),(1359,1,'de','TEXT_MONTH_JULY','Juli','both','',0),(1360,1,'de','TEXT_MONTH_JUNE','Juni','both','',0),(1361,1,'de','TEXT_MONTH_MARCH','März','both','',0),(1362,1,'de','TEXT_MONTH_MAY','Mai','both','',0),(1363,1,'de','TEXT_MONTH_NOVEMBER','November','both','',0),(1364,1,'de','TEXT_MONTH_OCTOBER','Oktober','both','',0),(1365,1,'de','TEXT_MONTH_SEPTEMBER','September','both','',0),(1366,1,'de','TEXT_NEXT_MONTH','Nächster Monat','both','',0),(1367,1,'de','TEXT_PHONE','Telefon','both','',0),(1368,1,'de','TEXT_PREVIOUS_MONTH','Vorheriger Monat','both','',0),(1369,1,'de','TEXT_PRICE','Preis','both','',0),(1370,1,'de','TEXT_PRODUCTS_DISCOUNT','abgezogener Rabatt','both','',0),(1371,1,'de','TEXT_PRODUCTS_SERIALS','Seriennummern','both','',0),(1372,1,'de','TEXT_SERIAL_NUMBER','Seriennummer','both','',0),(1373,1,'de','TEXT_SHIPPING_INFO','Versandinformationen','both','',0),(1374,1,'de','TEXT_SHORT_DAY_FRIDAY','Fr','both','',0),(1375,1,'de','TEXT_SHORT_DAY_MONDAY','Mo','both','',0),(1376,1,'de','TEXT_SHORT_DAY_SATURDAY','Sa','both','',0),(1377,1,'de','TEXT_SHORT_DAY_SUNDAY','So','both','',0),(1378,1,'de','TEXT_SHORT_DAY_THURSDAY','Do','both','',0),(1379,1,'de','TEXT_SHORT_DAY_TUESDAY','Di','both','',0),(1380,1,'de','TEXT_SHORT_DAY_WEDNESDAY','Mi','both','',0),(1381,1,'de','TEXT_WRONG_SYSTEM_SECURITY_KEY','Falsche Sicherheitsschlüssel','both','',0),(1382,1,'de','BUTTON_ADD_ADDRESS','Neue Adresse','store','',0),(1383,1,'de','BUTTON_ADD_CART','In den Warenkorb','store','',0),(1384,1,'de','BUTTON_BACK','Zurück','store','',0),(1385,1,'de','BUTTON_CHECKOUT','Zur Kasse','store','',0),(1386,1,'de','BUTTON_CONFIRM_ORDER','zahlungspflichtig bestellen','store','',0),(1387,1,'de','BUTTON_CONFIRM_ORDER_PAY','zahlungspflichtig bestellen','store','',0),(1388,1,'de','BUTTON_DELETE','Entfernen','store','',0),(1389,1,'de','BUTTON_DOWNLOAD','Datei laden','store','',0),(1390,1,'de','BUTTON_EDIT','Bearbeiten','store','',0),(1391,1,'de','BUTTON_LOGIN','Anmelden','store','',0),(1392,1,'de','BUTTON_REGISTER','Registrieren','store','',0),(1393,1,'de','BUTTON_SAVE','Speichern','store','',0),(1394,1,'de','BUTTON_SEARCH','Suchen','store','',0),(1395,1,'de','BUTTON_SHOW','Anzeigen','store','',0),(1396,1,'de','BUTTON_SUBMIT','Absenden','store','',0),(1397,1,'de','BUTTON_TO_ARTICLE','Zum Artikel','store','',0),(1398,1,'de','BUTTON_UPDATE','Aktualisieren','store','',0),(1399,1,'de','BUTTON_VIEW','Anzeigen','store','',0),(1400,1,'de','ERROR_CAPTCHA_INVALID','Sicherheitscode falsch! Bitte überprüfen Sie Ihre Eingabe.','store','',0),(1401,1,'de','ERROR_CHECK_BANK','Bitte geben Sie den Banknamen an','store','',0),(1402,1,'de','ERROR_CHECK_BLZ','Bitte geben Sie eine richtige BLZ an','store','',0),(1403,1,'de','ERROR_CHECK_KTO','Bitte geben Sie eine richtige Kontnummer an','store','',0),(1404,1,'de','ERROR_CHECK_OWNER','Bitte geben Sie den Kontoinhaber an','store','',0),(1405,1,'de','ERROR_CITY','Bitte geben Sie Ihre Stadt an','store','',0),(1406,1,'de','ERROR_COMPANY','Bitte geben Sie einen Firmennamen ein','store','',0),(1407,1,'de','ERROR_CONDITIONS_ACCEPTED','Sie müssen die Allgemeinen Geschäftsbedingungen akzeptieren um die Bestellung abschließen zu können.','store','',0),(1408,1,'de','ERROR_CURRENT_PASSWORD_NOT_MATCHING','Ihr aktuelles Passwort ist falsch, bitte kontrollieren Sie ihre Eingabe.','store','',0),(1409,1,'de','ERROR_DATE_SYNTAX','Bitte geben Sie ein gültiges Datum an','store','',0),(1410,1,'de','ERROR_DEFAULT_ADDRESS','Sie müssen mindestens eine Standardadresse haben.','store','',0),(1411,1,'de','ERROR_DELETE_DEFAULT_ADDRESS','Dies ist Ihre Standardadresse. Diese kann erst gelöscht werden wenn Sie eine andere Adresse aus Ihrem Addressbuch zur Standardadresse gemacht haben.','store','',0),(1412,1,'de','ERROR_DELETE_LAST_ADDRESS','Dies ist Ihr letzer Addressbuch Eintrag. Dieser kann nicht gelöscht werden !','store','',0),(1413,1,'de','ERROR_EMAIL_ADDRESS','Bitte geben Sie eine E-Mail Adresse an','store','',0),(1414,1,'de','ERROR_EMAIL_ADDRESS_EXISTS','Es existiert bereits ein Kundenkonto mit dieser E-Mail Adresse','store','',0),(1415,1,'de','ERROR_EMAIL_ADDRESS_NOT_MATCHING','E-Mail Adressen stimmen nicht überein','store','',0),(1416,1,'de','ERROR_EMAIL_ADDRESS_SYNTAX','Bitte geben Sie eine gültige E-Mail Adresse an','store','',0),(1417,1,'de','ERROR_FAX','Bitte geben Sie einen Faxnummer ein','store','',0),(1418,1,'de','ERROR_FIRST_NAME','Bitte geben Sie einen Vornamen an','store','',0),(1419,1,'de','ERROR_LAST_NAME','Bitte geben Sie einen Nachnamen an','store','',0),(1420,1,'de','ERROR_LOGIN','Login fehlgeschlagen: Emailadresse oder Passwort falsch!','store','',0),(1421,1,'de','ERROR_LOGIN_COUNT','Sie haben einen falschen Benutzernamen oder ein falsches Kennwort eingegeben. Gehen Sie bitte die richtigen Daten ein. Haben Sie vielleicht Ihr Kennwort vergessen?<br /><br />  Sie haben bisher %s mal versucht, sich anzumelden. Nach dem 5. fehlerhaften Versuch ist eine Anmeldung für die nächsten %s Minuten nicht mehr möglich.','store','',0),(1422,1,'de','ERROR_LOGIN_LOCKED','Die maximale Anzahl an Anmeldeversuchen wurde verbraucht. Der Account wurde für %s minuten gesperrt, bitte versuchen Sie es nach Ablauf dieser Zeit erneut oder Kontaktieren Sie unseren Support.','store','',0),(1423,1,'de','ERROR_MAIL_NOT_FOUND','Fehler! Ihre E-Mail Adresse wurde nicht gefunden, bitte überprüfen Sie Ihre Eingabe.','store','',0),(1424,1,'de','ERROR_MAX_ORDER_VALUE','Sie haben die Höchstbestellsumme von %s überschritten, bitte verringern Sie Ihren Warenwert um %s um die Bestellung durchzuführen.','store','',0),(1425,1,'de','ERROR_MIN_ORDER_VALUE','Sie haben die Mindestbestellsumme von %s noch nicht erreicht, Ihnen fehlen noch %s im Warenkorb um die Bestellung durchzuführen.','store','',0),(1426,1,'de','ERROR_MOBILE_PHONE_NUMBER','Bitte geben Sie Ihre Mobiltelefonnummer an','store','',0),(1427,1,'de','ERROR_NOT_ALLOWED_TO_PURCHASE','Sie dürfen diesen Artikel nicht in den Warenkorb legen.','store','',0),(1428,1,'de','ERROR_NO_KEYWORDS','Sie müssen einen Suchbegriff eingeben!','store','',0),(1429,1,'de','ERROR_NO_PAYMENT_SELECTED','Bitte wählen Sie eine Zahlungsart aus!','store','',0),(1430,1,'de','ERROR_NO_SEARCH_RESULT','Ihre Suche brachte kein Ergebnis. Bitte versuchen Sie es erneut.','store','',0),(1431,1,'de','ERROR_NO_SHIPPING_SELECTED','Bitte wählen Sie eine Versandart aus!','store','',0),(1432,1,'de','ERROR_PASSWORD_NOT_MATCHING','Ihre Passwörter stimmen nicht überein, bitte kontrollieren Sie ihre Eingabe.','store','',0),(1433,1,'de','ERROR_PAYMENT','Diese Zahlungsweise steht derzeit wegen technischen Problemen nicht zur Verfügung, bitte kontaktieren Sie unseren Support.','store','',0),(1434,1,'de','ERROR_POST_CODE','Bitte geben Sie Ihre PLZ an','store','',0),(1435,1,'de','ERROR_STOCK_REDUCED_AMOUNT','Der Artikel \"<b>%s</b>\" ist leider nicht in der gewünschten Menge auf Lager, Ihre Menge wurde um <b>%s</b> Stück reduziert.','store','',0),(1436,1,'de','ERROR_STREET_ADDRESS','Bitte geben Sie Ihre Adresse an','store','',0),(1437,1,'de','ERROR_TELEPHONE_NUMBER','Bitte geben Sie Ihre Telefonnummer an','store','',0),(1438,1,'de','ERROR_VAT_ID','Bitte überprüfen Sie Ihre USt-ID','store','',0),(1439,1,'de','ERROR_VAT_ID_SERVICE','Ihre USt-ID konnte nicht überprüft werden bitte versuchen Sie es später nochmals, oder lassen Sie das Feld leer.','store','',0),(1440,1,'de','HEADING_PRODUCTS_MANUFACTURERS','Hersteller','store','',0),(1441,1,'de','HEADING_SUB_CONTENT','Weitere Informationen','store','',0),(1442,1,'de','SORT_DATE','Hinzugefügt aufsteigend','store','',0),(1443,1,'de','SORT_DATE_DESC','Hinzugefügt absteigend','store','',0),(1444,1,'de','SORT_NAME','Name aufsteigend','store','',0),(1445,1,'de','SORT_NAME_DESC','Name absteigend','store','',0),(1446,1,'de','SORT_PRICE','Preis aufsteigend','store','',0),(1447,1,'de','SORT_PRICE_DESC','Preis absteigend','store','',0),(1448,1,'de','SUCCESS_ACCOUNT_UPDATED','Kundendetails erfolgreich aktualisiert.','store','',0),(1449,1,'de','SUCCESS_ADDRESS_UPDATED','Adresse erfolgreich aktualisiert/hinzugefügt.','store','',0),(1450,1,'de','SUCCESS_DELETE_ADDRESS','Der Addressbucheintrag wurde erfolgreich gelöscht!','store','',0),(1451,1,'de','SUCCESS_EMAIL_SEND','Ihre Anfrage wurde gesendet','store','',0),(1452,1,'de','SUCCESS_PRODUCT_ADDED','Der Artikel \"<b>%s</b>\" wurde in den Warenkorb gelegt.','store','',0),(1453,1,'de','SYSTEM_METATAGS_BLACKLIST','versandkosten,hersteller,gewicht,warenkorb,commerce,datenschutz,impressum,kontakt,privatsphäre,absteigend,aufsteigend','store','',0),(1454,1,'de','TEXT_ACCEPT_CONDITIONS','Ich habe die Allgemeinen Geschäftsbedingungen gelesen und anerkannt.','store','',0),(1455,1,'de','TEXT_ACCOUNT','Ihr Konto','store','',0),(1456,1,'de','TEXT_ACCOUNT_ADRESSBOOK','Adressbuch','store','',0),(1457,1,'de','TEXT_ACCOUNT_ALL_ORDERS','weitere Bestellungen anzeigen','store','',0),(1458,1,'de','TEXT_ACCOUNT_DATA','Ihre Kontodaten','store','',0),(1459,1,'de','TEXT_ACCOUNT_DOWNLOADS','Ihre Downloadprodukte','store','',0),(1460,1,'de','TEXT_ACCOUNT_DOWNLOADS_COUNT','Mögliche Downloads','store','',0),(1461,1,'de','TEXT_ACCOUNT_DOWNLOADS_DATE','Downloads freigegeben bis','store','',0),(1462,1,'de','TEXT_ACCOUNT_DOWNLOADS_MORE','Übersicht Ihrer Downloads','store','',0),(1463,1,'de','TEXT_ACCOUNT_EDIT','Kundendaten bearbeiten','store','',0),(1464,1,'de','TEXT_ACCOUNT_LOGIN','Anmelden oder neues Konto erstellen','store','',0),(1465,1,'de','TEXT_ACCOUNT_NOTIFICATION','E-Mail Benachrichtigungen','store','',0),(1466,1,'de','TEXT_ACCOUNT_ORDERS','Ihre letzten Bestellungen','store','',0),(1467,1,'de','TEXT_ACCOUNT_PASSWORD','Passwort ändern','store','',0),(1468,1,'de','TEXT_ACCOUNT_TITLE','Ihre persönlichen Einstellungen','store','',0),(1469,1,'de','TEXT_ACCOUNT_TITLE_WELCOME','Herzlich willkommen','store','',0),(1470,1,'de','TEXT_ACCOUNT_WELCOME','Hier entsteht Ihre persönliche Seite, wo Sie bequem einen Überblick Ihrer getätigten Bestellungen bekommen.  Wenn Sie ein Konto bei uns haben, können Sie hier außerdem Ihre persönlichen Daten ändern.','store','',0),(1471,1,'de','TEXT_ADD','zzgl.','store','',0),(1472,1,'de','TEXT_ADDRESS','Ihre Adresse','store','',0),(1473,1,'de','TEXT_ADDRESS_BOOK_INFO','Hier finden Sie eine Übersicht ihrer Adressbucheinträge. Sie haben die Möglichkeit weitere Adressen für Lieferung und Rechnung anzulegen.','store','',0),(1474,1,'de','TEXT_ADDRESS_TYPE','Adresstyp','store','',0),(1475,1,'de','TEXT_ADVANCED_SEARCH','erweiterte Suche','store','',0),(1476,1,'de','TEXT_ARTICLE','Artikel','store','',0),(1477,1,'de','TEXT_BANK','Ihre Zahlungsinformationen','store','',0),(1478,1,'de','TEXT_BANKTRANSFER_BANK_NAME','Name der Bank','store','',0),(1479,1,'de','TEXT_BANKTRANSFER_BIC','Bic / Swift','store','',0),(1480,1,'de','TEXT_BANKTRANSFER_BLZ','Bankleitzahl','store','',0),(1481,1,'de','TEXT_BANKTRANSFER_IBAN','Iban','store','',0),(1482,1,'de','TEXT_BANKTRANSFER_NUMBER','Kontonummer','store','',0),(1483,1,'de','TEXT_BANKTRANSFER_OWNER','Kontoinhaber','store','',0),(1484,1,'de','TEXT_BIRTHDATE','Geburtsdatum','store','',0),(1485,1,'de','TEXT_BIRTHDATE_INFO','(zB. 19.06.1972)','store','',0),(1486,1,'de','TEXT_BOX_TITLE_CATEGORIES','Kategorien','store','',0),(1487,1,'de','TEXT_BOX_TITLE_CURRENCY','Währung','store','',0),(1488,1,'de','TEXT_BOX_TITLE_LANGUAGE','Sprachen','store','',0),(1489,1,'de','TEXT_BOX_TITLE_LOGIN','Willkommen zurück','store','',0),(1490,1,'de','TEXT_BOX_TITLE_MANUFACTURERS','Hersteller','store','',0),(1491,1,'de','TEXT_CART','Warenkorb','store','',0),(1492,1,'de','TEXT_CHECKOUT','Zur Kasse','store','',0),(1493,1,'de','TEXT_CHECKOUT_CONFIRMATION','Bestellung bestätigen','store','',0),(1494,1,'de','TEXT_CHECKOUT_CONFIRMATION_DESC','Vor dem Absenden Ihrer Bestellung sehen Sie nochmals die von Ihnen eingegebenen Daten und Produkte, mithilfe der (Bearbeiten) Links neben den einzelnen Daten haben Sie nochmals die Möglichkeit diese zu korrigieren. Den Bestellvorgang können Sie jederzeit durch Schließen des Browser-Fensters beenden, oder durch Drücken des Bestellen Buttons abschließen.','store','',0),(1495,1,'de','TEXT_CHECKOUT_SUCCESS_DESC','Ihre Bestellung ist eingegangen und wird umgehend bearbeitet. Sie haben zur Kontrolle eine Bestätigungs-E-Mail mit den Bestelldaten bekommen!<br /><br /><b>Wir danken Ihnen für Ihren Online-Einkauf!</b>','store','',0),(1496,1,'de','TEXT_CITY','Stadt','store','',0),(1497,1,'de','TEXT_CODE','Postleitzahl','store','',0),(1498,1,'de','TEXT_COMMENTS','Bemerkungen','store','',0),(1499,1,'de','TEXT_COMMENTS_DESC','Zusatzinfos zu Ihrer Bestellung','store','',0),(1500,1,'de','TEXT_COMPANY','Firmendaten','store','',0),(1501,1,'de','TEXT_COMPANY_GENDER','Firma','store','',0),(1502,1,'de','TEXT_COMPANY_NAME','Firmenname','store','',0),(1503,1,'de','TEXT_COMPANY_NAME_2','Zeile 2','store','',0),(1504,1,'de','TEXT_COMPANY_NAME_3','Zeile 3','store','',0),(1505,1,'de','TEXT_CONDITIONS','Unsere Allgemeinen Geschäftsbedingungen','store','',0),(1506,1,'de','TEXT_CONFIRMATION','Bestätigen','store','',0),(1507,1,'de','TEXT_CONFIRMATION_DESC','Bestätigen Sie Ihre Bestellung','store','',0),(1508,1,'de','TEXT_CONTACT','Ihre Kontaktinformationen','store','',0),(1509,1,'de','TEXT_CONTACT_INTRO','Bitte verfassen Sie Ihr Anliegen möglichst mit allen für uns relevanten Informationen','store','',0),(1510,1,'de','TEXT_CONTACT_PAGE','Kontaktformular','store','',0),(1511,1,'de','TEXT_CONTACT_SUBJECT','Kontaktanfrage','store','',0),(1512,1,'de','TEXT_CONTENT','Inhalt','store','',0),(1513,1,'de','TEXT_COUNTRY','Land','store','',0),(1514,1,'de','TEXT_COUNTY','Kreis','store','',0),(1515,1,'de','TEXT_CREATE_ACCOUNT','Informationen zu Ihrem Kundenkonto','store','',0),(1516,1,'de','TEXT_CREATE_GUEST_ACCOUNT','Bitte geben Sie Ihre Informationen ein','store','',0),(1517,1,'de','TEXT_CURRENCY','Währung','store','',0),(1518,1,'de','TEXT_CUSTOMER_ID','Kundennummer','store','',0),(1519,1,'de','TEXT_DEFAULT_ADDRESS','Standardadresse','store','',0),(1520,1,'de','TEXT_DEFAULT_CURRENCY','Bevorzugte Währung','store','',0),(1521,1,'de','TEXT_DEFAULT_LANGUAGE','Bevorzugte Sprache','store','',0),(1522,1,'de','TEXT_DESCRIPTION','Beschreibung','store','',0),(1523,1,'de','TEXT_DIGITALCOND_CHECK','Ich stimme ausdrücklich zu, dass Sie vor Ablauf der Widerrufsfrist mit der Ausführung des Vertrages beginnen. Mir ist bekannt, dass ich durch diese Zustimmung mit Beginn der Ausführung des Vertrages mein Widerrufsrecht verliere.','store','',0),(1524,1,'de','TEXT_DIGITALCOND_CHECK_CHECK_ERROR','Sie müssen zustimmen, dass wie vor Ablauf der Widerrufsfrist mit der Ausführung des Vertrages beginnen','store','',0),(1525,1,'de','TEXT_DISCOUNT_MADE','Bereits abgezogener Rabatt','store','',0),(1526,1,'de','TEXT_DOWNLOADS','Downloads','store','',0),(1527,1,'de','TEXT_DOWNLOAD_NOT_ALLOWED','Ihr Download wurde noch nicht freigegeben.','store','',0),(1528,1,'de','TEXT_EDIT','Bearbeiten','store','',0),(1529,1,'de','TEXT_EDIT_ACCOUNT','Kontodaten ändern','store','',0),(1530,1,'de','TEXT_EDIT_ADDRESS','Adressbucheintrag hinzufügen / bearbeiten','store','',0),(1531,1,'de','TEXT_EMAIL','E-Mail-Adresse','store','',0),(1532,1,'de','TEXT_EMAIL_CONFIRM','E-Mail-Adresse bestätigen','store','',0),(1533,1,'de','TEXT_EMPTY_BOX_CART','Ihr Warenkorb ist derzeit leer.','store','',0),(1534,1,'de','TEXT_EMPTY_CART','Sie haben noch keine Artikel in Ihrem Warenkorb.','store','',0),(1535,1,'de','TEXT_ENTER_SEARCH_TERM','Suchbegriff eingeben','store','',0),(1536,1,'de','TEXT_EXCL','exkl.','store','',0),(1537,1,'de','TEXT_EXCL_SHIPPING','zzgl. Versandkosten','store','',0),(1538,1,'de','TEXT_FAX','Fax','store','',0),(1539,1,'de','TEXT_FAX_PREFIX','Vorwahl','store','',0),(1540,1,'de','TEXT_FEMALE','Frau','store','',0),(1541,1,'de','TEXT_FILE','Datei','store','',0),(1542,1,'de','TEXT_FIRST','|<<','store','',0),(1543,1,'de','TEXT_FIRSTNAME','Vorname','store','',0),(1544,1,'de','TEXT_GENDER','Anrede','store','',0),(1545,1,'de','TEXT_GRADUATED_PRICES','Mengenrabatt','store','',0),(1546,1,'de','TEXT_GRADUATED_SAVING','Ersparnis','store','',0),(1547,1,'de','TEXT_GUEST','Als Gast bestellen','store','',0),(1548,1,'de','TEXT_HEADING_MORE_CATEGORIES','Weitere Kategorien','store','',0),(1549,1,'de','TEXT_HOME','Startseite','store','',0),(1550,1,'de','TEXT_INCL','inkl.','store','',0),(1551,1,'de','TEXT_INFO','Informationen','store','',0),(1552,1,'de','TEXT_INFO_NO_SHIPPING','- Kein Versand -','store','',0),(1553,1,'de','TEXT_INFO_PAY_NEXT_STEP','Nach Bestätigung Ihrer Bestellung können Sie Ihre Zahlungsdaten auf der nächsten Seite eingeben.','store','',0),(1554,1,'de','TEXT_I_AM_A_GUEST','Ich möchte als Gast bestellen.','store','',0),(1555,1,'de','TEXT_I_WANT_TO_REGISTER','Ich möchte ein Kundenkonto erstellen.','store','',0),(1556,1,'de','TEXT_LANGUAGE','Sprachen','store','',0),(1557,1,'de','TEXT_LAST','>>|','store','',0),(1558,1,'de','TEXT_LASTNAME','Nachname','store','',0),(1559,1,'de','TEXT_LINK_LOSTPASSWORD','Passwort vergessen?','store','',0),(1560,1,'de','TEXT_LOGIN','Anmelden','store','',0),(1561,1,'de','TEXT_LOGIN_CART_MERGED','Ihr Warenkorb aus der letzten Session wurde mit Ihrem aktuellen Warenkorb verbunden. Bitte prüfen Sie die Artikel.','store','',0),(1562,1,'de','TEXT_LOGOFF','Abmelden','store','',0),(1563,1,'de','TEXT_LOOK_FOR_ALL','Suche in allen','store','',0),(1564,1,'de','TEXT_MALE','Herr','store','',0),(1565,1,'de','TEXT_MAX_CHARACTERS','(max. 255 Zeichen)','store','',0),(1566,1,'de','TEXT_MESSAGE','Ihre Nachricht','store','',0),(1567,1,'de','TEXT_MOBILE_DESKTOP_SWITCH_LINK','Zur Desktopversion wechseln','store','',0),(1568,1,'de','TEXT_MOBILE_PHONE_PREFIX','Vorwahl','store','',0),(1569,1,'de','TEXT_MOBILE_SWITCH_LINK','Zur mobilen Version wechseln','store','',0),(1570,1,'de','TEXT_MORE','mehr','store','',0),(1571,1,'de','TEXT_MORE_DETAILS','Mehr Details','store','',0),(1572,1,'de','TEXT_MUST','* notwendige Informationen','store','',0),(1573,1,'de','TEXT_NEW_CUSTOMER','Ich bin ein neuer Kunde','store','',0),(1574,1,'de','TEXT_NEW_PAYMENT_ADDRESS','oder legen Sie eine weitere an.','store','',0),(1575,1,'de','TEXT_NEW_SHIPPING_ADDRESS','oder legen Sie eine weitere an.','store','',0),(1576,1,'de','TEXT_NEXT','>','store','',0),(1577,1,'de','TEXT_NONE','- keine Auswahl getroffen -','store','',0),(1578,1,'de','TEXT_NO_REMARK','Keine Bemerkung','store','',0),(1579,1,'de','TEXT_ON','am','store','',0),(1580,1,'de','TEXT_ORDER_COMMENTS','Bemerkungen','store','',0),(1581,1,'de','TEXT_ORDER_CONFIRMATION_BUTTON_LAW','Zusätzlich fallen noch Kosten oder Steuern an, die nicht von uns abgeführt bzw. von uns in Rechnung gestellt werden.','store','',0),(1582,1,'de','TEXT_ORDER_DATE','Bestelldatum','store','',0),(1583,1,'de','TEXT_ORDER_NUMBER','Bestellnummer','store','',0),(1584,1,'de','TEXT_ORDER_STATUS','Bestellstatus','store','',0),(1585,1,'de','TEXT_ORDER_STATUS_HISTORY','Bestellhistorie','store','',0),(1586,1,'de','TEXT_PAGES','Seiten','store','',0),(1587,1,'de','TEXT_PAGE_NOT_FOUND','Seite nicht gefunden','store','',0),(1588,1,'de','TEXT_PAGE_NOT_FOUND_INTRO','Die aufgerufene Seite wurde nicht gefunden','store','',0),(1589,1,'de','TEXT_PAGE_TITLE_ACCOUNT','Ihre persönliche Seite','store','',0),(1590,1,'de','TEXT_PAGE_TITLE_ACCOUNT_DOWNLOADS','Ihre Downloads','store','',0),(1591,1,'de','TEXT_PAGE_TITLE_ACCOUNT_HISTORY','Ihre getätigten Bestellungen','store','',0),(1592,1,'de','TEXT_PAGE_TITLE_ACCOUNT_HISTORY_INFO','Bestellinformationen','store','',0),(1593,1,'de','TEXT_PAGE_TITLE_ADDRESS_BOOK','Ihr persönliches Adressbuch','store','',0),(1594,1,'de','TEXT_PAGE_TITLE_CHECKOUT_SUCCESS','Ihr Bestellung wurde erfolgreich ausgeführt','store','',0),(1595,1,'de','TEXT_PAGE_TITLE_LOGIN','Melden Sie sich an','store','',0),(1596,1,'de','TEXT_PAGE_TITLE_MANUFACTURERS','Artikel von <b>%s</b>','store','',0),(1597,1,'de','TEXT_PAGE_TITLE_PAY','Zahlung durchführen','store','',0),(1598,1,'de','TEXT_PAGINATION_FROM','von','store','',0),(1599,1,'de','TEXT_PAGINATION_IN','in der Kategorie','store','',0),(1600,1,'de','TEXT_PAGINATION_TITLE','Seite','store','',0),(1601,1,'de','TEXT_PASSWORD','Passwort','store','',0),(1602,1,'de','TEXT_PASSWORD_CURRENT','Ihr aktuelles Passwort','store','',0),(1603,1,'de','TEXT_PASSWORD_ENTRY','Ihr neues Passwort','store','',0),(1604,1,'de','TEXT_PASSWORD_ENTRY_CONFIRM','Passwort bestätigen','store','',0),(1605,1,'de','TEXT_PASSWORD_ERROR','Passwort zu kurz','store','',0),(1606,1,'de','TEXT_PASSWORD_INFO','bitte leer lassen wenn keine Änderung gewünscht wird!','store','',0),(1607,1,'de','TEXT_PASSWORD_RESET','Bitte geben Sie die E-Mail-Adresse ein, unter der Sie Ihr Konto in unserem Shop angelegt haben.<br /> Zur Bestätigung geben Sie danach den angezeigten Sicherheitscode ein.<br /><br /> Klicken Sie danach auf &quot;Weiter&quot; und wir senden Ihnen eine E-Mail mit einem Bestätigungs-Link!','store','',0),(1608,1,'de','TEXT_PASSWORD_RESET_PAGE','Passwort erneuern','store','',0),(1609,1,'de','TEXT_PASSWORD_RESET_WITHOUT_CAPTCHA','Bitte geben Sie die E-Mail-Adresse ein, unter der Sie Ihr Konto in unserem Shop angelegt haben.<br /><br /> Klicken Sie danach auf &quot;Weiter&quot; und wir senden Ihnen eine E-Mail mit einem Bestätigungs-Link!','store','',0),(1610,1,'de','TEXT_PAYMENT','Wählen Sie die Zahlungsweise','store','',0),(1611,1,'de','TEXT_PAYMENTS_FE','Zahlungsweisen','store','',0),(1612,1,'de','TEXT_PAYMENT_ADDRESS','Rechnungsadresse','store','',0),(1613,1,'de','TEXT_PAYMENT_AMX','American Express','store','',0),(1614,1,'de','TEXT_PAYMENT_CC','Kreditkarte','store','',0),(1615,1,'de','TEXT_PAYMENT_DID','Lastschrift','store','',0),(1616,1,'de','TEXT_PAYMENT_DIN','Diners','store','',0),(1617,1,'de','TEXT_PAYMENT_GCB','Carte Bleue','store','',0),(1618,1,'de','TEXT_PAYMENT_GIR','Giropay','store','',0),(1619,1,'de','TEXT_PAYMENT_HND','Handyabrechnung','store','',0),(1620,1,'de','TEXT_PAYMENT_IDL','iDeal','store','',0),(1621,1,'de','TEXT_PAYMENT_INFO','Zahlungsinformationen','store','',0),(1622,1,'de','TEXT_PAYMENT_INFOS','Zahlungsinformationen','store','',0),(1623,1,'de','TEXT_PAYMENT_JCB','JCB','store','',0),(1624,1,'de','TEXT_PAYMENT_LSR','Laser','store','',0),(1625,1,'de','TEXT_PAYMENT_MAE','Maestro','store','',0),(1626,1,'de','TEXT_PAYMENT_METHOD','Zahlungsart','store','',0),(1627,1,'de','TEXT_PAYMENT_MSC','MasterCard','store','',0),(1628,1,'de','TEXT_PAYMENT_NPY','eps Onlineüberweisung','store','',0),(1629,1,'de','TEXT_PAYMENT_OBT','Onlineüberweisung','store','',0),(1630,1,'de','TEXT_PAYMENT_PBX','Paybox','store','',0),(1631,1,'de','TEXT_PAYMENT_PSC','paysafecard','store','',0),(1632,1,'de','TEXT_PAYMENT_QUI','@Quick','store','',0),(1633,1,'de','TEXT_PAYMENT_SFT','Sofortüberweisung','store','',0),(1634,1,'de','TEXT_PAYMENT_SLO','Solo','store','',0),(1635,1,'de','TEXT_PAYMENT_VSA','Visa','store','',0),(1636,1,'de','TEXT_PAYMENT_VSD','Visa Delta/Debit','store','',0),(1637,1,'de','TEXT_PAYMENT_VSE','Visa Electron','store','',0),(1638,1,'de','TEXT_PAY_FORMULAR','Um Ihre Zahlung durchzuführen klicken Sie bitte auf folgenden Button, Sie werden zu unserem Zahlungsanbieter weitergeleitet','store','',0),(1639,1,'de','TEXT_PERSONAL','Ihre persönlichen Daten','store','',0),(1640,1,'de','TEXT_PHONE_PREFIX','Vorwahl','store','',0),(1641,1,'de','TEXT_PLEASE_SELECT','- Auswählen -','store','',0),(1642,1,'de','TEXT_POPUP_CLOSE','Fenster schließen','store','',0),(1643,1,'de','TEXT_POPUP_PRINT','Inhalt drucken','store','',0),(1644,1,'de','TEXT_POSSIBLE_ENTRIES','möglichen Einträgen','store','',0),(1645,1,'de','TEXT_PREV','<','store','',0),(1646,1,'de','TEXT_PRIVACY_ACCEPT','Datenschutzerklärung akzeptieren','store','',0),(1647,1,'de','TEXT_PRODUCTS_DESCRIPTION','Produktbeschreibung','store','',0),(1648,1,'de','TEXT_PRODUCTS_FSK18_NOTE','Der Versand dieses Artikels erfolgt ausschließlich an Volljährige gegen Altersnachweis mittels Postdent-Verfahren.','store','',0),(1649,1,'de','TEXT_PRODUCTS_MODEL','Art.Nr.','store','',0),(1650,1,'de','TEXT_PRODUCTS_WEIGHT','Gewicht','store','',0),(1651,1,'de','TEXT_PRODUCT_AVAILABLE','Artikel ist lieferbar ab','store','',0),(1652,1,'de','TEXT_PRODUCT_OPTIONS','Produktvariation','store','',0),(1653,1,'de','TEXT_PUBLIC_DOWNLOAD_REQUIRE_LOGIN','Bitte registrieren Sie sich um diesen Artikel herunterladen zu können','store','',0),(1654,1,'de','TEXT_QTY','Anzahl','store','',0),(1655,1,'de','TEXT_RANGE_FROM','Über','store','',0),(1656,1,'de','TEXT_RANGE_STAFFEL','Staffelung','store','',0),(1657,1,'de','TEXT_RANGE_TO','Bis','store','',0),(1658,1,'de','TEXT_REMOVE','Entfernen','store','',0),(1659,1,'de','TEXT_RESCISSION_CONFIRMATION_1','Ich habe die Informationen zu meinem','store','',0),(1660,1,'de','TEXT_RESCISSION_CONFIRMATION_2','Widerrufsrecht','store','',0),(1661,1,'de','TEXT_RESCISSION_CONFIRMATION_3','gelesen.','store','',0),(1662,1,'de','TEXT_RETURNING','Ich bin bereits Kunde','store','',0),(1663,1,'de','TEXT_RRP','UVP','store','',0),(1664,1,'de','TEXT_SEARCH','Suche','store','',0),(1665,1,'de','TEXT_SEARCH_CATEGORIES','nur in ausgewählter Kategorie suchen','store','',0),(1666,1,'de','TEXT_SEARCH_DESC','Artikelbeschreibung durchsuchen','store','',0),(1667,1,'de','TEXT_SEARCH_KEYWORDS','Suchbegriffe','store','',0),(1668,1,'de','TEXT_SEARCH_MNF','nur nach Hersteller','store','',0),(1669,1,'de','TEXT_SEARCH_SDESC','Artikelkurzbeschreibung durchsuchen','store','',0),(1670,1,'de','TEXT_SEARCH_SUBCATEGORIES','Unterkategorien in Suche einbeziehen','store','',0),(1671,1,'de','TEXT_SELECT','Bitte auswählen','store','',0),(1672,1,'de','TEXT_SELECT_CURRENCY','Wählen Sie Ihre Währung','store','',0),(1673,1,'de','TEXT_SELECT_LANGUAGE','Sprache wählen','store','',0),(1674,1,'de','TEXT_SELECT_MANUFACTURERS','Hersteller wählen','store','',0),(1675,1,'de','TEXT_SELECT_PAYMENT','Zahlungsweise wählen','store','',0),(1676,1,'de','TEXT_SELECT_PAYMENT_ADDRESS','Wählen Sie eine andere Rechnungsadresse aus Ihrem Adressbuch','store','',0),(1677,1,'de','TEXT_SELECT_PAYMENT_DESC','Wählen Sie die gewünschte Zahlungsweise aus.','store','',0),(1678,1,'de','TEXT_SELECT_SHIPPING','Versandart wählen','store','',0),(1679,1,'de','TEXT_SELECT_SHIPPING_ADDRESS','Wählen Sie eine andere Lieferadresse aus Ihrem Adressbuch','store','',0),(1680,1,'de','TEXT_SELECT_SHIPPING_DESC','Wählen Sie ihre Versandart','store','',0),(1681,1,'de','TEXT_SHIPPING_ADDRESS','Lieferadresse','store','',0),(1682,1,'de','TEXT_SHIPPING_BASE_PER','pro','store','',0),(1683,1,'de','TEXT_SHIPPING_COSTS','Versandkosten','store','',0),(1684,1,'de','TEXT_SHIPPING_COST_PREVIEW','Versandkostenberechnung','store','',0),(1685,1,'de','TEXT_SHIPPING_COST_PREVIEW_COUNTRY','Lieferland','store','',0),(1686,1,'de','TEXT_SHIPPING_COST_PREVIEW_SHIPPING','Versandart','store','',0),(1687,1,'de','TEXT_SHIPPING_COST_PREVIEW_SHIPPINGPRICE','Versandkosten','store','',0),(1688,1,'de','TEXT_SHIPPING_COST_SELECT_COUNTRY','Lieferland','store','',0),(1689,1,'de','TEXT_SHIPPING_COST_SELECT_SHIPPING','Versandart','store','',0),(1690,1,'de','TEXT_SHIPPING_INTRO','Für eine Anzeige der Versandkosten wählen Sie bitte das Zielland für Ihre Bestellung aus.','store','',0),(1691,1,'de','TEXT_SHIPPING_METHOD','Versandart','store','',0),(1692,1,'de','TEXT_SHIPPING_STATUS','Lieferzeit','store','',0),(1693,1,'de','TEXT_SHIPPING_TIME','Lieferzeit','store','',0),(1694,1,'de','TEXT_SINGLE_PRICE','Einzelpreis','store','',0),(1695,1,'de','TEXT_SIZE','Dateigröße','store','',0),(1696,1,'de','TEXT_SORT_BY','Sortieren nach:','store','',0),(1697,1,'de','TEXT_SPECIAL_INSTEAD','Statt','store','',0),(1698,1,'de','TEXT_SPECIAL_ONLY','Nur','store','',0),(1699,1,'de','TEXT_SPECIAL_SAVE','Sie sparen','store','',0),(1700,1,'de','TEXT_STATE','Bundesland','store','',0),(1701,1,'de','TEXT_STREET','Straße','store','',0),(1702,1,'de','TEXT_SUBURB','Stadtteil','store','',0),(1703,1,'de','TEXT_SUB_TOTAL','Zwischensumme','store','',0),(1704,1,'de','TEXT_SUCCESS','Fertig','store','',0),(1705,1,'de','TEXT_SUCCESS_DESC','Bestellung durchgeführt','store','',0),(1706,1,'de','TEXT_TAX','USt.','store','',0),(1707,1,'de','TEXT_TERMSANDCOND_CONFIRMATION','Es gelten unsere Allgemeinen Geschäftsbedingungen','store','',0),(1708,1,'de','TEXT_TERMSANDCOND_CONFIRMATION_1','Ich habe die','store','',0),(1709,1,'de','TEXT_TERMSANDCOND_CONFIRMATION_2','Allgemeinen Geschäftsbedingungen','store','',0),(1710,1,'de','TEXT_TERMSANDCOND_CONFIRMATION_3','gelesen und anerkannt.','store','',0),(1711,1,'de','TEXT_TEXT_LOGOFF','Sie wurden nun vom System abgemeldet!','store','',0),(1712,1,'de','TEXT_TOTAL','Gesamtsumme','store','',0),(1713,1,'de','TEXT_TOTAL_PRICE','Gesamtpreis','store','',0),(1714,1,'de','TEXT_TXT_GUEST','Durch Ihre Bestellung als Gast werden Ihre Daten nicht gespeichert und Sie erhalten kein eigenes Konto. Bei einer erneuten Bestellung müssen Sie jedoch alle Daten erneut eingeben.','store','',0),(1715,1,'de','TEXT_TXT_NEW_CUSTOMER','Durch Ihre Anmeldung bei uns sind Sie in der Lage schneller zu bestellen, kennen jederzeit den Status Ihrer Bestellungen und haben immer eine aktuelle Übersicht über Ihre bisher getätigten Bestellungen.','store','',0),(1716,1,'de','TEXT_TXT_NEW_CUSTOMER_GUEST','Wenn Sie als Gast bestellen möchten lassen Sie die Passwortfelder einfach leer.','store','',0),(1717,1,'de','TEXT_TXT_RETURNING','Sie haben schon einmal bei uns bestellt?  Herzlichen Dank, dass Sie uns ein weiteres Mal Ihr Vertrauen schenken.  Auf der nächsten Seite haben Sie die Möglichkeit Ihre Lieferanschrift zu ändern, oder eine neue Lieferanschrift hinzuzufügen, sowie Ihre Zahlungsart auszuwählen.','store','',0),(1718,1,'de','TEXT_TYPE_ITEM','Artikel','store','',0),(1719,1,'de','TEXT_TYPE_PER_ITEM','pro Artikel','store','',0),(1720,1,'de','TEXT_VAT','USt','store','',0),(1721,1,'de','TEXT_VAT_ID','USt-Id','store','',0),(1722,1,'de','TEXT_VAT_INFO','Nur für Länder in der EU!','store','',0),(1723,1,'de','TEXT_XT_REVIEW_FORM_ERROR','Bitte füllen Sie alle Felder aus, bevor Sie Ihre Bewertung absenden.','store','',0),(1724,1,'de','TEXT_YOU_ARE_HERE','Sie sind hier:','store','',0),(1725,1,'de','WARNING_EMTPY_CART','Sie haben noch keine Artikel in Ihrem Warenkorb','store','',0),(1726,1,'de','WARNING_INSTALL','<b>ACHTUNG:</b> Bitte löschen Sie den Ordner \"xtWizard\" nun von Ihrem Webserver.','store','',0),(1727,1,'de','WARNING_NO_PRICE_ALLOWED','Die Anzeige von Preisen wurde für Ihre Kundengruppe deaktiviert.','store','',0),(1728,1,'de','WARNING_NO_SHIPPING_FOR_ZONE','Für dieses Zielland ist kein Versand Möglich.','store','',0),(1729,1,'de','HOSTING_ALTERNATIVE','Passendes Webhosting?','wizard','',0),(1730,1,'de','HOSTING_BIG','Groß','wizard','',0),(1731,1,'de','HOSTING_PER_MONTH','<br />monatlich*','wizard','',0),(1732,1,'de','HOSTING_PRICING_INFO','*Stand Feb. 2014: Bitte prüfen Sie die Preise ebenfalls beim Anbieter','wizard','',0),(1733,1,'de','HOSTING_SMALL','Klein','wizard','',0),(1734,1,'de','HOSTING_SMALL_MED','Klein / Mittel','wizard','',0),(1735,1,'de','TEXT_ACTIVITING_COUNTRIES','Aktiviere Länder...','wizard','',0),(1736,1,'de','TEXT_ACTIVITING_LANGUAGE','Aktiviere Sprachen...','wizard','',0),(1737,1,'de','TEXT_ALREADY_APPLIED','Dieses Update ist bereits installiert','wizard','',0),(1738,1,'de','TEXT_APPLY_CAN_NOT_BE_APPLIED','Es müssen zuvor andere Updates durchgeführt werden','wizard','',0),(1739,1,'de','TEXT_APPLY_UPDATE','Sie können dieses Update durchführen','wizard','',0),(1740,1,'de','TEXT_AVAILABLE_UPDATES','Verfügbare Updates','wizard','',0),(1741,1,'de','TEXT_BACKINGUP_PLUGIN','Backups der Plugindateien erstellen','wizard','',0),(1742,1,'de','TEXT_BUTTON_CLOSE','Schließen','wizard','',0),(1743,1,'de','TEXT_BUTTON_FORCE_NEXT','Trotzdem fortfahren','wizard','',0),(1744,1,'de','TEXT_BUTTON_GO','Los gehts!','wizard','',0),(1745,1,'de','TEXT_BUTTON_NEXT','Weiter','wizard','',0),(1746,1,'de','TEXT_BUTTON_REGISTER','Registrieren','wizard','',0),(1747,1,'de','TEXT_BUTTON_RELOAD','Seite neu Laden','wizard','',0),(1748,1,'de','TEXT_BUTTON_SAVE','Speichern','wizard','',0),(1749,1,'de','TEXT_CREATE_DBBACKUP','Datenbank-Backup durchführen','wizard','',0),(1750,1,'de','TEXT_DATABASE_UPDATE_BACKUP','Datenbank Backup durchführen?','wizard','',0),(1751,1,'de','TEXT_DOWNLOADING_LATEST_TRANSLATIONS','Downloading latest translations','wizard','',0),(1752,1,'de','TEXT_EXECUTING_DB_UPDATE_SCRIPT','SQL Skripte einspielen','wizard','',0),(1753,1,'de','TEXT_EXECUTING_QUERY','Executing query:','wizard','',0),(1754,1,'de','TEXT_FAILED_INSERT_LANG_CONTENT','Failed to install language content','wizard','',0),(1755,1,'de','TEXT_FAILED_INSERT_LANG_CONTENT_MENU','Failed to install category tree language content','wizard','',0),(1756,1,'de','TEXT_FAILED_PL_BACKUP','Failed to backup plugin','wizard','',0),(1757,1,'de','TEXT_FAILED_REBIULD_CATETGORIES','Failed to rebuild categories','wizard','',0),(1758,1,'de','TEXT_FAILED_STORE_DATA','Failed to update data for Store ID','wizard','',0),(1759,1,'de','TEXT_FINISHED','Fertiggestellt. Klicken Sie auf \"Weiter\" um die Installation fortzusetzen.','wizard','',0),(1760,1,'de','TEXT_FINISHED_UPDATE','Fertiggestellt. Klicken Sie auf \"Weiter\" um die Update fortzusetzen.','wizard','',0),(1761,1,'de','TEXT_HIDE_LOG','Log ausblenden','wizard','',0),(1762,1,'de','TEXT_IMPORTING_TRANSLATIONS','Übersetzungen importieren...','wizard','',0),(1763,1,'de','TEXT_IMPORT_COUNTRIES','Länder importieren...','wizard','',0),(1764,1,'de','TEXT_IMPORT_STOPWORDS','Stopwords importieren...','wizard','',0),(1765,1,'de','TEXT_INSERTING_DEMO_DATA','Demodaten einfügen...','wizard','',0),(1766,1,'de','TEXT_INSERTING_LANG_CONTENT','Sprachinhalte aktualisieren','wizard','',0),(1767,1,'de','TEXT_INSERTING_LANG_CONTENT_MENU','Inserting category tree language content','wizard','',0),(1768,1,'de','TEXT_INSTALL','Installation starten','wizard','',0),(1769,1,'de','TEXT_INSTALLING_DEFAULT_CONTENT','Installiere Standardinhalte','wizard','',0),(1770,1,'de','TEXT_INSTALLING_LANGUAGE_CONTENT','Installiere Sprachinhalte','wizard','',0),(1771,1,'de','TEXT_INSTALLING_PLUGINS','Plugins installieren...','wizard','',0),(1772,1,'de','TEXT_INSTALLING_SYSTEM_CONTENT','Installiere Systeminhalte','wizard','',0),(1773,1,'de','TEXT_INSTALL_MAIL_TEMPLATES','Mail templates importieren...','wizard','',0),(1774,1,'de','TEXT_MUST','notwendige Informationen','wizard','',0),(1775,1,'de','TEXT_OVERWRITE_FILES_MSG','Bitte überschreiben Sie nun alle Dateien des Shops, außer der /conf/config.php mit den Dateien der neuen Version<br><br>Wenn Sie dieses gemacht haben drücken Sie den \"Weiter\"-Knopf','wizard','',0),(1776,1,'de','TEXT_OVERWRITE_FILES_TITLE','Shop-Dateien überschreiben','wizard','',0),(1777,1,'de','TEXT_PLUGIN_HAS_HIGHER_VERSION','Current installed plugin version is higher than the newly copied one. Please revert the files.','wizard','',0),(1778,1,'de','TEXT_PLUGIN_UPDATED','Plugin updated erfolgreich','wizard','',0),(1779,1,'de','TEXT_PLUGIN_UP_TO_DATE','Plugin is up to date','wizard','',0),(1780,1,'de','TEXT_PROCESSING','Installieren ...','wizard','',0),(1781,1,'de','TEXT_QUERY_FAILED','Failed to execute:','wizard','',0),(1782,1,'de','TEXT_QUERY_SKIPPED','Query not executed:','wizard','',0),(1783,1,'de','TEXT_READING_XML_FILE','XML-Datei lesen...','wizard','',0),(1784,1,'de','TEXT_REBUILDING_CATEGORIES','Kategorien neu berechnen','wizard','',0),(1785,1,'de','TEXT_SAVING_CURRENCY','Währungen speichern...','wizard','',0),(1786,1,'de','TEXT_SAVING_LANGUAGE','Sprachen Speichern...','wizard','',0),(1787,1,'de','TEXT_SETTING_UP_TAXES','Aktiviere Steuer...','wizard','',0),(1788,1,'de','TEXT_SHOW_LOG','Zeige Log','wizard','',0),(1789,1,'de','TEXT_SKIP','Überspringen / Weiter','wizard','',0),(1790,1,'de','TEXT_SUCCESS_REBIULD_CATETGORIES','Rebuild categories successfully','wizard','',0),(1791,1,'de','TEXT_UPDATE','Shop Update durchführen','wizard','',0),(1792,1,'de','TEXT_UPDATING','Updating ...','wizard','',0),(1793,1,'de','TEXT_UPDATING_COUNTRY_PHONE_PREFIX','Updating countries phone prefix','wizard','',0),(1794,1,'de','TEXT_UPDATING_DATA_STORE','Updating data for Store ID','wizard','',0),(1795,1,'de','TEXT_UPDATING_DATA_STORE_EXECUTED','Executed rows for store','wizard','',0),(1796,1,'de','TEXT_UPDATING_PLUGIN','Updating plugin','wizard','',0),(1797,1,'de','TEXT_UPDATING_TAX_RATES','Updating tax rates','wizard','',0),(1798,1,'de','TEXT_WAIT_BACKUP','Laden Sie die Seite nicht neu nachdem Sie auf \"Weiter\" geklickt haben.','wizard','',0),(1799,1,'de','XTC_HOSTINGS_HEADER','Unsere Empfehlungen:','wizard','',0),(1800,1,'de','XTC_TH_HOSTER','Hoster','wizard','',0),(1801,1,'de','XTC_TH_PACK','Hostingpaket','wizard','',0),(1802,1,'de','XTC_TH_PRICE','Paketpreis','wizard','',0),(1803,1,'de','XTC_TH_RATING','Rating','wizard','',0),(1804,1,'de','XTC_TH_SSIZE','Shopgröße','wizard','',0),(1805,1,'de','_ERROR_API_PASSWORD','Bitte geben Sie Ihr API-Passwort an!','wizard','',0),(1806,1,'de','_ERROR_API_SIGNATURE','Bitte geben Sie Ihre API-Signatur an!','wizard','',0),(1807,1,'de','_ERROR_API_USER','Bitte geben Sie Ihren API-Benutzer an!','wizard','',0),(1808,1,'de','_ERROR_BILLPAY_MERCHANT_ID','Bitte geben Sie Ihre Verkäufer ID an!','wizard','',0),(1809,1,'de','_ERROR_BILLPAY_MERCHANT_PASSWORD','Bitte geben Sie Ihren Billpay Lizenzschlüssel an!','wizard','',0),(1810,1,'de','_ERROR_CEO','Bitte geben Sie einen Vertretungsberechtigten an!','wizard','',0),(1811,1,'de','_ERROR_CITY','Bitte geben Sie eine Stadt an!','wizard','',0),(1812,1,'de','_ERROR_COMPANY','Bitte geben Sie einen Firmennamen an!','wizard','',0),(1813,1,'de','_ERROR_DATABASE','Bitte geben Sie eine Datenbank an!','wizard','',0),(1814,1,'de','_ERROR_DEFAULT_LANGUAGE_NOT_SELECTED','Ausgewählte Standardsprache wurde nicht als Sprachpaket gewählt','wizard','',0),(1815,1,'de','_ERROR_EBAY_EMAIL','Bitte geben Sie die gewünschte xt:Multiconnect Login-Addresse an','wizard','',0),(1816,1,'de','_ERROR_EBAY_USER','Bitte geben Sie Ihren eBay Benutzernamen an','wizard','',0),(1817,1,'de','_ERROR_EKOMI_AGB','Bitte bestätigen Sie die Allgemeinen Geschäftsbedingungen von eKomi oder überspringen Sie diesen Schritt.','wizard','',0),(1818,1,'de','_ERROR_EKOMI_EMAIL','Bitte füllen Sie das Feld E-Mail mit Ihrer E-Mail-Adresse. Die Mail-Adresse ist notwendig für die Erstellung eines eKomi-Accounts, alternativ können Sie den Schritt überspringen.','wizard','',0),(1819,1,'de','_ERROR_EMAIL','Bitte geben Sie eine E-Mail Adresse an!','wizard','',0),(1820,1,'de','_ERROR_EMAIL_FROM','Bitte geben Sie eine Absender-E-Mail Adresse an!','wizard','',0),(1821,1,'de','_ERROR_EMAIL_MATCH','E-Mail Adressen stimmen nicht überein!','wizard','',0),(1822,1,'de','_ERROR_EMAIL_TO','Bitte geben Sie eine Empfänger-E-Mail Adresse an!','wizard','',0),(1823,1,'de','_ERROR_LICENSE','Bitte bestätigen Sie die Lizenzbedingngen','wizard','',0),(1824,1,'de','_ERROR_NEED_MYSQL5','xt:Commerce 4.2 benötigt eine MYSQL 5 Datenbank, Sie haben versucht xt:Commerce 4.2 in eine MYSQL 3 oder MYSQL 4 Datenbank zu installieren','wizard','',0),(1825,1,'de','_ERROR_NL2GO_AGB','Bitte bestätigen Sie die Allgemeinen Geschäftsbedingungen von Newlsetter2Go oder überspringen Sie diesen Schritt.','wizard','',0),(1826,1,'de','_ERROR_NL2GO_EMAIL','Bitte füllen Sie das Feld E-Mail mit Ihrer E-Mail-Adresse. Die Mail-Adresse ist notwendig für die Erstellung eines Newlsetter2Go-Accounts, alternativ können Sie den Schritt überspringen.','wizard','',0),(1827,1,'de','_ERROR_NO_LANGUAGE_SELECTED','Bitte wählen Sie mindestens ein Sprachpaket','wizard','',0),(1828,1,'de','_ERROR_PASSWORD','Bitte geben Sie ein Passwort an!','wizard','',0),(1829,1,'de','_ERROR_SERVER','Bitte geben Sie einen Datenbankserver an!','wizard','',0),(1830,1,'de','_ERROR_START_ERROR','<p><strong>Systemanforderungen nicht erfüllt</strong></p><p>Eine oder mehrere Anforderungen von xt:Commerce 4.2 an das Webhosting wurden nicht erfüllt. Bitte Kontaktieren Sie Ihren Webhoster und bitten Sie die Einstellungen des Servers anzupassen.</p><p>Alternativ finden Sie <a href=\"#\" data-toggle=\"modal\" data-target=\"#hostingmodal\">hier</a> unsere empfehlungen für das Shop-Hosting.</p>','wizard','',0),(1831,1,'de','_ERROR_START_SUCCESS','<p><strong>Systemanforderungen erfüllt!</strong></p><p>Klicken Sie auf \"weiter\" um mit der Konfiguration fortzufahren.</p>','wizard','',0),(1832,1,'de','_ERROR_STORE_NAME','Bitte geben Sie einen Shop Titel an!','wizard','',0),(1833,1,'de','_ERROR_STREET_ADDRESS','Bitte geben Sie eine Strasse/Hausnummer an!','wizard','',0),(1834,1,'de','_ERROR_USER','Bitte geben Sie einen Datenbankbenutzer an!','wizard','',0),(1835,1,'de','_ERROR_XTP_AGB','Bitte bestätigen Sie die Allgemeinen Geschäftsbedingungen von SafeCharge.','wizard','',0),(1836,1,'de','_ERROR_XTP_EMAIL','Bitte füllen Sie das Feld E-Mail mit Ihrer E-Mail-Adresse. Die Mail-Adresse ist notwendig für die Erstellung eines xt:Commere Payment Accounts.','wizard','',0),(1837,1,'de','_ERROR_ZIP','Bitte geben Sie eine Postleitzahl an!','wizard','',0),(1838,1,'de','_MAX_EXECUTION_TIME','php-Einstellung \"max_execution_time\"','wizard','',0),(1839,1,'de','_SYSTEM_CHECK_IMAGE_FTBBOX','PHP Funktion imageftbbox (PHP Freetype unterstützung)','wizard','',0),(1840,1,'de','_SYSTEM_CHECK_MAGIC_QUOTES','Magic quotes On (magic_quotes_gpc)','wizard','',0),(1841,1,'de','_SYSTEM_CHECK_MOD_REWRITE','Apache - mod_rewrite (SEO Urls!)','wizard','',0),(1842,1,'de','_SYSTEM_CHECK_OPENSSL','openssl Library','wizard','',0),(1843,1,'de','_SYSTEM_CHECK_SOAP','PHP SOAP Library (für BillSafe Plugin)','wizard','',0),(1844,1,'de','_SYSTEM_CURL','PHP - cURL','wizard','',0),(1845,1,'de','_SYSTEM_FILE_UPLOAD','Dateiuploads','wizard','',0),(1846,1,'de','_SYSTEM_GDLIB','PHP - GDlib v2','wizard','',0),(1847,1,'de','_SYSTEM_GDLIB_GIF','PHP - GDlib GIF Support','wizard','',0),(1848,1,'de','_SYSTEM_MEMORY_LIMIT','Speicher Limit (mind. 64MB)','wizard','',0),(1849,1,'de','_SYSTEM_PHP_VERSION','PHP-Version >= 5.3.0','wizard','',0),(1850,1,'de','_SYSTEM_REG_GLOBALS','Register Globals aus','wizard','',0),(1851,1,'de','_SYSTEM_SAFE_MODE','Safe Mode aus','wizard','',0),(1852,1,'de','_SYSTEM_SESSION_AUTOSTART','Session Auto Start aus','wizard','',0),(1853,1,'de','_SYSTEM_ZLIB','PHP - Zlib','wizard','',0),(1854,1,'de','_TEXT_DATABASE_ADMIN_EMAIL','Administrator E-Mail','wizard','',0),(1855,1,'de','_TEXT_DATABASE_COUNTRY','Land','wizard','',0),(1856,1,'de','_TEXT_DATABASE_DB_NAME','Datenbank','wizard','',0),(1857,1,'de','_TEXT_DATABASE_DEMO','Demodaten','wizard','',0),(1858,1,'de','_TEXT_DATABASE_EMAIL_FROM','E-Mail Absender Adresse','wizard','',0),(1859,1,'de','_TEXT_DATABASE_EMAIL_FROM_INFO','Der Absender der Systemmails z.B. service@ihr-shop.com','wizard','',0),(1860,1,'de','_TEXT_DATABASE_EMAIL_TO','E-Mail Empfänger der Bestellungen','wizard','',0),(1861,1,'de','_TEXT_DATABASE_EMAIL_TO_INFO','Empfänger der Bestellungen z.B. bestellungen@ihr-shop.com','wizard','',0),(1862,1,'de','_TEXT_DATABASE_HEADER','Datenbank','wizard','',0),(1863,1,'de','_TEXT_DATABASE_HEADER_PRE','Administrator & Sprachen','wizard','',0),(1864,1,'de','_TEXT_DATABASE_HOST','Datenbankserver','wizard','',0),(1865,1,'de','_TEXT_DATABASE_IMPORT_LANG','Sprachpakete','wizard','',0),(1866,1,'de','_TEXT_DATABASE_INFO1','Sollten Sie diese Daten nicht wissen, so muss Ihnen Ihr Provider diese Mitteilen.','wizard','',0),(1867,1,'de','_TEXT_DATABASE_INFO2','Für die Installation wird eine <strong>leere Datenbank</strong> benötigt, das Installationsscript setzt das Charset der Datenbank auf utf8. Dies kann die Funktion von anderen Systemen beeinträchtigen die in der gleichen Datenbank installiert sind!','wizard','',0),(1868,1,'de','_TEXT_DATABASE_INFO3','Es werden einige Demoprodukte und Kategorien, sowie eine Beispiel für eine Versandart angelegt.','wizard','',0),(1869,1,'de','_TEXT_DATABASE_LANG_BP','Portugiesisch/Brasilien','wizard','',0),(1870,1,'de','_TEXT_DATABASE_LANG_DE','Deutsch','wizard','',0),(1871,1,'de','_TEXT_DATABASE_LANG_DEFAULT','Standardsprache','wizard','',0),(1872,1,'de','_TEXT_DATABASE_LANG_EN','Englisch','wizard','',0),(1873,1,'de','_TEXT_DATABASE_LANG_TR','Türkisch','wizard','',0),(1874,1,'de','_TEXT_DATABASE_PASS','Passwort','wizard','',0),(1875,1,'de','_TEXT_DATABASE_PREFIX','Prefix','wizard','',0),(1876,1,'de','_TEXT_DATABASE_REPEAT_EMAIL','E-Mail wiederholen','wizard','',0),(1877,1,'de','_TEXT_DATABASE_RULES','- Datenbankserver (in der Regel \\\'localhost\\\')<br />- Benutzername und Passwort<br />- Name der Datenbank<br />','wizard','',0),(1878,1,'de','_TEXT_DATABASE_TITLE','Für die Verbindung zur Datenbank benötigen Sie','wizard','',0),(1879,1,'de','_TEXT_DATABASE_TITLE_PRE','Bitte wählen Sie Ihre gewünschten Sprachen und Sitz Ihres Unternehmens für das automatische Umsatzsteuer-Setup aus.','wizard','',0),(1880,1,'de','_TEXT_DATABASE_USER','Benutzername','wizard','',0),(1881,1,'de','_TEXT_DATABASE_WARNING','Achtung!','wizard','',0),(1882,1,'de','_TEXT_EKOMI_AGB_CHECK','Ich akzeptiere die AGB der eKomi Ldt und aktiviere das kostenfreie eKomi Collect.','wizard','',0),(1883,1,'de','_TEXT_EKOMI_EMAIL','E-Mail Adresse','wizard','',0),(1884,1,'de','_TEXT_EKOMI_MULTICONNECT_CHECK','Ich akzeptiere die AGB der RedGecko GmbH und aktiviere das für eBay kostenfreie xt:Commerce Multiconnect Modul.','wizard','',0),(1885,1,'de','_TEXT_FINISH_ADMIN_LINK','Zum Backend','wizard','',0),(1886,1,'de','_TEXT_FINISH_ADMIN_NAME','admin','wizard','',0),(1887,1,'de','_TEXT_FINISH_HEADER','Installation Erfolgreich!','wizard','',0),(1888,1,'de','_TEXT_FINISH_INFO1','Bei der Installation wurde ein Administrator Account mit folgenden Daten angelegt.<br> Bitte notieren Sie sich das Passwort und geben sie es an niemanden weiter.','wizard','',0),(1889,1,'de','_TEXT_FINISH_PASS','Passwort','wizard','',0),(1890,1,'de','_TEXT_FINISH_SHOPLINK','Zum Shop','wizard','',0),(1891,1,'de','_TEXT_FINISH_SUCCESS','xt:Commerce 4.2 wurde erfolgreich installiert!','wizard','',0),(1892,1,'de','_TEXT_FINISH_USERNAME','Benutzername','wizard','',0),(1893,1,'de','_TEXT_LANGUAGE_DESC','Sprachen werden installiert, bitte unterbrechen Sie den Vorgang nicht - Sie werden automatisch zum nächsten Schritt geleitet.','wizard','',0),(1894,1,'de','_TEXT_LANGUAGE_INFO1','Sprache','wizard','',0),(1895,1,'de','_TEXT_LANGUAGE_INFO2','erfolgreich installiert.','wizard','',0),(1896,1,'de','_TEXT_LANGUAGE_TITLE','Sprache installieren','wizard','',0),(1897,1,'de','_TEXT_LICENSE','Lizenz / EULA','wizard','',0),(1898,1,'de','_TEXT_LICENSE_CHECK','Ich habe die Lizenzbedingungen gelesen und akzeptiere diese.','wizard','',0),(1899,1,'de','_TEXT_NL2GO_AGB_CHECK','Ich akzeptiere die AGB der Newlsetter2Go und aktiviere das kostenfreie Newsletter Modul.','wizard','',0),(1900,1,'de','_TEXT_PAYPAL_CHECK','Ich akzeptiere die AGB von SafeCharge.','wizard','',0),(1901,1,'de','_TEXT_PLUGIN_DESC','Plugins werden installiert, bitte unterbrechen Sie den Vorgang nicht - Sie werden automatisch zum nächsten Schritt geleitet.','wizard','',0),(1902,1,'de','_TEXT_PLUGIN_FROM','von','wizard','',0),(1903,1,'de','_TEXT_PLUGIN_HERE','hier','wizard','',0),(1904,1,'de','_TEXT_PLUGIN_INFO1','Plugin','wizard','',0),(1905,1,'de','_TEXT_PLUGIN_INFO2','erfolgreich installiert','wizard','',0),(1906,1,'de','_TEXT_PLUGIN_INFO3','','wizard','',0),(1907,1,'de','_TEXT_PLUGIN_TITLE','Standard Plugins installieren','wizard','',0),(1908,1,'de','_TEXT_SELECT_LANGUAGE','Sprache:','wizard','',0),(1909,1,'de','_TEXT_SHOPOWNER_CEO','Geschäftsführer','wizard','',0),(1910,1,'de','_TEXT_SHOPOWNER_CITY','Stadt','wizard','',0),(1911,1,'de','_TEXT_SHOPOWNER_COMPANY','Firmenname','wizard','',0),(1912,1,'de','_TEXT_SHOPOWNER_FAX','Fax','wizard','',0),(1913,1,'de','_TEXT_SHOPOWNER_HEADER','Stammdaten einrichten','wizard','',0),(1914,1,'de','_TEXT_SHOPOWNER_STREETADDRESS','Strasse','wizard','',0),(1915,1,'de','_TEXT_SHOPOWNER_TELEPHONE','Telefon','wizard','',0),(1916,1,'de','_TEXT_SHOPOWNER_VAT_ID','Umsatzsteuer ID','wizard','',0),(1917,1,'de','_TEXT_SHOPOWNER_ZIP','Postleitzahl','wizard','',0),(1918,1,'de','_TEXT_SHOP_NAME','Shop Titel','wizard','',0),(1919,1,'de','_TEXT_START_CHECK','Installationsprüfung','wizard','',0),(1920,1,'de','_TEXT_START_COLUMN1','Anforderung','wizard','',0),(1921,1,'de','_TEXT_START_COLUMN2','Version/Wert','wizard','',0),(1922,1,'de','_TEXT_START_COLUMN3','Erfüllt','wizard','',0),(1923,1,'de','_TEXT_START_INTRO','Dieser Assistent führt sie durch die Installation von xt:Commerce 4.2.<br />Auf den folgenden Seiten wird ihre Datenbank und ihr Administrator Zugang eingerichtet.<br /><br />Sollten sie Fragen haben, zögern sie bitte nicht unseren Support zu Kontaktieren.<br /><a href=\"mailto:helpdesk@xt-commerce.com\">helpdesk@xt-commerce.com</a><br />Erfolgreiche Geschäfte wünscht ihnen die xt:Commerce GmbH!','wizard','',0),(1924,1,'de','_TEXT_START_LANG_BP','Português brasileiro','wizard','',0),(1925,1,'de','_TEXT_START_LANG_DE','Deutsch','wizard','',0),(1926,1,'de','_TEXT_START_LANG_EN','English','wizard','',0),(1927,1,'de','_TEXT_START_LICENSEINFO','Lizenzinformationen','wizard','',0),(1928,1,'de','_TEXT_START_PERMISSIONS','Berechtigungen','wizard','',0),(1929,1,'de','_TEXT_START_PERMISSIONS_FAIL','Verzeichnisrechte nicht in Ordnung, bitte geben sie Schreibrechte auf obige Datein/Ordner','wizard','',0),(1930,1,'de','_TEXT_START_PERMISSIONS_PASS','Verzeichnisrechte in Ordnung','wizard','',0),(1931,1,'de','_TEXT_START_SETTINGS','Systemanforderungen','wizard','',0),(1932,1,'de','_TEXT_START_TITLE','<span class=\"xt\">xt:</span>Commerce 4.2','wizard','',0),(1933,1,'de','_TEXT_START_UPDATE_FINISH_CONTENT','Datenbank - Update durchgeführt, bitte löschen Sie das Verzeichnis <b>/xtWizard/</b> von ihrem Server!<br /><br />Bitte folgen Sie den weiteren Anweisungen in der Update-Anleitung','wizard','',0),(1934,1,'de','_TEXT_START_UPDATE_FINISH_TITLE','Update Erfolgreich!','wizard','',0),(1935,1,'de','_TEXT_UPDATE_INTRO','Dieser Assistent führt sie durch das Update Ihres xt:Commerce-Shop, bitte halten Sie sich strickt an die Updateanleitung, welche Sie unter folgender URL finden:<br /><a href=\"https://xtcommerce.atlassian.net/wiki/display/MANUAL/Anleitung+4.1.10+auf+4.2.00+updaten\" target=\"_blank\">https://xtcommerce.atlassian.net/wiki/display/MANUAL/Anleitung+4.1.10+auf+4.2.00+updaten</a><br /><br />Sollten sie Fragen haben, zögern sie bitte nicht unseren Support zu Kontaktieren.<br /><a href=\"mailto:helpdesk@xt-commerce.com\">helpdesk@xt-commerce.com</a><br />Erfolgreiche Geschäfte wünscht ihnen die xt:Commerce GmbH!','wizard','',0),(1936,1,'de','_TEXT_UPDATE_INTRO_VERSION','Botte führen Sie zunächst das Update auf die Version 4.1.10 durch, erst ab dieser Version können Sie den xtWizard nutzen um weitere Updates durchzuführen. Alle Updateanleitungen finden Sie unter folgender URL: <br /> <a href=\"https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=2555933\" target=\"_blank\">https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=2555933</a><br />Erfolgreiche Geschäfte wünscht ihnen die xt:Commerce GmbH!','wizard','',0),(1937,1,'de','_TEXT_UPDATING_DATA_STORES','Shop-Daten aktualisieren','wizard','',0),(1938,1,'de','TEXT_DROPDOWN_LANGUAGE_CODE','Sprach Code','New','',0),(1939,1,'en','BUTTON_BROWSE_FILES','browser files','admin','',0),(1940,1,'en','BUTTON_BROWSE_IMAGES','browse images','admin','',0),(1941,1,'en','BUTTON_CANCEL','cancel','admin','',0),(1942,1,'en','BUTTON_CLOSE_WINDOW','close window','admin','',0),(1943,1,'en','BUTTON_COPY','Copy','admin','',0),(1944,1,'en','BUTTON_DELETE','delete','admin','',0),(1945,1,'en','BUTTON_EDIT','edit','admin','',0),(1946,1,'en','BUTTON_EDIT_IMAGES','Edit Images','admin','',0),(1947,1,'en','BUTTON_LOGIN','login','admin','',0),(1948,1,'en','BUTTON_LOGOFF','logoff','admin','',0),(1949,1,'en','BUTTON_NEW','new','admin','',0),(1950,1,'en','BUTTON_POPUP','search','admin','',0),(1951,1,'en','BUTTON_PROCESS_CURRENT_IMAGES','Start Imageprocessing','admin','',0),(1952,1,'en','BUTTON_REENABLE_DOWNLOAD','Reenable file download','admin','',0),(1953,1,'en','BUTTON_RESET','reload','admin','',0),(1954,1,'en','BUTTON_SAVE','save','admin','',0),(1955,1,'en','BUTTON_SELECT','apply selection','admin','',0),(1956,1,'en','BUTTON_SEND_ORDER_MAIL','Order confirmation email','admin','',0),(1957,1,'en','BUTTON_START_SEO','Start Processing','admin','',0),(1958,1,'en','BUTTON_STATUS_FALSE','disable selection','admin','',0),(1959,1,'en','BUTTON_STATUS_TRUE','enable selection','admin','',0),(1960,1,'en','BUTTON_UPDATE','transfer','admin','',0),(1961,1,'en','BUTTON_UPLOAD_FILES','upload files','admin','',0),(1962,1,'en','BUTTON_UPLOAD_IMAGES','Bupload images','admin','',0),(1963,1,'en','DESC_LANGUAGE_ADMIN_DESC','This textfiles are for the admin area','admin','',0),(1964,1,'en','DESC_LANGUAGE_STORE_DESC','This textfiles are for the shop area','admin','',0),(1965,1,'en','ERROR_BLANK','no datas','admin','',0),(1966,1,'en','ERROR_HEADING_RIGHT_CLICK_FORBID','Error','admin','',0),(1967,1,'en','ERROR_LOGIN_LOCKED','the max number of failed logins was used. Your account is now blocked for %s minutes, after this waiting time,please try again.','admin','',0),(1968,1,'en','ERROR_MAX','Input to long for this field','admin','',0),(1969,1,'en','ERROR_MIN','Input to short for this field','admin','',0),(1970,1,'en','ERROR_MISSING_PLG_LIC_FILE','This plugin requires a purchased license','admin','',0),(1971,1,'en','ERROR_TEXT_RIGHT_CLICK_FORBID','right click not allowed','admin','',0),(1972,1,'en','FEED_LANGUAGE_CODE','language','admin','',0),(1973,1,'en','FEED_MANUFACTURER','manufacturer','admin','',0),(1974,1,'en','FEED_P_CUSTOMERS_STATUS','customer status','admin','',0),(1975,1,'en','HEADING_ACL_AREA','admin rights','admin','',0),(1976,1,'en','HEADING_ACL_GROUPS','admin groups','admin','',0),(1977,1,'en','HEADING_ACL_GROUP_TO_PERMISSION','Grouppermissions','admin','',0),(1978,1,'en','HEADING_ACL_USER','admin user','admin','',0),(1979,1,'en','HEADING_ADDRESS','customer addresses','admin','',0),(1980,1,'en','HEADING_BASE_PRICE','packaging unit','admin','',0),(1981,1,'en','HEADING_BRUTO_FORCE_PROTECTION','failed logins','admin','',0),(1982,1,'en','HEADING_CALLBACK','IPN Log','admin','',0),(1983,1,'en','HEADING_CAMPAIGN','campaign','admin','',0),(1984,1,'en','HEADING_CATEGORY','category','admin','',0),(1985,1,'en','HEADING_CONFIGURATION','configuration','admin','',0),(1986,1,'en','HEADING_CONTENT','content','admin','',0),(1987,1,'en','HEADING_CONTENT_BLOCKS','content blocks','admin','',0),(1988,1,'en','HEADING_COUNTRIES','countries','admin','',0),(1989,1,'en','HEADING_CROSS_SELLING_PRODUCTS','Crossselling products','admin','',0),(1990,1,'en','HEADING_CURRENCY','currency','admin','',0),(1991,1,'en','HEADING_CUSTOMER','customer','admin','',0),(1992,1,'en','HEADING_CUSTOMERS_STATUS','customer status','admin','',0),(1993,1,'en','HEADING_EMAIL_MANAGER','e-mail manager','admin','',0),(1994,1,'en','HEADING_EXPORT','export-manager','admin','',0),(1995,1,'en','HEADING_IMAGETYPES','images types','admin','',0),(1996,1,'en','HEADING_LANGUAGE','language','admin','',0),(1997,1,'en','HEADING_LANGUAGE_CONTENT','language packets','admin','',0),(1998,1,'en','HEADING_MANUFACTURER','manufacturer','admin','',0),(1999,1,'en','HEADING_MEDIAFILEMANAGER','file manager','admin','',0),(2000,1,'en','HEADING_MEDIAFILETYPES','media file types','admin','',0),(2001,1,'en','HEADING_ORDER','orders','admin','',0),(2002,1,'en','HEADING_ORDER_STATUS','order status','admin','',0),(2003,1,'en','HEADING_PAYMENT','payment','admin','',0),(2004,1,'en','HEADING_PAYMENT_PRICE','payment fees','admin','',0),(2005,1,'en','HEADING_PLUGIN_HOOKPOINTS','hookpoints','admin','',0),(2006,1,'en','HEADING_PLUGIN_INSTALLED','installed plugins','admin','',0),(2007,1,'en','HEADING_PLUGIN_UNINSTALLED','plugins uninstalled','admin','',0),(2008,1,'en','HEADING_PRODUCT','article','admin','',0),(2009,1,'en','HEADING_PRODUCT_PRICE','customer status / graduated prices','admin','',0),(2010,1,'en','HEADING_PRODUCT_SERIALS','product serial number','admin','',0),(2011,1,'en','HEADING_PRODUCT_SP_PRICE','special pricing','admin','',0),(2012,1,'en','HEADING_PRODUCT_TO_CAT','product to category','admin','',0),(2013,1,'en','HEADING_SHIPPING','shipment','admin','',0),(2014,1,'en','HEADING_SHIPPING_PRICE','shipping costs','admin','',0),(2015,1,'en','HEADING_SHIPPING_STATUS','shippingtime','admin','',0),(2016,1,'en','HEADING_STOCK_RULE','stock','admin','',0),(2017,1,'en','HEADING_TAX','VAT','admin','',0),(2018,1,'en','HEADING_TAX_CLASS','tax class','admin','',0),(2019,1,'en','HEADING_XT_REVIEWS','reviews','admin','',0),(2020,1,'en','HEADING_ZONE','tax zone','admin','',0),(2021,1,'en','New','company','admin','',0),(2022,1,'en','TABTEXT_ACL_AREA','admin rights','admin','',0),(2023,1,'en','TABTEXT_ACL_GROUPS','admin groups','admin','',0),(2024,1,'en','TABTEXT_ACL_USER','admin user','admin','',0),(2025,1,'en','TABTEXT_ADMIN_PERM','adminpermission','admin','',0),(2026,1,'en','TABTEXT_CATEGORY','categories','admin','',0),(2027,1,'en','TABTEXT_CONFIG','configuration','admin','',0),(2028,1,'en','TABTEXT_CONFIGURATION','configuration','admin','',0),(2029,1,'en','TABTEXT_CONFIG_STORE','shop configuration','admin','',0),(2030,1,'en','TABTEXT_CONTENT','content','admin','',0),(2031,1,'en','TABTEXT_CONTENTROOT','root','admin','',0),(2032,1,'en','TABTEXT_CONTENT_BLOCKS','content blocks','admin','',0),(2033,1,'en','TABTEXT_CONTENT_MANAGER','content manager','admin','',0),(2034,1,'en','TABTEXT_COUNTRIES','countries','admin','',0),(2035,1,'en','TABTEXT_CURRENCY','currency','admin','',0),(2036,1,'en','TABTEXT_CUSTOMER','customer','admin','',0),(2037,1,'en','TABTEXT_CUSTOMERS_STATUS','customer status','admin','',0),(2038,1,'en','TABTEXT_DASHBOARD','dashboard','admin','',0),(2039,1,'en','TABTEXT_EMAIL_MANAGER','email manager','admin','',0),(2040,1,'en','TABTEXT_EXPORT','export','admin','',0),(2041,1,'en','TABTEXT_LANGUAGE','language','admin','',0),(2042,1,'en','TABTEXT_LANGUAGE_CONTENT','language packets','admin','',0),(2043,1,'en','TABTEXT_LOCALIZING','localizing','admin','',0),(2044,1,'en','TABTEXT_MANUFACTURER','manufacturer','admin','',0),(2045,1,'en','TABTEXT_MEDIA_MANAGER','media manager','admin','',0),(2046,1,'en','TABTEXT_ORDER','orders','admin','',0),(2047,1,'en','TABTEXT_ORDERTAB','orders','admin','',0),(2048,1,'en','TABTEXT_PAYMENT','payment options','admin','',0),(2049,1,'en','TABTEXT_PLUGIN','Plugin','admin','',0),(2050,1,'en','TABTEXT_PLUGIN_INSTALLED','plugins installed','admin','',0),(2051,1,'en','TABTEXT_PLUGIN_UNINSTALLED','plugins uninstalled','admin','',0),(2052,1,'en','TABTEXT_PRODUCT','product','admin','',0),(2053,1,'en','TABTEXT_SHIPPING','shipping options','admin','',0),(2054,1,'en','TABTEXT_SHOP','shop','admin','',0),(2055,1,'en','TABTEXT_STORES','stores','admin','',0),(2056,1,'en','TABTEXT_SYSTEM_STATUS','systemstatus','admin','',0),(2057,1,'en','TABTEXT_TAX','VAT','admin','',0),(2058,1,'en','TABTEXT_TAX_CLASS','tax class','admin','',0),(2059,1,'en','TABTEXT_XT_REVIEWS','reviews','admin','',0),(2060,1,'en','TEXT_ACL_AREA','admin rights','admin','',0),(2061,1,'en','TEXT_ACL_DELETE','Delete','admin','',0),(2062,1,'en','TEXT_ACL_EDIT','Edit','admin','',0),(2063,1,'en','TEXT_ACL_GROUPS','admin groups','admin','',0),(2064,1,'en','TEXT_ACL_GROUP_PERMISSIONS','admin rights permissions','admin','',0),(2065,1,'en','TEXT_ACL_GROUP_TO_PERMISSION','Accesspermission','admin','',0),(2066,1,'en','TEXT_ACL_NEW','New','admin','',0),(2067,1,'en','TEXT_ACL_READ','Read','admin','',0),(2068,1,'en','TEXT_ACL_USER','admin user','admin','',0),(2069,1,'en','TEXT_ACTION','Action','admin','',0),(2070,1,'en','TEXT_ACTIVE','Review status','admin','',0),(2071,1,'en','TEXT_ACTIVE_STATUS','Status','admin','',0),(2072,1,'en','TEXT_ADDED_PAYMENT MODULE','payment modul added:','admin','',0),(2073,1,'en','TEXT_ADDED_PAYMENT_CONFIG_FOR_STORE','payment moduloption added for store','admin','',0),(2074,1,'en','TEXT_ADDED_PAYMENT_MODULE','Added paymentmethod:','admin','',0),(2075,1,'en','TEXT_ADDED_PLUGIN_CONFIG_FOR_STORE','pluginoption added for store','admin','',0),(2076,1,'en','TEXT_ADDRESS','customer addresses','admin','',0),(2077,1,'en','TEXT_ADDRESS_BOOK_ID','address ID','admin','',0),(2078,1,'en','TEXT_ADDRESS_CLASS','address typ','admin','',0),(2079,1,'en','TEXT_ADD_CUSTOM_LINK','Add custom link','admin','',0),(2080,1,'en','TEXT_ADMIN','administrator','admin','',0),(2081,1,'en','TEXT_ADMIN_ACTON_STATUS','status','admin','',0),(2082,1,'en','TEXT_ADMIN_DROPDOWN_SELECT','- please choose -','admin','',0),(2083,1,'en','TEXT_ADMIN_NEWS','News','admin','',0),(2084,1,'en','TEXT_ADMIN_PAID_ONLY','Licence restriction','admin','',0),(2085,1,'en','TEXT_ADMIN_PAID_ONLY_INFO','This functionality is only available in our paid licenses (starting from Professional+).<br />You can upgrade your Version anytime through our marketplace.<br /><br/>if you have any questions, feel free to contact our support via helpdesk@xt-commerce.com.<br/><br/>','admin','',0),(2086,1,'en','TEXT_ADMIN_PERM','admin permission','admin','',0),(2087,1,'en','TEXT_ADMIN_SSL','Admin SSL','admin','',0),(2088,1,'en','TEXT_ADODBHEALTH','status','admin','',0),(2089,1,'en','TEXT_ADODBLIVE','live-performance','admin','',0),(2090,1,'en','TEXT_ADODBPERFORMANCE','database monitor','admin','',0),(2091,1,'en','TEXT_ADODBQUERY','query','admin','',0),(2092,1,'en','TEXT_ADVANCED_FILTER','Advanced Filter','admin','',0),(2093,1,'en','TEXT_ALBUMS','albums','admin','',0),(2094,1,'en','TEXT_ALERT','alert','admin','',0),(2095,1,'en','TEXT_ALERT_NOT_A_CATEGORY','This is not a category','admin','',0),(2096,1,'en','TEXT_ALERT_NOT_A_CUSTOM_LINK','This is not a custom link','admin','',0),(2097,1,'en','TEXT_ALL','All','admin','',0),(2098,1,'en','TEXT_ALLOW_EDIT','Editable in backend','admin','',0),(2099,1,'en','TEXT_ALL_PRODUCTS','All products','admin','',0),(2100,1,'en','TEXT_AMOUNT','Amount','admin','',0),(2101,1,'en','TEXT_AMOUNT_TOTAL','Total','admin','',0),(2102,1,'en','TEXT_AREA_DESCRIPTION','admin rights description','admin','',0),(2103,1,'en','TEXT_AREA_ID','admin rights ID','admin','',0),(2104,1,'en','TEXT_AREA_NAME','admin rights name','admin','',0),(2105,1,'en','TEXT_ARTICLE','products','admin','',0),(2106,1,'en','TEXT_ASC','ascending','admin','',0),(2107,1,'en','TEXT_ASK_DELETE_CATEGORY','realy delete all subcategories ?','admin','',0),(2108,1,'en','TEXT_ASK_DELETE_CUSTOM_LINK','Are you sure you want to delete the custom link?','admin','',0),(2109,1,'en','TEXT_ASK_DELETE_MEDIA_CATEGORY','Delete Category ?','admin','',0),(2110,1,'en','TEXT_ASK_DELETE_SHOP','realy delete client shop ? A L L customers and orders of this client will be deleted !!!','admin','',0),(2111,1,'en','TEXT_ASK_DISABLE_CATEGORIES_SHOP','This will DISABLE ALL categories for selected store!','admin','',0),(2112,1,'en','TEXT_ASK_DISABLE_MANUFACTURERS_SHOP','This will DISABLE ALL manufacturers for selected store!','admin','',0),(2113,1,'en','TEXT_ASK_DISABLE_PRODUCTS_SHOP','This will DISABLE ALL products for selected store!','admin','',0),(2114,1,'en','TEXT_ASK_ENABLE_CATEGORIES_SHOP','This will ENABLE ALL categories for selected store!','admin','',0),(2115,1,'en','TEXT_ASK_ENABLE_MANUFACTURERS_SHOP','This will ENABLE ALL manufacturers for selected store!','admin','',0),(2116,1,'en','TEXT_ASK_ENABLE_PRODUCTS_SHOP','This will ENABLE ALL products for selected store!','admin','',0),(2117,1,'en','TEXT_ATTACHED_FILES','Attached Files','admin','',0),(2118,1,'en','TEXT_ATTEMPTS_LEFT','Attempts left','admin','',0),(2119,1,'en','TEXT_BASE_PRICE','Packaging unit / Base unit','admin','',0),(2120,1,'en','TEXT_BILLING_ADDRESS','billing address','admin','',0),(2121,1,'en','TEXT_BILLING_FIRSTNAME','first name','admin','',0),(2122,1,'en','TEXT_BILLING_LASTNAME','last name','admin','',0),(2123,1,'en','TEXT_BLACKLIST','blacklist','admin','',0),(2124,1,'en','TEXT_BLACKLIST_PERMISSIONS','(blacklist permission)','admin','',0),(2125,1,'en','TEXT_BLACKLIST_PERMISSIONS_INFO','Your permission-settings are set to \"blacklist\"By selecting one option this dataset will be deactivated for selected group','admin','',0),(2126,1,'en','TEXT_BLOCKS','Anzeige','admin','',0),(2127,1,'en','TEXT_BLOCK_ID','block ID','admin','',0),(2128,1,'en','TEXT_BLOCK_PERMISSION_INFO','Note','admin','',0),(2129,1,'en','TEXT_BLOCK_PROTECTED','protected block','admin','',0),(2130,1,'en','TEXT_BLOCK_STATUS','block status','admin','',0),(2131,1,'en','TEXT_BLOCK_TAG','block tag','admin','',0),(2132,1,'en','TEXT_BRUTO_FORCE_PROTECTION','failed logins','admin','',0),(2133,1,'en','TEXT_CALCULATE_STATISTIC','Calculation in statistcs','admin','',0),(2134,1,'en','TEXT_CALLBACK','IPN Log','admin','',0),(2135,1,'en','TEXT_CAMPAIGN','campaign','admin','',0),(2136,1,'en','TEXT_CAMPAIGN_ID','campaign','admin','',0),(2137,1,'en','TEXT_CAMPAIGN_SELECT','campaign','admin','',0),(2138,1,'en','TEXT_CARTS_COUNT','Carts count','admin','',0),(2139,1,'en','TEXT_CATEGORIES_DESCRIPTION','description','admin','',0),(2140,1,'en','TEXT_CATEGORIES_DESCRIPTION_BOTTOM','description 2','admin','',0),(2141,1,'en','TEXT_CATEGORIES_HEADING_TITLE','heading','admin','',0),(2142,1,'en','TEXT_CATEGORIES_ID','category ID','admin','',0),(2143,1,'en','TEXT_CATEGORIES_IMAGE','image','admin','',0),(2144,1,'en','TEXT_CATEGORIES_META_DESCRIPTION','meta description','admin','',0),(2145,1,'en','TEXT_CATEGORIES_META_KEYWORDS','meta keywords','admin','',0),(2146,1,'en','TEXT_CATEGORIES_META_TITLE','meta title','admin','',0),(2147,1,'en','TEXT_CATEGORIES_NAME','name','admin','',0),(2148,1,'en','TEXT_CATEGORIES_SELECTION','Category selection','admin','',0),(2149,1,'en','TEXT_CATEGORIES_SELECTTION','Categories Selection','admin','',0),(2150,1,'en','TEXT_CATEGORIES_STATUS','status','admin','',0),(2151,1,'en','TEXT_CATEGORIES_TEMPLATE','catergories template','admin','',0),(2152,1,'en','TEXT_CATEGORY','category','admin','',0),(2153,1,'en','TEXT_CATEGORY_CUSTOM_LINK_CATEGORY','category','admin','',0),(2154,1,'en','TEXT_CATEGORY_CUSTOM_LINK_CONTENT','content','admin','',0),(2155,1,'en','TEXT_CATEGORY_CUSTOM_LINK_CUSTOM_LINK','custom link','admin','',0),(2156,1,'en','TEXT_CATEGORY_CUSTOM_LINK_ID','Link ID','admin','',0),(2157,1,'en','TEXT_CATEGORY_CUSTOM_LINK_PLUGIN_PAGE','plugin page','admin','',0),(2158,1,'en','TEXT_CATEGORY_CUSTOM_LINK_PRODUCT','product','admin','',0),(2159,1,'en','TEXT_CATEGORY_CUSTOM_LINK_TYPE','Link type','admin','',0),(2160,1,'en','TEXT_CATEGORY_CUSTOM_LINK_TYPE_PERVIEW','Link type','admin','',0),(2161,1,'en','TEXT_CATEGORY_MORE_DETAILS','more details','admin','',0),(2162,1,'en','TEXT_CATEGORY_WINDOW','Category','admin','',0),(2163,1,'en','TEXT_CAT_IMAGE','Categories Image','admin','',0),(2164,1,'en','TEXT_CAT_STORE1','Main Store','admin','',0),(2165,1,'en','TEXT_CE_VERSION_NOTICE','xt:Commerce Community Edition 4 (CE).','admin','',0),(2166,1,'en','TEXT_CE_VERSION_NOTICE_MORE','more info','admin','',0),(2167,1,'en','TEXT_CHANGE_STATUS_FALSE','disable selection','admin','',0),(2168,1,'en','TEXT_CHANGE_STATUS_TRUE','enable selection','admin','',0),(2169,1,'en','TEXT_CHANGE_TRIGGER','From','admin','',0),(2170,1,'en','TEXT_CHARACTER_COUNTER','Characters','admin','',0),(2171,1,'en','TEXT_CHECKALLITEMS','All','admin','',0),(2172,1,'en','TEXT_CHECKFORUPDATES','Check for update','admin','',0),(2173,1,'en','TEXT_CHECK_TYPE','type','admin','',0),(2174,1,'en','TEXT_CHOOSE_IMAGE','Choose Images','admin','',0),(2175,1,'en','TEXT_CLASS','Class','admin','',0),(2176,1,'en','TEXT_CLOCK','time','admin','',0),(2177,1,'en','TEXT_CODE','code','admin','',0),(2178,1,'en','TEXT_CODE_ADDED_FOR_HOOKPOINT','code added for hookpoint:','admin','',0),(2179,1,'en','TEXT_CODE_STATUS','hook-code status','admin','',0),(2180,1,'en','TEXT_COMMENTS','comments','admin','',0),(2181,1,'en','TEXT_COMMENTS_SEND','attach and send note','admin','',0),(2182,1,'en','TEXT_COMPANY','company','admin','',0),(2183,1,'en','TEXT_CONFIG','configuration','admin','',0),(2184,1,'en','TEXT_CONFIGURATION','configuration','admin','',0),(2185,1,'en','TEXT_CONFIGURATION_KEY','configuration variable:','admin','',0),(2186,1,'en','TEXT_CONFIG_INFO','&nbsp;','admin','',0),(2187,1,'en','TEXT_CONFIG_PLUGIN','Plugins','admin','',0),(2188,1,'en','TEXT_CONFIG_SEO','SEO','admin','',0),(2189,1,'en','TEXT_CONFIG_STORE','shop-configuration','admin','',0),(2190,1,'en','TEXT_CONFIRM','confirm','admin','',0),(2191,1,'en','TEXT_CONF_ADMIN_OPTIONS_NAV','Admin Options','admin','',0),(2192,1,'en','TEXT_CONF_DEBUG','dev. settings','admin','',0),(2193,1,'en','TEXT_CONF_IMAGES','File Permissions','admin','',0),(2194,1,'en','TEXT_CONF_MAIL','email settings','admin','',0),(2195,1,'en','TEXT_CONF_OTHER','miscellaneous','admin','',0),(2196,1,'en','TEXT_CONF_PERFORMANCE','performance','admin','',0),(2197,1,'en','TEXT_CONF_PERMISSIONS','rights','admin','',0),(2198,1,'en','TEXT_CONF_SEO','search engines','admin','',0),(2199,1,'en','TEXT_CONF_STOCK','stock','admin','',0),(2200,1,'en','TEXT_CONF_TEMPLATES_NAV','Template','admin','',0),(2201,1,'en','TEXT_CONTENT','content','admin','',0),(2202,1,'en','TEXT_CONTENTROOT','content','admin','',0),(2203,1,'en','TEXT_CONTENT_BLOCKS','content blocks','admin','',0),(2204,1,'en','TEXT_CONTENT_BODY','Text','admin','',0),(2205,1,'en','TEXT_CONTENT_BODY_SHORT','short text','admin','',0),(2206,1,'en','TEXT_CONTENT_FORM','content form','admin','',0),(2207,1,'en','TEXT_CONTENT_HEADING','content name','admin','',0),(2208,1,'en','TEXT_CONTENT_HOOK','content position','admin','',0),(2209,1,'en','TEXT_CONTENT_ID','content ID','admin','',0),(2210,1,'en','TEXT_CONTENT_IMAGE','Image','admin','',0),(2211,1,'en','TEXT_CONTENT_LANGUAGE','content language','admin','',0),(2212,1,'en','TEXT_CONTENT_MANAGER','contentmanager','admin','',0),(2213,1,'en','TEXT_CONTENT_META_DESCRIPTION','meta description','admin','',0),(2214,1,'en','TEXT_CONTENT_META_KEYWORDS','meta keywords','admin','',0),(2215,1,'en','TEXT_CONTENT_META_TITLE','meta title','admin','',0),(2216,1,'en','TEXT_CONTENT_PARENT','parent content','admin','',0),(2217,1,'en','TEXT_CONTENT_SORT','Sortierung','admin','',0),(2218,1,'en','TEXT_CONTENT_STATUS','status','admin','',0),(2219,1,'en','TEXT_CONTENT_TITLE','content title','admin','',0),(2220,1,'en','TEXT_CONTENT_TITLE_STORE1','Content Title','admin','',0),(2221,1,'en','TEXT_CONTENT_WINDOW','Content','admin','',0),(2222,1,'en','TEXT_COPY','copy','admin','',0),(2223,1,'en','TEXT_COUNT','Count','admin','',0),(2224,1,'en','TEXT_COUNTRIES','countries','admin','',0),(2225,1,'en','TEXT_COUNTRIES_ISO_CODE_2','ISO Code 2','admin','',0),(2226,1,'en','TEXT_COUNTRIES_ISO_CODE_3','ISO Code 3','admin','',0),(2227,1,'en','TEXT_COUNTRIES_MORE_DETAILS','more details','admin','',0),(2228,1,'en','TEXT_COUNTRIES_NAME','country name','admin','',0),(2229,1,'en','TEXT_COUNTRY_ISO_CODE_2','Country Code','admin','',0),(2230,1,'en','TEXT_CREATED','timestamp','admin','',0),(2231,1,'en','TEXT_CRON_ACTION','Cronjob','admin','',0),(2232,1,'en','TEXT_CRON_ID','Cronjob ID','admin','',0),(2233,1,'en','TEXT_CRON_LOG','Cronjob Log','admin','',0),(2234,1,'en','TEXT_CRON_NOTE','Note','admin','',0),(2235,1,'en','TEXT_CRON_PARAMETER','Cronjob Parameter','admin','',0),(2236,1,'en','TEXT_CRON_TYPE','Cronjob Typ','admin','',0),(2237,1,'en','TEXT_CRON_VALUE','Value (for Typ)','admin','',0),(2238,1,'en','TEXT_CROSS_SELL_POPUP','Crossselling','admin','',0),(2239,1,'en','TEXT_CSTATUS_ID','customer status','admin','',0),(2240,1,'en','TEXT_CURRENCIES_ID','currencies ID','admin','',0),(2241,1,'en','TEXT_CURRENCY','currency','admin','',0),(2242,1,'en','TEXT_CURRENCY_SELECT','currency','admin','',0),(2243,1,'en','TEXT_CUSTOMER','customers','admin','',0),(2244,1,'en','TEXT_CUSTOMERS','Kunden','admin','',0),(2245,1,'en','TEXT_CUSTOMERS_ADRESS_DATA','customer addresses','admin','',0),(2246,1,'en','TEXT_CUSTOMERS_CID','customer ID','admin','',0),(2247,1,'en','TEXT_CUSTOMERS_CITY','city','admin','',0),(2248,1,'en','TEXT_CUSTOMERS_COMPANY','company','admin','',0),(2249,1,'en','TEXT_CUSTOMERS_COMPANY_2','company line 2','admin','',0),(2250,1,'en','TEXT_CUSTOMERS_COMPANY_3','company line 3','admin','',0),(2251,1,'en','TEXT_CUSTOMERS_COUNT','Customers Count','admin','',0),(2252,1,'en','TEXT_CUSTOMERS_COUNTRY_CODE','country','admin','',0),(2253,1,'en','TEXT_CUSTOMERS_DEFAULT_CURRENCY','currency','admin','',0),(2254,1,'en','TEXT_CUSTOMERS_DEFAULT_LANGUAGE','language','admin','',0),(2255,1,'en','TEXT_CUSTOMERS_DOB','date of birth','admin','',0),(2256,1,'en','TEXT_CUSTOMERS_EMAIL_ADDRESS','E-Mail Adresse','admin','',0),(2257,1,'en','TEXT_CUSTOMERS_FAX','Fax','admin','',0),(2258,1,'en','TEXT_CUSTOMERS_FEDERAL_STATE_CODE','Federal States','admin','',0),(2259,1,'en','TEXT_CUSTOMERS_FIRSTNAME','first name','admin','',0),(2260,1,'en','TEXT_CUSTOMERS_FSK18','FSK 18','admin','',0),(2261,1,'en','TEXT_CUSTOMERS_FSK18_DISPLAY','FSK 18 display','admin','',0),(2262,1,'en','TEXT_CUSTOMERS_GENDER','gender','admin','',0),(2263,1,'en','TEXT_CUSTOMERS_ID','customer ID','admin','',0),(2264,1,'en','TEXT_CUSTOMERS_LASTNAME','last name','admin','',0),(2265,1,'en','TEXT_CUSTOMERS_MOBILE_PHONE','Mobile phone','admin','',0),(2266,1,'en','TEXT_CUSTOMERS_ORDER_DATA','customer order data','admin','',0),(2267,1,'en','TEXT_CUSTOMERS_PASSWORD','password','admin','',0),(2268,1,'en','TEXT_CUSTOMERS_PHONE','Phone','admin','',0),(2269,1,'en','TEXT_CUSTOMERS_POSTCODE','zip code','admin','',0),(2270,1,'en','TEXT_CUSTOMERS_SEND','inform customers','admin','',0),(2271,1,'en','TEXT_CUSTOMERS_STATUS','customer status','admin','',0),(2272,1,'en','TEXT_CUSTOMERS_STATUS_ADD_TAX_OT','show VAT in order','admin','',0),(2273,1,'en','TEXT_CUSTOMERS_STATUS_GRADUATED_PRICES','graduated prices','admin','',0),(2274,1,'en','TEXT_CUSTOMERS_STATUS_ID','customer status ID','admin','',0),(2275,1,'en','TEXT_CUSTOMERS_STATUS_IMAGE','customer status image','admin','',0),(2276,1,'en','TEXT_CUSTOMERS_STATUS_MASTER','master customer status','admin','',0),(2277,1,'en','TEXT_CUSTOMERS_STATUS_MAX_ORDER','maximum order value','admin','',0),(2278,1,'en','TEXT_CUSTOMERS_STATUS_MIN_ORDER','minimum order value','admin','',0),(2279,1,'en','TEXT_CUSTOMERS_STATUS_MOBILES_TEMPLATE','mobile template','admin','',0),(2280,1,'en','TEXT_CUSTOMERS_STATUS_MOBILE_TEMPLATE','Kundengruppen Mobile-Template','admin','',0),(2281,1,'en','TEXT_CUSTOMERS_STATUS_NAME','customer status name','admin','',0),(2282,1,'en','TEXT_CUSTOMERS_STATUS_SELECT','customer status','admin','',0),(2283,1,'en','TEXT_CUSTOMERS_STATUS_SHOW_PRICE','show pricing','admin','',0),(2284,1,'en','TEXT_CUSTOMERS_STATUS_SHOW_PRICE_TAX','price incl VAT','admin','',0),(2285,1,'en','TEXT_CUSTOMERS_STATUS_TEMPLATE','shop template','admin','',0),(2286,1,'en','TEXT_CUSTOMERS_STREET_ADDRESS','street address','admin','',0),(2287,1,'en','TEXT_CUSTOMERS_SUBURB','suburb','admin','',0),(2288,1,'en','TEXT_CUSTOMERS_VAT_ID','VAT. ID','admin','',0),(2289,1,'en','TEXT_CUSTOMERS_VAT_ID_STATUS','status VATID','admin','',0),(2290,1,'en','TEXT_CUSTOMER_DETAILS','customer details','admin','',0),(2291,1,'en','TEXT_CUSTOMER_NAME','Customer name','admin','',0),(2292,1,'en','TEXT_CUSTOMER_NOTIFIED','notification','admin','',0),(2293,1,'en','TEXT_CUSTOM_LINK','Custom link','admin','',0),(2294,1,'en','TEXT_CUSTOM_LINK_DEFINE','Define link','admin','',0),(2295,1,'en','TEXT_CUSTOM_LNK_SAVE_PREV_STEP','Edit custom link','admin','',0),(2296,1,'en','TEXT_C_SORT_ID','Customers Status','admin','',0),(2297,1,'en','TEXT_DAILY','daily','admin','',0),(2298,1,'en','TEXT_DASHBOARD','Dashboard','admin','',0),(2299,1,'en','TEXT_DASHBOARD_SEARCH_SUBTAB1','All requests','admin','',0),(2300,1,'en','TEXT_DASHBOARD_SEARCH_SUBTAB2','Without result','admin','',0),(2301,1,'en','TEXT_DASHBOARD_SEARCH_TAB','Shop search','admin','',0),(2302,1,'en','TEXT_DATA_TOTAL','sum total','admin','',0),(2303,1,'en','TEXT_DATE','Date','admin','',0),(2304,1,'en','TEXT_DATE_ADDED','added','admin','',0),(2305,1,'en','TEXT_DATE_AVAILABLE','date available','admin','',0),(2306,1,'en','TEXT_DATE_EXPIRED','expiration date','admin','',0),(2307,1,'en','TEXT_DATE_OF_BIRTH_FROM','Date of birth from','admin','',0),(2308,1,'en','TEXT_DATE_OF_BIRTH_TO','Date of birth to','admin','',0),(2309,1,'en','TEXT_DATE_PURCHASED','order date','admin','',0),(2310,1,'en','TEXT_DATE_TIME','Date & Time','admin','',0),(2311,1,'en','TEXT_DAY','Day','admin','',0),(2312,1,'en','TEXT_DB_INSTALL','database install','admin','',0),(2313,1,'en','TEXT_DB_RIGHTS','Datenbank','admin','',0),(2314,1,'en','TEXT_DB_UNINSTALL','database uninstall','admin','',0),(2315,1,'en','TEXT_DECIMALS','decimals','admin','',0),(2316,1,'en','TEXT_DEC_POINT','seperator dezimal','admin','',0),(2317,1,'en','TEXT_DEFAULT','default','admin','',0),(2318,1,'en','TEXT_DEFAULT_ADDRESS','standard','admin','',0),(2319,1,'en','TEXT_DEFAULT_CURRENCY','default currency','admin','',0),(2320,1,'en','TEXT_DEFAULT_IMAGE','Default Image','admin','',0),(2321,1,'en','TEXT_DEFAULT_LANGUAGE_CODE','Default language','admin','',0),(2322,1,'en','TEXT_DEFAULT_TEMPLATE','default template','admin','',0),(2323,1,'en','TEXT_DELETE','delete','admin','',0),(2324,1,'en','TEXT_DELETE_CATEGORY','delete category','admin','',0),(2325,1,'en','TEXT_DELETE_CUSTOM_LINK','Delete custom link','admin','',0),(2326,1,'en','TEXT_DELETE_ORDER','delete order?','admin','',0),(2327,1,'en','TEXT_DELETE_ORDER_ASK','add the product to stock after deleting the order ?','admin','',0),(2328,1,'en','TEXT_DELETE_SHOP','delete client store','admin','',0),(2329,1,'en','TEXT_DELETE_TRASH','Delete Trash','admin','',0),(2330,1,'en','TEXT_DELIVERY_ADDRESS','delivery address','admin','',0),(2331,1,'en','TEXT_DELIVERY_COUNTRY','delivery country','admin','',0),(2332,1,'en','TEXT_DESC','descending','admin','',0),(2333,1,'en','TEXT_DESCRIPTION','description','admin','',0),(2334,1,'en','TEXT_DEVELOPER','Developer','admin','',0),(2335,1,'en','TEXT_DIRECTORY','directory','admin','',0),(2336,1,'en','TEXT_DISABLED_PRODUCTS','disabled products','admin','',0),(2337,1,'en','TEXT_DISABLE_ALL_CATEGORIES','disable all categories','admin','',0),(2338,1,'en','TEXT_DISABLE_ALL_MANUFACTURERS','disable all manufacturers','admin','',0),(2339,1,'en','TEXT_DISABLE_ALL_PRODUCTS','disable all products','admin','',0),(2340,1,'en','TEXT_DISCOUNT_QUANTITY','quantity limit','admin','',0),(2341,1,'en','TEXT_DISPLAY_BY','Display by','admin','',0),(2342,1,'en','TEXT_DISPLAY_TYPE','Display period','admin','',0),(2343,1,'en','TEXT_DOCUMENTATION','Documentation','admin','',0),(2344,1,'en','TEXT_DOCUMENTATION_LINK','Documentation','admin','',0),(2345,1,'en','TEXT_DOWNLOAD_REENABLED','Downloads are reenabled','admin','',0),(2346,1,'en','TEXT_DOWNLOAD_STATUS','download status','admin','',0),(2347,1,'en','TEXT_DOWNLOAD_TRANSLATIONS','Update language content','admin','',0),(2348,1,'en','TEXT_DROPDOWN_CLASS','class','admin','',0),(2349,1,'en','TEXT_DROPDOWN_GROUP_ID','admin group','admin','',0),(2350,1,'en','TEXT_DROPDOWN_LANGUAGE_CODE','language code','admin','',0),(2351,1,'en','TEXT_DROPDOWN_LANGUAGE_KEY','language key','admin','',0),(2352,1,'en','TEXT_DROPDOWN_LISTING_TEMPLATE','articel listing template','admin','',0),(2353,1,'en','TEXT_DROPDOWN_SORT_ORDER','sort order','admin','',0),(2354,1,'en','TEXT_DROPDOWN_TAX_CLASS_ID','tax class ID','admin','',0),(2355,1,'en','TEXT_DROPDOWN_TAX_ZONE_ID','tax zone ID','admin','',0),(2356,1,'en','TEXT_DROPDOWN_ZONE_ID','zone ID','admin','',0),(2357,1,'en','TEXT_DROPDOWN__STORE_COUNTRY','country','admin','',0),(2358,1,'en','TEXT_DROPDOWN__STORE_CURRENCY','currency','admin','',0),(2359,1,'en','TEXT_DROPDOWN__STORE_CUSTOMERS_STATUS_ID','customer ID','admin','',0),(2360,1,'en','TEXT_DROPDOWN__STORE_CUSTOMERS_STATUS_ID_GUEST','customer ID guest','admin','',0),(2361,1,'en','TEXT_DROPDOWN__STORE_LANGUAGE','language','admin','',0),(2362,1,'en','TEXT_DROPDOWN__STORE_TEMPLATE','template','admin','',0),(2363,1,'en','TEXT_DROPDOWN__STORE_ZONE','zone','admin','',0),(2364,1,'en','TEXT_EDIT','edit','admin','',0),(2365,1,'en','TEXT_EDIT_CATEGORY','edit category','admin','',0),(2366,1,'en','TEXT_EDIT_CUSTOM_LINK','Edit custom link','admin','',0),(2367,1,'en','TEXT_EDIT_SHOP','edit store','admin','',0),(2368,1,'en','TEXT_EKOMI_PORTAL','eKomi','admin','',0),(2369,1,'en','TEXT_EMAIL','e-mail','admin','',0),(2370,1,'en','TEXT_EMAIL_FORWARD','forward to (e-mail)','admin','',0),(2371,1,'en','TEXT_EMAIL_FROM','sender (e-mail)','admin','',0),(2372,1,'en','TEXT_EMAIL_FROM_NAME','sender (name)','admin','',0),(2373,1,'en','TEXT_EMAIL_MANAGER','e-mail manager','admin','',0),(2374,1,'en','TEXT_EMAIL_MEDIA','Attachments','admin','',0),(2375,1,'en','TEXT_EMAIL_OPTIONS','email settings','admin','',0),(2376,1,'en','TEXT_EMAIL_REPLY','reply (e-mail)','admin','',0),(2377,1,'en','TEXT_EMAIL_REPLY_NAME','reply (name)','admin','',0),(2378,1,'en','TEXT_EMAIL_SENT','Order confirmation mail has been sent','admin','',0),(2379,1,'en','TEXT_EMPTY','no entry available','admin','',0),(2380,1,'en','TEXT_EMPTY_DUMMY_COLUMN','','admin','',0),(2381,1,'en','TEXT_EMPTY_SELECTION','no selection','admin','',0),(2382,1,'en','TEXT_ENABLED_PRODUCTS','enabled products','admin','',0),(2383,1,'en','TEXT_ENABLE_ALL_CATEGORIES','enable all categories','admin','',0),(2384,1,'en','TEXT_ENABLE_ALL_MANUFACTURERS','enable all manufacturers','admin','',0),(2385,1,'en','TEXT_ENABLE_ALL_PRODUCTS','enable all products','admin','',0),(2386,1,'en','TEXT_ENABLE_DOWNLOAD','enable downloads','admin','',0),(2387,1,'en','TEXT_ERROR_DATA','error data','admin','',0),(2388,1,'en','TEXT_ERROR_MAX_STORES','Max amount of stores reached. Upgrage your license to add more stores.','admin','',0),(2389,1,'en','TEXT_ERROR_MINIMUM_SHOP_VERSION','Your shop version is lower than required one. In order to install the plugin you need shop version','admin','',0),(2390,1,'en','TEXT_ERROR_MINIMUM_STORE_VERSION','Error! Plugin %s requires minimum store version to be %s. Your current store version is %s. Please upload the previous files of the plugin on the server again.','admin','',0),(2391,1,'en','TEXT_ERROR_MSG','error message','admin','',0),(2392,1,'en','TEXT_EXP','exporte','admin','',0),(2393,1,'en','TEXT_EXPORT','export-manager','admin','',0),(2394,1,'en','TEXT_EXPORT_LANGUAGE','Export language','admin','',0),(2395,1,'en','TEXT_EXPORT_NOTTRANSLATED','Export not translated phrases','admin','',0),(2396,1,'en','TEXT_EXPORT_SUCCESS','export success','admin','',0),(2397,1,'en','TEXT_EXPORT_TO_CATEGORIES','category assignment','admin','',0),(2398,1,'en','TEXT_EXPORT_TO_MANUFACTURERS','Manufacturers assignment','admin','',0),(2399,1,'en','TEXT_EXPORT_TPLS','Templates','admin','',0),(2400,1,'en','TEXT_EXPORT_TPLS_IMPORT','Import template','admin','',0),(2401,1,'en','TEXT_FAILURE','failure','admin','',0),(2402,1,'en','TEXT_FAIL_COUNT','fail count','admin','',0),(2403,1,'en','TEXT_FAIL_ID','Id','admin','',0),(2404,1,'en','TEXT_FAIL_TYPE','fail type','admin','',0),(2405,1,'en','TEXT_FALSE','no','admin','',0),(2406,1,'en','TEXT_FAX_PREFIX','Fax prefix','admin','',0),(2407,1,'en','TEXT_FEED_BODY','body','admin','',0),(2408,1,'en','TEXT_FEED_BROWSER','feed browser','admin','',0),(2409,1,'en','TEXT_FEED_DATE_FROM_ORDERS','date from','admin','',0),(2410,1,'en','TEXT_FEED_DATE_RANGE_ORDERS','hours','admin','',0),(2411,1,'en','TEXT_FEED_DATE_TO_ORDERS','date to','admin','',0),(2412,1,'en','TEXT_FEED_ENCODING','character Set','admin','',0),(2413,1,'en','TEXT_FEED_EXPORT_LIMIT','Records per pass','admin','',0),(2414,1,'en','TEXT_FEED_FILENAME','filename','admin','',0),(2415,1,'en','TEXT_FEED_FILETYPE','file type','admin','',0),(2416,1,'en','TEXT_FEED_FOOTER','footer','admin','',0),(2417,1,'en','TEXT_FEED_FTP_DIR','directory','admin','',0),(2418,1,'en','TEXT_FEED_FTP_FLAG','aktiv','admin','',0),(2419,1,'en','TEXT_FEED_FTP_PASSIV','FTP passiv modus','admin','',0),(2420,1,'en','TEXT_FEED_FTP_PASSWORD','FTP password','admin','',0),(2421,1,'en','TEXT_FEED_FTP_SERVER','FTP server','admin','',0),(2422,1,'en','TEXT_FEED_FTP_USER','FTP user','admin','',0),(2423,1,'en','TEXT_FEED_HEADER','header','admin','',0),(2424,1,'en','TEXT_FEED_ID','feed ID','admin','',0),(2425,1,'en','TEXT_FEED_KEY','Export ID','admin','',0),(2426,1,'en','TEXT_FEED_LINERETURN_DEACTIVATED','Disable word wrap in the Body','admin','',0),(2427,1,'en','TEXT_FEED_MAIL','recipient','admin','',0),(2428,1,'en','TEXT_FEED_MAIL_BODY','e-mail body','admin','',0),(2429,1,'en','TEXT_FEED_MAIL_FLAG','aktiv','admin','',0),(2430,1,'en','TEXT_FEED_MAIL_HEADER','e-mail ref','admin','',0),(2431,1,'en','TEXT_FEED_POST_FIELD','upload field','admin','',0),(2432,1,'en','TEXT_FEED_POST_FLAG','activ','admin','',0),(2433,1,'en','TEXT_FEED_POST_SERVER','form URL','admin','',0),(2434,1,'en','TEXT_FEED_PRINT_BROWSER','print in browser','admin','',0),(2435,1,'en','TEXT_FEED_PW_FLAG','activ','admin','',0),(2436,1,'en','TEXT_FEED_PW_PASS','password','admin','',0),(2437,1,'en','TEXT_FEED_PW_USER','Benutzername','admin','',0),(2438,1,'en','TEXT_FEED_P_CAMPAIGN','campaign','admin','',0),(2439,1,'en','TEXT_FEED_P_CURRENCY_CODE','currency','admin','',0),(2440,1,'en','TEXT_FEED_P_DEACTIVATED_STATUS','Disabled Products Export?','admin','',0),(2441,1,'en','TEXT_FEED_P_MODEL_MAX','By Model','admin','',0),(2442,1,'en','TEXT_FEED_P_MODEL_MIN','By Model','admin','',0),(2443,1,'en','TEXT_FEED_P_PRICE_MAX','High product prices','admin','',0),(2444,1,'en','TEXT_FEED_P_PRICE_MIN','Minimum product price','admin','',0),(2445,1,'en','TEXT_FEED_P_QUANTITY_MAX','Maximum amount','admin','',0),(2446,1,'en','TEXT_FEED_P_QUANTITY_MIN','Minimum amount','admin','',0),(2447,1,'en','TEXT_FEED_P_SLAVE','Export slave products?','admin','',0),(2448,1,'en','TEXT_FEED_SAVE','save on server ?','admin','',0),(2449,1,'en','TEXT_FEED_STORE_ID','shop ID','admin','',0),(2450,1,'en','TEXT_FEED_TITLE','Title','admin','',0),(2451,1,'en','TEXT_FEED_TYPE','Export Type','admin','',0),(2452,1,'en','TEXT_FEMALE','Misses','admin','',0),(2453,1,'en','TEXT_FILE','file','admin','',0),(2454,1,'en','TEXT_FILENAME','Filename','admin','',0),(2455,1,'en','TEXT_FILES','Files','admin','',0),(2456,1,'en','TEXT_FILES_UPLOADED','hochgeladen','admin','',0),(2457,1,'en','TEXT_FILE_DOWNLOADS','File downloads','admin','',0),(2458,1,'en','TEXT_FILE_EXT','file extension','admin','',0),(2459,1,'en','TEXT_FILE_TYPE','file type','admin','',0),(2460,1,'en','TEXT_FILTER','Filter','admin','',0),(2461,1,'en','TEXT_FIND','Find','admin','',0),(2462,1,'en','TEXT_FIRSTNAME','first name','admin','',0),(2463,1,'en','TEXT_FLASH_UPLOAD','Flash Fileupload (Flash10+)','admin','',0),(2464,1,'en','TEXT_FLASH_UPLOAD_OLD','Flash Fileupload (Flash 9)','admin','',0),(2465,1,'en','TEXT_FOLDER','folder','admin','',0),(2466,1,'en','TEXT_FONT','Font','admin','',0),(2467,1,'en','TEXT_FONT_POSITION','Position','admin','',0),(2468,1,'en','TEXT_FONT_SIZE','Fontsize','admin','',0),(2469,1,'en','TEXT_FREE_DOWNLOAD','free download','admin','',0),(2470,1,'en','TEXT_FROM','from','admin','',0),(2471,1,'en','TEXT_FTP','FTP','admin','',0),(2472,1,'en','TEXT_GROUP','group','admin','',0),(2473,1,'en','TEXT_GROUP_ID','group ID','admin','',0),(2474,1,'en','TEXT_GROUP_PERMISSION_ALL','All','admin','',0),(2475,1,'en','TEXT_GROUP_PERMISSION_INFO','Note','admin','',0),(2476,1,'en','TEXT_HANDLE','unser name','admin','',0),(2477,1,'en','TEXT_HEIGHT','height','admin','',0),(2478,1,'en','TEXT_HOOK','hookpoint','admin','',0),(2479,1,'en','TEXT_HOUR','Hour','admin','',0),(2480,1,'en','TEXT_ID','ID','admin','',0),(2481,1,'en','TEXT_IDENTIFICATION','ID','admin','',0),(2482,1,'en','TEXT_IMAGE','image','admin','',0),(2483,1,'en','TEXT_IMAGES','images','admin','',0),(2484,1,'en','TEXT_IMAGETYPES','images types','admin','',0),(2485,1,'en','TEXT_IMAGE_PREVIEW','image preview','admin','',0),(2486,1,'en','TEXT_IMAGE_PROCESSING','Imageprocessing','admin','',0),(2487,1,'en','TEXT_IMPORT','File Import','admin','',0),(2488,1,'en','TEXT_IMPORT_ASK','Import Files from Media Folder ?','admin','',0),(2489,1,'en','TEXT_IMPORT_IMAGES','Import Images','admin','',0),(2490,1,'en','TEXT_INCLUDES','includes','admin','',0),(2491,1,'en','TEXT_INFO_NONDEFINE','to insert the constants into the dropdown, you should use the function: __define()','admin','',0),(2492,1,'en','TEXT_INSTALLATION_FAIL','Installation failed, please set write permissions to listed resources','admin','',0),(2493,1,'en','TEXT_INSTALLATION_FAIL_LICENSE','Error: Licensefile is missing','admin','',0),(2494,1,'en','TEXT_INSTALLATION_FAIL_REQUIRED_PLUGINS','This Plugins requires following other plugins, please install them first.','admin','',0),(2495,1,'en','TEXT_INSTALLATION_SUCCESSFULL','installation successfull, you may now configure your modul at \"Plugin->installed plugins\".','admin','',0),(2496,1,'en','TEXT_INSTALL_PLUGIN','install plugin','admin','',0),(2497,1,'en','TEXT_IP_ADDRESS','IP:','admin','',0),(2498,1,'en','TEXT_ITEMS_PER_PAGE','Items per page','admin','',0),(2499,1,'en','TEXT_KEY','plugin key','admin','',0),(2500,1,'en','TEXT_KEYWORD','Keyword','admin','',0),(2501,1,'en','TEXT_LANGUAGE','language','admin','',0),(2502,1,'en','TEXT_LANGUAGES_ID','language ID','admin','',0),(2503,1,'en','TEXT_LANGUAGE_CHARSET','charset','admin','',0),(2504,1,'en','TEXT_LANGUAGE_CODE','language code (iso-2)','admin','',0),(2505,1,'en','TEXT_LANGUAGE_CONTENT','language content','admin','',0),(2506,1,'en','TEXT_LANGUAGE_CONTENT_ID','ID','admin','',0),(2507,1,'en','TEXT_LANGUAGE_FILE','Language file','admin','',0),(2508,1,'en','TEXT_LANGUAGE_IMPORT','Import language','admin','',0),(2509,1,'en','TEXT_LANGUAGE_KEY','key','admin','',0),(2510,1,'en','TEXT_LANGUAGE_MORE_DETAILS','more details','admin','',0),(2511,1,'en','TEXT_LANGUAGE_SELECT','language','admin','',0),(2512,1,'en','TEXT_LANGUAGE_STATUS','Status','admin','',0),(2513,1,'en','TEXT_LANGUAGE_VALUE','text','admin','',0),(2514,1,'en','TEXT_LANG_EXPORT_SUCCESS','language was saved as XML at export/','admin','',0),(2515,1,'en','TEXT_LASTNAME','last name','admin','',0),(2516,1,'en','TEXT_LAST_COUNT','last count','admin','',0),(2517,1,'en','TEXT_LAST_MODIFIED','last modified','admin','',0),(2518,1,'en','TEXT_LAST_RUN','last run','admin','',0),(2519,1,'en','TEXT_LAST_RUNTIME','last runtime','admin','',0),(2520,1,'en','TEXT_LAST_RUN_DATE','Last runtime','admin','',0),(2521,1,'en','TEXT_LAST_TRY','last try','admin','',0),(2522,1,'en','TEXT_LICENSE','License','admin','',0),(2523,1,'en','TEXT_LICENSE_INFO','licence info','admin','',0),(2524,1,'en','TEXT_LINK_ID','Link ID','admin','',0),(2525,1,'en','TEXT_LINK_LOSTPASSWORD','lost password?','admin','',0),(2526,1,'en','TEXT_LINK_LOST_PASSWORD','lost password ?','admin','',0),(2527,1,'en','TEXT_LINK_SSL','SSL','admin','',0),(2528,1,'en','TEXT_LINK_TYPE','Link Type ID','admin','',0),(2529,1,'en','TEXT_LINK_URL','URL','admin','',0),(2530,1,'en','TEXT_LISTING_TEMPLATE','template category listing','admin','',0),(2531,1,'en','TEXT_LOADING','loading','admin','',0),(2532,1,'en','TEXT_LOCALIZING','localizing','admin','',0),(2533,1,'en','TEXT_LOCK_UNTIL','locked until','admin','',0),(2534,1,'en','TEXT_LOGHANDLER','System-Log','admin','',0),(2535,1,'en','TEXT_LOGINTIME','login time','admin','',0),(2536,1,'en','TEXT_LOGS','logfiles','admin','',0),(2537,1,'en','TEXT_LOG_ID','Log ID','admin','',0),(2538,1,'en','TEXT_LOOKUP','lookup','admin','',0),(2539,1,'en','TEXT_MAGNALISTER','xt:MultiConnect','admin','',0),(2540,1,'en','TEXT_MAIL','e-mail','admin','',0),(2541,1,'en','TEXT_MAILADDRESS','E-mail address','admin','',0),(2542,1,'en','TEXT_MAILTYPE_MAIL','mail/qmail','admin','',0),(2543,1,'en','TEXT_MAILTYPE_SENDMAIL','sendmail','admin','',0),(2544,1,'en','TEXT_MAILTYPE_SMTP','Smtp','admin','',0),(2545,1,'en','TEXT_MAIL_BODY_HTML','html email','admin','',0),(2546,1,'en','TEXT_MAIL_BODY_TXT','mail body text','admin','',0),(2547,1,'en','TEXT_MAIL_SUBJECT','subject','admin','',0),(2548,1,'en','TEXT_MAIN','main','admin','',0),(2549,1,'en','TEXT_MALE','Mister','admin','',0),(2550,1,'en','TEXT_MANUFACTURER','manufacturer','admin','',0),(2551,1,'en','TEXT_MANUFACTURERS_DESCRIPTION','description','admin','',0),(2552,1,'en','TEXT_MANUFACTURERS_ID','manufacturer ID','admin','',0),(2553,1,'en','TEXT_MANUFACTURERS_IMAGE','image','admin','',0),(2554,1,'en','TEXT_MANUFACTURERS_META_DESCRIPTION','meta description','admin','',0),(2555,1,'en','TEXT_MANUFACTURERS_META_KEYWORDS','meta keywords','admin','',0),(2556,1,'en','TEXT_MANUFACTURERS_META_TITLE','meta title','admin','',0),(2557,1,'en','TEXT_MANUFACTURERS_NAME','name','admin','',0),(2558,1,'en','TEXT_MANUFACTURERS_SORT','sorting','admin','',0),(2559,1,'en','TEXT_MANUFACTURERS_STATUS','status','admin','',0),(2560,1,'en','TEXT_MANUFACTURERS_URL','url','admin','',0),(2561,1,'en','TEXT_MANUFACTURER_IMAGE','Manufacturer Image','admin','',0),(2562,1,'en','TEXT_MANUFACTURER_SELECT','manufacturer','admin','',0),(2563,1,'en','TEXT_MANUFACTURER_WINDOW','Manufacturer','admin','',0),(2564,1,'en','TEXT_MARKETPLACE_LINK','Marketplace Link','admin','',0),(2565,1,'en','TEXT_MASTER_KEY','master key','admin','',0),(2566,1,'en','TEXT_MAXPRODUCTS','Limit products','admin','',0),(2567,1,'en','TEXT_MAXSTORES','Limit stores','admin','',0),(2568,1,'en','TEXT_MAXVERSION','Limit version','admin','',0),(2569,1,'en','TEXT_MAX_DL_COUNT','possible downloads','admin','',0),(2570,1,'en','TEXT_MAX_DL_DAYS','downloads - days','admin','',0),(2571,1,'en','TEXT_MEDIAFILEMANAGER','file manager','admin','',0),(2572,1,'en','TEXT_MEDIAFILEMANAGER_WINDOW','file upload','admin','',0),(2573,1,'en','TEXT_MEDIAFILETYPES','file types','admin','',0),(2574,1,'en','TEXT_MEDIAGALLERY','Media Gallery','admin','',0),(2575,1,'en','TEXT_MEDIAIMAGEMANAGER','image manager','admin','',0),(2576,1,'en','TEXT_MEDIALIST','Media Management','admin','',0),(2577,1,'en','TEXT_MEDIA_DESCRIPTION','description','admin','',0),(2578,1,'en','TEXT_MEDIA_MANAGER','media','admin','',0),(2579,1,'en','TEXT_MEDIA_NAME','name','admin','',0),(2580,1,'en','TEXT_MEMO','change order status','admin','',0),(2581,1,'en','TEXT_MENU_OPTIONS','Edit','admin','',0),(2582,1,'en','TEXT_MESSAGE_SOURCE','Message source','admin','',0),(2583,1,'en','TEXT_META_DESCRIPTION','meta description','admin','',0),(2584,1,'en','TEXT_META_KEYWORDS','meta keywords','admin','',0),(2585,1,'en','TEXT_META_TITLE','meta title','admin','',0),(2586,1,'en','TEXT_MFT_ID','ID','admin','',0),(2587,1,'en','TEXT_MINUTE','Minute','admin','',0),(2588,1,'en','TEXT_ML_ID','ID','admin','',0),(2589,1,'en','TEXT_MOBILE_PHONE_PREFIX','Mobile phone prefix','admin','',0),(2590,1,'en','TEXT_MOBILE_TEMPLATE','Mobile template','admin','',0),(2591,1,'en','TEXT_MODE_LIVE','No Testmodus','admin','',0),(2592,1,'en','TEXT_MODE_SANDBOX','Testmodus (PayPal Sandbox)','admin','',0),(2593,1,'en','TEXT_MODULE','payment modul','admin','',0),(2594,1,'en','TEXT_MONTH','Month','admin','',0),(2595,1,'en','TEXT_MONTHLY','monthly','admin','',0),(2596,1,'en','TEXT_MORE_CATEGORIES','more Categories','admin','',0),(2597,1,'en','TEXT_MORE_IMAGES','more product images','admin','',0),(2598,1,'en','TEXT_MORE_THAN_ONE_MAIN_CATEGORY_SELECTED','Error: Only one category can be assigned to a product as the main category.','admin','',0),(2599,1,'en','TEXT_MOVE_PRODUCT','Move','admin','',0),(2600,1,'en','TEXT_MULTIPLE_UPLOAD','Multi File Upload','admin','',0),(2601,1,'en','TEXT_MULTI_ACTION_MENU','multi Actions','admin','',0),(2602,1,'en','TEXT_MULTI_COPY','multi Copy','admin','',0),(2603,1,'en','TEXT_MULTI_LINK','multi Link','admin','',0),(2604,1,'en','TEXT_MULTI_MOVE','multi Move','admin','',0),(2605,1,'en','TEXT_MY_STORE','my store','admin','',0),(2606,1,'en','TEXT_MY_STORE_INFO','Addressrecord','admin','',0),(2607,1,'en','TEXT_M_ID','Media ID','admin','',0),(2608,1,'en','TEXT_NAME','name','admin','',0),(2609,1,'en','TEXT_NEW','new','admin','',0),(2610,1,'en','TEXT_NEWS_XT_WORLD','xt:Commerce News','admin','',0),(2611,1,'en','TEXT_NEW_ALBUM','new album','admin','',0),(2612,1,'en','TEXT_NEW_CATEGORY','define new catergory','admin','',0),(2613,1,'en','TEXT_NEW_CUSTOM_LINK','New custom link','admin','',0),(2614,1,'en','TEXT_NEW_MAIN_CATEGORY','new main catergory','admin','',0),(2615,1,'en','TEXT_NEW_ORDER','New order','admin','',0),(2616,1,'en','TEXT_NEW_PRODUCT','new product','admin','',0),(2617,1,'en','TEXT_NEW_SHOP','new store','admin','',0),(2618,1,'en','TEXT_NEW_SUB_CATEGORY','new subcategory','admin','',0),(2619,1,'en','TEXT_NEXT_RUN_DATE','BNext runtime','admin','',0),(2620,1,'en','TEXT_NO_CHANGES','no changes','admin','',0),(2621,1,'en','TEXT_NO_IMAGE','-no image-','admin','',0),(2622,1,'en','TEXT_NO_LANGUAGE','no language','admin','',0),(2623,1,'en','TEXT_NO_MANUCFACTURER','no manufacturer','admin','',0),(2624,1,'en','TEXT_NO_SUCCESS','no success','admin','',0),(2625,1,'en','TEXT_NO_TAX_CLASS','no tax class','admin','',0),(2626,1,'en','TEXT_NO_TEXT_LANGUAGES','no language','admin','',0),(2627,1,'en','TEXT_NO_WYSIWYG','No Html Editor','admin','',0),(2628,1,'en','TEXT_NO_ZONE','no zone','admin','',0),(2629,1,'en','TEXT_ON_INDEXPAGE','On index page','admin','',0),(2630,1,'en','TEXT_ORDER','orders','admin','',0),(2631,1,'en','TEXT_ORDERED_PRODUCTS','products ordered','admin','',0),(2632,1,'en','TEXT_ORDERS','Orders','admin','',0),(2633,1,'en','TEXT_ORDERS_EDIT','Orders edit','admin','',0),(2634,1,'en','TEXT_ORDERS_ID','order ID','admin','',0),(2635,1,'en','TEXT_ORDERS_PRODUCTS_ID','order ID','admin','',0),(2636,1,'en','TEXT_ORDERS_SOURCE','Order source','admin','',0),(2637,1,'en','TEXT_ORDERS_SOURCE_CASUAL','Casual customer','admin','',0),(2638,1,'en','TEXT_ORDERS_SOURCE_EMAIL','E-Mail','admin','',0),(2639,1,'en','TEXT_ORDERS_SOURCE_EXTERNAL','External order source','admin','',0),(2640,1,'en','TEXT_ORDERS_SOURCE_FAX','Fax','admin','',0),(2641,1,'en','TEXT_ORDERS_SOURCE_PHONE','Telephone','admin','',0),(2642,1,'en','TEXT_ORDERS_STATUS','order status','admin','',0),(2643,1,'en','TEXT_ORDERS_STATUS_SELECT','order status','admin','',0),(2644,1,'en','TEXT_ORDERTAB','orders/customers','admin','',0),(2645,1,'en','TEXT_ORDER_COMMENTS','comment','admin','',0),(2646,1,'en','TEXT_ORDER_DELETE_SUCCESS','order successfully deleted','admin','',0),(2647,1,'en','TEXT_ORDER_DOWNLOAD','download to be charged','admin','',0),(2648,1,'en','TEXT_ORDER_EDIT_ACL_USER','Edited by','admin','',0),(2649,1,'en','TEXT_ORDER_EDIT_ADDRESS_TO_APPLY','Address to apply (or new below)','admin','',0),(2650,1,'en','TEXT_ORDER_EDIT_ADDRESS_TYPE','Address to change','admin','',0),(2651,1,'en','TEXT_ORDER_EDIT_ADD_ITEM','Add item','admin','',0),(2652,1,'en','TEXT_ORDER_EDIT_APPLY_EDITED_ADDRESS','Update address and apply','admin','',0),(2653,1,'en','TEXT_ORDER_EDIT_APPLY_EXISTING_ADDRESS','Apply selected address','admin','',0),(2654,1,'en','TEXT_ORDER_EDIT_APPLY_NEW_ADDRESS','Save as new address and apply','admin','',0),(2655,1,'en','TEXT_ORDER_EDIT_APPLY_PAYMENT_SHIPPING','Apply','admin','',0),(2656,1,'en','TEXT_ORDER_EDIT_CALCULATE_GRADUATED','Calculate graduated price','admin','',0),(2657,1,'en','TEXT_ORDER_EDIT_CURRENT_COUPON_CODE','Current coupon','admin','',0),(2658,1,'en','TEXT_ORDER_EDIT_EDIT_ADDRESS','Edit addresses','admin','',0),(2659,1,'en','TEXT_ORDER_EDIT_EDIT_COUPON','Edit coupon','admin','',0),(2660,1,'en','TEXT_ORDER_EDIT_EDIT_ITEM','Edit item','admin','',0),(2661,1,'en','TEXT_ORDER_EDIT_EDIT_PAYMENT_SHIPPING','Payment/Shipping/Order source','admin','',0),(2662,1,'en','TEXT_ORDER_EDIT_FIELDS_REQUIRED','Required fields','admin','',0),(2663,1,'en','TEXT_ORDER_EDIT_ITEMS','Edit order items','admin','',0),(2664,1,'en','TEXT_ORDER_EDIT_NEW_COUPON_CODE_CODE','New/Replace coupon (code)','admin','',0),(2665,1,'en','TEXT_ORDER_EDIT_NEW_COUPON_CODE_TEMPLATE','New/Replace coupon (coupons)','admin','',0),(2666,1,'en','TEXT_ORDER_EDIT_NEW_ORDER','New Order','admin','',0),(2667,1,'en','TEXT_ORDER_EDIT_REMOVED_COUPON_CODE','Last coupon (currently removed)','admin','',0),(2668,1,'en','TEXT_ORDER_EDIT_REMOVE_COUPON','Remove coupon','admin','',0),(2669,1,'en','TEXT_ORDER_EDIT_REMOVE_ITEM','Remove item','admin','',0),(2670,1,'en','TEXT_ORDER_EDIT_SAVE_COUPON','Save coupon','admin','',0),(2671,1,'en','TEXT_ORDER_EDIT_UPDATE_ITEM','Change item','admin','',0),(2672,1,'en','TEXT_ORDER_EDIT_WARNING_COUPON_REMOVED','Coupon removed','admin','',0),(2673,1,'en','TEXT_ORDER_ID','order ID','admin','',0),(2674,1,'en','TEXT_ORDER_INFOS','informations','admin','',0),(2675,1,'en','TEXT_ORDER_MORE_DETAILS','more details','admin','',0),(2676,1,'en','TEXT_ORDER_PRODUCTS_ID','Order position','admin','',0),(2677,1,'en','TEXT_ORDER_PRODUCTS_QUANTITY','Order quantity','admin','',0),(2678,1,'en','TEXT_ORDER_PURCHASED','order date','admin','',0),(2679,1,'en','TEXT_ORDER_STATUS','order status','admin','',0),(2680,1,'en','TEXT_ORDER_TOTAL','sum','admin','',0),(2681,1,'en','TEXT_ORDER_TOTAL_FINALPRICE','total final price','admin','',0),(2682,1,'en','TEXT_ORDER_TOTAL_NAME','name','admin','',0),(2683,1,'en','TEXT_ORDER_TOTAL_OTAX','total net','admin','',0),(2684,1,'en','TEXT_ORDER_TOTAL_SINGLEPRICE','total single price','admin','',0),(2685,1,'en','TEXT_ORDER_TOTAL_TAX','total VAT','admin','',0),(2686,1,'en','TEXT_ORDER_WINDOW','order window','admin','',0),(2687,1,'en','TEXT_OVERLOAD_PRODUCT_DATA','The product contents of the shop you select will be loaded instead of the previous content. The current contents of the fields will be overwritten.','admin','',0),(2688,1,'en','TEXT_OVERVIEW','overview','admin','',0),(2689,1,'en','TEXT_PARENT_ID','parent category','admin','',0),(2690,1,'en','TEXT_PASSWORD_ADMIN','Admin password','admin','',0),(2691,1,'en','TEXT_PAYED_DOWNLOAD','download to be payed','admin','',0),(2692,1,'en','TEXT_PAYMENT','method of payment','admin','',0),(2693,1,'en','TEXT_PAYMENT_ADDRESS','billing address','admin','',0),(2694,1,'en','TEXT_PAYMENT_ALLOWED','payment module activ','admin','',0),(2695,1,'en','TEXT_PAYMENT_AVAILABLE_MOBILE','Activate for mobile devices','admin','',0),(2696,1,'en','TEXT_PAYMENT_CODE','payment code','admin','',0),(2697,1,'en','TEXT_PAYMENT_COST_ADD','Costs (total)','admin','',0),(2698,1,'en','TEXT_PAYMENT_COST_ADD_PERCENT','Costs (add percentage)','admin','',0),(2699,1,'en','TEXT_PAYMENT_COST_DISCOUNT','Cost-type','admin','',0),(2700,1,'en','TEXT_PAYMENT_COST_DISCOUNT_PERCENT','percent Discount','admin','',0),(2701,1,'en','TEXT_PAYMENT_COST_ID','ID','admin','',0),(2702,1,'en','TEXT_PAYMENT_COST_INFO','Show cost info','admin','',0),(2703,1,'en','TEXT_PAYMENT_COST_PERCENT','Percent of Cart','admin','',0),(2704,1,'en','TEXT_PAYMENT_COUNTRY_CODE','restrict to country','admin','',0),(2705,1,'en','TEXT_PAYMENT_DESC','payment description','admin','',0),(2706,1,'en','TEXT_PAYMENT_DIR','directory','admin','',0),(2707,1,'en','TEXT_PAYMENT_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(2708,1,'en','TEXT_PAYMENT_EMAIL_DESC_TXT','E-Mail Text (txt)','admin','',0),(2709,1,'en','TEXT_PAYMENT_GEO_ZONE','restrict to zone','admin','',0),(2710,1,'en','TEXT_PAYMENT_ICON','icon','admin','',0),(2711,1,'en','TEXT_PAYMENT_ID','payment ID','admin','',0),(2712,1,'en','TEXT_PAYMENT_MIN_ORDERS','minimum orders','admin','',0),(2713,1,'en','TEXT_PAYMENT_NAME','payment name','admin','',0),(2714,1,'en','TEXT_PAYMENT_PERMISSION','Paymentmethods','admin','',0),(2715,1,'en','TEXT_PAYMENT_PRICE','payment fee','admin','',0),(2716,1,'en','TEXT_PAYMENT_TAX_CLASS','tax class','admin','',0),(2717,1,'en','TEXT_PAYMENT_TPL','template','admin','',0),(2718,1,'en','TEXT_PAYMENT_TYPE','payment type','admin','',0),(2719,1,'en','TEXT_PAYMENT_TYPE_VALUE_FROM','value from','admin','',0),(2720,1,'en','TEXT_PAYMENT_TYPE_VALUE_TO','value to','admin','',0),(2721,1,'en','TEXT_PAYMENT_UNALLOWED','payment methods not allowed','admin','',0),(2722,1,'en','TEXT_PERCENTAGE','trigger (%)','admin','',0),(2723,1,'en','TEXT_PERIOD_TYPE','Period type','admin','',0),(2724,1,'en','TEXT_PERMISSION','permission','admin','',0),(2725,1,'en','TEXT_PERM_ID','ID','admin','',0),(2726,1,'en','TEXT_PHONE_PREFIX','Phone prefix','admin','',0),(2727,1,'en','TEXT_PHPINFO','phpinfo','admin','',0),(2728,1,'en','TEXT_PHRASE_ADDED_FOR','phrase added for:','admin','',0),(2729,1,'en','TEXT_PLG_BUY_LIC','Buy license','admin','',0),(2730,1,'en','TEXT_PLUGIN','plugin','admin','',0),(2731,1,'en','TEXT_PLUGINVERSION_AVAILABLE','new version:','admin','',0),(2732,1,'en','TEXT_PLUGIN_CODE','Plugin Code','admin','',0),(2733,1,'en','TEXT_PLUGIN_HOOKPOINTS','hookpoints','admin','',0),(2734,1,'en','TEXT_PLUGIN_ID','plugin ID','admin','',0),(2735,1,'en','TEXT_PLUGIN_INSTALLED','plugins installed','admin','',0),(2736,1,'en','TEXT_PLUGIN_PAGE','Plugin page','admin','',0),(2737,1,'en','TEXT_PLUGIN_STATUS','plugin status','admin','',0),(2738,1,'en','TEXT_PLUGIN_UNINSTALLED','plugins uninstalled','admin','',0),(2739,1,'en','TEXT_PLUGIN_UPDATE','Plugin update','admin','',0),(2740,1,'en','TEXT_PLUGIN_UPDATE_TRANSLATIONS','Update languageconten for this plugin with xt:Commerce Server','admin','',0),(2741,1,'en','TEXT_POST','form','admin','',0),(2742,1,'en','TEXT_PREFIX','prefix','admin','',0),(2743,1,'en','TEXT_PRICE_FLAG_GRADUATED','Status - groupprises','admin','',0),(2744,1,'en','TEXT_PRICE_SAVING','saving','admin','',0),(2745,1,'en','TEXT_PROCESS','image processing','admin','',0),(2746,1,'en','TEXT_PROCESS_SEO','Process Suma URLs','admin','',0),(2747,1,'en','TEXT_PRODUCT','product','admin','',0),(2748,1,'en','TEXT_PRODUCTS','product','admin','',0),(2749,1,'en','TEXT_PRODUCTS_AVERAGE_QUANTITY','stock average quantity','admin','',0),(2750,1,'en','TEXT_PRODUCTS_COUNT','Products count','admin','',0),(2751,1,'en','TEXT_PRODUCTS_DESCRIPTION','description','admin','',0),(2752,1,'en','TEXT_PRODUCTS_DIGITAL','digital products','admin','',0),(2753,1,'en','TEXT_PRODUCTS_EAN','EAN','admin','',0),(2754,1,'en','TEXT_PRODUCTS_FINALPRICE','product total price','admin','',0),(2755,1,'en','TEXT_PRODUCTS_FSK18','FSK 18','admin','',0),(2756,1,'en','TEXT_PRODUCTS_GROUP_PRICE','customer status / graduated prices','admin','',0),(2757,1,'en','TEXT_PRODUCTS_ID','product ID','admin','',0),(2758,1,'en','TEXT_PRODUCTS_IMAGE','image','admin','',0),(2759,1,'en','TEXT_PRODUCTS_IN_CATEGORY','products in category','admin','',0),(2760,1,'en','TEXT_PRODUCTS_KEYWORDS','more search terms','admin','',0),(2761,1,'en','TEXT_PRODUCTS_MASTER_MODEL','master model ID','admin','',0),(2762,1,'en','TEXT_PRODUCTS_MEDIA','Files','admin','',0),(2763,1,'en','TEXT_PRODUCTS_META_DESCRIPTION','meta description','admin','',0),(2764,1,'en','TEXT_PRODUCTS_META_KEYWORDS','meta keywords','admin','',0),(2765,1,'en','TEXT_PRODUCTS_META_TITLE','meta title','admin','',0),(2766,1,'en','TEXT_PRODUCTS_MODEL','product number','admin','',0),(2767,1,'en','TEXT_PRODUCTS_NAME','product name','admin','',0),(2768,1,'en','TEXT_PRODUCTS_NAME_STORE1','Product name','admin','',0),(2769,1,'en','TEXT_PRODUCTS_OPTION_TEMPLATE','Optiontemplate','admin','',0),(2770,1,'en','TEXT_PRODUCTS_ORDERED','products ordered','admin','',0),(2771,1,'en','TEXT_PRODUCTS_ORDER_PRICE','Customer final price','admin','',0),(2772,1,'en','TEXT_PRODUCTS_PREIS_FORMATED','Shop price','admin','',0),(2773,1,'en','TEXT_PRODUCTS_PRICE','product price','admin','',0),(2774,1,'en','TEXT_PRODUCTS_PRICE_GROSS','Price gross','admin','',0),(2775,1,'en','TEXT_PRODUCTS_PRICE_NET','Price net','admin','',0),(2776,1,'en','TEXT_PRODUCTS_QUANTITY','stock','admin','',0),(2777,1,'en','TEXT_PRODUCTS_SHIPPINGTIME','delivery time','admin','',0),(2778,1,'en','TEXT_PRODUCTS_SHORT_DESCRIPTION','short description','admin','',0),(2779,1,'en','TEXT_PRODUCTS_SINGLEPRICE','product single price','admin','',0),(2780,1,'en','TEXT_PRODUCTS_SORT','sorting','admin','',0),(2781,1,'en','TEXT_PRODUCTS_SORTING','product sorting','admin','',0),(2782,1,'en','TEXT_PRODUCTS_SORTING2','product sorting2','admin','',0),(2783,1,'en','TEXT_PRODUCTS_SPECIAL_PRICE','special pricing','admin','',0),(2784,1,'en','TEXT_PRODUCTS_STARTPAGE','show product on index page','admin','',0),(2785,1,'en','TEXT_PRODUCTS_STARTPAGE_SORT','sort order on index page','admin','',0),(2786,1,'en','TEXT_PRODUCTS_STATS','Product Sales Data','admin','',0),(2787,1,'en','TEXT_PRODUCTS_STATUS','status','admin','',0),(2788,1,'en','TEXT_PRODUCTS_TAX','product VAT','admin','',0),(2789,1,'en','TEXT_PRODUCTS_TAX_CLASS_ID','tax class ID','admin','',0),(2790,1,'en','TEXT_PRODUCTS_TO_CATEGORIES','product to category','admin','',0),(2791,1,'en','TEXT_PRODUCTS_TO_MEDIA','file attachments','admin','',0),(2792,1,'en','TEXT_PRODUCTS_TO_MORE_CATEGORIES','Other categories','admin','',0),(2793,1,'en','TEXT_PRODUCTS_TYPE','Type','admin','',0),(2794,1,'en','TEXT_PRODUCTS_UNIT','Stock unit','admin','',0),(2795,1,'en','TEXT_PRODUCTS_URL','Url','admin','',0),(2796,1,'en','TEXT_PRODUCTS_VPE','Base price','admin','',0),(2797,1,'en','TEXT_PRODUCTS_VPE_STATUS','show basic pricing','admin','',0),(2798,1,'en','TEXT_PRODUCTS_VPE_VALUE','exchange ratio','admin','',0),(2799,1,'en','TEXT_PRODUCTS_WEIGHT','weight','admin','',0),(2800,1,'en','TEXT_PRODUCT_IMAGE','Products Image','admin','',0),(2801,1,'en','TEXT_PRODUCT_LISTING','articel listing','admin','',0),(2802,1,'en','TEXT_PRODUCT_LIST_TEMPLATE','product listing template','admin','',0),(2803,1,'en','TEXT_PRODUCT_MORE_DETAILS','more details','admin','',0),(2804,1,'en','TEXT_PRODUCT_PRICE','price','admin','',0),(2805,1,'en','TEXT_PRODUCT_SERIALS','Serial','admin','',0),(2806,1,'en','TEXT_PRODUCT_SP_PRICE','special price','admin','',0),(2807,1,'en','TEXT_PRODUCT_TAX','VAT','admin','',0),(2808,1,'en','TEXT_PRODUCT_TEMPLATE','product info template','admin','',0),(2809,1,'en','TEXT_PRODUCT_TOTAL','sub total','admin','',0),(2810,1,'en','TEXT_PRODUCT_TOTAL_OTAX','subtotal net','admin','',0),(2811,1,'en','TEXT_PRODUCT_TO_MASTERCAT','Product Master Category','admin','',0),(2812,1,'en','TEXT_PRODUCT_WINDOW','product window','admin','',0),(2813,1,'en','TEXT_PROJECT','Project','admin','',0),(2814,1,'en','TEXT_QUANTITY','stock quantity','admin','',0),(2815,1,'en','TEXT_QUANTITY_ORDERED','Bestellt','admin','',0),(2816,1,'en','TEXT_QUANTITY_SOLD','Quantity sold','admin','',0),(2817,1,'en','TEXT_READONLY','Don\'t sync','admin','',0),(2818,1,'en','TEXT_READ_MORE','Read more','admin','',0),(2819,1,'en','TEXT_REDIRECT','Redirect URLs','admin','',0),(2820,1,'en','TEXT_REDIRECT_404','404 URLs','admin','',0),(2821,1,'en','TEXT_REDIRECT_DELETED','Deleted URLs','admin','',0),(2822,1,'en','TEXT_REDUCE_STOCK','Refill stock','admin','',0),(2823,1,'en','TEXT_REENABLE_DOWNLOAD','Reenable download?','admin','',0),(2824,1,'en','TEXT_REF_ID','Url ref ID','admin','',0),(2825,1,'en','TEXT_RELOAD','reload','admin','',0),(2826,1,'en','TEXT_RELOAD_INFO','Please note that after you have changed and saved options on this page, the administration area need to be reloaded. Please press the \"F5\" Key on your keyboard to reload.','admin','',0),(2827,1,'en','TEXT_RELOAD_ST','Reload data from store','admin','',0),(2828,1,'en','TEXT_REPLACE_EXISTING','Replace phrases','admin','',0),(2829,1,'en','TEXT_REPLACE_WORD','Replace','admin','',0),(2830,1,'en','TEXT_RESET','Reset fields','admin','',0),(2831,1,'en','TEXT_REVIEW_DATE','review date','admin','',0),(2832,1,'en','TEXT_REVIEW_ID','ID','admin','',0),(2833,1,'en','TEXT_REVIEW_RATING','rating','admin','',0),(2834,1,'en','TEXT_REVIEW_STATUS','review status','admin','',0),(2835,1,'en','TEXT_REVIEW_TEXT','reviews text','admin','',0),(2836,1,'en','TEXT_REVIEW_TITLE','review title','admin','',0),(2837,1,'en','TEXT_RUNTIME','Runtime/Message','admin','',0),(2838,1,'en','TEXT_RUN_EXPORT','start export','admin','',0),(2839,1,'en','TEXT_RUN_INSTALL','Update plugin','admin','',0),(2840,1,'en','TEXT_SAVE','save','admin','',0),(2841,1,'en','TEXT_SAVE_ALL','save all','admin','',0),(2842,1,'en','TEXT_SEARCH','search:','admin','',0),(2843,1,'en','TEXT_SEARCH_ENGINES','metatags','admin','',0),(2844,1,'en','TEXT_SEARCH_IMAGES','Search Images','admin','',0),(2845,1,'en','TEXT_SEARCH_KEYWORD','Search keywords','admin','',0),(2846,1,'en','TEXT_SEARCH_LAST_DATE','Request date','admin','',0),(2847,1,'en','TEXT_SEARCH_REQUEST_COUNT','Requests count','admin','',0),(2848,1,'en','TEXT_SEARCH_RESULT_COUNT','Results count','admin','',0),(2849,1,'en','TEXT_SECURITY','security','admin','',0),(2850,1,'en','TEXT_SELECT','safe selection?','admin','',0),(2851,1,'en','TEXT_SELECTED_ITEMS','selection','admin','',0),(2852,1,'en','TEXT_SELECTION_MERGE','Combine','admin','',0),(2853,1,'en','TEXT_SELECTION_MINIFYMERGE','minify & combine','admin','',0),(2854,1,'en','TEXT_SELECTION_SINGLE','single files','admin','',0),(2855,1,'en','TEXT_SEO_COUNTRY','Server location','admin','',0),(2856,1,'en','TEXT_SEO_HELP','>> to SEO-Help and Explanation','admin','',0),(2857,1,'en','TEXT_SEO_INDEXED_PAGES','Indexed pages','admin','',0),(2858,1,'en','TEXT_SEO_IP','Server IP','admin','',0),(2859,1,'en','TEXT_SEO_KEYWORDS_TITLE','Keyword','admin','',0),(2860,1,'en','TEXT_SEO_KEYWORDS_TRAFFIC','Traffic','admin','',0),(2861,1,'en','TEXT_SEO_NEBBLOCK_OWNER','Webhoster','admin','',0),(2862,1,'en','TEXT_SEO_OPTIMIZATION_BOX_TITLE','SEO-Trend','admin','',0),(2863,1,'en','TEXT_SEO_OPTIMIZATION_DOMAIN_INFO','SEO-Data','admin','',0),(2864,1,'en','TEXT_SEO_OPTIMIZATION_KEYWORDS_FORM_TEXT','Keyword research','admin','',0),(2865,1,'en','TEXT_SEO_OPTIMIZATION_TITLE','SEO','admin','',0),(2866,1,'en','TEXT_SEO_PAGERANK','Pagerank','admin','',0),(2867,1,'en','TEXT_SEO_PLUGINS','Plugin Metatags','admin','',0),(2868,1,'en','TEXT_SEO_REGENERATE','Regenerate SEO Urls','admin','',0),(2869,1,'en','TEXT_SEO_STATIC_VISIBILITY','Domain visibility','admin','',0),(2870,1,'en','TEXT_SEO_STATIC_VISIBILITY_CHANGES','visibility changes','admin','',0),(2871,1,'en','TEXT_SERIAL_ID','ID','admin','',0),(2872,1,'en','TEXT_SESSION_RIGHTS','Session','admin','',0),(2873,1,'en','TEXT_SETLOCALE','Setlocale','admin','',0),(2874,1,'en','TEXT_SET_ALL_RIGHTS','Set all Rights','admin','',0),(2875,1,'en','TEXT_SET_RIGHTS','Group Rights','admin','',0),(2876,1,'en','TEXT_SHIPPING','shipping costs','admin','',0),(2877,1,'en','TEXT_SHIPPING_ADDRESS','shipping address','admin','',0),(2878,1,'en','TEXT_SHIPPING_ALLOWED','shipping allowed','admin','',0),(2879,1,'en','TEXT_SHIPPING_CODE','shipping code','admin','',0),(2880,1,'en','TEXT_SHIPPING_COST_ID','shipping costs ID','admin','',0),(2881,1,'en','TEXT_SHIPPING_COUNTRY_CODE','shipping country code','admin','',0),(2882,1,'en','TEXT_SHIPPING_DESC','shipping description','admin','',0),(2883,1,'en','TEXT_SHIPPING_DIR','directory','admin','',0),(2884,1,'en','TEXT_SHIPPING_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(2885,1,'en','TEXT_SHIPPING_EMAIL_DESC_TXT','E-Mail Text (txt)','admin','',0),(2886,1,'en','TEXT_SHIPPING_GEO_ZONE','shipping geo zone','admin','',0),(2887,1,'en','TEXT_SHIPPING_ICON','icon','admin','',0),(2888,1,'en','TEXT_SHIPPING_ID','shipping ID','admin','',0),(2889,1,'en','TEXT_SHIPPING_NAME','shipping name','admin','',0),(2890,1,'en','TEXT_SHIPPING_PERMISSION','Shippingmethods','admin','',0),(2891,1,'en','TEXT_SHIPPING_PERMISSION_INFO','Note','admin','',0),(2892,1,'en','TEXT_SHIPPING_PRICE','shipping price','admin','',0),(2893,1,'en','TEXT_SHIPPING_STATUS','shippingtime','admin','',0),(2894,1,'en','TEXT_SHIPPING_TAX_CLASS','tax class','admin','',0),(2895,1,'en','TEXT_SHIPPING_TPL','template','admin','',0),(2896,1,'en','TEXT_SHIPPING_TYPE','calculation basis','admin','',0),(2897,1,'en','TEXT_SHIPPING_TYPE_VALUE_FROM','from','admin','',0),(2898,1,'en','TEXT_SHIPPING_TYPE_VALUE_TO','to','admin','',0),(2899,1,'en','TEXT_SHIPPING_UNALLOWED','shipping type not allowed','admin','',0),(2900,1,'en','TEXT_SHIPPING_ZONE','Shipping zones','admin','',0),(2901,1,'en','TEXT_SHOP','shop','admin','',0),(2902,1,'en','TEXT_SHOPPING_CART','Shopping cart','admin','',0),(2903,1,'en','TEXT_SHOPPING_CART_ADDED','Shopping Carts added','admin','',0),(2904,1,'en','TEXT_SHOPPING_CART_CHECKOUT','Shopping Carts checked out','admin','',0),(2905,1,'en','TEXT_SHOPPING_CART_NOT_CHECKOUT','Shopping Carts without Checkout','admin','',0),(2906,1,'en','TEXT_SHOP_ADD','new client','admin','',0),(2907,1,'en','TEXT_SHOP_DOMAIN','store domain','admin','',0),(2908,1,'en','TEXT_SHOP_HTTP','Url http','admin','',0),(2909,1,'en','TEXT_SHOP_HTTPS','Url https','admin','',0),(2910,1,'en','TEXT_SHOP_ID','store','admin','',0),(2911,1,'en','TEXT_SHOP_PERMISSION_INFO','Note','admin','',0),(2912,1,'en','TEXT_SHOP_SSL','SSL','admin','',0),(2913,1,'en','TEXT_SHOP_SSL_DOMAIN','SSL Domain','admin','',0),(2914,1,'en','TEXT_SHOP_STATUS','status','admin','',0),(2915,1,'en','TEXT_SHOP_TITLE','store admin-title','admin','',0),(2916,1,'en','TEXT_SIMPLE_UPLOAD','simple Fileupload','admin','',0),(2917,1,'en','TEXT_SIMPLE_WYSIWYG','Simple Html Editor','admin','',0),(2918,1,'en','TEXT_SITEMAP','sitemap','admin','',0),(2919,1,'en','TEXT_SORTING','sorting','admin','',0),(2920,1,'en','TEXT_SORTORDER','sortorder','admin','',0),(2921,1,'en','TEXT_SORT_DOWN','Down','admin','',0),(2922,1,'en','TEXT_SORT_ORDER','sort order','admin','',0),(2923,1,'en','TEXT_SORT_UP','Up','admin','',0),(2924,1,'en','TEXT_SPECIALS_PRICE','special offers price','admin','',0),(2925,1,'en','TEXT_START','Start','admin','',0),(2926,1,'en','TEXT_STARTPAGE','show product on index page','admin','',0),(2927,1,'en','TEXT_START_ASK','start process ?','admin','',0),(2928,1,'en','TEXT_STATES_CODE','Federal state code','admin','',0),(2929,1,'en','TEXT_STATES_ID','Federal state id','admin','',0),(2930,1,'en','TEXT_STATE_NAME','Federal state name','admin','',0),(2931,1,'en','TEXT_STATS_SALES','Sales','admin','',0),(2932,1,'en','TEXT_STATS_TOTAL_ORDERS','Overview','admin','',0),(2933,1,'en','TEXT_STATUS','status','admin','',0),(2934,1,'en','TEXT_STATUS_CLASS','status class','admin','',0),(2935,1,'en','TEXT_STATUS_ID','status ID','admin','',0),(2936,1,'en','TEXT_STATUS_IMAGE','status icon','admin','',0),(2937,1,'en','TEXT_STATUS_NAME','status name','admin','',0),(2938,1,'en','TEXT_STATUS_VALUES','Values','admin','',0),(2939,1,'en','TEXT_STOCK_OPTIONS','stock handling','admin','',0),(2940,1,'en','TEXT_STOCK_RULE','stock','admin','',0),(2941,1,'en','TEXT_STOPWORD_LOOKUP','Lookup','admin','',0),(2942,1,'en','TEXT_STOPWORD_REPLACEMENT','Replace characters','admin','',0),(2943,1,'en','TEXT_STOP_WORDS','SEO Stopwords','admin','',0),(2944,1,'en','TEXT_STOP_WORD_ID','ID','admin','',0),(2945,1,'en','TEXT_STORE','Shop','admin','',0),(2946,1,'en','TEXT_STORES','client stores','admin','',0),(2947,1,'en','TEXT_STORES_ADD_NEW','add a client','admin','',0),(2948,1,'en','TEXT_STORE_ACCOUNT_COMPANY','company','admin','',0),(2949,1,'en','TEXT_STORE_ACCOUNT_COMPANY_VAT_CHECK','VAT ID','admin','',0),(2950,1,'en','TEXT_STORE_ACCOUNT_DOB','date of birth','admin','',0),(2951,1,'en','TEXT_STORE_ACCOUNT_DOB_FORMAT','Date format','admin','',0),(2952,1,'en','TEXT_STORE_ACCOUNT_FEDERAL_STATES','Federal States','admin','',0),(2953,1,'en','TEXT_STORE_ACCOUNT_GENDER','gender','admin','',0),(2954,1,'en','TEXT_STORE_ACCOUNT_SUBURB','suburb','admin','',0),(2955,1,'en','TEXT_STORE_ADDRESS_BOOK_ENTRIES','address book entries','admin','',0),(2956,1,'en','TEXT_STORE_ALLOW_DECIMAL_QUANTITIY','allow decimals in shopping cart','admin','',0),(2957,1,'en','TEXT_STORE_ALLOW_GUEST_ORDERS','Allow Guest Orders','admin','',0),(2958,1,'en','TEXT_STORE_CAPTCHA','Captcha','admin','',0),(2959,1,'en','TEXT_STORE_CITY_MIN_LENGTH','minimum length city','admin','',0),(2960,1,'en','TEXT_STORE_CLAIM','Shop Claim','admin','',0),(2961,1,'en','TEXT_STORE_COMPANY_MIN_LENGTH','Company min. length','admin','',0),(2962,1,'en','TEXT_STORE_CONTACT_EMAIL','Contactform - Receiver','admin','',0),(2963,1,'en','TEXT_STORE_COUNTRY','country','admin','',0),(2964,1,'en','TEXT_STORE_CREATED','The client has been created, please reload the admin area with the F5 key on your keayboard.','admin','',0),(2965,1,'en','TEXT_STORE_CURRENCY','currency','admin','',0),(2966,1,'en','TEXT_STORE_CUSTOMERS_STATUS_ID','customer ID','admin','',0),(2967,1,'en','TEXT_STORE_CUSTOMERS_STATUS_ID_GUEST','customer ID guest','admin','',0),(2968,1,'en','TEXT_STORE_DATA','client','admin','',0),(2969,1,'en','TEXT_STORE_DEFAULT_MOBILE_TEMPLATE','Mobile template','admin','',0),(2970,1,'en','TEXT_STORE_DEFAULT_ORDER_STATUS','default order status','admin','',0),(2971,1,'en','TEXT_STORE_DEFAULT_TEMPLATE','Template','admin','',0),(2972,1,'en','TEXT_STORE_DIGITALCOND_CHECK','Approval to begin the execution of the contract and confirmation of knowledge about loss of the right of withdrawal in Digital Products','admin','',0),(2973,1,'en','TEXT_STORE_EMAIL_ADDRESS_MIN_LENGTH','minimum length email address','admin','',0),(2974,1,'en','TEXT_STORE_EMAIL_FOOTER_HTML','e-mail footer (html)','admin','',0),(2975,1,'en','TEXT_STORE_EMAIL_FOOTER_TXT','e-mail footer (txt)','admin','',0),(2976,1,'en','TEXT_STORE_FAVICON','Shop-Favicon','admin','',0),(2977,1,'en','TEXT_STORE_FAX_MIN_LENGTH','Fax min. length','admin','',0),(2978,1,'en','TEXT_STORE_FIRST_NAME_MIN_LENGTH','minimum length first name','admin','',0),(2979,1,'en','TEXT_STORE_ID','Store ID','admin','',0),(2980,1,'en','TEXT_STORE_IMAGES_PATH_FULL','Images absolute path','admin','',0),(2981,1,'en','TEXT_STORE_JQUERY_ACTIVATE','Include jQuery','admin','',0),(2982,1,'en','TEXT_STORE_JQUERY_CDN','jQuery CDN','admin','',0),(2983,1,'en','TEXT_STORE_JQUERY_VERSION','jQuery Version','admin','',0),(2984,1,'en','TEXT_STORE_LANGUAGE','language','admin','',0),(2985,1,'en','TEXT_STORE_LAST_NAME_MIN_LENGTH','minimum length last name','admin','',0),(2986,1,'en','TEXT_STORE_LOGO','shop-logo','admin','',0),(2987,1,'en','TEXT_STORE_MAX_CATEGORIES_PER_ROW','max categories per row','admin','',0),(2988,1,'en','TEXT_STORE_META_AUTHOR','author','admin','',0),(2989,1,'en','TEXT_STORE_META_COMPANY','company','admin','',0),(2990,1,'en','TEXT_STORE_META_DESCRIPTION','Meta Description (homepage)','admin','',0),(2991,1,'en','TEXT_STORE_META_DOCTYPE_HTML','HTML Version','admin','',0),(2992,1,'en','TEXT_STORE_META_FREE_META','Free Metatags','admin','',0),(2993,1,'en','TEXT_STORE_META_KEYWORDS','meta keywords (homepage)','admin','',0),(2994,1,'en','TEXT_STORE_META_PAGINATION_ROBOTS','Robots-Pagination','admin','',0),(2995,1,'en','TEXT_STORE_META_PUBLISHER','publisher','admin','',0),(2996,1,'en','TEXT_STORE_META_REPLY_TO','reply to','admin','',0),(2997,1,'en','TEXT_STORE_META_REVISIT_AFTER','revisit after','admin','',0),(2998,1,'en','TEXT_STORE_META_ROBOTS','robots','admin','',0),(2999,1,'en','TEXT_STORE_META_TOPIC','topic','admin','',0),(3000,1,'en','TEXT_STORE_MOBILE_ACTIVATE','Activate mobiles template','admin','',0),(3001,1,'en','TEXT_STORE_MOBILE_PHONE_MIN_LENGTH','Mobile phone min. length','admin','',0),(3002,1,'en','TEXT_STORE_MOBILE_SWITCH_METHOD','Mobile detection','admin','',0),(3003,1,'en','TEXT_STORE_NAME','store title','admin','',0),(3004,1,'en','TEXT_STORE_PASSWORD_MIN_LENGTH','minimum length password','admin','',0),(3005,1,'en','TEXT_STORE_POSTCODE_MIN_LENGTH','minimum length zip code','admin','',0),(3006,1,'en','TEXT_STORE_PRODUCT_DOWNLOAD_PUBLIC_ALLOWED','Free downloads without login','admin','',0),(3007,1,'en','TEXT_STORE_PRODUCT_LIST_RESULTS','number products per page','admin','',0),(3008,1,'en','TEXT_STORE_PRODUCT_NO_PICTURE','No picture','admin','',0),(3009,1,'en','TEXT_STORE_SEARCH_RESULTS','search results per page','admin','',0),(3010,1,'en','TEXT_STORE_SHOPOWNER_CEO','CEO','admin','',0),(3011,1,'en','TEXT_STORE_SHOPOWNER_CITY','City','admin','',0),(3012,1,'en','TEXT_STORE_SHOPOWNER_COMPANY','Company','admin','',0),(3013,1,'en','TEXT_STORE_SHOPOWNER_FAX','Fax','admin','',0),(3014,1,'en','TEXT_STORE_SHOPOWNER_STREETADDRESS','Streetaddress','admin','',0),(3015,1,'en','TEXT_STORE_SHOPOWNER_TELEPHONE','Phone','admin','',0),(3016,1,'en','TEXT_STORE_SHOPOWNER_VATID','VAT ID','admin','',0),(3017,1,'en','TEXT_STORE_SHOPOWNER_ZIP','ZIP Code','admin','',0),(3018,1,'en','TEXT_STORE_SHOW_PHONE_PREFIX','Show phone prefix','admin','',0),(3019,1,'en','TEXT_STORE_SMTP_AUTH','SMTP auth','admin','',0),(3020,1,'en','TEXT_STORE_SMTP_HOST','smtp host','admin','',0),(3021,1,'en','TEXT_STORE_SMTP_PASSWORD','SMTP password','admin','',0),(3022,1,'en','TEXT_STORE_SMTP_PORT','smtp post','admin','',0),(3023,1,'en','TEXT_STORE_SMTP_SECURE','SMTP Security','admin','',0),(3024,1,'en','TEXT_STORE_SMTP_USERNAME','SMTP user','admin','',0),(3025,1,'en','TEXT_STORE_STOCK_CHECK_BUY','purchase of goods not in stock','admin','',0),(3026,1,'en','TEXT_STORE_STOCK_CHECK_DISPLAY','display goods not in stock','admin','',0),(3027,1,'en','TEXT_STORE_STORE_CLAIM','Shop-Slogan','admin','',0),(3028,1,'en','TEXT_STORE_STREET_ADDRESS_MIN_LENGTH','minimum length street','admin','',0),(3029,1,'en','TEXT_STORE_TABLET_IS_MOBILE','Show mobile template to tablets','admin','',0),(3030,1,'en','TEXT_STORE_TELEPHONE_MIN_LENGTH','minimum length phone number','admin','',0),(3031,1,'en','TEXT_STORE_TEMPLATE','template','admin','',0),(3032,1,'en','TEXT_STORE_TEMPLATE_CATEGORY_LISTING','template category listing','admin','',0),(3033,1,'en','TEXT_STORE_TEMPLATE_PRODUCT_LIST','template product listing (single product)','admin','',0),(3034,1,'en','TEXT_STORE_TEMPLATE_PRODUCT_LISTING','template produkt listing','admin','',0),(3035,1,'en','TEXT_STORE_TEMPLATE_PRODUCT_LISTING_MANUFACTURERS','template manufacturer listing','admin','',0),(3036,1,'en','TEXT_STORE_TEMPLATE_PRODUCT_SEARCH_RESULT','template produkt search','admin','',0),(3037,1,'en','TEXT_STORE_TERMSCOND_CHECK','Terms and Conditions must be accepted','admin','',0),(3038,1,'en','TEXT_STORE_TPL_LISTING_COLUMNS','Productcolums (xt_grid)','admin','',0),(3039,1,'en','TEXT_STORE_VAT_CHANGE_CLIENT_GROUP_ON_VAT_CHANGE','Change customer status on VAT-Change','admin','',0),(3040,1,'en','TEXT_STORE_VAT_CHECK_BLOCK','wrong/block unverified','admin','',0),(3041,1,'en','TEXT_STORE_VAT_CHECK_LIVE','live-check activ','admin','',0),(3042,1,'en','TEXT_STORE_VAT_CHECK_MOVE','match customer status','admin','',0),(3043,1,'en','TEXT_STORE_VAT_CHECK_STATUS','check activ','admin','',0),(3044,1,'en','TEXT_STORE_VAT_CHECK_STATUS_IN','with VAT-ID (home country)','admin','',0),(3045,1,'en','TEXT_STORE_VAT_CHECK_STATUS_OUT','with VAT-ID (foreign)','admin','',0),(3046,1,'en','TEXT_STORE_VAT_CHECK_TYPE','Check type','admin','',0),(3047,1,'en','TEXT_STORE_ZONE','zone','admin','',0),(3048,1,'en','TEXT_SUCCESS','success','admin','',0),(3049,1,'en','TEXT_SUCCESS_DELETE_CATEGORY','category successfully deleted','admin','',0),(3050,1,'en','TEXT_SUCCESS_DELETE_CUSTOM_LINK','Custom link is successfully deleted','admin','',0),(3051,1,'en','TEXT_SUCCESS_DELETE_SHOP','client store deleted successfully.','admin','',0),(3052,1,'en','TEXT_SUFFIX','suffix','admin','',0),(3053,1,'en','TEXT_SUPPORTCENTER','Helpdesk','admin','',0),(3054,1,'en','TEXT_SYSTEMROOT','system','admin','',0),(3055,1,'en','TEXT_SYSTEM_ADMIN_FILTER','Admin Filter','admin','',0),(3056,1,'en','TEXT_SYSTEM_ADMIN_PAGE_SIZE','Items per page','admin','',0),(3057,1,'en','TEXT_SYSTEM_ADMIN_PERMISSIONS','admin rights','admin','',0),(3058,1,'en','TEXT_SYSTEM_ADMIN_RIGHTS','admin rights management','admin','',0),(3059,1,'en','TEXT_SYSTEM_AUTOLOAD','Preload Dropdowndata','admin','',0),(3060,1,'en','TEXT_SYSTEM_BACKEND_THEME','Backend Theme','admin','',0),(3061,1,'en','TEXT_SYSTEM_CSS_CACHE_TIME','CSS cache time (seconds)','admin','',0),(3062,1,'en','TEXT_SYSTEM_CSS_MINIFY_OPTION','CSS minify','admin','',0),(3063,1,'en','TEXT_SYSTEM_DEBUG','debug status','admin','',0),(3064,1,'en','TEXT_SYSTEM_FILE_COUNT','Max Upload','admin','',0),(3065,1,'en','TEXT_SYSTEM_FILE_SIZE','Max Filesize: (MB only Flash Upload)','admin','',0),(3066,1,'en','TEXT_SYSTEM_FILE_SORT','File Sort','admin','',0),(3067,1,'en','TEXT_SYSTEM_GROUP_CHECK','customer group check','admin','',0),(3068,1,'en','TEXT_SYSTEM_GROUP_PERMISSIONS','customer group rights','admin','',0),(3069,1,'en','TEXT_SYSTEM_HIDE_SUMAURL','Hide SEO URL manually edit','admin','',0),(3070,1,'en','TEXT_SYSTEM_IMAGE_CHOOSER','Use Media Manager for Image Selection','admin','',0),(3071,1,'en','TEXT_SYSTEM_IMG_QUALITY','Image quality','admin','',0),(3072,1,'en','TEXT_SYSTEM_IMG_SHRINK_ONLY','Thumbnails, shrink only','admin','',0),(3073,1,'en','TEXT_SYSTEM_JS_CACHE_TIME','Javascript cache time (seconds)','admin','',0),(3074,1,'en','TEXT_SYSTEM_JS_MINIFY_OPTION','Javascript minify','admin','',0),(3075,1,'en','TEXT_SYSTEM_MAIL_DEBUG','e-mail debug','admin','',0),(3076,1,'en','TEXT_SYSTEM_MAIL_TYPE','e-mail system','admin','',0),(3077,1,'en','TEXT_SYSTEM_METATAGS_AUTOGENERATE','generate meta-keywords by content?','admin','',0),(3078,1,'en','TEXT_SYSTEM_METATAGS_MAXCOUNT','meta keywords - max. words','admin','',0),(3079,1,'en','TEXT_SYSTEM_METATAGS_MAXLENGTH','meta keywords - max chars','admin','',0),(3080,1,'en','TEXT_SYSTEM_METATAGS_WORDLENGTH','meta keywords -min. word length','admin','',0),(3081,1,'en','TEXT_SYSTEM_METATAGS_WORDS_COUNTER','Metatag Wordcounter','admin','',0),(3082,1,'en','TEXT_SYSTEM_MOBILE_TEMPLATE','standard mobile template','admin','',0),(3083,1,'en','TEXT_SYSTEM_MOD_REWRITE','mod rewrite URL','admin','',0),(3084,1,'en','TEXT_SYSTEM_MOD_REWRITE_404','404 Page for not defined url','admin','',0),(3085,1,'en','TEXT_SYSTEM_MOD_REWRITE_DEFAULT','SEO URL for pages','admin','',0),(3086,1,'en','TEXT_SYSTEM_MOD_REWRITE_NO_DUPLICATE_URLS','Force redirect on exact URL','admin','',0),(3087,1,'en','TEXT_SYSTEM_MORE_PRODUCT_IMAGES','additional product image','admin','',0),(3088,1,'en','TEXT_SYSTEM_ORDER_EDIT_ALLOW_NEGATIVE_STOCK','Sell goods not in stock','admin','',0),(3089,1,'en','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_IN_FRONTEND','Create new order in shop frontend','admin','',0),(3090,1,'en','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_ORDER_SOURCE','New orders source','admin','',0),(3091,1,'en','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_PAYMENT','New orders payment method','admin','',0),(3092,1,'en','TEXT_SYSTEM_ORDER_EDIT_NEW_ORDER_SHIPPING','New orders shipping method','admin','',0),(3093,1,'en','TEXT_SYSTEM_ORDER_EDIT_SHOW_ORDER_EDITOR_COLUMN','Show column &quot;Edited by&quot;','admin','',0),(3094,1,'en','TEXT_SYSTEM_ORDER_EDIT_USE_CUSTOMER_CURRENCY','Use customers currency','admin','',0),(3095,1,'en','TEXT_SYSTEM_PRODUCT_COPY_PREFIX','Mark for Copy (Products)','admin','',0),(3096,1,'en','TEXT_SYSTEM_SAVEBUTTON_POSITION','Save button','admin','',0),(3097,1,'en','TEXT_SYSTEM_SAVE_IP','save IP addresses','admin','',0),(3098,1,'en','TEXT_SYSTEM_SEARCH_SPLIT','split search requests?','admin','',0),(3099,1,'en','TEXT_SYSTEM_SENDMAIL_PATH','path to Sendmail','admin','',0),(3100,1,'en','TEXT_SYSTEM_SEO_FILE_TYPE','Filetype for Seo Url','admin','',0),(3101,1,'en','TEXT_SYSTEM_SEO_PRODUCTS_CATEGORIES','Product-URLS with categories','admin','',0),(3102,1,'en','TEXT_SYSTEM_SEO_URL_LANG_BASED','Language Based Seo Urls','admin','',0),(3103,1,'en','TEXT_SYSTEM_SHIPPING_STATUS','show delivery time','admin','',0),(3104,1,'en','TEXT_SYSTEM_SHOW_OVERLOAD_MESSAGE','Show overload message','admin','',0),(3105,1,'en','TEXT_SYSTEM_SIMPLE_GROUP_PERMISSIONS','simple CHMOD','admin','',0),(3106,1,'en','TEXT_SYSTEM_SRV_WEBROOT_PREFIX','Download Pathprefix','admin','',0),(3107,1,'en','TEXT_SYSTEM_STATUS','systemstatus','admin','',0),(3108,1,'en','TEXT_SYSTEM_STOCK_HANDLING','stock handling','admin','',0),(3109,1,'en','TEXT_SYSTEM_STOCK_RULES','show stock rules','admin','',0),(3110,1,'en','TEXT_SYSTEM_TEMPLATE','standard template','admin','',0),(3111,1,'en','TEXT_SYSTEM_UPLOAD_TYPE','Kind of Fileupload','admin','',0),(3112,1,'en','TEXT_SYSTEM_USE_DB_HOOKS','use database hooks','admin','',0),(3113,1,'en','TEXT_SYSTEM_USE_PRICE','gross admin','admin','',0),(3114,1,'en','TEXT_SYSTEM_USE_WYSIWYG','HTML Editor','admin','',0),(3115,1,'en','TEXT_TAX','tax rates','admin','',0),(3116,1,'en','TEXT_TAX_CLASS','tax class','admin','',0),(3117,1,'en','TEXT_TAX_CLASS_ID','tax class ID','admin','',0),(3118,1,'en','TEXT_TAX_CLASS_TITLE','tax class title','admin','',0),(3119,1,'en','TEXT_TAX_EXC','net','admin','',0),(3120,1,'en','TEXT_TAX_INC','gross','admin','',0),(3121,1,'en','TEXT_TAX_RATE','tax rate','admin','',0),(3122,1,'en','TEXT_TAX_RATES_ID','tax rate ID','admin','',0),(3123,1,'en','TEXT_TAX_RATE_COUNTRIES','Countries','admin','',0),(3124,1,'en','TEXT_TAX_ZONE_ID','zone ID','admin','',0),(3125,1,'en','TEXT_TEMPLATE','template','admin','',0),(3126,1,'en','TEXT_TEMPLATES_NAV','Template','admin','',0),(3127,1,'en','TEXT_THOUSANDS_SEP','seperator thousand','admin','',0),(3128,1,'en','TEXT_TINY_WYSIWYG','Tiny MCE','admin','',0),(3129,1,'en','TEXT_TITLE','title','admin','',0),(3130,1,'en','TEXT_TMPL','Optionsgroup template','admin','',0),(3131,1,'en','TEXT_TO','to','admin','',0),(3132,1,'en','TEXT_TODAY','Today','admin','',0),(3133,1,'en','TEXT_TOP_CATEGORY','Top Category','admin','',0),(3134,1,'en','TEXT_TOTAL','Gesamt Summe','admin','',0),(3135,1,'en','TEXT_TOTAL_COUNT','total count','admin','',0),(3136,1,'en','TEXT_TOTAL_DOWNLOADS','Downloads','admin','',0),(3137,1,'en','TEXT_TOTAL_OTAX','sum net','admin','',0),(3138,1,'en','TEXT_TPL_ID','mail template ID','admin','',0),(3139,1,'en','TEXT_TPL_SPECIAL','template special','admin','',0),(3140,1,'en','TEXT_TPL_TYPE','type','admin','',0),(3141,1,'en','TEXT_TRANSACTION_ID','transactions ID','admin','',0),(3142,1,'en','TEXT_TRANSLATED','Translated','admin','',0),(3143,1,'en','TEXT_TRASH','Trash','admin','',0),(3144,1,'en','TEXT_TRIGGERED_BY','From','admin','',0),(3145,1,'en','TEXT_TRUE','yes','admin','',0),(3146,1,'en','TEXT_TYPE','modul class','admin','',0),(3147,1,'en','TEXT_UNASIGNED_CATS','Unassigned categories','admin','',0),(3148,1,'en','TEXT_UNSET_ALL_RIGHTS','Unset all Rights','admin','',0),(3149,1,'en','TEXT_UPDATESUNTIL','Update until','admin','',0),(3150,1,'en','TEXT_UPDATE_INFO','','admin','',0),(3151,1,'en','TEXT_UPDATE_NO','No updates for xt:Commerce VEYTON %s available.','admin','',0),(3152,1,'en','TEXT_UPDATE_PLUGIN','Plugin update in progress','admin','',0),(3153,1,'en','TEXT_UPDATE_PLUGIN_LOCAL_VERSION','There is an update available for following plugin:','admin','',0),(3154,1,'en','TEXT_UPDATE_PLUGIN_MIN_UPDATE_SCRIPT','Update scripts are available from version %s . No database update was performed. Please insert the files of the previous version again.Please insert the files of the previous version again.','admin','',0),(3155,1,'en','TEXT_UPDATE_PLUGIN_UPDATED_SCRIPT','Database update script was executed to update plugin from version %s to version %s','admin','',0),(3156,1,'en','TEXT_UPDATE_TRANSLATIONS','Updaten language content','admin','',0),(3157,1,'en','TEXT_UPDATE_VERSION_MIN_INFO','The plugin version %s which you have currently installed does not support the automatic plugin update yet, please upgrade to version %s manually to use by this function.','admin','',0),(3158,1,'en','TEXT_UPDATE_YES','Update  %s for xt:Commerce VEYTON %s available.','admin','',0),(3159,1,'en','TEXT_UPLOAD','File Upload','admin','',0),(3160,1,'en','TEXT_UPLOADING','Upload status','admin','',0),(3161,1,'en','TEXT_UPLOAD_CANCEL','Cancel Upload','admin','',0),(3162,1,'en','TEXT_UPLOAD_ERROR','Upload failed','admin','',0),(3163,1,'en','TEXT_UPLOAD_FILES','File and Imageupload','admin','',0),(3164,1,'en','TEXT_UPLOAD_PLUGIN','Sie k&ouml;nnen nun &uuml;ber ihren FTP-Client das Plugin in das Verzeichnis <b>%s</b> hochladen','admin','',0),(3165,1,'en','TEXT_UPLOAD_START','Search Files','admin','',0),(3166,1,'en','TEXT_UPLOAD_SUBMIT','Upload File','admin','',0),(3167,1,'en','TEXT_UPLOAD_SUCCESS','Upload successful','admin','',0),(3168,1,'en','TEXT_UPLOAD_TIP','Tip: nutze STRG - Taste im Dateibrowser, um mehrere Dateien zu markieren.','admin','',0),(3169,1,'en','TEXT_URL','plugin manufacturer URL','admin','',0),(3170,1,'en','TEXT_URL_TEXT','Suma URL','admin','',0),(3171,1,'en','TEXT_URL_TEXT_REDIRECT','Redirect URL','admin','',0),(3172,1,'en','TEXT_URL_TYPE','Url type','admin','',0),(3173,1,'en','TEXT_URL_TYPE_TEXT','Url type','admin','',0),(3174,1,'en','TEXT_USER_ID','user ID','admin','',0),(3175,1,'en','TEXT_USER_PASSWORD','passwort','admin','',0),(3176,1,'en','TEXT_USE_SHIPPING_ZONE','Shippingzones','admin','',0),(3177,1,'en','TEXT_VALUE','value','admin','',0),(3178,1,'en','TEXT_VALUE_MULTIPLICATOR','multiplicator','admin','',0),(3179,1,'en','TEXT_VAT_CHECK_COMPLEX','Complex','admin','',0),(3180,1,'en','TEXT_VAT_CHECK_LIVE','Live','admin','',0),(3181,1,'en','TEXT_VAT_CHECK_SIMPLE','Simple','admin','',0),(3182,1,'en','TEXT_VAT_ID_OPTIONS','VAT-ID options','admin','',0),(3183,1,'en','TEXT_VERSION','plugin Version','admin','',0),(3184,1,'en','TEXT_VIRTUAL_FOLDER','Virtual Folder','admin','',0),(3185,1,'en','TEXT_VISIBLE','visible for customers','admin','',0),(3186,1,'en','TEXT_VISIBLE_ADMIN','visible for admin','admin','',0),(3187,1,'en','TEXT_WATERMARK','watermark','admin','',0),(3188,1,'en','TEXT_WEEK','Week','admin','',0),(3189,1,'en','TEXT_WHITELIST','whitelist','admin','',0),(3190,1,'en','TEXT_WHITELIST_PERMISSIONS','(whitelist permission)','admin','',0),(3191,1,'en','TEXT_WHITELIST_PERMISSIONS_INFO','Your permission-settings are set to \"whitelist\"By selecting one option this dataset will be activated for selected group','admin','',0),(3192,1,'en','TEXT_WIDTH','width','admin','',0),(3193,1,'en','TEXT_WILLBE_BACKUP','will be backuped','admin','',0),(3194,1,'en','TEXT_WILLBE_INSTALL','will be installed','admin','',0),(3195,1,'en','TEXT_WILLBE_UPDATE','will be updated','admin','',0),(3196,1,'en','TEXT_WORDS_COUNT','Words','admin','',0),(3197,1,'en','TEXT_WRONG_ADMIN_SESSION_SECURITY_KEY','Admin Session Security Key is missing or wrong','admin','',0),(3198,1,'en','TEXT_XT_CRON','Cronjobs','admin','',0),(3199,1,'en','TEXT_XT_MOBILE_SWITCH_METHOD_AUTO','auto switch based on deviceinformation','admin','',0),(3200,1,'en','TEXT_XT_MOBILE_SWITCH_METHOD_MANUEL','only via link','admin','',0),(3201,1,'en','TEXT_XT_PAYMENTS_CONFIGURATION','XT Payments','admin','',0),(3202,1,'en','TEXT_XT_PAYMENT_RESTRICTION','Payment Restrictions','admin','',0),(3203,1,'en','TEXT_XT_REVIEWS','reviews','admin','',0),(3204,1,'en','TEXT_XT_TEMPLATES','xt:Commerce Templates','admin','',0),(3205,1,'en','TEXT_YEAR','Year','admin','',0),(3206,1,'en','TEXT_YEARLY','yearly','admin','',0),(3207,1,'en','TEXT_YEARS','Years','admin','',0),(3208,1,'en','TEXT_YESTERDAY','Yesterday','admin','',0),(3209,1,'en','TEXT_ZONE','tax zone','admin','',0),(3210,1,'en','TEXT_ZONE_COUNTRIES','Countries (ISO Code 2, seperated with ,)','admin','',0),(3211,1,'en','TEXT_ZONE_ID','zone ID','admin','',0),(3212,1,'en','TEXT_ZONE_NAME','Zone','admin','',0),(3213,1,'en','TITLE_ACL_AREA','admin rights','admin','',0),(3214,1,'en','TITLE_ACL_GROUPS','admin groups','admin','',0),(3215,1,'en','TITLE_ACL_USER','admin user','admin','',0),(3216,1,'en','TITLE_ADDRESS','customer addresses','admin','',0),(3217,1,'en','TITLE_BASE_PRICE','packaging unit','admin','',0),(3218,1,'en','TITLE_CATEGORY','category','admin','',0),(3219,1,'en','TITLE_CONFIGURATION','configuration','admin','',0),(3220,1,'en','TITLE_CONTENT','content','admin','',0),(3221,1,'en','TITLE_COUNTRIES','countries','admin','',0),(3222,1,'en','TITLE_CURRENCY','currency','admin','',0),(3223,1,'en','TITLE_CUSTOMER','customer','admin','',0),(3224,1,'en','TITLE_CUSTOMERS_STATUS','customer status','admin','',0),(3225,1,'en','TITLE_EMAIL_MANAGER','e-mail manager','admin','',0),(3226,1,'en','TITLE_EXPORT','export','admin','',0),(3227,1,'en','TITLE_LANGUAGE','language','admin','',0),(3228,1,'en','TITLE_LANGUAGE_CONTENT','language packets','admin','',0),(3229,1,'en','TITLE_MANUFACTURER','manufacturer','admin','',0),(3230,1,'en','TITLE_ORDER','orders','admin','',0),(3231,1,'en','TITLE_ORDER_STATUS','order status','admin','',0),(3232,1,'en','TITLE_PAYMENT','payment','admin','',0),(3233,1,'en','TITLE_PLUGIN_HOOKPOINTS','hookpoints','admin','',0),(3234,1,'en','TITLE_PLUGIN_INSTALLED','plugins installed','admin','',0),(3235,1,'en','TITLE_PRODUCT','article','admin','',0),(3236,1,'en','TITLE_PRODUCT_PRICE','customer status / graduated prices','admin','',0),(3237,1,'en','TITLE_PRODUCT_SP_PRICE','special pricing','admin','',0),(3238,1,'en','TITLE_PRODUCT_TO_CAT','product to category','admin','',0),(3239,1,'en','TITLE_SHIPPING','shipment','admin','',0),(3240,1,'en','TITLE_SHIPPING_STATUS','shippingtime','admin','',0),(3241,1,'en','TITLE_STOCK_RULE','stock','admin','',0),(3242,1,'en','TITLE_TAX','VAT','admin','',0),(3243,1,'en','TITLE_TAX_CLASS','tax class','admin','',0),(3244,1,'en','TITLE_XT_REVIEWS','reviews','admin','',0),(3245,1,'en','TITLE_ZONE','tax zone','admin','',0),(3246,1,'en','XT_CORE_ERROR_SHIPPINGCODE_WHITESPACE','Umlauts, blanks and special character are not allowed in the field \"shipping code\"','admin','',0),(3247,1,'en','XT_LASTEST_ACTIVITIES','xt:Commerce Marketplace','admin','',0),(3248,1,'en','XT_NEW_PLUGINS','Top Plugins/Templates','admin','',0),(3249,1,'en','XT_ORDER_EDIT_ALLOW_NEGATIVE_STOCK','Sell goods not in stock','admin','',0),(3250,1,'en','XT_ORDER_EDIT_NEW_ORDER_IN_FRONTEND','Create new order in shop frontend','admin','',0),(3251,1,'en','XT_ORDER_EDIT_NEW_ORDER_ORDER_SOURCE','New orders source','admin','',0),(3252,1,'en','XT_ORDER_EDIT_NEW_ORDER_PAYMENT','New orders payment method','admin','',0),(3253,1,'en','XT_ORDER_EDIT_NEW_ORDER_SHIPPING','New orders shipping method','admin','',0),(3254,1,'en','XT_ORDER_EDIT_SHOW_ORDER_EDITOR_COLUMN','Show column &quot;Edited by&quot;','admin','',0),(3255,1,'en','XT_ORDER_EDIT_USE_CUSTOMER_CURRENCY','Use customers currency','admin','',0),(3256,1,'en','XT_SHIPPING_EMAIL_DESC_HTML','E-Mail Text (html)','admin','',0),(3257,1,'en','XT_TOP_PLUGINS','Top Plugins','admin','',0),(3258,1,'en','BUTTON_NEXT','next','both','',0),(3259,1,'en','ERROR_LOGIN_COUNT','Either your user name or password is wrong. Please insert the correct data. Maybe you have lost your passwort?<br /><br />  Sie haben bisher %s mal versucht, sich anzumelden. Nach dem 5. fehlerhaften Versuch ist eine Anmeldung für die nächsten %s Minuten nicht mehr möglich.','both','',0),(3260,1,'en','ERROR_LOGIN_EMPTY_PARAMS','please review your data','both','',0),(3261,1,'en','ERROR_REMEMBER_KEY_ERROR','Error! your password link expired or is wrong, please repeat the procedure.','both','',0),(3262,1,'en','SUCCESS_CAPTCHA_VALID','Anforderung erfolgreich! Es wurde soeben eine Bestätigunsemail an Ihre E-Mail Adresse geschickt.','both','',0),(3263,1,'en','SUCCESS_PASSWORD_SEND','reset password successful! Ein neues Passwort wurde soeben an Ihre E-Mail Adresse versendet.','both','',0),(3264,1,'en','TEXT_BILLING_MOBILE_PHONE','Mobile phone','both','',0),(3265,1,'en','TEXT_BILLING_PHONE','Billing Phone','both','',0),(3266,1,'en','TEXT_CAPTCHA','captcha','both','',0),(3267,1,'en','TEXT_DAY_FRIDAY','Friday','both','',0),(3268,1,'en','TEXT_DAY_MONDAY','Monday','both','',0),(3269,1,'en','TEXT_DAY_SATURDAY','Saturday','both','',0),(3270,1,'en','TEXT_DAY_SUNDAY','Sunday','both','',0),(3271,1,'en','TEXT_DAY_THURSDAY','Thursday','both','',0),(3272,1,'en','TEXT_DAY_TUESDAY','Tuesday','both','',0),(3273,1,'en','TEXT_DAY_WEDNESDAY','Wednesday','both','',0),(3274,1,'en','TEXT_FEDERAL_STATES','Federal States','both','',0),(3275,1,'en','TEXT_MOBILE_PHONE','Mobile phone','both','',0),(3276,1,'en','TEXT_MONTH_APRIL','April','both','',0),(3277,1,'en','TEXT_MONTH_AUGUST','August','both','',0),(3278,1,'en','TEXT_MONTH_DECEMBER','December','both','',0),(3279,1,'en','TEXT_MONTH_FEBRUARY','February','both','',0),(3280,1,'en','TEXT_MONTH_JANUARY','January','both','',0),(3281,1,'en','TEXT_MONTH_JULY','July','both','',0),(3282,1,'en','TEXT_MONTH_JUNE','June','both','',0),(3283,1,'en','TEXT_MONTH_MARCH','March','both','',0),(3284,1,'en','TEXT_MONTH_MAY','May','both','',0),(3285,1,'en','TEXT_MONTH_NOVEMBER','November','both','',0),(3286,1,'en','TEXT_MONTH_OCTOBER','October','both','',0),(3287,1,'en','TEXT_MONTH_SEPTEMBER','September','both','',0),(3288,1,'en','TEXT_NEXT_MONTH','Next Month','both','',0),(3289,1,'en','TEXT_PHONE','Phone','both','',0),(3290,1,'en','TEXT_PREVIOUS_MONTH','Previous Month','both','',0),(3291,1,'en','TEXT_PRICE','price','both','',0),(3292,1,'en','TEXT_PRODUCTS_DISCOUNT','discount made','both','',0),(3293,1,'en','TEXT_PRODUCTS_SERIALS','serial numbers','both','',0),(3294,1,'en','TEXT_SERIAL_NUMBER','serial number','both','',0),(3295,1,'en','TEXT_SHIPPING_INFOS','Delivery information','both','',0),(3296,1,'en','TEXT_SHORT_DAY_FRIDAY','Fri','both','',0),(3297,1,'en','TEXT_SHORT_DAY_MONDAY','Mon','both','',0),(3298,1,'en','TEXT_SHORT_DAY_SATURDAY','Sat','both','',0),(3299,1,'en','TEXT_SHORT_DAY_SUNDAY','Sun','both','',0),(3300,1,'en','TEXT_SHORT_DAY_THURSDAY','Thu','both','',0),(3301,1,'en','TEXT_SHORT_DAY_TUESDAY','Tue','both','',0),(3302,1,'en','TEXT_SHORT_DAY_WEDNESDAY','Wed','both','',0),(3303,1,'en','TEXT_WRONG_SYSTEM_SECURITY_KEY','Wrong Security Key','both','',0),(3304,1,'en','BUTTON_ADD_ADDRESS','add new address','store','',0),(3305,1,'en','BUTTON_ADD_CART','add to cart','store','',0),(3306,1,'en','BUTTON_BACK','back','store','',0),(3307,1,'en','BUTTON_CHECKOUT','checkout','store','',0),(3308,1,'en','BUTTON_CONFIRM_ORDER','Confirm purchase','store','',0),(3309,1,'en','BUTTON_CONFIRM_ORDER_PAY','Confirm purchase','store','',0),(3310,1,'en','BUTTON_DELETE','delete','store','',0),(3311,1,'en','BUTTON_DOWNLOAD','Download file','store','',0),(3312,1,'en','BUTTON_EDIT','edit','store','',0),(3313,1,'en','BUTTON_LOGIN','login','store','',0),(3314,1,'en','BUTTON_REGISTER','register','store','',0),(3315,1,'en','BUTTON_SAVE','save','store','',0),(3316,1,'en','BUTTON_SEARCH','search','store','',0),(3317,1,'en','BUTTON_SHOW','show','store','',0),(3318,1,'en','BUTTON_SUBMIT','Send','store','',0),(3319,1,'en','BUTTON_TO_ARTICLE','to article','store','',0),(3320,1,'en','BUTTON_UPDATE','update','store','',0),(3321,1,'en','BUTTON_VIEW','show','store','',0),(3322,1,'en','ERROR_CAPTCHA_INVALID','securitycode is wrong! please review your entries.','store','',0),(3323,1,'en','ERROR_CHECK_BANK','please enter the bank name','store','',0),(3324,1,'en','ERROR_CHECK_BLZ','please enter the correct bank routing number','store','',0),(3325,1,'en','ERROR_CHECK_KTO','please enter the correct account number','store','',0),(3326,1,'en','ERROR_CHECK_OWNER','plesae enter the account holder','store','',0),(3327,1,'en','ERROR_CITY','please enter the town you live in','store','',0),(3328,1,'en','ERROR_COMPANY','Please enter company name','store','',0),(3329,1,'en','ERROR_CONDITIONS_ACCEPTED','you have to accept our generel terms to proceed with your order.','store','',0),(3330,1,'en','ERROR_CURRENT_PASSWORD_NOT_MATCHING','your password is wrong, please double check you entry.','store','',0),(3331,1,'en','ERROR_DATE_SYNTAX','please enter a valid date','store','',0),(3332,1,'en','ERROR_DEFAULT_ADDRESS','You must have at least one default address','store','',0),(3333,1,'en','ERROR_DELETE_DEFAULT_ADDRESS','this is your default address. you can deleted this address, after choosing another default address out of your addressbook.','store','',0),(3334,1,'en','ERROR_DELETE_LAST_ADDRESS','this is your last entry. you cannot delete this last entry !','store','',0),(3335,1,'en','ERROR_EMAIL_ADDRESS','please enter your email address','store','',0),(3336,1,'en','ERROR_EMAIL_ADDRESS_EXISTS','email address already exists','store','',0),(3337,1,'en','ERROR_EMAIL_ADDRESS_NOT_MATCHING','email address does not match','store','',0),(3338,1,'en','ERROR_EMAIL_ADDRESS_SYNTAX','please enter a valid email address','store','',0),(3339,1,'en','ERROR_FAX','Please enter a fax number','store','',0),(3340,1,'en','ERROR_FIRST_NAME','please enter your first name','store','',0),(3341,1,'en','ERROR_LAST_NAME','please enter your family name','store','',0),(3342,1,'en','ERROR_LOGIN','Login failed: wrong email adress or password!','store','',0),(3343,1,'en','ERROR_LOGIN_COUNT','Either your user name or password is wrong. please insert the correct datas. Maybe you have lost your password?<br /><br />  Sie haben bisher %s mal versucht, sich anzumelden. Nach dem 5. fehlerhaften Versuch ist eine Anmeldung für die nächsten %s Minuten nicht mehr möglich.','store','',0),(3344,1,'en','ERROR_LOGIN_LOCKED','the max numbers of failed logins are used. the account is blocked for %s minutes, please try it again after or contact our support.','store','',0),(3345,1,'en','ERROR_MAIL_NOT_FOUND','Error! your email address could not be found, please review your entries.','store','',0),(3346,1,'en','ERROR_MAX_ORDER_VALUE','you exceeded the max order value %s , please reduce the value of you order by %s to proceed with you order.','store','',0),(3347,1,'en','ERROR_MIN_ORDER_VALUE','you did not meet the minimum order value %s yet, you are missing  %s to proceed wiht you order.','store','',0),(3348,1,'en','ERROR_MOBILE_PHONE_NUMBER','Please enter your mobile phone number','store','',0),(3349,1,'en','ERROR_NOT_ALLOWED_TO_PURCHASE','you are not allowed to add this product to your shopping cart.','store','',0),(3350,1,'en','ERROR_NO_KEYWORDS','please ener a search term!','store','',0),(3351,1,'en','ERROR_NO_PAYMENT_SELECTED','Please choose a payment option!','store','',0),(3352,1,'en','ERROR_NO_SEARCH_RESULT','No result. Please try again.','store','',0),(3353,1,'en','ERROR_NO_SHIPPING_SELECTED','Please choose a shipping method!','store','',0),(3354,1,'en','ERROR_PASSWORD_NOT_MATCHING','your password is wrong, please double check you entry.','store','',0),(3355,1,'en','ERROR_PAYMENT','This payment method is currently not avaiable, please contact our customer support or choose other payment method','store','',0),(3356,1,'en','ERROR_POST_CODE','please enter your zip code','store','',0),(3357,1,'en','ERROR_STOCK_REDUCED_AMOUNT','this product \"<b>%s</b>\" is not on stock in the required amount, you order was reduced by <b>%s</b> pieces.','store','',0),(3358,1,'en','ERROR_STREET_ADDRESS','please enter your address','store','',0),(3359,1,'en','ERROR_TELEPHONE_NUMBER','Please enter your phone number','store','',0),(3360,1,'en','ERROR_VAT_ID','please review your VAT ID','store','',0),(3361,1,'en','ERROR_VAT_ID_SERVICE','your VAT ID could not be reviewed please try it again later, or leave the field blank.','store','',0),(3362,1,'en','HEADING_PRODUCTS_MANUFACTURERS','Manufacturer','store','',0),(3363,1,'en','HEADING_SUB_CONTENT','Further Informations','store','',0),(3364,1,'en','SORT_DATE','date ascending','store','',0),(3365,1,'en','SORT_DATE_DESC','date descending','store','',0),(3366,1,'en','SORT_NAME','name ascending','store','',0),(3367,1,'en','SORT_NAME_DESC','name descending','store','',0),(3368,1,'en','SORT_PRICE','price ascending','store','',0),(3369,1,'en','SORT_PRICE_DESC','price descending','store','',0),(3370,1,'en','SUCCESS_ACCOUNT_UPDATED','Account details successful updated.','store','',0),(3371,1,'en','SUCCESS_ADDRESS_UPDATED','Address successfully updated/added.','store','',0),(3372,1,'en','SUCCESS_DELETE_ADDRESS','The address was deleted successfully!','store','',0),(3373,1,'en','SUCCESS_EMAIL_SEND','Your price inquiry has been sent','store','',0),(3374,1,'en','SUCCESS_PRODUCT_ADDED','The product \"<b>%s</b>\" was added to your shopping basket.','store','',0),(3375,1,'en','TEXT_ACCEPT_CONDITIONS','I have read the general terms and fully agree.','store','',0),(3376,1,'en','TEXT_ACCOUNT','Your account','store','',0),(3377,1,'en','TEXT_ACCOUNT_ADRESSBOOK','Addressbook','store','',0),(3378,1,'en','TEXT_ACCOUNT_ALL_ORDERS','Show more orders','store','',0),(3379,1,'en','TEXT_ACCOUNT_DATA','Your account data','store','',0),(3380,1,'en','TEXT_ACCOUNT_DOWNLOADS','your downloads','store','',0),(3381,1,'en','TEXT_ACCOUNT_DOWNLOADS_COUNT','possible downloads','store','',0),(3382,1,'en','TEXT_ACCOUNT_DOWNLOADS_DATE','downloads enabled until','store','',0),(3383,1,'en','TEXT_ACCOUNT_DOWNLOADS_MORE','overview of your downloads','store','',0),(3384,1,'en','TEXT_ACCOUNT_EDIT','Edit your account','store','',0),(3385,1,'en','TEXT_ACCOUNT_LOGIN','Register and create new account','store','',0),(3386,1,'en','TEXT_ACCOUNT_NOTIFICATION','e-mail notification','store','',0),(3387,1,'en','TEXT_ACCOUNT_ORDERS','Your last orders','store','',0),(3388,1,'en','TEXT_ACCOUNT_PASSWORD','Change password','store','',0),(3389,1,'en','TEXT_ACCOUNT_TITLE','Your personal settings','store','',0),(3390,1,'en','TEXT_ACCOUNT_TITLE_WELCOME','Welcome','store','',0),(3391,1,'en','TEXT_ACCOUNT_WELCOME','This is your personal page, with an overview of your orders.  Creating an account you can always change you personal datas, without contacting us.','store','',0),(3392,1,'en','TEXT_ADD','add.','store','',0),(3393,1,'en','TEXT_ADDRESS','Your address','store','',0),(3394,1,'en','TEXT_ADDRESS_BOOK_INFO','This is an overview of your addressbook. You can add additional addresses for shippment and billing.','store','',0),(3395,1,'en','TEXT_ADDRESS_TYPE','Type of address','store','',0),(3396,1,'en','TEXT_ADVANCED_SEARCH','Advanced search','store','',0),(3397,1,'en','TEXT_ARTICLE','Product','store','',0),(3398,1,'en','TEXT_BANK','Your payment information','store','',0),(3399,1,'en','TEXT_BANKTRANSFER_BANK_NAME','Name of bank','store','',0),(3400,1,'en','TEXT_BANKTRANSFER_BIC','Bic / Swift','store','',0),(3401,1,'en','TEXT_BANKTRANSFER_BLZ','Bank routing number','store','',0),(3402,1,'en','TEXT_BANKTRANSFER_IBAN','Iban','store','',0),(3403,1,'en','TEXT_BANKTRANSFER_NUMBER','Account number','store','',0),(3404,1,'en','TEXT_BANKTRANSFER_OWNER','Account holder','store','',0),(3405,1,'en','TEXT_BIRTHDATE','Date of birth','store','',0),(3406,1,'en','TEXT_BIRTHDATE_INFO','(like dd.mm.yyyy)','store','',0),(3407,1,'en','TEXT_BOX_TITLE_CATEGORIES','Categories','store','',0),(3408,1,'en','TEXT_BOX_TITLE_CURRENCY','currency','store','',0),(3409,1,'en','TEXT_BOX_TITLE_LANGUAGE','Languages','store','',0),(3410,1,'en','TEXT_BOX_TITLE_LOGIN','Welcome back','store','',0),(3411,1,'en','TEXT_BOX_TITLE_MANUFACTURERS','manufacturers','store','',0),(3412,1,'en','TEXT_CART','Shopping Cart','store','',0),(3413,1,'en','TEXT_CHECKOUT','Checkout','store','',0),(3414,1,'en','TEXT_CHECKOUT_CONFIRMATION','Confirm order','store','',0),(3415,1,'en','TEXT_CHECKOUT_CONFIRMATION_DESC','Before finalizing your order please review your datas and products, Through the (edit) links with the single datas you may want to edit your entries, if needed. You can either abandon the order proccess by closing the browser window, or finalize the order by pressing the order button.','store','',0),(3416,1,'en','TEXT_CHECKOUT_SUCCESS_DESC','your order has been received and will be processed immediately. For your personal control you received an email with your order details!<br /><br /><b>Thank you , for your purchase!</b>','store','',0),(3417,1,'en','TEXT_CITY','Town','store','',0),(3418,1,'en','TEXT_CODE','Zip code','store','',0),(3419,1,'en','TEXT_COMMENTS','Comments','store','',0),(3420,1,'en','TEXT_COMMENTS_DESC','Additional informations','store','',0),(3421,1,'en','TEXT_COMPANY','Company data','store','',0),(3422,1,'en','TEXT_COMPANY_GENDER','Company','store','',0),(3423,1,'en','TEXT_COMPANY_NAME','Company name','store','',0),(3424,1,'en','TEXT_COMPANY_NAME_2','Line 2','store','',0),(3425,1,'en','TEXT_COMPANY_NAME_3','Line 3','store','',0),(3426,1,'en','TEXT_CONDITIONS','Our general terms','store','',0),(3427,1,'en','TEXT_CONFIRMATION','Confirmation','store','',0),(3428,1,'en','TEXT_CONFIRMATION_DESC','Confirm your order','store','',0),(3429,1,'en','TEXT_CONTACT','Your contact informations','store','',0),(3430,1,'en','TEXT_CONTACT_INTRO','please submit a l l important information','store','',0),(3431,1,'en','TEXT_CONTACT_PAGE','contact form','store','',0),(3432,1,'en','TEXT_CONTACT_SUBJECT','Contactrequest','store','',0),(3433,1,'en','TEXT_CONTENT','content','store','',0),(3434,1,'en','TEXT_COUNTRY','Country','store','',0),(3435,1,'en','TEXT_COUNTY','County','store','',0),(3436,1,'en','TEXT_CREATE_ACCOUNT','Informations for your account','store','',0),(3437,1,'en','TEXT_CREATE_GUEST_ACCOUNT','Please insert your datas','store','',0),(3438,1,'en','TEXT_CURRENCY','Currency','store','',0),(3439,1,'en','TEXT_CUSTOMER_ID','Customer ID','store','',0),(3440,1,'en','TEXT_DEFAULT_ADDRESS','Default address','store','',0),(3441,1,'en','TEXT_DEFAULT_CURRENCY','Default currency','store','',0),(3442,1,'en','TEXT_DEFAULT_LANGUAGE','Default language','store','',0),(3443,1,'en','TEXT_DESCRIPTION','Beschreibung','store','',0),(3444,1,'en','TEXT_DIGITALCOND_CHECK','I agree explicitly that you start before the end of the withdrawal period with the execution of the contract. I am aware that I lose by this consent my withdrawal right.','store','',0),(3445,1,'en','TEXT_DIGITALCOND_CHECK_CHECK_ERROR','Please accept that we will start with the execution of the contract before the end of the withdrawal period','store','',0),(3446,1,'en','TEXT_DISCOUNT_MADE','discount made','store','',0),(3447,1,'en','TEXT_DOWNLOADS','Downloads','store','',0),(3448,1,'en','TEXT_DOWNLOAD_NOT_ALLOWED','your download is not yet enabled.','store','',0),(3449,1,'en','TEXT_EDIT','Edit','store','',0),(3450,1,'en','TEXT_EDIT_ACCOUNT','Change account','store','',0),(3451,1,'en','TEXT_EDIT_ADDRESS','add / edit addressbook','store','',0),(3452,1,'en','TEXT_EMAIL','e-mail-address','store','',0),(3453,1,'en','TEXT_EMAIL_CONFIRM','Confirm e-mail-address','store','',0),(3454,1,'en','TEXT_EMPTY_BOX_CART','Your Cart is currently empty.','store','',0),(3455,1,'en','TEXT_EMPTY_CART','You have no articles inside your cart, yet','store','',0),(3456,1,'en','TEXT_ENTER_SEARCH_TERM','Enter search term','store','',0),(3457,1,'en','TEXT_EXCL','excl.','store','',0),(3458,1,'en','TEXT_EXCL_SHIPPING','excl. shipping costs','store','',0),(3459,1,'en','TEXT_FAX','Fax','store','',0),(3460,1,'en','TEXT_FAX_PREFIX','Country Code','store','',0),(3461,1,'en','TEXT_FEMALE','Ms','store','',0),(3462,1,'en','TEXT_FILE','file','store','',0),(3463,1,'en','TEXT_FIRST','|<<','store','',0),(3464,1,'en','TEXT_FIRSTNAME','First name','store','',0),(3465,1,'en','TEXT_GENDER','Gender','store','',0),(3466,1,'en','TEXT_GRADUATED_PRICES','Discount','store','',0),(3467,1,'en','TEXT_GRADUATED_SAVING','Saving','store','',0),(3468,1,'en','TEXT_GUEST','Order as guest','store','',0),(3469,1,'en','TEXT_HEADING_MORE_CATEGORIES','More categories','store','',0),(3470,1,'en','TEXT_HOME','Main page','store','',0),(3471,1,'en','TEXT_INCL','incl.','store','',0),(3472,1,'en','TEXT_INFO','Informations','store','',0),(3473,1,'en','TEXT_INFO_NO_SHIPPING','- No Shipping -','store','',0),(3474,1,'en','TEXT_INFO_PAY_NEXT_STEP','after confirming your order please continue to payment proccess.','store','',0),(3475,1,'en','TEXT_I_AM_A_GUEST','I want to order without registration.','store','',0),(3476,1,'en','TEXT_I_WANT_TO_REGISTER','I want to create an account.','store','',0),(3477,1,'en','TEXT_LANGUAGE','Languages','store','',0),(3478,1,'en','TEXT_LAST','>>|','store','',0),(3479,1,'en','TEXT_LASTNAME','Family name','store','',0),(3480,1,'en','TEXT_LINK_LOSTPASSWORD','lost password?','store','',0),(3481,1,'en','TEXT_LOGIN','Login','store','',0),(3482,1,'en','TEXT_LOGIN_CART_MERGED','Your Cart contents from your last session were restored. Please check the items.','store','',0),(3483,1,'en','TEXT_LOGOFF','Logoff','store','',0),(3484,1,'en','TEXT_LOOK_FOR_ALL','Search in all','store','',0),(3485,1,'en','TEXT_MALE','Mr','store','',0),(3486,1,'en','TEXT_MAX_CHARACTERS','(max. 255 Characters)','store','',0),(3487,1,'en','TEXT_MESSAGE','your message','store','',0),(3488,1,'en','TEXT_MOBILE_DESKTOP_SWITCH_LINK','Switch to desktop-version','store','',0),(3489,1,'en','TEXT_MOBILE_PHONE_PREFIX','Mobile prefix','store','',0),(3490,1,'en','TEXT_MOBILE_SWITCH_LINK','Switch to mobile-version','store','',0),(3491,1,'en','TEXT_MORE','more','store','',0),(3492,1,'en','TEXT_MORE_DETAILS','more details','store','',0),(3493,1,'en','TEXT_MUST','* mandatory informations','store','',0),(3494,1,'en','TEXT_NEW_CUSTOMER','I am a new customer','store','',0),(3495,1,'en','TEXT_NEW_PAYMENT_ADDRESS','or add another one.','store','',0),(3496,1,'en','TEXT_NEW_SHIPPING_ADDRESS','or add another one.','store','',0),(3497,1,'en','TEXT_NEXT','>','store','',0),(3498,1,'en','TEXT_NONE','- no selection -','store','',0),(3499,1,'en','TEXT_NO_REMARK','No remark','store','',0),(3500,1,'en','TEXT_ON','on','store','',0),(3501,1,'en','TEXT_ORDER_COMMENTS','Comments','store','',0),(3502,1,'en','TEXT_ORDER_CONFIRMATION_BUTTON_LAW','Additionally incurred costs or taxes that are not paid by us or by us will be charged.','store','',0),(3503,1,'en','TEXT_ORDER_DATE','Order date','store','',0),(3504,1,'en','TEXT_ORDER_NUMBER','Order number','store','',0),(3505,1,'en','TEXT_ORDER_STATUS','Order status','store','',0),(3506,1,'en','TEXT_ORDER_STATUS_HISTORY','Order history','store','',0),(3507,1,'en','TEXT_PAGES','Pages','store','',0),(3508,1,'en','TEXT_PAGE_NOT_FOUND','Page not found','store','',0),(3509,1,'en','TEXT_PAGE_NOT_FOUND_INTRO','Sorry, your requested page was not found','store','',0),(3510,1,'en','TEXT_PAGE_TITLE_ACCOUNT','your personal page','store','',0),(3511,1,'en','TEXT_PAGE_TITLE_ACCOUNT_DOWNLOADS','Your downloads','store','',0),(3512,1,'en','TEXT_PAGE_TITLE_ACCOUNT_HISTORY','Your previous orders','store','',0),(3513,1,'en','TEXT_PAGE_TITLE_ACCOUNT_HISTORY_INFO','Order information','store','',0),(3514,1,'en','TEXT_PAGE_TITLE_ADDRESS_BOOK','Your personal addressbook','store','',0),(3515,1,'en','TEXT_PAGE_TITLE_CHECKOUT_SUCCESS','You order was successfully executed','store','',0),(3516,1,'en','TEXT_PAGE_TITLE_LOGIN','please login','store','',0),(3517,1,'en','TEXT_PAGE_TITLE_MANUFACTURERS','Product from <b>%s</b>','store','',0),(3518,1,'en','TEXT_PAGE_TITLE_PAY','execute payment','store','',0),(3519,1,'en','TEXT_PAGINATION_FROM','of','store','',0),(3520,1,'en','TEXT_PAGINATION_IN','in category','store','',0),(3521,1,'en','TEXT_PAGINATION_TITLE','Page','store','',0),(3522,1,'en','TEXT_PASSWORD','password','store','',0),(3523,1,'en','TEXT_PASSWORD_CURRENT','Your current password','store','',0),(3524,1,'en','TEXT_PASSWORD_ENTRY','Your new password','store','',0),(3525,1,'en','TEXT_PASSWORD_ENTRY_CONFIRM','confirm password','store','',0),(3526,1,'en','TEXT_PASSWORD_ERROR','Password to short','store','',0),(3527,1,'en','TEXT_PASSWORD_INFO','please leave empty, if you do not want to change!','store','',0),(3528,1,'en','TEXT_PASSWORD_RESET','please insert the email address, which was used to setup your account.<br /> to confirm, please insert the shown captcha.<br /><br /> click on  &quot;next&quot; and we will send an confirmation link by mail!','store','',0),(3529,1,'en','TEXT_PASSWORD_RESET_PAGE','reset passwort','store','',0),(3530,1,'en','TEXT_PASSWORD_RESET_WITHOUT_CAPTCHA','please insert the email address, which was used to setup your account.<br /><br /> click on  &quot;next&quot; and we will send an confirmation link by mail!','store','',0),(3531,1,'en','TEXT_PAYMENT','Choose payment method','store','',0),(3532,1,'en','TEXT_PAYMENTS_FE','Paymentmethods','store','',0),(3533,1,'en','TEXT_PAYMENT_ADDRESS','Billing Address','store','',0),(3534,1,'en','TEXT_PAYMENT_AMX','American Express','store','',0),(3535,1,'en','TEXT_PAYMENT_CC','creditcard','store','',0),(3536,1,'en','TEXT_PAYMENT_DID','automatic deduction','store','',0),(3537,1,'en','TEXT_PAYMENT_DIN','Diners','store','',0),(3538,1,'en','TEXT_PAYMENT_GCB','Carte Bleue','store','',0),(3539,1,'en','TEXT_PAYMENT_GIR','Giropay','store','',0),(3540,1,'en','TEXT_PAYMENT_HND','mobilphone','store','',0),(3541,1,'en','TEXT_PAYMENT_IDL','iDeal','store','',0),(3542,1,'en','TEXT_PAYMENT_INFO','Paymentinformationen','store','',0),(3543,1,'en','TEXT_PAYMENT_INFOS','Payment Information','store','',0),(3544,1,'en','TEXT_PAYMENT_JCB','JCB','store','',0),(3545,1,'en','TEXT_PAYMENT_LSR','Laser','store','',0),(3546,1,'en','TEXT_PAYMENT_MAE','Maestro','store','',0),(3547,1,'en','TEXT_PAYMENT_METHOD','Payment Method','store','',0),(3548,1,'en','TEXT_PAYMENT_MSC','MasterCard','store','',0),(3549,1,'en','TEXT_PAYMENT_NPY','eps Onlinetransfer','store','',0),(3550,1,'en','TEXT_PAYMENT_OBT','Online bank transfer','store','',0),(3551,1,'en','TEXT_PAYMENT_PBX','paybox','store','',0),(3552,1,'en','TEXT_PAYMENT_PSC','paysafecard','store','',0),(3553,1,'en','TEXT_PAYMENT_QUI','@Quick','store','',0),(3554,1,'en','TEXT_PAYMENT_SFT','Sofortüberweisung','store','',0),(3555,1,'en','TEXT_PAYMENT_SLO','Solo','store','',0),(3556,1,'en','TEXT_PAYMENT_VSA','Visa','store','',0),(3557,1,'en','TEXT_PAYMENT_VSD','Visa Delta/Debit','store','',0),(3558,1,'en','TEXT_PAYMENT_VSE','Visa Electron','store','',0),(3559,1,'en','TEXT_PAY_FORMULAR','please klick the following button to continue payment proccess, you will be forwarded to our payment provider','store','',0),(3560,1,'en','TEXT_PERSONAL','Your personal datas','store','',0),(3561,1,'en','TEXT_PHONE_PREFIX','Country Code','store','',0),(3562,1,'en','TEXT_PLEASE_SELECT','- select -','store','',0),(3563,1,'en','TEXT_POPUP_CLOSE','close','store','',0),(3564,1,'en','TEXT_POPUP_PRINT','print','store','',0),(3565,1,'en','TEXT_POSSIBLE_ENTRIES','possible entries','store','',0),(3566,1,'en','TEXT_PREV','<','store','',0),(3567,1,'en','TEXT_PRIVACY_ACCEPT','Accept privacy','store','',0),(3568,1,'en','TEXT_PRODUCTS_DESCRIPTION','product description','store','',0),(3569,1,'en','TEXT_PRODUCTS_FSK18_NOTE','Shipping of this product only be available after age verification through PostIdent.','store','',0),(3570,1,'en','TEXT_PRODUCTS_MODEL','Product.Nr.','store','',0),(3571,1,'en','TEXT_PRODUCTS_WEIGHT','weight','store','',0),(3572,1,'en','TEXT_PRODUCT_AVAILABLE','Available on date','store','',0),(3573,1,'en','TEXT_PRODUCT_OPTIONS','Product variations','store','',0),(3574,1,'en','TEXT_PUBLIC_DOWNLOAD_REQUIRE_LOGIN','Please register to download this product','store','',0),(3575,1,'en','TEXT_QTY','Quantity','store','',0),(3576,1,'en','TEXT_RANGE_FROM','from','store','',0),(3577,1,'en','TEXT_RANGE_STAFFEL','Calculation','store','',0),(3578,1,'en','TEXT_RANGE_TO','to','store','',0),(3579,1,'en','TEXT_REMOVE','Remove','store','',0),(3580,1,'en','TEXT_RESCISSION_CONFIRMATION_1','I have read the informations about my right of','store','',0),(3581,1,'en','TEXT_RESCISSION_CONFIRMATION_2','rescission','store','',0),(3582,1,'en','TEXT_RESCISSION_CONFIRMATION_3','.','store','',0),(3583,1,'en','TEXT_RETURNING','I am an existing customer','store','',0),(3584,1,'en','TEXT_RRP','RRP','store','',0),(3585,1,'en','TEXT_SEARCH','Search','store','',0),(3586,1,'en','TEXT_SEARCH_CATEGORIES','search selected categories','store','',0),(3587,1,'en','TEXT_SEARCH_DESC','Search product description','store','',0),(3588,1,'en','TEXT_SEARCH_KEYWORDS','Search keywords','store','',0),(3589,1,'en','TEXT_SEARCH_MNF','search only manufacturers','store','',0),(3590,1,'en','TEXT_SEARCH_SDESC','search product short description','store','',0),(3591,1,'en','TEXT_SEARCH_SUBCATEGORIES','include subcategories in search','store','',0),(3592,1,'en','TEXT_SELECT','Please choose','store','',0),(3593,1,'en','TEXT_SELECT_CURRENCY','Please choose your currency','store','',0),(3594,1,'en','TEXT_SELECT_LANGUAGE','choose language','store','',0),(3595,1,'en','TEXT_SELECT_MANUFACTURERS','Select manufacturer','store','',0),(3596,1,'en','TEXT_SELECT_PAYMENT','Choose payment method','store','',0),(3597,1,'en','TEXT_SELECT_PAYMENT_ADDRESS','Choose a billing address from your addressbook','store','',0),(3598,1,'en','TEXT_SELECT_PAYMENT_DESC','Please choose your payment method.','store','',0),(3599,1,'en','TEXT_SELECT_SHIPPING','Choose shippingmethod','store','',0),(3600,1,'en','TEXT_SELECT_SHIPPING_ADDRESS','Choose a shipping address from your addressbook','store','',0),(3601,1,'en','TEXT_SELECT_SHIPPING_DESC','Please choose your shipping method','store','',0),(3602,1,'en','TEXT_SHIPPING_ADDRESS','Shipping Address','store','',0),(3603,1,'en','TEXT_SHIPPING_BASE_PER','pro','store','',0),(3604,1,'en','TEXT_SHIPPING_COSTS','shipping costs','store','',0),(3605,1,'en','TEXT_SHIPPING_COST_PREVIEW','Shipping cost calculation','store','',0),(3606,1,'en','TEXT_SHIPPING_COST_PREVIEW_COUNTRY','Delivery country','store','',0),(3607,1,'en','TEXT_SHIPPING_COST_PREVIEW_SHIPPING','Shipping','store','',0),(3608,1,'en','TEXT_SHIPPING_COST_PREVIEW_SHIPPINGPRICE','Shipping cost','store','',0),(3609,1,'en','TEXT_SHIPPING_COST_SELECT_COUNTRY','Select country','store','',0),(3610,1,'en','TEXT_SHIPPING_COST_SELECT_SHIPPING','Select shipping','store','',0),(3611,1,'en','TEXT_SHIPPING_INTRO','to show shipping costs, please choose the country you want the order to be shipped.','store','',0),(3612,1,'en','TEXT_SHIPPING_METHOD','Shipping Method','store','',0),(3613,1,'en','TEXT_SHIPPING_STATUS','delivery time','store','',0),(3614,1,'en','TEXT_SHIPPING_TIME','Delivery time','store','',0),(3615,1,'en','TEXT_SINGLE_PRICE','Single price','store','',0),(3616,1,'en','TEXT_SIZE','file size','store','',0),(3617,1,'en','TEXT_SORT_BY','Sort by','store','',0),(3618,1,'en','TEXT_SPECIAL_INSTEAD','instead','store','',0),(3619,1,'en','TEXT_SPECIAL_ONLY','only','store','',0),(3620,1,'en','TEXT_SPECIAL_SAVE','you save','store','',0),(3621,1,'en','TEXT_STATE','State','store','',0),(3622,1,'en','TEXT_STREET','Street','store','',0),(3623,1,'en','TEXT_SUBURB','Suburb','store','',0),(3624,1,'en','TEXT_SUB_TOTAL','Subtotal','store','',0),(3625,1,'en','TEXT_SUCCESS','Success','store','',0),(3626,1,'en','TEXT_SUCCESS_DESC','Order successfully executed','store','',0),(3627,1,'en','TEXT_TAX','VAT.','store','',0),(3628,1,'en','TEXT_TERMSANDCOND_CONFIRMATION','Our general terms & conditions apply to this order','store','',0),(3629,1,'en','TEXT_TERMSANDCOND_CONFIRMATION_1','I have read the','store','',0),(3630,1,'en','TEXT_TERMSANDCOND_CONFIRMATION_2','general terms','store','',0),(3631,1,'en','TEXT_TERMSANDCOND_CONFIRMATION_3','and fully agree.','store','',0),(3632,1,'en','TEXT_TEXT_LOGOFF','You are logged off!','store','',0),(3633,1,'en','TEXT_TOTAL','Total','store','',0),(3634,1,'en','TEXT_TOTAL_PRICE','Total price','store','',0),(3635,1,'en','TEXT_TXT_GUEST','While ordering as a guest, your datas will not be stored and you will not have your own account. With a new order, you have to insert all datas again.','store','',0),(3636,1,'en','TEXT_TXT_NEW_CUSTOMER','By registering with us, you may proceed with your order faster , get the status of your order at any time and get an overview on all previous order.','store','',0),(3637,1,'en','TEXT_TXT_NEW_CUSTOMER_GUEST','If you want to order as a guest , please leave the password fields empty.','store','',0),(3638,1,'en','TEXT_TXT_RETURNING','Did you order with us before? Thanks you, for trusting us again. On the next page you have the option to change your shipping address, or add a new shipping address and select your payment method.','store','',0),(3639,1,'en','TEXT_TYPE_ITEM','item','store','',0),(3640,1,'en','TEXT_TYPE_PER_ITEM','per item','store','',0),(3641,1,'en','TEXT_VAT','VAT','store','',0),(3642,1,'en','TEXT_VAT_ID','VAT-Id','store','',0),(3643,1,'en','TEXT_VAT_INFO','Only for countries out of the EU!','store','',0),(3644,1,'en','TEXT_XT_REVIEW_FORM_ERROR','Please complete all fields before submitting your review.','store','',0),(3645,1,'en','TEXT_YOU_ARE_HERE','You are here:','store','',0),(3646,1,'en','WARNING_EMTPY_CART','You do not have any products in your shopping cart','store','',0),(3647,1,'en','WARNING_INSTALL','<b>WARNING:</b> Please make sure that the folders xtInstaller, xtUpdater and xtWizard are deleted from your Webserver.','store','',0),(3648,1,'en','WARNING_NO_PRICE_ALLOWED','prices for you customer group are not shown.','store','',0),(3649,1,'en','WARNING_NO_SHIPPING_FOR_ZONE','No shipping for your shipping zone.','store','',0),(3650,1,'en','HOSTING_ALTERNATIVE','Recommended webhostings','wizard','',0),(3651,1,'en','HOSTING_BIG','Big','wizard','',0),(3652,1,'en','HOSTING_PER_MONTH','<br />per month*','wizard','',0),(3653,1,'en','HOSTING_PRICING_INFO','*Feb. 2014: Please check prices at Hosting Providers website','wizard','',0),(3654,1,'en','HOSTING_SMALL','Small','wizard','',0),(3655,1,'en','HOSTING_SMALL_MED','Small / Medium','wizard','',0),(3656,1,'en','TEXT_ACTIVITING_COUNTRIES','Activating countries...','wizard','',0),(3657,1,'en','TEXT_ACTIVITING_LANGUAGE','Activating language...','wizard','',0),(3658,1,'en','TEXT_ALREADY_APPLIED','This update is already applied.','wizard','',0),(3659,1,'en','TEXT_APPLY_CAN_NOT_BE_APPLIED','You must apply previous updates first.','wizard','',0),(3660,1,'en','TEXT_APPLY_UPDATE','You can apply this update.','wizard','',0),(3661,1,'en','TEXT_AVAILABLE_UPDATES','Available Updates','wizard','',0),(3662,1,'en','TEXT_BACKINGUP_PLUGIN','Backingup plugin','wizard','',0),(3663,1,'en','TEXT_BUTTON_CLOSE','Close','wizard','',0),(3664,1,'en','TEXT_BUTTON_FORCE_NEXT','Proceed anyways','wizard','',0),(3665,1,'en','TEXT_BUTTON_GO','Let\'s go!','wizard','',0),(3666,1,'en','TEXT_BUTTON_NEXT','Next','wizard','',0),(3667,1,'en','TEXT_BUTTON_REGISTER','Sign up','wizard','',0),(3668,1,'en','TEXT_BUTTON_RELOAD','Reload page','wizard','',0),(3669,1,'en','TEXT_BUTTON_SAVE','Save','wizard','',0),(3670,1,'en','TEXT_CREATE_DBBACKUP','Creating database backup','wizard','',0),(3671,1,'en','TEXT_DATABASE_UPDATE_BACKUP','Create database backup?','wizard','',0),(3672,1,'en','TEXT_DOWNLOADING_LATEST_TRANSLATIONS','Downloading latest translations','wizard','',0),(3673,1,'en','TEXT_EXECUTING_DB_UPDATE_SCRIPT','Executing SQL scripts','wizard','',0),(3674,1,'en','TEXT_EXECUTING_QUERY','Executing query:','wizard','',0),(3675,1,'en','TEXT_FAILED_INSERT_LANG_CONTENT','Failed to install language content','wizard','',0),(3676,1,'en','TEXT_FAILED_INSERT_LANG_CONTENT_MENU','Failed to install category tree language content','wizard','',0),(3677,1,'en','TEXT_FAILED_PL_BACKUP','Failed to backup plugin','wizard','',0),(3678,1,'en','TEXT_FAILED_REBIULD_CATETGORIES','Failed to rebuild categories','wizard','',0),(3679,1,'en','TEXT_FAILED_STORE_DATA','Failed to update data for Store ID','wizard','',0),(3680,1,'en','TEXT_FINISHED','Finished. Click \"next\" to proceed with the installation.','wizard','',0),(3681,1,'en','TEXT_FINISHED_UPDATE','Finished. Click \"next\" to proceed with the update.','wizard','',0),(3682,1,'en','TEXT_HIDE_LOG','Hide log','wizard','',0),(3683,1,'en','TEXT_IMPORTING_TRANSLATIONS','Importing translations...','wizard','',0),(3684,1,'en','TEXT_IMPORT_COUNTRIES','Import countries...','wizard','',0),(3685,1,'en','TEXT_IMPORT_STOPWORDS','Import stopwords...','wizard','',0),(3686,1,'en','TEXT_INSERTING_DEMO_DATA','Inserting demo data...','wizard','',0),(3687,1,'en','TEXT_INSERTING_LANG_CONTENT','Installing language content','wizard','',0),(3688,1,'en','TEXT_INSERTING_LANG_CONTENT_MENU','Inserting category tree language content','wizard','',0),(3689,1,'en','TEXT_INSTALL','Install','wizard','',0),(3690,1,'en','TEXT_INSTALLING_DEFAULT_CONTENT','Installing default content','wizard','',0),(3691,1,'en','TEXT_INSTALLING_LANGUAGE_CONTENT','Installing language content','wizard','',0),(3692,1,'en','TEXT_INSTALLING_PLUGINS','Installing plugins...','wizard','',0),(3693,1,'en','TEXT_INSTALLING_SYSTEM_CONTENT','Installing system content','wizard','',0),(3694,1,'en','TEXT_INSTALL_MAIL_TEMPLATES','Install mail templates...','wizard','',0),(3695,1,'en','TEXT_NO_DOWNLOAD_IN_LANG','No download in this language. Please selecte diffrent language','wizard','',0),(3696,1,'en','TEXT_OVERWRITE_FILES_MSG','Please overwrite all core files but conf/config.php.<br><br> When you are ready please proceed with the update!','wizard','',0),(3697,1,'en','TEXT_OVERWRITE_FILES_TITLE','Overwrite core files','wizard','',0),(3698,1,'en','TEXT_PLUGIN_HAS_HIGHER_VERSION','Current installed plugin version is higher than the newly copied one. Please revert the files.','wizard','',0),(3699,1,'en','TEXT_PLUGIN_MINIMUM_UPDATE_VERSION','Currently installed plugin version doesn\'t meet the minimum required version requirement','wizard','',0),(3700,1,'en','TEXT_PLUGIN_NO_FILES_FOUND','Files are not found for plugin','wizard','',0),(3701,1,'en','TEXT_PLUGIN_UPDATED','Plugin updated successfully','wizard','',0),(3702,1,'en','TEXT_PLUGIN_UP_TO_DATE','Plugin is up to date','wizard','',0),(3703,1,'en','TEXT_PROCESSING','Processing ...','wizard','',0),(3704,1,'en','TEXT_QUERY_FAILED','Failed to execute:','wizard','',0),(3705,1,'en','TEXT_QUERY_SKIPPED','Query not executed:','wizard','',0),(3706,1,'en','TEXT_READING_XML_FILE','Reading XML file...','wizard','',0),(3707,1,'en','TEXT_REBUILDING_CATEGORIES','Rebuilding categories','wizard','',0),(3708,1,'en','TEXT_SAVING_CURRENCY','Saving currency...','wizard','',0),(3709,1,'en','TEXT_SAVING_LANGUAGE','Saving language...','wizard','',0),(3710,1,'en','TEXT_SETTING_UP_TAXES','Setting up taxes...','wizard','',0),(3711,1,'en','TEXT_SHOW_LOG','Show log','wizard','',0),(3712,1,'en','TEXT_SKIP','Skip / Next','wizard','',0),(3713,1,'en','TEXT_SUCCESS_REBIULD_CATETGORIES','Rebuild categories successfully','wizard','',0),(3714,1,'en','TEXT_UPDATE','Update','wizard','',0),(3715,1,'en','TEXT_UPDATING','Updating ...','wizard','',0),(3716,1,'en','TEXT_UPDATING_COUNTRY_PHONE_PREFIX','Updating countries phone prefix','wizard','',0),(3717,1,'en','TEXT_UPDATING_DATA_STORE','Updating data for Store ID','wizard','',0),(3718,1,'en','TEXT_UPDATING_DATA_STORE_EXECUTED','Executed rows for store','wizard','',0),(3719,1,'en','TEXT_UPDATING_PLUGIN','Updating plugin','wizard','',0),(3720,1,'en','TEXT_UPDATING_TAX_RATES','Updating tax rates','wizard','',0),(3721,1,'en','TEXT_WAIT_BACKUP','After you click next, please do not refresh the page until you see a message','wizard','',0),(3722,1,'en','XTC_HOSTINGS_HEADER','We recommend:','wizard','',0),(3723,1,'en','XTC_TH_HOSTER','Hoster','wizard','',0),(3724,1,'en','XTC_TH_PACK','Web Hosting','wizard','',0),(3725,1,'en','XTC_TH_PRICE','Price','wizard','',0),(3726,1,'en','XTC_TH_RATING','Rating','wizard','',0),(3727,1,'en','XTC_TH_SSIZE','Shop size','wizard','',0),(3728,1,'en','_ERROR_API_PASSWORD','Bitte geben Sie Ihr API-Passwort an!','wizard','',0),(3729,1,'en','_ERROR_API_SIGNATURE','Bitte geben Sie Ihre API-Signatur an!','wizard','',0),(3730,1,'en','_ERROR_API_USER','Bitte geben Sie Ihren API-Benutzer an!','wizard','',0),(3731,1,'en','_ERROR_BILLPAY_MERCHANT_ID','Bitte geben Sie Ihre Verkäufer ID an!','wizard','',0),(3732,1,'en','_ERROR_BILLPAY_MERCHANT_PASSWORD','Bitte geben Sie Ihren Billpay Lizenzschlüssel an!','wizard','',0),(3733,1,'en','_ERROR_CEO','CEO not valid!','wizard','',0),(3734,1,'en','_ERROR_CITY','City not valid!','wizard','',0),(3735,1,'en','_ERROR_COMPANY','Shopcompany not valid!','wizard','',0),(3736,1,'en','_ERROR_DATABASE','Please enter the database name!','wizard','',0),(3737,1,'en','_ERROR_DEFAULT_LANGUAGE_NOT_SELECTED','Selected default language is not in your selection of languages','wizard','',0),(3738,1,'en','_ERROR_EKOMI_AGB','Please accept the terms and conditions or proceed without eKomi','wizard','',0),(3739,1,'en','_ERROR_EKOMI_EMAIL','E-Mail is not valid','wizard','',0),(3740,1,'en','_ERROR_EMAIL','Please enter an E-Mail address!','wizard','',0),(3741,1,'en','_ERROR_EMAIL_FROM','Email Address(sender) not valid!','wizard','',0),(3742,1,'en','_ERROR_EMAIL_MATCH','E-Mail addresses are not matching!','wizard','',0),(3743,1,'en','_ERROR_EMAIL_TO','Email Address(recipient) not valid!','wizard','',0),(3744,1,'en','_ERROR_LICENSE','Please accept the license terms and condition.','wizard','',0),(3745,1,'en','_ERROR_NEED_MYSQL5','xt:Commerce 4.2 benötigt eine MYSQL 5 Datenbank, Sie haben versucht xt:Commerce 4.2 in eine MYSQL 3 oder MYSQL 4 Datenbank zu installieren','wizard','',0),(3746,1,'en','_ERROR_NO_LANGUAGE_SELECTED','Please select at least one language','wizard','',0),(3747,1,'en','_ERROR_PASSWORD','Please enter the database password!','wizard','',0),(3748,1,'en','_ERROR_SERVER','Please enter a database server!','wizard','',0),(3749,1,'en','_ERROR_START_ERROR','<p><strong>System Requirements not met</strong></p><p>One or more Server requirements of xt: Commerce 4.2 were not met. Please contact your webhosting provider and ask them to adjust the settings to the requirements.</p><p>Alternatively, you can also find <a href=\"#\" data-toggle=\"modal\" data-target=\"#hostingmodal\">here</a> our recommendations for the shop hosting.</p>','wizard','',0),(3750,1,'en','_ERROR_START_SUCCESS','<p><strong>System requirements are met!</strong></p><p>Click \"Next\" to continue with the configuration.</p>','wizard','',0),(3751,1,'en','_ERROR_STORE_NAME','Store title not valid!','wizard','',0),(3752,1,'en','_ERROR_STREET_ADDRESS','Streetaddress not valid!','wizard','',0),(3753,1,'en','_ERROR_USER','Please enter a database user!','wizard','',0),(3754,1,'en','_ERROR_ZIP','ZIP Code not valid!','wizard','',0),(3755,1,'en','_MAX_EXECUTION_TIME','php-configuration \"max_execution_time\"','wizard','',0),(3756,1,'en','_SYSTEM_CHECK_IMAGE_FTBBOX','PHP function imageftbbox (PHP Freetype support)','wizard','',0),(3757,1,'en','_SYSTEM_CHECK_MAGIC_QUOTES','Magic quotes On (magic_quotes_gpc)','wizard','',0),(3758,1,'en','_SYSTEM_CHECK_MOD_REWRITE','Apache - mod_rewrite (SEO URL!)','wizard','',0),(3759,1,'en','_SYSTEM_CHECK_OPENSSL','openssl Library','wizard','',0),(3760,1,'en','_SYSTEM_CHECK_SOAP','PHP SOAP Library (for BillSafe Plugin)','wizard','',0),(3761,1,'en','_SYSTEM_CURL','PHP - cURL','wizard','',0),(3762,1,'en','_SYSTEM_FILE_UPLOAD','File uploads','wizard','',0),(3763,1,'en','_SYSTEM_GDLIB','PHP - GDlib v2','wizard','',0),(3764,1,'en','_SYSTEM_GDLIB_GIF','PHP - GDlib GIF Support','wizard','',0),(3765,1,'en','_SYSTEM_MEMORY_LIMIT','Memory Limit (minimum 64MB)','wizard','',0),(3766,1,'en','_SYSTEM_PHP_VERSION','PHP-Version >= 5.3.0','wizard','',0),(3767,1,'en','_SYSTEM_REG_GLOBALS','Register Globals off','wizard','',0),(3768,1,'en','_SYSTEM_SAFE_MODE','Safe Mode off','wizard','',0),(3769,1,'en','_SYSTEM_SESSION_AUTOSTART','Session Auto Start off','wizard','',0),(3770,1,'en','_SYSTEM_ZLIB','PHP - Zlib','wizard','',0),(3771,1,'en','_TEXT_DATABASE_ADMIN_EMAIL','Administrator E-Mail','wizard','',0),(3772,1,'en','_TEXT_DATABASE_COUNTRY','Country','wizard','',0),(3773,1,'en','_TEXT_DATABASE_DB_NAME','Database','wizard','',0),(3774,1,'en','_TEXT_DATABASE_DEMO','Demodata','wizard','',0),(3775,1,'en','_TEXT_DATABASE_EMAIL_FROM','Sender email address','wizard','',0),(3776,1,'en','_TEXT_DATABASE_EMAIL_FROM_INFO','sender of systemmails, e.g. service@your-shop.com)','wizard','',0),(3777,1,'en','_TEXT_DATABASE_EMAIL_TO','Recipient email address','wizard','',0),(3778,1,'en','_TEXT_DATABASE_EMAIL_TO_INFO','email recipient order-mails, e.g. orders@your-shop.com','wizard','',0),(3779,1,'en','_TEXT_DATABASE_HEADER','Database','wizard','',0),(3780,1,'en','_TEXT_DATABASE_HEADER_PRE','Administrator & Languages','wizard','',0),(3781,1,'en','_TEXT_DATABASE_HOST','Database server','wizard','',0),(3782,1,'en','_TEXT_DATABASE_IMPORT_LANG','Languages','wizard','',0),(3783,1,'en','_TEXT_DATABASE_INFO1','If you dont know this parameters, ask your hosting provider.','wizard','',0),(3784,1,'en','_TEXT_DATABASE_INFO2','The installation requires an empty database, the script will change the charset of this database to utf-8!','wizard','',0),(3785,1,'en','_TEXT_DATABASE_INFO3','The installer will install some demoproducts.','wizard','',0),(3786,1,'en','_TEXT_DATABASE_LANG_BP','Português brasileiro','wizard','',0),(3787,1,'en','_TEXT_DATABASE_LANG_DE','German','wizard','',0),(3788,1,'en','_TEXT_DATABASE_LANG_DEFAULT','Default language','wizard','',0),(3789,1,'en','_TEXT_DATABASE_LANG_EN','Englisch','wizard','',0),(3790,1,'en','_TEXT_DATABASE_LANG_TR','Turkish','wizard','',0),(3791,1,'en','_TEXT_DATABASE_PASS','Password','wizard','',0),(3792,1,'en','_TEXT_DATABASE_PREFIX','Prefix','wizard','',0),(3793,1,'en','_TEXT_DATABASE_REPEAT_EMAIL','Repeat E-Mail','wizard','',0),(3794,1,'en','_TEXT_DATABASE_RULES','- Database server (usually \\\'localhost\\\')<br />- Username/Password<br />- Name of your database<br />','wizard','',0),(3795,1,'en','_TEXT_DATABASE_TITLE','For the database connection (mysql) you need following Informations','wizard','',0),(3796,1,'en','_TEXT_DATABASE_TITLE_PRE','Please select you languages and country of incorporation for automated tax-setup.','wizard','',0),(3797,1,'en','_TEXT_DATABASE_USER','Username','wizard','',0),(3798,1,'en','_TEXT_DATABASE_WARNING','Attention!','wizard','',0),(3799,1,'en','_TEXT_EKOMI_AGB_CHECK','I accept the terms and conditions of eKomi Ltd and aktivate the free eKomi Collect-Service.','wizard','',0),(3800,1,'en','_TEXT_EKOMI_EMAIL','E-Mail Adresse','wizard','',0),(3801,1,'en','_TEXT_FINISH_ADMIN_LINK','Link to adminarea','wizard','',0),(3802,1,'en','_TEXT_FINISH_ADMIN_NAME','admin','wizard','',0),(3803,1,'en','_TEXT_FINISH_HEADER','Installation successfull!','wizard','',0),(3804,1,'en','_TEXT_FINISH_INFO1','The Installer created an administrator account with following details.<br/> Please write down username and password and keep it secure.','wizard','',0),(3805,1,'en','_TEXT_FINISH_PASS','Password','wizard','',0),(3806,1,'en','_TEXT_FINISH_SHOPLINK','Link to frontend','wizard','',0),(3807,1,'en','_TEXT_FINISH_SUCCESS','xt:Commerce 4.2 installation was successfull!','wizard','',0),(3808,1,'en','_TEXT_FINISH_USERNAME','Username','wizard','',0),(3809,1,'en','_TEXT_LANGUAGE_DESC','Languages are currently being installed, please do not stop the process.','wizard','',0),(3810,1,'en','_TEXT_LANGUAGE_INFO1','Language','wizard','',0),(3811,1,'en','_TEXT_LANGUAGE_INFO2','successfull installed.','wizard','',0),(3812,1,'en','_TEXT_LANGUAGE_TITLE','Installing languages','wizard','',0),(3813,1,'en','_TEXT_LICENSE','License / EULA','wizard','',0),(3814,1,'en','_TEXT_LICENSE_CHECK','I accept the license terms and condition.','wizard','',0),(3815,1,'en','_TEXT_PLUGIN_DESC','Plugins are currently being installed, please do not stop the process.','wizard','',0),(3816,1,'en','_TEXT_PLUGIN_FROM','from','wizard','',0),(3817,1,'en','_TEXT_PLUGIN_HERE','hier','wizard','',0),(3818,1,'en','_TEXT_PLUGIN_INFO1','Plugin','wizard','',0),(3819,1,'en','_TEXT_PLUGIN_INFO2','successfull installed','wizard','',0),(3820,1,'en','_TEXT_PLUGIN_INFO3','','wizard','',0),(3821,1,'en','_TEXT_PLUGIN_TITLE','Installing Plugins','wizard','',0),(3822,1,'en','_TEXT_SELECT_LANGUAGE','Language:','wizard','',0),(3823,1,'en','_TEXT_SHOPOWNER_CEO','CEO','wizard','',0),(3824,1,'en','_TEXT_SHOPOWNER_CITY','City','wizard','',0),(3825,1,'en','_TEXT_SHOPOWNER_COMPANY','Company','wizard','',0),(3826,1,'en','_TEXT_SHOPOWNER_FAX','Fax','wizard','',0),(3827,1,'en','_TEXT_SHOPOWNER_HEADER','Shopcompany','wizard','',0),(3828,1,'en','_TEXT_SHOPOWNER_STREETADDRESS','Streetaddress','wizard','',0),(3829,1,'en','_TEXT_SHOPOWNER_TELEPHONE','Phone','wizard','',0),(3830,1,'en','_TEXT_SHOPOWNER_VAT_ID','VAT ID','wizard','',0),(3831,1,'en','_TEXT_SHOPOWNER_ZIP','ZIP Code','wizard','',0),(3832,1,'en','_TEXT_SHOP_NAME','Store title','wizard','',0),(3833,1,'en','_TEXT_START_CHECK','Systemcheck','wizard','',0),(3834,1,'en','_TEXT_START_COLUMN1','Requirement','wizard','',0),(3835,1,'en','_TEXT_START_COLUMN2','Version/Value','wizard','',0),(3836,1,'en','_TEXT_START_COLUMN3','Status','wizard','',0),(3837,1,'en','_TEXT_START_INTRO','This wizard will guide you through the installation of xt:Commerce 4.2<br />On following pages the installer will create your database and admin access.<br /><br />If you have any questions, check out our forums at <a href=\"http://www.xt-commerce.com/forum/english-xt-commerce-4-0-general-questions/\" target=\"_blank\"><b>www.xt-commerce.com/forum</b></a> or our customer Support at <a href=\"mailto:helpdesk@xt-commerce.com\">helpdesk@xt-commerce.com</a><br />','wizard','',0),(3838,1,'en','_TEXT_START_LANG_BP','Português brasileiro','wizard','',0),(3839,1,'en','_TEXT_START_LANG_DE','Deutsch','wizard','',0),(3840,1,'en','_TEXT_START_LANG_EN','English','wizard','',0),(3841,1,'en','_TEXT_START_LICENSEINFO','Lizenzinformationen','wizard','',0),(3842,1,'en','_TEXT_START_PERMISSIONS','Permissions','wizard','',0),(3843,1,'en','_TEXT_START_PERMISSIONS_FAIL','Some file/folder permissions are not ok - please grant writing rights to this folders/files.','wizard','',0),(3844,1,'en','_TEXT_START_PERMISSIONS_PASS','File/Folder permissions are ok','wizard','',0),(3845,1,'en','_TEXT_START_SETTINGS','Systemrequirements','wizard','',0),(3846,1,'en','_TEXT_START_TITLE','<span class=\"xt\">xt:</span>Commerce 4.2','wizard','',0),(3847,1,'en','_TEXT_START_UPDATE_FINISH_CONTENT','Database update complet. Please delete the folder <b>/xtWizard/</b>!<br /><br />Follow the instructions in the update manuall','wizard','',0),(3848,1,'en','_TEXT_START_UPDATE_FINISH_TITLE','Update is successful!','wizard','',0),(3849,1,'en','_TEXT_UPDATE_INTRO','This wizard guides you through the update of your xt: Commerce shop, please strictly follow the update instructions which can be found at the following URL: <br /> <a href = \"https://xtcommerce.atlassian.net/wiki /display/MANUAL/Anleitung+4.1.10+auf+4.2.00+updaten\" target=\"_blank\">https://xtcommerce.atlassian.net/wiki /display/MANUAL/Anleitung+4.1.10+auf+4.2.00+updaten</a> <br /> If you have any questions please do not hesitate to contact our support. <br /> <a href=\"mailto:helpdesk@xt-commerce.com\"> helpdesk@xt-commerce.com</ a > <br /> Successful business wishes them the xt: Commerce GmbH!','wizard','',0),(3850,1,'en','_TEXT_UPDATE_INTRO_VERSION','Please first perform the update to version 4.1.10, after that you can pderform further updates with the xtWizard. All update instructions can be found at the following URL: <br /> <a href=\"https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=2555933\" target=\"_blank\">https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=2555933</a><br /> Successful business wishes the xt: Commerce GmbH!','wizard','',0),(3851,1,'en','_TEXT_UPDATING_DATA_STORES','Updating stores data','wizard','',0),(3852,1,'de','XT_AUTO_CROSS_SELL_MAX_DISPLAY_TITLE','Max. Anzahl Test','admin','xt_auto_cross_sell',0),(3853,1,'en','XT_AUTO_CROSS_SELL_MAX_DISPLAY_TITLE','Max. display','admin','xt_auto_cross_sell',0),(3854,1,'de','TEXT_HEADING_AUTO_CROSS_SELL','Kunden kauften auch','store','xt_auto_cross_sell',0),(3855,1,'en','TEXT_HEADING_AUTO_CROSS_SELL','Customers also purchased','store','xt_auto_cross_sell',0),(3856,1,'de','HEADING_CROSS_SELLING_TO_PRODUCTS','Cross Selling','admin','xt_cross_selling',0),(3857,1,'en','HEADING_CROSS_SELLING_TO_PRODUCTS','Cross Selling','admin','xt_cross_selling',0),(3858,1,'de','TEXT_CROSS_SELL_PRODUCTS','Cross Selling Auswahl','admin','xt_cross_selling',0),(3859,1,'en','TEXT_CROSS_SELL_PRODUCTS','Cross Selling Selection','admin','xt_cross_selling',0),(3860,1,'de','TEXT_PRODUCTS_CROSS_SELLING','Cross Selling','admin','xt_cross_selling',0),(3861,1,'en','TEXT_PRODUCTS_CROSS_SELLING','Cross Selling','admin','xt_cross_selling',0),(3862,1,'de','XT_CROSS_SELLING_MAX_DISPLAY_TITLE','Anzahl Artikel','admin','xt_cross_selling',0),(3863,1,'en','XT_CROSS_SELLING_MAX_DISPLAY_TITLE','Max. article','admin','xt_cross_selling',0),(3864,1,'de','TEXT_HEADING_CROSS_SELL','Empfohlenes Zubehör','store','xt_cross_selling',0),(3865,1,'en','TEXT_HEADING_CROSS_SELL','Recommended products','store','xt_cross_selling',0),(3866,1,'de','ACTIVATE_XT_NEW_PRODUCTS_BOX_TITLE','Box aktivieren','admin','xt_new_products',0),(3867,1,'en','ACTIVATE_XT_NEW_PRODUCTS_BOX_TITLE','Activate box','admin','xt_new_products',0),(3868,1,'de','ACTIVATE_XT_NEW_PRODUCTS_PAGE_TITLE','Seite aktivieren','admin','xt_new_products',0),(3869,1,'en','ACTIVATE_XT_NEW_PRODUCTS_PAGE_TITLE','Activate page','admin','xt_new_products',0),(3870,1,'de','INSTALLED_XT_NEW_PRODUCTS_TITLE','Status','admin','xt_new_products',0),(3871,1,'en','INSTALLED_XT_NEW_PRODUCTS_TITLE','Status','admin','xt_new_products',0),(3872,1,'de','XT_NEW_PRODUCTS_BOX_DAYS_TITLE','Anzahl Tage Box','admin','xt_new_products',0),(3873,1,'en','XT_NEW_PRODUCTS_BOX_DAYS_TITLE','Days count box','admin','xt_new_products',0),(3874,1,'de','XT_NEW_PRODUCTS_BOX_LIMIT_TITLE','Anzahl Artikel in Box','admin','xt_new_products',0),(3875,1,'en','XT_NEW_PRODUCTS_BOX_LIMIT_TITLE','Box Limit','admin','xt_new_products',0),(3876,1,'de','XT_NEW_PRODUCTS_PAGE_DAYS_TITLE','Anzahl Tage','admin','xt_new_products',0),(3877,1,'en','XT_NEW_PRODUCTS_PAGE_DAYS_TITLE','Days count','admin','xt_new_products',0),(3878,1,'de','XT_NEW_PRODUCTS_PAGE_LIMIT_TITLE','Anzahl Artikel','admin','xt_new_products',0),(3879,1,'en','XT_NEW_PRODUCTS_PAGE_LIMIT_TITLE','Max. article','admin','xt_new_products',0),(3880,1,'de','XT_NEW_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_new_products',0),(3881,1,'en','XT_NEW_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_new_products',0),(3882,1,'de','TEXT_HEADING_NEW_PRODUCTS','Neue Artikel','store','xt_new_products',0),(3883,1,'en','TEXT_HEADING_NEW_PRODUCTS','New products','store','xt_new_products',0),(3884,1,'de','TEXT_NEW_PRODUCTS','Unsere Neuheiten','store','xt_new_products',0),(3885,1,'en','TEXT_NEW_PRODUCTS','Brandnew','store','xt_new_products',0),(3886,1,'de','TEXT_ADMIN_COMMENT','Kommentar von admin','admin','xt_reviews',0),(3887,1,'en','TEXT_ADMIN_COMMENT','Admin\\\'s comment','admin','xt_reviews',0),(3888,1,'de','TEXT_REVIEW_SOURCE','Quelle','admin','xt_reviews',0),(3889,1,'en','TEXT_REVIEW_SOURCE','Source','admin','xt_reviews',0),(3890,1,'de','TEXT_XT_REVIEWS_ALLOW_GUEST_REVIEWS','Gastbewertungen erlauben','admin','xt_reviews',0),(3891,1,'en','TEXT_XT_REVIEWS_ALLOW_GUEST_REVIEWS','Allow guest reviews','admin','xt_reviews',0),(3892,1,'de','XT_REVIEWS_ALL_REVIEWS_PAGE_TITLE','Alle Bewertungen Seite','admin','xt_reviews',0),(3893,1,'en','XT_REVIEWS_ALL_REVIEWS_PAGE_TITLE','all reviews page','admin','xt_reviews',0),(3894,1,'de','XT_REVIEWS_AUTO_ACTIVATE_TITLE','automatischen freischalten','admin','xt_reviews',0),(3895,1,'en','XT_REVIEWS_AUTO_ACTIVATE_TITLE','enable automatic','admin','xt_reviews',0),(3896,1,'de','XT_REVIEWS_MASTER_SLAVE_TITLE','Anzeige bei Master-Slave-Produkten','admin','xt_reviews',0),(3897,1,'en','XT_REVIEWS_MASTER_SLAVE_TITLE','Display Reviews in Master-Slave','admin','xt_reviews',0),(3898,1,'de','XT_REVIEWS_MAX_DISPLAY_PRODUCTS_TITLE','Anzahl Bewertungen','admin','xt_reviews',0),(3899,1,'en','XT_REVIEWS_MAX_DISPLAY_PRODUCTS_TITLE','Max. reviews','admin','xt_reviews',0),(3900,1,'de','XT_REVIEWS_NOTIFY_ADMIN_TITLE','Benachrichtigung bei neuer Bewertung','admin','xt_reviews',0),(3901,1,'en','XT_REVIEWS_NOTIFY_ADMIN_TITLE','notify admin for new review','admin','xt_reviews',0),(3902,1,'de','XT_REVIEWS_PRODUCT_ON_ALL_REVIEWS_PAGE_TITLE','Produktdaten auf Bewertungen Seite','admin','xt_reviews',0),(3903,1,'en','XT_REVIEWS_PRODUCT_ON_ALL_REVIEWS_PAGE_TITLE','Productdaten on reviews page','admin','xt_reviews',0),(3904,1,'de','TEXT_HEADING_WRITE_REVIEW','Schreiben Sie Ihre eigene Bewertung','store','xt_reviews',0),(3905,1,'en','TEXT_HEADING_WRITE_REVIEW','Write your own review','store','xt_reviews',0),(3906,1,'de','TEXT_XT_REVIEWS_EDITOR','Geschrieben von','store','xt_reviews',0),(3907,1,'en','TEXT_XT_REVIEWS_EDITOR','Wrote by','store','xt_reviews',0),(3908,1,'de','TEXT_XT_REVIEWS_ERROR_LOGIN','Um eine Bewertung zu schreiben müssen Sie angemeldet sein.','store','xt_reviews',0),(3909,1,'en','TEXT_XT_REVIEWS_ERROR_LOGIN','Please login to write a review','store','xt_reviews',0),(3910,1,'de','TEXT_XT_REVIEWS_HEADING_REVIEWS','Bewertungen','store','xt_reviews',0),(3911,1,'en','TEXT_XT_REVIEWS_HEADING_REVIEWS','Reviews','store','xt_reviews',0),(3912,1,'de','TEXT_XT_REVIEWS_INFO','Bewertung(en)','store','xt_reviews',0),(3913,1,'en','TEXT_XT_REVIEWS_INFO','Review(s)','store','xt_reviews',0),(3914,1,'de','TEXT_XT_REVIEWS_NO_REVIEWS','Zu diesem Artikel existieren noch keine Bewertungen','store','xt_reviews',0),(3915,1,'en','TEXT_XT_REVIEWS_NO_REVIEWS','There are no reviews for this product','store','xt_reviews',0),(3916,1,'de','TEXT_XT_REVIEWS_PRODUCT','Produkt','store','xt_reviews',0),(3917,1,'en','TEXT_XT_REVIEWS_PRODUCT','Product','store','xt_reviews',0),(3918,1,'de','TEXT_XT_REVIEWS_RATE_DESC','Ihre Bewertung','store','xt_reviews',0),(3919,1,'en','TEXT_XT_REVIEWS_RATE_DESC','Your rating','store','xt_reviews',0),(3920,1,'de','TEXT_XT_REVIEWS_RATING_DESC','Bewerten Sie dieses Produkt auf einer Skala von 1 bis 5, wobei 5 die beste Bewertung darstellt.','store','xt_reviews',0),(3921,1,'en','TEXT_XT_REVIEWS_RATING_DESC','Rate this article with 1 to 5 stars (5 stars ','store','xt_reviews',0),(3922,1,'de','TEXT_XT_REVIEWS_SHOW','Bewertungen','store','xt_reviews',0),(3923,1,'en','TEXT_XT_REVIEWS_SHOW','reviews','store','xt_reviews',0),(3924,1,'de','TEXT_XT_REVIEWS_SUCCESS','Bewertung gespeichert','store','xt_reviews',0),(3925,1,'en','TEXT_XT_REVIEWS_SUCCESS','review saved','store','xt_reviews',0),(3926,1,'de','TEXT_XT_REVIEWS_TEXT_DESC','Text Ihrer Bewertung','store','xt_reviews',0),(3927,1,'en','TEXT_XT_REVIEWS_TEXT_DESC','Text of your review','store','xt_reviews',0),(3928,1,'de','TEXT_XT_REVIEWS_TITLE_DESC','Titel Ihrer Bewertung','store','xt_reviews',0),(3929,1,'en','TEXT_XT_REVIEWS_TITLE_DESC','Title of your review','store','xt_reviews',0),(3930,1,'de','TEXT_XT_REVIEWS_WRITE','Bewertung schreiben','store','xt_reviews',0),(3931,1,'en','TEXT_XT_REVIEWS_WRITE','Write a review','store','xt_reviews',0),(3932,1,'de','XT_REVIEWS_ADD_SUCCESS','Vielen Dank für Ihre Bewertung!','store','xt_reviews',0),(3933,1,'en','XT_REVIEWS_ADD_SUCCESS','Thank you for your review!','store','xt_reviews',0),(3934,1,'de','XT_REVIEWS_ALLOW_GUEST_REVIEWS_TITLE','Allow guest reviews','admin','xt_reviews',0),(3935,1,'en','XT_REVIEWS_ALLOW_GUEST_REVIEWS_TITLE','Allow guest reviews','admin','xt_reviews',0),(3936,1,'de','ACTIVATE_XT_SPECIAL_PRODUCTS_BOX_TITLE','Box anzeigen','admin','xt_special_products',0),(3937,1,'en','ACTIVATE_XT_SPECIAL_PRODUCTS_BOX_TITLE','Activate box','admin','xt_special_products',0),(3938,1,'de','ACTIVATE_XT_SPECIAL_PRODUCTS_PAGE_TITLE','Seite aktivieren','admin','xt_special_products',0),(3939,1,'en','ACTIVATE_XT_SPECIAL_PRODUCTS_PAGE_TITLE','aktivate Page','admin','xt_special_products',0),(3940,1,'de','XT_SPECIAL_PRODUCTS_BOX_LIMIT_TITLE','Anzahl Artikel in Box','admin','xt_special_products',0),(3941,1,'en','XT_SPECIAL_PRODUCTS_BOX_LIMIT_TITLE','Max. articles in Box','admin','xt_special_products',0),(3942,1,'de','XT_SPECIAL_PRODUCTS_PAGE_LIMIT_TITLE','Anzahl Artikel','admin','xt_special_products',0),(3943,1,'en','XT_SPECIAL_PRODUCTS_PAGE_LIMIT_TITLE','Max. articles','admin','xt_special_products',0),(3944,1,'de','XT_SPECIAL_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_special_products',0),(3945,1,'en','XT_SPECIAL_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_special_products',0),(3946,1,'de','XT_SPECIAL_PRODUCTS_PRODUCTS_MASTER','Masters + Normal','admin','xt_special_products',0),(3947,1,'en','XT_SPECIAL_PRODUCTS_PRODUCTS_MASTER','Masters + Normal','admin','xt_special_products',0),(3948,1,'de','XT_SPECIAL_PRODUCTS_PRODUCTS_NOTHING','Normale','admin','xt_special_products',0),(3949,1,'en','XT_SPECIAL_PRODUCTS_PRODUCTS_NOTHING','Normal','admin','xt_special_products',0),(3950,1,'de','XT_SPECIAL_PRODUCTS_PRODUCTS_SLAVE','Slaves + Normal','admin','xt_special_products',0),(3951,1,'en','XT_SPECIAL_PRODUCTS_PRODUCTS_SLAVE','Slaves + Normal','admin','xt_special_products',0),(3952,1,'de','XT_SPECIAL_PRODUCTS_SHOW_TYPE_TITLE','Produktauswahl','admin','xt_special_products',0),(3953,1,'en','XT_SPECIAL_PRODUCTS_SHOW_TYPE_TITLE','Products to show','admin','xt_special_products',0),(3954,1,'de','TEXT_HEADING_SPECIAL_PRODUCTS','Angebote','store','xt_special_products',0),(3955,1,'en','TEXT_HEADING_SPECIAL_PRODUCTS','Top offers','store','xt_special_products',0),(3956,1,'de','TEXT_SPECIAL_PRODUCTS','Unsere Angebote','store','xt_special_products',0),(3957,1,'en','TEXT_SPECIAL_PRODUCTS','Our top offers','store','xt_special_products',0),(3958,1,'de','ACTIVATE_XT_STARTPAGE_PRODUCTS_PAGE_TITLE','Aktivieren','admin','xt_startpage_products',0),(3959,1,'en','ACTIVATE_XT_STARTPAGE_PRODUCTS_PAGE_TITLE','Aktivate','admin','xt_startpage_products',0),(3960,1,'de','TEXT_ADD_STARTPAGE_PRODUCT','Produkte zur Startseite hinzufügen','admin','xt_startpage_products',0),(3961,1,'en','TEXT_ADD_STARTPAGE_PRODUCT','Attach products to Startpage','admin','xt_startpage_products',0),(3962,1,'de','TEXT_ATTACHED_PRODUCTS','Zugeordnete Produkte','admin','xt_startpage_products',0),(3963,1,'en','TEXT_ATTACHED_PRODUCTS','Attached products','admin','xt_startpage_products',0),(3964,1,'de','TEXT_ATTACH_PRODUCTS','Produkte hinzufügen','admin','xt_startpage_products',0),(3965,1,'en','TEXT_ATTACH_PRODUCTS','Attach products','admin','xt_startpage_products',0),(3966,1,'de','TEXT_STARTPAGE_PRODUCTS_SORT','Reihenfolge','admin','xt_startpage_products',0),(3967,1,'en','TEXT_STARTPAGE_PRODUCTS_SORT','Sort order','admin','xt_startpage_products',0),(3968,1,'de','TEXT_XT_STARTPAGE_PRODUCTS','Startseiten Produkte','admin','xt_startpage_products',0),(3969,1,'en','TEXT_XT_STARTPAGE_PRODUCTS','Startpage products','admin','xt_startpage_products',0),(3970,1,'de','XT_STARTPAGE_PRODUCTS_PAGE_LIMIT_TITLE','Anzahl Artikel auf Seite','admin','xt_startpage_products',0),(3971,1,'en','XT_STARTPAGE_PRODUCTS_PAGE_LIMIT_TITLE','Max. products','admin','xt_startpage_products',0),(3972,1,'de','XT_STARTPAGE_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_startpage_products',0),(3973,1,'en','XT_STARTPAGE_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_startpage_products',0),(3974,1,'de','TEXT_PAYMENT_RESTRICTION','Zahlungsweisen sperren','admin','xt_payment_restriction',0),(3975,1,'en','TEXT_PAYMENT_RESTRICTION','Payment restrictions','admin','xt_payment_restriction',0),(3976,1,'de','TEXT_PAYMENT_RESTRICTION_AMOUNT','Bestellsumme','admin','xt_payment_restriction',0),(3977,1,'en','TEXT_PAYMENT_RESTRICTION_AMOUNT','Orders amount','admin','xt_payment_restriction',0),(3978,1,'de','TEXT_PAYMENT_RESTRICTION_COUNT','Anzahl Bestellungen','admin','xt_payment_restriction',0),(3979,1,'en','TEXT_PAYMENT_RESTRICTION_COUNT','Orders count','admin','xt_payment_restriction',0),(3980,1,'de','TEXT_RESTRICTION_CLASS','Typ','admin','xt_payment_restriction',0),(3981,1,'en','TEXT_RESTRICTION_CLASS','Type','admin','xt_payment_restriction',0),(3982,1,'de','TEXT_RESTRICTION_VALUE','Wert','admin','xt_payment_restriction',0),(3983,1,'en','TEXT_RESTRICTION_VALUE','Value','admin','xt_payment_restriction',0),(3984,1,'de','HEADING_XT_MASTER_SLAVE','Master / Slave Eigenschaften','admin','xt_master_slave',0),(3985,1,'en','HEADING_XT_MASTER_SLAVE','Master / Slave Attributes','admin','xt_master_slave',0),(3986,1,'de','TEXT_ATTRIBUTES_DESC','Beschreibung','admin','xt_master_slave',0),(3987,1,'en','TEXT_ATTRIBUTES_DESC','Description','admin','xt_master_slave',0),(3988,1,'de','TEXT_ATTRIBUTES_ID','ID','admin','xt_master_slave',0),(3989,1,'en','TEXT_ATTRIBUTES_ID','ID','admin','xt_master_slave',0),(3990,1,'de','TEXT_ATTRIBUTES_IMAGE','Bild','admin','xt_master_slave',0),(3991,1,'en','TEXT_ATTRIBUTES_IMAGE','Image','admin','xt_master_slave',0),(3992,1,'de','TEXT_ATTRIBUTES_MODEL','Model','admin','xt_master_slave',0),(3993,1,'en','TEXT_ATTRIBUTES_MODEL','Model','admin','xt_master_slave',0),(3994,1,'de','TEXT_ATTRIBUTES_NAME','Name','admin','xt_master_slave',0),(3995,1,'en','TEXT_ATTRIBUTES_NAME','Name','admin','xt_master_slave',0),(3996,1,'de','TEXT_ATTRIBUTES_PARENT','übergeordnete Kategorie','admin','xt_master_slave',0),(3997,1,'en','TEXT_ATTRIBUTES_PARENT','Parent Category','admin','xt_master_slave',0),(3998,1,'de','TEXT_ATTRIBUTES_PARENT_NAME','übergeordnete Kategorie','admin','xt_master_slave',0),(3999,1,'en','TEXT_ATTRIBUTES_PARENT_NAME','Parent Category','admin','xt_master_slave',0),(4000,1,'de','TEXT_ATTRIBUTES_TEMPLATES_ID','Template','admin','xt_master_slave',0),(4001,1,'en','TEXT_ATTRIBUTES_TEMPLATES_ID','Template','admin','xt_master_slave',0),(4002,1,'de','TEXT_ATTRIBUTE_1','Attribut 1','admin','xt_master_slave',0),(4003,1,'en','TEXT_ATTRIBUTE_1','Attribute 1','admin','xt_master_slave',0),(4004,1,'de','TEXT_ATTRIBUTE_2','Attribut 2','admin','xt_master_slave',0),(4005,1,'en','TEXT_ATTRIBUTE_2','Attribute 2','admin','xt_master_slave',0),(4006,1,'de','TEXT_ATTRIBUTE_3','Attribut 3','admin','xt_master_slave',0),(4007,1,'en','TEXT_ATTRIBUTE_3','Attribute 3','admin','xt_master_slave',0),(4008,1,'de','TEXT_ATTRIBUTE_4','Attribut 4','admin','xt_master_slave',0),(4009,1,'en','TEXT_ATTRIBUTE_4','Attribute 4','admin','xt_master_slave',0),(4010,1,'de','TEXT_ATTRIBUTE_5','Attribut 5','admin','xt_master_slave',0),(4011,1,'en','TEXT_ATTRIBUTE_5','Attribute 5','admin','xt_master_slave',0),(4012,1,'de','TEXT_DUPLICATE_SLAVES','Für einige der Ausgewählen Attribute wurden bereits Slave-Produkte generiert, diese Produkte werden im nächsten Schritt ignoriert. Wenn Sie diese Slaves neu generieren wollen, löschen Sie die bereits existierenden Slaveprodukte zuerst. Es existieren bereits Slaves für folgende Attribute:','admin','xt_master_slave',0),(4013,1,'en','TEXT_DUPLICATE_SLAVES','For some of your selection of attributes, slave products have already been generated. These products will be ignored in the next step. If you want to re-generate these slaves, delete the existing slave products first. There are already slaves for the following attributes:','admin','xt_master_slave',0),(4014,1,'de','TEXT_FILTER_MASTER_PRODUCTS','Master Artikel','admin','xt_master_slave',0),(4015,1,'en','TEXT_FILTER_MASTER_PRODUCTS','Master products','admin','xt_master_slave',0),(4016,1,'de','TEXT_FILTER_MASTER_SLAVE','Master/Slave','admin','xt_master_slave',0),(4017,1,'en','TEXT_FILTER_MASTER_SLAVE','Master/Slave','admin','xt_master_slave',0),(4018,1,'de','TEXT_FILTER_MASTER_SLAVE_PRODUCTS','Master und Slave Artikel','admin','xt_master_slave',0),(4019,1,'en','TEXT_FILTER_MASTER_SLAVE_PRODUCTS','Master and Slave products','admin','xt_master_slave',0),(4020,1,'de','TEXT_FILTER_SLAVE_PRODUCTS','Slave Artikel','admin','xt_master_slave',0),(4021,1,'en','TEXT_FILTER_SLAVE_PRODUCTS','Slave products','admin','xt_master_slave',0),(4022,1,'de','TEXT_GENERATE_SLAVES','Slaves generieren','admin','xt_master_slave',0),(4023,1,'en','TEXT_GENERATE_SLAVES','Generate slaves','admin','xt_master_slave',0),(4024,1,'de','TEXT_GENERATE_SLAVES_LIST','Slave-Produkte Liste','admin','xt_master_slave',0),(4025,1,'en','TEXT_GENERATE_SLAVES_LIST','Slave products list','admin','xt_master_slave',0),(4026,1,'de','TEXT_GENERATE_SLAVES_NO_MASTER_PRODUCT','Es können nur Slaves für ein Master-Produkt generiert werden. Aktivieren Sie ggf. die Option \\\"Master Artikel ja / nein\\\".','admin','xt_master_slave',0),(4027,1,'en','TEXT_GENERATE_SLAVES_NO_MASTER_PRODUCT','Product should be set as \\\"master product\\\" to generate slaves','admin','xt_master_slave',0),(4028,1,'de','TEXT_GENERATE_SLAVES_NO_PRODUCTS_MODEL','Bitte wählen Sie eine \\\"Artikelnummer\\\" für das Master-Produkt','admin','xt_master_slave',0),(4029,1,'en','TEXT_GENERATE_SLAVES_NO_PRODUCTS_MODEL','Please set \\\"product model\\\" for the product','admin','xt_master_slave',0),(4030,1,'de','TEXT_GENERATE_SLAVES_STEP_1','Attribute auswählen','admin','xt_master_slave',0),(4031,1,'en','TEXT_GENERATE_SLAVES_STEP_1','Select attributes','admin','xt_master_slave',0),(4032,1,'de','TEXT_GENERATE_SLAVES_STEP_2','Varianten Vorschau','admin','xt_master_slave',0),(4033,1,'en','TEXT_GENERATE_SLAVES_STEP_2','Variations preview ','admin','xt_master_slave',0),(4034,1,'de','TEXT_GENERATE_SLAVES_STEP_3','Fertigstellen','admin','xt_master_slave',0),(4035,1,'en','TEXT_GENERATE_SLAVES_STEP_3','Finish','admin','xt_master_slave',0),(4036,1,'de','TEXT_MASTER_SLAVE','Master/Slave','admin','xt_master_slave',0),(4037,1,'en','TEXT_MASTER_SLAVE','Master/Slave','admin','xt_master_slave',0),(4038,1,'de','TEXT_MASTER_SLAVE_GENERATE_SLAVE','Generiere Master/Slave','admin','xt_master_slave',0),(4039,1,'en','TEXT_MASTER_SLAVE_GENERATE_SLAVE','Generate Master/Slave','admin','xt_master_slave',0),(4040,1,'de','TEXT_MASTER_SLAVE_GENERATE_SLAVE_LIST','Slaves Liste','admin','xt_master_slave',0),(4041,1,'en','TEXT_MASTER_SLAVE_GENERATE_SLAVE_LIST','Slaves list','admin','xt_master_slave',0),(4042,1,'de','TEXT_MASTER_SLAVE_NO_ITEMS_SELECTED','Sie haben keines der Vorschau-Produkte zum generieren ausgewählt. Wollen Sie wirklich fortfahren?','admin','xt_master_slave',0),(4043,1,'en','TEXT_MASTER_SLAVE_NO_ITEMS_SELECTED','No items selected on the previuos step. Would you like to proceed?','admin','xt_master_slave',0),(4044,1,'de','TEXT_MASTER_SLAVE_UNSAVED_DATA','Sie haben einige nicht gespeicherten Produktdaten. Wollen Sie wirklich fortfahren, ohne zu speichern?','admin','xt_master_slave',0),(4045,1,'en','TEXT_MASTER_SLAVE_UNSAVED_DATA','You have some unsaved product data. Would you like to proceed without saving?','admin','xt_master_slave',0),(4046,1,'de','TEXT_MS_NEXT','Next','admin','xt_master_slave',0),(4047,1,'en','TEXT_MS_NEXT','Next','admin','xt_master_slave',0),(4048,1,'de','TEXT_NEXT','>','admin','xt_master_slave',0),(4049,1,'en','TEXT_NEXT','Next','admin','xt_master_slave',0),(4050,1,'de','TEXT_PRODUCTS_IMAGE_FROM_MASTER','Bild von Master-Artikel verwenden','admin','xt_master_slave',0),(4051,1,'en','TEXT_PRODUCTS_IMAGE_FROM_MASTER','Force load Master Image','admin','xt_master_slave',0),(4052,1,'de','TEXT_PRODUCTS_MASTER_FLAG','Master Artikel ja / nein','admin','xt_master_slave',0),(4053,1,'en','TEXT_PRODUCTS_MASTER_FLAG','Master Product true / false','admin','xt_master_slave',0),(4054,1,'de','TEXT_PRODUCTS_MASTER_SLAVE_ORDER','Slave Reihenfolge','admin','xt_master_slave',0),(4055,1,'en','TEXT_PRODUCTS_MASTER_SLAVE_ORDER','Slave sorting','admin','xt_master_slave',0),(4056,1,'de','TEXT_PRODUCTS_OPTION_LIST_TEMPLATE','Template für Liste der SlaveArtikel','admin','xt_master_slave',0),(4057,1,'en','TEXT_PRODUCTS_OPTION_LIST_TEMPLATE','Template for list of Slave Products','admin','xt_master_slave',0),(4058,1,'de','TEXT_PRODUCTS_OPTION_MASTER_PRICE','Master Preis anzeige','admin','xt_master_slave',0),(4059,1,'en','TEXT_PRODUCTS_OPTION_MASTER_PRICE','Master price view','admin','xt_master_slave',0),(4060,1,'de','TEXT_PRODUCTS_TO_ATTRIBUTES','Artikel Eigenschaften','admin','xt_master_slave',0),(4061,1,'en','TEXT_PRODUCTS_TO_ATTRIBUTES','Products Attributes','admin','xt_master_slave',0),(4062,1,'de','TEXT_XT_MASTER_SLAVE','Master / Slave','admin','xt_master_slave',0),(4063,1,'en','TEXT_XT_MASTER_SLAVE','Master / Slave','admin','xt_master_slave',0),(4064,1,'de','XT_MASTER_SLAVE_ACTIVE_TITLE','Status','admin','xt_master_slave',0),(4065,1,'en','XT_MASTER_SLAVE_ACTIVE_TITLE','Status','admin','xt_master_slave',0),(4066,1,'de','XT_MASTER_SLAVE_AUTOPRICE','Auto Preis','admin','xt_master_slave',0),(4067,1,'en','XT_MASTER_SLAVE_AUTOPRICE','auto price','admin','xt_master_slave',0),(4068,1,'de','XT_MASTER_SLAVE_CONF_SHOW_RESET_TITLE','Zeige Aufheben-Knopf','admin','xt_master_slave',0),(4069,1,'en','XT_MASTER_SLAVE_CONF_SHOW_RESET_TITLE','Show Cancel button','admin','xt_master_slave',0),(4070,1,'de','XT_MASTER_SLAVE_FILTERLIST_ON_SELECTION_TITLE','Slave-Liste Filtern nach auswahl','admin','xt_master_slave',0),(4071,1,'en','XT_MASTER_SLAVE_FILTERLIST_ON_SELECTION_TITLE','Update Slavelist on selection','admin','xt_master_slave',0),(4072,1,'de','XT_MASTER_SLAVE_INHERIT_ASSIGNED_MASTER_IMAGES_TITLE','Bilder bei Generierung vererben','admin','xt_master_slave',0),(4073,1,'en','XT_MASTER_SLAVE_INHERIT_ASSIGNED_MASTER_IMAGES_TITLE','Inherit assigned master images','admin','xt_master_slave',0),(4074,1,'de','XT_MASTER_SLAVE_LOAD_MASTER_IMAGE_IN_SLAVE_TITLE','Lade Master Bild in Slaves','admin','xt_master_slave',0),(4075,1,'en','XT_MASTER_SLAVE_LOAD_MASTER_IMAGE_IN_SLAVE_TITLE','Load Master Image in Slave','admin','xt_master_slave',0),(4076,1,'de','XT_MASTER_SLAVE_MASTERPRICE','Master Preis','admin','xt_master_slave',0),(4077,1,'en','XT_MASTER_SLAVE_MASTERPRICE','Master price','admin','xt_master_slave',0),(4078,1,'de','XT_MASTER_SLAVE_MASTER_PRODUCTS','Master products','admin','xt_master_slave',0),(4079,1,'en','XT_MASTER_SLAVE_MASTER_PRODUCTS','Master products','admin','xt_master_slave',0),(4080,1,'de','XT_MASTER_SLAVE_NOPRICE','kein Preis','admin','xt_master_slave',0),(4081,1,'en','XT_MASTER_SLAVE_NOPRICE','no price','admin','xt_master_slave',0),(4082,1,'de','XT_MASTER_SLAVE_RANGEPRICE','Preisspanne','admin','xt_master_slave',0),(4083,1,'en','XT_MASTER_SLAVE_RANGEPRICE','Price range','admin','xt_master_slave',0),(4084,1,'de','XT_MASTER_SLAVE_SHOP_SEARCH_TITLE','Produkte in der Shop Suche','admin','xt_master_slave',0),(4085,1,'en','XT_MASTER_SLAVE_SHOP_SEARCH_TITLE','Products in Shop Search','admin','xt_master_slave',0),(4086,1,'de','XT_MASTER_SLAVE_SLAVE_ORDER_TITLE','Slave Reihenfolge in Listen','admin','xt_master_slave',0),(4087,1,'en','XT_MASTER_SLAVE_SLAVE_ORDER_TITLE','Slave sorting in list','admin','xt_master_slave',0),(4088,1,'de','XT_MASTER_SLAVE_SLAVE_PRODUCTS','Slave products','admin','xt_master_slave',0),(4089,1,'en','XT_MASTER_SLAVE_SLAVE_PRODUCTS','Slave products','admin','xt_master_slave',0),(4090,1,'de','XT_MASTER_SLAVE_STAY_IN_MASTER_FALSE','false','admin','xt_master_slave',0),(4091,1,'en','XT_MASTER_SLAVE_STAY_IN_MASTER_FALSE','false','admin','xt_master_slave',0),(4092,1,'de','XT_MASTER_SLAVE_STAY_IN_MASTER_PLUS_AJAX','Master + Ajax','admin','xt_master_slave',0),(4093,1,'en','XT_MASTER_SLAVE_STAY_IN_MASTER_PLUS_AJAX','Master + Ajax','admin','xt_master_slave',0),(4094,1,'de','XT_MASTER_SLAVE_STAY_IN_MASTER_TRUE','true','admin','xt_master_slave',0),(4095,1,'en','XT_MASTER_SLAVE_STAY_IN_MASTER_TRUE','true','admin','xt_master_slave',0),(4096,1,'de','XT_MASTER_SLAVE_SUM_SLAVE_QUANTITY_FOR_GRADUATED_PRICE_TITLE','Staffelpreis auf alle Slaves anwenden','admin','xt_master_slave',0),(4097,1,'en','XT_MASTER_SLAVE_SUM_SLAVE_QUANTITY_FOR_GRADUATED_PRICE_TITLE','Sum slaves quantity for graduated price','admin','xt_master_slave',0),(4098,1,'de','_PLUGIN_MASTER_SLAVE_REDIRECT_TO_SLAVE_TITLE','Weiterleitung auf Slaveartikel','admin','xt_master_slave',0),(4099,1,'en','_PLUGIN_MASTER_SLAVE_REDIRECT_TO_SLAVE_TITLE','Master to slave redirect','admin','xt_master_slave',0),(4100,1,'de','_PLUGIN_MASTER_SLAVE_SHOW_MAX_PRODUCTS_TITLE','Slaveartikel Liste','admin','xt_master_slave',0),(4101,1,'en','_PLUGIN_MASTER_SLAVE_SHOW_MAX_PRODUCTS_TITLE','Slaveproducts List','admin','xt_master_slave',0),(4102,1,'de','_PLUGIN_MASTER_SLAVE_SHOW_OPTIONS_TITLE','Anzeige Optionsauswahl','admin','xt_master_slave',0),(4103,1,'en','_PLUGIN_MASTER_SLAVE_SHOW_OPTIONS_TITLE','Show Option Selection','admin','xt_master_slave',0),(4104,1,'de','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_LIST_TITLE','Anzeige Slaveartikel Liste','admin','xt_master_slave',0),(4105,1,'en','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_LIST_TITLE','Show List with Slaveproducts','admin','xt_master_slave',0),(4106,1,'de','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_PRODUCTS_TITLE','Anzeige Slaveartikel','admin','xt_master_slave',0),(4107,1,'en','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_PRODUCTS_TITLE','Show Slaveproducts','admin','xt_master_slave',0),(4108,1,'de','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_PRODUCTS','Show Slaveproducts','admin','xt_master_slave',0),(4109,1,'en','_PLUGIN_MASTER_SLAVE_SHOW_SLAVE_PRODUCTS','Show Slaveproducts','admin','xt_master_slave',0),(4110,1,'de','TEXT_NO_SELECTION','bitte wählen','store','xt_master_slave',0),(4111,1,'en','TEXT_NO_SELECTION','please select','store','xt_master_slave',0),(4112,1,'de','TEXT_XT_MASTER_SLAVE_NO_STOCK','Zur zeit leider nicht verfügbar','store','xt_master_slave',0),(4113,1,'en','TEXT_XT_MASTER_SLAVE_NO_STOCK','Out of stock','store','xt_master_slave',0),(4114,1,'de','XT_MASTER_SLAVE_FROM','ab','store','xt_master_slave',0),(4115,1,'en','XT_MASTER_SLAVE_FROM','from','store','xt_master_slave',0),(4116,1,'de','XT_MASTER_SLAVE_TEXT_LINK_TO_MASTER','Zurück zum Masterartikel','store','xt_master_slave',0),(4117,1,'en','XT_MASTER_SLAVE_TEXT_LINK_TO_MASTER','Back to master article','store','xt_master_slave',0),(4118,1,'de','XT_MASTER_SLAVE_TEXT_RESET_OPTIONS','Auswahl aufheben','store','xt_master_slave',0),(4119,1,'en','XT_MASTER_SLAVE_TEXT_RESET_OPTIONS','Cancel selection','store','xt_master_slave',0),(4120,1,'de','EI_ALLOWED_PRIMARY_TITLE','Primary Key','admin','xt_im_export',0),(4121,1,'en','EI_ALLOWED_PRIMARY_TITLE','Primary Key','admin','xt_im_export',0),(4122,1,'de','EI_ALLOWED_SECONDARY_TITLE','Secondary Key','admin','xt_im_export',0),(4123,1,'en','EI_ALLOWED_SECONDARY_TITLE','Secondary Key','admin','xt_im_export',0),(4124,1,'de','TEXT_EI_CAT_TREE_DELIMITER','Trennzeichen (Kategoriepfaad)','admin','xt_im_export',0),(4125,1,'en','TEXT_EI_CAT_TREE_DELIMITER','Seperator (Categorytree)','admin','xt_im_export',0),(4126,1,'de','TEXT_EI_DELIMITER','Trennzeichen','admin','xt_im_export',0),(4127,1,'en','TEXT_EI_DELIMITER','Seperator','admin','xt_im_export',0),(4128,1,'de','TEXT_EI_ENCLOSURE','Texttrenner','admin','xt_im_export',0),(4129,1,'en','TEXT_EI_ENCLOSURE','Enclosure','admin','xt_im_export',0),(4130,1,'de','TEXT_EI_FILENAME','Dateiname','admin','xt_im_export',0),(4131,1,'en','TEXT_EI_FILENAME','Filename','admin','xt_im_export',0),(4132,1,'de','TEXT_EI_ID','ID','admin','xt_im_export',0),(4133,1,'en','TEXT_EI_ID','ID','admin','xt_im_export',0),(4134,1,'de','TEXT_EI_LANGUAGE','Sprachabh&amp;auml;ngig','admin','xt_im_export',0),(4135,1,'en','TEXT_EI_LANGUAGE','Depending on language','admin','xt_im_export',0),(4136,1,'de','TEXT_EI_LIMIT','Datens&amp;auml;tze pro Durchgang','admin','xt_im_export',0),(4137,1,'en','TEXT_EI_LIMIT','records limit','admin','xt_im_export',0),(4138,1,'de','TEXT_EI_PRICE_TYPE','Bruttopreise','admin','xt_im_export',0),(4139,1,'en','TEXT_EI_PRICE_TYPE','Price incl. Tax','admin','xt_im_export',0),(4140,1,'de','TEXT_EI_STORE_ID','Store ID','admin','xt_im_export',0),(4141,1,'en','TEXT_EI_STORE_ID','Store ID','admin','xt_im_export',0),(4142,1,'de','TEXT_EI_TITLE','Beschreibung','admin','xt_im_export',0),(4143,1,'en','TEXT_EI_TITLE','Description','admin','xt_im_export',0),(4144,1,'de','TEXT_EI_TYPE','Import/Export','admin','xt_im_export',0),(4145,1,'en','TEXT_EI_TYPE','Import/Export','admin','xt_im_export',0),(4146,1,'de','TEXT_EI_TYPE_MATCH','Prim&amp;auml;rschl&amp;uuml;ssel','admin','xt_im_export',0),(4147,1,'en','TEXT_EI_TYPE_MATCH','Primary Key','admin','xt_im_export',0),(4148,1,'de','TEXT_EI_TYPE_MATCH_2','Sekund&amp;auml;rschl&amp;uuml;ssel','admin','xt_im_export',0),(4149,1,'en','TEXT_EI_TYPE_MATCH_2','Secondary Key','admin','xt_im_export',0),(4150,1,'de','TEXT_EI_TYPE_SPEC','Typ','admin','xt_im_export',0),(4151,1,'en','TEXT_EI_TYPE_SPEC','Type','admin','xt_im_export',0),(4152,1,'de','TEXT_ERROR_MESSAGE','Fehler','admin','xt_im_export',0),(4153,1,'en','TEXT_ERROR_MESSAGE','Fehler','admin','xt_im_export',0),(4154,1,'de','TEXT_MISSING_STORE_ID','Store ID is missing in the imported file, the store ID stated in the import profile will be used.','admin','xt_im_export',0),(4155,1,'en','TEXT_MISSING_STORE_ID','Store ID is missing in the imported file, the store ID stated in the import profile will be used.','admin','xt_im_export',0),(4156,1,'de','TEXT_WRONG_STORE_ID','Import profile has diffrent store ID than the one in imported file','admin','xt_im_export',0),(4157,1,'en','TEXT_WRONG_STORE_ID','Import profile has diffrent store ID than the one in imported file','admin','xt_im_export',0),(4158,1,'de','TEXT_XT_IMPORT_EXPORT_LOG','Log','admin','xt_im_export',0),(4159,1,'en','TEXT_XT_IMPORT_EXPORT_LOG','Log','admin','xt_im_export',0),(4160,1,'de','TEXT_XT_IM_EXPORT','Import/Export','admin','xt_im_export',0),(4161,1,'en','TEXT_XT_IM_EXPORT','Import/Export','admin','xt_im_export',0),(4162,1,'de','XT_PRIVACYCHECK_SHOW_TITLE','Aktivieren','admin','xt_privacycheck',0),(4163,1,'en','XT_PRIVACYCHECK_SHOW_TITLE','Activate','admin','xt_privacycheck',0),(4164,1,'de','XT_PRIVACYCHECK_TYPE_TITLE','Bestätigung erforderlich','admin','xt_privacycheck',0),(4165,1,'en','XT_PRIVACYCHECK_TYPE_TITLE','Must be accepted','admin','xt_privacycheck',0),(4166,1,'de','TEXT_DOT','.','store','xt_privacycheck',0),(4167,1,'en','TEXT_DOT','.','store','xt_privacycheck',0),(4168,1,'de','TEXT_PRIVACY_CHECK_ERROR','Bitte akzeptieren Sie unsere Datenschutzerklärung.','store','xt_privacycheck',0),(4169,1,'en','TEXT_PRIVACY_CHECK_ERROR','Please accept our privacy policy.','store','xt_privacycheck',0),(4170,1,'de','TEXT_PRIVACY_TEXT','Datenschutzerklärung','store','xt_privacycheck',0),(4171,1,'en','TEXT_PRIVACY_TEXT','Privacy policy','store','xt_privacycheck',0),(4172,1,'de','TEXT_PRIVACY_TEXT_INFO','Bitte lesen Sie unsere','store','xt_privacycheck',0),(4173,1,'en','TEXT_PRIVACY_TEXT_INFO','Please read our','store','xt_privacycheck',0),(4174,1,'de','ACTIVATE_XT_BESTSELLER_PRODUCTS_BOX_TITLE','Box aktivieren','admin','xt_bestseller_products',0),(4175,1,'en','ACTIVATE_XT_BESTSELLER_PRODUCTS_BOX_TITLE','Activate box','admin','xt_bestseller_products',0),(4176,1,'de','ACTIVATE_XT_BESTSELLER_PRODUCTS_PAGE_TITLE','Seite aktivieren','admin','xt_bestseller_products',0),(4177,1,'en','ACTIVATE_XT_BESTSELLER_PRODUCTS_PAGE_TITLE','Activate Page','admin','xt_bestseller_products',0),(4178,1,'de','XT_BESTSELLER_PRODUCTS_BOX_LIMIT_TITLE','Anzahl Artikel in Box','admin','xt_bestseller_products',0),(4179,1,'en','XT_BESTSELLER_PRODUCTS_BOX_LIMIT_TITLE','Max. article in Box','admin','xt_bestseller_products',0),(4180,1,'de','XT_BESTSELLER_PRODUCTS_CACHE_HOURS_TITLE','Cache Zeit (Stunden)','admin','xt_bestseller_products',0),(4181,1,'en','XT_BESTSELLER_PRODUCTS_CACHE_HOURS_TITLE','Caching time (hours)','admin','xt_bestseller_products',0),(4182,1,'de','XT_BESTSELLER_PRODUCTS_CATEGORY_DEPENDS_TITLE','Kategoriebezogen','admin','xt_bestseller_products',0),(4183,1,'en','XT_BESTSELLER_PRODUCTS_CATEGORY_DEPENDS_TITLE','in depends on category','admin','xt_bestseller_products',0),(4184,1,'de','XT_BESTSELLER_PRODUCTS_MASTER','Masters + Normal','admin','xt_bestseller_products',0),(4185,1,'en','XT_BESTSELLER_PRODUCTS_MASTER','Masters + Normal','admin','xt_bestseller_products',0),(4186,1,'de','XT_BESTSELLER_PRODUCTS_NOTHING','Normal','admin','xt_bestseller_products',0),(4187,1,'en','XT_BESTSELLER_PRODUCTS_NOTHING','Normal','admin','xt_bestseller_products',0),(4188,1,'de','XT_BESTSELLER_PRODUCTS_PAGE_LIMIT_TITLE','Anzahl Artikel','admin','xt_bestseller_products',0),(4189,1,'en','XT_BESTSELLER_PRODUCTS_PAGE_LIMIT_TITLE','Max. article','admin','xt_bestseller_products',0),(4190,1,'de','XT_BESTSELLER_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_bestseller_products',0),(4191,1,'en','XT_BESTSELLER_PRODUCTS_PAGE_TPL_TITLE','Template','admin','xt_bestseller_products',0),(4192,1,'de','XT_BESTSELLER_PRODUCTS_SHOW_TYPE_TITLE','Produktauswahl','admin','xt_bestseller_products',0),(4193,1,'en','XT_BESTSELLER_PRODUCTS_SHOW_TYPE_TITLE','Products to show','admin','xt_bestseller_products',0),(4194,1,'de','XT_BESTSELLER_PRODUCTS_SLAVE','Slaves + Normal','admin','xt_bestseller_products',0),(4195,1,'en','XT_BESTSELLER_PRODUCTS_SLAVE','Slaves + Normal','admin','xt_bestseller_products',0),(4196,1,'de','TEXT_BESTSELLER_PRODUCTS','Unsere Top Artikel','store','xt_bestseller_products',0),(4197,1,'en','TEXT_BESTSELLER_PRODUCTS','Our top products','store','xt_bestseller_products',0),(4198,1,'de','TEXT_HEADING_BESTSELLER_PRODUCTS','Top Artikel','store','xt_bestseller_products',0),(4199,1,'en','TEXT_HEADING_BESTSELLER_PRODUCTS','Top products','store','xt_bestseller_products',0),(4200,1,'de','XT_RECAPTCHA_PRIVATEKEY_TITLE','Privatekey','admin','xt_recaptcha',0),(4201,1,'en','XT_RECAPTCHA_PRIVATEKEY_TITLE','Privatekey','admin','xt_recaptcha',0),(4202,1,'de','XT_RECAPTCHA_PUBLICKEY_TITLE','Publickey','admin','xt_recaptcha',0),(4203,1,'en','XT_RECAPTCHA_PUBLICKEY_TITLE','Publickey','admin','xt_recaptcha',0),(4204,1,'de','XT_RECAPTCHA_THEME_TITLE','Theme','admin','xt_recaptcha',0),(4205,1,'en','XT_RECAPTCHA_THEME_TITLE','Theme','admin','xt_recaptcha',0),(4206,1,'de','TEXT_CALLBACK_DATA','Callback Data','admin','xt_payments',0),(4207,1,'en','TEXT_CALLBACK_DATA','Callback Data','admin','xt_payments',0),(4208,1,'de','XT_PAYMENTS_APPROVED_TITLE','Bestellstatus - Bestätigt','admin','xt_payments',0),(4209,1,'en','XT_PAYMENTS_APPROVED_TITLE','Approved status','admin','xt_payments',0),(4210,1,'de','XT_PAYMENTS_BUTTON_CAPTURE_PAYPAL_FUNDS','xt: Betrag von PayPal einziehen','admin','xt_payments',0),(4211,1,'en','XT_PAYMENTS_BUTTON_CAPTURE_PAYPAL_FUNDS','xt: Capture amount from PayPal','admin','xt_payments',0),(4212,1,'de','XT_PAYMENTS_CC_CARD_LOGO_TITLE','Credit Card Logo','admin','xt_payments',0),(4213,1,'en','XT_PAYMENTS_CC_CARD_LOGO_TITLE','Credit Card Logo','admin','xt_payments',0),(4214,1,'de','XT_PAYMENTS_COMMERCIAL_PAGE_URL_TITLE','Commercial Page Url','admin','xt_payments',0),(4215,1,'en','XT_PAYMENTS_COMMERCIAL_PAGE_URL_TITLE','Commercial Page Url','admin','xt_payments',0),(4216,1,'de','XT_PAYMENTS_DECLINED_TITLE','Bestellstatus - Abgelehnt','admin','xt_payments',0),(4217,1,'en','XT_PAYMENTS_DECLINED_TITLE','Declined status','admin','xt_payments',0),(4218,1,'de','XT_PAYMENTS_ERROR_TITLE','Bestellstatus - Fehler','admin','xt_payments',0),(4219,1,'en','XT_PAYMENTS_ERROR_TITLE','Error status','admin','xt_payments',0),(4220,1,'de','XT_PAYMENTS_HOLD_TITLE','Bestellstatus - Hold','admin','xt_payments',0),(4221,1,'en','XT_PAYMENTS_HOLD_TITLE','Hold status','admin','xt_payments',0),(4222,1,'de','XT_PAYMENTS_LIVE_PPPWEBSITEID_TITLE','Merchant Site Id','admin','xt_payments',0),(4223,1,'en','XT_PAYMENTS_LIVE_PPPWEBSITEID_TITLE','Merchant Site Id','admin','xt_payments',0),(4224,1,'de','XT_PAYMENTS_ORDER_STATUS_NEW_TITLE','New Order Status','admin','xt_payments',0),(4225,1,'en','XT_PAYMENTS_ORDER_STATUS_NEW_TITLE','New Order Status','admin','xt_payments',0),(4226,1,'de','XT_PAYMENTS_PAYPAL_BORDER_COLOR_TITLE','Farbe für PayPal Seite (Format: FF0000)','admin','xt_payments',0),(4227,1,'en','XT_PAYMENTS_PAYPAL_BORDER_COLOR_TITLE','Color for PayPal Page (Format: FF0000)','admin','xt_payments',0),(4228,1,'de','XT_PAYMENTS_PAYPAL_EXPRESS_ENABLED_TITLE','PayPal Express aktiviert','admin','xt_payments',0),(4229,1,'en','XT_PAYMENTS_PAYPAL_EXPRESS_ENABLED_TITLE','PayPal Express enabled','admin','xt_payments',0),(4230,1,'de','XT_PAYMENTS_PAYPAL_LOGO_TITLE','Logo URL für PayPal Zahlungsseite (Größe: 190x60px Nur über https aufrufbar!!!)','admin','xt_payments',0),(4231,1,'en','XT_PAYMENTS_PAYPAL_LOGO_TITLE','Logo URL for PayPal Page (Size: 190x60px only https request!!!)','admin','xt_payments',0),(4232,1,'de','XT_PAYMENTS_PAYPAL_MODE_SANDBOX_TITLE','PayPal Sandbox-Modus aktiviert (CPanel Wert)','admin','xt_payments',0),(4233,1,'en','XT_PAYMENTS_PAYPAL_MODE_SANDBOX_TITLE','PayPal sandbox mode enabled (CPanel Value)','admin','xt_payments',0),(4234,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_COMPLETED_TITLE','PayPal Express Bestellstatus  - Zahlung abgeschlossen','admin','xt_payments',0),(4235,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_COMPLETED_TITLE','PayPal Express Ordersstatus - Completed','admin','xt_payments',0),(4236,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_DENIED_TITLE','PayPal Express Bestellstatus  - Abgelehnt','admin','xt_payments',0),(4237,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_DENIED_TITLE','PayPal Express Ordersstatus - Denied','admin','xt_payments',0),(4238,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_FAILED_TITLE','PayPal Express Bestellstatus - Fehler','admin','xt_payments',0),(4239,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_FAILED_TITLE','PayPal Express Ordersstatus - Failed','admin','xt_payments',0),(4240,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_PENDING_TITLE','PayPal Express Bestellstatus - In Bearbeitung','admin','xt_payments',0),(4241,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_PENDING_TITLE','PayPal Express Ordersstatus - Pending','admin','xt_payments',0),(4242,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_REFUNDED_TITLE','PayPal Express Bestellstatus - Zurückgezahlt','admin','xt_payments',0),(4243,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_REFUNDED_TITLE','PayPal Express Ordersstatus - Refunded','admin','xt_payments',0),(4244,1,'de','XT_PAYMENTS_PAYPAL_ORDER_STATUS_REVERSED_TITLE','PayPal Express Bestellstatus  - Storniert','admin','xt_payments',0),(4245,1,'en','XT_PAYMENTS_PAYPAL_ORDER_STATUS_REVERSED_TITLE','PayPal Express Ordersstatus - Reversed','admin','xt_payments',0),(4246,1,'de','XT_PAYMENTS_PAYPAL_PAYMENT_TYPE_ORDER_TITLE','Kundenkonto sofort belasten','admin','xt_payments',0),(4247,1,'en','XT_PAYMENTS_PAYPAL_PAYMENT_TYPE_ORDER_TITLE','Capture money immediately','admin','xt_payments',0),(4248,1,'de','XT_PAYMENTS_PENDING_TITLE','Bestellstatus - In Bearbeitung','admin','xt_payments',0),(4249,1,'en','XT_PAYMENTS_PENDING_TITLE','Pending status','admin','xt_payments',0),(4250,1,'de','XT_PAYMENTS_REGISTERED_TITLE','Register','admin','xt_payments',0),(4251,1,'en','XT_PAYMENTS_REGISTERED_TITLE','Register','admin','xt_payments',0),(4252,1,'de','XT_PAYMENTS_REGISTRATION_SERVICE_URL_TITLE','Registration Service Url','admin','xt_payments',0),(4253,1,'en','XT_PAYMENTS_REGISTRATION_SERVICE_URL_TITLE','Registration Service Url','admin','xt_payments',0),(4254,1,'de','XT_PAYMENTS_REGISTRATION_SUCCESS_PAGE_URL_TITLE','Registration Success Page Url','admin','xt_payments',0),(4255,1,'en','XT_PAYMENTS_REGISTRATION_SUCCESS_PAGE_URL_TITLE','Registration Success Page Url','admin','xt_payments',0),(4256,1,'de','XT_PAYMENTS_TEST_MODE_TITLE','Testmodus','admin','xt_payments',0),(4257,1,'en','XT_PAYMENTS_TEST_MODE_TITLE','Check to use test mode','admin','xt_payments',0),(4258,1,'de','XT_PAYMENTS_TEST_PPPWEBSITEID_TITLE','Merchant Site Id','admin','xt_payments',0),(4259,1,'en','XT_PAYMENTS_TEST_PPPWEBSITEID_TITLE','Merchant Site Id','admin','xt_payments',0),(4260,1,'de','XT_PAYMENTS_TEXT_PAYPAL_CAPTURE_ERROR','Fehler:','admin','xt_payments',0),(4261,1,'en','XT_PAYMENTS_TEXT_PAYPAL_CAPTURE_ERROR','Error:','admin','xt_payments',0),(4262,1,'de','XT_PAYMENTS_TEXT_PAYPAL_CAPTURE_SUCCESS','Betrag erfolgreich eingezogen','admin','xt_payments',0),(4263,1,'en','XT_PAYMENTS_TEXT_PAYPAL_CAPTURE_SUCCESS','Capture of amount was successfull','admin','xt_payments',0),(4264,1,'de','XT_PAYMENTS_TEXT_PAYPAL_GET_FUNDS_ASK','Bestellsumme vom PayPal Konto einziehen?','admin','xt_payments',0),(4265,1,'en','XT_PAYMENTS_TEXT_PAYPAL_GET_FUNDS_ASK','Capture order amount from PayPal Account?','admin','xt_payments',0),(4266,1,'de','TEXT_PAYMENT_CARDS','Kredit / Debitkarte','both','xt_payments',0),(4267,1,'en','TEXT_PAYMENT_CARDS','Credit / Debit Card ','both','xt_payments',0),(4268,1,'de','TEXT_PAYMENT_CC_CARD','Kreditkarte','both','xt_payments',0),(4269,1,'en','TEXT_PAYMENT_CC_CARD','Creditcard','both','xt_payments',0),(4270,1,'de','TEXT_PAYMENT_DC_CARD','Debitkarte','both','xt_payments',0),(4271,1,'en','TEXT_PAYMENT_DC_CARD','Debitcard','both','xt_payments',0),(4272,1,'de','TEXT_TRANSACTION_TYPE_AUTH','Authorization of a certain amount to a credit card','both','xt_payments',0),(4273,1,'en','TEXT_TRANSACTION_TYPE_AUTH','Authorization of a certain amount to a credit card','both','xt_payments',0),(4274,1,'de','TEXT_TRANSACTION_TYPE_CHARGEBACK','Indicates that the credit card holder \\\"charges back\\\" a given charge','both','xt_payments',0),(4275,1,'en','TEXT_TRANSACTION_TYPE_CHARGEBACK','Indicates that the credit card holder \\\"charges back\\\" a given charge','both','xt_payments',0),(4276,1,'de','TEXT_TRANSACTION_TYPE_CREDIT','Refund of a charge','both','xt_payments',0),(4277,1,'en','TEXT_TRANSACTION_TYPE_CREDIT','Refund of a charge','both','xt_payments',0),(4278,1,'de','TEXT_TRANSACTION_TYPE_MODIFICATION','Indicates a change of transaction status after the original transaction is processed','both','xt_payments',0),(4279,1,'en','TEXT_TRANSACTION_TYPE_MODIFICATION','Indicates a change of transaction status after the original transaction is processed','both','xt_payments',0),(4280,1,'de','TEXT_TRANSACTION_TYPE_RETRIEVAL','Request for information','both','xt_payments',0),(4281,1,'en','TEXT_TRANSACTION_TYPE_RETRIEVAL','Request for information','both','xt_payments',0),(4282,1,'de','TEXT_TRANSACTION_TYPE_SALE','Charge','both','xt_payments',0),(4283,1,'en','TEXT_TRANSACTION_TYPE_SALE','Charge','both','xt_payments',0),(4284,1,'de','TEXT_TRANSACTION_TYPE_VOID','Cancelation of a charge','both','xt_payments',0),(4285,1,'en','TEXT_TRANSACTION_TYPE_VOID','Cancelation of a charge','both','xt_payments',0),(4286,1,'de','TEXT_XT_PAYMENTS','xt:Commerce Payments','both','xt_payments',0),(4287,1,'en','TEXT_XT_PAYMENTS','xt:Commerce Payments','both','xt_payments',0),(4288,1,'de','TEXT_XT_PAYMENTS_CONFIGURATION_LEFT','xt:Commerce Payments Konfiguration','both','xt_payments',0),(4289,1,'en','TEXT_XT_PAYMENTS_CONFIGURATION_LEFT','xt:Commerce Payments Configuration','both','xt_payments',0),(4290,1,'de','XT_PAYMENTS_PAYPAL_ERROR','PayPal Express hat einen Fehler gemeldet, bitte versuchen Sie es später noch einmal oder kontaktieren Sie unsere Kundenbetreuung.','both','xt_payments',0),(4291,1,'en','XT_PAYMENTS_PAYPAL_ERROR','PayPal Express has returned unexpected result, please try again later or contact our customer support.','both','xt_payments',0),(4292,1,'de','XT_PAYMENTS_REACTIVATION_THANKYOU_TEXT','Vielen Dank für ihre Registrierung bei xt:Commerce Payments. Ihr Shop ist nun automatisch mit unserem Zahlungsgateway verbunden.','both','xt_payments',0),(4293,1,'en','XT_PAYMENTS_REACTIVATION_THANKYOU_TEXT','Thank you for using to xt:Commerce Payments. Your license was already registered, it was just activated. ','both','xt_payments',0),(4294,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_CITY','Geben Sie bitte die Stadt ein','both','xt_payments',0),(4295,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_CITY','Please enter your City','both','xt_payments',0),(4296,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_COMPANY','Geben Sie bitte den Namen der Firma ein','both','xt_payments',0),(4297,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_COMPANY','Please enter your Company','both','xt_payments',0),(4298,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_EMAIL_ADDRESS','Geben Sie bitte Ihre E-Mail-Adresse ein','both','xt_payments',0),(4299,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_EMAIL_ADDRESS','Please enter your E-Mail Address','both','xt_payments',0),(4300,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_FIRST_NAME','Geben Sie bitte Ihren Vornamen ein','both','xt_payments',0),(4301,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_FIRST_NAME','Please enter your First Name','both','xt_payments',0),(4302,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_LAST_NAME','Geben Sie bitte Ihren Nachnamen ein','both','xt_payments',0),(4303,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_LAST_NAME','Please enter your Last Name','both','xt_payments',0),(4304,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_REGISTER_FIELD','Bitte geben Sie Ihren','both','xt_payments',0),(4305,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_REGISTER_FIELD','Please enter your','both','xt_payments',0),(4306,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_STREET_ADDRESS','Geben Sie bitte die Straße ein','both','xt_payments',0),(4307,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_STREET_ADDRESS','Please enter your Street Address','both','xt_payments',0),(4308,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_TELEPHONE','Geben Sie bitte Ihre Telefonnummer ein','both','xt_payments',0),(4309,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_TELEPHONE','Please enter your Telephone','both','xt_payments',0),(4310,1,'de','XT_PAYMENTS_REGISTRATION_EMPTY_ZIP','Geben Sie bitte die PLZ ein','both','xt_payments',0),(4311,1,'en','XT_PAYMENTS_REGISTRATION_EMPTY_ZIP','Please enter your ZIP','both','xt_payments',0),(4312,1,'de','XT_PAYMENTS_REGISTRATION_INVALID_EMAIL_ADDRESS','Geben Sie bitte Ihre gültige E-Mail-Adresse ein','both','xt_payments',0),(4313,1,'en','XT_PAYMENTS_REGISTRATION_INVALID_EMAIL_ADDRESS','Please enter valid E-Mail Address','both','xt_payments',0),(4314,1,'de','XT_PAYMENTS_REGISTRATION_INVALID_REGISTER_FIELD','Bitte geben Sie eine gültige','both','xt_payments',0),(4315,1,'en','XT_PAYMENTS_REGISTRATION_INVALID_REGISTER_FIELD','Please enter valid','both','xt_payments',0),(4316,1,'de','XT_PAYMENTS_REGISTRATION_ORDER_STATUSES_NOT_CONFIGURED','Ihre Bestellung Zustände werden nicht vollständig konfiguriert. Bitte folgen Sie dem obigen Link, um sie zu konfigurieren.','both','xt_payments',0),(4317,1,'en','XT_PAYMENTS_REGISTRATION_ORDER_STATUSES_NOT_CONFIGURED','Your order statuses are not fully configured. Please follow the link above to configure them.','both','xt_payments',0),(4318,1,'de','XT_PAYMENTS_REGISTRATION_PAYMENT_METHODS_CONFIGURATION_LINK','Zahlungsmethoden Konfiguration','both','xt_payments',0),(4319,1,'en','XT_PAYMENTS_REGISTRATION_PAYMENT_METHODS_CONFIGURATION_LINK','Payment methods Configuration','both','xt_payments',0),(4320,1,'de','XT_PAYMENTS_REGISTRATION_SHOP_CONFIGURATION_LINK','Plugin-Konfiguration','both','xt_payments',0),(4321,1,'en','XT_PAYMENTS_REGISTRATION_SHOP_CONFIGURATION_LINK','Plugin Configuration','both','xt_payments',0),(4322,1,'de','XT_PAYMENTS_REGISTRATION_THANKYOU_TEXT','Vielen Dank für ihre Registrierung bei xt:Commerce Payments. Ihr Shop ist nun automatisch mit unserem Zahlungsgateway verbunden.','both','xt_payments',0),(4323,1,'en','XT_PAYMENTS_REGISTRATION_THANKYOU_TEXT','Thank you for registering to xt:Commerce Payments. Your Shop is now connected to our Payment Gateway ','both','xt_payments',0),(4324,1,'de','XT_PAYMENTS_REGISTRATION_THANKYOU_TITLE','Registrierung Erfolgreich','both','xt_payments',0),(4325,1,'en','XT_PAYMENTS_REGISTRATION_THANKYOU_TITLE','Successfull registration','both','xt_payments',0),(4326,1,'de','TEXT_LOADING_PAYMENTS','Zahlungsarten werden geladen...','store','xt_payments',0),(4327,1,'en','TEXT_LOADING_PAYMENTS','Loading payment methods...','store','xt_payments',0),(4328,1,'de','XT_PAYMENTS_TEXT_EXPRESS_CART','<small>Wenn Sie auf <b>Express-Kauf mit PayPal</b> klicken, werden Sie automatisch zu PayPal weitergeleitet. Dort können Sie sich mit Ihrer PayPal-Email anmelden und die Zahlung freigeben. Sie kommen danach zurück in den Shop, wo Sie den Kauf dann endgültig abschließen können.</small>','store','xt_payments',0),(4329,1,'en','XT_PAYMENTS_TEXT_EXPRESS_CART','<small>If you push the button <b>Express-Buy with PayPal</b> you will be automatically forwarded to PayPal. Login with your PayPal account and authorise your payment. After authorizing your payment you come back to the shop and finalize your purchase.</small>','store','xt_payments',0),(4330,1,'de','TEXT_GOOGLE_PRODUCT_CAT','Google-Produktkategorie','admin','xt_google_product_categories',0),(4331,1,'en','TEXT_GOOGLE_PRODUCT_CAT','Google-Productcategorie','admin','xt_google_product_categories',0),(4332,1,'de','TEXT_XT_GOOGLE_PRODUCT_CATEGERIES_TAB','Google-Produktkategorie','admin','xt_google_product_categories',0),(4333,1,'en','TEXT_XT_GOOGLE_PRODUCT_CATEGERIES_TAB','Google-Productcategorie','admin','xt_google_product_categories',0),(4334,1,'de','XT_GOOGLE_PRODUCT_CATEGORIES_CAT_TITLE','Standard-Kategorie','admin','xt_google_product_categories',0),(4335,1,'en','XT_GOOGLE_PRODUCT_CATEGORIES_CAT_TITLE','Default-Catageory','admin','xt_google_product_categories',0),(4336,1,'de','XT_GOOGLE_PRODUCT_CATEGORIES_LANG_TITLE','Sprache','admin','xt_google_product_categories',0),(4337,1,'en','XT_GOOGLE_PRODUCT_CATEGORIES_LANG_TITLE','Language','admin','xt_google_product_categories',0),(4338,1,'de','XT_GOOGLE_PRODUCT_CATEGORIES_LENGTH_DROPDOWN_TITLE','Länge von Dropdown','admin','xt_google_product_categories',0),(4339,1,'en','XT_GOOGLE_PRODUCT_CATEGORIES_LENGTH_DROPDOWN_TITLE','Length of Dropdown','admin','xt_google_product_categories',0),(4340,1,'de','TEXT_XT_CLEANCACHE','Cache','admin','xt_cleancache',0),(4341,1,'en','TEXT_XT_CLEANCACHE','Cache','admin','xt_cleancache',0),(4342,1,'de','TEXT_XT_CLEANCACHE_LOGS','Cache entleeren log','admin','xt_cleancache',0),(4343,1,'en','TEXT_XT_CLEANCACHE_LOGS','Cache empty log','admin','xt_cleancache',0),(4344,1,'de','TEXT_XT_CLEANCACHE_TYPES','Cache entleeren','admin','xt_cleancache',0),(4345,1,'en','TEXT_XT_CLEANCACHE_TYPES','Cache empty','admin','xt_cleancache',0),(4346,1,'de','TEXT_XT_CACHE_DELETED','Cache gelöscht','both','xt_cleancache',0),(4347,1,'en','TEXT_XT_CACHE_DELETED','Cache deleted','both','xt_cleancache',0),(4348,1,'de','SX_FANCY_CLOUD_ZOOM_CZ_ENABLED_ON_MOBILE_TITLE','CloudZoom für Mobile aktiviert','admin','sx_fancy_cloud_zoom',0),(4349,1,'en','SX_FANCY_CLOUD_ZOOM_CZ_ENABLED_ON_MOBILE_TITLE','CloudZoom for mobil activated','admin','sx_fancy_cloud_zoom',0),(4350,1,'de','SX_FANCY_CLOUD_ZOOM_CZ_ENABLED_TITLE','CloudZoom aktiviert','admin','sx_fancy_cloud_zoom',0),(4351,1,'en','SX_FANCY_CLOUD_ZOOM_CZ_ENABLED_TITLE','CloudZoom activated','admin','sx_fancy_cloud_zoom',0),(4352,1,'de','SX_FANCY_CLOUD_ZOOM_FB_ENABLED_ON_MOBILE_TITLE','FancyBox für Mobile aktiviert','admin','sx_fancy_cloud_zoom',0),(4353,1,'en','SX_FANCY_CLOUD_ZOOM_FB_ENABLED_ON_MOBILE_TITLE','FancyBox for mobil aktivated','admin','sx_fancy_cloud_zoom',0),(4354,1,'de','SX_FANCY_CLOUD_ZOOM_FB_ENABLED_TITLE','FancyBox aktiviert','admin','sx_fancy_cloud_zoom',0),(4355,1,'en','SX_FANCY_CLOUD_ZOOM_FB_ENABLED_TITLE','FancyBox aktivated','admin','sx_fancy_cloud_zoom',0),(4356,1,'de','TEXT_NL2GO_NEWSLETTER_STATUS','Newsletter abonniert','admin','xt_newsletter2go',0),(4357,1,'en','TEXT_NL2GO_NEWSLETTER_STATUS','Receiving Newsletter','admin','xt_newsletter2go',0),(4358,1,'de','TEXT_XT_NEWSLETTER2GO_PORTAL','Newsletter2Go','admin','xt_newsletter2go',0),(4359,1,'en','TEXT_XT_NEWSLETTER2GO_PORTAL','Newsletter2Go','admin','xt_newsletter2go',0),(4360,1,'de','XT_NEWSLETTER2GO_API_KEY_TITLE','Schnittstellen Passwort','admin','xt_newsletter2go',0),(4361,1,'en','XT_NEWSLETTER2GO_API_KEY_TITLE','API key','admin','xt_newsletter2go',0),(4362,1,'de','XT_NEWSLETTER2GO_API_USER_TITLE','Schnittstellen Benutzername','admin','xt_newsletter2go',0),(4363,1,'en','XT_NEWSLETTER2GO_API_USER_TITLE','API Username','admin','xt_newsletter2go',0),(4364,1,'de','XT_NEWSLETTER2GO_CHECKBOX_TITLE','Newsletter-Checkbox in Anmeldung','admin','xt_newsletter2go',0),(4365,1,'en','XT_NEWSLETTER2GO_CHECKBOX_TITLE','Display Newsletter Checkbox at registration','admin','xt_newsletter2go',0),(4366,1,'de','XT_NEWSLETTER2GO_LOGIN_MAIL_TITLE','Benutzername','admin','xt_newsletter2go',0),(4367,1,'en','XT_NEWSLETTER2GO_LOGIN_MAIL_TITLE','Username','admin','xt_newsletter2go',0),(4368,1,'de','XT_NEWSLETTER2GO_LOGIN_PASS_TITLE','Passwort','admin','xt_newsletter2go',0),(4369,1,'en','XT_NEWSLETTER2GO_LOGIN_PASS_TITLE','Password','admin','xt_newsletter2go',0),(4370,1,'de','TEXT_NEWSLETTER_ACCEPT','Newsletter abonnieren','store','xt_newsletter2go',0),(4371,1,'en','TEXT_NEWSLETTER_ACCEPT','Receive Newsletter','store','xt_newsletter2go',0),(4372,1,'de','TEXT_BULK_GOODS','Sperrgut','admin','xt_ship_and_track',0),(4373,1,'en','TEXT_BULK_GOODS','Bulk goods','admin','xt_ship_and_track',0),(4374,1,'de','TEXT_CASH_ON_DELIVERY','Nachnahme','admin','xt_ship_and_track',0),(4375,1,'en','TEXT_CASH_ON_DELIVERY','Cash on delivery','admin','xt_ship_and_track',0),(4376,1,'de','TEXT_COLLECT_DATE','Abholdatum','admin','xt_ship_and_track',0),(4377,1,'en','TEXT_COLLECT_DATE','Collection date','admin','xt_ship_and_track',0),(4378,1,'de','TEXT_COLLECT_REQUEST_NO','Abholauftragsnr.','admin','xt_ship_and_track',0),(4379,1,'en','TEXT_COLLECT_REQUEST_NO','Collection request number','admin','xt_ship_and_track',0),(4380,1,'de','TEXT_COL_HERMES_SETTINGS_HINT_LABEL','Hinweis','admin','xt_ship_and_track',0),(4381,1,'en','TEXT_COL_HERMES_SETTINGS_HINT_LABEL','Hint','admin','xt_ship_and_track',0),(4382,1,'de','TEXT_DELETING_TRACKING','Tracking wird gelöscht','admin','xt_ship_and_track',0),(4383,1,'en','TEXT_DELETING_TRACKING','Deleting tracking','admin','xt_ship_and_track',0),(4384,1,'de','TEXT_HERMES_BULK_GOOD','Sperrgut','admin','xt_ship_and_track',0),(4385,1,'en','TEXT_HERMES_BULK_GOOD','Bulk goods','admin','xt_ship_and_track',0),(4386,1,'de','TEXT_HERMES_CHECKING_STATUS','Status wird abgerufen','admin','xt_ship_and_track',0),(4387,1,'en','TEXT_HERMES_CHECKING_STATUS','Requesting status','admin','xt_ship_and_track',0),(4388,1,'de','TEXT_HERMES_CHECK_SETTINGS','Hermes-Enstellungen überprüfen !','admin','xt_ship_and_track',0),(4389,1,'en','TEXT_HERMES_CHECK_SETTINGS','Check Hermes settings!','admin','xt_ship_and_track',0),(4390,1,'de','TEXT_HERMES_CREATING_ORDER','Hermes-Auftrag wird angelegt','admin','xt_ship_and_track',0),(4391,1,'en','TEXT_HERMES_CREATING_ORDER','Creating Hermes order','admin','xt_ship_and_track',0),(4392,1,'de','TEXT_HERMES_DELETING_ORDER','Hermes-Auftrag wird gelöscht','admin','xt_ship_and_track',0),(4393,1,'en','TEXT_HERMES_DELETING_ORDER','Deleting Hermes order','admin','xt_ship_and_track',0),(4394,1,'de','TEXT_HERMES_PRINT_SELECTION','Markierte drucken','admin','xt_ship_and_track',0),(4395,1,'en','TEXT_HERMES_PRINT_SELECTION','Print selected','admin','xt_ship_and_track',0),(4396,1,'de','TEXT_HERMES_PWD','Hermes ProfiPaketService Passwort','admin','xt_ship_and_track',0),(4397,1,'en','TEXT_HERMES_PWD','Hermes ProfiPaketService password','admin','xt_ship_and_track',0),(4398,1,'de','TEXT_HERMES_REFRESH','Status neuladen','admin','xt_ship_and_track',0),(4399,1,'en','TEXT_HERMES_REFRESH','Reload status','admin','xt_ship_and_track',0),(4400,1,'de','TEXT_HERMES_REFRESHING','Daten werden abgerufen','admin','xt_ship_and_track',0),(4401,1,'en','TEXT_HERMES_REFRESHING','Refreshing data','admin','xt_ship_and_track',0),(4402,1,'de','TEXT_HERMES_SANDBOX','Testmodus (Sandbox)','admin','xt_ship_and_track',0),(4403,1,'en','TEXT_HERMES_SANDBOX','Test mode (sandbox)','admin','xt_ship_and_track',0),(4404,1,'de','TEXT_HERMES_SETTINGS_HINT_TEXT','Bitte tragen Sie hier Ihre Hermes ProfiPaketService Zugangsdaten ein. Andere Zugänge (z.B. myhermes.de) funktionieren nicht! Falls Sie noch keinen ProfiPaketService Account haben, setzen Sie sich bitte mit dem Hermes Vertrieb in Verbindung.','admin','xt_ship_and_track',0),(4405,1,'en','TEXT_HERMES_SETTINGS_HINT_TEXT','Please enter your Hermes ProfiPaketService login information. Other credentials (eg myhermes.de) do not work! If you are not a ProfiPaketService user, please contact the Hermes sales department.','admin','xt_ship_and_track',0),(4406,1,'de','TEXT_HERMES_USER','Hermes ProfiPaketService Nutzer','admin','xt_ship_and_track',0),(4407,1,'en','TEXT_HERMES_USER','Hermes ProfiPaketService user','admin','xt_ship_and_track',0),(4408,1,'de','TEXT_PARCEL_CLASS','Paketklasse','admin','xt_ship_and_track',0),(4409,1,'en','TEXT_PARCEL_CLASS','Parcel class','admin','xt_ship_and_track',0),(4410,1,'de','TEXT_PRINT_LABEL','Paketschein drucken','admin','xt_ship_and_track',0),(4411,1,'en','TEXT_PRINT_LABEL','Print label','admin','xt_ship_and_track',0),(4412,1,'de','TEXT_REQUESTING_COLLECT','Abholung wird beauftragt','admin','xt_ship_and_track',0),(4413,1,'en','TEXT_REQUESTING_COLLECT','Requestion collection','admin','xt_ship_and_track',0),(4414,1,'de','TEXT_REQUEST_COLLECT','Abholung beauftragen','admin','xt_ship_and_track',0),(4415,1,'en','TEXT_REQUEST_COLLECT','Request collect','admin','xt_ship_and_track',0),(4416,1,'de','TEXT_SEND_MAIL','Info-Email an Kunden senden','admin','xt_ship_and_track',0),(4417,1,'en','TEXT_SEND_MAIL','Send Info-Email for customer','admin','xt_ship_and_track',0),(4418,1,'de','TEXT_SHIPPERS_PAGE','Webseite zur Sendungsverfolgung','admin','xt_ship_and_track',0),(4419,1,'en','TEXT_SHIPPERS_PAGE','Tracking webpage','admin','xt_ship_and_track',0),(4420,1,'de','TEXT_SHIPPER_CODE','Versender-Code','admin','xt_ship_and_track',0),(4421,1,'en','TEXT_SHIPPER_CODE','Shipper code','admin','xt_ship_and_track',0),(4422,1,'de','TEXT_SHIPPER_ENABLED','aktiv','admin','xt_ship_and_track',0),(4423,1,'en','TEXT_SHIPPER_ENABLED','enabled','admin','xt_ship_and_track',0),(4424,1,'de','TEXT_SHIPPER_NAME','Versender-Name','admin','xt_ship_and_track',0),(4425,1,'en','TEXT_SHIPPER_NAME','Shipper name','admin','xt_ship_and_track',0),(4426,1,'de','TEXT_SHIPPER_TRACKING_URL','URL zur Sendungsverfolgung','admin','xt_ship_and_track',0),(4427,1,'en','TEXT_SHIPPER_TRACKING_URL','Tracking URL','admin','xt_ship_and_track',0),(4428,1,'de','TEXT_TRACKING_MAIL_SENT','Versandinformationen wurden gesendet','admin','xt_ship_and_track',0),(4429,1,'en','TEXT_TRACKING_MAIL_SENT','Shipment information sent','admin','xt_ship_and_track',0),(4430,1,'de','TEXT_XT_HERMES_COLLECT','Abholungen','admin','xt_ship_and_track',0),(4431,1,'en','TEXT_XT_HERMES_COLLECT','Collections','admin','xt_ship_and_track',0),(4432,1,'de','TEXT_XT_HERMES_SETTINGS','Einstellungen','admin','xt_ship_and_track',0),(4433,1,'en','TEXT_XT_HERMES_SETTINGS','Settings','admin','xt_ship_and_track',0),(4434,1,'de','TEXT_XT_ORDERS_ID','xt-Bestellnummer','admin','xt_ship_and_track',0),(4435,1,'en','TEXT_XT_ORDERS_ID','xt order number','admin','xt_ship_and_track',0),(4436,1,'de','TEXT_XT_SHIPPER','Versender','admin','xt_ship_and_track',0),(4437,1,'en','TEXT_XT_SHIPPER','Shipper','admin','xt_ship_and_track',0),(4438,1,'de','TEXT_ADD_HERMES_PARCEL','Hermes Paket-Auftrag anlegen','both','xt_ship_and_track',0),(4439,1,'en','TEXT_ADD_HERMES_PARCEL','Create Hermes parcel order','both','xt_ship_and_track',0),(4440,1,'de','TEXT_ADD_TRACKING','Sendungsnummern hinzufügen','both','xt_ship_and_track',0),(4441,1,'en','TEXT_ADD_TRACKING','Add shipment number','both','xt_ship_and_track',0),(4442,1,'de','TEXT_HERMES_AMOUNT_CASH_ON_DELIVERY','Nachnahmebetrag','both','xt_ship_and_track',0),(4443,1,'en','TEXT_HERMES_AMOUNT_CASH_ON_DELIVERY','Amount cash on delivery','both','xt_ship_and_track',0),(4444,1,'de','TEXT_HERMES_ORDER_NO','Auftragsnummer','both','xt_ship_and_track',0),(4445,1,'en','TEXT_HERMES_ORDER_NO','Order number','both','xt_ship_and_track',0),(4446,1,'de','TEXT_HERMES_SHIPPING_ID','Sendungs-ID','both','xt_ship_and_track',0),(4447,1,'en','TEXT_HERMES_SHIPPING_ID','Shipment ID','both','xt_ship_and_track',0),(4448,1,'de','TEXT_HERMES_STATUS','Status','both','xt_ship_and_track',0),(4449,1,'en','TEXT_HERMES_STATUS','Status','both','xt_ship_and_track',0),(4450,1,'de','TEXT_TRACKING','Sendungsverfolgung','both','xt_ship_and_track',0),(4451,1,'en','TEXT_TRACKING','Shipment tracking','both','xt_ship_and_track',0),(4452,1,'de','TEXT_TRACKING_CODE','Sendungsnummer','both','xt_ship_and_track',0),(4453,1,'en','TEXT_TRACKING_CODE','Shipment number','both','xt_ship_and_track',0),(4454,1,'de','TEXT_TRACKING_SHIPPER','Versender','both','xt_ship_and_track',0),(4455,1,'en','TEXT_TRACKING_SHIPPER','Shipper','both','xt_ship_and_track',0),(4456,1,'de','TEXT_XT_HERMES_PARCELS','Hermes-Pakete','both','xt_ship_and_track',0),(4457,1,'en','TEXT_XT_HERMES_PARCELS','Hermes parcels','both','xt_ship_and_track',0),(4458,1,'de','TEXT_XT_SHIP_AND_TRACK','Hermes-Sendungen','both','xt_ship_and_track',0),(4459,1,'en','TEXT_XT_SHIP_AND_TRACK','Hermes parcels','both','xt_ship_and_track',0),(4460,0,'de','TEXT_DHL_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4461,0,'de','TEXT_DHL_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4462,0,'de','TEXT_DPD_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4463,0,'de','TEXT_DPD_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4464,0,'de','TEXT_FEDEX_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4465,0,'de','TEXT_FEDEX_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4466,0,'de','TEXT_GLS_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4467,0,'de','TEXT_GLS_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4468,0,'de','TEXT_GO_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4469,0,'de','TEXT_GO_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4470,0,'de','TEXT_HERMES_1_SHORT','unvollständig','both','xt_ship_and_track',0),(4471,0,'de','TEXT_HERMES_1_LONG','unvollständig erfasster Auftrag','both','xt_ship_and_track',0),(4472,0,'de','TEXT_HERMES_2_SHORT','vollständig','both','xt_ship_and_track',0),(4473,0,'de','TEXT_HERMES_2_LONG','vollständig erfasster Auftrag','both','xt_ship_and_track',0),(4474,0,'de','TEXT_HERMES_4_SHORT','Adr. prüfen','both','xt_ship_and_track',0),(4475,0,'de','TEXT_HERMES_4_LONG','Adresse prüfen, da es zu Problemen bei der Zustellung kommen kann','both','xt_ship_and_track',0),(4476,0,'de','TEXT_HERMES_8_SHORT','gedruckt','both','xt_ship_and_track',0),(4477,0,'de','TEXT_HERMES_8_LONG','Auftrag wurde ausgedruckt','both','xt_ship_and_track',0),(4478,0,'de','TEXT_HERMES_16_SHORT','storniert','both','xt_ship_and_track',0),(4479,0,'de','TEXT_HERMES_16_LONG','storniert','both','xt_ship_and_track',0),(4480,0,'de','TEXT_HERMES_10010_SHORT','abgeholt','both','xt_ship_and_track',0),(4481,0,'de','TEXT_HERMES_10010_LONG','Sendung wurde abgeholt und in das HLG-System eingeschleust.','both','xt_ship_and_track',0),(4482,0,'de','TEXT_HERMES_10020_SHORT','unterwegs','both','xt_ship_and_track',0),(4483,0,'de','TEXT_HERMES_10020_LONG','Sendung ist auf dem Weg zum Empfänger.','both','xt_ship_and_track',0),(4484,0,'de','TEXT_HERMES_10030_SHORT','auf Tour','both','xt_ship_and_track',0),(4485,0,'de','TEXT_HERMES_10030_LONG','Sendung ist auf dem Weg zum Empfänger.','both','xt_ship_and_track',0),(4486,0,'de','TEXT_HERMES_10040_SHORT','zugestellt','both','xt_ship_and_track',0),(4487,0,'de','TEXT_HERMES_10040_LONG','Sendung wurde zugestellt.','both','xt_ship_and_track',0),(4488,0,'de','TEXT_HERMES_10050_SHORT','N.A.','both','xt_ship_and_track',0),(4489,0,'de','TEXT_HERMES_10050_LONG','Empfänger nicht angetroffen. Neuer Zustellversuch wird durchgeführt.','both','xt_ship_and_track',0),(4490,0,'de','TEXT_HERMES_10060_SHORT','3xN.A.','both','xt_ship_and_track',0),(4491,0,'de','TEXT_HERMES_10060_LONG','Empfänger zum 3.Mal nicht angetroffen. Bitte wenden Sie sich an den Kundenservice. Sollten Sie sich nicht bei uns melden und der 4.Zustellversuch erfolglos sein, geht die Sendung an Sie zurück.','both','xt_ship_and_track',0),(4492,0,'de','TEXT_HERMES_10070_SHORT','Schaden','both','xt_ship_and_track',0),(4493,0,'de','TEXT_HERMES_10070_LONG','Sendung konnte wegen Beschädigung nicht zugestellt werden. Bitte wenden Sie sich an den Kundenservice.','both','xt_ship_and_track',0),(4494,0,'de','TEXT_HERMES_10080_SHORT','Rückversand','both','xt_ship_and_track',0),(4495,0,'de','TEXT_HERMES_10080_LONG','Empfänger wurde nicht angetroffen. Sendung geht an Absender zurück.','both','xt_ship_and_track',0),(4496,0,'de','TEXT_HERMES_10090_SHORT','verweigert','both','xt_ship_and_track',0),(4497,0,'de','TEXT_HERMES_10090_LONG','Empfänger verweigert Sendungsannahme. Sendung geht an Absender zurück.','both','xt_ship_and_track',0),(4498,0,'de','TEXT_HERMES_10100_SHORT','F-Adresse','both','xt_ship_and_track',0),(4499,0,'de','TEXT_HERMES_10100_LONG','Zustelladresse ist falsch. Sendung konnte nicht zugestellt werden. Bitte wenden Sie sich an den Kundenservice.','both','xt_ship_and_track',0),(4500,0,'de','TEXT_HERMES_10110_SHORT','R-erfolglos','both','xt_ship_and_track',0),(4501,0,'de','TEXT_HERMES_10110_LONG','Die Abholung der Retoure konnte nicht durchgeführt werden. Bitte wenden Sie sich an den Kundenservice.','both','xt_ship_and_track',0),(4502,0,'de','TEXT_HERMES_10120_SHORT','Erhalt RV','both','xt_ship_and_track',0),(4503,0,'de','TEXT_HERMES_10120_LONG','Sendung war nicht zustellbar und ist wieder beim Absender eingetroffen.','both','xt_ship_and_track',0),(4504,0,'de','TEXT_HERMES__2_SHORT','Retoure','both','xt_ship_and_track',0),(4505,0,'de','TEXT_HERMES__2_LONG','Auftrag ist ein Retourenauftrag','both','xt_ship_and_track',0),(4506,0,'de','TEXT_HERMES__3_SHORT','Etiketten','both','xt_ship_and_track',0),(4507,0,'de','TEXT_HERMES__3_LONG','Auftrag beinhaltet eine Etikettenbestellung','both','xt_ship_and_track',0),(4508,0,'de','TEXT_HERMES_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4509,0,'de','TEXT_HERMES_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4510,0,'de','TEXT_ILOXX_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4511,0,'de','TEXT_ILOXX_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4512,0,'de','TEXT_POSTOE_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4513,0,'de','TEXT_POSTOE_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4514,0,'de','TEXT_POSTCH_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4515,0,'de','TEXT_POSTCH_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4516,0,'de','TEXT_TNT_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4517,0,'de','TEXT_TNT_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4518,0,'de','TEXT_UPS_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4519,0,'de','TEXT_UPS_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4520,0,'de','TEXT_SCHENKER_0_SHORT','manuell hinzugefügt','both','xt_ship_and_track',0),(4521,0,'de','TEXT_SCHENKER_0_LONG','manuell hinzugefügt','both','xt_ship_and_track',0),(4522,1,'de','XT_RESCISSION_SHOW_CONFIRMATION_TITLE','Muss bestätigt werden','admin','xt_rescission',0),(4523,1,'en','XT_RESCISSION_SHOW_CONFIRMATION_TITLE','Needs to be confirmed','admin','xt_rescission',0),(4524,1,'de','XT_RESCISSION_SHOW_TITLE','Aktivieren','admin','xt_rescission',0),(4525,1,'en','XT_RESCISSION_SHOW_TITLE','Activate','admin','xt_rescission',0),(4526,1,'de','ERROR_RESCISSION_ACCEPTED','Sie müssen die Widerrufsinformationen akzeptieren um die Bestellung abschließen zu können.','store','xt_rescission',0),(4527,1,'en','ERROR_RESCISSION_ACCEPTED','Sie müssen die Widerrufsinformationen akzeptieren um die Bestellung abschließen zu können.','store','xt_rescission',0),(4528,1,'de','XT_RESCISSION_ACCEPT','Ich habe die Informationen zu meinem Widerrufsrecht gelesen.','store','xt_rescission',0),(4529,1,'en','XT_RESCISSION_ACCEPT','I have read the informations about my right of rescission.','store','xt_rescission',0),(4530,1,'de','XT_RESCISSION_CONFIRMATION','Widerrufsrecht anzeigen','store','xt_rescission',0),(4531,1,'en','XT_RESCISSION_CONFIRMATION','Display right of rescission','store','xt_rescission',0),(4532,1,'de','XT_RESCISSION_HEADING','Informationen zum Widerrufsrecht','store','xt_rescission',0),(4533,1,'en','XT_RESCISSION_HEADING','Informations about right of rescission','store','xt_rescission',0),(4534,1,'de','TEXT_PRODUCTS_CANONICAL_MASTER','Canonical Tag für Slaves','admin','xt_canonical',0),(4535,1,'en','TEXT_PRODUCTS_CANONICAL_MASTER','Canonical tag for Slaves','admin','xt_canonical',0),(4536,1,'de','XT_CANONICAL_APPLY_TO_ALL_SLAVES_TITLE','Master URL bei Slaves verwenden','admin','xt_canonical',0),(4537,1,'en','XT_CANONICAL_APPLY_TO_ALL_SLAVES_TITLE','Use Master Url for all Slaves','admin','xt_canonical',0),(4538,1,'de','TEXT_ELEFUNDS_ACCOUNT','Elefunds Account','admin','xt_elefunds',0),(4539,1,'en','TEXT_ELEFUNDS_ACCOUNT','Elefunds Account','admin','xt_elefunds',0),(4540,1,'de','TEXT_ELEFUNDS_ACCOUNT_ALREADY_CREATED','<b>Elefunds Konto wurde bereits erstellt</b>','admin','xt_elefunds',0),(4541,1,'en','TEXT_ELEFUNDS_ACCOUNT_ALREADY_CREATED','<b>Elefunds Account is already registered!</b>','admin','xt_elefunds',0),(4542,1,'de','XT_ELEFUNDS_API_KEY_TITLE','API Key','admin','xt_elefunds',0),(4543,1,'en','XT_ELEFUNDS_API_KEY_TITLE','API Key','admin','xt_elefunds',0),(4544,1,'de','XT_ELEFUNDS_CLIENT_ID_TITLE','Kunden ID','admin','xt_elefunds',0),(4545,1,'en','XT_ELEFUNDS_CLIENT_ID_TITLE','Client ID','admin','xt_elefunds',0),(4546,1,'de','XT_ELEFUNDS_COLOR_TITLE','Farbe','admin','xt_elefunds',0),(4547,1,'en','XT_ELEFUNDS_COLOR_TITLE','Color','admin','xt_elefunds',0),(4548,1,'de','XT_ELEFUNDS_FORM_SELECTOR_TITLE','Form Selektor','admin','xt_elefunds',0),(4549,1,'en','XT_ELEFUNDS_FORM_SELECTOR_TITLE','Form selector','admin','xt_elefunds',0),(4550,1,'de','XT_ELEFUNDS_REGISTERED_EMAIL_TITLE','Elefunds-Account-Mail','admin','xt_elefunds',0),(4551,1,'en','XT_ELEFUNDS_REGISTERED_EMAIL_TITLE','Elefunds Account-Mail','admin','xt_elefunds',0),(4552,1,'de','XT_ELEFUNDS_STATUS_CANCELLED_MAPPING_TITLE','Bestellstatus \\\"cancelled\\\"','admin','xt_elefunds',0),(4553,1,'en','XT_ELEFUNDS_STATUS_CANCELLED_MAPPING_TITLE','Order status cancelled','admin','xt_elefunds',0),(4554,1,'de','XT_ELEFUNDS_STATUS_COMPLETED_MAPPING_TITLE','Bestellstatus \\\"Abgeschlossen\\\"','admin','xt_elefunds',0),(4555,1,'en','XT_ELEFUNDS_STATUS_COMPLETED_MAPPING_TITLE','Order status \\\"completed\\\"','admin','xt_elefunds',0),(4556,1,'de','XT_ELEFUNDS_STATUS_PENDING_MAPPING_TITLE','Bestellstatus \\\"offen\\\"','admin','xt_elefunds',0),(4557,1,'en','XT_ELEFUNDS_STATUS_PENDING_MAPPING_TITLE','Order status pending','admin','xt_elefunds',0),(4558,1,'de','XT_ELEFUNDS_THEME_TITLE','Theme','admin','xt_elefunds',0),(4559,1,'en','XT_ELEFUNDS_THEME_TITLE','Theme','admin','xt_elefunds',0),(4560,1,'de','XT_ELEFUNDS_TOTAL_SELECTOR_TITLE','Preis Selektor','admin','xt_elefunds',0),(4561,1,'en','XT_ELEFUNDS_TOTAL_SELECTOR_TITLE','Total selector','admin','xt_elefunds',0),(4562,1,'de','TEXT_CREATE_ELEFUNDS_ACCOUNT','Jetzt anmelden','both','xt_elefunds',0),(4563,1,'en','TEXT_CREATE_ELEFUNDS_ACCOUNT','Jetzt anmelden','both','xt_elefunds',0),(4564,1,'de','TEXT_ELEFUNDS_ACCOUNT_ERROR','Account failed to register.','both','xt_elefunds',0),(4565,1,'en','TEXT_ELEFUNDS_ACCOUNT_ERROR','Account failed to register.','both','xt_elefunds',0),(4566,1,'de','TEXT_ELEFUNDS_ACCOUNT_REGED','Ihr Konto bei Elefunds wurde erfolgreich erstellt, Sie erhalten in kürze eine E-Mail welche Ihnen die Zugangsdaten mitteilt. Klicken Sie auf \\\"Weiter\\\" um die Installation fortzusetzen.','both','xt_elefunds',0),(4567,1,'en','TEXT_ELEFUNDS_ACCOUNT_REGED','Elefunds account was successfully created. You will receive an email upon registraion verification, click \\\"next\\\" to proceed.','both','xt_elefunds',0),(4568,1,'de','TEXT_ELEFUNDS_EMAIL','Email','both','xt_elefunds',0),(4569,1,'en','TEXT_ELEFUNDS_EMAIL','Email','both','xt_elefunds',0),(4570,1,'de','TEXT_SELECT_RECIEVER','Bitte wählen Sie die Hilfsorganisationen aus, für die Ihre Kunden aufrunden und spenden können.','both','xt_elefunds',0),(4571,1,'en','TEXT_SELECT_RECIEVER','Bitte wählen Sie die Hilfsorganisationen aus, für die Ihre Kunden aufrunden und spenden können.','both','xt_elefunds',0),(4572,1,'de','TEXT_SKIP','Überspringen / Weiter','both','xt_elefunds',0),(4573,1,'en','TEXT_SKIP','Skip / Next','both','xt_elefunds',0),(4574,1,'de','_ERROR_ELEFUNDS_EMAIL','Please enter an E-mail address','both','xt_elefunds',0),(4575,1,'en','_ERROR_ELEFUNDS_EMAIL','Bitte geben Sie eine E-Mail Adresse an!','both','xt_elefunds',0),(4576,1,'de','_ERROR_ELEFUNDS_NO_RECIEVERS','Bitte wählen mindestens eine Hilfsorganisationen aus, für die Ihre Kunden aufrunden und spenden können.','both','xt_elefunds',0),(4577,1,'en','_ERROR_ELEFUNDS_NO_RECIEVERS','Please select at least one Charity.','both','xt_elefunds',0);
/*!40000 ALTER TABLE `xt_language_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_languages`
--

DROP TABLE IF EXISTS `xt_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_status` int(1) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `content_language` char(2) NOT NULL,
  `code` char(2) NOT NULL,
  `allow_edit` int(1) NOT NULL DEFAULT '1',
  `image` varchar(64) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `language_charset` text NOT NULL,
  `default_currency` varchar(64) NOT NULL,
  `font` varchar(255) NOT NULL,
  `font_size` int(2) NOT NULL,
  `font_position` int(2) NOT NULL,
  `setlocale` varchar(255) NOT NULL,
  PRIMARY KEY (`languages_id`),
  UNIQUE KEY `code_2` (`code`),
  KEY `IDX_LANGUAGES_NAME` (`name`),
  KEY `code` (`code`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_languages`
--

LOCK TABLES `xt_languages` WRITE;
/*!40000 ALTER TABLE `xt_languages` DISABLE KEYS */;
INSERT INTO `xt_languages` VALUES (1,1,'Deutsch','de','de',1,'de.gif',NULL,'utf-8','EUR','DejaVuSans-Bold.ttf',9,17,'de_DE;de-DE;de'),(2,1,'English','en','en',1,'en.gif',NULL,'utf-8','EUR','DejaVuSans-Bold.ttf',9,17,'en_US;en-US;en');
/*!40000 ALTER TABLE `xt_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_mail_templates`
--

DROP TABLE IF EXISTS `xt_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_mail_templates` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_type` varchar(255) NOT NULL,
  `tpl_special` varchar(64) DEFAULT '0',
  `email_from` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_reply` varchar(255) DEFAULT NULL,
  `email_reply_name` varchar(255) DEFAULT NULL,
  `email_forward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_mail_templates`
--

LOCK TABLES `xt_mail_templates` WRITE;
/*!40000 ALTER TABLE `xt_mail_templates` DISABLE KEYS */;
INSERT INTO `xt_mail_templates` VALUES (1,'new_password','0','test@home.lt','','','',''),(2,'create_account','0','test@home.lt','','','',''),(5,'password_optin','0','test@home.lt','','','',''),(6,'send_order','0','test@home.lt','','','','test@home.lt'),(8,'update_order-admin','ALL','test@home.lt','','','',''),(9,'contact_mail-admin','0','test@home.lt','','','',''),(10,'contact_mail','ALL','test@home.lt','','','',''),(11,'review-notification-mail','0','test@home.lt','','','',''),(12,'tracking_links','-1','test@home.lt',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `xt_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_mail_templates_attachment`
--

DROP TABLE IF EXISTS `xt_mail_templates_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_mail_templates_attachment` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_id` int(11) NOT NULL,
  `attachment_status` int(1) NOT NULL DEFAULT '1',
  `attachment_file` varchar(255) NOT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_mail_templates_attachment`
--

LOCK TABLES `xt_mail_templates_attachment` WRITE;
/*!40000 ALTER TABLE `xt_mail_templates_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_mail_templates_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_mail_templates_content`
--

DROP TABLE IF EXISTS `xt_mail_templates_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_mail_templates_content` (
  `tpl_id` int(11) NOT NULL DEFAULT '0',
  `language_code` char(2) NOT NULL DEFAULT '0',
  `mail_body_html` text,
  `mail_body_txt` text,
  `mail_subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tpl_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_mail_templates_content`
--

LOCK TABLES `xt_mail_templates_content` WRITE;
/*!40000 ALTER TABLE `xt_mail_templates_content` DISABLE KEYS */;
INSERT INTO `xt_mail_templates_content` VALUES (1,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hallo {$address_data.customers_firstname} {$address_data.customers_lastname},</h1>\r\n			<p>Sie erhalten diese automatische E-Mail aufgrund Ihrer Anfrage nach Ihrem Passwort.</p>\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">Ihr neues Passwort:<br />\r\n			<b>{$NEW_PASSWORD}</b></p>\r\n			<p>Aus Sicherheitsgründen bitten wir Sie, Ihr neues Passwort gleich nach dem einloggen zu ändern.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$address_data.customers_firstname} {$address_data.customers_lastname},\r\n\r\nSie erhalten diese automatische E-Mail aufgrund Ihrer Anfrage nach Ihrem Passwort.\r\n      \r\nIhr neues Passwort: {$NEW_PASSWORD}\r\n\r\nAus Sicherheitsgründen bitten wir Sie, Ihr neues Passwort gleich nach dem einloggen zu ändern.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Ihr Passwort wurde geändert'),(2,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hallo {$address_data.default.customers_firstname} {$address_data.default.customers_lastname},</h1>\r\n			<p>Soeben haben wir Ihr Kundenkonto angelegt, als Kunde haben Sie folgende Vorteile in unserem Shop.</p>\r\n			<p>\r\n				<b>Dauerhafter Warenkorb</b> - Sie können Artikel in Ihren Warenkorb legen und dieser wird bis zu Ihrem nächsten Besuch gespeichert.<br />\r\n				<b>Adressbuch</b> - Sie können nun verschiedene Liefer- und Rechnungsadressen verwalten.<br />\r\n				<b>Bestellhistorie</b> - Übersicht über getätigte und aktuelle Bestellungen.\r\n			</p>\r\n			<p>Sollten Sie Fragen zu unserem Angebot haben, zögern Sie bitte nicht uns zu kontaktieren.</p>\r\n			<p style=\"background: #FFE0E4; padding: 10px;\"><b>Achtung:</b> Diese E-Mail-Adresse wurde uns von einem Kunden bekannt gegeben. Falls Sie sich nicht angemeldet haben, antworten Sie bitte auf diese E-Mail.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$address_data.default.customers_firstname} {$address_data.default.customers_lastname},\r\n\r\nSoeben haben wir Ihr Kundenkonto angelegt, als Kunde haben Sie folgende Vorteile in unserem Shop.\r\n\r\nDauerhafter Warenkorb -   Sie können Artikel in Ihren Warenkorb legen und dieser wird bis zu Ihrem nächsten Besuch gespeichert.\r\nAdressbuch - Sie können nun verschiedene Liefer- und Rechnungsadressen verwalten.\r\nBestellhistorie - Übersicht über getätigte und aktuelle Bestellungen.\r\n\r\nSollten Sie Fragen zu unserem Angebot haben, zögern Sie bitte nicht uns zu kontaktieren.\r\n\r\nAchtung: Diese E-Mail-Adresse wurde uns von einem Kunden bekannt gegeben. Falls Sie sich nicht angemeldet haben, antworten Sie bitte auf diese E-Mail.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Ihr Kundenkonto wurde angelegt'),(5,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hallo {$address_data.customers_firstname} {$address_data.customers_lastname},</h1>\r\n			<p>Für Ihre E-Mail Adresse wurde ein neues Passwort angefordert. Um die Anfrage zu bestätigen, klicken Sie bitte den folgenden Bestätigungslink.</p>\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">Ihr Bestätigungs-Link:<br />\r\n			<b><a href=\"{$remember_link}\" style=\"color:#FFFFFF; text-decoration: none\">{$remember_link}</a></b></p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$address_data.customers_firstname} {$address_data.customers_lastname},\r\n\r\nFür Ihre E-Mail Adresse wurde ein neues Passwort angefordert.\r\n\r\nUm die Anfrage zu bestätigen, kopieren Sie bitte den folgenden Bestätigungslink in Ihren Browser.\r\n      \r\nIhr Bestätigungs-Link:\r\n{$remember_link}\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Passwortanfrage bestätigen'),(6,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\r\n<!-- // Begin Content \\\\ -->\r\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\r\n    <tr>\r\r\n        <td colspan=\"6\" class=\"left\" align=\"left\">\r\r\n            <h1 style=\"font-size:14px;\">Ihre Bestellung zur Kontrolle</h1>\r\r\n            Hallo {$order_data.delivery_firstname} {$order_data.delivery_lastname},<br /><br /> vielen Dank f&uuml;r Ihre Bestellung in unserem Online Shop.</td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_ORDER_NUMBER}</h2>\r\r\n            {$order_data.orders_id}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_ORDER_DATE}</h2>\r\r\n            {$order_data.date_purchased}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{if $order_data.customers_cid}{txt key=TEXT_CUSTOMER_ID}</h2>\r\r\n            {$order_data.customers_cid}{/if}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_EMAIL}</h2>\r\r\n            {$order_data.customers_email_address}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_ADDRESS}</h2>\r\r\n            {if $order_data.delivery_company}{$order_data.delivery_company}<br />{/if}\r\r\n            {if $order_data.delivery_company_2}{$order_data.delivery_company_2}<br />{/if}\r\r\n            {if $order_data.delivery_company_3}{$order_data.delivery_company_3}<br />{/if}\r\r\n            {$order_data.delivery_firstname} {$order_data.delivery_lastname}<br />\r\r\n            {$order_data.delivery_street_address}<br />\r\r\n            {if $order_data.delivery_suburb}{$order_data.delivery_suburb}<br />{/if}\r\r\n            {$order_data.delivery_postcode} {$order_data.delivery_city}<br />\r\r\n            {if $order_data.delivery_state}{$order_data.delivery_state}<br />{/if}\r\r\n            {$order_data.delivery_country}<br />\r\r\n            {if $order_data.delivery_phone OR $order_data.delivery_mobile_phone OR $order_data.delivery_fax}<br />{/if}\r\r\n            {if $order_data.delivery_phone}{txt key=TEXT_PHONE} {$order_data.delivery_phone}<br />{/if}\r\r\n			{if $order_data.delivery_mobile_phone}{txt key=TEXT_MOBILE_PHONE} {$order_data.delivery_mobile_phone}<br />{/if}\r\r\n            {if $order_data.delivery_fax}{txt key=TEXT_FAX} {$order_data.delivery_fax}<br />{/if}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_ADDRESS}</h2>\r\r\n            {if $order_data.billing_company}{$order_data.billing_company}<br />{/if}\r\r\n            {if $order_data.billing_company_2}{$order_data.billing_company_2}<br />{/if}\r\r\n            {if $order_data.billing_company_3}{$order_data.billing_company_3}<br />{/if}\r\r\n            {$order_data.billing_firstname} {$order_data.billing_lastname}<br />\r\r\n            {$order_data.billing_street_address}<br />\r\r\n            {if $order_data.billing_suburb}{$order_data.billing_suburb}<br />{/if}\r\r\n            {$order_data.billing_postcode} {$order_data.billing_city}<br />\r\r\n            {if $order_data.billing_state}{$order_data.billing_state}<br />{/if}\r\r\n            {$order_data.billing_country}<br />\r\r\n            {if $order_data.billing_phone OR $order_data.billing_mobile_phone OR $order_data.billing_fax}<br />{/if}\r\r\n            {if $order_data.billing_phone}{txt key=TEXT_PHONE} {$order_data.billing_phone}<br />{/if}\r\r\n			{if $order_data.billing_mobile_phone}{txt key=TEXT_MOBILE_PHONE} {$order_data.billing_mobile_phone}<br />{/if}\r\r\n            {if $order_data.billing_fax}{txt key=TEXT_FAX} {$order_data.billing_fax}<br />{/if}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_METHOD}</h2>\r\r\n            {$order_data.shipping_code}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_METHOD}</h2>\r\r\n            {$order_data.payment_name}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {if $shipping_info_html}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_INFOS}</h2>\r\r\n            {$shipping_info_html}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {/if}\r\r\n    {if $payment_info_html}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_INFOS}</h2>\r\r\n            {$payment_info_html}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>    \r\r\n    {/if}\r\r\n    {if $order_data.comments}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_COMMENTS}</h2>\r\r\n            {$order_data.comments}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {/if}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">Ihre Bestellung</h2>\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td align=\"left\" class=\"left bold myfont\" style=\"font-weight:bold;\">{txt key=TEXT_QTY}</td>\r\r\n        <td align=\"left\" class=\"left bold\" style=\"font-weight:bold;\">{txt key=TEXT_ARTICLE}</td>\r\r\n        <td align=\"left\" class=\"left bold\" style=\"font-weight:bold;\">{txt key=TEXT_PRODUCTS_MODEL}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_SINGLE_PRICE}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_PRODUCTS_DISCOUNT}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_TOTAL_PRICE}</td>\r\r\n    </tr>\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {foreach name=aussen item=order_values from=$order_products}\r\r\n    <tr class=\"order-products\">\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_quantity} x</td>\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_name}</td>\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_model}</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_values.products_price.formated}</td>\r\r\n        <td align=\"right\" class=\"right\">{if $order_values.products_discount != \"\"}{$order_values.products_discount}%{else}-{/if}</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_values.products_final_price.formated}</td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {$order_values.products_information.html_content}\r\r\n    {/foreach}\r\r\n    <tr class=\"order-subtotal\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right bold\"  style=\"font-weight:bold;\">{txt key=TEXT_SUB_TOTAL}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$total.product_total.formated}</td>\r\r\n    </tr>\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {foreach name=aussen item=order_total_values from=$order_total_data}\r\r\n    <tr class=\"order-shipping\" >\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right\">{$order_total_values.orders_total_name}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_total_values.orders_total_price.formated}</td>\r\r\n    </tr>\r\r\n    {/foreach}\r\r\n    {foreach name=aussen item=tax_data from=$total.total_tax}\r\r\n    <tr class=\"order-tax\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right\">MwSt. {$tax_data.tax_key}%:</td>\r\r\n        <td align=\"right\" class=\"right\">{$tax_data.tax_value.formated}</td>\r\r\n    </tr>\r\r\n    {/foreach}\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr class=\"order-total\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_TOTAL}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$total.total.formated}</td>\r\r\n    </tr>\r\r\n</table>\r\r\n<!-- // End Content \\\\ -->\r\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$order_data.delivery_firstname} {$order_data.delivery_lastname},\r\n\r\nDies ist nur ein Standardtext welchen Sie im Administrationsbereich unter \"Inhalte->E-Mail-Manager\" ändern können.\r\n\r\nIhre Daten nochmals zur Kontrolle:\r\n------------------------------------------------------------------------------------------------------------\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_data.orders_id}\r\n{txt key=TEXT_ORDER_DATE}: {$order_data.date_purchased}\r\n\r\n{txt key=TEXT_SHIPPING_ADDRESS}\r\n{if $order_data.delivery_company}{$order_data.delivery_company}{/if}\r\n{$order_data.delivery_firstname} {$order_data.delivery_lastname}\r\n{$order_data.delivery_street_address}\r\n{if $order_data.delivery_suburb} {$order_data.delivery_suburb}{/if} \r\n{$order_data.delivery_postcode} {$order_data.delivery_city}\r\n{if $order_data.delivery_state}{$order_data.delivery_state}{/if}\r\n{$order_data.delivery_country}\r\n\r\n{txt key=TEXT_PAYMENT_ADDRESS}\r\n{if $order_data.billing_company} {$order_data.billing_company}{/if} \r\n{$order_data.billing_firstname} {$order_data.billing_lastname}\r\n{$order_data.billing_street_address}\r\n{if $order_data.billing_suburb} {$order_data.billing_suburb}{/if}\r\n{$order_data.billing_postcode} {$order_data.billing_city}\r\n{if $order_data.billing_state}{$order_data.billing_state}{/if}\r\n{$order_data.billing_country}\r\n\r\n{txt key=TEXT_PAYMENT_METHOD}: {$order_data.payment_name}\r\n{if $payment_info_txt}\r\n{txt key=TEXT_PAYMENT_INFOS}\r\n{$payment_info_txt}\r\n{/if}\r\n{txt key=TEXT_SHIPPING_METHOD}: {$order_data.shipping_code}\r\n	\r\n------------------------------------------------------------------------------------------------------------\r\n{foreach name=aussen item=order_values from=$order_products}\r\n{$order_values.products_quantity} x {$order_values.products_name} = {$order_values.products_final_price.formated} {if $order_values.products_discount != \"\"}({txt key=TEXT_PRODUCTS_DISCOUNT}: {$order_values.products_discount}%){/if}\r\n\r\n{/foreach}\r\n\r\n{txt key=TEXT_SUB_TOTAL}: {$total.product_total.formated}\r\n{foreach name=aussen item=order_total_values from=$order_total_data}\r\n{$order_total_values.orders_total_name}:{$order_total_values.orders_total_price.formated}\r\n{$order_values.products_information.txt_content}\r\n{/foreach} \r\n{foreach name=aussen item=tax_data from=$total.total_tax}\r\n{txt key=TEXT_TAX} {$tax_data.tax_key}%:{$tax_data.tax_value.formated}\r\n{/foreach}\r\n{txt key=TEXT_TOTAL}: {$total.total.formated}\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Ihre Bestellung zur Kontrolle'),(8,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hallo {$order_data.billing_firstname} {$order_data.billing_lastname},</h1>\r\n			<p>Der Status Ihrer Bestellung <b>{$order_data.orders_id}</b> wurde geändert.</p>\r\n			{if $comments}\r\n			<p style=\"background: #FF7B00; padding: 10px;\"><b>Anmerkungen und Kommentare zu Ihrer Bestellung:</b> {$comments}</p>\r\n			{/if}\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">Neuer Status:<br />\r\n			<b>{$status}</b></p>\r\n			<p>Sollten Sie Fragen zu unserem Angebot haben, zögern Sie bitte nicht uns zu kontaktieren.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$order_data.billing_firstname} {$order_data.billing_lastname},\r\n\r\nDer Status Ihrer Bestellung #{$order_data.orders_id} wurde geändert.\r\n\r\n{if $comments}\r\nAnmerkungen und Kommentare zu Ihrer Bestellung: \r\n{$comments}\r\n{/if}\r\n\r\nNeuer Status: {$status}\r\n\r\nSollten Sie Fragen zu unserem Angebot haben, zögern Sie bitte nicht uns zu kontaktieren.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Status Ihrer Bestellung wurde geändert'),(9,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<p>Anfrage über Kontaktformular:</p>\r\n			<h2 style=\"font-size:12px;\">{txt key=TEXT_CONTACT}</h2>\r\n			<p>{txt key=TEXT_FIRSTNAME}: {$customers_firstname}</p>\r\n			<p>{txt key=TEXT_LASTNAME}: {$customers_lastname}</p>\r\n			<p>{txt key=TEXT_COMPANY}: {$company}</p>\r\n			<p>{txt key=TEXT_PHONE}: {$telefone}</p>\r\n			<p>{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}</p>\r\n			<p>{txt key=TEXT_ORDER_NUMBER}: {$order_no}</p>\r\n			<p>{txt key=TEXT_EMAIL}: <a href=\"mailto:{$mail}\">{$mail}</a></p>\r\n			<p>{txt key=TEXT_MESSAGE}: {$message}</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Anfrage über Kontaktformular:\r\n{txt key=TEXT_CONTACT}\r\n{txt key=TEXT_FIRSTNAME}: {$customers_firstname}\r\n{txt key=TEXT_LASTNAME}: {$customers_lastname}\r\n{txt key=TEXT_COMPANY}: {$company}\r\n{txt key=TEXT_PHONE}: {$telefone}\r\n{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_no}\r\n{txt key=TEXT_EMAIL}: {$mail}\r\n{txt key=TEXT_MESSAGE}:	{$message}\r\n\r\n{$_system_footer_txt}','Anfrage über Kontaktformular'),(10,'de','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hallo {$customers_firstname} {$customers_lastname},</h1>\r\n			<p>Wir haben Ihre Nachricht erhalten und werden Sie in kürze Kontaktieren</p>\r\n			<h2 style=\"font-size:12px;\">>{txt key=TEXT_CONTACT}</h2>\r\n			<p>{txt key=TEXT_FIRSTNAME}: {$customers_firstname}</p>\r\n			<p>{txt key=TEXT_LASTNAME}: {$customers_lastname}</p>\r\n		    <p>{txt key=TEXT_COMPANY}: {$company}</p>\r\n	        <p>{txt key=TEXT_PHONE}: {$telefone}</p>\r\n			<p>{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}</p>\r\n	        <p>{txt key=TEXT_ORDER_NUMBER}: {$order_no}</p>\r\n	        <p>{txt key=TEXT_MESSAGE}: {$message}</p>\r\n            <p style=\"background: #FFE0E4; padding: 10px;\"><b>Achtung:</b> Diese E-Mail-Adresse wurde uns von einem Kunden bekannt gegeben. Falls Sie sich nicht angemeldet haben, antworten Sie bitte auf diese E-Mail.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$customers_firstname} {$customers_lastname},\r\nWir haben Ihre Nachricht erhalten und werden Sie in kürze Kontaktieren\r\n{txt key=TEXT_CONTACT}\r\n{txt key=TEXT_FIRSTNAME}: {$customers_firstname}\r\n{txt key=TEXT_LASTNAME}: {$customers_lastname}\r\n{txt key=TEXT_COMPANY}: {$company}\r\n{txt key=TEXT_PHONE}: {$telefone}\r\n{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_no}\r\n{txt key=TEXT_MESSAGE}:	{$message}\r\nAchtung: Diese E-Mail-Adresse wurde uns von einem Kunden bekannt gegeben. Falls Sie sich nicht angemeldet haben, antworten Sie bitte auf diese E-Mail.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Ihre Anfrage'),(1,'en','{include file=\"file:_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hello {$address_data.customers_firstname} {$address_data.customers_lastname},</h1>\r\n			<p>You receive this email, due to your request to reset the password.</p>\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">Your new password:<br />\r\n			<b>{$NEW_PASSWORD}</b></p>\r\n			<p>For security reasons we ask you to change this temporary password immediately after the first login.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hallo {$address_data.customers_firstname} {$address_data.customers_lastname},\r\n\r\nYou receive this email, due to your request to reset the password.\r\n      \r\nYour new password: {$NEW_PASSWORD}\r\n\r\nFor security reasons we ask you to change this temporary password immediately after the first login.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Your password was changed'),(2,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hello {$address_data.default.customers_firstname} {$address_data.default.customers_lastname},</h1>\r\n			<p>We successfully created your customer account. As a registered customer you get the following personal benefits.</p>\r\n			<p>\r\n				<b>Permanent shopping cart</b> - all saved products will be stored in your shopping cart untill your next visit<br />\r\n				<b>Addressbook</b> - you can manage different and various billing and shipping addresses.<br />\r\n				<b>Order history</b> - overview of actual and past orders.\r\n			</p>\r\n			<p>You got questions regarding our offers, please do not hesitate to contact us.</p>\r\n			<p style=\"background: #FFE0E4; padding: 10px;\"><b>Attention:</b> This email adress was submitted to us by a customer. If you did not register with us, please feel free to contact us immediately.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hello {$address_data.default.customers_firstname} {$address_data.default.customers_lastname},\r\n\r\nWe successfully created your customer account. As a registered customer you get the following personal benefits.\r\n\r\nPermanent shopping cart -   all saved products will be stored in your shopping cart untill your next visit.\r\nddressbook - you can manage different and various billing and shipping addresses.\r\nOrder history - overview of actual and past orders.\r\n\r\nYou got questions regarding our offers, please do not hesitate to contact us.\r\n\r\nAttention: This email adress was submitted to us by a customer. If you did not register with us, please feel free to contact us immediately.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Your customer account was created'),(5,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hello {$address_data.customers_firstname} {$address_data.customers_lastname},</h1>\r\n			<p>For your email address a request to reset the password was received. To confirm this inquiry, please click the following confirmation link, or copy the url into you browser.</p>\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">Your confirmation link:<br />\r\n			<b><a href=\"{$remember_link}\" style=\"color:#FFFFFF; text-decoration: none\">{$remember_link}</a></b></p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hello {$address_data.customers_firstname} {$address_data.customers_lastname},\r\n\r\nFor your email address a request to reset the password was received.\r\n\r\nTo confirm this inquiry, please click the following confirmation link, or copy the url into you browser.\r\n      \r\nYour confirmation link:\r\n{$remember_link}\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Confirmation password reset'),(6,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\r\n<!-- // Begin Content \\\\ -->\r\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\r\n    <tr>\r\r\n        <td colspan=\"6\" class=\"left\" align=\"left\">\r\r\n            <h1 style=\"font-size:14px;\">Your order for review</h1>\r\r\n            Hello {$order_data.delivery_firstname} {$order_data.delivery_lastname},<br /><br /> thank you for your order in our online shop.</td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_ORDER_NUMBER}</h2>\r\r\n            {$order_data.orders_id}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_ORDER_DATE}</h2>\r\r\n            {$order_data.date_purchased}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{if $order_data.customers_cid}{txt key=TEXT_CUSTOMER_ID}</h2>\r\r\n            {$order_data.customers_cid}{/if}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_EMAIL}</h2>\r\r\n            {$order_data.customers_email_address}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_ADDRESS}</h2>\r\r\n            {if $order_data.delivery_company}{$order_data.delivery_company}<br />{/if}\r\r\n            {if $order_data.delivery_company_2}{$order_data.delivery_company_2}<br />{/if}\r\r\n            {if $order_data.delivery_company_3}{$order_data.delivery_company_3}<br />{/if}\r\r\n            {$order_data.delivery_firstname} {$order_data.delivery_lastname}<br />\r\r\n            {$order_data.delivery_street_address}<br />\r\r\n            {if $order_data.delivery_suburb}{$order_data.delivery_suburb}<br />{/if}\r\r\n            {$order_data.delivery_postcode} {$order_data.delivery_city}<br />\r\r\n            {if $order_data.delivery_state}{$order_data.delivery_state}<br />{/if}\r\r\n            {$order_data.delivery_country}<br />\r\r\n            {if $order_data.delivery_phone OR $order_data.delivery_mobile_phone OR $order_data.delivery_fax}<br />{/if}\r\r\n            {if $order_data.delivery_phone}{txt key=TEXT_PHONE} {$order_data.delivery_phone}<br />{/if}\r\r\n			{if $order_data.delivery_mobile_phone}{txt key=TEXT_MOBILE_PHONE} {$order_data.delivery_mobile_phone}<br />{/if}\r\r\n            {if $order_data.delivery_fax}{txt key=TEXT_FAX} {$order_data.delivery_fax}<br />{/if}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_ADDRESS}</h2>\r\r\n            {if $order_data.billing_company}{$order_data.billing_company}<br />{/if}\r\r\n            {if $order_data.billing_company_2}{$order_data.billing_company_2}<br />{/if}\r\r\n            {if $order_data.billing_company_3}{$order_data.billing_company_3}<br />{/if}\r\r\n            {$order_data.billing_firstname} {$order_data.billing_lastname}<br />\r\r\n            {$order_data.billing_street_address}<br />\r\r\n            {if $order_data.billing_suburb}{$order_data.billing_suburb}<br />{/if}\r\r\n            {$order_data.billing_postcode} {$order_data.billing_city}<br />\r\r\n            {if $order_data.billing_state}{$order_data.billing_state}<br />{/if}\r\r\n            {$order_data.billing_country}<br />\r\r\n            {if $order_data.billing_phone OR $order_data.billing_mobile_phone OR $order_data.billing_fax}<br />{/if}\r\r\n            {if $order_data.billing_phone}{txt key=TEXT_PHONE} {$order_data.billing_phone}<br />{/if}\r\r\n			{if $order_data.billing_mobile_phone}{txt key=TEXT_MOBILE_PHONE} {$order_data.billing_mobile_phone}<br />{/if}\r\r\n            {if $order_data.billing_fax}{txt key=TEXT_FAX} {$order_data.billing_fax}<br />{/if}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_METHOD}</h2>\r\r\n            {$order_data.shipping_code}\r\r\n        </td>\r\r\n        <td colspan=\"3\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_METHOD}</h2>\r\r\n            {$order_data.payment_name}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {if $shipping_info_html}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_SHIPPING_INFOS}</h2>\r\r\n            {$shipping_info_html}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {/if}\r\r\n    {if $payment_info_html}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_PAYMENT_INFOS}</h2>\r\r\n            {$payment_info_html}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {/if}\r\r\n    {if $order_data.comments}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">{txt key=TEXT_COMMENTS}</h2>\r\r\n            {$order_data.comments}\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {/if}\r\r\n    <tr>\r\r\n        <td colspan=\"6\" align=\"left\">\r\r\n            <h2 style=\"font-size:12px;\">Your order</h2>\r\r\n        </td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td align=\"left\" class=\"left bold myfont\" style=\"font-weight:bold;\">{txt key=TEXT_QTY}</td>\r\r\n        <td align=\"left\" class=\"left bold\" style=\"font-weight:bold;\">{txt key=TEXT_ARTICLE}</td>\r\r\n        <td align=\"left\" class=\"left bold\" style=\"font-weight:bold;\">{txt key=TEXT_PRODUCTS_MODEL}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_SINGLE_PRICE}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_PRODUCTS_DISCOUNT}</td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_TOTAL_PRICE}</td>\r\r\n    </tr>\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {foreach name=aussen item=order_values from=$order_products}\r\r\n    <tr class=\"order-products\">\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_quantity} x</td>\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_name}</td>\r\r\n        <td align=\"left\" class=\"left\">{$order_values.products_model}</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_values.products_price.formated}</td>\r\r\n        <td align=\"right\" class=\"right\">{if $order_values.products_discount != \"\"}{$order_values.products_discount}%{else}-{/if}</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_values.products_final_price.formated}</td>\r\r\n    </tr>\r\r\n    <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {$order_values.products_information.html_content}\r\r\n    {/foreach}\r\r\n    <tr class=\"order-subtotal\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right bold\"  style=\"font-weight:bold;\">{txt key=TEXT_SUB_TOTAL}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$total.product_total.formated}</td>\r\r\n    </tr>\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    {foreach name=aussen item=order_total_values from=$order_total_data}\r\r\n    <tr class=\"order-shipping\" >\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right\">{$order_total_values.orders_total_name}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$order_total_values.orders_total_price.formated}</td>\r\r\n    </tr>\r\r\n    {/foreach}\r\r\n    {foreach name=aussen item=tax_data from=$total.total_tax}\r\r\n    <tr class=\"order-tax\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right\">MwSt. {$tax_data.tax_key}%:</td>\r\r\n        <td align=\"right\" class=\"right\">{$tax_data.tax_value.formated}</td>\r\r\n    </tr>\r\r\n    {/foreach}\r\r\n     <tr>\r\r\n        <td colspan=\"6\"><br /></td>\r\r\n    </tr>\r\r\n    <tr class=\"order-total\">\r\r\n        <td colspan=\"4\"></td>\r\r\n        <td align=\"right\" class=\"right bold\" style=\"font-weight:bold;\">{txt key=TEXT_TOTAL}:</td>\r\r\n        <td align=\"right\" class=\"right\">{$total.total.formated}</td>\r\r\n    </tr>\r\r\n</table>\r\r\n<!-- // End Content \\\\ -->\r\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hello {$order_data.delivery_firstname} {$order_data.delivery_lastname},\r\n\r\nThis is a standard text, which you can edit in your admin interface at \"content->E-Mail-Manager\".\r\n\r\nPlease review your entries:\r\n------------------------------------------------------------------------------------------------------------\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_data.orders_id}\r\n{txt key=TEXT_ORDER_DATE}: {$order_data.date_purchased}\r\n\r\n{txt key=TEXT_SHIPPING_ADDRESS}\r\n{if $order_data.delivery_company}{$order_data.delivery_company}{/if}\r\n{$order_data.delivery_firstname} {$order_data.delivery_lastname}\r\n{$order_data.delivery_street_address}\r\n{if $order_data.delivery_suburb} {$order_data.delivery_suburb}{/if} \r\n{$order_data.delivery_postcode} {$order_data.delivery_city}\r\n{if $order_data.delivery_state}{$order_data.delivery_state}{/if}\r\n{$order_data.delivery_country}\r\n\r\n{txt key=TEXT_PAYMENT_ADDRESS}\r\n{if $order_data.billing_company} {$order_data.billing_company}{/if} \r\n{$order_data.billing_firstname} {$order_data.billing_lastname}\r\n{$order_data.billing_street_address}\r\n{if $order_data.billing_suburb} {$order_data.billing_suburb}{/if}\r\n{$order_data.billing_postcode} {$order_data.billing_city}\r\n{if $order_data.billing_state}{$order_data.billing_state}{/if}\r\n{$order_data.billing_country}\r\n\r\n{txt key=TEXT_PAYMENT_METHOD}: {$order_data.payment_name}\r\n{if $payment_info_txt}\r\n{txt key=TEXT_PAYMENT_INFOS}\r\n{$payment_info_txt}\r\n{/if}\r\n{txt key=TEXT_SHIPPING_METHOD}: {$order_data.shipping_code}\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{foreach name=aussen item=order_values from=$order_products}\r\n{$order_values.products_quantity} x {$order_values.products_name} = {$order_values.products_final_price.formated} {if $order_values.products_discount != \"\"}({txt key=TEXT_PRODUCTS_DISCOUNT}: {$order_values.products_discount}%){/if}\r\n\r\n{/foreach}\r\n\r\n{txt key=TEXT_SUB_TOTAL}: {$total.product_total.formated}\r\n{foreach name=aussen item=order_total_values from=$order_total_data}\r\n{$order_total_values.orders_total_name}:{$order_total_values.orders_total_price.formated}\r\n{$order_values.products_information.txt_content}\r\n{/foreach} \r\n{foreach name=aussen item=tax_data from=$total.total_tax}\r\n{txt key=TEXT_TAX} {$tax_data.tax_key}%:{$tax_data.tax_value.formated}\r\n{/foreach}\r\n{txt key=TEXT_TOTAL}: {$total.total.formated}\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Please review your order'),(8,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hello {$order_data.billing_firstname} {$order_data.billing_lastname},</h1>\r\n			<p>Status of your order <b>{$order_data.orders_id}</b> changed.</p>\r\n			{if $comments}\r\n			<p style=\"background: #FF7B00; padding: 10px;\"><b>Remarks and comments regarding your order:</b> {$comments}</p>\r\n			{/if}\r\n			<p style=\"color:#000000; background: #FF7B00; padding: 10px;\">New status:<br />\r\n			<b>{$status}</b></p>\r\n			<p>You got questions regarding our offers, please do not hesitate to contact us.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hello {$order_data.billing_firstname} {$order_data.billing_lastname},\r\n\r\nStatus of your order #{$order_data.orders_id} changed.\r\n\r\n{if $comments}\r\nRemarks and comments regarding your order: \r\n{$comments}\r\n{/if}\r\n\r\nNew status: {$status}\r\n\r\nYou got questions regarding our offers, please do not hesitate to contact us.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','Status of your order changed'),(9,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<p>Contact form request:</p>\r\n			<h2 style=\"font-size:12px;\">{txt key=TEXT_CONTACT}</h2>\r\n			<p>{txt key=TEXT_FIRSTNAME}: {$customers_firstname}</p>\r\n			<p>{txt key=TEXT_LASTNAME}: {$customers_lastname}</p>\r\n			<p>{txt key=TEXT_COMPANY}: {$company}</p>\r\n			<p>{txt key=TEXT_PHONE}: {$telefone}</p>\r\n			<p>{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}</p>\r\n			<p>{txt key=TEXT_ORDER_NUMBER}: {$order_no}</p>\r\n			<p>{txt key=TEXT_EMAIL}: <a href=\"mailto:{$mail}\">{$mail}</a></p>\r\n			<p>{txt key=TEXT_MESSAGE}: {$message}</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Contact form request:\r\n{txt key=TEXT_CONTACT}\r\n{txt key=TEXT_FIRSTNAME}: {$customers_firstname}\r\n{txt key=TEXT_LASTNAME}: {$customers_lastname}\r\n{txt key=TEXT_COMPANY}: {$company}\r\n{txt key=TEXT_PHONE}: {$telefone}\r\n{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_no}\r\n{txt key=TEXT_EMAIL}: {$mail}\r\n{txt key=TEXT_MESSAGE}:	{$message}\r\n\r\n{$_system_footer_txt}','contact form request'),(10,'en','{include file=\"file:$_system_root_templates/email/email_top.html\"}\r\n<!-- // Begin Content \\\\ -->\r\n<table class=\"email-content\" cellpadding=\"0\" cellspacing=\"0\" width=\"660\" style=\"font: 12px Arial, Helvetica, sans-serif;color: #484848;\">\r\n	<tr>\r\n		<td>\r\n			<h1 style=\"font-size:14px;\">Hello {$customers_firstname} {$customers_lastname},</h1>\r\n			<p>We received your message and we will get in touch with you soon.</p>\r\n			<h2 style=\"font-size:12px;\">>{txt key=TEXT_CONTACT}</h2>\r\n			<p>{txt key=TEXT_FIRSTNAME}: {$customers_firstname}</p>\r\n			<p>{txt key=TEXT_LASTNAME}: {$customers_lastname}</p>\r\n		    <p>{txt key=TEXT_COMPANY}: {$company}</p>\r\n	        <p>{txt key=TEXT_PHONE}: {$telefone}</p>\r\n			<p>{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}</p>\r\n	        <p>{txt key=TEXT_ORDER_NUMBER}: {$order_no}</p>\r\n	        <p>{txt key=TEXT_MESSAGE}: {$message}</p>\r\n            <p style=\"background: #FFE0E4; padding: 10px;\"><b>Attention:</b> This email adress was submitted to us by a customer. If you did not register with us, please feel free to contact us immediately.</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<!-- // End Content \\\\ -->\r\n{include file=\"file:$_system_root_templates/email/email_bottom.html\"}','Hello {$customers_firstname} {$customers_lastname},\r\n  \r\nWe received your message and we will get in touch with you soon.\r\n\r\n{txt key=TEXT_CONTACT}\r\n{txt key=TEXT_FIRSTNAME}: {$customers_firstname}\r\n{txt key=TEXT_LASTNAME}: {$customers_lastname}\r\n{txt key=TEXT_COMPANY}: {$company}\r\n{txt key=TEXT_PHONE}: {$telefone}\r\n{txt key=TEXT_MOBILE_PHONE}: {$mobile_phone}\r\n{txt key=TEXT_ORDER_NUMBER}: {$order_no}\r\n{txt key=TEXT_MESSAGE}:	{$message}\r\n\r\nAttention: This email adress was submitted to us by a customer. If you did not register with us, please feel free to contact us immediately.\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_txt}','your contact request'),(11,'de','<p>Eine neue Bewertung wartet auf Freischaltung</p>\r\n <p>{txt key=TEXT_ORDER_NUMBER}: {$orders_id} </p> \r\n <p>{txt key=TEXT_REVIEW_DATE}: {$review_date} </p>\r\n<p>{txt key=TEXT_REVIEW_STATUS}: {$review_status} </p>\r\n<p>{txt key=TEXT_REVIEW_LANGUAGE_CODE}: {$language_code} </p>\r\n<p>{txt key=TEXT_REVIEW_TEXT}: {$review_text} </p>\r\n<p>{txt key=TEXT_REVIEW_RATING}:  {$review_rating}</p>\r\n','<p>Eine neue Bewertung wartet auf Freischaltung</p>\r\n <p>{txt key=TEXT_ORDER_NUMBER}: {$orders_id} </p> \r\n <p>{txt key=TEXT_REVIEW_DATE}: {$review_date} </p>\r\n<p>{txt key=TEXT_REVIEW_STATUS}: {$review_status} </p>\r\n<p>{txt key=TEXT_REVIEW_LANGUAGE_CODE}: {$language_code} </p>\r\n<p>{txt key=TEXT_REVIEW_TEXT}: {$review_text} </p>\r\n<p>{txt key=TEXT_REVIEW_RATING}:  {$review_rating}</p>\r\n','New product review'),(11,'en','<p>A client submitted a new review</p>\r\n <p>{txt key=TEXT_ORDER_NUMBER}: {$orders_id} </p> \r\n <p>{txt key=TEXT_REVIEW_DATE}: {$review_date} </p>\r\n<p>{txt key=TEXT_REVIEW_STATUS}: {$review_status} </p>\r\n<p>{txt key=TEXT_REVIEW_LANGUAGE_CODE}: {$language_code} </p>\r\n<p>{txt key=TEXT_REVIEW_TEXT}: {$review_text} </p>\r\n<p>{txt key=TEXT_REVIEW_RATING}:  {$review_rating}</p>\r\n','<p>Eine neue Bewertung wartet auf Freischaltung</p>\r\n <p>{txt key=TEXT_ORDER_NUMBER}: {$orders_id} </p> \r\n <p>{txt key=TEXT_REVIEW_DATE}: {$review_date} </p>\r\n<p>{txt key=TEXT_REVIEW_STATUS}: {$review_status} </p>\r\n<p>{txt key=TEXT_REVIEW_LANGUAGE_CODE}: {$language_code} </p>\r\n<p>{txt key=TEXT_REVIEW_TEXT}: {$review_text} </p>\r\n<p>{txt key=TEXT_REVIEW_RATING}:  {$review_rating}</p>\r\n','New product review'),(12,'de','Hallo, {if $customer->customers_id}{$customer->customer_default_address.customers_firstname} {$customer->customer_default_address.customers_lastname},{/if}<br />\r\n<br />\r\nNachfolgend finden Sie Links zur Sendungsverfolgung Ihrer Bestellung.<br />\r\n<br />\r\n{foreach item=tracking_info from=$tracking_infos}\r\n{$tracking_info.shipper_name} <a href=\"{$tracking_info.shipper_tracking_url}\">{$tracking_info.tracking_code}</a><br />\r\n{/foreach}\r\n<br />\r\n\r\nDie Links zur Sendungsverfolgung finden Sie ebenso in Ihrem Kundenkonto unter {$_system_base_url}{$lang}/customer<br />\r\n<br />\r\n\r\n------------------------------------------------------------------------------------------------------------<br />\r\n{$_system_footer_html}','Hallo, {if $customer->customers_id}{$customer->customer_default_address.customers_firstname} {$customer->customer_default_address.customers_lastname},{/if}\r\n\r\nNachfolgend finden Sie Links zur Sendungsverfolgung Ihrer Bestellung.\r\n\r\n{foreach item=tracking_info from=$tracking_infos}\r\n{$tracking_info.shipper_name} <a href=\"{$tracking_info.shipper_tracking_url}\">{$tracking_info.tracking_code}</a>\\n\r\n{/foreach}\r\n\r\n\r\nDie Links zur Sendungsverfolgung finden Sie ebenso in Ihrem Kundenkonto unter {$_system_base_url}{$lang}/customer\r\n\r\n\r\n------------------------------------------------------------------------------------------------------------\r\n{$_system_footer_html}','Sendungsverfolgung');
/*!40000 ALTER TABLE `xt_mail_templates_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_manufacturers`
--

DROP TABLE IF EXISTS `xt_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `manufacturers_name` varchar(32) DEFAULT NULL,
  `manufacturers_image` varchar(255) DEFAULT NULL,
  `manufacturers_status` int(1) NOT NULL DEFAULT '1',
  `manufacturers_sort` int(4) NOT NULL DEFAULT '0',
  `products_sorting` varchar(32) DEFAULT NULL,
  `products_sorting2` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_manufacturers`
--

LOCK TABLES `xt_manufacturers` WRITE;
/*!40000 ALTER TABLE `xt_manufacturers` DISABLE KEYS */;
INSERT INTO `xt_manufacturers` VALUES (1,NULL,'Manufacturer A',NULL,1,0,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,NULL,'Manufacturer B',NULL,1,0,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,NULL,'Manufacturer C',NULL,1,0,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,NULL,'Manufacturer D',NULL,1,0,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `xt_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_manufacturers_info`
--

DROP TABLE IF EXISTS `xt_manufacturers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `manufacturers_description` text,
  `manufacturers_url` varchar(255) DEFAULT NULL,
  `manufacturers_store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturers_id`,`language_code`,`manufacturers_store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_manufacturers_info`
--

LOCK TABLES `xt_manufacturers_info` WRITE;
/*!40000 ALTER TABLE `xt_manufacturers_info` DISABLE KEYS */;
INSERT INTO `xt_manufacturers_info` VALUES (1,'de','Beschreibung Hersteller A',NULL,1),(2,'de','Beschreibung Hersteller B',NULL,1),(3,'de','Beschreibung Hersteller C',NULL,1),(4,'de','Beschreibung Hersteller C',NULL,1),(1,'en','Description Manufacturer A',NULL,1),(2,'en','Description Manufacturer B',NULL,1),(3,'en','Description Manufacturer C',NULL,1),(4,'en','Description Manufacturer D',NULL,1);
/*!40000 ALTER TABLE `xt_manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_manufacturers_permission`
--

DROP TABLE IF EXISTS `xt_manufacturers_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_manufacturers_permission` (
  `pid` int(11) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_manufacturers_permission`
--

LOCK TABLES `xt_manufacturers_permission` WRITE;
/*!40000 ALTER TABLE `xt_manufacturers_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_manufacturers_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media`
--

DROP TABLE IF EXISTS `xt_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `type` varchar(6) DEFAULT NULL,
  `class` varchar(64) DEFAULT NULL,
  `download_status` enum('free','order') NOT NULL DEFAULT 'free',
  `status` enum('true','false') NOT NULL DEFAULT 'true',
  `owner` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `max_dl_count` int(11) NOT NULL DEFAULT '0',
  `max_dl_days` int(11) NOT NULL DEFAULT '0',
  `total_downloads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file` (`file`),
  KEY `type` (`type`),
  KEY `class` (`class`),
  KEY `download_status` (`download_status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media`
--

LOCK TABLES `xt_media` WRITE;
/*!40000 ALTER TABLE `xt_media` DISABLE KEYS */;
INSERT INTO `xt_media` VALUES (1,'shuwa.jpg','images','product','free','true',1,NULL,'0000-00-00 00:00:00',0,0,0),(2,'ScreenShot2014-12-17at173841.png','images','product','free','true',1,NULL,'0000-00-00 00:00:00',0,0,0),(3,'ScreenShot2014-12-17at174256.png','images','product','free','true',1,NULL,'0000-00-00 00:00:00',0,0,0),(4,'ScreenShot2014-12-18at151040.png','images','product','free','true',1,NULL,'0000-00-00 00:00:00',0,0,0),(5,'atsiskaitymo_kng.xls_0.xls','files','files_free','free','true',1,NULL,'0000-00-00 00:00:00',0,0,0);
/*!40000 ALTER TABLE `xt_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_description`
--

DROP TABLE IF EXISTS `xt_media_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_description` (
  `id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `media_name` varchar(64) DEFAULT NULL,
  `media_description` text,
  UNIQUE KEY `id` (`id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_description`
--

LOCK TABLES `xt_media_description` WRITE;
/*!40000 ALTER TABLE `xt_media_description` DISABLE KEYS */;
INSERT INTO `xt_media_description` VALUES (1,'de','was ist das?','<p>das ist was!</p>\n'),(1,'en','','');
/*!40000 ALTER TABLE `xt_media_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_download_ip`
--

DROP TABLE IF EXISTS `xt_media_download_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_download_ip` (
  `user_ip` varchar(15) NOT NULL,
  `download_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `media_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_download_ip`
--

LOCK TABLES `xt_media_download_ip` WRITE;
/*!40000 ALTER TABLE `xt_media_download_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_media_download_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_file_types`
--

DROP TABLE IF EXISTS `xt_media_file_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_file_types` (
  `mft_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_ext` varchar(6) DEFAULT NULL,
  `file_type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mft_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_file_types`
--

LOCK TABLES `xt_media_file_types` WRITE;
/*!40000 ALTER TABLE `xt_media_file_types` DISABLE KEYS */;
INSERT INTO `xt_media_file_types` VALUES (1,'pdf','files'),(2,'zip','files'),(3,'gif','images'),(4,'png','images'),(5,'jpg','images'),(6,'doc','files'),(7,'jpeg','files'),(8,'exe','files'),(9,'gz','files'),(10,'xls','files'),(11,'rar','files'),(12,'mp3','files'),(13,'dmg','files'),(14,'mp4','files'),(15,'ogg','files'),(16,'3gp','files'),(17,'aac','files');
/*!40000 ALTER TABLE `xt_media_file_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_gallery`
--

DROP TABLE IF EXISTS `xt_media_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_gallery` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(32) DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  `class` varchar(32) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `u_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_gallery`
--

LOCK TABLES `xt_media_gallery` WRITE;
/*!40000 ALTER TABLE `xt_media_gallery` DISABLE KEYS */;
INSERT INTO `xt_media_gallery` VALUES (1,0,1,'default',1,1),(2,0,2,'product',1,1),(3,0,3,'category',1,1),(4,0,4,'manufacturer',1,1),(5,0,5,'content',1,1),(6,0,99998,'files_free',1,1),(7,0,99999,'files_order',1,1),(8,0,6,'logo',1,1);
/*!40000 ALTER TABLE `xt_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_gallery_description`
--

DROP TABLE IF EXISTS `xt_media_gallery_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_gallery_description` (
  `mg_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`mg_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_gallery_description`
--

LOCK TABLES `xt_media_gallery_description` WRITE;
/*!40000 ALTER TABLE `xt_media_gallery_description` DISABLE KEYS */;
INSERT INTO `xt_media_gallery_description` VALUES (1,'de','Standard Bilder'),(2,'de','Artikelbilder'),(3,'de','Kategoriebilder'),(4,'de','Herstellerbilder'),(5,'de','Contentbilder'),(6,'de','freie Downloads'),(7,'de','kostenpfl. Downloads'),(1,'en','Default Images'),(2,'en','Product Images'),(3,'en','Category Images'),(4,'en','Manufacturers Images'),(5,'en','Content Images'),(6,'en','Free Downloads'),(7,'en','Payed Downloads');
/*!40000 ALTER TABLE `xt_media_gallery_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_languages`
--

DROP TABLE IF EXISTS `xt_media_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_languages` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  PRIMARY KEY (`ml_id`),
  UNIQUE KEY `ml_id` (`ml_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_languages`
--

LOCK TABLES `xt_media_languages` WRITE;
/*!40000 ALTER TABLE `xt_media_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_media_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_link`
--

DROP TABLE IF EXISTS `xt_media_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_link` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `class` varchar(32) DEFAULT NULL,
  `type` enum('gallery','media','images') NOT NULL DEFAULT 'images',
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`ml_id`),
  KEY `link_id` (`link_id`),
  KEY `class` (`class`),
  KEY `type` (`type`),
  KEY `m_id` (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_link`
--

LOCK TABLES `xt_media_link` WRITE;
/*!40000 ALTER TABLE `xt_media_link` DISABLE KEYS */;
INSERT INTO `xt_media_link` VALUES (1,2,4,'product','images',1),(2,3,4,'product','images',2),(3,4,4,'product','images',3),(4,5,4,'product','media',NULL);
/*!40000 ALTER TABLE `xt_media_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_symlink`
--

DROP TABLE IF EXISTS `xt_media_symlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_symlink` (
  `symlink_id` int(11) NOT NULL AUTO_INCREMENT,
  `symlink_dir` varchar(64) NOT NULL,
  `symlink_valid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`symlink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_symlink`
--

LOCK TABLES `xt_media_symlink` WRITE;
/*!40000 ALTER TABLE `xt_media_symlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_media_symlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_media_to_media_gallery`
--

DROP TABLE IF EXISTS `xt_media_to_media_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_media_to_media_gallery` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `mg_id` int(11) NOT NULL,
  PRIMARY KEY (`ml_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_media_to_media_gallery`
--

LOCK TABLES `xt_media_to_media_gallery` WRITE;
/*!40000 ALTER TABLE `xt_media_to_media_gallery` DISABLE KEYS */;
INSERT INTO `xt_media_to_media_gallery` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,1,2),(6,1,2),(7,5,6),(8,1,6);
/*!40000 ALTER TABLE `xt_media_to_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders`
--

DROP TABLE IF EXISTS `xt_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_cid` varchar(32) DEFAULT NULL,
  `customers_vat_id` varchar(20) DEFAULT NULL,
  `customers_status` int(11) DEFAULT NULL,
  `customers_email_address` varchar(96) DEFAULT NULL,
  `delivery_gender` varchar(32) DEFAULT NULL,
  `delivery_phone` varchar(32) DEFAULT NULL,
  `delivery_mobile_phone` varchar(32) DEFAULT NULL,
  `delivery_fax` varchar(23) DEFAULT NULL,
  `delivery_firstname` varchar(64) NOT NULL,
  `delivery_lastname` varchar(64) NOT NULL,
  `delivery_company` varchar(64) DEFAULT NULL,
  `delivery_company_2` varchar(64) DEFAULT NULL,
  `delivery_company_3` varchar(64) DEFAULT NULL,
  `delivery_street_address` varchar(64) NOT NULL,
  `delivery_suburb` varchar(32) DEFAULT NULL,
  `delivery_city` varchar(32) NOT NULL,
  `delivery_postcode` varchar(10) NOT NULL,
  `delivery_zone` varchar(32) DEFAULT NULL,
  `delivery_zone_code` int(11) DEFAULT NULL,
  `delivery_country` varchar(32) NOT NULL,
  `delivery_country_code` char(2) NOT NULL,
  `delivery_federal_state_code` int(11) DEFAULT NULL,
  `delivery_federal_state_code_iso` varchar(5) DEFAULT NULL,
  `delivery_address_book_id` int(11) DEFAULT NULL,
  `billing_gender` varchar(32) DEFAULT NULL,
  `billing_phone` varchar(32) DEFAULT NULL,
  `billing_mobile_phone` varchar(32) DEFAULT NULL,
  `billing_fax` varchar(23) DEFAULT NULL,
  `billing_firstname` varchar(64) NOT NULL,
  `billing_lastname` varchar(64) NOT NULL,
  `billing_company` varchar(64) DEFAULT NULL,
  `billing_company_2` varchar(64) DEFAULT NULL,
  `billing_company_3` varchar(64) DEFAULT NULL,
  `billing_street_address` varchar(64) NOT NULL,
  `billing_suburb` varchar(32) DEFAULT NULL,
  `billing_city` varchar(32) NOT NULL,
  `billing_postcode` varchar(10) NOT NULL,
  `billing_zone` varchar(32) DEFAULT NULL,
  `billing_zone_code` int(11) DEFAULT NULL,
  `billing_country` varchar(32) NOT NULL,
  `billing_country_code` char(2) NOT NULL,
  `billing_federal_state_code` int(11) DEFAULT NULL,
  `billing_federal_state_code_iso` varchar(5) DEFAULT NULL,
  `billing_address_book_id` int(11) DEFAULT NULL,
  `payment_code` varchar(64) DEFAULT NULL,
  `subpayment_code` varchar(32) DEFAULT NULL,
  `shipping_code` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_value` decimal(15,4) DEFAULT NULL,
  `language_code` char(2) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `account_type` int(1) DEFAULT '0',
  `allow_tax` tinyint(1) DEFAULT NULL,
  `customers_ip` varchar(32) DEFAULT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '1',
  `orders_data` longtext,
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `source_id` int(11) NOT NULL DEFAULT '0',
  `authorization_id` varchar(255) NOT NULL DEFAULT '',
  `authorization_amount` decimal(15,4) DEFAULT NULL,
  `authorization_expire` datetime DEFAULT NULL,
  `orders_source_external_id` varchar(32) DEFAULT NULL,
  `order_edit_acl_user` int(11) DEFAULT NULL,
  `XT_PAYMENTS_AUTHORIZATION_ID` varchar(255) NOT NULL DEFAULT '',
  `XT_PAYMENTS_AUTHORIZATION_AMOUNT` decimal(15,4) DEFAULT NULL,
  `XT_PAYMENTS_AUTHORIZATION_EXPIRE` datetime DEFAULT NULL,
  `XT_PAYMENTS_GW_RELATED_ID` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`orders_id`),
  KEY `customers_id` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders`
--

LOCK TABLES `xt_orders` WRITE;
/*!40000 ALTER TABLE `xt_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_products`
--

DROP TABLE IF EXISTS `xt_orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_discount` decimal(4,2) DEFAULT NULL,
  `products_tax` decimal(7,4) DEFAULT NULL,
  `products_tax_class` int(11) NOT NULL,
  `products_quantity` decimal(15,2) DEFAULT NULL,
  `products_data` longtext,
  `allow_tax` tinyint(1) DEFAULT '0',
  `products_shipping_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_products_id` (`orders_id`,`products_id`),
  KEY `orders_id` (`orders_id`),
  KEY `products_quantity` (`products_quantity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_products`
--

LOCK TABLES `xt_orders_products` WRITE;
/*!40000 ALTER TABLE `xt_orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_products_media`
--

DROP TABLE IF EXISTS `xt_orders_products_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_products_media` (
  `orders_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `download_count` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `orders_id` (`orders_id`,`media_id`,`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_products_media`
--

LOCK TABLES `xt_orders_products_media` WRITE;
/*!40000 ALTER TABLE `xt_orders_products_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders_products_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_source`
--

DROP TABLE IF EXISTS `xt_orders_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_source` (
  `source_id` int(10) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(32) DEFAULT '0',
  PRIMARY KEY (`source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_source`
--

LOCK TABLES `xt_orders_source` WRITE;
/*!40000 ALTER TABLE `xt_orders_source` DISABLE KEYS */;
INSERT INTO `xt_orders_source` VALUES (1,'order_source_phone'),(2,'order_source_fax'),(3,'order_source_email'),(4,'order_source_casual');
/*!40000 ALTER TABLE `xt_orders_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_stats`
--

DROP TABLE IF EXISTS `xt_orders_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_stats` (
  `orders_id` int(11) NOT NULL,
  `orders_stats_price` decimal(15,4) DEFAULT NULL,
  `products_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_stats`
--

LOCK TABLES `xt_orders_stats` WRITE;
/*!40000 ALTER TABLE `xt_orders_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_status_history`
--

DROP TABLE IF EXISTS `xt_orders_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) DEFAULT NULL,
  `orders_status_id` int(5) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  `change_trigger` varchar(32) DEFAULT 'user',
  `callback_id` varchar(64) DEFAULT '',
  `customer_show_comment` int(1) DEFAULT '0',
  `callback_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_status_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_status_history`
--

LOCK TABLES `xt_orders_status_history` WRITE;
/*!40000 ALTER TABLE `xt_orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_orders_total`
--

DROP TABLE IF EXISTS `xt_orders_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_orders_total` (
  `orders_total_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_total_key` varchar(32) DEFAULT NULL,
  `orders_total_key_id` int(11) DEFAULT NULL,
  `orders_total_model` varchar(64) DEFAULT NULL,
  `orders_total_name` varchar(64) DEFAULT NULL,
  `orders_total_price` decimal(15,4) DEFAULT NULL,
  `orders_total_tax` decimal(7,4) DEFAULT NULL,
  `orders_total_tax_class` int(11) DEFAULT NULL,
  `orders_total_quantity` decimal(15,2) NOT NULL DEFAULT '1.00',
  `allow_tax` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_key_id` (`orders_id`,`orders_total_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_orders_total`
--

LOCK TABLES `xt_orders_total` WRITE;
/*!40000 ALTER TABLE `xt_orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_payment`
--

DROP TABLE IF EXISTS `xt_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_dir` varchar(255) NOT NULL,
  `payment_icon` varchar(255) DEFAULT NULL,
  `payment_tax_class` int(11) DEFAULT NULL,
  `payment_tpl` varchar(64) DEFAULT NULL,
  `payment_cost_info` int(1) DEFAULT '0',
  `payment_available_mobile` int(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `plugin_required` tinyint(1) DEFAULT '0',
  `plugin_installed` int(11) DEFAULT '0',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_payment`
--

LOCK TABLES `xt_payment` WRITE;
/*!40000 ALTER TABLE `xt_payment` DISABLE KEYS */;
INSERT INTO `xt_payment` VALUES (1,'xt_payments','xt_payments','',NULL,'xtpayments.html',0,1,NULL,0,1,14);
/*!40000 ALTER TABLE `xt_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_payment_cost`
--

DROP TABLE IF EXISTS `xt_payment_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_payment_cost` (
  `payment_cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `payment_geo_zone` int(11) NOT NULL DEFAULT '0',
  `payment_country_code` char(2) NOT NULL DEFAULT '0',
  `payment_type_value_from` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_type_value_to` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment_cost_discount` int(1) NOT NULL DEFAULT '0',
  `payment_cost_percent` int(1) NOT NULL DEFAULT '0',
  `payment_allowed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_cost_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_payment_cost`
--

LOCK TABLES `xt_payment_cost` WRITE;
/*!40000 ALTER TABLE `xt_payment_cost` DISABLE KEYS */;
INSERT INTO `xt_payment_cost` VALUES (1,1,24,'',0.00,10000.00,0.0000,0,0,1),(2,1,25,'',0.00,10000.00,0.0000,0,0,1),(3,1,26,'',0.00,10000.00,0.0000,0,0,1),(4,1,27,'',0.00,10000.00,0.0000,0,0,1),(5,1,28,'',0.00,10000.00,0.0000,0,0,1),(6,1,29,'',0.00,10000.00,0.0000,0,0,1),(7,1,30,'',0.00,10000.00,0.0000,0,0,1),(8,1,31,'',0.00,10000.00,0.0000,0,0,1);
/*!40000 ALTER TABLE `xt_payment_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_payment_description`
--

DROP TABLE IF EXISTS `xt_payment_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_payment_description` (
  `payment_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `payment_name` varchar(255) DEFAULT NULL,
  `payment_desc` text,
  `payment_email_desc_txt` text,
  `payment_email_desc_html` text,
  PRIMARY KEY (`language_code`,`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_payment_description`
--

LOCK TABLES `xt_payment_description` WRITE;
/*!40000 ALTER TABLE `xt_payment_description` DISABLE KEYS */;
INSERT INTO `xt_payment_description` VALUES (1,'de','xt:Commerce Payments','',NULL,NULL),(1,'en','xt:Commerce Payments','',NULL,NULL);
/*!40000 ALTER TABLE `xt_payment_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_payment_restriction`
--

DROP TABLE IF EXISTS `xt_payment_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_payment_restriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_status_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `restriction_class` enum('order_count','order_amount') COLLATE utf8_bin NOT NULL DEFAULT 'order_count',
  `restriction_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_payment_restriction`
--

LOCK TABLES `xt_payment_restriction` WRITE;
/*!40000 ALTER TABLE `xt_payment_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_payment_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_payments_tmp`
--

DROP TABLE IF EXISTS `xt_payments_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_payments_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `payment_type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `col_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `col_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_payments_tmp`
--

LOCK TABLES `xt_payments_tmp` WRITE;
/*!40000 ALTER TABLE `xt_payments_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_payments_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_pdf_manager`
--

DROP TABLE IF EXISTS `xt_pdf_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_pdf_manager` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `template_type` varchar(64) NOT NULL,
  `template_pdf_out_name` varchar(512) NOT NULL,
  `template_use_be_lng` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_pdf_manager`
--

LOCK TABLES `xt_pdf_manager` WRITE;
/*!40000 ALTER TABLE `xt_pdf_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_pdf_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_pdf_manager_content`
--

DROP TABLE IF EXISTS `xt_pdf_manager_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_pdf_manager_content` (
  `template_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL DEFAULT '',
  `template_body` text NOT NULL,
  PRIMARY KEY (`template_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_pdf_manager_content`
--

LOCK TABLES `xt_pdf_manager_content` WRITE;
/*!40000 ALTER TABLE `xt_pdf_manager_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_pdf_manager_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plg_products_attributes`
--

DROP TABLE IF EXISTS `xt_plg_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plg_products_attributes` (
  `attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `attributes_parent` int(11) DEFAULT '0',
  `attributes_model` varchar(255) DEFAULT NULL,
  `attributes_image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `attributes_templates_id` int(11) NOT NULL,
  PRIMARY KEY (`attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plg_products_attributes`
--

LOCK TABLES `xt_plg_products_attributes` WRITE;
/*!40000 ALTER TABLE `xt_plg_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_plg_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plg_products_attributes_description`
--

DROP TABLE IF EXISTS `xt_plg_products_attributes_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plg_products_attributes_description` (
  `attributes_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `attributes_name` varchar(255) DEFAULT NULL,
  `attributes_desc` text,
  PRIMARY KEY (`attributes_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plg_products_attributes_description`
--

LOCK TABLES `xt_plg_products_attributes_description` WRITE;
/*!40000 ALTER TABLE `xt_plg_products_attributes_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_plg_products_attributes_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plg_products_attributes_templates`
--

DROP TABLE IF EXISTS `xt_plg_products_attributes_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plg_products_attributes_templates` (
  `attributes_templates_id` int(11) NOT NULL AUTO_INCREMENT,
  `attributes_templates_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attributes_templates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plg_products_attributes_templates`
--

LOCK TABLES `xt_plg_products_attributes_templates` WRITE;
/*!40000 ALTER TABLE `xt_plg_products_attributes_templates` DISABLE KEYS */;
INSERT INTO `xt_plg_products_attributes_templates` VALUES (1,'select'),(2,'images');
/*!40000 ALTER TABLE `xt_plg_products_attributes_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plg_products_to_attributes`
--

DROP TABLE IF EXISTS `xt_plg_products_to_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plg_products_to_attributes` (
  `products_id` int(11) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`attributes_id`),
  KEY `attributes_id` (`attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plg_products_to_attributes`
--

LOCK TABLES `xt_plg_products_to_attributes` WRITE;
/*!40000 ALTER TABLE `xt_plg_products_to_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_plg_products_to_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plugin_code`
--

DROP TABLE IF EXISTS `xt_plugin_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plugin_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL,
  `hook` varchar(255) DEFAULT NULL,
  `code` text,
  `code_status` int(1) DEFAULT NULL,
  `plugin_code` varchar(255) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin_id` (`plugin_id`,`hook`),
  KEY `plugin_id_2` (`plugin_id`),
  FULLTEXT KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plugin_code`
--

LOCK TABLES `xt_plugin_code` WRITE;
/*!40000 ALTER TABLE `xt_plugin_code` DISABLE KEYS */;
INSERT INTO `xt_plugin_code` VALUES (1,1,'store_main.php:bottom','\n					require _SRV_WEBROOT.\'plugins/xt_auto_cross_sell/hooks/store_main_php_bottom.php\';\n				',1,'xt_auto_cross_sell',1),(2,1,'product_info_tpl','\n					require _SRV_WEBROOT.\'plugins/xt_auto_cross_sell/hooks/product_info_tpl.php\';\n				',1,'xt_auto_cross_sell',1),(3,1,'cart_bottom','\n					require _SRV_WEBROOT.\'plugins/xt_auto_cross_sell/hooks/cart_bottom.php\';\n				',1,'xt_auto_cross_sell',1),(4,2,'store_main.php:bottom','\n					require _SRV_WEBROOT.\'plugins/xt_cross_selling/classes/class.cross_selling.php\';\n				',1,'xt_cross_selling',1),(5,2,'product_info_tpl','\n					global $current_product_id;\n					$cross_selling = new cross_selling(0);\n					echo $cross_selling->_display($current_product_id);\n				',1,'xt_cross_selling',1),(6,2,'class.product.php:_getParams_row_actions','					\n					$rowActions[] = array(\'iconCls\' => \'products_cross_selling\', \'qtipIndex\' => \'qtip1\', \'tooltip\' => TEXT_PRODUCTS_CROSS_SELLING);\n			        if ($this->url_data[\'edit_id\'])\n					  $js = \"var edit_id = \".$this->url_data[\'edit_id\'].\";\";\n					else\n			          $js = \"var edit_id = record.id;\";\n			          $extF = new ExtFunctions();\n					$js.= $extF->_RemoteWindow(\"TEXT_PRODUCTS_CROSS_SELLING\",\"TEXT_PRODUCTS\",\"adminHandler.php?plugin=xt_cross_selling&load_section=cross_selling_products&pg=overview&products_id=\'+edit_id+\'\", \'\', array(), 800, 600).\' new_window.show();\';\n			\n					$rowActionsFunctions[\'products_cross_selling\'] = $js;\n				',1,'xt_cross_selling',1),(7,2,'class.generated_slaves.php:_getParams_row_actions','					\n					$rowActions[] = array(\'iconCls\' => \'products_cross_selling\', \'qtipIndex\' => \'qtip1\', \'tooltip\' => TEXT_PRODUCTS_CROSS_SELLING);\n			        if ($this->url_data[\'edit_id\'])\n					  $js = \"var edit_id = \".$this->url_data[\'edit_id\'].\";\";\n					else\n			          $js = \"var edit_id = record.id;\";\n			          $extF = new ExtFunctions();\n					$js.= $extF->_RemoteWindow(\"TEXT_PRODUCTS_CROSS_SELLING\",\"TEXT_PRODUCTS\",\"adminHandler.php?plugin=xt_cross_selling&load_section=cross_selling_products&pg=overview&products_id=\'+edit_id+\'\", \'\', array(), 800, 600).\' new_window.show();\';\n			\n					$rowActionsFunctions[\'products_cross_selling\'] = $js;\n					',1,'xt_cross_selling',1),(8,3,'page_registry.php:bottom','\n				define(\'PAGE_XT_NEW_PRODUCTS\', _SRV_WEB_PLUGINS.\'xt_new_products/pages/xt_new_products.php\');\n			',1,'xt_new_products',1),(9,4,'page_registry.php:bottom','\n			require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/page_registry_php_bottom.php\';\n			',1,'xt_reviews',1),(10,4,'class.product.php:buildData_top','\n			include _SRV_WEBROOT.\'plugins/xt_reviews/hooks/class_product_php_buildData_top.php\';\n			',1,'xt_reviews',1),(11,4,'class.product.php:_delete_bottom','\n			require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/class_product_php__delete_bottom.php\';\n			',1,'xt_reviews',1),(12,4,'class.language.php:_delete_bottom','\n			require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/class_language_php__delete_bottom.php\';\n			',1,'xt_reviews',1),(13,4,'product_info_tpl_reviews','\n			include _SRV_WEBROOT.\'plugins/xt_reviews/hooks/product_info_tpl_reviews.php\';\n			',1,'xt_reviews',1),(14,4,'admin_dropdown.php:dropdown','\n			require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/admin_dropdown_php_dropdown.php\';\n			',1,'xt_reviews',1),(15,5,'products_images_tpl','\r\n        echo file_get_contents(_SRV_WEBROOT.\'plugins/xt_addthis/template/product_info.html\');\r\n',1,'xt_addthis',1),(16,6,'page_registry.php:bottom','\n				define(\'PAGE_XT_SPECIAL_PRODUCTS\', _SRV_WEB_PLUGINS.\'xt_special_products/pages/xt_special_products.php\');\n			',1,'xt_special_products',1),(17,6,'class.customers_status.php:_set_bottom','\n				$db_check = new database_check();\n				$db_check->GroupCheckTable(TABLE_PRODUCTS_PRICE_SPECIAL);\n			',1,'xt_special_products',1),(18,6,'admin_dropdown.php:dropdown','\n				include(_SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_special_products/hooks/admin_dropdown.php_dropdown.php\');',1,'xt_special_products',1),(19,7,'page_registry.php:bottom','\n					define(\'PAGE_XT_STARTPAGE_PRODUCTS\', _SRV_WEB_PLUGINS.\'xt_startpage_products/pages/xt_startpage_products.php\');\n				',1,'xt_startpage_products',1),(20,7,'class.product.php:_get_data','\n					include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_startpage_products/hooks/class.product.php_get_data.php\';\n				',1,'xt_startpage_products',1),(21,7,'class.productsPost.php:bottom','\n					include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_startpage_products/hooks/class.productsPost.php_bottom.php\';\n				',1,'xt_startpage_products',1),(22,8,'class.customers_status.php:_getParams','\n					$rowActions[] = array(\'iconCls\' => \'xt_payment_restriction\', \'qtipIndex\' => \'qtip1\', \'tooltip\' => TEXT_PAYMENT_RESTRICTION);\n        			if ($this->url_data[\'edit_id\'])\n		  				$js = \"var edit_id = \".$this->url_data[\'edit_id\'].\";\";\n					else\n          				$js = \"var edit_id = record.id;\";\n          			$js .= \"addTab(\'adminHandler.php?plugin=xt_payment_restriction&load_section=payment_restriction&pg=overview&customers_status_id=\'+edit_id,\'\".TEXT_PAYMENT_RESTRICTION.\"\')\";\n					$rowActionsFunctions[\'xt_payment_restriction\'] = $js;\n				',1,'xt_payment_restriction',1),(23,8,'page_registry.php:bottom','\n					define(\'TABLE_PAYMENT_RESTRICTION\',DB_PREFIX.\'_payment_restriction\');\n				',1,'xt_payment_restriction',1),(24,8,'admin_dropdown.php:dropdown','\n					if ($request[\'get\']==\'payment_restriction_class\') {\n						$result = array();\n						$result[] =  array(\'id\' => \'order_count\',\n                             \'name\' => TEXT_PAYMENT_RESTRICTION_COUNT,\n                             \'desc\' => \'\');\n						$result[] =  array(\'id\' => \'order_amount\',\n                             \'name\' => TEXT_PAYMENT_RESTRICTION_AMOUNT,\n                             \'desc\' => \'\');\n					}\n				',1,'xt_payment_restriction',1),(25,8,'class.payment.php:_buildData_filter','\n					$rs = $db->Execute(\"SELECT * FROM \".TABLE_PAYMENT_RESTRICTION.\" WHERE payment_id=\'\".(int)$value[\'payment_id\'].\"\' and customers_status_id=\'\".$customers_status->customers_status_id.\"\'\");\n					if ($rs->RecordCount()>0) {\n						$allow = true;\n						while (!$rs->EOF) {\n							if ($rs->fields[\'restriction_class\']==\'order_count\') {\n								$_value = $_SESSION[\'customer\']->_getTotalOrderCount($rs->fields[\'order_status\']);\n								if ($_value<$rs->fields[\'restriction_value\']) $allow=false;\n							} else { \n								$_value = $_SESSION[\'customer\']->_getTotalOrderAmount($rs->fields[\'order_status\']);\n								if ($_value<$rs->fields[\'restriction_value\']) $allow=false;\n							}\n							$rs->MoveNext();\n						}\n						if (!$allow) unset($value);\n					}\n				',1,'xt_payment_restriction',1),(26,8,'class.payment.php:_unset','\n					$db->Execute(\"DELETE FROM \". TABLE_PAYMENT_RESTRICTION .\" WHERE payment_id = \'\".$id.\"\'\");\n				',1,'xt_payment_restriction',1),(27,8,'css_admin.php:css','\n					echo \'.xt_payment_restriction {background-image: url(images/icons/money.png) !important;}\';\n				',1,'xt_payment_restriction',1),(28,9,'page_registry.php:bottom','\n                define(\'PAGE_XT_MASTER_SLAVE\', _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/pages/xt_master_slave.php\');',1,'xt_master_slave',1),(29,9,'store_main.php:bottom','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/store_main.php_bottom.php\';\n',1,'xt_master_slave',1),(30,9,'product_info_tpl_options','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/product_info_tpl_options.php\';\n',1,'xt_master_slave',1),(31,9,'product_info_tpl_productlist','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/product_info_tpl_list.php\';\n',1,'xt_master_slave',1),(32,9,'class.product.php:BuildData_bottom','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php_BuildData_bottom.php\';\n',1,'xt_master_slave',1),(33,9,'class.getProductSQL_query.php:F_Listing','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.getProductSQL_query.php_F_Listing.php\';\n',1,'xt_master_slave',1),(34,9,'class.product.php:_get_data','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php__get_data.php\';\n',1,'xt_master_slave',1),(35,9,'class.product.php:_get_bottom','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php__get_bottom.php\';\n',1,'xt_master_slave',1),(36,9,'class.product.php:_delete_bottom','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php__delete_bottom.php\';\n',1,'xt_master_slave',1),(37,9,'class.product.php:_set_perm','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php__set_perm.php\';\n',1,'xt_master_slave',1),(38,9,'class.product.php:_getParams_row_actions','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.php__getParams_row_actions.php\';\n',1,'xt_master_slave',1),(39,9,'admin_main.php:bottom','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/admin_main.php_bottom.php\';\n',1,'xt_master_slave',1),(40,9,'admin_dropdown.php:dropdown','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/admin_dropdown.php_dropdown.php\';\n',1,'xt_master_slave',1),(41,9,'styles.php:bottom','\n			include _SRV_WEBROOT.\'plugins/xt_master_slave/hooks/styles.phpbottom.php\';\n			',1,'xt_master_slave',1),(42,9,'ejsadmin.php:css_styles','\n			include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/css/ejsadmin.phpcss_styles.php\';\n			',1,'xt_master_slave',1),(43,9,'class.cart.php:_updateCart_data','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.cart.php_updateCart_data.php\';\n',1,'xt_master_slave',1),(44,9,'class.search.php:_search_filter','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.search.php_search_filter.php\';\n',1,'xt_master_slave',1),(45,9,'class.product_sql_query.php:F_Sorting_price','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product_sql_query.phpF_Sorting_price.php\';\n',1,'xt_master_slave',1),(46,9,'class.product_sql_query.php:F_Sorting_price_desc','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product_sql_query.phpF_Sorting_price_desc.php\';\n',1,'xt_master_slave',1),(47,9,'class.generated_slaves.php:_getParams_row_actions','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.generated_slaves.php__getParams_row_actions.php\';\n',1,'xt_master_slave',1),(48,9,'class.product_sql_query.php:F_Sorting_order','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product_sql_query.phpF_Sorting_order.php\';\n',1,'xt_master_slave',1),(49,9,'class.product_sql_query.php:F_Sorting_order_desc','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product_sql_query.phpF_Sorting_order_desc.php\';\n',1,'xt_master_slave',1),(50,9,'module_product.php:top','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/module_product.phptop.php\';\n',1,'xt_master_slave',1),(51,9,'class.xt_cart_popup.php:add_product_bottom','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.xt_cart_popup.phpadd_product_bottom.php\';\n',1,'xt_master_slave',1),(52,9,'class.product.php:getGroupPrice_top','\n            include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/class.product.phpgetGroupPrice_top.php\';\n',1,'xt_master_slave',1),(53,10,'page_registry.php:bottom','\n				define(\'TABLE_EXPORTIMPORT\',$DB_PREFIX.\'exportimport\');\n				define(\'TABLE_EXPORTIMPORT_LOG\',$DB_PREFIX.\'exportimport_log\');\n				require _SRV_WEBROOT.\'plugins/xt_im_export/classes/class.xt_im_export.php\';\n			',1,'xt_im_export',1),(54,10,'cronjob.php:main','\n			if (isset($_GET[\'api\'])) {\n				if ($_GET[\'api\']==\'csv_export\') {\n					include \'plugins/xt_im_export/classes/class.csvapi.php\';\n					include \'plugins/xt_im_export/classes/class.export.php\';\n					$csv_export = new csv_export();\n					$csv_export->run_export($_GET);\n				}\n				if ($_GET[\'api\']==\'csv_import\') {\n					include \'plugins/xt_im_export/classes/class.csvapi.php\';\n					include \'plugins/xt_im_export/classes/class.import.php\';\n					$csv_export = new csv_import();\n					$csv_export->run_import($_GET);\n				}\n			\n			}\n			',1,'xt_im_export',1),(55,10,'admin_dropdown.php:dropdown','\n					if ($request[\'get\']==\'imexport_types\') {\n							if(!isset($result)) $result = array();\n							$result[] =  array(\'id\' => \'export\',\n			                             \'name\' => \'Export\',\n			                             \'desc\' => \'\');\n							$result[] =  array(\'id\' => \'import\',\n			                             \'name\' => \'Import\',\n			                             \'desc\' => \'\');\n					}\n					if ($request[\'get\']==\'imexport_typesspec\') {\n			                if(!isset($result)) $result = array();\n							$result[] =  array(\'id\' => \'products\',\n			                             \'name\' => \'Products\',\n			                             \'desc\' => \'\');\n							/*$result[] =  array(\'id\' => \'categories\',\n			                             \'name\' => \'Categories\',\n			                             \'desc\' => \'\');\n							$result[] =  array(\'id\' => \'prod2cat\',\n			                             \'name\' => \'Products 2 Categories\',\n			                             \'desc\' => \'\');\n			                */\n					}\n					if ($request[\'get\']==\'imexport_matching\') {\n							if(!isset($result)) $result = array();\n							\n							\n							$result[] =  array(\'id\' => \'products_id\',\n			                             \'name\' => \'Products - ID\',\n			                             \'desc\' => \'\');\n							$result[] =  array(\'id\' => \'products_model\',\n			                             \'name\' => \'Products - Model\',\n			                             \'desc\' => \'\');\n							$result[] =  array(\'id\' => \'products_ean\',\n			                             \'name\' => \'Products - EAN\',\n			                             \'desc\' => \'\');\n			                $result[] =  array(\'id\' => \'external_id\',\n			                             \'name\' => \'Products - External ID\',\n			                             \'desc\' => \'\');\n					}\n					if ($request[\'get\']==\'imexport_matching_2\') {\n							if(!isset($result)) $result = array();\n							\n							\n							\n			                $result[] =  array(\'id\' => \'\',\n			                             \'name\' => \'None\',\n			                             \'desc\' => \'\');\n			                $result[] =  array(\'id\' => \'manufacturers_id\',\n			                             \'name\' => \'Manufacturers - ID\',\n			                             \'desc\' => \'\');\n					}		\n					if ($request[\'get\']==\'imexport_delimiter\') {\n							if(!isset($result)) $result = array();\n							$result[] = array (\'id\' => \';\', \'name\' => \';\', \'desc\' => \';\');\n							$result[] = array (\'id\' => \',\', \'name\' => \',\', \'desc\' => \',\');\n					}\n					if ($request[\'get\']==\'imexport_enclosure\') {\n							if(!isset($result)) $result = array();\n							$result[] = array (\'id\' => \'\"\', \'name\' => \'\"\', \'desc\' => \'\"\');\n							$result[] = array (\'id\' => \"\'\", \'name\' => \"\'\", \'desc\' => \"\'\");\n					}\n			',1,'xt_im_export',1),(56,10,'row_actions.php:actions','\n\n				  \n				 	include (_SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_im_export/hooks/row_actions.phpactions.php\'); \n				 \n			',1,'xt_im_export',1),(57,11,'module_customer.php:post_data','\n				$privacy = $_content->getHookContent(\'2\');\n					if (isset($privacy[\'content_id\'])) {\n						$privacy_content_data =  $_content->getHookContent($privacy[\'content_id\'], \'true\');\n						$privacy_link = $xtLink->_link(array(\'page\'=>\'content\', \'params\'=>\'coID=\'.$privacy_content_data[\'content_id\'],\'seo_url\' => $privacy_content_data[\'url_text\']));\n						$customer_tpl_data = array_merge($customer_tpl_data,array(\'show_privacy\'=> XT_PRIVACYCHECK_SHOW == \'true\' ? 1:0,\'privacy_link\'=>$privacy_link,\'show_privacy_type\'=> XT_PRIVACYCHECK_TYPE == \'true\' ? 1:0));\n					}\n			',1,'xt_privacycheck',1),(58,11,'class.customer.php:_CustomerData_check','\n				if (XT_PRIVACYCHECK_SHOW==\'true\' && XT_PRIVACYCHECK_TYPE==\'true\') {\n					$this->_checkMatch($form_data[\'privacy\'], \'1\', TEXT_PRIVACY_CHECK_ERROR);\n				}\n			',1,'xt_privacycheck',1),(59,12,'page_registry.php:bottom','\n                define(\'PAGE_XT_BESTSELLER_PRODUCTS\',_SRV_WEB_PLUGINS.\'xt_bestseller_products/pages/xt_bestseller_products.php\');',1,'xt_bestseller_products',1),(60,12,'admin_dropdown.php:dropdown','\n                include(_SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_bestseller_products/hooks/admin_dropdown.php_dropdown.php\');',1,'xt_bestseller_products',1),(61,13,'module_customer.php:page_password_reset_captcha_top','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/module_customer_php_page_password_reset_captcha_top.php\';\n				',1,'xt_recaptcha',1),(62,13,'module_customer.php:page_password_reset_captcha_validator','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/module_customer_php_page_password_reset_captcha_validator.php\';\n				',1,'xt_recaptcha',1),(63,13,'module_customer.php:page_password_reset_captcha_show','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/module_customer_php_page_password_reset_captcha_show.php\';\n				',1,'xt_recaptcha',1),(64,13,'forms:contact_captcha_validator','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/forms_contact_captcha_validator.php\';\n				',1,'xt_recaptcha',1),(65,13,'forms:contact_captcha_show','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/forms_contact_captcha_show.php\';\n				',1,'xt_recaptcha',1),(66,13,'javascript.php:bottom','\n				require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_recaptcha/hooks/javascript_php_bottom.php\';\n				',1,'xt_recaptcha',1),(67,14,'ejsadmin.php:more_js','\n			include_once(_SRV_WEBROOT.\'plugins/xt_payments/hooks/ejsadmin_php_more_js.php\');\n	',1,'xt_payments',1),(68,14,'module_checkout.php:checkout_page_actions','\nif (isset($_GET[\'error_payments\']) && $_GET[\'error_payments\']==\'ERROR_PAYMENT\') {\n    $field = $_GET[\'error_payments\'];\n    if (defined($field)){\n	    $info->_addInfo(constant($field));\n	}\n    if(isset($_GET[\'customError\'])) {\n        $info->_addInfo(urldecode($_GET[\'customError\']));\n    }\n    \n        \n}\n',1,'xt_payments',1),(69,14,'store_main_handler.php:seo','\n\nif (isset($_GET[\'page\']) && $_GET[\'page\']==\'callback\'){\n\nif (isset($_GET[\'PPP_TransactionID\'])) {\n\n$g2s_page = $_GET[\'page_action\'];\n$g2s_page = explode(\'?\',$g2s_page);\n$_GET[\'page_action\'] = $g2s_page[0];\n\n// ppp status\nif (isset($g2s_page[1])) {\n$ppp_status = explode(\'=\',$g2s_page[1]);\nif (isset($ppp_status[1])) {\n$_GET[\'ppp_status\']=$ppp_status[1];\n}\n}\n\n}\n\n}\n',1,'xt_payments',1),(70,14,'module_checkout.php:checkout_pre_data','\n			        include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/module_checkout_php__checkout_pre_data.php\';\n			',1,'xt_payments',1),(71,14,'module_checkout.php:checkout_payment_check','\n			        include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/module_checkout_php__checkout_payment_check.php\';\n			',1,'xt_payments',1),(72,14,'_pre_include','\n			        include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/_pre_include.php\';\n			',1,'xt_payments',1),(73,14,'cart_tpl_form','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/cart_tpl_form.php\';\n			',1,'xt_payments',1),(74,14,'cart_tpl_form_paypal','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/cart_tpl_form_paypal.php\';\n			',1,'xt_payments',1),(75,14,'checkout_tpl_info','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/checkout_tpl_info.php\';\n			',1,'xt_payments',1),(76,14,'class.checkout.php:_selectShipping_tpl_data','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/class_checkout_php__selectShipping_tpl_data.php\';\n			',1,'xt_payments',1),(77,14,'class.customer.php:_buildCustomerAddressData_top','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/class_customer_php__buildCustomerAddressData_top.php\';\n			',1,'xt_payments',1),(78,14,'class.payment.php:_buildData_filter','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/class_payment_php__buildData_filter.php\';\n			',1,'xt_payments',1),(79,14,'form_handler.php:data_array_bottom','\n            include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/form_handler_php_data_array_bottom.php\';\n			',1,'xt_payments',1),(80,14,'form_handler.php:select_address_bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/form_handler_php_select_address_bottom.php\';\n			',1,'xt_payments',1),(81,14,'module_cart.php:tpl_data','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_cart_php_tpl_data.php\';\n			',1,'xt_payments',1),(82,14,'module_checkout.php:checkout_process_check','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout.php_checkout_process_check.php\';\n			',1,'xt_payments',99),(83,14,'module_checkout.php:checkout_bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout_php_checkout_bottom.php\';\n			',1,'xt_payments',1),(84,14,'module_checkout.php:checkout_first','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout_php_checkout_first.php\';\n			',1,'xt_payments',1),(85,14,'module_checkout.php:checkout_payment_bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout_php_checkout_payment_bottom.php\';\n			',1,'xt_payments',1),(86,14,'module_checkout.php:checkout_selections','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout_php_checkout_selections.php\';\n			',1,'xt_payments',1),(87,14,'module_checkout.php:checkout_shipping_bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_checkout_php_checkout_shipping_bottom.php\';\n			',1,'xt_payments',1),(88,14,'page_registry.php:bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/page_registry_php_bottom.php\';\n			',1,'xt_payments',1),(89,14,'styles.php:bottom','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/styles_php_bottom.php\';\n			',1,'xt_payments',1),(90,14,'module_cart.php:cart_top','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/module_cart_php__cart_top.php\';\n			',1,'xt_payments',1),(91,14,'order_edit.php:getMemoPanel_button_add','\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/ppex/order_edit_php_getMemoPanel_button_add.php\';\n			',1,'xt_payments',1),(92,15,'class.product.php:_getParams_panelSettings','\n					require _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/class_product_php__getParams_panelSettings.php\';\n				',1,'xt_google_product_categories',1),(93,15,'class.category.php:_getParams_bottom','\n					require _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/class_category_php__getParams_bottom.php\';\n				',1,'xt_google_product_categories',1),(94,15,'class.category.php:_getParams_header','\n					require _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/class_category_php__getParams_header.php\';\n				',1,'xt_google_product_categories',1),(95,15,'class.product.php:_get_data','\n					require _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/class_product_php__get_data.php\';\n				',1,'xt_google_product_categories',1),(96,15,'admin_dropdown.php:dropdown','\n					include _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/admin_dropdown_phpdropdown.php\';\n				',1,'xt_google_product_categories',1),(97,15,'class.export.php:__extractData_category','\n					include _SRV_WEBROOT.\'plugins/xt_google_product_categories/hooks/class_export_php__extractData_category.php\';\n				',1,'xt_google_product_categories',1),(98,16,'class.plugin_installed.php:_set_bottom','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/exec_clean_cache.php\'; \n				',1,'xt_cleancache',1),(99,16,'class.plugin_installed.php:_setStatus_bottom','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/exec_clean_cache.php\'; \n				',1,'xt_cleancache',1),(100,16,'admin_dropdown.php:dropdown','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/admin_dropdown_php_dropdown.php\'; \n				',1,'xt_cleancache',1),(101,16,'page_registry.php:bottom','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/page_registry.phpbottom.php\'; \n				',1,'xt_cleancache',1),(102,16,'row_actions.php:actions','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/row_actions_php_actions.php\'; \n				',1,'xt_cleancache',1),(103,16,'cronjob.php:main','\n					require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/cronjob_php_main.php\'; \n				',1,'xt_cleancache',1),(104,17,'javascript.php:bottom','\n					require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'sx_fancy_cloud_zoom/hooks/javascript.php_bottom.php\';\n			',1,'sx_fancy_cloud_zoom',1),(105,17,'module_product.php:default_tpl_data','\n					require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'sx_fancy_cloud_zoom/hooks/module_product.php_default_tpl_data.php\';\n			',1,'sx_fancy_cloud_zoom',1),(106,18,'login_create_account_tpl','\r\nrequire_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_newsletter2go/hooks/login_create_account_tpl.php\';\r\n',1,'xt_newsletter2go',1),(107,18,'class.customer.php:_buildCustomerData_bottom','\r\nif (XT_NEWSLETTER2GO_CHECKBOX==\'true\') {\r\n    if ($data[\'allow_newsletter\']!=\'1\') $data[\'allow_newsletter\']=\'0\';\r\n        $customer_data_array[\'nl2go_newsletter_status\'] = $data[\'allow_newsletter\'];\r\n}\r\n',1,'xt_newsletter2go',1),(108,20,'adminHandler.php:_bottom','\r\n				include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/adminHandler.php__bottom.php\';\r\n			',1,'xt_ship_and_track',1),(109,20,'order_edit.php:getProductsTemplate_top','\r\n            require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/order_edit.php_getProductsTemplate_top.php\';\r\n            ',1,'xt_ship_and_track',1),(110,20,'order_edit.php:display_data','\r\n            require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/order_edit.php_display_data.php\';\r\n            ',1,'xt_ship_and_track',1),(111,20,'module_customer.php:order_info_bottom','\r\n            require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/module_customer.php_order_info_bottom.php\';\r\n            ',1,'xt_ship_and_track',1),(112,20,'account_history_info_left','\r\n            require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/account_history_info_left.php\';\r\n            ',1,'xt_ship_and_track',1),(113,20,'admin_dropdown.php:dropdown','\r\n			include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/admin_dropdown.php_dropdown.php\';\r\n			',1,'xt_ship_and_track',1),(114,20,'xtMailer:getPermission','\r\n            require_once _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_ship_and_track/hooks/xtMailer_getPermission.php\';\r\n            ',1,'xt_ship_and_track',1),(115,20,'ejsadmin.php:css_styles','\n                \r\n                    include_once(_SRV_WEBROOT.\'plugins/xt_ship_and_track/hooks/ejsadmin.php__css_styles.php\');\r\n                \n            ',1,'xt_ship_and_track',1),(116,20,'get_nodes.php:node','\n                \r\n                    include_once(_SRV_WEBROOT.\'plugins/xt_ship_and_track/hooks/get_nodes_php_node.php\');\r\n                \n            ',1,'xt_ship_and_track',1),(117,21,'checkout_tpl_form','\n					if (XT_RESCISSION_SHOW==\'true\') {\n					        $tmp_data = \'\';\n					        $tpl = \'link_confirmation.html\';\n					        $template = new Template();\n					        $template->getTemplatePath($tpl, \'xt_rescission\', \'\', \'plugin\');\n					        if (array_key_exists(\'XT_RECISSION__rescission_accepted\', $_SESSION) && $_SESSION[\'XT_RECISSION__rescission_accepted\']==1) {\n					        $tpl_data[\'rescission_accepted\'] = 1;\n					        unset($_SESSION[\'XT_RECISSION__rescission_accepted\']);\n					        } else {\n					        $tpl_data[\'rescission_accepted\'] = 0;\n					        }\n					        $tmp_data = $template->getTemplate(\'xt_rescission_smarty\', $tpl, $tpl_data);\n					        echo $tmp_data;\n					}\n				',1,'xt_rescission',1),(118,21,'module_checkout.php:checkout_process_check','\n					if (XT_RESCISSION_SHOW == \'true\' && XT_RESCISSION_SHOW_CONFIRMATION == \'true\') {\n					    if ($_POST[\'rescission_accepted\'] != \'on\') {\n					        $info->_addInfoSession(ERROR_RESCISSION_ACCEPTED);\n					        $_check_error = true;\n					    } else {\n					        $_SESSION[\'XT_RECISSION__rescission_accepted\'] = 1;\n					    }\n					}\n				',1,'xt_rescission',1),(119,22,'class.meta_tags.php:icra','\r\n					include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_canonical/hooks/class_meta_tags_php_icra.php\';\r\n				',1,'xt_canonical',1),(120,22,'class.product.php:_get_data','\r\n					include _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_canonical/hooks/class_product_php__get_data.php\';\r\n				',1,'xt_canonical',1),(121,23,'javascript.php:bottom','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/javascript.phpbottom.php\';\r\n            		',1,'xt_elefunds',1),(122,23,'admin_dropdown.php:dropdown','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/admin_dropdown.php.dropdown.php\';\r\n            		',1,'xt_elefunds',1),(123,23,'xt_orders_invoices:_buildData_bottom','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/xt_orders_invoices._buildData_bottom.php\';\r\n            		',1,'xt_elefunds',1),(124,23,'class.order.php:_updateOrderStatus_bottom','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/class.order.php._updateOrderStatus_bottom.php\';\r\n            		',1,'xt_elefunds',1),(125,23,'class.order.php:_buildTotalData_bottom','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/class.order.php._buildTotalData_bottom.php\';\r\n            		',1,'xt_elefunds',1),(126,23,'checkout_tpl_form_total_lines','\r\n                		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/checkout_tpl_form_total_lines.php\';\r\n            		',1,'xt_elefunds',1),(127,23,'styles.php:bottom','\r\n             		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/styles.phpbottom.php\';\r\n            	',1,'xt_elefunds',1),(128,23,'class.order.php:_setOrder_product_bottom','\r\n             		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/class.order.php._setOrder_product_bottom.php\';\r\n            	',1,'xt_elefunds',1),(129,23,'checkout_success_tpl','\r\n             		require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/checkout_success_tpl.php\';\r\n            	',1,'xt_elefunds',1),(130,23,'row_actions.php:actions',' \r\n				 	include_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/row_actions.phpactions.php\'; \r\n				 	\n				 ',1,'xt_elefunds',1),(131,23,'cronjob.php:main',' \r\n				 	include_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/cronjob.phpmain.php\'; \r\n				 	\n				 ',1,'xt_elefunds',1);
/*!40000 ALTER TABLE `xt_plugin_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plugin_history`
--

DROP TABLE IF EXISTS `xt_plugin_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plugin_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_code` varchar(255) NOT NULL,
  `old_version` varchar(32) NOT NULL,
  `current_version` varchar(32) DEFAULT NULL,
  `xml` text,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plugin_history`
--

LOCK TABLES `xt_plugin_history` WRITE;
/*!40000 ALTER TABLE `xt_plugin_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_plugin_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plugin_products`
--

DROP TABLE IF EXISTS `xt_plugin_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plugin_products` (
  `plugin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `plugin_status` int(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `developer` varchar(255) NOT NULL DEFAULT '',
  `documentation_link` varchar(255) NOT NULL DEFAULT '',
  `marketplace_link` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`plugin_id`),
  KEY `plugin_status` (`plugin_status`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plugin_products`
--

LOCK TABLES `xt_plugin_products` WRITE;
/*!40000 ALTER TABLE `xt_plugin_products` DISABLE KEYS */;
INSERT INTO `xt_plugin_products` VALUES (1,'Auto Cross Selling','1.0.3','Automated cross selling for products','http://www.xt-commerce.com',1,'xt_auto_cross_sell','core','xt:Commerce','https://xtcommerce.atlassian.net/wiki/display/MANUAL/Cross-Selling',''),(2,'Cross Selling','1.0.2','Cross selling for products','http://www.xt-commerce.com',1,'xt_cross_selling','core','xt:Commerce','https://xtcommerce.atlassian.net/wiki/display/MANUAL/Cross-Selling',''),(3,'New Products','1.0.4','Neue Artikel','http://www.xt-commerce.com',1,'xt_new_products','core','xt:Commerce','',''),(4,'Reviews','1.1.4','Product reviews','http://www.xt-commerce.com',1,'xt_reviews','core','xt:Commerce','','http://addons.xt-commerce.com/index.php?page=product&info=3724'),(5,'AddThis Social Bookmarks','1.0.2','','http://www.xt-commerce.com',1,'xt_addthis','marketing','xt:Commerce','',''),(6,'Specials Page','1.0.5','Special page for products','http://www.xt-commerce.com',1,'xt_special_products','core','xt:Commerce','',''),(7,'Startpage Products','1.0.4','Products displayed on Startpage','http://www.xt-commerce.com',1,'xt_startpage_products','core','xt:Commerce','',''),(8,'Payment Restrictions','1.0.1','','http://www.xt-commerce.com',1,'xt_payment_restriction','payment','xt:Commerce','',''),(9,'Master Slave','1.1.8','Master Slave Products','http://www.xt-commerce.com',1,'xt_master_slave','core','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=917527',''),(10,'Import / Export','1.0.10','Import / Export','http://www.xt-commerce.com',1,'xt_im_export','products','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=917726',''),(11,'Privacy Check','1.0.3','','http://www.xt-commerce.com',1,'xt_privacycheck','law','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=917631',''),(12,'Bestseller Products','1.1.1','Bestseller','http://www.xt-commerce.com',1,'xt_bestseller_products','core','xt:Commerce','',''),(13,'Google ReCaptcha','1.0.0','ReCaptcha','http://www.xt-commerce.com',1,'xt_recaptcha','extension','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=2555952',''),(14,'xt:Commerce Payments','2.3.0','','http://www.xt-commerce.com',1,'xt_payments','payment','','',''),(15,'Google Product Categories','1.0.6','Google Product Categories plugin','http://www.xt-commerce.com',1,'xt_google_product_categories','marketing','xt:Commerce','','http://addons.xt-commerce.com/index.php?page=product&info=356'),(16,'Clean Cache','1.0.6','Clean Cache plugin','http://www.xt-commerce.com',1,'xt_cleancache','extension','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=12910603','http://addons.xt-commerce.com/index.php?page=product&info=4374'),(17,'Fancy Cloud Zoom','1.0.3','Cloud Zoom for xt:Commerce 4','http://www.shopx.de',1,'sx_fancy_cloud_zoom','extension','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=23822464','http://addons.xt-commerce.com/index.php?page=product&info=4134'),(18,'Newsletter2Go E-Mail Marketing','1.4.2','Das Newsletter2Go-Plugin synchronisiert automatisch Kundendaten und übernimmt Artikel per Eingabe der Artikelnummer in Ihren Newsletter','https://www.newsletter2go.de',1,'xt_newsletter2go','marketing','xt:Commerce','','http://addons.xt-commerce.com/index.php?page=product&info=723'),(19,'xt:MultiConnect','2.7.0','Multi-Channel Marketing','https://www.xtmulticonnect.com/frontend/?partner=xtcommerce4',1,'magnalister','marketing','','',''),(20,'Ship and Track','1.0.3','parcel shipping and tracking','http://www.xt-commerce.com',1,'xt_ship_and_track','shipping','','',''),(21,'Widerrufsbelehrung','1.1.2','','http://www.xt-commerce.com',1,'xt_rescission','law','xt:Commerce','https://xtcommerce.atlassian.net/wiki/pages/viewpage.action?pageId=917633','http://addons.xt-commerce.com/index.php?page=product&info=528'),(22,'Canonical Tags','1.0.9','','http://www.xt-commerce.com',1,'xt_canonical','seo','xt:Commerce','','http://addons.xt-commerce.com/index.php?page=product&info=22'),(23,'Elefunds','1.0.1','Elefunds donations plugins','http://www.xt-commerce.com',1,'xt_elefunds','extension','xt:Commerce','https://xtcommerce.atlassian.net/wiki/display/MANUAL/xt_elefunds+-+Spenden+in+xt:Commerce+Shops','');
/*!40000 ALTER TABLE `xt_plugin_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_plugin_sql`
--

DROP TABLE IF EXISTS `xt_plugin_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_plugin_sql` (
  `plg_sql_id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL,
  `version` varchar(32) DEFAULT NULL,
  `install` text,
  `uninstall` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`plg_sql_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_plugin_sql`
--

LOCK TABLES `xt_plugin_sql` WRITE;
/*!40000 ALTER TABLE `xt_plugin_sql` DISABLE KEYS */;
INSERT INTO `xt_plugin_sql` VALUES (1,1,'1.0.3',NULL,NULL,'2014-12-17 15:36:30'),(2,2,'1.0.2',NULL,NULL,'2014-12-17 15:36:32'),(3,3,'1.0.4','\n			include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_new_products/hooks/db_install.php\';\n	','\n	\n			include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_new_products/hooks/db_uninstall.php\';\n	\n	','2014-12-17 15:36:34'),(4,4,'1.1.4','\n	require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/db_install.php\';\n	','\n	require_once _SRV_WEBROOT.\'plugins/xt_reviews/hooks/db_uninstall.php\';\n	','2014-12-17 15:36:37'),(5,5,'1.0.2',NULL,NULL,'2014-12-17 15:36:40'),(6,6,'1.0.5','\n        	include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_special_products/hooks/db_install.php\';\n		','\n		\n        	include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_special_products/hooks/db_uninstall.php\';\n		\n		','2014-12-17 15:36:43'),(7,7,'1.0.4','\n        	include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_startpage_products/hooks/db_install.php\';\n		','\n		\n        	include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_startpage_products/hooks/db_uninstall.php\';\n		\n		','2014-12-17 15:36:47'),(8,8,'1.0.1','\n			$db->Execute(\"DROP TABLE IF EXISTS \".DB_PREFIX.\"_payment_restriction;\");\n			\n			$db->Execute(\"CREATE TABLE \".DB_PREFIX.\"_payment_restriction (\n			  id int(11) NOT NULL auto_increment,\n			  customers_status_id int(11) NOT NULL,\n			  payment_id int(11) NOT NULL default \'0\',\n			  restriction_class enum(\'order_count\',\'order_amount\') NOT NULL default \'order_count\',\n			  restriction_value decimal(15,4) NOT NULL default \'0.0000\',\n			  order_status int(11) NOT NULL default \'0\',\n			  PRIMARY KEY  (`id`)\n			) ENGINE=MyISAM;\");\n			','\n				$db->Execute(\"DROP TABLE IF EXISTS \".DB_PREFIX.\"_payment_restriction;\");\n			','2014-12-17 15:36:50'),(9,9,'1.1.8','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/db_install.php\';\n','\n\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_master_slave/hooks/db_uninstall.php\';\n\n','2014-12-17 15:36:52'),(10,10,'1.0.10','\n		$db->Execute(\"INSERT INTO \".TABLE_ADMIN_NAVIGATION.\" (`pid` ,`text` ,`icon` ,`url_i` ,`url_d` ,`sortorder` ,`parent` ,`type` ,`navtype`) VALUES (NULL , \'xt_im_export\', \'images/icons/arrow_refresh.png\', \'&plugin=xt_im_export\', \'adminHandler.php\', \'4000\', \'contentroot\', \'I\', \'W\');\");\n		\n		$db->Execute(\"\n		CREATE TABLE IF NOT EXISTS \".DB_PREFIX.\"_exportimport (\n		  `id` int(11) NOT NULL auto_increment,\n		  `ei_type` varchar(32) NOT NULL default \'import\',\n		  `ei_type_spec` varchar(32) NOT NULL default \'products\',\n		  `ei_type_match` varchar(32) NOT NULL default \'products_id\',\n		  `ei_type_match_2` varchar(32) NULL,\n		  `ei_title` varchar(64) NOT NULL,\n		  `ei_filename` varchar(64) NOT NULL,\n		  `ei_delimiter` varchar(32) NOT NULL default \';\',\n		  `ei_cat_tree_delimiter` varchar(32) NOT NULL default \'/\',\n		  `ei_enclosure` char(1) NOT NULL default \'\\\"\',\n		  `ei_limit` int(11) NOT NULL default \'100\',\n		  `ei_language` int(1) NOT NULL default \'0\',\n		  `ei_price_type` varchar(32) NOT NULL default \'false\',\n		  `ei_id` varchar(32) NOT NULL,\n		  `ei_store_id` int(11) NOT NULL,\n		  PRIMARY KEY  (`id`)\n		) ENGINE=MyISAM AUTO_INCREMENT=1 ;\");\n		\n		$db->Execute(\"\n		CREATE TABLE IF NOT EXISTS \".DB_PREFIX.\"_exportimport_log (\n		  `id` int(11) NOT NULL auto_increment,\n		  `ei_id` varchar(32) NOT NULL default 0,\n		  `error_message` varchar(255) NOT NULL,\n		  PRIMARY KEY  (`id`)\n		) ENGINE=MyISAM AUTO_INCREMENT=1 ;\");\n	\n	','\n		$db->Execute(\"DELETE FROM \".TABLE_ADMIN_NAVIGATION.\" WHERE text = \'xt_im_export\'\");\n		$db->Execute(\"DELETE FROM \".TABLE_SYSTEM_LOG.\" WHERE module = \'xt_im_export\'\");\n		$db->Execute(\"DELETE FROM \".TABLE_LANGUAGE_CONTENT.\" WHERE plugin_key = \'xt_im_export\'\");\n		$db->Execute(\"DROP TABLE \".DB_PREFIX.\"_exportimport\");\n		$db->Execute(\"DROP TABLE \".DB_PREFIX.\"_exportimport_log\");\n	','2014-12-17 15:36:54'),(11,11,'1.0.3',NULL,NULL,'2014-12-17 15:36:56'),(12,12,'1.1.1','\n        include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_bestseller_products/hooks/db_install.php\';\n	','\n	\n			include _SRV_WEBROOT . _SRV_WEB_PLUGINS . \'xt_bestseller_products/hooks/db_uninstall.php\';\n	\n','2014-12-17 15:36:58'),(13,13,'1.0.0',NULL,NULL,'2014-12-17 15:37:02'),(14,14,'2.3.0','\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 24, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 25, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 26, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 27, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 28, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 29, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 30, \'\', 0, 10000.00, 0, 1);\");\n$db->Execute(\"INSERT INTO \".TABLE_PAYMENT_COST.\" (`payment_id`, `payment_geo_zone`, `payment_country_code`, `payment_type_value_from`, `payment_type_value_to`, `payment_price`,`payment_allowed`) VALUES(\".$payment_id.\", 31, \'\', 0, 10000.00, 0, 1);\");\n\n// north navigation\n$db->Execute(\"INSERT INTO \".TABLE_ADMIN_NAVIGATION.\" (`pid`, `text`, `icon`, `url_i`, `url_d`, `sortorder`, `parent`, `type`, `navtype`, `cls`, `handler`, `iconCls`) VALUES (NULL, \'xt_payments_configuration\',\'../plugins/xt_payments/images/money.png\',\'plugin=xt_payments&load_section=XTPaymentsRegistration&pg=xtPaymentsCPanelLogin\',\'adminHandler.php?\',NULL,\'0\',\'I\',\'N\',NULL,\'clickHandler2\',NULL); \");\n\n// disable PayPal express for standard PayPal plg\n$db->Execute(\"UPDATE \".TABLE_CONFIGURATION_PAYMENT.\" SET config_value = \'false\' where config_key = \'XT_Paypal_EXPRESS\';\");\n\n$db->Execute(\"UPDATE \" . TABLE_ADMIN_NAVIGATION . \" SET TYPE=\'G\' WHERE text=\'payment\' AND type=\'I\'\");\n$db->Execute(\"replace INTO \" . TABLE_ADMIN_NAVIGATION . \" (`pid` ,`text` ,`icon` ,`url_i` ,`url_d` ,`sortorder` ,`parent` ,`type` ,`navtype`) VALUES (NULL , \'xt_payments_configuration_left\', \'../plugins/xt_payments/images/money.png\', \'&plugin=xt_payments&load_section=XTPaymentsRegistration&pg=xtPaymentsCPanelLogin\', \'adminHandler.php\', \'4000\', \'payment\', \'I\', \'W\');\");\n\ninclude _SRV_WEBROOT._SRV_WEB_PLUGINS.\'xt_payments/hooks/db_install.php\';\n','\n        \n$db->Execute(\"DELETE FROM \".TABLE_ADMIN_NAVIGATION.\" WHERE text = \'xt_payments\' or text = \'xt_payments_configuration\'\");\n\n    ','2014-12-17 15:37:04'),(15,15,'1.0.6','\n			if (!$this->_FieldExists(\'google_product_cat\',DB_PREFIX.\'_products\')) \n			$db->Execute(\"ALTER TABLE `\".DB_PREFIX.\"_products` ADD `google_product_cat` VARCHAR( 255 ) NOT NULL;\");\n			                                \n			if (!$this->_FieldExists(\'google_product_cat\',DB_PREFIX.\'_categories\')) \n			$db->Execute(\"ALTER TABLE `\".DB_PREFIX.\"_categories` ADD `google_product_cat` VARCHAR( 255 ) NOT NULL;\");\n		','\n			if ($this->_FieldExists(\'google_product_cat\',TABLE_PRODUCTS)){ \n			$db->Execute(\"ALTER TABLE `\".DB_PREFIX.\"_products` DROP `google_product_cat`;\");\n			}                                \n			if ($this->_FieldExists(\'google_product_cat\',TABLE_CATEGORIES)){ \n			$db->Execute(\"ALTER TABLE `\".DB_PREFIX.\"_categories` DROP `google_product_cat`;\");\n			}\n		','2014-12-17 15:37:06'),(16,16,'1.0.6','\n			require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/db_install.php\';\n		','\n			require_once _SRV_WEBROOT.\'plugins/xt_cleancache/hooks/db_uninstall.php\';\n		','2014-12-17 15:37:08'),(17,17,'1.0.3',NULL,NULL,'2014-12-17 15:37:10'),(18,18,'1.4.2','\r\n//$db->Execute(\"INSERT INTO \".TABLE_ADMIN_NAVIGATION.\" (`pid` ,`text` ,`icon` ,`url_i` ,`url_d` ,`sortorder` ,`parent` ,`type` ,`navtype`) VALUES (NULL , \'xt_newsletter2go_portal\', \'../plugins/xt_newsletter2go/images/runner.png\', \'../plugins/xt_newsletter2go/xtAdmin/nl2go_login.php\', \'\', \'3500\', \'shop\', \'I\', \'W\');\");\r\n$db->Execute(\"ALTER TABLE \".TABLE_CUSTOMERS.\" ADD COLUMN `nl2go_newsletter_status` INTEGER UNSIGNED NOT NULL DEFAULT \'0\' AFTER `campaign_id`;\");\r\n\r\n','\r\n  //  $db->Execute(\"DELETE FROM \".TABLE_ADMIN_NAVIGATION.\" WHERE text = \'xt_newsletter2go_portal\'\");\r\n    $db->Execute(\"ALTER TABLE \".TABLE_CUSTOMERS.\" DROP COLUMN `nl2go_newsletter_status`;\");\r\n','2014-12-17 15:37:12'),(19,19,'2.7.0','\n\n$db->Execute(\"\n	INSERT INTO \".TABLE_ADMIN_NAVIGATION.\" (`pid`, `text`, `icon`, `url_i`, `url_d`, `sortorder`, `parent`, `type`, `navtype`, `cls`, `handler`, `iconCls`) \n	VALUES (NULL, \'magnalister\',\'../plugins/magnalister/images/magnalister_icon_veyton_menue.png\',\'../plugins/magnalister/magnalister.php\',\n	        \'NULL\',\'5000\',\'shop\',\'I\',\'W\',NULL,\'clickHandler2\',NULL); \n\");\n\n$db->Execute(\"UPDATE \".TABLE_PLUGIN_PRODUCTS .\" SET `plugin_status` = \'1\' WHERE `code` =\'magnalister\' LIMIT 1 ;\");\n\n','\nfunction dropMagnaTables() {\n	global $db;\n	$tables = $db->MetaTables();\n	if (empty($tables)) {\n		return;\n	}\n	foreach ($tables as $table) {\n		if (strpos($table, \'magnalister\') !== 0) continue;\n		$db->Execute(\'DROP TABLE \'.$table);\n	}\n}\n\n$db->Execute(\"DELETE FROM \".TABLE_ADMIN_NAVIGATION.\" WHERE text = \'magnalister\'\");\ndropMagnaTables();\n','2014-12-17 15:37:15'),(20,20,'1.0.3','\r\n        include_once _SRV_WEBROOT . _SRV_WEB_PLUGINS. \'/xt_ship_and_track/installer/install.php\';\r\n       \n    ','\r\n        include_once _SRV_WEBROOT . _SRV_WEB_PLUGINS. \'/xt_ship_and_track/installer/uninstall.php\';\r\n       \n    ','2014-12-17 15:37:17'),(21,21,'1.1.2',NULL,NULL,'2014-12-17 15:37:19'),(22,22,'1.0.9','\r\n			if (!$this->_FieldExists(\'products_canonical_master\',TABLE_PRODUCTS)) \r\n				$db->Execute(\"ALTER TABLE \".TABLE_PRODUCTS.\" ADD `products_canonical_master` INT( 1 ) NOT NULL DEFAULT \'0\';\");\r\n		','\r\n			if ($this->_FieldExists(\'products_canonical_master\',TABLE_PRODUCTS)) \r\n				$db->Execute(\"ALTER TABLE \".TABLE_PRODUCTS.\" DROP `products_canonical_master`\");\r\n		','2014-12-17 15:37:21'),(23,23,'1.0.1','\r\n			require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/db_install.php\';\r\n		','\r\n			require_once _SRV_WEBROOT.\'plugins/xt_elefunds/hooks/db_uninstall.php\';\r\n		','2014-12-17 15:37:24');
/*!40000 ALTER TABLE `xt_plugin_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products`
--

DROP TABLE IF EXISTS `xt_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `products_owner` int(11) NOT NULL DEFAULT '1',
  `products_ean` varchar(128) DEFAULT NULL,
  `products_quantity` decimal(15,2) DEFAULT NULL,
  `products_average_quantity` int(11) DEFAULT '0',
  `products_shippingtime` int(4) DEFAULT NULL,
  `products_model` varchar(255) DEFAULT NULL,
  `products_master_model` varchar(255) DEFAULT NULL,
  `products_master_flag` tinyint(1) DEFAULT NULL,
  `products_image_from_master` tinyint(1) DEFAULT NULL,
  `products_master_slave_order` int(11) NOT NULL,
  `products_option_template` varchar(255) DEFAULT NULL,
  `products_option_list_template` varchar(255) DEFAULT NULL,
  `products_option_master_price` varchar(3) DEFAULT NULL,
  `price_flag_graduated_all` int(1) DEFAULT '0',
  `price_flag_graduated_1` int(1) DEFAULT '0',
  `price_flag_graduated_2` int(1) DEFAULT '0',
  `price_flag_graduated_3` int(1) DEFAULT '0',
  `products_sort` int(4) DEFAULT '0',
  `products_image` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_available` datetime DEFAULT NULL,
  `products_weight` decimal(15,4) DEFAULT NULL,
  `products_status` tinyint(1) DEFAULT NULL,
  `products_tax_class_id` int(11) DEFAULT NULL,
  `product_template` varchar(64) DEFAULT NULL,
  `product_list_template` varchar(64) DEFAULT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) DEFAULT '0',
  `products_transactions` int(11) DEFAULT '0',
  `products_fsk18` int(1) DEFAULT '0',
  `products_vpe` int(11) DEFAULT NULL,
  `products_vpe_status` int(1) DEFAULT '0',
  `products_vpe_value` decimal(15,4) DEFAULT '0.0000',
  `products_unit` int(11) DEFAULT '39',
  `products_average_rating` decimal(14,4) DEFAULT '0.0000',
  `products_rating_count` int(11) DEFAULT '0',
  `products_digital` int(1) DEFAULT '0',
  `flag_has_specials` int(1) NOT NULL DEFAULT '0',
  `products_serials` int(1) DEFAULT '0',
  `total_downloads` int(11) DEFAULT '0',
  `google_product_cat` varchar(255) NOT NULL,
  `products_canonical_master` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`),
  KEY `idx_products_date_added` (`date_added`),
  KEY `products_status` (`products_status`),
  KEY `products_ordered` (`products_ordered`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products`
--

LOCK TABLES `xt_products` WRITE;
/*!40000 ALTER TABLE `xt_products` DISABLE KEYS */;
INSERT INTO `xt_products` VALUES (1,NULL,NULL,1,'ean001',50.00,20,0,'art001',NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0,0,0,'',50.0000,'0000-00-00 00:00:00','2008-08-08 00:45:33',NULL,1.0000,1,1,'','',1,0,0,0,0,0,0.0000,39,0.0000,0,0,0,0,0,'',0),(2,NULL,NULL,1,'ean002',50.00,300,0,'art002',NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0,0,0,'',150.0000,'0000-00-00 00:00:00','2008-08-08 03:05:54',NULL,1.0000,1,1,'','',2,0,0,0,0,0,0.0000,39,0.0000,0,0,1,0,0,'',0),(3,NULL,NULL,1,'ean003',50.00,70,0,'art003',NULL,NULL,NULL,0,NULL,NULL,NULL,1,0,0,0,0,'',50.0000,'0000-00-00 00:00:00','2008-08-08 01:35:03',NULL,1.0000,1,1,'','',0,0,0,0,0,0,0.0000,39,0.0000,0,0,0,0,0,'',0),(4,NULL,2,1,'ean006',50.00,80,0,'art00','',0,0,0,'','','',0,0,0,0,0,'shuwa.jpg',10.0000,'0000-00-00 00:00:00','2014-12-18 13:34:38',NULL,1.0000,1,2,'','',3,0,0,0,0,0,0.0000,39,0.0000,0,0,0,0,0,'New',0);
/*!40000 ALTER TABLE `xt_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_cross_sell`
--

DROP TABLE IF EXISTS `xt_products_cross_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_cross_sell` (
  `products_id` int(11) NOT NULL,
  `products_id_cross_sell` int(11) NOT NULL,
  UNIQUE KEY `products_id` (`products_id`,`products_id_cross_sell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_cross_sell`
--

LOCK TABLES `xt_products_cross_sell` WRITE;
/*!40000 ALTER TABLE `xt_products_cross_sell` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_cross_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_description`
--

DROP TABLE IF EXISTS `xt_products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_description` (
  `products_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL DEFAULT '1',
  `reload_st` int(11) NOT NULL,
  `products_name` varchar(255) DEFAULT NULL,
  `products_description` text,
  `products_short_description` text,
  `products_keywords` varchar(255) DEFAULT NULL,
  `products_url` varchar(255) DEFAULT NULL,
  `products_store_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`language_code`,`products_store_id`),
  KEY `language_code` (`language_code`),
  KEY `products_store_id` (`products_store_id`),
  FULLTEXT KEY `products_name` (`products_name`),
  FULLTEXT KEY `products_description` (`products_description`),
  FULLTEXT KEY `products_short_description` (`products_short_description`),
  FULLTEXT KEY `products_keywords` (`products_keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_description`
--

LOCK TABLES `xt_products_description` WRITE;
/*!40000 ALTER TABLE `xt_products_description` DISABLE KEYS */;
INSERT INTO `xt_products_description` VALUES (1,'de',0,'Standardartikel','Normaler Artikel mit einem Preis<br>',NULL,NULL,NULL,1),(2,'de',0,'Artikel mit Sonderpreis','Normaler Artikel mit Sonderpreis (special)',NULL,NULL,NULL,1),(3,'de',0,'Artikel mit Staffelpreisen','Normaler Artikel mit Staffelpreisen',NULL,NULL,NULL,1),(4,'de',0,'Normaler Artikel 2','<p>Was ist das? Das ist was!</p>\n','','','mein URL!',1),(1,'en',0,'Standardproduct','Standard product with normal pricing',NULL,NULL,NULL,1),(2,'en',0,'Product with special price','Standard product with special pricing',NULL,NULL,NULL,1),(3,'en',0,'Product with graduated pricing','Standard product with graduated pricing',NULL,NULL,NULL,1),(4,'en',0,'Default product 2','<p>Standard product with normal pricing</p>\n','','','kein url!',1);
/*!40000 ALTER TABLE `xt_products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_permission`
--

DROP TABLE IF EXISTS `xt_products_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_permission` (
  `pid` int(11) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_permission`
--

LOCK TABLES `xt_products_permission` WRITE;
/*!40000 ALTER TABLE `xt_products_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_price_group_1`
--

DROP TABLE IF EXISTS `xt_products_price_group_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_price_group_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `discount_quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_price_group_1`
--

LOCK TABLES `xt_products_price_group_1` WRITE;
/*!40000 ALTER TABLE `xt_products_price_group_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_price_group_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_price_group_2`
--

DROP TABLE IF EXISTS `xt_products_price_group_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_price_group_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `discount_quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_price_group_2`
--

LOCK TABLES `xt_products_price_group_2` WRITE;
/*!40000 ALTER TABLE `xt_products_price_group_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_price_group_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_price_group_3`
--

DROP TABLE IF EXISTS `xt_products_price_group_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_price_group_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `discount_quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_price_group_3`
--

LOCK TABLES `xt_products_price_group_3` WRITE;
/*!40000 ALTER TABLE `xt_products_price_group_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_price_group_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_price_group_all`
--

DROP TABLE IF EXISTS `xt_products_price_group_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_price_group_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `discount_quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_price_group_all`
--

LOCK TABLES `xt_products_price_group_all` WRITE;
/*!40000 ALTER TABLE `xt_products_price_group_all` DISABLE KEYS */;
INSERT INTO `xt_products_price_group_all` VALUES (1,3,10,40.0000),(2,3,20,30.0000),(3,3,1,50.0000);
/*!40000 ALTER TABLE `xt_products_price_group_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_price_special`
--

DROP TABLE IF EXISTS `xt_products_price_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_price_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_price` decimal(15,4) NOT NULL,
  `date_available` datetime DEFAULT NULL,
  `date_expired` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `group_permission_all` int(1) DEFAULT NULL,
  `group_permission_1` int(1) DEFAULT '0',
  `group_permission_2` int(1) DEFAULT '0',
  `group_permission_3` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_price_special`
--

LOCK TABLES `xt_products_price_special` WRITE;
/*!40000 ALTER TABLE `xt_products_price_special` DISABLE KEYS */;
INSERT INTO `xt_products_price_special` VALUES (1,2,70.0000,'2008-01-01 12:00:00','2018-08-08 12:00:00',1,1,0,0,0);
/*!40000 ALTER TABLE `xt_products_price_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_reviews`
--

DROP TABLE IF EXISTS `xt_products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `review_rating` int(1) NOT NULL,
  `review_date` datetime NOT NULL,
  `review_status` int(1) NOT NULL DEFAULT '0',
  `language_code` char(2) NOT NULL,
  `review_text` text,
  `review_title` text,
  `review_source` varchar(64) DEFAULT NULL,
  `admin_comment` text,
  PRIMARY KEY (`review_id`),
  KEY `products_id_review_status` (`products_id`,`review_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_reviews`
--

LOCK TABLES `xt_products_reviews` WRITE;
/*!40000 ALTER TABLE `xt_products_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_reviews_permission`
--

DROP TABLE IF EXISTS `xt_products_reviews_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_reviews_permission` (
  `pid` int(11) NOT NULL,
  `permission` tinyint(1) DEFAULT '0',
  `pgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`,`pgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_reviews_permission`
--

LOCK TABLES `xt_products_reviews_permission` WRITE;
/*!40000 ALTER TABLE `xt_products_reviews_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_reviews_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_serials`
--

DROP TABLE IF EXISTS `xt_products_serials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_serials` (
  `serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial_id`),
  FULLTEXT KEY `serial_number` (`serial_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_serials`
--

LOCK TABLES `xt_products_serials` WRITE;
/*!40000 ALTER TABLE `xt_products_serials` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_products_serials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_products_to_categories`
--

DROP TABLE IF EXISTS `xt_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `master_link` tinyint(1) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`categories_id`,`store_id`),
  KEY `categories_id` (`categories_id`),
  KEY `master_link` (`master_link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_products_to_categories`
--

LOCK TABLES `xt_products_to_categories` WRITE;
/*!40000 ALTER TABLE `xt_products_to_categories` DISABLE KEYS */;
INSERT INTO `xt_products_to_categories` VALUES (1,1,1,1),(2,1,1,1),(3,1,1,1),(4,2,1,1),(4,1,0,1);
/*!40000 ALTER TABLE `xt_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_sales_stats`
--

DROP TABLE IF EXISTS `xt_sales_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_sales_stats` (
  `sale_stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_stat_type` tinyint(1) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_status` int(5) DEFAULT NULL,
  `products_count` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`sale_stat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_sales_stats`
--

LOCK TABLES `xt_sales_stats` WRITE;
/*!40000 ALTER TABLE `xt_sales_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_sales_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_search`
--

DROP TABLE IF EXISTS `xt_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `result_count` int(6) unsigned NOT NULL,
  `request_count` int(11) unsigned NOT NULL,
  `last_date` date NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_search`
--

LOCK TABLES `xt_search` WRITE;
/*!40000 ALTER TABLE `xt_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_seo_stop_words`
--

DROP TABLE IF EXISTS `xt_seo_stop_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_seo_stop_words` (
  `stop_word_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` char(3) DEFAULT NULL,
  `stopword_lookup` varchar(255) DEFAULT NULL,
  `stopword_replacement` varchar(255) DEFAULT '',
  `replace_word` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stop_word_id`),
  KEY `language_code` (`language_code`)
) ENGINE=MyISAM AUTO_INCREMENT=629 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_seo_stop_words`
--

LOCK TABLES `xt_seo_stop_words` WRITE;
/*!40000 ALTER TABLE `xt_seo_stop_words` DISABLE KEYS */;
INSERT INTO `xt_seo_stop_words` VALUES (1,'ALL','Á','A',1),(2,'ALL','Í','I',1),(3,'ALL','Ò','O',1),(4,'ALL','Ý','Y',1),(5,'ALL','á','a',1),(6,'ALL','í','i',1),(7,'ALL','ó','o',1),(8,'ALL','ý','y',1),(9,'ALL','À','A',1),(10,'ALL','È','E',1),(11,'ALL','Ì','I',1),(12,'ALL','Ò','O',1),(13,'ALL','Ù','U',1),(14,'ALL','à','a',1),(15,'ALL','è','e',1),(16,'ALL','ì','i',1),(17,'ALL','ò','o',1),(18,'ALL','ù','u',1),(19,'ALL','Â','A',1),(20,'ALL','Ê','E',1),(21,'ALL','Î','I',1),(22,'ALL','Ô','O',1),(23,'ALL','Û','U',1),(24,'ALL','â','a',1),(25,'ALL','ê','e',1),(26,'ALL','î','i',1),(27,'ALL','ô','o',1),(28,'ALL','û','u',1),(29,'ALL','Æ','AE',1),(30,'ALL','Ç','C',1),(31,'ALL','Ð','Eth',1),(32,'ALL','Ø','O',1),(33,'ALL','Þ','Thorn',1),(34,'ALL','æ','ae',1),(35,'ALL','ç','c',1),(36,'ALL','đ','eth',1),(37,'ALL','ø','o',1),(38,'ALL','þ','thorn',1),(39,'ALL','Ä','ae',1),(40,'ALL','Ö','oe',1),(41,'ALL','Ü','ue',1),(42,'ALL','ä','ae',1),(43,'ALL','ü','ue',1),(44,'ALL','ö','oe',1),(45,'ALL','ß','ss',1),(46,'de','aber','',0),(47,'de','als','',0),(48,'de','am','',0),(49,'de','an','',0),(50,'de','auch','',0),(51,'de','auf','',0),(52,'de','aus','',0),(53,'de','bei','',0),(54,'de','bin','',0),(55,'de','bis','',0),(56,'de','bist','',0),(57,'de','da','',0),(58,'de','dadurch','',0),(59,'de','daher','',0),(60,'de','darum','',0),(61,'de','das','',0),(62,'de','daß','',0),(63,'de','dass','',0),(64,'de','dein','',0),(65,'de','deine','',0),(66,'de','dem','',0),(67,'de','den','',0),(68,'de','der','',0),(69,'de','des','',0),(70,'de','deshalb','',0),(71,'de','dessen','',0),(72,'de','die','',0),(73,'de','dies','',0),(74,'de','dieser','',0),(75,'de','dieses','',0),(76,'de','doch','',0),(77,'de','dort','',0),(78,'de','du','',0),(79,'de','durch','',0),(80,'de','ein','',0),(81,'de','eine','',0),(82,'de','einem','',0),(83,'de','einen','',0),(84,'de','einer','',0),(85,'de','eines','',0),(86,'de','er','',0),(87,'de','es','',0),(88,'de','euer','',0),(89,'de','eure','',0),(90,'de','für','',0),(91,'de','hatte','',0),(92,'de','hatten','',0),(93,'de','hattest','',0),(94,'de','hattet','',0),(95,'de','hier','',0),(96,'de','hinter','',0),(97,'de','ich','',0),(98,'de','ihr','',0),(99,'de','ihre','',0),(100,'de','im','',0),(101,'de','in','',0),(102,'de','ist','',0),(103,'de','ja','',0),(104,'de','jede','',0),(105,'de','jedem','',0),(106,'de','jeden','',0),(107,'de','jeder','',0),(108,'de','jedes','',0),(109,'de','jener','',0),(110,'de','jenes','',0),(111,'de','jetzt','',0),(112,'de','kann','',0),(113,'de','kannst','',0),(114,'de','können','',0),(115,'de','könnt','',0),(116,'de','machen','',0),(117,'de','mein','',0),(118,'de','meine','',0),(119,'de','mit','',0),(120,'de','muß','',0),(121,'de','müssen','',0),(122,'de','mußt','',0),(123,'de','musst','',0),(124,'de','müßt','',0),(125,'de','nach','',0),(126,'de','nachdem','',0),(127,'de','nein','',0),(128,'de','nicht','',0),(129,'de','nun','',0),(130,'de','oder','',0),(131,'de','seid','',0),(132,'de','sein','',0),(133,'de','seine','',0),(134,'de','sich','',0),(135,'de','sie','',0),(136,'de','sind','',0),(137,'de','soll','',0),(138,'de','sollen','',0),(139,'de','sollst','',0),(140,'de','sollt','',0),(141,'de','sonst','',0),(142,'de','soweit','',0),(143,'de','sowie','',0),(144,'de','über','',0),(145,'de','und','',0),(146,'de','unser','',0),(147,'de','unsere','',0),(148,'de','unter','',0),(149,'de','vom','',0),(150,'de','von','',0),(151,'de','vor','',0),(152,'de','wann','',0),(153,'de','warum','',0),(154,'de','was','',0),(155,'de','weiter','',0),(156,'de','weitere','',0),(157,'de','wenn','',0),(158,'de','wer','',0),(159,'de','werde','',0),(160,'de','werden','',0),(161,'de','werdet','',0),(162,'de','weshalb','',0),(163,'de','wie','',0),(164,'de','wieder','',0),(165,'de','wieso','',0),(166,'de','wir','',0),(167,'de','wird','',0),(168,'de','wirst','',0),(169,'de','wo','',0),(170,'de','woher','',0),(171,'de','wohin','',0),(172,'de','zu','',0),(173,'de','zum','',0),(174,'de','zur','',0),(175,'en','able','',0),(176,'en','about','',0),(177,'en','above','',0),(178,'en','according','',0),(179,'en','accordingly','',0),(180,'en','across','',0),(181,'en','actually','',0),(182,'en','after','',0),(183,'en','afterwards','',0),(184,'en','again','',0),(185,'en','against','',0),(186,'en','ain\'t','',0),(187,'en','all','',0),(188,'en','allow','',0),(189,'en','allows','',0),(190,'en','almost','',0),(191,'en','alone','',0),(192,'en','along','',0),(193,'en','already','',0),(194,'en','also','',0),(195,'en','although','',0),(196,'en','always','',0),(197,'en','am','',0),(198,'en','among','',0),(199,'en','amongst','',0),(200,'en','an','',0),(201,'en','and','',0),(202,'en','another','',0),(203,'en','any','',0),(204,'en','anybody','',0),(205,'en','anyhow','',0),(206,'en','anyone','',0),(207,'en','anything','',0),(208,'en','anyway','',0),(209,'en','anyways','',0),(210,'en','anywhere','',0),(211,'en','apart','',0),(212,'en','appear','',0),(213,'en','appreciate','',0),(214,'en','appropriate','',0),(215,'en','are','',0),(216,'en','aren\'t','',0),(217,'en','around','',0),(218,'en','as','',0),(219,'en','a\'s','',0),(220,'en','aside','',0),(221,'en','ask','',0),(222,'en','asking','',0),(223,'en','associated','',0),(224,'en','at','',0),(225,'en','available','',0),(226,'en','away','',0),(227,'en','awfully','',0),(228,'en','be','',0),(229,'en','became','',0),(230,'en','because','',0),(231,'en','become','',0),(232,'en','becomes','',0),(233,'en','becoming','',0),(234,'en','been','',0),(235,'en','before','',0),(236,'en','beforehand','',0),(237,'en','behind','',0),(238,'en','being','',0),(239,'en','believe','',0),(240,'en','below','',0),(241,'en','beside','',0),(242,'en','besides','',0),(243,'en','best','',0),(244,'en','better','',0),(245,'en','between','',0),(246,'en','beyond','',0),(247,'en','both','',0),(248,'en','brief','',0),(249,'en','but','',0),(250,'en','by','',0),(251,'en','came','',0),(252,'en','can','',0),(253,'en','cannot','',0),(254,'en','cant','',0),(255,'en','can\'t','',0),(256,'en','cause','',0),(257,'en','causes','',0),(258,'en','certain','',0),(259,'en','certainly','',0),(260,'en','changes','',0),(261,'en','clearly','',0),(262,'en','c\'mon','',0),(263,'en','co','',0),(264,'en','com','',0),(265,'en','come','',0),(266,'en','comes','',0),(267,'en','concerning','',0),(268,'en','consequently','',0),(269,'en','consider','',0),(270,'en','considering','',0),(271,'en','contain','',0),(272,'en','containing','',0),(273,'en','contains','',0),(274,'en','corresponding','',0),(275,'en','could','',0),(276,'en','couldn\'t','',0),(277,'en','course','',0),(278,'en','c\'s','',0),(279,'en','currently','',0),(280,'en','definitely','',0),(281,'en','despite','',0),(282,'en','did','',0),(283,'en','didn\'t','',0),(284,'en','different','',0),(285,'en','do','',0),(286,'en','does','',0),(287,'en','doesn\'t','',0),(288,'en','doing','',0),(289,'en','done','',0),(290,'en','don\'t','',0),(291,'en','down','',0),(292,'en','during','',0),(293,'en','each','',0),(294,'en','edu','',0),(295,'en','eg','',0),(296,'en','eight','',0),(297,'en','either','',0),(298,'en','else','',0),(299,'en','elsewhere','',0),(300,'en','enough','',0),(301,'en','entirely','',0),(302,'en','especially','',0),(303,'en','et','',0),(304,'en','etc','',0),(305,'en','even','',0),(306,'en','ever','',0),(307,'en','every','',0),(308,'en','everybody','',0),(309,'en','everyone','',0),(310,'en','everything','',0),(311,'en','everywhere','',0),(312,'en','ex','',0),(313,'en','exactly','',0),(314,'en','example','',0),(315,'en','except','',0),(316,'en','far','',0),(317,'en','few','',0),(318,'en','fifth','',0),(319,'en','first','',0),(320,'en','five','',0),(321,'en','followed','',0),(322,'en','following','',0),(323,'en','follows','',0),(324,'en','for','',0),(325,'en','former','',0),(326,'en','formerly','',0),(327,'en','forth','',0),(328,'en','four','',0),(329,'en','from','',0),(330,'en','further','',0),(331,'en','furthermore','',0),(332,'en','get','',0),(333,'en','gets','',0),(334,'en','getting','',0),(335,'en','given','',0),(336,'en','gives','',0),(337,'en','go','',0),(338,'en','goes','',0),(339,'en','going','',0),(340,'en','gone','',0),(341,'en','got','',0),(342,'en','gotten','',0),(343,'en','greetings','',0),(344,'en','had','',0),(345,'en','hadn\'t','',0),(346,'en','happens','',0),(347,'en','hardly','',0),(348,'en','has','',0),(349,'en','hasn\'t','',0),(350,'en','have','',0),(351,'en','haven\'t','',0),(352,'en','having','',0),(353,'en','he','',0),(354,'en','hello','',0),(355,'en','help','',0),(356,'en','hence','',0),(357,'en','her','',0),(358,'en','here','',0),(359,'en','hereafter','',0),(360,'en','hereby','',0),(361,'en','herein','',0),(362,'en','here\'s','',0),(363,'en','hereupon','',0),(364,'en','hers','',0),(365,'en','herself','',0),(366,'en','he\'s','',0),(367,'en','hi','',0),(368,'en','him','',0),(369,'en','himself','',0),(370,'en','his','',0),(371,'en','hither','',0),(372,'en','hopefully','',0),(373,'en','how','',0),(374,'en','howbeit','',0),(375,'en','however','',0),(376,'en','i\'d','',0),(377,'en','ie','',0),(378,'en','if','',0),(379,'en','ignored','',0),(380,'en','ill','',0),(381,'en','i\'m','',0),(382,'en','immediate','',0),(383,'en','in','',0),(384,'en','inasmuch','',0),(385,'en','inc','',0),(386,'en','indeed','',0),(387,'en','indicate','',0),(388,'en','indicated','',0),(389,'en','indicates','',0),(390,'en','inner','',0),(391,'en','insofar','',0),(392,'en','instead','',0),(393,'en','into','',0),(394,'en','inward','',0),(395,'en','is','',0),(396,'en','isn\'t','',0),(397,'en','it','',0),(398,'en','it\'d','',0),(399,'en','it\'ll','',0),(400,'en','ist','',0),(401,'en','it\'s','',0),(402,'en','itself','',0),(403,'en','i\'ve','',0),(404,'en','just','',0),(405,'en','out','',0),(406,'en','outside','',0),(407,'en','over','',0),(408,'en','overall','',0),(409,'en','own','',0),(410,'en','particular','',0),(411,'en','particularly','',0),(412,'en','per','',0),(413,'en','perhaps','',0),(414,'en','placed','',0),(415,'en','please','',0),(416,'en','plus','',0),(417,'en','possible','',0),(418,'en','presumably','',0),(419,'en','probably','',0),(420,'en','provides','',0),(421,'en','que','',0),(422,'en','quite','',0),(423,'en','qv','',0),(424,'en','rather','',0),(425,'en','rd','',0),(426,'en','re','',0),(427,'en','really','',0),(428,'en','reasonably','',0),(429,'en','regarding','',0),(430,'en','regardless','',0),(431,'en','regards','',0),(432,'en','relatively','',0),(433,'en','respectively','',0),(434,'en','right','',0),(435,'en','said','',0),(436,'en','same','',0),(437,'en','saw','',0),(438,'en','say','',0),(439,'en','saying','',0),(440,'en','says','',0),(441,'en','second','',0),(442,'en','secondly','',0),(443,'en','see','',0),(444,'en','seeing','',0),(445,'en','seem','',0),(446,'en','seemed','',0),(447,'en','seeming','',0),(448,'en','seems','',0),(449,'en','seen','',0),(450,'en','self','',0),(451,'en','selves','',0),(452,'en','sensible','',0),(453,'en','sent','',0),(454,'en','serious','',0),(455,'en','seriously','',0),(456,'en','seven','',0),(457,'en','several','',0),(458,'en','shall','',0),(459,'en','she','',0),(460,'en','should','',0),(461,'en','shouldn\'t','',0),(462,'en','since','',0),(463,'en','six','',0),(464,'en','so','',0),(465,'en','some','',0),(466,'en','somebody','',0),(467,'en','somehow','',0),(468,'en','someone','',0),(469,'en','something','',0),(470,'en','sometime','',0),(471,'en','sometimes','',0),(472,'en','somewhat','',0),(473,'en','somewhere','',0),(474,'en','soon','',0),(475,'en','sorry','',0),(476,'en','specified','',0),(477,'en','specify','',0),(478,'en','specifying','',0),(479,'en','still','',0),(480,'en','sub','',0),(481,'en','such','',0),(482,'en','sup','',0),(483,'en','sure','',0),(484,'en','take','',0),(485,'en','taken','',0),(486,'en','tell','',0),(487,'en','tends','',0),(488,'en','th','',0),(489,'en','than','',0),(490,'en','thank','',0),(491,'en','thanks','',0),(492,'en','thanx','',0),(493,'en','that','',0),(494,'en','thats','',0),(495,'en','that\'s','',0),(496,'en','the','',0),(497,'en','their','',0),(498,'en','theirs','',0),(499,'en','them','',0),(500,'en','themselves','',0),(501,'en','then','',0),(502,'en','thence','',0),(503,'en','there','',0),(504,'en','thereafter','',0),(505,'en','thereby','',0),(506,'en','therefore','',0),(507,'en','therein','',0),(508,'en','theres','',0),(509,'en','there\'s','',0),(510,'en','thereupon','',0),(511,'en','these','',0),(512,'en','they','',0),(513,'en','they\'d','',0),(514,'en','they\'ll','',0),(515,'en','they\'re','',0),(516,'en','they\'ve','',0),(517,'en','think','',0),(518,'en','third','',0),(519,'en','this','',0),(520,'en','thorough','',0),(521,'en','thoroughly','',0),(522,'en','those','',0),(523,'en','though','',0),(524,'en','three','',0),(525,'en','through','',0),(526,'en','throughout','',0),(527,'en','thru','',0),(528,'en','thus','',0),(529,'en','to','',0),(530,'en','together','',0),(531,'en','too','',0),(532,'en','took','',0),(533,'en','toward','',0),(534,'en','towards','',0),(535,'en','tried','',0),(536,'en','tries','',0),(537,'en','truly','',0),(538,'en','try','',0),(539,'en','trying','',0),(540,'en','t\'s','',0),(541,'en','twice','',0),(542,'en','two','',0),(543,'en','un','',0),(544,'en','under','',0),(545,'en','unfortunately','',0),(546,'en','unless','',0),(547,'en','unlikely','',0),(548,'en','until','',0),(549,'en','unto','',0),(550,'en','up','',0),(551,'en','upon','',0),(552,'en','us','',0),(553,'en','use','',0),(554,'en','used','',0),(555,'en','useful','',0),(556,'en','uses','',0),(557,'en','using','',0),(558,'en','usually','',0),(559,'en','uucp','',0),(560,'en','value','',0),(561,'en','various','',0),(562,'en','very','',0),(563,'en','via','',0),(564,'en','viz','',0),(565,'en','vs','',0),(566,'en','want','',0),(567,'en','wants','',0),(568,'en','was','',0),(569,'en','wasn\'t','',0),(570,'en','way','',0),(571,'en','we','',0),(572,'en','we\'d','',0),(573,'en','welcome','',0),(574,'en','well','',0),(575,'en','we\'ll','',0),(576,'en','went','',0),(577,'en','were','',0),(578,'en','we\'re','',0),(579,'en','weren\'t','',0),(580,'en','we\'ve','',0),(581,'en','what','',0),(582,'en','whatever','',0),(583,'en','what\'s','',0),(584,'en','when','',0),(585,'en','whence','',0),(586,'en','whenever','',0),(587,'en','where','',0),(588,'en','whereafter','',0),(589,'en','whereas','',0),(590,'en','whereby','',0),(591,'en','wherein','',0),(592,'en','where\'s','',0),(593,'en','whereupon','',0),(594,'en','wherever','',0),(595,'en','whether','',0),(596,'en','which','',0),(597,'en','while','',0),(598,'en','whither','',0),(599,'en','who','',0),(600,'en','whoever','',0),(601,'en','whole','',0),(602,'en','whom','',0),(603,'en','who\'s','',0),(604,'en','whose','',0),(605,'en','why','',0),(606,'en','will','',0),(607,'en','willing','',0),(608,'en','wish','',0),(609,'en','with','',0),(610,'en','within','',0),(611,'en','without','',0),(612,'en','wonder','',0),(613,'en','won\'t','',0),(614,'en','would','',0),(615,'en','would','',0),(616,'en','wouldn\'t','',0),(617,'en','yes','',0),(618,'en','yet','',0),(619,'en','you','',0),(620,'en','you\'d','',0),(621,'en','you\'ll','',0),(622,'en','your','',0),(623,'en','you\'re','',0),(624,'en','yours','',0),(625,'en','yourself','',0),(626,'en','yourselves','',0),(627,'en','you\'ve','',0),(628,'en','zero','',0);
/*!40000 ALTER TABLE `xt_seo_stop_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_seo_url`
--

DROP TABLE IF EXISTS `xt_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_seo_url` (
  `url_md5` varchar(32) NOT NULL,
  `url_text` varchar(255) NOT NULL,
  `language_code` char(2) NOT NULL DEFAULT '0',
  `link_type` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`url_md5`,`store_id`),
  KEY `link_id` (`link_id`),
  FULLTEXT KEY `url_text` (`url_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_seo_url`
--

LOCK TABLES `xt_seo_url` WRITE;
/*!40000 ALTER TABLE `xt_seo_url` DISABLE KEYS */;
INSERT INTO `xt_seo_url` VALUES ('8cd40e5ab7a8656da6ab20a9c72dce58','de/liefer-und-versandkosten','de',3,1,'','','',1),('5bb47b2eae6e390550ab0f241754dcb4','de/privatsphaere-und-datenschutz','de',3,2,'','','',1),('f8c52b1086cf470af5095530783a9234','de/unsere-agb','de',3,3,'','','',1),('496d534d52f950948d0cd1897994107b','de/impressum','de',3,4,'','','',1),('61ccacf83a4f320f74355f3654bbd187','de/index','de',3,5,'','','',1),('d3196a28c24911ae3cc0bf41feb956a1','de/kontakt','de',3,6,'','','',1),('e54e35d9d9e073d61559a6f3c851e6ad','de/widerrufsrecht','de',3,7,'','','',1),('11944ba5ddc638ec8fe93c1cb8e00126','de/ueber-uns','de',3,8,'','','',1),('7f8d0124c9f059881abb48c0a4e554e7','de/zahlungsarten','de',3,10,'','','',1),('74fd45c40f25bb6561ea727aa9dfd09c','en/shipping-returns','en',3,1,'','','',1),('ea233d944eef958970779443eaffa7d7','en/privacy-notice','en',3,2,'','','',1),('151d229694fe6a155de659e87abc01dc','en/conditions-of-use','en',3,3,'','','',1),('5079d8ab4bf72cb79d88b7edf5d2344c','en/impressum','en',3,4,'','','',1),('5419495b82466333350846abeab1e916','en/index','en',3,5,'','','',1),('5a8ea6f92baa6194d7e0f4c027cc34f2','en/contact','en',3,6,'','','',1),('c484320a8c4a409e9f6e403709703e43','en/right-of-rescission','en',3,7,'','','',1),('dea4749001d6c2ee1a49295dadc36ab8','en/about-us','en',3,8,'','','',1),('52873a4986eab71d228544ca46a5716d','de/kategorie-1','de',2,1,'','','',1),('02bed1c67f0e2b436ac3475194a44231','de/kategorie-2','de',2,2,'','','',1),('4082c489c70516d82318e93e28ac4d3d','de/hersteller-a','de',4,1,'','','',1),('1c9ce92035f14209d1fd27e850a4dc8f','de/hersteller-b','de',4,2,'','','',1),('749f1d40f6afddfd492df7a419c3e192','de/hersteller-c','de',4,3,'','','',1),('f78403057d375ed914380f8e6c5dadaf','de/hersteller-d','de',4,4,'','','',1),('cdacab2dcb77c88792b332ae8e924168','de/kategorie-1/standardartikel','de',1,1,'','','',1),('d7417551c093944860fbf25468ae3011','de/kategorie-1/artikel-mit-sonderpreis','de',1,2,'','','',1),('083738e26c6a9fa44da8f7e63ae6c426','de/kategorie-1/artikel-mit-staffelpreisen','de',1,3,'','','',1),('3a522e146aff107ea2b35284278c1092','de/kategorie-2/normaler-artikel-2','de',1,4,'','','',1),('504fd930091e36141f92efad25704555','en/category-1','en',2,1,'','','',1),('42f1896f938a9885e0a64aec398e62ce','en/category-2','en',2,2,'','','',1),('97ecb3bba08b376a8f91fe846f2a5199','en/hersteller-a','en',4,1,'','','',1),('bf151d1a66719cc6bfe30b0873e67521','en/hersteller-b','en',4,2,'','','',1),('6a5aa4fb1bb4f9ebb47d0dffd658288e','en/hersteller-c','en',4,3,'','','',1),('69acbbe9f99be5e6391904cef2b6b5a0','en/hersteller-d','en',4,4,'','','',1),('480524467d4b5dd473a11f352bf2afd8','en/category-1/standardproduct','en',1,1,'','','',1),('e9b06cfd302fcdb99f91cf33b66f1162','en/category-1/product-with-special-price','en',1,2,'','','',1),('7f2a687eba00048ee4327d202594554c','en/category-1/product-with-graduated-pricing','en',1,3,'','','',1),('0d380563c5784b8323fc2c4088316f37','en/category-2/default-product-2','en',1,4,'','','',1),('8a7cadd865fce586417d44428931df2e','de/xt_new_products','de',1000,3,NULL,NULL,NULL,1),('36e770af450060b1f73cea27b77a5422','en/xt_new_products','en',1000,3,NULL,NULL,NULL,1),('7d4c476d1dbc8a7749f9c6c5a3363aff','de/xt_special_products','de',1000,6,NULL,NULL,NULL,1),('c0ba5c787fb21d11a305a6704cc8f403','en/xt_special_products','en',1000,6,NULL,NULL,NULL,1),('ac62c4d4427edf8d3c39de5d7e480a80','de/xt_bestseller_products','de',1000,12,NULL,NULL,NULL,1),('2b05d761d149ea24e6ffeedb7dbce173','en/xt_bestseller_products','en',1000,12,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `xt_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_seo_url_redirect`
--

DROP TABLE IF EXISTS `xt_seo_url_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_seo_url_redirect` (
  `url_md5` varchar(32) NOT NULL,
  `master_key` int(11) NOT NULL,
  `url_text` varchar(255) NOT NULL,
  `language_code` char(2) NOT NULL DEFAULT '0',
  `link_type` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `url_text_redirect` varchar(255) NOT NULL,
  `url_md5_redirect` varchar(32) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `total_count` int(11) NOT NULL,
  KEY `link_id` (`link_id`),
  FULLTEXT KEY `url_text` (`url_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_seo_url_redirect`
--

LOCK TABLES `xt_seo_url_redirect` WRITE;
/*!40000 ALTER TABLE `xt_seo_url_redirect` DISABLE KEYS */;
INSERT INTO `xt_seo_url_redirect` VALUES ('e9972e3873bfdb18df064d0cb4fa8778',2,'index.php?page=404','en',0,0,1,'','',0,1);
/*!40000 ALTER TABLE `xt_seo_url_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_sessions2`
--

DROP TABLE IF EXISTS `xt_sessions2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_sessions2` (
  `sesskey` varchar(64) NOT NULL DEFAULT '',
  `expiry` datetime NOT NULL,
  `expireref` varchar(250) DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `sessdata` longtext,
  PRIMARY KEY (`sesskey`),
  KEY `sess2_expiry` (`expiry`),
  KEY `sess2_expireref` (`expireref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_sessions2`
--

LOCK TABLES `xt_sessions2` WRITE;
/*!40000 ALTER TABLE `xt_sessions2` DISABLE KEYS */;
INSERT INTO `xt_sessions2` VALUES ('fvp87579be9ibojhdl855jjqa3','2014-12-18 16:08:52','','2014-12-18 09:50:58','2014-12-18 15:44:52','customer%7CO%3A8%3A%22customer%22%3A12%3A%7Bs%3A12%3A%22customers_id%22%3Bi%3A0%3Bs%3A16%3A%22customers_status%22%3Bs%3A1%3A%221%22%3Bs%3A13%3A%22customer_info%22%3Ba%3A1%3A%7Bs%3A12%3A%22account_type%22%3Bi%3A0%3B%7Ds%3A24%3A%22customer_default_address%22%3Ba%3A0%3A%7B%7Ds%3A25%3A%22customer_shipping_address%22%3Ba%3A0%3A%7B%7Ds%3A24%3A%22customer_payment_address%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22error%22%3Bb%3A0%3Bs%3A11%3A%22_master_key%22%3Bs%3A12%3A%22customers_id%22%3Bs%3A15%3A%22_master_key_add%22%3Bs%3A15%3A%22address_book_id%22%3Bs%3A6%3A%22_table%22%3Bs%3A12%3A%22xt_customers%22%3Bs%3A10%3A%22_table_add%22%3Bs%3A22%3A%22xt_customers_addresses%22%3Bs%3A9%3A%22master_id%22%3Bs%3A12%3A%22customers_id%22%3B%7Dselected_language%7Cs%3A2%3A%22en%22%3Bcart%7CO%3A4%3A%22cart%22%3A22%3A%7Bs%3A7%3A%22content%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A11%3A%22content_tax%22%3BN%3Bs%3A13%3A%22content_count%22%3BN%3Bs%3A14%3A%22content_weight%22%3Bi%3A0%3Bs%3A11%3A%22sub_content%22%3Ba%3A0%3A%7B%7Ds%3A17%3A%22sub_content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A15%3A%22sub_content_tax%22%3BN%3Bs%3A17%3A%22sub_content_count%22%3BN%3Bs%3A18%3A%22sub_content_weight%22%3Bi%3A0%3Bs%3A4%3A%22type%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22weight%22%3Bi%3A0%3Bs%3A15%3A%22cart_total_full%22%3Bi%3A0%3Bs%3A14%3A%22total_discount%22%3Bi%3A0%3Bs%3A22%3A%22content_total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A23%3A%22content_weight_physical%22%3Bi%3A0%3Bs%3A8%3A%22discount%22%3Bs%3A5%3A%22false%22%3Bs%3A14%3A%22total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A12%3A%22show_content%22%3Ba%3A0%3A%7B%7Ds%3A16%3A%22show_sub_content%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A3%3A%22tax%22%3BN%3B%7Ddebug%7Ca%3A92%3A%7Bs%3A33%3A%22TABTEXT_XT_PAYMENTS_CONFIGURATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A33%3A%22TABTEXT_XT_PAYMENTS_CONFIGURATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TABTEXT_CONFIG_PLUGIN%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TABTEXT_CONFIG_PLUGIN%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_CONFIG_SEO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_CONFIG_SEO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_SYSTEMROOT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_SYSTEMROOT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A25%3A%22TABTEXT_XT_SHIP_AND_TRACK%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A25%3A%22TABTEXT_XT_SHIP_AND_TRACK%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A7%3A%22CONFIRM%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A7%3A%22CONFIRM%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22SAFE%20SELECTION%3F%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22SAFE%20SELECTION%3F%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A0%3A%22%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A6%3A%22DELETE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A6%3A%22DELETE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22ENABLE%20SELECTION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22ENABLE%20SELECTION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A17%3A%22DISABLE%20SELECTION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22DISABLE%20SELECTION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A4%3A%22COPY%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A4%3A%22COPY%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A28%3A%22TITLE_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A28%3A%22TITLE_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A30%3A%22HEADING_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A30%3A%22HEADING_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A14%3A%22ATTACHED%20FILES%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A14%3A%22ATTACHED%20FILES%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A14%3A%22FREE%20DOWNLOADS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A14%3A%22FREE%20DOWNLOADS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22PAYED%20DOWNLOADS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22PAYED%20DOWNLOADS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22START%20PROCESSING%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22START%20PROCESSING%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20COPY%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20COPY%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20MOVE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20MOVE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20LINK%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20LINK%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TEXT_STORELANGUAGE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TEXT_STORELANGUAGE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A13%3A%22MULTI%20ACTIONS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A13%3A%22MULTI%20ACTIONS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A5%3A%22ERROR%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A5%3A%22ERROR%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A23%3A%22RIGHT%20CLICK%20NOT%20ALLOWED%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A23%3A%22RIGHT%20CLICK%20NOT%20ALLOWED%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A5%3A%22ALERT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A5%3A%22ALERT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A7%3A%22FAILURE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A7%3A%22FAILURE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TEXT_PERMISSION_ID%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TEXT_PERMISSION_ID%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TEXT_PRODUCTS_OWNER%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TEXT_PRODUCTS_OWNER%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A29%3A%22TEXT_PRICE_FLAG_GRADUATED_ALL%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRICE_FLAG_GRADUATED_ALL%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_1%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_2%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_2%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_3%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_3%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TEXT_FLAG_HAS_SPECIALS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TEXT_FLAG_HAS_SPECIALS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TEXT_RELOAD_ST_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TEXT_RELOAD_ST_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A32%3A%22TEXT_PRODUCTS_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A32%3A%22TEXT_PRODUCTS_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A38%3A%22TEXT_PRODUCTS_SHORT_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A38%3A%22TEXT_PRODUCTS_SHORT_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A29%3A%22TEXT_PRODUCTS_KEYWORDS_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRODUCTS_KEYWORDS_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A24%3A%22TEXT_PRODUCTS_URL_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TEXT_PRODUCTS_URL_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A29%3A%22TEXT_PRODUCTS_STORE_ID_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRODUCTS_STORE_ID_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A20%3A%22TEXT_URL_TEXT_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TEXT_URL_TEXT_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A22%3A%22TEXT_META_TITLE_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TEXT_META_TITLE_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A25%3A%22TEXT_META_KEYWORDS_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A25%3A%22TEXT_META_KEYWORDS_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A28%3A%22TEXT_META_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A28%3A%22TEXT_META_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A17%3A%22TEXT_PRODUCTS_CMC%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22TEXT_PRODUCTS_CMC%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A23%3A%22TEXT_PRODUCTS_MODEL_OLD%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A23%3A%22TEXT_PRODUCTS_MODEL_OLD%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A11%3A%22TEXT_SAVING%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A11%3A%22TEXT_SAVING%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_CAT_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_CAT_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TABTEXT_UNASIGNED_CATS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TABTEXT_UNASIGNED_CATS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A23%3A%22TABTEXT_XT_MASTER_SLAVE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A23%3A%22TABTEXT_XT_MASTER_SLAVE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TABTEXT_MAGNALISTER%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TABTEXT_MAGNALISTER%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A29%3A%22TABTEXT_XT_STARTPAGE_PRODUCTS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TABTEXT_XT_STARTPAGE_PRODUCTS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A24%3A%22TABTEXT_ADODBPERFORMANCE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TABTEXT_ADODBPERFORMANCE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A12%3A%22TABTEXT_LOGS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A12%3A%22TABTEXT_LOGS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TABTEXT_XT_CLEANCACHE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TABTEXT_XT_CLEANCACHE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22TABTEXT_PHPINFO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22TABTEXT_PHPINFO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TABTEXT_LICENSE_INFO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TABTEXT_LICENSE_INFO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A11%3A%22TABTEXT_EXP%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A11%3A%22TABTEXT_EXP%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TABTEXT_XT_IM_EXPORT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TABTEXT_XT_IM_EXPORT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22TABTEXT_CONF_SEO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22TABTEXT_CONF_SEO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TABTEXT_SEO_REGENERATE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TABTEXT_SEO_REGENERATE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_STOP_WORDS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_STOP_WORDS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TABTEXT_SEO_PLUGINS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TABTEXT_SEO_PLUGINS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22TABTEXT_REDIRECT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22TABTEXT_REDIRECT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22TABTEXT_XT_CRON%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22TABTEXT_XT_CRON%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A24%3A%22TABTEXT_ELEFUNDS_ACCOUNT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TABTEXT_ELEFUNDS_ACCOUNT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TEXT_STORE_ID_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TEXT_STORE_ID_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A26%3A%22TEXT_PRODUCT_TO_ATTRIBUTES%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A26%3A%22TEXT_PRODUCT_TO_ATTRIBUTES%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TITLE_PRODUCT_TO_ATTRIBUTES%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TITLE_PRODUCT_TO_ATTRIBUTES%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A29%3A%22HEADING_PRODUCT_TO_ATTRIBUTES%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22HEADING_PRODUCT_TO_ATTRIBUTES%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A2%3A%22UP%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A2%3A%22UP%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A4%3A%22DOWN%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A4%3A%22DOWN%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TEXT_PRODUCT_TO_MEDIA%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TEXT_PRODUCT_TO_MEDIA%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TITLE_PRODUCT_TO_MEDIA%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TITLE_PRODUCT_TO_MEDIA%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A24%3A%22HEADING_PRODUCT_TO_MEDIA%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22HEADING_PRODUCT_TO_MEDIA%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22TEXT_FILES_FREE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22TEXT_FILES_FREE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A17%3A%22BUTTON_MULTI_MOVE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22BUTTON_MULTI_MOVE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A17%3A%22BUTTON_MULTI_COPY%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22BUTTON_MULTI_COPY%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22TITLE_MEDIALIST%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22TITLE_MEDIALIST%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A17%3A%22HEADING_MEDIALIST%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22HEADING_MEDIALIST%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A4%3A%22EDIT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A4%3A%22EDIT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22TEXT_FILES_ORDER%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22TEXT_FILES_ORDER%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22IMAGEPROCESSING%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22IMAGEPROCESSING%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TEXT_MEDIAIMAGELIST%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TEXT_MEDIAIMAGELIST%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TITLE_MEDIAIMAGELIST%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TITLE_MEDIAIMAGELIST%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22HEADING_MEDIAIMAGELIST%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22HEADING_MEDIAIMAGELIST%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TEXT_MEDIAIMAGESEARCH%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TEXT_MEDIAIMAGESEARCH%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TITLE_MEDIAIMAGESEARCH%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TITLE_MEDIAIMAGESEARCH%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A24%3A%22HEADING_MEDIAIMAGESEARCH%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22HEADING_MEDIAIMAGESEARCH%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A7%3A%22image_0%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A7%3A%22image_0%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TEXT_PRODUCT_TO_CAT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TEXT_PRODUCT_TO_CAT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7D%7Dadmin_user%7Ca%3A6%3A%7Bs%3A7%3A%22user_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22user_name%22%3Bs%3A6%3A%22xtLove%22%3Bs%3A8%3A%22group_id%22%3Bs%3A1%3A%221%22%3Bs%3A10%3A%22group_name%22%3Bs%3A11%3A%22Super%20Admin%22%3Bs%3A10%3A%22login_time%22%3Bi%3A1418908071%3Bs%3A9%3A%22admin_key%22%3Bs%3A32%3A%22c7f199b51e70f7e08e180bcda4fe4e99%22%3B%7D'),('3kg1j1pqaq3bsa6cc5p2t04qp3','2014-12-18 14:21:36','','2014-12-18 09:48:40','2014-12-18 13:57:36','agent_check%7Cs%3A5%3A%22false%22%3Bcustomer%7CO%3A8%3A%22customer%22%3A12%3A%7Bs%3A12%3A%22customers_id%22%3Bi%3A0%3Bs%3A16%3A%22customers_status%22%3Bs%3A1%3A%221%22%3Bs%3A13%3A%22customer_info%22%3Ba%3A1%3A%7Bs%3A12%3A%22account_type%22%3Bi%3A0%3B%7Ds%3A24%3A%22customer_default_address%22%3Ba%3A0%3A%7B%7Ds%3A25%3A%22customer_shipping_address%22%3Ba%3A0%3A%7B%7Ds%3A24%3A%22customer_payment_address%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22error%22%3Bb%3A0%3Bs%3A11%3A%22_master_key%22%3Bs%3A12%3A%22customers_id%22%3Bs%3A15%3A%22_master_key_add%22%3Bs%3A15%3A%22address_book_id%22%3Bs%3A6%3A%22_table%22%3Bs%3A12%3A%22xt_customers%22%3Bs%3A10%3A%22_table_add%22%3Bs%3A22%3A%22xt_customers_addresses%22%3Bs%3A9%3A%22master_id%22%3Bs%3A12%3A%22customers_id%22%3B%7Dselected_language%7Cs%3A2%3A%22en%22%3Bcart%7CO%3A4%3A%22cart%22%3A22%3A%7Bs%3A7%3A%22content%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A11%3A%22content_tax%22%3BN%3Bs%3A13%3A%22content_count%22%3BN%3Bs%3A14%3A%22content_weight%22%3Bi%3A0%3Bs%3A11%3A%22sub_content%22%3Ba%3A0%3A%7B%7Ds%3A17%3A%22sub_content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A15%3A%22sub_content_tax%22%3BN%3Bs%3A17%3A%22sub_content_count%22%3BN%3Bs%3A18%3A%22sub_content_weight%22%3Bi%3A0%3Bs%3A4%3A%22type%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22weight%22%3Bi%3A0%3Bs%3A15%3A%22cart_total_full%22%3Bi%3A0%3Bs%3A14%3A%22total_discount%22%3Bi%3A0%3Bs%3A22%3A%22content_total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A23%3A%22content_weight_physical%22%3Bi%3A0%3Bs%3A8%3A%22discount%22%3Bs%3A5%3A%22false%22%3Bs%3A14%3A%22total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A12%3A%22show_content%22%3Ba%3A0%3A%7B%7Ds%3A16%3A%22show_sub_content%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A3%3A%22tax%22%3BN%3B%7D'),('0nmv9tllgpb716lopfstje1v97','2014-12-19 13:20:01','','2014-12-19 10:03:53','2014-12-19 12:56:01','customer%7CO%3A8%3A%22customer%22%3A12%3A%7Bs%3A12%3A%22customers_id%22%3Bi%3A0%3Bs%3A16%3A%22customers_status%22%3Bs%3A1%3A%221%22%3Bs%3A13%3A%22customer_info%22%3Ba%3A1%3A%7Bs%3A12%3A%22account_type%22%3Bi%3A0%3B%7Ds%3A24%3A%22customer_default_address%22%3Ba%3A0%3A%7B%7Ds%3A25%3A%22customer_shipping_address%22%3Ba%3A0%3A%7B%7Ds%3A24%3A%22customer_payment_address%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22error%22%3Bb%3A0%3Bs%3A11%3A%22_master_key%22%3Bs%3A12%3A%22customers_id%22%3Bs%3A15%3A%22_master_key_add%22%3Bs%3A15%3A%22address_book_id%22%3Bs%3A6%3A%22_table%22%3Bs%3A12%3A%22xt_customers%22%3Bs%3A10%3A%22_table_add%22%3Bs%3A22%3A%22xt_customers_addresses%22%3Bs%3A9%3A%22master_id%22%3Bs%3A12%3A%22customers_id%22%3B%7Dselected_language%7Cs%3A2%3A%22en%22%3Bcart%7CO%3A4%3A%22cart%22%3A22%3A%7Bs%3A7%3A%22content%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A11%3A%22content_tax%22%3BN%3Bs%3A13%3A%22content_count%22%3BN%3Bs%3A14%3A%22content_weight%22%3Bi%3A0%3Bs%3A11%3A%22sub_content%22%3Ba%3A0%3A%7B%7Ds%3A17%3A%22sub_content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A15%3A%22sub_content_tax%22%3BN%3Bs%3A17%3A%22sub_content_count%22%3BN%3Bs%3A18%3A%22sub_content_weight%22%3Bi%3A0%3Bs%3A4%3A%22type%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22weight%22%3Bi%3A0%3Bs%3A15%3A%22cart_total_full%22%3Bi%3A0%3Bs%3A14%3A%22total_discount%22%3Bi%3A0%3Bs%3A22%3A%22content_total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A23%3A%22content_weight_physical%22%3Bi%3A0%3Bs%3A8%3A%22discount%22%3Bs%3A5%3A%22false%22%3Bs%3A14%3A%22total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A12%3A%22show_content%22%3Ba%3A0%3A%7B%7Ds%3A16%3A%22show_sub_content%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A3%3A%22tax%22%3BN%3B%7Dadmin_user%7Ca%3A6%3A%7Bs%3A7%3A%22user_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22user_name%22%3Bs%3A6%3A%22xtLove%22%3Bs%3A8%3A%22group_id%22%3Bs%3A1%3A%221%22%3Bs%3A10%3A%22group_name%22%3Bs%3A11%3A%22Super%20Admin%22%3Bs%3A10%3A%22login_time%22%3Bi%3A1418983439%3Bs%3A9%3A%22admin_key%22%3Bs%3A32%3A%2244fca48f7f60a8ae5883f46fec56a291%22%3B%7Ddebug%7Ca%3A60%3A%7Bs%3A33%3A%22TABTEXT_XT_PAYMENTS_CONFIGURATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A33%3A%22TABTEXT_XT_PAYMENTS_CONFIGURATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TABTEXT_CONFIG_PLUGIN%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TABTEXT_CONFIG_PLUGIN%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_CONFIG_SEO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_CONFIG_SEO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TABTEXT_SYSTEMROOT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TABTEXT_SYSTEMROOT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A11%3A%22TABTEXT_EXP%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A11%3A%22TABTEXT_EXP%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TABTEXT_XT_IM_EXPORT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TABTEXT_XT_IM_EXPORT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A24%3A%22TABTEXT_ADODBPERFORMANCE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TABTEXT_ADODBPERFORMANCE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A12%3A%22TABTEXT_LOGS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A12%3A%22TABTEXT_LOGS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TABTEXT_XT_CLEANCACHE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TABTEXT_XT_CLEANCACHE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22TABTEXT_PHPINFO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22TABTEXT_PHPINFO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A20%3A%22TABTEXT_LICENSE_INFO%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TABTEXT_LICENSE_INFO%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A7%3A%22CONFIRM%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A7%3A%22CONFIRM%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22SAFE%20SELECTION%3F%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22SAFE%20SELECTION%3F%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A0%3A%22%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A6%3A%22DELETE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A6%3A%22DELETE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22ENABLE%20SELECTION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22ENABLE%20SELECTION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A17%3A%22DISABLE%20SELECTION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22DISABLE%20SELECTION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A4%3A%22COPY%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A4%3A%22COPY%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A28%3A%22TITLE_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A28%3A%22TITLE_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A30%3A%22HEADING_XTPAYMENTSREGISTRATION%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A30%3A%22HEADING_XTPAYMENTSREGISTRATION%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A14%3A%22ATTACHED%20FILES%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A14%3A%22ATTACHED%20FILES%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A14%3A%22FREE%20DOWNLOADS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A14%3A%22FREE%20DOWNLOADS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A15%3A%22PAYED%20DOWNLOADS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A15%3A%22PAYED%20DOWNLOADS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A16%3A%22START%20PROCESSING%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A16%3A%22START%20PROCESSING%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20COPY%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20COPY%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20MOVE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20MOVE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22MULTI%20LINK%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A10%3A%22MULTI%20LINK%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TEXT_STORELANGUAGE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TEXT_STORELANGUAGE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A13%3A%22MULTI%20ACTIONS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A13%3A%22MULTI%20ACTIONS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A5%3A%22ERROR%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A5%3A%22ERROR%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A23%3A%22RIGHT%20CLICK%20NOT%20ALLOWED%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A23%3A%22RIGHT%20CLICK%20NOT%20ALLOWED%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A5%3A%22ALERT%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A5%3A%22ALERT%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A7%3A%22FAILURE%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A7%3A%22FAILURE%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A18%3A%22TEXT_PERMISSION_ID%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A18%3A%22TEXT_PERMISSION_ID%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A19%3A%22TEXT_PRODUCTS_OWNER%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A19%3A%22TEXT_PRODUCTS_OWNER%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A29%3A%22TEXT_PRICE_FLAG_GRADUATED_ALL%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRICE_FLAG_GRADUATED_ALL%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_1%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_2%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_2%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_3%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_PRICE_FLAG_GRADUATED_3%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A22%3A%22TEXT_FLAG_HAS_SPECIALS%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TEXT_FLAG_HAS_SPECIALS%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A21%3A%22TEXT_RELOAD_ST_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A21%3A%22TEXT_RELOAD_ST_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A32%3A%22TEXT_PRODUCTS_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A32%3A%22TEXT_PRODUCTS_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A38%3A%22TEXT_PRODUCTS_SHORT_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A38%3A%22TEXT_PRODUCTS_SHORT_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A29%3A%22TEXT_PRODUCTS_KEYWORDS_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRODUCTS_KEYWORDS_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A24%3A%22TEXT_PRODUCTS_URL_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TEXT_PRODUCTS_URL_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A29%3A%22TEXT_PRODUCTS_STORE_ID_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A29%3A%22TEXT_PRODUCTS_STORE_ID_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A20%3A%22TEXT_URL_TEXT_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TEXT_URL_TEXT_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A22%3A%22TEXT_META_TITLE_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A22%3A%22TEXT_META_TITLE_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A28%3A%22TEXT_META_DESCRIPTION_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A28%3A%22TEXT_META_DESCRIPTION_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A25%3A%22TEXT_META_KEYWORDS_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A25%3A%22TEXT_META_KEYWORDS_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A20%3A%22TEXT_STORE_ID_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A20%3A%22TEXT_STORE_ID_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A17%3A%22TEXT_PRODUCTS_CMC%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A17%3A%22TEXT_PRODUCTS_CMC%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A23%3A%22TEXT_PRODUCTS_MODEL_OLD%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A23%3A%22TEXT_PRODUCTS_MODEL_OLD%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A11%3A%22TEXT_SAVING%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A11%3A%22TEXT_SAVING%22%3Bs%3A4%3A%22desc%22%3Bs%3A0%3A%22%22%3B%7Ds%3A27%3A%22TEXT_CONTENT_HEADING_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A27%3A%22TEXT_CONTENT_HEADING_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A24%3A%22TEXT_CONTENT_BODY_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TEXT_CONTENT_BODY_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A30%3A%22TEXT_CONTENT_BODY_SHORT_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A30%3A%22TEXT_CONTENT_BODY_SHORT_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7Ds%3A24%3A%22TEXT_CONTENT_FILE_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A24%3A%22TEXT_CONTENT_FILE_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22de%20%22%3B%7Ds%3A28%3A%22TEXT_CONTENT_STORE_ID_STORE1%22%3Ba%3A2%3A%7Bs%3A4%3A%22name%22%3Bs%3A28%3A%22TEXT_CONTENT_STORE_ID_STORE1%22%3Bs%3A4%3A%22desc%22%3Bs%3A3%3A%22en%20%22%3B%7D%7D'),('3q0371kdlntkm65rpvp2i23tm2','2014-12-19 12:25:52','','2014-12-19 12:01:51','2014-12-19 12:01:52','agent_check%7Cs%3A5%3A%22false%22%3Bcustomer%7CO%3A8%3A%22customer%22%3A12%3A%7Bs%3A12%3A%22customers_id%22%3Bi%3A0%3Bs%3A16%3A%22customers_status%22%3Bs%3A1%3A%221%22%3Bs%3A13%3A%22customer_info%22%3Ba%3A1%3A%7Bs%3A12%3A%22account_type%22%3Bi%3A0%3B%7Ds%3A24%3A%22customer_default_address%22%3Ba%3A0%3A%7B%7Ds%3A25%3A%22customer_shipping_address%22%3Ba%3A0%3A%7B%7Ds%3A24%3A%22customer_payment_address%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22error%22%3Bb%3A0%3Bs%3A11%3A%22_master_key%22%3Bs%3A12%3A%22customers_id%22%3Bs%3A15%3A%22_master_key_add%22%3Bs%3A15%3A%22address_book_id%22%3Bs%3A6%3A%22_table%22%3Bs%3A12%3A%22xt_customers%22%3Bs%3A10%3A%22_table_add%22%3Bs%3A22%3A%22xt_customers_addresses%22%3Bs%3A9%3A%22master_id%22%3Bs%3A12%3A%22customers_id%22%3B%7Dselected_language%7Cs%3A2%3A%22en%22%3Bcart%7CO%3A4%3A%22cart%22%3A22%3A%7Bs%3A7%3A%22content%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A11%3A%22content_tax%22%3BN%3Bs%3A13%3A%22content_count%22%3BN%3Bs%3A14%3A%22content_weight%22%3Bi%3A0%3Bs%3A11%3A%22sub_content%22%3Ba%3A0%3A%7B%7Ds%3A17%3A%22sub_content_total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A15%3A%22sub_content_tax%22%3BN%3Bs%3A17%3A%22sub_content_count%22%3BN%3Bs%3A18%3A%22sub_content_weight%22%3Bi%3A0%3Bs%3A4%3A%22type%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22weight%22%3Bi%3A0%3Bs%3A15%3A%22cart_total_full%22%3Bi%3A0%3Bs%3A14%3A%22total_discount%22%3Bi%3A0%3Bs%3A22%3A%22content_total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A23%3A%22content_weight_physical%22%3Bi%3A0%3Bs%3A8%3A%22discount%22%3Bs%3A5%3A%22false%22%3Bs%3A14%3A%22total_physical%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A12%3A%22show_content%22%3Ba%3A0%3A%7B%7Ds%3A16%3A%22show_sub_content%22%3Ba%3A0%3A%7B%7Ds%3A5%3A%22total%22%3Ba%3A3%3A%7Bs%3A8%3A%22formated%22%3Bs%3A9%3A%22EUR%200%2C00%20%22%3Bs%3A5%3A%22plain%22%3Bd%3A0%3Bs%3A10%3A%22plain_otax%22%3Bd%3A0%3B%7Ds%3A3%3A%22tax%22%3BN%3B%7D');
/*!40000 ALTER TABLE `xt_sessions2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_shipper`
--

DROP TABLE IF EXISTS `xt_shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_shipper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shipper_code` varchar(16) COLLATE utf8_bin NOT NULL,
  `shipper_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `shipper_tracking_url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `shipper_api_enabled` int(1) unsigned DEFAULT '0',
  `shipper_enabled` int(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_shipper`
--

LOCK TABLES `xt_shipper` WRITE;
/*!40000 ALTER TABLE `xt_shipper` DISABLE KEYS */;
INSERT INTO `xt_shipper` VALUES (1,'dhl','DHL','http://nolp.dhl.de/nextt-online-public/set_identcodes.do?lang=de&idc=[TRACKING_CODE]',0,1),(2,'dpd','DPD','https://extranet.dpd.de/cgi-bin/delistrack?typ=1&lang=de&pknr=[TRACKING_CODE]',0,1),(3,'fedex','FedEx','https://www.fedex.com/fedextrack/?tracknumbers=[TRACKING_CODE]',0,1),(4,'gls','GLS','https://gls-group.eu/DE/de/paketverfolgung?txtAction=71000&match=[TRACKING_CODE]',0,1),(5,'go','GO!','https://order.general-overnight.com/ax4/control/customer_service?hash=&land=de&shId=[TRACKING_CODE]',0,1),(6,'hermes','Hermes','https://www.myhermes.de/wps/portal/paket/SISYR?auftragsNummer=[TRACKING_CODE]',1,1),(7,'iloxx','iloxx','https://www.iloxx.de/net/popup/trackpop.aspx?id=[TRACKING_CODE]',0,1),(8,'postoe','Post Österreich','http://www.post.at/sendungsverfolgung.php?pnum1=[TRACKING_CODE]',0,1),(9,'postch','Post Schweiz','http://www.post.ch/swisspost-tracking?formattedParcelCodes=[TRACKING_CODE]',0,1),(10,'tnt','TNT','http://www.tnt.de/servlet/Tracking?cons=[TRACKING_CODE]',0,1),(11,'ups','UPS','http://wwwapps.ups.com/WebTracking/processRequest?HTMLVersion=5.0&Requester=NES&AgreeToTermsAndConditions=yes&loc=de_DE&tracknum=[TRACKING_CODE]',0,1),(12,'schenker','Schenker','http://ebusiness.dbschenker.com/SMPNG/resource/v1/QuickTrack?refNumber=[TRACKING_CODE]&refType=ff',0,1);
/*!40000 ALTER TABLE `xt_shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_shipping`
--

DROP TABLE IF EXISTS `xt_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_shipping` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(32) NOT NULL,
  `shipping_dir` varchar(255) DEFAULT NULL,
  `shipping_icon` varchar(255) DEFAULT NULL,
  `shipping_tax_class` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `shipping_type` varchar(32) DEFAULT NULL,
  `shipping_tpl` varchar(64) DEFAULT NULL,
  `use_shipping_zone` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_shipping`
--

LOCK TABLES `xt_shipping` WRITE;
/*!40000 ALTER TABLE `xt_shipping` DISABLE KEYS */;
INSERT INTO `xt_shipping` VALUES (1,'Standard','','',1,1,1,'price','',NULL);
/*!40000 ALTER TABLE `xt_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_shipping_cost`
--

DROP TABLE IF EXISTS `xt_shipping_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) NOT NULL,
  `shipping_geo_zone` int(11) DEFAULT '0',
  `shipping_country_code` char(2) DEFAULT NULL,
  `shipping_type_value_from` decimal(15,2) DEFAULT '0.00',
  `shipping_type_value_to` decimal(15,2) DEFAULT '0.00',
  `shipping_price` decimal(15,4) DEFAULT '0.0000',
  `shipping_allowed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_shipping_cost`
--

LOCK TABLES `xt_shipping_cost` WRITE;
/*!40000 ALTER TABLE `xt_shipping_cost` DISABLE KEYS */;
INSERT INTO `xt_shipping_cost` VALUES (1,1,31,'',0.00,5000.00,5.0000,1);
/*!40000 ALTER TABLE `xt_shipping_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_shipping_description`
--

DROP TABLE IF EXISTS `xt_shipping_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_shipping_description` (
  `shipping_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_desc` text,
  `shipping_email_desc_txt` text,
  `shipping_email_desc_html` text,
  PRIMARY KEY (`language_code`,`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_shipping_description`
--

LOCK TABLES `xt_shipping_description` WRITE;
/*!40000 ALTER TABLE `xt_shipping_description` DISABLE KEYS */;
INSERT INTO `xt_shipping_description` VALUES (1,'de','Standard',NULL,NULL,NULL),(1,'en','Standard',NULL,NULL,NULL);
/*!40000 ALTER TABLE `xt_shipping_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_shipping_zones`
--

DROP TABLE IF EXISTS `xt_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_shipping_zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(32) DEFAULT NULL,
  `zone_countries` text,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_shipping_zones`
--

LOCK TABLES `xt_shipping_zones` WRITE;
/*!40000 ALTER TABLE `xt_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_startpage_products`
--

DROP TABLE IF EXISTS `xt_startpage_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_startpage_products` (
  `startpage_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `startpage_products_sort` int(11) NOT NULL,
  PRIMARY KEY (`startpage_products_id`),
  UNIQUE KEY `shop_id_products_id_unique` (`shop_id`,`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_startpage_products`
--

LOCK TABLES `xt_startpage_products` WRITE;
/*!40000 ALTER TABLE `xt_startpage_products` DISABLE KEYS */;
INSERT INTO `xt_startpage_products` VALUES (1,1,1,0),(2,1,2,0),(3,1,3,0),(4,1,4,0);
/*!40000 ALTER TABLE `xt_startpage_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_stores`
--

DROP TABLE IF EXISTS `xt_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_stores` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_title` varchar(64) NOT NULL,
  `shop_domain` varchar(255) NOT NULL,
  `shop_ssl_domain` varchar(255) DEFAULT NULL,
  `shop_http` varchar(255) NOT NULL,
  `shop_https` varchar(255) NOT NULL,
  `shop_ssl` varchar(100) NOT NULL DEFAULT 'no_ssl',
  `shop_status` int(1) NOT NULL DEFAULT '0',
  `admin_ssl` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_stores`
--

LOCK TABLES `xt_stores` WRITE;
/*!40000 ALTER TABLE `xt_stores` DISABLE KEYS */;
INSERT INTO `xt_stores` VALUES (1,'Main Store','foxtestvm','foxtestvm','http://foxtestvm','https://foxtestvm','no_ssl',1,0);
/*!40000 ALTER TABLE `xt_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_system_log`
--

DROP TABLE IF EXISTS `xt_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_system_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(32) NOT NULL,
  `message_source` varchar(64) NOT NULL,
  `identification` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  FULLTEXT KEY `class` (`class`,`message_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_system_log`
--

LOCK TABLES `xt_system_log` WRITE;
/*!40000 ALTER TABLE `xt_system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_system_status`
--

DROP TABLE IF EXISTS `xt_system_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_system_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_class` varchar(32) DEFAULT NULL,
  `status_values` text,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_system_status`
--

LOCK TABLES `xt_system_status` WRITE;
/*!40000 ALTER TABLE `xt_system_status` DISABLE KEYS */;
INSERT INTO `xt_system_status` VALUES (1,'stock_rule','a:2:{s:4:\"data\";a:1:{s:10:\"percentage\";s:3:\"100\";}s:7:\"sorting\";s:10:\"percentage\";}'),(2,'stock_rule','a:2:{s:4:\"data\";a:1:{s:10:\"percentage\";s:2:\"80\";}s:7:\"sorting\";s:10:\"percentage\";}'),(3,'stock_rule','a:2:{s:4:\"data\";a:1:{s:10:\"percentage\";s:2:\"50\";}s:7:\"sorting\";s:10:\"percentage\";}'),(4,'stock_rule','a:2:{s:4:\"data\";a:1:{s:10:\"percentage\";s:1:\"0\";}s:7:\"sorting\";s:10:\"percentage\";}'),(5,'stock_rule','a:2:{s:4:\"data\";a:1:{s:10:\"percentage\";s:2:\"20\";}s:7:\"sorting\";s:10:\"percentage\";}'),(6,'shipping_status',NULL),(7,'shipping_status',NULL),(8,'shipping_status',NULL),(9,'base_price',NULL),(10,'base_price',NULL),(11,'base_price',NULL),(12,'base_price',NULL),(13,'base_price',NULL),(14,'base_price',NULL),(15,'base_price',NULL),(16,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:0;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:0;s:12:\"reduce_stock\";i:0;}}'),(17,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:0;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:0;s:12:\"reduce_stock\";i:0;}}'),(23,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:1;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:1;s:12:\"reduce_stock\";i:0;}}'),(32,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:0;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:0;s:12:\"reduce_stock\";i:0;}}'),(33,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:1;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:1;s:12:\"reduce_stock\";i:0;}}'),(34,'order_status','a:1:{s:4:\"data\";a:5:{s:15:\"enable_download\";i:0;s:7:\"visible\";s:1:\"1\";s:13:\"visible_admin\";i:1;s:19:\"calculate_statistic\";i:0;s:12:\"reduce_stock\";i:1;}}'),(24,'zone',NULL),(25,'zone',NULL),(26,'zone',NULL),(27,'zone',NULL),(28,'zone',NULL),(29,'zone',NULL),(30,'zone',NULL),(31,'zone',NULL),(35,'campaign','a:1:{s:4:\"data\";a:1:{s:6:\"ref_id\";s:64:\"&utm_source=google&utm_medium=preisvergleich&utm_campaign=google\";}}'),(36,'campaign','a:1:{s:4:\"data\";a:1:{s:6:\"ref_id\";s:68:\"&utm_source=geizhals&utm_medium=preisvergleich&utm_campaign=geizhals\";}}'),(37,'base_price',NULL),(38,'base_price',NULL),(39,'base_price',NULL),(40,'base_price',NULL),(41,'base_price',NULL),(42,'base_price',NULL),(43,'base_price',NULL),(44,'base_price',NULL),(45,'base_price',NULL);
/*!40000 ALTER TABLE `xt_system_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_system_status_description`
--

DROP TABLE IF EXISTS `xt_system_status_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_system_status_description` (
  `status_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL DEFAULT '',
  `status_name` varchar(64) DEFAULT NULL,
  `status_image` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`status_id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_system_status_description`
--

LOCK TABLES `xt_system_status_description` WRITE;
/*!40000 ALTER TABLE `xt_system_status_description` DISABLE KEYS */;
INSERT INTO `xt_system_status_description` VALUES (1,'de','Sofort versandfähig, ausreichende Stückzahl','rule_1.png'),(2,'de','Sofort versandfähig, geringe Stückzahl','rule_2.png'),(3,'de','Derzeit nicht lieferbar. Ware bereits nachbestellt','rule_3.png'),(4,'de','Derzeit nicht lieferbar','rule_4.png'),(5,'de','Nur gegen Vorbestellung','rule_5.png'),(6,'de','1-2 Tage',NULL),(7,'de','2-4 Tage',NULL),(8,'de','1 Woche',NULL),(9,'de','Kilogramm',NULL),(10,'de','Liter',NULL),(11,'de','Kubikmeter',NULL),(12,'de','Meter',NULL),(13,'de','Quadratmeter',NULL),(14,'de','100 Gramm',NULL),(15,'de','100 Milliliter',NULL),(24,'de','Asien',NULL),(25,'de','Afrika',NULL),(26,'de','Nordamerika',NULL),(27,'de','Südamerika',NULL),(28,'de','Antarktika',NULL),(29,'de','Australien/Ozeanien',NULL),(30,'de','Europa (ohne EU)',NULL),(31,'de','EU',NULL),(16,'de','Offen',NULL),(17,'de','In Bearbeitung',''),(23,'de','Zahlung erhalten',NULL),(32,'de','Zahlung storniert',NULL),(33,'de','Versandt',NULL),(34,'de','Storniert',NULL),(35,'de','google shopping',NULL),(36,'de','geizhals.at',NULL),(37,'de','Zentimeter',NULL),(38,'de','Milliliter',NULL),(39,'de','Stück',NULL),(40,'de','Paar',NULL),(41,'de','Packung / Pack',NULL),(42,'de','Palette',NULL),(43,'de','Europalette',NULL),(44,'de','Miligramm',NULL),(45,'de','Gramm',NULL),(1,'en','Available, enough stock','rule_1.png'),(2,'en','Available, low stock','rule_2.png'),(3,'en','Currently not available. ','rule_3.png'),(4,'en','Currently not available','rule_4.png'),(5,'en','Only preorder','rule_5.png'),(6,'en','1-2 days',NULL),(7,'en','2-4 days',NULL),(8,'en','1 week',NULL),(9,'en','kilogram',NULL),(10,'en','litre',NULL),(11,'en','cubic meter',NULL),(12,'en','metre',NULL),(13,'en','square metre',NULL),(14,'en','100 gram',NULL),(15,'en','100 millilitre',NULL),(24,'en','Asia',NULL),(25,'en','Afrika',NULL),(26,'en','Northamerika',NULL),(27,'en','Southamerika',NULL),(28,'en','Antarktica',NULL),(29,'en','Australia/Oceania',NULL),(30,'en','Europe (without EU)',NULL),(31,'en','EU',NULL),(16,'en','Open',NULL),(17,'en','Pending',NULL),(23,'en','Payment received',NULL),(32,'en','Payment Canceled',NULL),(33,'en','Shipped',NULL),(34,'en','Canceled',NULL),(35,'en','google shopping',NULL),(36,'en','geizhals.at',NULL),(37,'en','centimeter',NULL),(38,'en','milliliter ',NULL),(39,'en','piece',NULL),(40,'en','set',NULL),(41,'en','Pack ',NULL),(42,'en','pallet',NULL),(43,'en','euro pallet',NULL),(44,'en','milligram',NULL),(45,'en','gram',NULL);
/*!40000 ALTER TABLE `xt_system_status_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tax_class`
--

DROP TABLE IF EXISTS `xt_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) NOT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tax_class`
--

LOCK TABLES `xt_tax_class` WRITE;
/*!40000 ALTER TABLE `xt_tax_class` DISABLE KEYS */;
INSERT INTO `xt_tax_class` VALUES (1,'Standardsatz','0000-00-00 00:00:00','2007-12-12 15:07:23'),(2,'Ermäßigter Steuersatz','0000-00-00 00:00:00','2007-12-12 15:07:23'),(3,'Digital products','0000-00-00 00:00:00','2007-12-12 15:07:23');
/*!40000 ALTER TABLE `xt_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tax_rates`
--

DROP TABLE IF EXISTS `xt_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL DEFAULT '0',
  `tax_rate` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL,
  `tax_rate_countries` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tax_rates`
--

LOCK TABLES `xt_tax_rates` WRITE;
/*!40000 ALTER TABLE `xt_tax_rates` DISABLE KEYS */;
INSERT INTO `xt_tax_rates` VALUES (1,31,1,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(2,31,2,9.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(3,6,1,0.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(4,6,2,0.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(5,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','BE'),(6,31,3,20.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','BG'),(7,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','CZ'),(8,31,3,25.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','DK'),(9,31,3,19.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','DE'),(10,31,3,20.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','EE'),(11,31,3,23.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','EL'),(12,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','ES'),(13,31,3,5.5000,'0000-00-00 00:00:00','0000-00-00 00:00:00','FR'),(14,31,3,25.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','HR'),(15,31,3,23.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','IE'),(16,31,3,22.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','IT'),(17,31,3,19.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','CY'),(18,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','LV'),(19,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','LT'),(20,31,3,3.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','LU'),(21,31,3,27.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','HU'),(22,31,3,18.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','MT'),(23,31,3,21.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','NL'),(24,31,3,20.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','AT'),(25,31,3,23.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','PL'),(26,31,3,23.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','PT'),(27,31,3,24.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','RO'),(28,31,3,22.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','SI'),(29,31,3,20.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','SK'),(30,31,3,24.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','FI'),(31,31,3,25.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','SE'),(32,31,3,20.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','UK'),(33,31,3,0.0000,'0000-00-00 00:00:00','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `xt_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tmp_plg_products_to_attributes`
--

DROP TABLE IF EXISTS `xt_tmp_plg_products_to_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tmp_plg_products_to_attributes` (
  `products_id` int(11) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_parent_id` int(11) NOT NULL,
  `main` tinyint(4) NOT NULL,
  PRIMARY KEY (`products_id`,`attributes_id`),
  KEY `attributes_id` (`attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tmp_plg_products_to_attributes`
--

LOCK TABLES `xt_tmp_plg_products_to_attributes` WRITE;
/*!40000 ALTER TABLE `xt_tmp_plg_products_to_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_tmp_plg_products_to_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tmp_products`
--

DROP TABLE IF EXISTS `xt_tmp_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tmp_products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `products_owner` int(11) NOT NULL DEFAULT '1',
  `products_ean` varchar(128) DEFAULT NULL,
  `products_quantity` decimal(15,2) DEFAULT NULL,
  `products_average_quantity` int(11) DEFAULT '0',
  `products_shippingtime` int(4) DEFAULT NULL,
  `products_model` varchar(255) DEFAULT NULL,
  `products_master_model` varchar(255) DEFAULT NULL,
  `products_master_flag` tinyint(1) DEFAULT NULL,
  `products_option_template` varchar(255) DEFAULT NULL,
  `products_option_list_template` varchar(255) DEFAULT NULL,
  `products_option_master_price` varchar(3) DEFAULT NULL,
  `price_flag_graduated_all` int(1) DEFAULT '0',
  `price_flag_graduated_1` int(1) DEFAULT '0',
  `price_flag_graduated_2` int(1) DEFAULT '0',
  `price_flag_graduated_3` int(1) DEFAULT '0',
  `products_sort` int(4) DEFAULT '0',
  `products_image` varchar(64) DEFAULT NULL,
  `products_price` decimal(15,4) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_available` datetime DEFAULT NULL,
  `products_weight` decimal(15,4) DEFAULT NULL,
  `products_status` tinyint(1) DEFAULT NULL,
  `products_tax_class_id` int(11) DEFAULT NULL,
  `product_template` varchar(64) DEFAULT NULL,
  `product_list_template` varchar(64) DEFAULT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) DEFAULT '0',
  `products_transactions` int(11) DEFAULT '0',
  `products_fsk18` int(1) DEFAULT '0',
  `products_vpe` int(11) DEFAULT NULL,
  `products_vpe_status` int(1) DEFAULT '0',
  `products_vpe_value` decimal(15,4) DEFAULT '0.0000',
  `products_startpage` int(1) DEFAULT '0',
  `products_startpage_sort` int(4) DEFAULT '0',
  `products_average_rating` decimal(14,4) DEFAULT '0.0000',
  `products_rating_count` int(11) DEFAULT '0',
  `products_digital` int(1) DEFAULT '0',
  `flag_has_specials` int(1) NOT NULL DEFAULT '0',
  `products_serials` int(1) DEFAULT '0',
  `total_downloads` int(11) DEFAULT '0',
  `google_product_cat` varchar(255) NOT NULL,
  `ekomi_allow` int(1) NOT NULL DEFAULT '1',
  `products_name` varchar(255) NOT NULL,
  `main_products_id` int(11) NOT NULL,
  `attributes` varchar(255) NOT NULL,
  `saved` int(1) NOT NULL,
  `name_changed` tinyint(4) NOT NULL,
  PRIMARY KEY (`products_id`),
  KEY `idx_products_date_added` (`date_added`),
  KEY `products_status` (`products_status`,`products_startpage`),
  KEY `products_ordered` (`products_ordered`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tmp_products`
--

LOCK TABLES `xt_tmp_products` WRITE;
/*!40000 ALTER TABLE `xt_tmp_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_tmp_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tracking`
--

DROP TABLE IF EXISTS `xt_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tracking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tracking_code` varchar(256) COLLATE utf8_bin NOT NULL,
  `tracking_order_id` int(10) unsigned NOT NULL,
  `tracking_status_id` int(10) unsigned NOT NULL,
  `tracking_shipper_id` int(10) unsigned NOT NULL,
  `tracking_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tracking`
--

LOCK TABLES `xt_tracking` WRITE;
/*!40000 ALTER TABLE `xt_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `xt_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xt_tracking_status`
--

DROP TABLE IF EXISTS `xt_tracking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xt_tracking_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tracking_shipper_id` int(10) unsigned NOT NULL,
  `tracking_status_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xt_tracking_status`
--

LOCK TABLES `xt_tracking_status` WRITE;
/*!40000 ALTER TABLE `xt_tracking_status` DISABLE KEYS */;
INSERT INTO `xt_tracking_status` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,1),(7,6,2),(8,6,4),(9,6,8),(10,6,16),(11,6,10010),(12,6,10020),(13,6,10030),(14,6,10040),(15,6,10050),(16,6,10060),(17,6,10070),(18,6,10080),(19,6,10090),(20,6,10100),(21,6,10110),(22,6,10120),(23,6,-2),(24,6,-3),(25,6,0),(26,7,0),(27,8,0),(28,9,0),(29,10,0),(30,11,0),(31,12,0);
/*!40000 ALTER TABLE `xt_tracking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `xt_v_tracking`
--

DROP TABLE IF EXISTS `xt_v_tracking`;
/*!50001 DROP VIEW IF EXISTS `xt_v_tracking`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `xt_v_tracking` (
  `id` tinyint NOT NULL,
  `tracking_code` tinyint NOT NULL,
  `tracking_order_id` tinyint NOT NULL,
  `tracking_status_id` tinyint NOT NULL,
  `tracking_status_code` tinyint NOT NULL,
  `tracking_shipper_id` tinyint NOT NULL,
  `shipper_code` tinyint NOT NULL,
  `shipper_name` tinyint NOT NULL,
  `shipper_tracking_url` tinyint NOT NULL,
  `shipper_api_enabled` tinyint NOT NULL,
  `shipper_enabled` tinyint NOT NULL,
  `tracking_added` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `xt_v_tracking`
--

/*!50001 DROP TABLE IF EXISTS `xt_v_tracking`*/;
/*!50001 DROP VIEW IF EXISTS `xt_v_tracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`xtLove`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `xt_v_tracking` AS select `t`.`id` AS `id`,`t`.`tracking_code` AS `tracking_code`,`t`.`tracking_order_id` AS `tracking_order_id`,`t`.`tracking_status_id` AS `tracking_status_id`,`ts`.`tracking_status_code` AS `tracking_status_code`,`t`.`tracking_shipper_id` AS `tracking_shipper_id`,`s`.`shipper_code` AS `shipper_code`,`s`.`shipper_name` AS `shipper_name`,`s`.`shipper_tracking_url` AS `shipper_tracking_url`,`s`.`shipper_api_enabled` AS `shipper_api_enabled`,`s`.`shipper_enabled` AS `shipper_enabled`,`t`.`tracking_added` AS `tracking_added` from ((`xt_tracking` `t` join `xt_shipper` `s` on((`t`.`tracking_shipper_id` = `s`.`id`))) join `xt_tracking_status` `ts` on((`t`.`tracking_status_id` = `ts`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-31 11:59:12
