-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: magento_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `m2_admin_adobe_ims_webapi`
--

DROP TABLE IF EXISTS `m2_admin_adobe_ims_webapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_adobe_ims_webapi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `admin_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Admin User Id',
  `access_token_hash` varchar(255) DEFAULT NULL COMMENT 'Access Token Hash',
  `access_token` text COMMENT 'Access Token',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `last_check_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last check time',
  `access_token_expires_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Access Token Expires At',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_ADMIN_ADOBE_IMS_WEBAPI_ACCESS_TOKEN_HASH` (`access_token_hash`),
  KEY `M2_ADMIN_ADOBE_IMS_WEBAPI_ADMIN_USER_ID` (`admin_user_id`),
  CONSTRAINT `M2_ADMIN_ADOBE_IMS_WEBAPI_ADMIN_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Admin Adobe IMS Webapi';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_adobe_ims_webapi`
--

LOCK TABLES `m2_admin_adobe_ims_webapi` WRITE;
/*!40000 ALTER TABLE `m2_admin_adobe_ims_webapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_admin_adobe_ims_webapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_analytics_usage_version_log`
--

DROP TABLE IF EXISTS `m2_admin_analytics_usage_version_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_analytics_usage_version_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `last_viewed_in_version` varchar(50) NOT NULL COMMENT 'Viewer last viewed on product version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_ADMIN_ANALYTICS_USAGE_VERSION_LOG_LAST_VIEWED_IN_VERSION` (`last_viewed_in_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Admin Notification Viewer Log Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_analytics_usage_version_log`
--

LOCK TABLES `m2_admin_analytics_usage_version_log` WRITE;
/*!40000 ALTER TABLE `m2_admin_analytics_usage_version_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_admin_analytics_usage_version_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_passwords`
--

DROP TABLE IF EXISTS `m2_admin_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_passwords` (
  `password_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password ID',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int unsigned NOT NULL DEFAULT '0' COMMENT 'Deprecated',
  `last_updated` int unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `M2_ADMIN_PASSWORDS_USER_ID` (`user_id`),
  CONSTRAINT `M2_ADMIN_PASSWORDS_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Admin Passwords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_passwords`
--

LOCK TABLES `m2_admin_passwords` WRITE;
/*!40000 ALTER TABLE `m2_admin_passwords` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_admin_passwords` VALUES (1,1,'f3df62e939385a2acecb3613171b67fdee03ba476b40bd3da3b902de757d4d81:nkz5VGmVpIqrT28DjfT5wNhugrdoqiXP:3_32_2_67108864',0,1703096468);
/*!40000 ALTER TABLE `m2_admin_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_system_messages`
--

DROP TABLE IF EXISTS `m2_admin_system_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message ID',
  `severity` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Admin System Messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_system_messages`
--

LOCK TABLES `m2_admin_system_messages` WRITE;
/*!40000 ALTER TABLE `m2_admin_system_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_admin_system_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_user`
--

DROP TABLE IF EXISTS `m2_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `M2_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Admin User Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_user`
--

LOCK TABLES `m2_admin_user` WRITE;
/*!40000 ALTER TABLE `m2_admin_user` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_admin_user` VALUES (1,'Magento','Administrator','email@example.com','development','f3df62e939385a2acecb3613171b67fdee03ba476b40bd3da3b902de757d4d81:nkz5VGmVpIqrT28DjfT5wNhugrdoqiXP:3_32_2_67108864','2023-12-20 18:21:08','2023-12-20 18:21:08',NULL,0,0,1,NULL,NULL,NULL,'en_US',0,NULL,NULL);
/*!40000 ALTER TABLE `m2_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_user_expiration`
--

DROP TABLE IF EXISTS `m2_admin_user_expiration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_user_expiration` (
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `expires_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Expiration Date',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `M2_ADMIN_USER_EXPIRATION_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Admin User expiration dates table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_user_expiration`
--

LOCK TABLES `m2_admin_user_expiration` WRITE;
/*!40000 ALTER TABLE `m2_admin_user_expiration` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_admin_user_expiration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_admin_user_session`
--

DROP TABLE IF EXISTS `m2_admin_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_admin_user_session` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(1) DEFAULT NULL COMMENT 'Deprecated: Session ID value no longer used',
  `user_id` int unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `M2_ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `M2_ADMIN_USER_SESSION_USER_ID` (`user_id`),
  CONSTRAINT `M2_ADMIN_USER_SESSION_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Admin User sessions table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_admin_user_session`
--

LOCK TABLES `m2_admin_user_session` WRITE;
/*!40000 ALTER TABLE `m2_admin_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_adminnotification_inbox`
--

DROP TABLE IF EXISTS `m2_adminnotification_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_adminnotification_inbox` (
  `notification_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification ID',
  `severity` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `M2_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `M2_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `M2_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Adminnotification Inbox';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_adminnotification_inbox`
--

LOCK TABLES `m2_adminnotification_inbox` WRITE;
/*!40000 ALTER TABLE `m2_adminnotification_inbox` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_adminnotification_inbox` VALUES (1,4,'2023-12-20 18:21:06','Disable Notice','To improve performance, collecting statistics for the Magento Report module is disabled by default. \nYou can enable it in System Config.','',0,0);
/*!40000 ALTER TABLE `m2_adminnotification_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_adobe_stock_asset`
--

DROP TABLE IF EXISTS `m2_adobe_stock_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_adobe_stock_asset` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `media_gallery_id` int unsigned DEFAULT NULL COMMENT 'Media gallery ID',
  `category_id` int unsigned DEFAULT NULL COMMENT 'Category ID',
  `creator_id` int unsigned DEFAULT NULL COMMENT 'Creator ID',
  `is_licensed` int unsigned NOT NULL DEFAULT '0' COMMENT 'Is Licensed',
  `creation_date` varchar(255) DEFAULT NULL COMMENT 'Creation Date',
  PRIMARY KEY (`id`),
  KEY `M2_ADOBE_STOCK_ASSET_MEDIA_GALLERY_ID_M2_MEDIA_GALLERY_ASSET_ID` (`media_gallery_id`),
  KEY `M2_ADOBE_STOCK_ASSET_ID` (`id`),
  KEY `M2_ADOBE_STOCK_ASSET_CATEGORY_ID` (`category_id`),
  KEY `M2_ADOBE_STOCK_ASSET_CREATOR_ID` (`creator_id`),
  CONSTRAINT `M2_ADOBE_STOCK_ASSET_CATEGORY_ID_M2_ADOBE_STOCK_CATEGORY_ID` FOREIGN KEY (`category_id`) REFERENCES `m2_adobe_stock_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `M2_ADOBE_STOCK_ASSET_CREATOR_ID_M2_ADOBE_STOCK_CREATOR_ID` FOREIGN KEY (`creator_id`) REFERENCES `m2_adobe_stock_creator` (`id`) ON DELETE SET NULL,
  CONSTRAINT `M2_ADOBE_STOCK_ASSET_MEDIA_GALLERY_ID_M2_MEDIA_GALLERY_ASSET_ID` FOREIGN KEY (`media_gallery_id`) REFERENCES `m2_media_gallery_asset` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Adobe Stock Asset';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_adobe_stock_asset`
--

LOCK TABLES `m2_adobe_stock_asset` WRITE;
/*!40000 ALTER TABLE `m2_adobe_stock_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_adobe_stock_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_adobe_stock_category`
--

DROP TABLE IF EXISTS `m2_adobe_stock_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_adobe_stock_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  PRIMARY KEY (`id`),
  KEY `M2_ADOBE_STOCK_CATEGORY_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Adobe Stock Category';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_adobe_stock_category`
--

LOCK TABLES `m2_adobe_stock_category` WRITE;
/*!40000 ALTER TABLE `m2_adobe_stock_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_adobe_stock_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_adobe_stock_creator`
--

DROP TABLE IF EXISTS `m2_adobe_stock_creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_adobe_stock_creator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Asset creator''s name',
  PRIMARY KEY (`id`),
  KEY `M2_ADOBE_STOCK_CREATOR_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Adobe Stock Creator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_adobe_stock_creator`
--

LOCK TABLES `m2_adobe_stock_creator` WRITE;
/*!40000 ALTER TABLE `m2_adobe_stock_creator` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_adobe_stock_creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_adobe_user_profile`
--

DROP TABLE IF EXISTS `m2_adobe_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_adobe_user_profile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `admin_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Admin User Id',
  `name` varchar(255) NOT NULL COMMENT 'Display Name',
  `email` varchar(255) NOT NULL COMMENT 'user profile email',
  `image` varchar(255) NOT NULL COMMENT 'user profile avatar',
  `account_type` varchar(255) DEFAULT NULL COMMENT 'Account Type',
  `access_token` text COMMENT 'Access Token',
  `refresh_token` text COMMENT 'Refresh Token',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `access_token_expires_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Access Token Expires At',
  PRIMARY KEY (`id`),
  KEY `M2_ADOBE_USER_PROFILE_ADMIN_USER_ID` (`admin_user_id`),
  CONSTRAINT `M2_ADOBE_USER_PROFILE_ADMIN_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Adobe IMS User Profile';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_adobe_user_profile`
--

LOCK TABLES `m2_adobe_user_profile` WRITE;
/*!40000 ALTER TABLE `m2_adobe_user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_adobe_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_authorization_role`
--

DROP TABLE IF EXISTS `m2_authorization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_authorization_role` (
  `role_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `M2_AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `M2_AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Admin Role Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_authorization_role`
--

LOCK TABLES `m2_authorization_role` WRITE;
/*!40000 ALTER TABLE `m2_authorization_role` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_authorization_role` VALUES (1,0,1,1,'G',0,'2','Administrators'),(2,1,2,0,'U',1,'2','development');
/*!40000 ALTER TABLE `m2_authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_authorization_rule`
--

DROP TABLE IF EXISTS `m2_authorization_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_authorization_rule` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `M2_AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `M2_AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `M2_AUTHORIZATION_RULE_ROLE_ID_M2_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `m2_authorization_role` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Admin Rule Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_authorization_rule`
--

LOCK TABLES `m2_authorization_rule` WRITE;
/*!40000 ALTER TABLE `m2_authorization_rule` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_authorization_rule` VALUES (1,1,'Magento_Backend::all',NULL,'allow');
/*!40000 ALTER TABLE `m2_authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_braintree_credit_prices`
--

DROP TABLE IF EXISTS `m2_braintree_credit_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_braintree_credit_prices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product Id',
  `term` int NOT NULL COMMENT 'Credit Term',
  `monthly_payment` decimal(12,2) NOT NULL COMMENT 'Monthly Payment',
  `instalment_rate` decimal(12,2) NOT NULL COMMENT 'Instalment Rate',
  `cost_of_purchase` decimal(12,2) NOT NULL COMMENT 'Cost of purchase',
  `total_inc_interest` decimal(12,2) NOT NULL COMMENT 'Total Inc Interest',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_BRAINTREE_CREDIT_PRICES_PRODUCT_ID_TERM` (`product_id`,`term`),
  KEY `M2_BRAINTREE_CREDIT_PRICES_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Braintree credit rates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_braintree_credit_prices`
--

LOCK TABLES `m2_braintree_credit_prices` WRITE;
/*!40000 ALTER TABLE `m2_braintree_credit_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_braintree_credit_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_braintree_transaction_details`
--

DROP TABLE IF EXISTS `m2_braintree_transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_braintree_transaction_details` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `order_id` int unsigned NOT NULL COMMENT 'Order Id',
  `transaction_source` varchar(12) DEFAULT NULL COMMENT 'Transaction Source',
  PRIMARY KEY (`entity_id`),
  KEY `M2_BRAINTREE_TRANSACTION_DETAILS_ORDER_ID` (`order_id`),
  CONSTRAINT `M2_BRAINTREE_TRANSACTION_DETAILS_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Braintree transaction details table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_braintree_transaction_details`
--

LOCK TABLES `m2_braintree_transaction_details` WRITE;
/*!40000 ALTER TABLE `m2_braintree_transaction_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_braintree_transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cache`
--

DROP TABLE IF EXISTS `m2_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `M2_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Caches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cache`
--

LOCK TABLES `m2_cache` WRITE;
/*!40000 ALTER TABLE `m2_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cache_tag`
--

DROP TABLE IF EXISTS `m2_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `M2_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tag Caches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cache_tag`
--

LOCK TABLES `m2_cache_tag` WRITE;
/*!40000 ALTER TABLE `m2_cache_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_captcha_log`
--

DROP TABLE IF EXISTS `m2_captcha_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  `count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Count Login Attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_captcha_log`
--

LOCK TABLES `m2_captcha_log` WRITE;
/*!40000 ALTER TABLE `m2_captcha_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_captcha_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int NOT NULL COMMENT 'Position',
  `level` int NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_PATH` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity`
--

LOCK TABLES `m2_catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_category_entity` VALUES (1,3,0,'2023-12-20 18:21:05','2023-12-20 18:21:05','1',0,0,1),(2,3,1,'2023-12-20 18:21:05','2023-12-20 18:21:05','1/2',1,1,0);
/*!40000 ALTER TABLE `m2_catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity_datetime` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_CTGR_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CTGR_ENTT_DTIME_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_ENTT_DTIME_ENTT_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Datetime Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity_datetime`
--

LOCK TABLES `m2_catalog_category_entity_datetime` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity_decimal` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_CTGR_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CTGR_ENTT_DEC_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_ENTT_DEC_ENTT_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Decimal Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity_decimal`
--

LOCK TABLES `m2_catalog_category_entity_decimal` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity_int`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity_int` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CTGR_ENTT_INT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_ENTT_INT_ENTT_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Integer Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity_int`
--

LOCK TABLES `m2_catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity_int` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_category_entity_int` VALUES (1,69,0,1,1),(2,69,0,2,1),(3,46,0,2,1);
/*!40000 ALTER TABLE `m2_catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity_text`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity_text` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` mediumtext COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CTGR_ENTT_TEXT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_ENTT_TEXT_ENTT_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Text Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity_text`
--

LOCK TABLES `m2_catalog_category_entity_text` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `m2_catalog_category_entity_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_entity_varchar` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_CTGR_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CTGR_ENTT_VCHR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_ENTT_VCHR_ENTT_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Varchar Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_entity_varchar`
--

LOCK TABLES `m2_catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_entity_varchar` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_category_entity_varchar` VALUES (1,45,0,1,'Root Catalog'),(2,52,0,2,'PRODUCTS'),(3,45,0,2,'Default Category');
/*!40000 ALTER TABLE `m2_catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product`
--

DROP TABLE IF EXISTS `m2_catalog_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product` (
  `entity_id` int NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `M2_CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `M2_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_CAT_CTGR_PRD_CTGR_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_CTGR_PRD_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product To Category Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product`
--

LOCK TABLES `m2_catalog_category_product` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product_index`
--

DROP TABLE IF EXISTS `m2_catalog_category_product_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product_index` (
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `M2_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_E7C981C0E8D78159DA668D45C07D9785` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Product Index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product_index`
--

LOCK TABLES `m2_catalog_category_product_index` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product_index_replica`
--

DROP TABLE IF EXISTS `m2_catalog_category_product_index_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product_index_replica` (
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `M2_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_E7C981C0E8D78159DA668D45C07D9785` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Product Index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product_index_replica`
--

LOCK TABLES `m2_catalog_category_product_index_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product_index_store1`
--

DROP TABLE IF EXISTS `m2_catalog_category_product_index_store1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product_index_store1` (
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `M2_CAT_CTGR_PRD_IDX_STORE1_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_89C0E4A586074B621C05FE619315494D` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='M2 Catalog Category Product Index Store1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product_index_store1`
--

LOCK TABLES `m2_catalog_category_product_index_store1` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_store1` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_store1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product_index_store1_replica`
--

DROP TABLE IF EXISTS `m2_catalog_category_product_index_store1_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product_index_store1_replica` (
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_141777C1549D4C3425ED5AFCE9F03C18` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_FE485F24D6363D3186B87EA601BE56B2` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='M2 Catalog Category Product Index Store1 Replica';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product_index_store1_replica`
--

LOCK TABLES `m2_catalog_category_product_index_store1_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_store1_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_store1_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_category_product_index_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_category_product_index_tmp` (
  `category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `M2_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Category Product Indexer temporary table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_category_product_index_tmp`
--

LOCK TABLES `m2_catalog_category_product_index_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_category_product_index_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_compare_item`
--

DROP TABLE IF EXISTS `m2_catalog_compare_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_compare_item` (
  `catalog_compare_item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `list_id` int unsigned DEFAULT NULL COMMENT 'List ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `M2_CATALOG_COMPARE_ITEM_LIST_ID_M2_CATALOG_COMPARE_LIST_LIST_ID` (`list_id`),
  KEY `M2_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `M2_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `M2_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `M2_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_CMP_ITEM_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_COMPARE_ITEM_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_COMPARE_ITEM_LIST_ID_M2_CATALOG_COMPARE_LIST_LIST_ID` FOREIGN KEY (`list_id`) REFERENCES `m2_catalog_compare_list` (`list_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_COMPARE_ITEM_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Compare Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_compare_item`
--

LOCK TABLES `m2_catalog_compare_item` WRITE;
/*!40000 ALTER TABLE `m2_catalog_compare_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_compare_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_compare_list`
--

DROP TABLE IF EXISTS `m2_catalog_compare_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_compare_list` (
  `list_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare List ID',
  `list_id_mask` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  PRIMARY KEY (`list_id`),
  UNIQUE KEY `M2_CATALOG_COMPARE_LIST_CUSTOMER_ID` (`customer_id`),
  KEY `M2_CATALOG_COMPARE_LIST_LIST_ID_MASK` (`list_id_mask`),
  CONSTRAINT `M2_CATALOG_COMPARE_LIST_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Compare List with hash Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_compare_list`
--

LOCK TABLES `m2_catalog_compare_list` WRITE;
/*!40000 ALTER TABLE `m2_catalog_compare_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_compare_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_eav_attribute`
--

DROP TABLE IF EXISTS `m2_catalog_eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_eav_attribute` (
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `is_pagebuilder_enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is PageBuilder Enabled',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `M2_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `M2_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`),
  CONSTRAINT `M2_CAT_EAV_ATTR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog EAV Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_eav_attribute`
--

LOCK TABLES `m2_catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `m2_catalog_eav_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_eav_attribute` VALUES (45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,0,1,0,0,0,0,0,1,0,NULL),(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(64,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,0,0,0,0,0,0,0,5,0,NULL),(74,NULL,1,1,1,0,1,0,0,0,0,0,0,NULL,1,0,0,0,0,0,0,0,6,0,NULL),(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,0,1,0,0,0,0,0,1,1,NULL),(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,0,1,0,0,1,0,0,1,0,NULL),(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,downloadable,bundle,configurable',1,0,0,0,0,0,0,0,1,0,NULL),(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,1,1,0,NULL),(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,0,1,0,NULL),(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,0,1,0,NULL),(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,0,0,0,0,1,0,1,1,0,NULL),(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,1,1,0,NULL),(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,configurable',1,0,0,0,0,1,0,1,1,0,NULL),(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,0,NULL),(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,0,NULL),(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,0,NULL),(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable,bundle',0,0,0,0,0,0,0,0,1,0,NULL),(93,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,virtual,configurable',1,0,0,0,0,1,0,1,1,0,NULL),(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,0,0,0,1,0,0,0,1,0,NULL),(98,NULL,0,0,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,0,0,0,1,0,NULL),(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,0,0,0,1,0,NULL),(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,0,NULL),(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(103,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,grouped,configurable',0,0,0,0,0,1,0,1,1,0,NULL),(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(117,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(118,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(119,NULL,0,1,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(120,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(121,NULL,0,1,1,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,1,1,0,NULL),(122,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(123,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,1,1,0,NULL),(124,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,0,0,0,1,0,NULL),(125,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,0,0,0,0,0,0,0,1,0,NULL),(126,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,0,0,0,0,0,0,0,1,0,NULL),(127,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,0,0,0,0,0,0,0,1,0,NULL),(128,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,0,0,0,0,0,0,0,1,0,NULL),(129,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,0,NULL),(130,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,0,0,0,0,0,0,0,1,0,NULL),(131,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,0,NULL),(132,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,0,NULL),(133,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,0,NULL),(134,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,0,NULL),(135,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,0,NULL),(136,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,1,1,0,NULL);
/*!40000 ALTER TABLE `m2_catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `required` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_CAT_PRD_BNDL_OPT_PARENT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Option';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_option`
--

LOCK TABLES `m2_catalog_product_bundle_option` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_option_value` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `option_id` int unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `parent_product_id` int unsigned NOT NULL COMMENT 'Parent Product ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_BNDL_OPT_VAL_OPT_ID_PARENT_PRD_ID_STORE_ID` (`option_id`,`parent_product_id`,`store_id`),
  CONSTRAINT `M2_CAT_PRD_BNDL_OPT_VAL_OPT_ID_M2_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Option Value';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_option_value`
--

LOCK TABLES `m2_catalog_product_bundle_option_value` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_price_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_price_index` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `min_price` decimal(20,6) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_8DDA874804BF5421F2118169E48E8ECC` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_BNDL_PRICE_IDX_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Price Index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_price_index`
--

LOCK TABLES `m2_catalog_product_bundle_price_index` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_price_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_price_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_selection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_selection` (
  `selection_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection ID',
  `option_id` int unsigned NOT NULL COMMENT 'Option ID',
  `parent_product_id` int unsigned NOT NULL COMMENT 'Parent Product ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `position` int unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_CAT_PRD_BNDL_SELECTION_OPT_ID_M2_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_BNDL_SELECTION_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Selection';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_selection`
--

LOCK TABLES `m2_catalog_product_bundle_selection` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_selection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_selection_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_selection_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_selection_price` (
  `selection_id` int unsigned NOT NULL COMMENT 'Selection ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `selection_price_type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Selection Price Value',
  `parent_product_id` int unsigned NOT NULL COMMENT 'Parent Product ID',
  PRIMARY KEY (`selection_id`,`parent_product_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_55F0A55CCF4305049274EC188A70F6C0` FOREIGN KEY (`selection_id`) REFERENCES `m2_catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Selection Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_selection_price`
--

LOCK TABLES `m2_catalog_product_bundle_selection_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_selection_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_selection_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `m2_catalog_product_bundle_stock_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_bundle_stock_index` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint unsigned NOT NULL COMMENT 'Stock ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `stock_status` smallint DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Bundle Stock Index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_bundle_stock_index`
--

LOCK TABLES `m2_catalog_product_bundle_stock_index` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_stock_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_bundle_stock_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) NOT NULL COMMENT 'SKU',
  `has_options` smallint NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity`
--

LOCK TABLES `m2_catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_datetime` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_DTIME_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_DTIME_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Datetime Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_datetime`
--

LOCK TABLES `m2_catalog_product_entity_datetime` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_decimal` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_DEC_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_DEC_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Decimal Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_decimal`
--

LOCK TABLES `m2_catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_gallery` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_ENTT_GLR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_GLR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_GLR_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Gallery Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_gallery`
--

LOCK TABLES `m2_catalog_product_entity_gallery` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_int`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_int` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID_STORE_ID_VALUE` (`attribute_id`,`store_id`,`value`),
  CONSTRAINT `M2_CAT_PRD_ENTT_INT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_INT_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Integer Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_int`
--

LOCK TABLES `m2_catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_media_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_media_gallery` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Media Gallery Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_media_gallery`
--

LOCK TABLES `m2_catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_media_gallery_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_media_gallery_value` (
  `value_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record ID',
  PRIMARY KEY (`record_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`),
  KEY `M2_CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_VAL_ID_STORE_ID` (`entity_id`,`value_id`,`store_id`),
  CONSTRAINT `FK_86496C11CBBB117006DCA52CC78C3F54` FOREIGN KEY (`value_id`) REFERENCES `m2_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Media Gallery Attribute Value Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_media_gallery_value`
--

LOCK TABLES `m2_catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_media_gallery_value_to_entity`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_media_gallery_value_to_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int unsigned NOT NULL COMMENT 'Product Entity ID',
  PRIMARY KEY (`value_id`,`entity_id`),
  KEY `FK_0BB5605BB36B10B4EB7BCF5C1AFFA8CA` (`entity_id`),
  CONSTRAINT `FK_0BB5605BB36B10B4EB7BCF5C1AFFA8CA` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C3970D6C1592405E1F7C625E45128F80` FOREIGN KEY (`value_id`) REFERENCES `m2_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Link Media value to Product entity table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_media_gallery_value_to_entity`
--

LOCK TABLES `m2_catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_media_gallery_value_video`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_media_gallery_value_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_media_gallery_value_video` (
  `value_id` int unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `M2_CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_M2_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_110326742AC09648194D49DA1023257F` FOREIGN KEY (`value_id`) REFERENCES `m2_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Video Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_media_gallery_value_video`
--

LOCK TABLES `m2_catalog_product_entity_media_gallery_value_video` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_media_gallery_value_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_text`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_text` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` mediumtext COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_TEXT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_TEXT_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Text Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_text`
--

LOCK TABLES `m2_catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_tier_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_tier_price` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `percentage_value` decimal(5,2) DEFAULT NULL COMMENT 'Percentage value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_1ABDD2B3C9295EFFA3AE37C635F76D45` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_DC461FACC7F1E6ADC55349DDCE30E81F` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_TIER_PRICE_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Tier Price Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_tier_price`
--

LOCK TABLES `m2_catalog_product_entity_tier_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `m2_catalog_product_entity_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_entity_varchar` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_ENTT_VCHR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_ENTT_VCHR_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Varchar Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_entity_varchar`
--

LOCK TABLES `m2_catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_frontend_action`
--

DROP TABLE IF EXISTS `m2_catalog_product_frontend_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_frontend_action` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Action ID',
  `type_id` varchar(64) NOT NULL COMMENT 'Type of product action',
  `visitor_id` int unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `added_at` bigint NOT NULL COMMENT 'Added At',
  PRIMARY KEY (`action_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_FRONTEND_ACTION_VISITOR_ID_PRODUCT_ID_TYPE_ID` (`visitor_id`,`product_id`,`type_id`),
  UNIQUE KEY `M2_CAT_PRD_FRONTEND_ACTION_CSTR_ID_PRD_ID_TYPE_ID` (`customer_id`,`product_id`,`type_id`),
  KEY `M2_CAT_PRD_FRONTEND_ACTION_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  CONSTRAINT `M2_CAT_PRD_FRONTEND_ACTION_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_FRONTEND_ACTION_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Frontend Action Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_frontend_action`
--

LOCK TABLES `m2_catalog_product_frontend_action` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_frontend_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_frontend_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` int unsigned NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav`
--

LOCK TABLES `m2_catalog_product_index_eav` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_decimal` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Decimal Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_decimal`
--

LOCK TABLES `m2_catalog_product_index_eav_decimal` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_decimal_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_decimal_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Decimal Indexer Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_decimal_idx`
--

LOCK TABLES `m2_catalog_product_index_eav_decimal_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_decimal_replica`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_decimal_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_decimal_replica` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Decimal Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_decimal_replica`
--

LOCK TABLES `m2_catalog_product_index_eav_decimal_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_decimal_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_decimal_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_decimal_tmp`
--

LOCK TABLES `m2_catalog_product_index_eav_decimal_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_decimal_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` int unsigned NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Indexer Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_idx`
--

LOCK TABLES `m2_catalog_product_index_eav_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_replica`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_replica` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` int unsigned NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_replica`
--

LOCK TABLES `m2_catalog_product_index_eav_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_eav_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_eav_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` int unsigned NOT NULL COMMENT 'Value',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product EAV Indexer Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_eav_tmp`
--

LOCK TABLES `m2_catalog_product_index_eav_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_eav_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `M2_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price`
--

LOCK TABLES `m2_catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Idx';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_idx`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_opt_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Opt Idx';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_opt_idx`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_opt_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_opt_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_opt_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Opt Tmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_opt_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_opt_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_opt_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_sel_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `selection_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Selection ID',
  `group_type` smallint unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Sel Idx';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_sel_idx`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_sel_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_sel_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_sel_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_sel_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `selection_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Selection ID',
  `group_type` smallint unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Sel Tmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_sel_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_sel_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_sel_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_sel_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_bundle_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_bundle_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Index Price Bundle Tmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_bundle_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_bundle_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_bundle_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_cfg_opt_agr_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_cfg_opt_agr_idx`
--

LOCK TABLES `m2_catalog_product_index_price_cfg_opt_agr_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_agr_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_cfg_opt_agr_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_cfg_opt_agr_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_cfg_opt_agr_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_agr_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_cfg_opt_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Config Option Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_cfg_opt_idx`
--

LOCK TABLES `m2_catalog_product_index_price_cfg_opt_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_cfg_opt_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Config Option Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_cfg_opt_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_cfg_opt_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_cfg_opt_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_downlod_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_downlod_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Indexer Table for price of downloadable products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_downlod_idx`
--

LOCK TABLES `m2_catalog_product_index_price_downlod_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_downlod_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_downlod_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_downlod_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_downlod_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int NOT NULL,
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Temporary Indexer Table for price of downloadable products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_downlod_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_downlod_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_downlod_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_downlod_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_final_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_final_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Final Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_final_idx`
--

LOCK TABLES `m2_catalog_product_index_price_final_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_final_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_final_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_final_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_final_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Final Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_final_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_final_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_final_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_final_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_idx`
--

LOCK TABLES `m2_catalog_product_index_price_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_opt_agr_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_opt_agr_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_opt_agr_idx`
--

LOCK TABLES `m2_catalog_product_index_price_opt_agr_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_agr_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_opt_agr_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_opt_agr_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_opt_agr_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_agr_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_opt_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_opt_idx` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Option Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_opt_idx`
--

LOCK TABLES `m2_catalog_product_index_price_opt_idx` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_opt_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_opt_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Option Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_opt_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_opt_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_opt_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_replica`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_replica` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `M2_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_replica`
--

LOCK TABLES `m2_catalog_product_index_price_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_price_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_price_tmp` (
  `entity_id` int unsigned NOT NULL COMMENT 'Product ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Price Indexer Temp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_price_tmp`
--

LOCK TABLES `m2_catalog_product_index_price_tmp` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_price_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_tier_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_tier_price` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_5C3D7BEBDC32FE46A7D58CD5205A2F72` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_IDX_TIER_PRICE_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Tier Price Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_tier_price`
--

LOCK TABLES `m2_catalog_product_index_tier_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_index_website`
--

DROP TABLE IF EXISTS `m2_catalog_product_index_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_index_website` (
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `default_store_id` smallint unsigned NOT NULL COMMENT 'Default store ID for website',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `M2_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`),
  CONSTRAINT `M2_CAT_PRD_IDX_WS_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Website Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_index_website`
--

LOCK TABLES `m2_catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_index_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link`
--

DROP TABLE IF EXISTS `m2_catalog_product_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `M2_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  CONSTRAINT `M2_CAT_PRD_LNK_LNK_TYPE_ID_M2_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `m2_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_LNK_LNKED_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_LNK_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product To Product Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link`
--

LOCK TABLES `m2_catalog_product_link` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `m2_catalog_product_link_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link_attribute` (
  `product_link_attribute_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `M2_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_M2_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `m2_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Link Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link_attribute`
--

LOCK TABLES `m2_catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_product_link_attribute` VALUES (1,1,'position','int'),(2,4,'position','int'),(3,5,'position','int'),(4,3,'position','int'),(5,3,'qty','decimal');
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `m2_catalog_product_link_attribute_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link_attribute_decimal` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`),
  CONSTRAINT `FK_3B9A18A7D7AB3A29416518F34DD14807` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `m2_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_LNK_ATTR_DEC_LNK_ID_M2_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `m2_catalog_product_link` (`link_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Link Decimal Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link_attribute_decimal`
--

LOCK TABLES `m2_catalog_product_link_attribute_decimal` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `m2_catalog_product_link_attribute_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link_attribute_int` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int unsigned NOT NULL COMMENT 'Link ID',
  `value` int NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`),
  CONSTRAINT `FK_0A44C15F672BDF25DFC2F9505F9C0F4C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `m2_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_LNK_ATTR_INT_LNK_ID_M2_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `m2_catalog_product_link` (`link_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Link Integer Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link_attribute_int`
--

LOCK TABLES `m2_catalog_product_link_attribute_int` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `m2_catalog_product_link_attribute_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link_attribute_varchar` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `M2_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`),
  CONSTRAINT `FK_5EF20D82983187D600874B213914288A` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `m2_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_M2_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `m2_catalog_product_link` (`link_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Link Varchar Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link_attribute_varchar`
--

LOCK TABLES `m2_catalog_product_link_attribute_varchar` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_link_attribute_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_link_type`
--

DROP TABLE IF EXISTS `m2_catalog_product_link_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_link_type` (
  `link_type_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Link Type Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_link_type`
--

LOCK TABLES `m2_catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_link_type` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_catalog_product_link_type` VALUES (1,'relation'),(3,'super'),(4,'up_sell'),(5,'cross_sell');
/*!40000 ALTER TABLE `m2_catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option`
--

DROP TABLE IF EXISTS `m2_catalog_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_CAT_PRD_OPT_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option`
--

LOCK TABLES `m2_catalog_product_option` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_option_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option_price` (
  `option_price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_OPT_PRICE_OPT_ID_M2_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_catalog_product_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Price Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option_price`
--

LOCK TABLES `m2_catalog_product_option_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option_title`
--

DROP TABLE IF EXISTS `m2_catalog_product_option_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option_title` (
  `option_title_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CAT_PRD_OPT_TTL_OPT_ID_M2_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_catalog_product_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Title Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option_title`
--

LOCK TABLES `m2_catalog_product_option_title` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `m2_catalog_product_option_type_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option_type_price` (
  `option_type_price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_E08FE6BED1769AD123344DFAF5530328` FOREIGN KEY (`option_type_id`) REFERENCES `m2_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Type Price Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option_type_price`
--

LOCK TABLES `m2_catalog_product_option_type_price` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `m2_catalog_product_option_type_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option_type_title` (
  `option_type_title_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_073F5DD508D074F42E70EE70BB7C94D1` FOREIGN KEY (`option_type_id`) REFERENCES `m2_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Type Title Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option_type_title`
--

LOCK TABLES `m2_catalog_product_option_type_title` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `m2_catalog_product_option_type_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_option_type_value` (
  `option_type_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `M2_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`),
  CONSTRAINT `M2_CAT_PRD_OPT_TYPE_VAL_OPT_ID_M2_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_catalog_product_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Option Type Value Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_option_type_value`
--

LOCK TABLES `m2_catalog_product_option_type_value` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_option_type_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_relation`
--

DROP TABLE IF EXISTS `m2_catalog_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_relation` (
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `M2_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`),
  CONSTRAINT `M2_CAT_PRD_RELATION_CHILD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_RELATION_PARENT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Relation Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_relation`
--

LOCK TABLES `m2_catalog_product_relation` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `m2_catalog_product_super_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_super_attribute` (
  `product_super_attribute_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  CONSTRAINT `M2_CAT_PRD_SPR_ATTR_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Super Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_super_attribute`
--

LOCK TABLES `m2_catalog_product_super_attribute` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_super_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_super_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `m2_catalog_product_super_attribute_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_super_attribute_label` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `M2_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_E6C559B2B6F7749B2725BF3431C57191` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `m2_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_SPR_ATTR_LBL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Super Attribute Label Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_super_attribute_label`
--

LOCK TABLES `m2_catalog_product_super_attribute_label` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_super_attribute_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_super_attribute_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_super_link`
--

DROP TABLE IF EXISTS `m2_catalog_product_super_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_super_link` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `M2_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `M2_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_CAT_PRD_SPR_LNK_PARENT_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_SPR_LNK_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product Super Link Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_super_link`
--

LOCK TABLES `m2_catalog_product_super_link` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_super_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_super_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_product_website`
--

DROP TABLE IF EXISTS `m2_catalog_product_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_product_website` (
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `M2_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_CAT_PRD_WS_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_PRD_WS_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Product To Website Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_product_website`
--

LOCK TABLES `m2_catalog_product_website` WRITE;
/*!40000 ALTER TABLE `m2_catalog_product_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalog_url_rewrite_product_category`
--

DROP TABLE IF EXISTS `m2_catalog_url_rewrite_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalog_url_rewrite_product_category` (
  `url_rewrite_id` int unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int unsigned NOT NULL COMMENT 'category_id',
  `product_id` int unsigned NOT NULL COMMENT 'product_id',
  PRIMARY KEY (`url_rewrite_id`),
  KEY `M2_CAT_URL_REWRITE_PRD_CTGR_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `M2_CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  CONSTRAINT `FK_921AD8B81603CFE550CE37C395F0E8E7` FOREIGN KEY (`url_rewrite_id`) REFERENCES `m2_url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_M2_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `m2_catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CAT_URL_REWRITE_PRD_CTGR_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='url_rewrite_relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalog_url_rewrite_product_category`
--

LOCK TABLES `m2_catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `m2_catalog_url_rewrite_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock` (
  `stock_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock`
--

LOCK TABLES `m2_cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_cataloginventory_stock` VALUES (1,0,'Default');
/*!40000 ALTER TABLE `m2_cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock_item` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `stock_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Stock ID',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `M2_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID_PRODUCT_ID` (`website_id`,`product_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`),
  CONSTRAINT `M2_CATINV_STOCK_ITEM_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATINV_STOCK_ITEM_STOCK_ID_M2_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `m2_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock_item`
--

LOCK TABLES `m2_cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock_status` (
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock Status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock_status`
--

LOCK TABLES `m2_cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock_status_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock_status_idx` (
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock Status Indexer Idx';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock_status_idx`
--

LOCK TABLES `m2_cataloginventory_stock_status_idx` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock_status_replica`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock_status_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock_status_replica` (
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock Status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock_status_replica`
--

LOCK TABLES `m2_cataloginventory_stock_status_replica` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `m2_cataloginventory_stock_status_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cataloginventory_stock_status_tmp` (
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `M2_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cataloginventory Stock Status Indexer Tmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cataloginventory_stock_status_tmp`
--

LOCK TABLES `m2_cataloginventory_stock_status_tmp` WRITE;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cataloginventory_stock_status_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule`
--

DROP TABLE IF EXISTS `m2_catalogrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `M2_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule`
--

LOCK TABLES `m2_catalogrule` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_customer_group`
--

DROP TABLE IF EXISTS `m2_catalogrule_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_customer_group` (
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `M2_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `M2_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_M2_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_catalogrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_M2_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Rules To Customer Groups Relations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_customer_group`
--

LOCK TABLES `m2_catalogrule_customer_group` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_group_website`
--

DROP TABLE IF EXISTS `m2_catalogrule_group_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_group_website` (
  `rule_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Group Website';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_group_website`
--

LOCK TABLES `m2_catalogrule_group_website` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_group_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_group_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_group_website_replica`
--

DROP TABLE IF EXISTS `m2_catalogrule_group_website_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_group_website_replica` (
  `rule_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `M2_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Group Website';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_group_website_replica`
--

LOCK TABLES `m2_catalogrule_group_website_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_group_website_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_group_website_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_product`
--

DROP TABLE IF EXISTS `m2_catalogrule_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_product` (
  `rule_product_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product ID',
  `rule_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int DEFAULT NULL,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_02D68987F3B55F1EEB34E94D2A97E348` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `M2_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `M2_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `M2_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_product`
--

LOCK TABLES `m2_catalogrule_product` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_product_price`
--

DROP TABLE IF EXISTS `m2_catalogrule_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_product_price` (
  `rule_product_price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int DEFAULT NULL,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `M2_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Product Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_product_price`
--

LOCK TABLES `m2_catalogrule_product_price` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_product_price_replica`
--

DROP TABLE IF EXISTS `m2_catalogrule_product_price_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_product_price_replica` (
  `rule_product_price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int DEFAULT NULL,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `M2_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Product Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_product_price_replica`
--

LOCK TABLES `m2_catalogrule_product_price_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_product_price_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_product_price_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_product_replica`
--

DROP TABLE IF EXISTS `m2_catalogrule_product_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_product_replica` (
  `rule_product_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product ID',
  `rule_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int DEFAULT NULL,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_02D68987F3B55F1EEB34E94D2A97E348` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `M2_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `M2_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `M2_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `M2_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CatalogRule Product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_product_replica`
--

LOCK TABLES `m2_catalogrule_product_replica` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_product_replica` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_product_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogrule_website`
--

DROP TABLE IF EXISTS `m2_catalogrule_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogrule_website` (
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `M2_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_CATALOGRULE_WEBSITE_RULE_ID_M2_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_catalogrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATALOGRULE_WEBSITE_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Catalog Rules To Websites Relations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogrule_website`
--

LOCK TABLES `m2_catalogrule_website` WRITE;
/*!40000 ALTER TABLE `m2_catalogrule_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogrule_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_catalogsearch_recommendations`
--

DROP TABLE IF EXISTS `m2_catalogsearch_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_catalogsearch_recommendations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `query_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Query ID',
  `relation_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Relation ID',
  PRIMARY KEY (`id`),
  KEY `M2_CATSRCH_RECOMMENDATIONS_QR_ID_M2_SRCH_QR_QR_ID` (`query_id`),
  KEY `M2_CATSRCH_RECOMMENDATIONS_RELATION_ID_M2_SRCH_QR_QR_ID` (`relation_id`),
  CONSTRAINT `M2_CATSRCH_RECOMMENDATIONS_QR_ID_M2_SRCH_QR_QR_ID` FOREIGN KEY (`query_id`) REFERENCES `m2_search_query` (`query_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CATSRCH_RECOMMENDATIONS_RELATION_ID_M2_SRCH_QR_QR_ID` FOREIGN KEY (`relation_id`) REFERENCES `m2_search_query` (`query_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Advanced Search Recommendations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_catalogsearch_recommendations`
--

LOCK TABLES `m2_catalogsearch_recommendations` WRITE;
/*!40000 ALTER TABLE `m2_catalogsearch_recommendations` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_catalogsearch_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_checkout_agreement`
--

DROP TABLE IF EXISTS `m2_checkout_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_checkout_agreement` (
  `agreement_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Checkout Agreement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_checkout_agreement`
--

LOCK TABLES `m2_checkout_agreement` WRITE;
/*!40000 ALTER TABLE `m2_checkout_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_checkout_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_checkout_agreement_store`
--

DROP TABLE IF EXISTS `m2_checkout_agreement_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_checkout_agreement_store` (
  `agreement_id` int unsigned NOT NULL COMMENT 'Agreement ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `M2_CHECKOUT_AGREEMENT_STORE_STORE_ID_M2_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CHECKOUT_AGREEMENT_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CHKT_AGRT_STORE_AGRT_ID_M2_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `m2_checkout_agreement` (`agreement_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Checkout Agreement Store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_checkout_agreement_store`
--

LOCK TABLES `m2_checkout_agreement_store` WRITE;
/*!40000 ALTER TABLE `m2_checkout_agreement_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_checkout_agreement_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cms_block`
--

DROP TABLE IF EXISTS `m2_cms_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cms_block` (
  `block_id` smallint NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  KEY `M2_CMS_BLOCK_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `M2_CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CMS Block Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cms_block`
--

LOCK TABLES `m2_cms_block` WRITE;
/*!40000 ALTER TABLE `m2_cms_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cms_block_store`
--

DROP TABLE IF EXISTS `m2_cms_block_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cms_block_store` (
  `block_id` smallint NOT NULL,
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `M2_CMS_BLOCK_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CMS_BLOCK_STORE_BLOCK_ID_M2_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `m2_cms_block` (`block_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CMS_BLOCK_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CMS Block To Store Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cms_block_store`
--

LOCK TABLES `m2_cms_block_store` WRITE;
/*!40000 ALTER TABLE `m2_cms_block_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cms_block_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cms_page`
--

DROP TABLE IF EXISTS `m2_cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cms_page` (
  `page_id` smallint NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `layout_update_selected` varchar(128) DEFAULT NULL COMMENT 'Page Custom Layout File',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `M2_CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `FTI_43CA357296AA7E7CA0109F440F35CA0B` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='CMS Page Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cms_page`
--

LOCK TABLES `m2_cms_page` WRITE;
/*!40000 ALTER TABLE `m2_cms_page` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_cms_page` VALUES (1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2023-12-20 18:21:04','2023-12-20 18:21:04',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Home page','1column',NULL,NULL,'home','Home Page','<p>CMS homepage content goes here.</p>\r\n','2023-12-20 18:21:04','2023-12-20 18:21:06',1,0,'<!--\n    <referenceContainer name=\"right\">\n        <referenceBlock name=\"catalog.compare.sidebar\" remove=\"true\" />\n    </referenceContainer>-->',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2023-12-20 18:21:04','2023-12-20 18:21:04',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2023-12-20 18:21:04','2023-12-20 18:21:04',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m2_cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cms_page_store`
--

DROP TABLE IF EXISTS `m2_cms_page_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cms_page_store` (
  `page_id` smallint NOT NULL COMMENT 'Entity ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `M2_CMS_PAGE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_CMS_PAGE_STORE_PAGE_ID_M2_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `m2_cms_page` (`page_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CMS_PAGE_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='CMS Page To Store Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cms_page_store`
--

LOCK TABLES `m2_cms_page_store` WRITE;
/*!40000 ALTER TABLE `m2_cms_page_store` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_cms_page_store` VALUES (1,0),(2,0),(3,0),(4,0);
/*!40000 ALTER TABLE `m2_cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_core_config_data`
--

DROP TABLE IF EXISTS `m2_core_config_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_core_config_data` (
  `config_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config ID',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int NOT NULL DEFAULT '0' COMMENT 'Config Scope ID',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `M2_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='Config Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_core_config_data`
--

LOCK TABLES `m2_core_config_data` WRITE;
/*!40000 ALTER TABLE `m2_core_config_data` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_core_config_data` VALUES (1,'default',0,'catalog/search/engine','elasticsearch7','2023-12-20 18:20:59'),(2,'default',0,'catalog/search/elasticsearch7_server_hostname','elasticsearch','2023-12-20 18:20:59'),(3,'default',0,'web/seo/use_rewrites','1','2023-12-20 18:20:59'),(4,'default',0,'web/unsecure/base_url','https://magento.shop.ua/','2023-12-20 18:21:00'),(5,'default',0,'web/secure/base_url','https://magento.shop.ua/','2023-12-20 18:21:00'),(6,'default',0,'general/locale/code','en_US','2023-12-20 18:21:00'),(7,'default',0,'web/secure/use_in_frontend','1','2023-12-20 18:21:00'),(8,'default',0,'web/secure/use_in_adminhtml','1','2023-12-20 18:21:00'),(9,'default',0,'general/locale/timezone','America/Chicago','2023-12-20 18:21:00'),(10,'default',0,'currency/options/base','USD','2023-12-20 18:21:00'),(11,'default',0,'currency/options/default','USD','2023-12-20 18:21:00'),(12,'default',0,'currency/options/allow','USD','2023-12-20 18:21:00'),(13,'default',0,'general/region/display_all','1','2023-12-20 18:21:00'),(14,'default',0,'general/region/state_required','AL,AR,AU,BG,BO,BR,BY,CA,CH,CL,CN,CO,CZ,DK,EC,EE,ES,GR,GY,HR,IN,IS,IT,LT,LV,MX,PE,PL,PT,PY,RO,SE,SR,US,UY,VE','2023-12-20 18:21:04'),(15,'default',0,'catalog/category/root_id','2','2023-12-20 18:21:05'),(16,'default',0,'analytics/subscription/enabled','1','2023-12-20 18:21:06'),(17,'default',0,'crontab/default/jobs/analytics_subscribe/schedule/cron_expr','0 * * * *','2023-12-20 18:21:06'),(18,'default',0,'crontab/default/jobs/analytics_collect_data/schedule/cron_expr','00 02 * * *','2023-12-20 18:21:06'),(19,'default',0,'msp_securitysuite_recaptcha/frontend/enabled','0','2023-12-20 18:21:07'),(20,'default',0,'msp_securitysuite_recaptcha/backend/enabled','0','2023-12-20 18:21:07'),(21,'default',0,'twofactorauth/duo/application_key','vPqMgH0hj2qWNDuSSIIDNCsYyrD9KmQHzME9896JxwFLJnjYV5rPGC4OfjhHWGRy','2023-12-20 18:21:07'),(22,'default',0,'dev/static/sign','1','2023-12-20 18:21:08'),(23,'default',0,'dev/js/move_script_to_bottom','1','2023-12-20 18:21:08'),(24,'default',0,'dev/css/use_css_critical_path','1','2023-12-20 18:21:08');
/*!40000 ALTER TABLE `m2_core_config_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_cron_schedule`
--

DROP TABLE IF EXISTS `m2_cron_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_cron_schedule` (
  `schedule_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule ID',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `M2_CRON_SCHEDULE_JOB_CODE_STATUS_SCHEDULED_AT` (`job_code`,`status`,`scheduled_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cron Schedule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_cron_schedule`
--

LOCK TABLES `m2_cron_schedule` WRITE;
/*!40000 ALTER TABLE `m2_cron_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_cron_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity`
--

DROP TABLE IF EXISTS `m2_customer_address_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `parent_id` int unsigned DEFAULT NULL COMMENT 'Parent ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_PARENT_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity`
--

LOCK TABLES `m2_customer_address_entity` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `m2_customer_address_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity_datetime` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_DTIME_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ADDR_ENTT_DTIME_ENTT_ID_M2_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity Datetime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity_datetime`
--

LOCK TABLES `m2_customer_address_entity_datetime` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `m2_customer_address_entity_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity_decimal` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_DEC_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ADDR_ENTT_DEC_ENTT_ID_M2_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity Decimal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity_decimal`
--

LOCK TABLES `m2_customer_address_entity_decimal` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity_int`
--

DROP TABLE IF EXISTS `m2_customer_address_entity_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity_int` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_INT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ADDR_ENTT_INT_ENTT_ID_M2_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity Int';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity_int`
--

LOCK TABLES `m2_customer_address_entity_int` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity_text`
--

DROP TABLE IF EXISTS `m2_customer_address_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity_text` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_TEXT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ADDR_ENTT_TEXT_ENTT_ID_M2_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity Text';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity_text`
--

LOCK TABLES `m2_customer_address_entity_text` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `m2_customer_address_entity_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_address_entity_varchar` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ADDR_ENTT_VCHR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ADDR_ENTT_VCHR_ENTT_ID_M2_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Address Entity Varchar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_address_entity_varchar`
--

LOCK TABLES `m2_customer_address_entity_varchar` WRITE;
/*!40000 ALTER TABLE `m2_customer_address_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_address_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_eav_attribute`
--

DROP TABLE IF EXISTS `m2_customer_eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_eav_attribute` (
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `is_visible` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  `grid_filter_condition_type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Grid Filter Condition Type',
  PRIMARY KEY (`attribute_id`),
  KEY `M2_CUSTOMER_EAV_ATTRIBUTE_SORT_ORDER` (`sort_order`),
  CONSTRAINT `M2_CSTR_EAV_ATTR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Eav Attribute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_eav_attribute`
--

LOCK TABLES `m2_customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `m2_customer_eav_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_customer_eav_attribute` VALUES (1,1,NULL,0,NULL,1,10,NULL,1,1,1,0,0),(2,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(3,1,NULL,0,NULL,1,20,NULL,1,1,0,1,0),(4,0,NULL,0,NULL,0,30,NULL,0,0,0,0,0),(5,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,40,NULL,0,0,0,0,0),(6,0,'trim',0,NULL,0,50,NULL,0,0,0,0,0),(7,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,60,NULL,0,0,0,0,0),(8,0,NULL,0,NULL,0,70,NULL,0,0,0,0,0),(9,1,NULL,0,'{\"input_validation\":\"email\"}',1,80,NULL,1,1,1,1,0),(10,1,NULL,0,NULL,1,25,NULL,1,1,1,0,0),(11,0,'date',0,'{\"input_validation\":\"date\"}',0,90,NULL,1,1,1,0,0),(12,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(13,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(14,0,NULL,0,'{\"input_validation\":\"date\"}',1,0,NULL,0,0,0,0,0),(15,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(16,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(17,0,NULL,0,'{\"max_text_length\":255}',0,100,NULL,1,1,0,1,0),(18,0,NULL,0,NULL,1,0,NULL,1,1,1,0,0),(19,0,NULL,0,NULL,0,0,NULL,1,1,1,0,0),(20,0,NULL,0,'[]',0,110,NULL,1,1,1,0,0),(21,1,NULL,0,NULL,1,28,NULL,0,0,0,0,0),(22,0,NULL,0,NULL,0,10,NULL,0,0,0,0,0),(23,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,20,NULL,1,0,0,1,0),(24,0,'trim',0,NULL,0,30,NULL,0,0,0,0,0),(25,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,40,NULL,1,0,0,1,0),(26,0,NULL,0,NULL,0,50,NULL,0,0,0,0,0),(27,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,60,NULL,1,0,0,1,0),(28,1,NULL,2,'{\"max_text_length\":255,\"min_text_length\":1}',1,70,NULL,1,0,0,1,0),(29,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,100,NULL,1,0,0,1,0),(30,1,NULL,0,NULL,1,80,NULL,1,1,1,0,0),(31,1,NULL,0,NULL,1,90,NULL,1,1,0,1,0),(32,1,NULL,0,NULL,1,90,NULL,0,0,0,0,0),(33,1,NULL,0,'[]',1,110,'Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1,0),(34,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,120,NULL,1,1,1,1,0),(35,0,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',0,130,NULL,1,0,0,1,0),(36,1,NULL,0,NULL,1,140,NULL,0,0,0,0,0),(37,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(38,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(39,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(40,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(41,0,NULL,0,NULL,0,0,NULL,0,0,0,0,0),(42,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(43,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0),(44,0,NULL,0,NULL,1,0,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `m2_customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_eav_attribute_website`
--

DROP TABLE IF EXISTS `m2_customer_eav_attribute_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_eav_attribute_website` (
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `is_visible` smallint unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `M2_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_CSTR_EAV_ATTR_WS_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_EAV_ATTR_WS_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Eav Attribute Website';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_eav_attribute_website`
--

LOCK TABLES `m2_customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `m2_customer_eav_attribute_website` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_customer_eav_attribute_website` VALUES (1,1,NULL,NULL,NULL,NULL),(3,1,NULL,NULL,NULL,NULL),(5,1,NULL,NULL,NULL,NULL),(6,1,NULL,NULL,NULL,NULL),(7,1,NULL,NULL,NULL,NULL),(9,1,NULL,NULL,NULL,NULL),(10,1,NULL,NULL,NULL,NULL),(11,1,NULL,NULL,NULL,NULL),(17,1,NULL,NULL,NULL,NULL),(18,1,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,NULL,NULL),(20,1,NULL,NULL,NULL,NULL),(21,1,NULL,NULL,NULL,NULL),(23,1,NULL,NULL,NULL,NULL),(24,1,NULL,NULL,NULL,NULL),(25,1,NULL,NULL,NULL,NULL),(27,1,NULL,NULL,NULL,NULL),(28,1,NULL,NULL,NULL,NULL),(29,1,NULL,NULL,NULL,NULL),(30,1,NULL,NULL,NULL,NULL),(31,1,NULL,NULL,NULL,NULL),(32,1,NULL,NULL,NULL,NULL),(33,1,NULL,NULL,NULL,NULL),(34,1,NULL,NULL,NULL,NULL),(35,1,NULL,NULL,NULL,NULL),(36,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m2_customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity`
--

DROP TABLE IF EXISTS `m2_customer_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `website_id` smallint unsigned DEFAULT NULL COMMENT 'Website ID',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `store_id` smallint unsigned DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  `session_cutoff` timestamp NULL DEFAULT NULL COMMENT 'Session Cutoff Time',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `M2_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `M2_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `M2_CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `M2_CUSTOMER_ENTITY_LASTNAME` (`lastname`),
  CONSTRAINT `M2_CUSTOMER_ENTITY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_CUSTOMER_ENTITY_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity`
--

LOCK TABLES `m2_customer_entity` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity_datetime`
--

DROP TABLE IF EXISTS `m2_customer_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity_datetime` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ENTT_DTIME_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ENTT_DTIME_ENTT_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity Datetime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity_datetime`
--

LOCK TABLES `m2_customer_entity_datetime` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity_decimal`
--

DROP TABLE IF EXISTS `m2_customer_entity_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity_decimal` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ENTT_DEC_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ENTT_DEC_ENTT_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity Decimal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity_decimal`
--

LOCK TABLES `m2_customer_entity_decimal` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity_int`
--

DROP TABLE IF EXISTS `m2_customer_entity_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity_int` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ENTT_INT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CUSTOMER_ENTITY_INT_ENTITY_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity Int';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity_int`
--

LOCK TABLES `m2_customer_entity_int` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity_text`
--

DROP TABLE IF EXISTS `m2_customer_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity_text` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_CSTR_ENTT_TEXT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CUSTOMER_ENTITY_TEXT_ENTITY_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity Text';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity_text`
--

LOCK TABLES `m2_customer_entity_text` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_entity_varchar`
--

DROP TABLE IF EXISTS `m2_customer_entity_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_entity_varchar` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `M2_CSTR_ENTT_VCHR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_CSTR_ENTT_VCHR_ENTT_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Entity Varchar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_entity_varchar`
--

LOCK TABLES `m2_customer_entity_varchar` WRITE;
/*!40000 ALTER TABLE `m2_customer_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_form_attribute`
--

DROP TABLE IF EXISTS `m2_customer_form_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `M2_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_CSTR_FORM_ATTR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Form Attribute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_form_attribute`
--

LOCK TABLES `m2_customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `m2_customer_form_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_customer_form_attribute` VALUES ('adminhtml_customer',1),('adminhtml_customer',3),('adminhtml_customer',4),('customer_account_create',4),('customer_account_edit',4),('adminhtml_customer',5),('customer_account_create',5),('customer_account_edit',5),('adminhtml_customer',6),('customer_account_create',6),('customer_account_edit',6),('adminhtml_customer',7),('customer_account_create',7),('customer_account_edit',7),('adminhtml_customer',8),('customer_account_create',8),('customer_account_edit',8),('adminhtml_checkout',9),('adminhtml_customer',9),('customer_account_create',9),('customer_account_edit',9),('adminhtml_checkout',10),('adminhtml_customer',10),('adminhtml_checkout',11),('adminhtml_customer',11),('customer_account_create',11),('customer_account_edit',11),('adminhtml_checkout',17),('adminhtml_customer',17),('customer_account_create',17),('customer_account_edit',17),('adminhtml_customer',19),('customer_account_create',19),('customer_account_edit',19),('adminhtml_checkout',20),('adminhtml_customer',20),('customer_account_create',20),('customer_account_edit',20),('adminhtml_customer',21),('adminhtml_customer_address',22),('customer_address_edit',22),('customer_register_address',22),('adminhtml_customer_address',23),('customer_address_edit',23),('customer_register_address',23),('adminhtml_customer_address',24),('customer_address_edit',24),('customer_register_address',24),('adminhtml_customer_address',25),('customer_address_edit',25),('customer_register_address',25),('adminhtml_customer_address',26),('customer_address_edit',26),('customer_register_address',26),('adminhtml_customer_address',27),('customer_address_edit',27),('customer_register_address',27),('adminhtml_customer_address',28),('customer_address_edit',28),('customer_register_address',28),('adminhtml_customer_address',29),('customer_address_edit',29),('customer_register_address',29),('adminhtml_customer_address',30),('customer_address_edit',30),('customer_register_address',30),('adminhtml_customer_address',31),('customer_address_edit',31),('customer_register_address',31),('adminhtml_customer_address',32),('customer_address_edit',32),('customer_register_address',32),('adminhtml_customer_address',33),('customer_address_edit',33),('customer_register_address',33),('adminhtml_customer_address',34),('customer_address_edit',34),('customer_register_address',34),('adminhtml_customer_address',35),('customer_address_edit',35),('customer_register_address',35),('adminhtml_customer_address',36),('customer_address_edit',36),('customer_register_address',36);
/*!40000 ALTER TABLE `m2_customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_grid_flat`
--

DROP TABLE IF EXISTS `m2_customer_grid_flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_grid_flat` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_region_id` int DEFAULT NULL COMMENT 'Billing_region_id',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  PRIMARY KEY (`entity_id`),
  KEY `M2_CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `M2_CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `M2_CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `M2_CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `M2_CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `M2_CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `M2_CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_6DB4E16D063AF7DF68DD0650F8D38588` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='m2_customer_grid_flat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_grid_flat`
--

LOCK TABLES `m2_customer_grid_flat` WRITE;
/*!40000 ALTER TABLE `m2_customer_grid_flat` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_group`
--

DROP TABLE IF EXISTS `m2_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_group` (
  `customer_group_id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class ID',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Customer Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_group`
--

LOCK TABLES `m2_customer_group` WRITE;
/*!40000 ALTER TABLE `m2_customer_group` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_customer_group` VALUES (0,'NOT LOGGED IN',3),(1,'General',3),(2,'Wholesale',3),(3,'Retailer',3);
/*!40000 ALTER TABLE `m2_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_group_excluded_website`
--

DROP TABLE IF EXISTS `m2_customer_group_excluded_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_group_excluded_website` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Excluded Website ID from Customer Group',
  PRIMARY KEY (`entity_id`),
  KEY `M2_CUSTOMER_GROUP_EXCLUDED_WEBSITE_CUSTOMER_GROUP_ID_WEBSITE_ID` (`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Excluded Websites From Customer Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_group_excluded_website`
--

LOCK TABLES `m2_customer_group_excluded_website` WRITE;
/*!40000 ALTER TABLE `m2_customer_group_excluded_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_group_excluded_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_log`
--

DROP TABLE IF EXISTS `m2_customer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_log` (
  `log_id` int NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `M2_CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Customer Log Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_log`
--

LOCK TABLES `m2_customer_log` WRITE;
/*!40000 ALTER TABLE `m2_customer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_customer_visitor`
--

DROP TABLE IF EXISTS `m2_customer_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_customer_visitor` (
  `visitor_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int DEFAULT NULL COMMENT 'Customer ID',
  `session_id` varchar(1) DEFAULT NULL COMMENT 'Deprecated: Session ID value no longer used',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `M2_CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `M2_CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Visitor Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_customer_visitor`
--

LOCK TABLES `m2_customer_visitor` WRITE;
/*!40000 ALTER TABLE `m2_customer_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_design_change`
--

DROP TABLE IF EXISTS `m2_design_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_design_change` (
  `design_change_id` int NOT NULL AUTO_INCREMENT COMMENT 'Design Change ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `M2_DESIGN_CHANGE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_DESIGN_CHANGE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Design Changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_design_change`
--

LOCK TABLES `m2_design_change` WRITE;
/*!40000 ALTER TABLE `m2_design_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_design_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_design_config_grid_flat`
--

DROP TABLE IF EXISTS `m2_design_config_grid_flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_design_config_grid_flat` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `M2_DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `M2_DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `M2_DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `M2_DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='m2_design_config_grid_flat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_design_config_grid_flat`
--

LOCK TABLES `m2_design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `m2_design_config_grid_flat` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_design_config_grid_flat` VALUES (0,NULL,NULL,NULL,''),(1,1,NULL,NULL,''),(2,1,1,1,'');
/*!40000 ALTER TABLE `m2_design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_directory_country`
--

DROP TABLE IF EXISTS `m2_directory_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country ID in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Directory Country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_directory_country`
--

LOCK TABLES `m2_directory_country` WRITE;
/*!40000 ALTER TABLE `m2_directory_country` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_directory_country` VALUES ('AD','AD','AND'),('AE','AE','ARE'),('AF','AF','AFG'),('AG','AG','ATG'),('AI','AI','AIA'),('AL','AL','ALB'),('AM','AM','ARM'),('AN','AN','ANT'),('AO','AO','AGO'),('AQ','AQ','ATA'),('AR','AR','ARG'),('AS','AS','ASM'),('AT','AT','AUT'),('AU','AU','AUS'),('AW','AW','ABW'),('AX','AX','ALA'),('AZ','AZ','AZE'),('BA','BA','BIH'),('BB','BB','BRB'),('BD','BD','BGD'),('BE','BE','BEL'),('BF','BF','BFA'),('BG','BG','BGR'),('BH','BH','BHR'),('BI','BI','BDI'),('BJ','BJ','BEN'),('BL','BL','BLM'),('BM','BM','BMU'),('BN','BN','BRN'),('BO','BO','BOL'),('BQ','BQ','BES'),('BR','BR','BRA'),('BS','BS','BHS'),('BT','BT','BTN'),('BV','BV','BVT'),('BW','BW','BWA'),('BY','BY','BLR'),('BZ','BZ','BLZ'),('CA','CA','CAN'),('CC','CC','CCK'),('CD','CD','COD'),('CF','CF','CAF'),('CG','CG','COG'),('CH','CH','CHE'),('CI','CI','CIV'),('CK','CK','COK'),('CL','CL','CHL'),('CM','CM','CMR'),('CN','CN','CHN'),('CO','CO','COL'),('CR','CR','CRI'),('CU','CU','CUB'),('CV','CV','CPV'),('CW','CW','CUW'),('CX','CX','CXR'),('CY','CY','CYP'),('CZ','CZ','CZE'),('DE','DE','DEU'),('DJ','DJ','DJI'),('DK','DK','DNK'),('DM','DM','DMA'),('DO','DO','DOM'),('DZ','DZ','DZA'),('EC','EC','ECU'),('EE','EE','EST'),('EG','EG','EGY'),('EH','EH','ESH'),('ER','ER','ERI'),('ES','ES','ESP'),('ET','ET','ETH'),('FI','FI','FIN'),('FJ','FJ','FJI'),('FK','FK','FLK'),('FM','FM','FSM'),('FO','FO','FRO'),('FR','FR','FRA'),('GA','GA','GAB'),('GB','GB','GBR'),('GD','GD','GRD'),('GE','GE','GEO'),('GF','GF','GUF'),('GG','GG','GGY'),('GH','GH','GHA'),('GI','GI','GIB'),('GL','GL','GRL'),('GM','GM','GMB'),('GN','GN','GIN'),('GP','GP','GLP'),('GQ','GQ','GNQ'),('GR','GR','GRC'),('GS','GS','SGS'),('GT','GT','GTM'),('GU','GU','GUM'),('GW','GW','GNB'),('GY','GY','GUY'),('HK','HK','HKG'),('HM','HM','HMD'),('HN','HN','HND'),('HR','HR','HRV'),('HT','HT','HTI'),('HU','HU','HUN'),('ID','ID','IDN'),('IE','IE','IRL'),('IL','IL','ISR'),('IM','IM','IMN'),('IN','IN','IND'),('IO','IO','IOT'),('IQ','IQ','IRQ'),('IR','IR','IRN'),('IS','IS','ISL'),('IT','IT','ITA'),('JE','JE','JEY'),('JM','JM','JAM'),('JO','JO','JOR'),('JP','JP','JPN'),('KE','KE','KEN'),('KG','KG','KGZ'),('KH','KH','KHM'),('KI','KI','KIR'),('KM','KM','COM'),('KN','KN','KNA'),('KP','KP','PRK'),('KR','KR','KOR'),('KW','KW','KWT'),('KY','KY','CYM'),('KZ','KZ','KAZ'),('LA','LA','LAO'),('LB','LB','LBN'),('LC','LC','LCA'),('LI','LI','LIE'),('LK','LK','LKA'),('LR','LR','LBR'),('LS','LS','LSO'),('LT','LT','LTU'),('LU','LU','LUX'),('LV','LV','LVA'),('LY','LY','LBY'),('MA','MA','MAR'),('MC','MC','MCO'),('MD','MD','MDA'),('ME','ME','MNE'),('MF','MF','MAF'),('MG','MG','MDG'),('MH','MH','MHL'),('MK','MK','MKD'),('ML','ML','MLI'),('MM','MM','MMR'),('MN','MN','MNG'),('MO','MO','MAC'),('MP','MP','MNP'),('MQ','MQ','MTQ'),('MR','MR','MRT'),('MS','MS','MSR'),('MT','MT','MLT'),('MU','MU','MUS'),('MV','MV','MDV'),('MW','MW','MWI'),('MX','MX','MEX'),('MY','MY','MYS'),('MZ','MZ','MOZ'),('NA','NA','NAM'),('NC','NC','NCL'),('NE','NE','NER'),('NF','NF','NFK'),('NG','NG','NGA'),('NI','NI','NIC'),('NL','NL','NLD'),('NO','NO','NOR'),('NP','NP','NPL'),('NR','NR','NRU'),('NU','NU','NIU'),('NZ','NZ','NZL'),('OM','OM','OMN'),('PA','PA','PAN'),('PE','PE','PER'),('PF','PF','PYF'),('PG','PG','PNG'),('PH','PH','PHL'),('PK','PK','PAK'),('PL','PL','POL'),('PM','PM','SPM'),('PN','PN','PCN'),('PS','PS','PSE'),('PT','PT','PRT'),('PW','PW','PLW'),('PY','PY','PRY'),('QA','QA','QAT'),('RE','RE','REU'),('RO','RO','ROU'),('RS','RS','SRB'),('RU','RU','RUS'),('RW','RW','RWA'),('SA','SA','SAU'),('SB','SB','SLB'),('SC','SC','SYC'),('SD','SD','SDN'),('SE','SE','SWE'),('SG','SG','SGP'),('SH','SH','SHN'),('SI','SI','SVN'),('SJ','SJ','SJM'),('SK','SK','SVK'),('SL','SL','SLE'),('SM','SM','SMR'),('SN','SN','SEN'),('SO','SO','SOM'),('SR','SR','SUR'),('ST','ST','STP'),('SV','SV','SLV'),('SX','SX','SXM'),('SY','SY','SYR'),('SZ','SZ','SWZ'),('TC','TC','TCA'),('TD','TD','TCD'),('TF','TF','ATF'),('TG','TG','TGO'),('TH','TH','THA'),('TJ','TJ','TJK'),('TK','TK','TKL'),('TL','TL','TLS'),('TM','TM','TKM'),('TN','TN','TUN'),('TO','TO','TON'),('TR','TR','TUR'),('TT','TT','TTO'),('TV','TV','TUV'),('TW','TW','TWN'),('TZ','TZ','TZA'),('UA','UA','UKR'),('UG','UG','UGA'),('UM','UM','UMI'),('US','US','USA'),('UY','UY','URY'),('UZ','UZ','UZB'),('VA','VA','VAT'),('VC','VC','VCT'),('VE','VE','VEN'),('VG','VG','VGB'),('VI','VI','VIR'),('VN','VN','VNM'),('VU','VU','VUT'),('WF','WF','WLF'),('WS','WS','WSM'),('XK','XK','XKX'),('YE','YE','YEM'),('YT','YT','MYT'),('ZA','ZA','ZAF'),('ZM','ZM','ZMB'),('ZW','ZW','ZWE');
/*!40000 ALTER TABLE `m2_directory_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_directory_country_format`
--

DROP TABLE IF EXISTS `m2_directory_country_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_directory_country_format` (
  `country_format_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format ID',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country ID in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `M2_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Directory Country Format';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_directory_country_format`
--

LOCK TABLES `m2_directory_country_format` WRITE;
/*!40000 ALTER TABLE `m2_directory_country_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_directory_country_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_directory_country_region`
--

DROP TABLE IF EXISTS `m2_directory_country_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_directory_country_region` (
  `region_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region ID',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country ID in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `M2_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8mb3 COMMENT='Directory Country Region';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_directory_country_region`
--

LOCK TABLES `m2_directory_country_region` WRITE;
/*!40000 ALTER TABLE `m2_directory_country_region` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_directory_country_region` VALUES (1,'US','AL','Alabama'),(2,'US','AK','Alaska'),(3,'US','AS','American Samoa'),(4,'US','AZ','Arizona'),(5,'US','AR','Arkansas'),(6,'US','AE','Armed Forces Africa'),(7,'US','AA','Armed Forces Americas'),(8,'US','AE','Armed Forces Canada'),(9,'US','AE','Armed Forces Europe'),(10,'US','AE','Armed Forces Middle East'),(11,'US','AP','Armed Forces Pacific'),(12,'US','CA','California'),(13,'US','CO','Colorado'),(14,'US','CT','Connecticut'),(15,'US','DE','Delaware'),(16,'US','DC','District of Columbia'),(17,'US','FM','Federated States Of Micronesia'),(18,'US','FL','Florida'),(19,'US','GA','Georgia'),(20,'US','GU','Guam'),(21,'US','HI','Hawaii'),(22,'US','ID','Idaho'),(23,'US','IL','Illinois'),(24,'US','IN','Indiana'),(25,'US','IA','Iowa'),(26,'US','KS','Kansas'),(27,'US','KY','Kentucky'),(28,'US','LA','Louisiana'),(29,'US','ME','Maine'),(30,'US','MH','Marshall Islands'),(31,'US','MD','Maryland'),(32,'US','MA','Massachusetts'),(33,'US','MI','Michigan'),(34,'US','MN','Minnesota'),(35,'US','MS','Mississippi'),(36,'US','MO','Missouri'),(37,'US','MT','Montana'),(38,'US','NE','Nebraska'),(39,'US','NV','Nevada'),(40,'US','NH','New Hampshire'),(41,'US','NJ','New Jersey'),(42,'US','NM','New Mexico'),(43,'US','NY','New York'),(44,'US','NC','North Carolina'),(45,'US','ND','North Dakota'),(46,'US','MP','Northern Mariana Islands'),(47,'US','OH','Ohio'),(48,'US','OK','Oklahoma'),(49,'US','OR','Oregon'),(50,'US','PW','Palau'),(51,'US','PA','Pennsylvania'),(52,'US','PR','Puerto Rico'),(53,'US','RI','Rhode Island'),(54,'US','SC','South Carolina'),(55,'US','SD','South Dakota'),(56,'US','TN','Tennessee'),(57,'US','TX','Texas'),(58,'US','UT','Utah'),(59,'US','VT','Vermont'),(60,'US','VI','Virgin Islands'),(61,'US','VA','Virginia'),(62,'US','WA','Washington'),(63,'US','WV','West Virginia'),(64,'US','WI','Wisconsin'),(65,'US','WY','Wyoming'),(66,'CA','AB','Alberta'),(67,'CA','BC','British Columbia'),(68,'CA','MB','Manitoba'),(69,'CA','NL','Newfoundland and Labrador'),(70,'CA','NB','New Brunswick'),(71,'CA','NS','Nova Scotia'),(72,'CA','NT','Northwest Territories'),(73,'CA','NU','Nunavut'),(74,'CA','ON','Ontario'),(75,'CA','PE','Prince Edward Island'),(76,'CA','QC','Quebec'),(77,'CA','SK','Saskatchewan'),(78,'CA','YT','Yukon Territory'),(79,'DE','NDS','Niedersachsen'),(80,'DE','BAW','Baden-Württemberg'),(81,'DE','BAY','Bayern'),(82,'DE','BER','Berlin'),(83,'DE','BRG','Brandenburg'),(84,'DE','BRE','Bremen'),(85,'DE','HAM','Hamburg'),(86,'DE','HES','Hessen'),(87,'DE','MEC','Mecklenburg-Vorpommern'),(88,'DE','NRW','Nordrhein-Westfalen'),(89,'DE','RHE','Rheinland-Pfalz'),(90,'DE','SAR','Saarland'),(91,'DE','SAS','Sachsen'),(92,'DE','SAC','Sachsen-Anhalt'),(93,'DE','SCN','Schleswig-Holstein'),(94,'DE','THE','Thüringen'),(95,'AT','WI','Wien'),(96,'AT','NO','Niederösterreich'),(97,'AT','OO','Oberösterreich'),(98,'AT','SB','Salzburg'),(99,'AT','KN','Kärnten'),(100,'AT','ST','Steiermark'),(101,'AT','TI','Tirol'),(102,'AT','BL','Burgenland'),(103,'AT','VB','Vorarlberg'),(104,'CH','AG','Aargau'),(105,'CH','AI','Appenzell Innerrhoden'),(106,'CH','AR','Appenzell Ausserrhoden'),(107,'CH','BE','Bern'),(108,'CH','BL','Basel-Landschaft'),(109,'CH','BS','Basel-Stadt'),(110,'CH','FR','Friburg'),(111,'CH','GE','Geneva'),(112,'CH','GL','Glarus'),(113,'CH','GR','Graubünden'),(114,'CH','JU','Jura'),(115,'CH','LU','Lucerne'),(116,'CH','NE','Neuchâtel'),(117,'CH','NW','Nidwalden'),(118,'CH','OW','Obwalden'),(119,'CH','SG','St. Gallen'),(120,'CH','SH','Schaffhausen'),(121,'CH','SO','Solothurn'),(122,'CH','SZ','Schwyz'),(123,'CH','TG','Thurgau'),(124,'CH','TI','Ticino'),(125,'CH','UR','Uri'),(126,'CH','VD','Vaud'),(127,'CH','VS','Wallis'),(128,'CH','ZG','Zug'),(129,'CH','ZH','Zürich'),(130,'ES','A Coruсa','A Coruña'),(131,'ES','Alava','Alava'),(132,'ES','Albacete','Albacete'),(133,'ES','Alicante','Alicante'),(134,'ES','Almeria','Almeria'),(135,'ES','Asturias','Asturias'),(136,'ES','Avila','Avila'),(137,'ES','Badajoz','Badajoz'),(138,'ES','Baleares','Baleares'),(139,'ES','Barcelona','Barcelona'),(140,'ES','Burgos','Burgos'),(141,'ES','Caceres','Caceres'),(142,'ES','Cadiz','Cadiz'),(143,'ES','Cantabria','Cantabria'),(144,'ES','Castellon','Castellon'),(145,'ES','Ceuta','Ceuta'),(146,'ES','Ciudad Real','Ciudad Real'),(147,'ES','Cordoba','Cordoba'),(148,'ES','Cuenca','Cuenca'),(149,'ES','Girona','Girona'),(150,'ES','Granada','Granada'),(151,'ES','Guadalajara','Guadalajara'),(152,'ES','Guipuzcoa','Guipuzcoa'),(153,'ES','Huelva','Huelva'),(154,'ES','Huesca','Huesca'),(155,'ES','Jaen','Jaen'),(156,'ES','La Rioja','La Rioja'),(157,'ES','Las Palmas','Las Palmas'),(158,'ES','Leon','Leon'),(159,'ES','Lleida','Lleida'),(160,'ES','Lugo','Lugo'),(161,'ES','Madrid','Madrid'),(162,'ES','Malaga','Malaga'),(163,'ES','Melilla','Melilla'),(164,'ES','Murcia','Murcia'),(165,'ES','Navarra','Navarra'),(166,'ES','Ourense','Ourense'),(167,'ES','Palencia','Palencia'),(168,'ES','Pontevedra','Pontevedra'),(169,'ES','Salamanca','Salamanca'),(170,'ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),(171,'ES','Segovia','Segovia'),(172,'ES','Sevilla','Sevilla'),(173,'ES','Soria','Soria'),(174,'ES','Tarragona','Tarragona'),(175,'ES','Teruel','Teruel'),(176,'ES','Toledo','Toledo'),(177,'ES','Valencia','Valencia'),(178,'ES','Valladolid','Valladolid'),(179,'ES','Vizcaya','Vizcaya'),(180,'ES','Zamora','Zamora'),(181,'ES','Zaragoza','Zaragoza'),(182,'FR','1','Ain'),(183,'FR','2','Aisne'),(184,'FR','3','Allier'),(185,'FR','4','Alpes-de-Haute-Provence'),(186,'FR','5','Hautes-Alpes'),(187,'FR','6','Alpes-Maritimes'),(188,'FR','7','Ardèche'),(189,'FR','8','Ardennes'),(190,'FR','9','Ariège'),(191,'FR','10','Aube'),(192,'FR','11','Aude'),(193,'FR','12','Aveyron'),(194,'FR','13','Bouches-du-Rhône'),(195,'FR','14','Calvados'),(196,'FR','15','Cantal'),(197,'FR','16','Charente'),(198,'FR','17','Charente-Maritime'),(199,'FR','18','Cher'),(200,'FR','19','Corrèze'),(201,'FR','2A','Corse-du-Sud'),(202,'FR','2B','Haute-Corse'),(203,'FR','21','Côte-d\'Or'),(204,'FR','22','Côtes-d\'Armor'),(205,'FR','23','Creuse'),(206,'FR','24','Dordogne'),(207,'FR','25','Doubs'),(208,'FR','26','Drôme'),(209,'FR','27','Eure'),(210,'FR','28','Eure-et-Loir'),(211,'FR','29','Finistère'),(212,'FR','30','Gard'),(213,'FR','31','Haute-Garonne'),(214,'FR','32','Gers'),(215,'FR','33','Gironde'),(216,'FR','34','Hérault'),(217,'FR','35','Ille-et-Vilaine'),(218,'FR','36','Indre'),(219,'FR','37','Indre-et-Loire'),(220,'FR','38','Isère'),(221,'FR','39','Jura'),(222,'FR','40','Landes'),(223,'FR','41','Loir-et-Cher'),(224,'FR','42','Loire'),(225,'FR','43','Haute-Loire'),(226,'FR','44','Loire-Atlantique'),(227,'FR','45','Loiret'),(228,'FR','46','Lot'),(229,'FR','47','Lot-et-Garonne'),(230,'FR','48','Lozère'),(231,'FR','49','Maine-et-Loire'),(232,'FR','50','Manche'),(233,'FR','51','Marne'),(234,'FR','52','Haute-Marne'),(235,'FR','53','Mayenne'),(236,'FR','54','Meurthe-et-Moselle'),(237,'FR','55','Meuse'),(238,'FR','56','Morbihan'),(239,'FR','57','Moselle'),(240,'FR','58','Nièvre'),(241,'FR','59','Nord'),(242,'FR','60','Oise'),(243,'FR','61','Orne'),(244,'FR','62','Pas-de-Calais'),(245,'FR','63','Puy-de-Dôme'),(246,'FR','64','Pyrénées-Atlantiques'),(247,'FR','65','Hautes-Pyrénées'),(248,'FR','66','Pyrénées-Orientales'),(249,'FR','67','Bas-Rhin'),(250,'FR','68','Haut-Rhin'),(251,'FR','69','Rhône'),(252,'FR','70','Haute-Saône'),(253,'FR','71','Saône-et-Loire'),(254,'FR','72','Sarthe'),(255,'FR','73','Savoie'),(256,'FR','74','Haute-Savoie'),(257,'FR','75','Paris'),(258,'FR','76','Seine-Maritime'),(259,'FR','77','Seine-et-Marne'),(260,'FR','78','Yvelines'),(261,'FR','79','Deux-Sèvres'),(262,'FR','80','Somme'),(263,'FR','81','Tarn'),(264,'FR','82','Tarn-et-Garonne'),(265,'FR','83','Var'),(266,'FR','84','Vaucluse'),(267,'FR','85','Vendée'),(268,'FR','86','Vienne'),(269,'FR','87','Haute-Vienne'),(270,'FR','88','Vosges'),(271,'FR','89','Yonne'),(272,'FR','90','Territoire-de-Belfort'),(273,'FR','91','Essonne'),(274,'FR','92','Hauts-de-Seine'),(275,'FR','93','Seine-Saint-Denis'),(276,'FR','94','Val-de-Marne'),(277,'FR','95','Val-d\'Oise'),(278,'RO','AB','Alba'),(279,'RO','AR','Arad'),(280,'RO','AG','Argeş'),(281,'RO','BC','Bacău'),(282,'RO','BH','Bihor'),(283,'RO','BN','Bistriţa-Năsăud'),(284,'RO','BT','Botoşani'),(285,'RO','BV','Braşov'),(286,'RO','BR','Brăila'),(287,'RO','B','Bucureşti'),(288,'RO','BZ','Buzău'),(289,'RO','CS','Caraş-Severin'),(290,'RO','CL','Călăraşi'),(291,'RO','CJ','Cluj'),(292,'RO','CT','Constanţa'),(293,'RO','CV','Covasna'),(294,'RO','DB','Dâmboviţa'),(295,'RO','DJ','Dolj'),(296,'RO','GL','Galaţi'),(297,'RO','GR','Giurgiu'),(298,'RO','GJ','Gorj'),(299,'RO','HR','Harghita'),(300,'RO','HD','Hunedoara'),(301,'RO','IL','Ialomiţa'),(302,'RO','IS','Iaşi'),(303,'RO','IF','Ilfov'),(304,'RO','MM','Maramureş'),(305,'RO','MH','Mehedinţi'),(306,'RO','MS','Mureş'),(307,'RO','NT','Neamţ'),(308,'RO','OT','Olt'),(309,'RO','PH','Prahova'),(310,'RO','SM','Satu-Mare'),(311,'RO','SJ','Sălaj'),(312,'RO','SB','Sibiu'),(313,'RO','SV','Suceava'),(314,'RO','TR','Teleorman'),(315,'RO','TM','Timiş'),(316,'RO','TL','Tulcea'),(317,'RO','VS','Vaslui'),(318,'RO','VL','Vâlcea'),(319,'RO','VN','Vrancea'),(320,'FI','Lappi','Lappi'),(321,'FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),(322,'FI','Kainuu','Kainuu'),(323,'FI','Pohjois-Karjala','Pohjois-Karjala'),(324,'FI','Pohjois-Savo','Pohjois-Savo'),(325,'FI','Etelä-Savo','Etelä-Savo'),(326,'FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),(327,'FI','Pohjanmaa','Pohjanmaa'),(328,'FI','Pirkanmaa','Pirkanmaa'),(329,'FI','Satakunta','Satakunta'),(330,'FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),(331,'FI','Keski-Suomi','Keski-Suomi'),(332,'FI','Varsinais-Suomi','Varsinais-Suomi'),(333,'FI','Etelä-Karjala','Etelä-Karjala'),(334,'FI','Päijät-Häme','Päijät-Häme'),(335,'FI','Kanta-Häme','Kanta-Häme'),(336,'FI','Uusimaa','Uusimaa'),(337,'FI','Itä-Uusimaa','Itä-Uusimaa'),(338,'FI','Kymenlaakso','Kymenlaakso'),(339,'FI','Ahvenanmaa','Ahvenanmaa'),(340,'EE','EE-37','Harjumaa'),(341,'EE','EE-39','Hiiumaa'),(342,'EE','EE-44','Ida-Virumaa'),(343,'EE','EE-49','Jõgevamaa'),(344,'EE','EE-51','Järvamaa'),(345,'EE','EE-57','Läänemaa'),(346,'EE','EE-59','Lääne-Virumaa'),(347,'EE','EE-65','Põlvamaa'),(348,'EE','EE-67','Pärnumaa'),(349,'EE','EE-70','Raplamaa'),(350,'EE','EE-74','Saaremaa'),(351,'EE','EE-78','Tartumaa'),(352,'EE','EE-82','Valgamaa'),(353,'EE','EE-84','Viljandimaa'),(354,'EE','EE-86','Võrumaa'),(355,'LV','LV-DGV','Daugavpils'),(356,'LV','LV-JEL','Jelgava'),(357,'LV','Jēkabpils','Jēkabpils'),(358,'LV','LV-JUR','Jūrmala'),(359,'LV','LV-LPX','Liepāja'),(360,'LV','LV-LE','Liepājas novads'),(361,'LV','LV-REZ','Rēzekne'),(362,'LV','LV-RIX','Rīga'),(363,'LV','LV-RI','Rīgas novads'),(364,'LV','Valmiera','Valmiera'),(365,'LV','LV-VEN','Ventspils'),(366,'LV','Aglonas novads','Aglonas novads'),(367,'LV','LV-AI','Aizkraukles novads'),(368,'LV','Aizputes novads','Aizputes novads'),(369,'LV','Aknīstes novads','Aknīstes novads'),(370,'LV','Alojas novads','Alojas novads'),(371,'LV','Alsungas novads','Alsungas novads'),(372,'LV','LV-AL','Alūksnes novads'),(373,'LV','Amatas novads','Amatas novads'),(374,'LV','Apes novads','Apes novads'),(375,'LV','Auces novads','Auces novads'),(376,'LV','Babītes novads','Babītes novads'),(377,'LV','Baldones novads','Baldones novads'),(378,'LV','Baltinavas novads','Baltinavas novads'),(379,'LV','LV-BL','Balvu novads'),(380,'LV','LV-BU','Bauskas novads'),(381,'LV','Beverīnas novads','Beverīnas novads'),(382,'LV','Brocēnu novads','Brocēnu novads'),(383,'LV','Burtnieku novads','Burtnieku novads'),(384,'LV','Carnikavas novads','Carnikavas novads'),(385,'LV','Cesvaines novads','Cesvaines novads'),(386,'LV','Ciblas novads','Ciblas novads'),(387,'LV','LV-CE','Cēsu novads'),(388,'LV','Dagdas novads','Dagdas novads'),(389,'LV','LV-DA','Daugavpils novads'),(390,'LV','LV-DO','Dobeles novads'),(391,'LV','Dundagas novads','Dundagas novads'),(392,'LV','Durbes novads','Durbes novads'),(393,'LV','Engures novads','Engures novads'),(394,'LV','Garkalnes novads','Garkalnes novads'),(395,'LV','Grobiņas novads','Grobiņas novads'),(396,'LV','LV-GU','Gulbenes novads'),(397,'LV','Iecavas novads','Iecavas novads'),(398,'LV','Ikšķiles novads','Ikšķiles novads'),(399,'LV','Ilūkstes novads','Ilūkstes novads'),(400,'LV','Inčukalna novads','Inčukalna novads'),(401,'LV','Jaunjelgavas novads','Jaunjelgavas novads'),(402,'LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),(403,'LV','Jaunpils novads','Jaunpils novads'),(404,'LV','LV-JL','Jelgavas novads'),(405,'LV','LV-JK','Jēkabpils novads'),(406,'LV','Kandavas novads','Kandavas novads'),(407,'LV','Kokneses novads','Kokneses novads'),(408,'LV','Krimuldas novads','Krimuldas novads'),(409,'LV','Krustpils novads','Krustpils novads'),(410,'LV','LV-KR','Krāslavas novads'),(411,'LV','LV-KU','Kuldīgas novads'),(412,'LV','Kārsavas novads','Kārsavas novads'),(413,'LV','Lielvārdes novads','Lielvārdes novads'),(414,'LV','LV-LM','Limbažu novads'),(415,'LV','Lubānas novads','Lubānas novads'),(416,'LV','LV-LU','Ludzas novads'),(417,'LV','Līgatnes novads','Līgatnes novads'),(418,'LV','Līvānu novads','Līvānu novads'),(419,'LV','LV-MA','Madonas novads'),(420,'LV','Mazsalacas novads','Mazsalacas novads'),(421,'LV','Mālpils novads','Mālpils novads'),(422,'LV','Mārupes novads','Mārupes novads'),(423,'LV','Naukšēnu novads','Naukšēnu novads'),(424,'LV','Neretas novads','Neretas novads'),(425,'LV','Nīcas novads','Nīcas novads'),(426,'LV','LV-OG','Ogres novads'),(427,'LV','Olaines novads','Olaines novads'),(428,'LV','Ozolnieku novads','Ozolnieku novads'),(429,'LV','LV-PR','Preiļu novads'),(430,'LV','Priekules novads','Priekules novads'),(431,'LV','Priekuļu novads','Priekuļu novads'),(432,'LV','Pārgaujas novads','Pārgaujas novads'),(433,'LV','Pāvilostas novads','Pāvilostas novads'),(434,'LV','Pļaviņu novads','Pļaviņu novads'),(435,'LV','Raunas novads','Raunas novads'),(436,'LV','Riebiņu novads','Riebiņu novads'),(437,'LV','Rojas novads','Rojas novads'),(438,'LV','Ropažu novads','Ropažu novads'),(439,'LV','Rucavas novads','Rucavas novads'),(440,'LV','Rugāju novads','Rugāju novads'),(441,'LV','Rundāles novads','Rundāles novads'),(442,'LV','LV-RE','Rēzeknes novads'),(443,'LV','Rūjienas novads','Rūjienas novads'),(444,'LV','Salacgrīvas novads','Salacgrīvas novads'),(445,'LV','Salas novads','Salas novads'),(446,'LV','Salaspils novads','Salaspils novads'),(447,'LV','LV-SA','Saldus novads'),(448,'LV','Saulkrastu novads','Saulkrastu novads'),(449,'LV','Siguldas novads','Siguldas novads'),(450,'LV','Skrundas novads','Skrundas novads'),(451,'LV','Skrīveru novads','Skrīveru novads'),(452,'LV','Smiltenes novads','Smiltenes novads'),(453,'LV','Stopiņu novads','Stopiņu novads'),(454,'LV','Strenču novads','Strenču novads'),(455,'LV','Sējas novads','Sējas novads'),(456,'LV','LV-TA','Talsu novads'),(457,'LV','LV-TU','Tukuma novads'),(458,'LV','Tērvetes novads','Tērvetes novads'),(459,'LV','Vaiņodes novads','Vaiņodes novads'),(460,'LV','LV-VK','Valkas novads'),(461,'LV','LV-VM','Valmieras novads'),(462,'LV','Varakļānu novads','Varakļānu novads'),(463,'LV','Vecpiebalgas novads','Vecpiebalgas novads'),(464,'LV','Vecumnieku novads','Vecumnieku novads'),(465,'LV','LV-VE','Ventspils novads'),(466,'LV','Viesītes novads','Viesītes novads'),(467,'LV','Viļakas novads','Viļakas novads'),(468,'LV','Viļānu novads','Viļānu novads'),(469,'LV','Vārkavas novads','Vārkavas novads'),(470,'LV','Zilupes novads','Zilupes novads'),(471,'LV','Ādažu novads','Ādažu novads'),(472,'LV','Ērgļu novads','Ērgļu novads'),(473,'LV','Ķeguma novads','Ķeguma novads'),(474,'LV','Ķekavas novads','Ķekavas novads'),(475,'LT','LT-AL','Alytaus Apskritis'),(476,'LT','LT-KU','Kauno Apskritis'),(477,'LT','LT-KL','Klaipėdos Apskritis'),(478,'LT','LT-MR','Marijampolės Apskritis'),(479,'LT','LT-PN','Panevėžio Apskritis'),(480,'LT','LT-SA','Šiaulių Apskritis'),(481,'LT','LT-TA','Tauragės Apskritis'),(482,'LT','LT-TE','Telšių Apskritis'),(483,'LT','LT-UT','Utenos Apskritis'),(484,'LT','LT-VL','Vilniaus Apskritis'),(485,'BR','AC','Acre'),(486,'BR','AL','Alagoas'),(487,'BR','AP','Amapá'),(488,'BR','AM','Amazonas'),(489,'BR','BA','Bahia'),(490,'BR','CE','Ceará'),(491,'BR','ES','Espírito Santo'),(492,'BR','GO','Goiás'),(493,'BR','MA','Maranhão'),(494,'BR','MT','Mato Grosso'),(495,'BR','MS','Mato Grosso do Sul'),(496,'BR','MG','Minas Gerais'),(497,'BR','PA','Pará'),(498,'BR','PB','Paraíba'),(499,'BR','PR','Paraná'),(500,'BR','PE','Pernambuco'),(501,'BR','PI','Piauí'),(502,'BR','RJ','Rio de Janeiro'),(503,'BR','RN','Rio Grande do Norte'),(504,'BR','RS','Rio Grande do Sul'),(505,'BR','RO','Rondônia'),(506,'BR','RR','Roraima'),(507,'BR','SC','Santa Catarina'),(508,'BR','SP','São Paulo'),(509,'BR','SE','Sergipe'),(510,'BR','TO','Tocantins'),(511,'BR','DF','Distrito Federal'),(512,'AL','AL-01','Berat'),(513,'AL','AL-09','Dibër'),(514,'AL','AL-02','Durrës'),(515,'AL','AL-03','Elbasan'),(516,'AL','AL-04','Fier'),(517,'AL','AL-05','Gjirokastër'),(518,'AL','AL-06','Korçë'),(519,'AL','AL-07','Kukës'),(520,'AL','AL-08','Lezhë'),(521,'AL','AL-10','Shkodër'),(522,'AL','AL-11','Tiranë'),(523,'AL','AL-12','Vlorë'),(524,'AR','AR-C','Ciudad Autónoma de Buenos Aires'),(525,'AR','AR-B','Buenos Aires'),(526,'AR','AR-K','Catamarca'),(527,'AR','AR-H','Chaco'),(528,'AR','AR-U','Chubut'),(529,'AR','AR-X','Córdoba'),(530,'AR','AR-W','Corrientes'),(531,'AR','AR-E','Entre Ríos'),(532,'AR','AR-P','Formosa'),(533,'AR','AR-Y','Jujuy'),(534,'AR','AR-L','La Pampa'),(535,'AR','AR-F','La Rioja'),(536,'AR','AR-M','Mendoza'),(537,'AR','AR-N','Misiones'),(538,'AR','AR-Q','Neuquén'),(539,'AR','AR-R','Río Negro'),(540,'AR','AR-A','Salta'),(541,'AR','AR-J','San Juan'),(542,'AR','AR-D','San Luis'),(543,'AR','AR-Z','Santa Cruz'),(544,'AR','AR-S','Santa Fe'),(545,'AR','AR-G','Santiago del Estero'),(546,'AR','AR-V','Tierra del Fuego'),(547,'AR','AR-T','Tucumán'),(548,'HR','HR-01','Zagrebačka županija'),(549,'HR','HR-02','Krapinsko-zagorska županija'),(550,'HR','HR-03','Sisačko-moslavačka županija'),(551,'HR','HR-04','Karlovačka županija'),(552,'HR','HR-05','Varaždinska županija'),(553,'HR','HR-06','Koprivničko-križevačka županija'),(554,'HR','HR-07','Bjelovarsko-bilogorska županija'),(555,'HR','HR-08','Primorsko-goranska županija'),(556,'HR','HR-09','Ličko-senjska županija'),(557,'HR','HR-10','Virovitičko-podravska županija'),(558,'HR','HR-11','Požeško-slavonska županija'),(559,'HR','HR-12','Brodsko-posavska županija'),(560,'HR','HR-13','Zadarska županija'),(561,'HR','HR-14','Osječko-baranjska županija'),(562,'HR','HR-15','Šibensko-kninska županija'),(563,'HR','HR-16','Vukovarsko-srijemska županija'),(564,'HR','HR-17','Splitsko-dalmatinska županija'),(565,'HR','HR-18','Istarska županija'),(566,'HR','HR-19','Dubrovačko-neretvanska županija'),(567,'HR','HR-20','Međimurska županija'),(568,'HR','HR-21','Grad Zagreb'),(569,'IN','AN','Andaman and Nicobar Islands'),(570,'IN','AP','Andhra Pradesh'),(571,'IN','AR','Arunachal Pradesh'),(572,'IN','AS','Assam'),(573,'IN','BR','Bihar'),(574,'IN','CH','Chandigarh'),(575,'IN','CT','Chhattisgarh'),(576,'IN','DN','Dadra and Nagar Haveli'),(577,'IN','DD','Daman and Diu'),(578,'IN','DL','Delhi'),(579,'IN','GA','Goa'),(580,'IN','GJ','Gujarat'),(581,'IN','HR','Haryana'),(582,'IN','HP','Himachal Pradesh'),(583,'IN','JK','Jammu and Kashmir'),(584,'IN','JH','Jharkhand'),(585,'IN','KA','Karnataka'),(586,'IN','KL','Kerala'),(587,'IN','LD','Lakshadweep'),(588,'IN','MP','Madhya Pradesh'),(589,'IN','MH','Maharashtra'),(590,'IN','MN','Manipur'),(591,'IN','ML','Meghalaya'),(592,'IN','MZ','Mizoram'),(593,'IN','NL','Nagaland'),(594,'IN','OR','Odisha'),(595,'IN','PY','Puducherry'),(596,'IN','PB','Punjab'),(597,'IN','RJ','Rajasthan'),(598,'IN','SK','Sikkim'),(599,'IN','TN','Tamil Nadu'),(600,'IN','TG','Telangana'),(601,'IN','TR','Tripura'),(602,'IN','UP','Uttar Pradesh'),(603,'IN','UT','Uttarakhand'),(604,'IN','WB','West Bengal'),(605,'AU','ACT','Australian Capital Territory'),(606,'AU','NSW','New South Wales'),(607,'AU','VIC','Victoria'),(608,'AU','QLD','Queensland'),(609,'AU','SA','South Australia'),(610,'AU','TAS','Tasmania'),(611,'AU','WA','Western Australia'),(612,'AU','NT','Northern Territory'),(613,'BY','BY-BR','Bresckaja voblasć'),(614,'BY','BY-HO','Homieĺskaja voblasć'),(615,'BY','BY-HM','Horad Minsk'),(616,'BY','BY-HR','Hrodzienskaja voblasć'),(617,'BY','BY-MA','Mahilioŭskaja voblasć'),(618,'BY','BY-MI','Minskaja voblasć'),(619,'BY','BY-VI','Viciebskaja voblasć'),(620,'BE','VAN','Antwerpen'),(621,'BE','WBR','Brabant wallon'),(622,'BE','BRU','Brussels-Capital Region'),(623,'BE','WHT','Hainaut'),(624,'BE','VLI','Limburg'),(625,'BE','WLG','Liège'),(626,'BE','WLX','Luxembourg'),(627,'BE','WNA','Namur'),(628,'BE','VOV','Oost-Vlaanderen'),(629,'BE','VBR','Vlaams-Brabant'),(630,'BE','VWV','West-Vlaanderen'),(631,'BO','BO-C','Cochabamba'),(632,'BO','BO-H','Chuquisaca'),(633,'BO','BO-B','El Beni'),(634,'BO','BO-L','La Paz'),(635,'BO','BO-O','Oruro'),(636,'BO','BO-N','Pando'),(637,'BO','BO-P','Potosí'),(638,'BO','BO-S','Santa Cruz'),(639,'BO','BO-T','Tarija'),(640,'BG','BG-01','Blagoevgrad'),(641,'BG','BG-02','Burgas'),(642,'BG','BG-03','Varna'),(643,'BG','BG-04','Veliko Tarnovo'),(644,'BG','BG-05','Vidin'),(645,'BG','BG-06','Vratsa'),(646,'BG','BG-07','Gabrovo'),(647,'BG','BG-08','Dobrich'),(648,'BG','BG-09','Kardzhali'),(649,'BG','BG-10','Kyustendil'),(650,'BG','BG-11','Lovech'),(651,'BG','BG-12','Montana'),(652,'BG','BG-13','Pazardzhik'),(653,'BG','BG-14','Pernik'),(654,'BG','BG-15','Pleven'),(655,'BG','BG-16','Plovdiv'),(656,'BG','BG-17','Razgrad'),(657,'BG','BG-18','Ruse'),(658,'BG','BG-19','Silistra'),(659,'BG','BG-20','Sliven'),(660,'BG','BG-21','Smolyan'),(661,'BG','BG-22','Sofia City'),(662,'BG','BG-23','Sofia Province'),(663,'BG','BG-24','Stara Zagora'),(664,'BG','BG-25','Targovishte'),(665,'BG','BG-26','Haskovo'),(666,'BG','BG-27','Shumen'),(667,'BG','BG-28','Yambol'),(668,'CL','CL-AI','Aisén del General Carlos Ibañez del Campo'),(669,'CL','CL-AN','Antofagasta'),(670,'CL','CL-AP','Arica y Parinacota'),(671,'CL','CL-AR','La Araucanía'),(672,'CL','CL-AT','Atacama'),(673,'CL','CL-BI','Biobío'),(674,'CL','CL-CO','Coquimbo'),(675,'CL','CL-LI','Libertador General Bernardo O\'Higgins'),(676,'CL','CL-LL','Los Lagos'),(677,'CL','CL-LR','Los Ríos'),(678,'CL','CL-MA','Magallanes'),(679,'CL','CL-ML','Maule'),(680,'CL','CL-NB','Ñuble'),(681,'CL','CL-RM','Región Metropolitana de Santiago'),(682,'CL','CL-TA','Tarapacá'),(683,'CL','CL-VS','Valparaíso'),(684,'CN','CN-AH','Anhui Sheng'),(685,'CN','CN-BJ','Beijing Shi'),(686,'CN','CN-CQ','Chongqing Shi'),(687,'CN','CN-FJ','Fujian Sheng'),(688,'CN','CN-GS','Gansu Sheng'),(689,'CN','CN-GD','Guangdong Sheng'),(690,'CN','CN-GX','Guangxi Zhuangzu Zizhiqu'),(691,'CN','CN-GZ','Guizhou Sheng'),(692,'CN','CN-HI','Hainan Sheng'),(693,'CN','CN-HE','Hebei Sheng'),(694,'CN','CN-HL','Heilongjiang Sheng'),(695,'CN','CN-HA','Henan Sheng'),(696,'CN','CN-HK','Hong Kong SAR'),(697,'CN','CN-HB','Hubei Sheng'),(698,'CN','CN-HN','Hunan Sheng'),(699,'CN','CN-JS','Jiangsu Sheng'),(700,'CN','CN-JX','Jiangxi Sheng'),(701,'CN','CN-JL','Jilin Sheng'),(702,'CN','CN-LN','Liaoning Sheng'),(703,'CN','CN-MO','Macao SAR'),(704,'CN','CN-NM','Nei Mongol Zizhiqu'),(705,'CN','CN-NX','Ningxia Huizi Zizhiqu'),(706,'CN','CN-QH','Qinghai Sheng'),(707,'CN','CN-SN','Shaanxi Sheng'),(708,'CN','CN-SD','Shandong Sheng'),(709,'CN','CN-SH','Shanghai Shi'),(710,'CN','CN-SX','Shanxi Sheng'),(711,'CN','CN-SC','Sichuan Sheng'),(712,'CN','CN-TW','Taiwan Sheng'),(713,'CN','CN-TJ','Tianjin Shi'),(714,'CN','CN-XJ','Xinjiang Uygur Zizhiqu'),(715,'CN','CN-XZ','Xizang Zizhiqu'),(716,'CN','CN-YN','Yunnan Sheng'),(717,'CN','CN-ZJ','Zhejiang Sheng'),(718,'CO','CO-AMA','Amazonas'),(719,'CO','CO-ANT','Antioquia'),(720,'CO','CO-ARA','Arauca'),(721,'CO','CO-ATL','Atlántico'),(722,'CO','CO-BOL','Bolívar'),(723,'CO','CO-BOY','Boyacá'),(724,'CO','CO-CAL','Caldas'),(725,'CO','CO-CAQ','Caquetá'),(726,'CO','CO-CAS','Casanare'),(727,'CO','CO-CAU','Cauca'),(728,'CO','CO-CES','Cesar'),(729,'CO','CO-CHO','Chocó'),(730,'CO','CO-COR','Córdoba'),(731,'CO','CO-CUN','Cundinamarca'),(732,'CO','CO-GUA','Guainía'),(733,'CO','CO-GUV','Guaviare'),(734,'CO','CO-HUL','Huila'),(735,'CO','CO-LAG','La Guajira'),(736,'CO','CO-MAG','Magdalena'),(737,'CO','CO-MET','Meta'),(738,'CO','CO-NAR','Nariño'),(739,'CO','CO-NSA','Norte de Santander'),(740,'CO','CO-PUT','Putumayo'),(741,'CO','CO-QUI','Quindío'),(742,'CO','CO-RIS','Risaralda'),(743,'CO','CO-SAP','San Andrés y Providencia'),(744,'CO','CO-SAN','Santander'),(745,'CO','CO-SUC','Sucre'),(746,'CO','CO-TOL','Tolima'),(747,'CO','CO-VAC','Valle del Cauca'),(748,'CO','CO-VAU','Vaupés'),(749,'CO','CO-VID','Vichada'),(750,'CZ','CZ-10','Praha, Hlavní město'),(751,'CZ','CZ-20','Středočeský kraj'),(752,'CZ','CZ-31','Jihočeský kraj'),(753,'CZ','CZ-32','Plzeňský kraj'),(754,'CZ','CZ-41','Karlovarský kraj'),(755,'CZ','CZ-42','Ústecký kraj'),(756,'CZ','CZ-51','Liberecký kraj'),(757,'CZ','CZ-52','Královéhradecký kraj'),(758,'CZ','CZ-53','Pardubický kraj'),(759,'CZ','CZ-63','Kraj Vysočina'),(760,'CZ','CZ-64','Jihomoravský kraj'),(761,'CZ','CZ-71','Olomoucký kraj'),(762,'CZ','CZ-72','Zlínský kraj'),(763,'CZ','CZ-80','Moravskoslezský kraj'),(764,'DK','DK-84','Hovedstaden'),(765,'DK','DK-82','Midtjylland'),(766,'DK','DK-81','Nordjylland'),(767,'DK','DK-85','Sjælland'),(768,'DK','DK-83','Syddanmark'),(769,'EC','EC-A','Azuay'),(770,'EC','EC-B','Bolívar'),(771,'EC','EC-F','Cañar'),(772,'EC','EC-C','Carchi'),(773,'EC','EC-H','Chimborazo'),(774,'EC','EC-X','Cotopaxi'),(775,'EC','EC-O','El Oro'),(776,'EC','EC-E','Esmeraldas'),(777,'EC','EC-W','Galápagos'),(778,'EC','EC-G','Guayas'),(779,'EC','EC-I','Imbabura'),(780,'EC','EC-L','Loja'),(781,'EC','EC-R','Los Ríos'),(782,'EC','EC-M','Manabí'),(783,'EC','EC-S','Morona Santiago'),(784,'EC','EC-N','Napo'),(785,'EC','EC-D','Orellana'),(786,'EC','EC-Y','Pastaza'),(787,'EC','EC-P','Pichincha'),(788,'EC','EC-SE','Santa Elena'),(789,'EC','EC-SD','Santo Domingo de los Tsáchilas'),(790,'EC','EC-U','Sucumbíos'),(791,'EC','EC-T','Tungurahua'),(792,'EC','EC-Z','Zamora Chinchipe'),(793,'GR','GR-A','Anatolikí Makedonía kai Thráki'),(794,'GR','GR-I','Attikí'),(795,'GR','GR-G','Dytikí Elláda'),(796,'GR','GR-C','Dytikí Makedonía'),(797,'GR','GR-F','Ionía Nísia'),(798,'GR','GR-D','Ípeiros'),(799,'GR','GR-B','Kentrikí Makedonía'),(800,'GR','GR-M','Kríti'),(801,'GR','GR-L','Nótio Aigaío'),(802,'GR','GR-J','Pelopónnisos'),(803,'GR','GR-H','Stereá Elláda'),(804,'GR','GR-E','Thessalía'),(805,'GR','GR-K','Vóreio Aigaío'),(806,'GR','GR-69','Ágion Óros'),(807,'GY','GY-BA','Barima-Waini'),(808,'GY','GY-CU','Cuyuni-Mazaruni'),(809,'GY','GY-DE','Demerara-Mahaica'),(810,'GY','GY-EB','East Berbice-Corentyne'),(811,'GY','GY-ES','Essequibo Islands-West Demerara'),(812,'GY','GY-MA','Mahaica-Berbice'),(813,'GY','GY-PM','Pomeroon-Supenaam'),(814,'GY','GY-PT','Potaro-Siparuni'),(815,'GY','GY-UD','Upper Demerara-Berbice'),(816,'GY','GY-UT','Upper Takutu-Upper Essequibo'),(817,'IS','IS-01','Höfuðborgarsvæði'),(818,'IS','IS-02','Suðurnes'),(819,'IS','IS-03','Vesturland'),(820,'IS','IS-04','Vestfirðir'),(821,'IS','IS-05','Norðurland vestra'),(822,'IS','IS-06','Norðurland eystra'),(823,'IS','IS-07','Austurland'),(824,'IS','IS-08','Suðurland'),(825,'IT','AG','Agrigento'),(826,'IT','AL','Alessandria'),(827,'IT','AN','Ancona'),(828,'IT','AO','Aosta'),(829,'IT','AQ','L\'Aquila'),(830,'IT','AR','Arezzo'),(831,'IT','AP','Ascoli-Piceno'),(832,'IT','AT','Asti'),(833,'IT','AV','Avellino'),(834,'IT','BA','Bari'),(835,'IT','BT','Barletta-Andria-Trani'),(836,'IT','BL','Belluno'),(837,'IT','BN','Benevento'),(838,'IT','BG','Bergamo'),(839,'IT','BI','Biella'),(840,'IT','BO','Bologna'),(841,'IT','BZ','Bolzano'),(842,'IT','BS','Brescia'),(843,'IT','BR','Brindisi'),(844,'IT','CA','Cagliari'),(845,'IT','CL','Caltanissetta'),(846,'IT','CB','Campobasso'),(847,'IT','CI','Carbonia Iglesias'),(848,'IT','CE','Caserta'),(849,'IT','CT','Catania'),(850,'IT','CZ','Catanzaro'),(851,'IT','CH','Chieti'),(852,'IT','CO','Como'),(853,'IT','CS','Cosenza'),(854,'IT','CR','Cremona'),(855,'IT','KR','Crotone'),(856,'IT','CN','Cuneo'),(857,'IT','EN','Enna'),(858,'IT','FM','Fermo'),(859,'IT','FE','Ferrara'),(860,'IT','FI','Firenze'),(861,'IT','FG','Foggia'),(862,'IT','FC','Forli-Cesena'),(863,'IT','FR','Frosinone'),(864,'IT','GE','Genova'),(865,'IT','GO','Gorizia'),(866,'IT','GR','Grosseto'),(867,'IT','IM','Imperia'),(868,'IT','IS','Isernia'),(869,'IT','SP','La-Spezia'),(870,'IT','LT','Latina'),(871,'IT','LE','Lecce'),(872,'IT','LC','Lecco'),(873,'IT','LI','Livorno'),(874,'IT','LO','Lodi'),(875,'IT','LU','Lucca'),(876,'IT','MC','Macerata'),(877,'IT','MN','Mantova'),(878,'IT','MS','Massa-Carrara'),(879,'IT','MT','Matera'),(880,'IT','VS','Medio Campidano'),(881,'IT','ME','Messina'),(882,'IT','MI','Milano'),(883,'IT','MO','Modena'),(884,'IT','MB','Monza-Brianza'),(885,'IT','NA','Napoli'),(886,'IT','NO','Novara'),(887,'IT','NU','Nuoro'),(888,'IT','OG','Ogliastra'),(889,'IT','OT','Olbia Tempio'),(890,'IT','OR','Oristano'),(891,'IT','PD','Padova'),(892,'IT','PA','Palermo'),(893,'IT','PR','Parma'),(894,'IT','PV','Pavia'),(895,'IT','PG','Perugia'),(896,'IT','PU','Pesaro-Urbino'),(897,'IT','PE','Pescara'),(898,'IT','PC','Piacenza'),(899,'IT','PI','Pisa'),(900,'IT','PT','Pistoia'),(901,'IT','PN','Pordenone'),(902,'IT','PZ','Potenza'),(903,'IT','PO','Prato'),(904,'IT','RG','Ragusa'),(905,'IT','RA','Ravenna'),(906,'IT','RC','Reggio-Calabria'),(907,'IT','RE','Reggio-Emilia'),(908,'IT','RI','Rieti'),(909,'IT','RN','Rimini'),(910,'IT','RM','Roma'),(911,'IT','RO','Rovigo'),(912,'IT','SA','Salerno'),(913,'IT','SS','Sassari'),(914,'IT','SV','Savona'),(915,'IT','SI','Siena'),(916,'IT','SR','Siracusa'),(917,'IT','SO','Sondrio'),(918,'IT','TA','Taranto'),(919,'IT','TE','Teramo'),(920,'IT','TR','Terni'),(921,'IT','TO','Torino'),(922,'IT','TP','Trapani'),(923,'IT','TN','Trento'),(924,'IT','TV','Treviso'),(925,'IT','TS','Trieste'),(926,'IT','UD','Udine'),(927,'IT','VA','Varese'),(928,'IT','VE','Venezia'),(929,'IT','VB','Verbania'),(930,'IT','VC','Vercelli'),(931,'IT','VR','Verona'),(932,'IT','VV','Vibo-Valentia'),(933,'IT','VI','Vicenza'),(934,'IT','VT','Viterbo'),(935,'MX','AGU','Aguascalientes'),(936,'MX','BCN','Baja California'),(937,'MX','BCS','Baja California Sur'),(938,'MX','CAM','Campeche'),(939,'MX','CHP','Chiapas'),(940,'MX','CHH','Chihuahua'),(941,'MX','CMX','Ciudad de México'),(942,'MX','COA','Coahuila'),(943,'MX','COL','Colima'),(944,'MX','DUR','Durango'),(945,'MX','MEX','Estado de México'),(946,'MX','GUA','Guanajuato'),(947,'MX','GRO','Guerrero'),(948,'MX','HID','Hidalgo'),(949,'MX','JAL','Jalisco'),(950,'MX','MIC','Michoacán'),(951,'MX','MOR','Morelos'),(952,'MX','NAY','Nayarit'),(953,'MX','NLE','Nuevo León'),(954,'MX','OAX','Oaxaca'),(955,'MX','PUE','Puebla'),(956,'MX','QUE','Querétaro'),(957,'MX','ROO','Quintana Roo'),(958,'MX','SLP','San Luis Potosí'),(959,'MX','SIN','Sinaloa'),(960,'MX','SON','Sonora'),(961,'MX','TAB','Tabasco'),(962,'MX','TAM','Tamaulipas'),(963,'MX','TLA','Tlaxcala'),(964,'MX','VER','Veracruz'),(965,'MX','YUC','Yucatán'),(966,'MX','ZAC','Zacatecas'),(967,'PY','PY-ASU','Asunción'),(968,'PY','PY-16','Alto Paraguay'),(969,'PY','PY-10','Alto Paraná'),(970,'PY','PY-13','Amambay'),(971,'PY','PY-19','Boquerón'),(972,'PY','PY-5','Caaguazú'),(973,'PY','PY-6','Caazapá'),(974,'PY','PY-14','Canindeyú'),(975,'PY','PY-11','Central'),(976,'PY','PY-1','Concepción'),(977,'PY','PY-3','Cordillera'),(978,'PY','PY-4','Guairá'),(979,'PY','PY-7','Itapúa'),(980,'PY','PY-8','Misiones'),(981,'PY','PY-12','Ñeembucú'),(982,'PY','PY-9','Paraguarí'),(983,'PY','PY-15','Presidente Hayes'),(984,'PY','PY-2','San Pedro'),(985,'PE','PE-LMA','Municipalidad Metropolitana de Lima'),(986,'PE','PE-AMA','Amazonas'),(987,'PE','PE-ANC','Ancash'),(988,'PE','PE-APU','Apurímac'),(989,'PE','PE-ARE','Arequipa'),(990,'PE','PE-AYA','Ayacucho'),(991,'PE','PE-CAJ','Cajamarca'),(992,'PE','PE-CUS','Cusco'),(993,'PE','PE-CAL','El Callao'),(994,'PE','PE-HUV','Huancavelica'),(995,'PE','PE-HUC','Huánuco'),(996,'PE','PE-ICA','Ica'),(997,'PE','PE-JUN','Junín'),(998,'PE','PE-LAL','La Libertad'),(999,'PE','PE-LAM','Lambayeque'),(1000,'PE','PE-LIM','Lima'),(1001,'PE','PE-LOR','Loreto'),(1002,'PE','PE-MDD','Madre de Dios'),(1003,'PE','PE-MOQ','Moquegua'),(1004,'PE','PE-PAS','Pasco'),(1005,'PE','PE-PIU','Piura'),(1006,'PE','PE-PUN','Puno'),(1007,'PE','PE-SAM','San Martín'),(1008,'PE','PE-TAC','Tacna'),(1009,'PE','PE-TUM','Tumbes'),(1010,'PE','PE-UCA','Ucayali'),(1011,'PL','PL-02','dolnośląskie'),(1012,'PL','PL-04','kujawsko-pomorskie'),(1013,'PL','PL-06','lubelskie'),(1014,'PL','PL-08','lubuskie'),(1015,'PL','PL-10','łódzkie'),(1016,'PL','PL-12','małopolskie'),(1017,'PL','PL-14','mazowieckie'),(1018,'PL','PL-16','opolskie'),(1019,'PL','PL-18','podkarpackie'),(1020,'PL','PL-20','podlaskie'),(1021,'PL','PL-22','pomorskie'),(1022,'PL','PL-24','śląskie'),(1023,'PL','PL-26','świętokrzyskie'),(1024,'PL','PL-28','warmińsko-mazurskie'),(1025,'PL','PL-30','wielkopolskie'),(1026,'PL','PL-32','zachodniopomorskie'),(1027,'PT','PT-01','Aveiro'),(1028,'PT','PT-02','Beja'),(1029,'PT','PT-03','Braga'),(1030,'PT','PT-04','Bragança'),(1031,'PT','PT-05','Castelo Branco'),(1032,'PT','PT-06','Coimbra'),(1033,'PT','PT-07','Évora'),(1034,'PT','PT-08','Faro'),(1035,'PT','PT-09','Guarda'),(1036,'PT','PT-10','Leiria'),(1037,'PT','PT-11','Lisboa'),(1038,'PT','PT-12','Portalegre'),(1039,'PT','PT-13','Porto'),(1040,'PT','PT-14','Santarém'),(1041,'PT','PT-15','Setúbal'),(1042,'PT','PT-16','Viana do Castelo'),(1043,'PT','PT-17','Vila Real'),(1044,'PT','PT-18','Viseu'),(1045,'PT','PT-20','Região Autónoma dos Açores'),(1046,'PT','PT-30','Região Autónoma da Madeira'),(1047,'SR','SR-BR','Brokopondo'),(1048,'SR','SR-CM','Commewijne'),(1049,'SR','SR-CR','Coronie'),(1050,'SR','SR-MA','Marowijne'),(1051,'SR','SR-NI','Nickerie'),(1052,'SR','SR-PR','Para'),(1053,'SR','SR-PM','Paramaribo'),(1054,'SR','SR-SA','Saramacca'),(1055,'SR','SR-SI','Sipaliwini'),(1056,'SR','SR-WA','Wanica'),(1057,'SE','SE-K','Blekinge län'),(1058,'SE','SE-W','Dalarnas län'),(1059,'SE','SE-I','Gotlands län'),(1060,'SE','SE-X','Gävleborgs län'),(1061,'SE','SE-N','Hallands län'),(1062,'SE','SE-Z','Jämtlands län'),(1063,'SE','SE-F','Jönköpings län'),(1064,'SE','SE-H','Kalmar län'),(1065,'SE','SE-G','Kronobergs län'),(1066,'SE','SE-BD','Norrbottens län'),(1067,'SE','SE-M','Skåne län'),(1068,'SE','SE-AB','Stockholms län'),(1069,'SE','SE-D','Södermanlands län'),(1070,'SE','SE-C','Uppsala län'),(1071,'SE','SE-S','Värmlands län'),(1072,'SE','SE-AC','Västerbottens län'),(1073,'SE','SE-Y','Västernorrlands län'),(1074,'SE','SE-U','Västmanlands län'),(1075,'SE','SE-O','Västra Götalands län'),(1076,'SE','SE-T','Örebro län'),(1077,'SE','SE-E','Östergötlands län'),(1078,'UY','UY-AR','Artigas'),(1079,'UY','UY-CA','Canelones'),(1080,'UY','UY-CL','Cerro Largo'),(1081,'UY','UY-CO','Colonia'),(1082,'UY','UY-DU','Durazno'),(1083,'UY','UY-FS','Flores'),(1084,'UY','UY-FD','Florida'),(1085,'UY','UY-LA','Lavalleja'),(1086,'UY','UY-MA','Maldonado'),(1087,'UY','UY-MO','Montevideo'),(1088,'UY','UY-PA','Paysandu'),(1089,'UY','UY-RN','Río Negro'),(1090,'UY','UY-RV','Rivera'),(1091,'UY','UY-RO','Rocha'),(1092,'UY','UY-SA','Salto'),(1093,'UY','UY-SJ','San José'),(1094,'UY','UY-SO','Soriano'),(1095,'UY','UY-TA','Tacuarembó'),(1096,'UY','UY-TT','Treinta y Tres'),(1097,'VE','VE-W','Dependencias Federales'),(1098,'VE','VE-A','Distrito Capital'),(1099,'VE','VE-Z','Amazonas'),(1100,'VE','VE-B','Anzoátegui'),(1101,'VE','VE-C','Apure'),(1102,'VE','VE-D','Aragua'),(1103,'VE','VE-E','Barinas'),(1104,'VE','VE-F','Bolívar'),(1105,'VE','VE-G','Carabobo'),(1106,'VE','VE-H','Cojedes'),(1107,'VE','VE-Y','Delta Amacuro'),(1108,'VE','VE-I','Falcón'),(1109,'VE','VE-J','Guárico'),(1110,'VE','VE-K','Lara'),(1111,'VE','VE-L','Mérida'),(1112,'VE','VE-M','Miranda'),(1113,'VE','VE-N','Monagas'),(1114,'VE','VE-O','Nueva Esparta'),(1115,'VE','VE-P','Portuguesa'),(1116,'VE','VE-R','Sucre'),(1117,'VE','VE-S','Táchira'),(1118,'VE','VE-T','Trujillo'),(1119,'VE','VE-X','Vargas'),(1120,'VE','VE-U','Yaracuy'),(1121,'VE','VE-V','Zulia');
/*!40000 ALTER TABLE `m2_directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_directory_country_region_name`
--

DROP TABLE IF EXISTS `m2_directory_country_region_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_directory_country_region_name` (
  `locale` varchar(16) NOT NULL COMMENT 'Locale',
  `region_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Region ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `M2_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`),
  CONSTRAINT `FK_C5E01584353D45818287A5B21A754C67` FOREIGN KEY (`region_id`) REFERENCES `m2_directory_country_region` (`region_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Directory Country Region Name';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_directory_country_region_name`
--

LOCK TABLES `m2_directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `m2_directory_country_region_name` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_directory_country_region_name` VALUES ('en_US',1,'Alabama'),('en_US',2,'Alaska'),('en_US',3,'American Samoa'),('en_US',4,'Arizona'),('en_US',5,'Arkansas'),('en_US',6,'Armed Forces Africa'),('en_US',7,'Armed Forces Americas'),('en_US',8,'Armed Forces Canada'),('en_US',9,'Armed Forces Europe'),('en_US',10,'Armed Forces Middle East'),('en_US',11,'Armed Forces Pacific'),('en_US',12,'California'),('en_US',13,'Colorado'),('en_US',14,'Connecticut'),('en_US',15,'Delaware'),('en_US',16,'District of Columbia'),('en_US',17,'Federated States Of Micronesia'),('en_US',18,'Florida'),('en_US',19,'Georgia'),('en_US',20,'Guam'),('en_US',21,'Hawaii'),('en_US',22,'Idaho'),('en_US',23,'Illinois'),('en_US',24,'Indiana'),('en_US',25,'Iowa'),('en_US',26,'Kansas'),('en_US',27,'Kentucky'),('en_US',28,'Louisiana'),('en_US',29,'Maine'),('en_US',30,'Marshall Islands'),('en_US',31,'Maryland'),('en_US',32,'Massachusetts'),('en_US',33,'Michigan'),('en_US',34,'Minnesota'),('en_US',35,'Mississippi'),('en_US',36,'Missouri'),('en_US',37,'Montana'),('en_US',38,'Nebraska'),('en_US',39,'Nevada'),('en_US',40,'New Hampshire'),('en_US',41,'New Jersey'),('en_US',42,'New Mexico'),('en_US',43,'New York'),('en_US',44,'North Carolina'),('en_US',45,'North Dakota'),('en_US',46,'Northern Mariana Islands'),('en_US',47,'Ohio'),('en_US',48,'Oklahoma'),('en_US',49,'Oregon'),('en_US',50,'Palau'),('en_US',51,'Pennsylvania'),('en_US',52,'Puerto Rico'),('en_US',53,'Rhode Island'),('en_US',54,'South Carolina'),('en_US',55,'South Dakota'),('en_US',56,'Tennessee'),('en_US',57,'Texas'),('en_US',58,'Utah'),('en_US',59,'Vermont'),('en_US',60,'Virgin Islands'),('en_US',61,'Virginia'),('en_US',62,'Washington'),('en_US',63,'West Virginia'),('en_US',64,'Wisconsin'),('en_US',65,'Wyoming'),('en_US',66,'Alberta'),('en_US',67,'British Columbia'),('en_US',68,'Manitoba'),('en_US',69,'Newfoundland and Labrador'),('en_US',70,'New Brunswick'),('en_US',71,'Nova Scotia'),('en_US',72,'Northwest Territories'),('en_US',73,'Nunavut'),('en_US',74,'Ontario'),('en_US',75,'Prince Edward Island'),('en_US',76,'Quebec'),('en_US',77,'Saskatchewan'),('en_US',78,'Yukon Territory'),('en_US',79,'Niedersachsen'),('en_US',80,'Baden-Württemberg'),('en_US',81,'Bayern'),('en_US',82,'Berlin'),('en_US',83,'Brandenburg'),('en_US',84,'Bremen'),('en_US',85,'Hamburg'),('en_US',86,'Hessen'),('en_US',87,'Mecklenburg-Vorpommern'),('en_US',88,'Nordrhein-Westfalen'),('en_US',89,'Rheinland-Pfalz'),('en_US',90,'Saarland'),('en_US',91,'Sachsen'),('en_US',92,'Sachsen-Anhalt'),('en_US',93,'Schleswig-Holstein'),('en_US',94,'Thüringen'),('en_US',95,'Wien'),('en_US',96,'Niederösterreich'),('en_US',97,'Oberösterreich'),('en_US',98,'Salzburg'),('en_US',99,'Kärnten'),('en_US',100,'Steiermark'),('en_US',101,'Tirol'),('en_US',102,'Burgenland'),('en_US',103,'Vorarlberg'),('en_US',104,'Aargau'),('en_US',105,'Appenzell Innerrhoden'),('en_US',106,'Appenzell Ausserrhoden'),('en_US',107,'Bern'),('en_US',108,'Basel-Landschaft'),('en_US',109,'Basel-Stadt'),('en_US',110,'Friburg'),('en_US',111,'Geneva'),('en_US',112,'Glarus'),('en_US',113,'Graubünden'),('en_US',114,'Jura'),('en_US',115,'Lucerne'),('en_US',116,'Neuchâtel'),('en_US',117,'Nidwalden'),('en_US',118,'Obwalden'),('en_US',119,'St. Gallen'),('en_US',120,'Schaffhausen'),('en_US',121,'Solothurn'),('en_US',122,'Schwyz'),('en_US',123,'Thurgau'),('en_US',124,'Ticino'),('en_US',125,'Uri'),('en_US',126,'Vaud'),('en_US',127,'Wallis'),('en_US',128,'Zug'),('en_US',129,'Zürich'),('en_US',130,'A Coruña'),('en_US',131,'Alava'),('en_US',132,'Albacete'),('en_US',133,'Alicante'),('en_US',134,'Almeria'),('en_US',135,'Asturias'),('en_US',136,'Avila'),('en_US',137,'Badajoz'),('en_US',138,'Baleares'),('en_US',139,'Barcelona'),('en_US',140,'Burgos'),('en_US',141,'Caceres'),('en_US',142,'Cadiz'),('en_US',143,'Cantabria'),('en_US',144,'Castellon'),('en_US',145,'Ceuta'),('en_US',146,'Ciudad Real'),('en_US',147,'Cordoba'),('en_US',148,'Cuenca'),('en_US',149,'Girona'),('en_US',150,'Granada'),('en_US',151,'Guadalajara'),('en_US',152,'Guipuzcoa'),('en_US',153,'Huelva'),('en_US',154,'Huesca'),('en_US',155,'Jaen'),('en_US',156,'La Rioja'),('en_US',157,'Las Palmas'),('en_US',158,'Leon'),('en_US',159,'Lleida'),('en_US',160,'Lugo'),('en_US',161,'Madrid'),('en_US',162,'Malaga'),('en_US',163,'Melilla'),('en_US',164,'Murcia'),('en_US',165,'Navarra'),('en_US',166,'Ourense'),('en_US',167,'Palencia'),('en_US',168,'Pontevedra'),('en_US',169,'Salamanca'),('en_US',170,'Santa Cruz de Tenerife'),('en_US',171,'Segovia'),('en_US',172,'Sevilla'),('en_US',173,'Soria'),('en_US',174,'Tarragona'),('en_US',175,'Teruel'),('en_US',176,'Toledo'),('en_US',177,'Valencia'),('en_US',178,'Valladolid'),('en_US',179,'Vizcaya'),('en_US',180,'Zamora'),('en_US',181,'Zaragoza'),('en_US',182,'Ain'),('en_US',183,'Aisne'),('en_US',184,'Allier'),('en_US',185,'Alpes-de-Haute-Provence'),('en_US',186,'Hautes-Alpes'),('en_US',187,'Alpes-Maritimes'),('en_US',188,'Ardèche'),('en_US',189,'Ardennes'),('en_US',190,'Ariège'),('en_US',191,'Aube'),('en_US',192,'Aude'),('en_US',193,'Aveyron'),('en_US',194,'Bouches-du-Rhône'),('en_US',195,'Calvados'),('en_US',196,'Cantal'),('en_US',197,'Charente'),('en_US',198,'Charente-Maritime'),('en_US',199,'Cher'),('en_US',200,'Corrèze'),('en_US',201,'Corse-du-Sud'),('en_US',202,'Haute-Corse'),('en_US',203,'Côte-d\'Or'),('en_US',204,'Côtes-d\'Armor'),('en_US',205,'Creuse'),('en_US',206,'Dordogne'),('en_US',207,'Doubs'),('en_US',208,'Drôme'),('en_US',209,'Eure'),('en_US',210,'Eure-et-Loir'),('en_US',211,'Finistère'),('en_US',212,'Gard'),('en_US',213,'Haute-Garonne'),('en_US',214,'Gers'),('en_US',215,'Gironde'),('en_US',216,'Hérault'),('en_US',217,'Ille-et-Vilaine'),('en_US',218,'Indre'),('en_US',219,'Indre-et-Loire'),('en_US',220,'Isère'),('en_US',221,'Jura'),('en_US',222,'Landes'),('en_US',223,'Loir-et-Cher'),('en_US',224,'Loire'),('en_US',225,'Haute-Loire'),('en_US',226,'Loire-Atlantique'),('en_US',227,'Loiret'),('en_US',228,'Lot'),('en_US',229,'Lot-et-Garonne'),('en_US',230,'Lozère'),('en_US',231,'Maine-et-Loire'),('en_US',232,'Manche'),('en_US',233,'Marne'),('en_US',234,'Haute-Marne'),('en_US',235,'Mayenne'),('en_US',236,'Meurthe-et-Moselle'),('en_US',237,'Meuse'),('en_US',238,'Morbihan'),('en_US',239,'Moselle'),('en_US',240,'Nièvre'),('en_US',241,'Nord'),('en_US',242,'Oise'),('en_US',243,'Orne'),('en_US',244,'Pas-de-Calais'),('en_US',245,'Puy-de-Dôme'),('en_US',246,'Pyrénées-Atlantiques'),('en_US',247,'Hautes-Pyrénées'),('en_US',248,'Pyrénées-Orientales'),('en_US',249,'Bas-Rhin'),('en_US',250,'Haut-Rhin'),('en_US',251,'Rhône'),('en_US',252,'Haute-Saône'),('en_US',253,'Saône-et-Loire'),('en_US',254,'Sarthe'),('en_US',255,'Savoie'),('en_US',256,'Haute-Savoie'),('en_US',257,'Paris'),('en_US',258,'Seine-Maritime'),('en_US',259,'Seine-et-Marne'),('en_US',260,'Yvelines'),('en_US',261,'Deux-Sèvres'),('en_US',262,'Somme'),('en_US',263,'Tarn'),('en_US',264,'Tarn-et-Garonne'),('en_US',265,'Var'),('en_US',266,'Vaucluse'),('en_US',267,'Vendée'),('en_US',268,'Vienne'),('en_US',269,'Haute-Vienne'),('en_US',270,'Vosges'),('en_US',271,'Yonne'),('en_US',272,'Territoire-de-Belfort'),('en_US',273,'Essonne'),('en_US',274,'Hauts-de-Seine'),('en_US',275,'Seine-Saint-Denis'),('en_US',276,'Val-de-Marne'),('en_US',277,'Val-d\'Oise'),('en_US',278,'Alba'),('en_US',279,'Arad'),('en_US',280,'Argeş'),('en_US',281,'Bacău'),('en_US',282,'Bihor'),('en_US',283,'Bistriţa-Năsăud'),('en_US',284,'Botoşani'),('en_US',285,'Braşov'),('en_US',286,'Brăila'),('en_US',287,'Bucureşti'),('en_US',288,'Buzău'),('en_US',289,'Caraş-Severin'),('en_US',290,'Călăraşi'),('en_US',291,'Cluj'),('en_US',292,'Constanţa'),('en_US',293,'Covasna'),('en_US',294,'Dâmboviţa'),('en_US',295,'Dolj'),('en_US',296,'Galaţi'),('en_US',297,'Giurgiu'),('en_US',298,'Gorj'),('en_US',299,'Harghita'),('en_US',300,'Hunedoara'),('en_US',301,'Ialomiţa'),('en_US',302,'Iaşi'),('en_US',303,'Ilfov'),('en_US',304,'Maramureş'),('en_US',305,'Mehedinţi'),('en_US',306,'Mureş'),('en_US',307,'Neamţ'),('en_US',308,'Olt'),('en_US',309,'Prahova'),('en_US',310,'Satu-Mare'),('en_US',311,'Sălaj'),('en_US',312,'Sibiu'),('en_US',313,'Suceava'),('en_US',314,'Teleorman'),('en_US',315,'Timiş'),('en_US',316,'Tulcea'),('en_US',317,'Vaslui'),('en_US',318,'Vâlcea'),('en_US',319,'Vrancea'),('en_US',320,'Lappi'),('en_US',321,'Pohjois-Pohjanmaa'),('en_US',322,'Kainuu'),('en_US',323,'Pohjois-Karjala'),('en_US',324,'Pohjois-Savo'),('en_US',325,'Etelä-Savo'),('en_US',326,'Etelä-Pohjanmaa'),('en_US',327,'Pohjanmaa'),('en_US',328,'Pirkanmaa'),('en_US',329,'Satakunta'),('en_US',330,'Keski-Pohjanmaa'),('en_US',331,'Keski-Suomi'),('en_US',332,'Varsinais-Suomi'),('en_US',333,'Etelä-Karjala'),('en_US',334,'Päijät-Häme'),('en_US',335,'Kanta-Häme'),('en_US',336,'Uusimaa'),('en_US',337,'Itä-Uusimaa'),('en_US',338,'Kymenlaakso'),('en_US',339,'Ahvenanmaa'),('en_US',340,'Harjumaa'),('en_US',341,'Hiiumaa'),('en_US',342,'Ida-Virumaa'),('en_US',343,'Jõgevamaa'),('en_US',344,'Järvamaa'),('en_US',345,'Läänemaa'),('en_US',346,'Lääne-Virumaa'),('en_US',347,'Põlvamaa'),('en_US',348,'Pärnumaa'),('en_US',349,'Raplamaa'),('en_US',350,'Saaremaa'),('en_US',351,'Tartumaa'),('en_US',352,'Valgamaa'),('en_US',353,'Viljandimaa'),('en_US',354,'Võrumaa'),('en_US',355,'Daugavpils'),('en_US',356,'Jelgava'),('en_US',357,'Jēkabpils'),('en_US',358,'Jūrmala'),('en_US',359,'Liepāja'),('en_US',360,'Liepājas novads'),('en_US',361,'Rēzekne'),('en_US',362,'Rīga'),('en_US',363,'Rīgas novads'),('en_US',364,'Valmiera'),('en_US',365,'Ventspils'),('en_US',366,'Aglonas novads'),('en_US',367,'Aizkraukles novads'),('en_US',368,'Aizputes novads'),('en_US',369,'Aknīstes novads'),('en_US',370,'Alojas novads'),('en_US',371,'Alsungas novads'),('en_US',372,'Alūksnes novads'),('en_US',373,'Amatas novads'),('en_US',374,'Apes novads'),('en_US',375,'Auces novads'),('en_US',376,'Babītes novads'),('en_US',377,'Baldones novads'),('en_US',378,'Baltinavas novads'),('en_US',379,'Balvu novads'),('en_US',380,'Bauskas novads'),('en_US',381,'Beverīnas novads'),('en_US',382,'Brocēnu novads'),('en_US',383,'Burtnieku novads'),('en_US',384,'Carnikavas novads'),('en_US',385,'Cesvaines novads'),('en_US',386,'Ciblas novads'),('en_US',387,'Cēsu novads'),('en_US',388,'Dagdas novads'),('en_US',389,'Daugavpils novads'),('en_US',390,'Dobeles novads'),('en_US',391,'Dundagas novads'),('en_US',392,'Durbes novads'),('en_US',393,'Engures novads'),('en_US',394,'Garkalnes novads'),('en_US',395,'Grobiņas novads'),('en_US',396,'Gulbenes novads'),('en_US',397,'Iecavas novads'),('en_US',398,'Ikšķiles novads'),('en_US',399,'Ilūkstes novads'),('en_US',400,'Inčukalna novads'),('en_US',401,'Jaunjelgavas novads'),('en_US',402,'Jaunpiebalgas novads'),('en_US',403,'Jaunpils novads'),('en_US',404,'Jelgavas novads'),('en_US',405,'Jēkabpils novads'),('en_US',406,'Kandavas novads'),('en_US',407,'Kokneses novads'),('en_US',408,'Krimuldas novads'),('en_US',409,'Krustpils novads'),('en_US',410,'Krāslavas novads'),('en_US',411,'Kuldīgas novads'),('en_US',412,'Kārsavas novads'),('en_US',413,'Lielvārdes novads'),('en_US',414,'Limbažu novads'),('en_US',415,'Lubānas novads'),('en_US',416,'Ludzas novads'),('en_US',417,'Līgatnes novads'),('en_US',418,'Līvānu novads'),('en_US',419,'Madonas novads'),('en_US',420,'Mazsalacas novads'),('en_US',421,'Mālpils novads'),('en_US',422,'Mārupes novads'),('en_US',423,'Naukšēnu novads'),('en_US',424,'Neretas novads'),('en_US',425,'Nīcas novads'),('en_US',426,'Ogres novads'),('en_US',427,'Olaines novads'),('en_US',428,'Ozolnieku novads'),('en_US',429,'Preiļu novads'),('en_US',430,'Priekules novads'),('en_US',431,'Priekuļu novads'),('en_US',432,'Pārgaujas novads'),('en_US',433,'Pāvilostas novads'),('en_US',434,'Pļaviņu novads'),('en_US',435,'Raunas novads'),('en_US',436,'Riebiņu novads'),('en_US',437,'Rojas novads'),('en_US',438,'Ropažu novads'),('en_US',439,'Rucavas novads'),('en_US',440,'Rugāju novads'),('en_US',441,'Rundāles novads'),('en_US',442,'Rēzeknes novads'),('en_US',443,'Rūjienas novads'),('en_US',444,'Salacgrīvas novads'),('en_US',445,'Salas novads'),('en_US',446,'Salaspils novads'),('en_US',447,'Saldus novads'),('en_US',448,'Saulkrastu novads'),('en_US',449,'Siguldas novads'),('en_US',450,'Skrundas novads'),('en_US',451,'Skrīveru novads'),('en_US',452,'Smiltenes novads'),('en_US',453,'Stopiņu novads'),('en_US',454,'Strenču novads'),('en_US',455,'Sējas novads'),('en_US',456,'Talsu novads'),('en_US',457,'Tukuma novads'),('en_US',458,'Tērvetes novads'),('en_US',459,'Vaiņodes novads'),('en_US',460,'Valkas novads'),('en_US',461,'Valmieras novads'),('en_US',462,'Varakļānu novads'),('en_US',463,'Vecpiebalgas novads'),('en_US',464,'Vecumnieku novads'),('en_US',465,'Ventspils novads'),('en_US',466,'Viesītes novads'),('en_US',467,'Viļakas novads'),('en_US',468,'Viļānu novads'),('en_US',469,'Vārkavas novads'),('en_US',470,'Zilupes novads'),('en_US',471,'Ādažu novads'),('en_US',472,'Ērgļu novads'),('en_US',473,'Ķeguma novads'),('en_US',474,'Ķekavas novads'),('en_US',475,'Alytaus Apskritis'),('en_US',476,'Kauno Apskritis'),('en_US',477,'Klaipėdos Apskritis'),('en_US',478,'Marijampolės Apskritis'),('en_US',479,'Panevėžio Apskritis'),('en_US',480,'Šiaulių Apskritis'),('en_US',481,'Tauragės Apskritis'),('en_US',482,'Telšių Apskritis'),('en_US',483,'Utenos Apskritis'),('en_US',484,'Vilniaus Apskritis'),('en_US',485,'Acre'),('en_US',486,'Alagoas'),('en_US',487,'Amapá'),('en_US',488,'Amazonas'),('en_US',489,'Bahia'),('en_US',490,'Ceará'),('en_US',491,'Espírito Santo'),('en_US',492,'Goiás'),('en_US',493,'Maranhão'),('en_US',494,'Mato Grosso'),('en_US',495,'Mato Grosso do Sul'),('en_US',496,'Minas Gerais'),('en_US',497,'Pará'),('en_US',498,'Paraíba'),('en_US',499,'Paraná'),('en_US',500,'Pernambuco'),('en_US',501,'Piauí'),('en_US',502,'Rio de Janeiro'),('en_US',503,'Rio Grande do Norte'),('en_US',504,'Rio Grande do Sul'),('en_US',505,'Rondônia'),('en_US',506,'Roraima'),('en_US',507,'Santa Catarina'),('en_US',508,'São Paulo'),('en_US',509,'Sergipe'),('en_US',510,'Tocantins'),('en_US',511,'Distrito Federal'),('en_US',512,'Berat'),('en_US',513,'Dibër'),('en_US',514,'Durrës'),('en_US',515,'Elbasan'),('en_US',516,'Fier'),('en_US',517,'Gjirokastër'),('en_US',518,'Korçë'),('en_US',519,'Kukës'),('en_US',520,'Lezhë'),('en_US',521,'Shkodër'),('en_US',522,'Tiranë'),('en_US',523,'Vlorë'),('en_US',524,'Ciudad Autónoma de Buenos Aires'),('en_US',525,'Buenos Aires'),('en_US',526,'Catamarca'),('en_US',527,'Chaco'),('en_US',528,'Chubut'),('en_US',529,'Córdoba'),('en_US',530,'Corrientes'),('en_US',531,'Entre Ríos'),('en_US',532,'Formosa'),('en_US',533,'Jujuy'),('en_US',534,'La Pampa'),('en_US',535,'La Rioja'),('en_US',536,'Mendoza'),('en_US',537,'Misiones'),('en_US',538,'Neuquén'),('en_US',539,'Río Negro'),('en_US',540,'Salta'),('en_US',541,'San Juan'),('en_US',542,'San Luis'),('en_US',543,'Santa Cruz'),('en_US',544,'Santa Fe'),('en_US',545,'Santiago del Estero'),('en_US',546,'Tierra del Fuego'),('en_US',547,'Tucumán'),('en_US',548,'Zagrebačka županija'),('en_US',549,'Krapinsko-zagorska županija'),('en_US',550,'Sisačko-moslavačka županija'),('en_US',551,'Karlovačka županija'),('en_US',552,'Varaždinska županija'),('en_US',553,'Koprivničko-križevačka županija'),('en_US',554,'Bjelovarsko-bilogorska županija'),('en_US',555,'Primorsko-goranska županija'),('en_US',556,'Ličko-senjska županija'),('en_US',557,'Virovitičko-podravska županija'),('en_US',558,'Požeško-slavonska županija'),('en_US',559,'Brodsko-posavska županija'),('en_US',560,'Zadarska županija'),('en_US',561,'Osječko-baranjska županija'),('en_US',562,'Šibensko-kninska županija'),('en_US',563,'Vukovarsko-srijemska županija'),('en_US',564,'Splitsko-dalmatinska županija'),('en_US',565,'Istarska županija'),('en_US',566,'Dubrovačko-neretvanska županija'),('en_US',567,'Međimurska županija'),('en_US',568,'Grad Zagreb'),('en_US',569,'Andaman and Nicobar Islands'),('en_US',570,'Andhra Pradesh'),('en_US',571,'Arunachal Pradesh'),('en_US',572,'Assam'),('en_US',573,'Bihar'),('en_US',574,'Chandigarh'),('en_US',575,'Chhattisgarh'),('en_US',576,'Dadra and Nagar Haveli'),('en_US',577,'Daman and Diu'),('en_US',578,'Delhi'),('en_US',579,'Goa'),('en_US',580,'Gujarat'),('en_US',581,'Haryana'),('en_US',582,'Himachal Pradesh'),('en_US',583,'Jammu and Kashmir'),('en_US',584,'Jharkhand'),('en_US',585,'Karnataka'),('en_US',586,'Kerala'),('en_US',587,'Lakshadweep'),('en_US',588,'Madhya Pradesh'),('en_US',589,'Maharashtra'),('en_US',590,'Manipur'),('en_US',591,'Meghalaya'),('en_US',592,'Mizoram'),('en_US',593,'Nagaland'),('en_US',594,'Odisha'),('en_US',595,'Puducherry'),('en_US',596,'Punjab'),('en_US',597,'Rajasthan'),('en_US',598,'Sikkim'),('en_US',599,'Tamil Nadu'),('en_US',600,'Telangana'),('en_US',601,'Tripura'),('en_US',602,'Uttar Pradesh'),('en_US',603,'Uttarakhand'),('en_US',604,'West Bengal'),('en_US',605,'Australian Capital Territory'),('en_US',606,'New South Wales'),('en_US',607,'Victoria'),('en_US',608,'Queensland'),('en_US',609,'South Australia'),('en_US',610,'Tasmania'),('en_US',611,'Western Australia'),('en_US',612,'Northern Territory'),('en_US',613,'Bresckaja voblasć'),('en_US',614,'Homieĺskaja voblasć'),('en_US',615,'Horad Minsk'),('en_US',616,'Hrodzienskaja voblasć'),('en_US',617,'Mahilioŭskaja voblasć'),('en_US',618,'Minskaja voblasć'),('en_US',619,'Viciebskaja voblasć'),('en_US',620,'Antwerpen'),('en_US',621,'Brabant wallon'),('en_US',622,'Brussels-Capital Region'),('en_US',623,'Hainaut'),('en_US',624,'Limburg'),('en_US',625,'Liège'),('en_US',626,'Luxembourg'),('en_US',627,'Namur'),('en_US',628,'Oost-Vlaanderen'),('en_US',629,'Vlaams-Brabant'),('en_US',630,'West-Vlaanderen'),('en_US',631,'Cochabamba'),('en_US',632,'Chuquisaca'),('en_US',633,'El Beni'),('en_US',634,'La Paz'),('en_US',635,'Oruro'),('en_US',636,'Pando'),('en_US',637,'Potosí'),('en_US',638,'Santa Cruz'),('en_US',639,'Tarija'),('en_US',640,'Blagoevgrad'),('en_US',641,'Burgas'),('en_US',642,'Varna'),('en_US',643,'Veliko Tarnovo'),('en_US',644,'Vidin'),('en_US',645,'Vratsa'),('en_US',646,'Gabrovo'),('en_US',647,'Dobrich'),('en_US',648,'Kardzhali'),('en_US',649,'Kyustendil'),('en_US',650,'Lovech'),('en_US',651,'Montana'),('en_US',652,'Pazardzhik'),('en_US',653,'Pernik'),('en_US',654,'Pleven'),('en_US',655,'Plovdiv'),('en_US',656,'Razgrad'),('en_US',657,'Ruse'),('en_US',658,'Silistra'),('en_US',659,'Sliven'),('en_US',660,'Smolyan'),('en_US',661,'Sofia City'),('en_US',662,'Sofia Province'),('en_US',663,'Stara Zagora'),('en_US',664,'Targovishte'),('en_US',665,'Haskovo'),('en_US',666,'Shumen'),('en_US',667,'Yambol'),('en_US',668,'Aisén del General Carlos Ibañez del Campo'),('en_US',669,'Antofagasta'),('en_US',670,'Arica y Parinacota'),('en_US',671,'La Araucanía'),('en_US',672,'Atacama'),('en_US',673,'Biobío'),('en_US',674,'Coquimbo'),('en_US',675,'Libertador General Bernardo O\'Higgins'),('en_US',676,'Los Lagos'),('en_US',677,'Los Ríos'),('en_US',678,'Magallanes'),('en_US',679,'Maule'),('en_US',680,'Ñuble'),('en_US',681,'Región Metropolitana de Santiago'),('en_US',682,'Tarapacá'),('en_US',683,'Valparaíso'),('en_US',684,'Anhui Sheng'),('en_US',685,'Beijing Shi'),('en_US',686,'Chongqing Shi'),('en_US',687,'Fujian Sheng'),('en_US',688,'Gansu Sheng'),('en_US',689,'Guangdong Sheng'),('en_US',690,'Guangxi Zhuangzu Zizhiqu'),('en_US',691,'Guizhou Sheng'),('en_US',692,'Hainan Sheng'),('en_US',693,'Hebei Sheng'),('en_US',694,'Heilongjiang Sheng'),('en_US',695,'Henan Sheng'),('en_US',696,'Hong Kong SAR'),('en_US',697,'Hubei Sheng'),('en_US',698,'Hunan Sheng'),('en_US',699,'Jiangsu Sheng'),('en_US',700,'Jiangxi Sheng'),('en_US',701,'Jilin Sheng'),('en_US',702,'Liaoning Sheng'),('en_US',703,'Macao SAR'),('en_US',704,'Nei Mongol Zizhiqu'),('en_US',705,'Ningxia Huizi Zizhiqu'),('en_US',706,'Qinghai Sheng'),('en_US',707,'Shaanxi Sheng'),('en_US',708,'Shandong Sheng'),('en_US',709,'Shanghai Shi'),('en_US',710,'Shanxi Sheng'),('en_US',711,'Sichuan Sheng'),('en_US',712,'Taiwan Sheng'),('en_US',713,'Tianjin Shi'),('en_US',714,'Xinjiang Uygur Zizhiqu'),('en_US',715,'Xizang Zizhiqu'),('en_US',716,'Yunnan Sheng'),('en_US',717,'Zhejiang Sheng'),('en_US',718,'Amazonas'),('en_US',719,'Antioquia'),('en_US',720,'Arauca'),('en_US',721,'Atlántico'),('en_US',722,'Bolívar'),('en_US',723,'Boyacá'),('en_US',724,'Caldas'),('en_US',725,'Caquetá'),('en_US',726,'Casanare'),('en_US',727,'Cauca'),('en_US',728,'Cesar'),('en_US',729,'Chocó'),('en_US',730,'Córdoba'),('en_US',731,'Cundinamarca'),('en_US',732,'Guainía'),('en_US',733,'Guaviare'),('en_US',734,'Huila'),('en_US',735,'La Guajira'),('en_US',736,'Magdalena'),('en_US',737,'Meta'),('en_US',738,'Nariño'),('en_US',739,'Norte de Santander'),('en_US',740,'Putumayo'),('en_US',741,'Quindío'),('en_US',742,'Risaralda'),('en_US',743,'San Andrés y Providencia'),('en_US',744,'Santander'),('en_US',745,'Sucre'),('en_US',746,'Tolima'),('en_US',747,'Valle del Cauca'),('en_US',748,'Vaupés'),('en_US',749,'Vichada'),('en_US',750,'Praha, Hlavní město'),('en_US',751,'Středočeský kraj'),('en_US',752,'Jihočeský kraj'),('en_US',753,'Plzeňský kraj'),('en_US',754,'Karlovarský kraj'),('en_US',755,'Ústecký kraj'),('en_US',756,'Liberecký kraj'),('en_US',757,'Královéhradecký kraj'),('en_US',758,'Pardubický kraj'),('en_US',759,'Kraj Vysočina'),('en_US',760,'Jihomoravský kraj'),('en_US',761,'Olomoucký kraj'),('en_US',762,'Zlínský kraj'),('en_US',763,'Moravskoslezský kraj'),('en_US',764,'Hovedstaden'),('en_US',765,'Midtjylland'),('en_US',766,'Nordjylland'),('en_US',767,'Sjælland'),('en_US',768,'Syddanmark'),('en_US',769,'Azuay'),('en_US',770,'Bolívar'),('en_US',771,'Cañar'),('en_US',772,'Carchi'),('en_US',773,'Chimborazo'),('en_US',774,'Cotopaxi'),('en_US',775,'El Oro'),('en_US',776,'Esmeraldas'),('en_US',777,'Galápagos'),('en_US',778,'Guayas'),('en_US',779,'Imbabura'),('en_US',780,'Loja'),('en_US',781,'Los Ríos'),('en_US',782,'Manabí'),('en_US',783,'Morona Santiago'),('en_US',784,'Napo'),('en_US',785,'Orellana'),('en_US',786,'Pastaza'),('en_US',787,'Pichincha'),('en_US',788,'Santa Elena'),('en_US',789,'Santo Domingo de los Tsáchilas'),('en_US',790,'Sucumbíos'),('en_US',791,'Tungurahua'),('en_US',792,'Zamora Chinchipe'),('en_US',793,'Anatolikí Makedonía kai Thráki'),('en_US',794,'Attikí'),('en_US',795,'Dytikí Elláda'),('en_US',796,'Dytikí Makedonía'),('en_US',797,'Ionía Nísia'),('en_US',798,'Ípeiros'),('en_US',799,'Kentrikí Makedonía'),('en_US',800,'Kríti'),('en_US',801,'Nótio Aigaío'),('en_US',802,'Pelopónnisos'),('en_US',803,'Stereá Elláda'),('en_US',804,'Thessalía'),('en_US',805,'Vóreio Aigaío'),('en_US',806,'Ágion Óros'),('en_US',807,'Barima-Waini'),('en_US',808,'Cuyuni-Mazaruni'),('en_US',809,'Demerara-Mahaica'),('en_US',810,'East Berbice-Corentyne'),('en_US',811,'Essequibo Islands-West Demerara'),('en_US',812,'Mahaica-Berbice'),('en_US',813,'Pomeroon-Supenaam'),('en_US',814,'Potaro-Siparuni'),('en_US',815,'Upper Demerara-Berbice'),('en_US',816,'Upper Takutu-Upper Essequibo'),('en_US',817,'Höfuðborgarsvæði'),('en_US',818,'Suðurnes'),('en_US',819,'Vesturland'),('en_US',820,'Vestfirðir'),('en_US',821,'Norðurland vestra'),('en_US',822,'Norðurland eystra'),('en_US',823,'Austurland'),('en_US',824,'Suðurland'),('en_US',825,'Agrigento'),('en_US',826,'Alessandria'),('en_US',827,'Ancona'),('en_US',828,'Aosta'),('en_US',829,'L\'Aquila'),('en_US',830,'Arezzo'),('en_US',831,'Ascoli-Piceno'),('en_US',832,'Asti'),('en_US',833,'Avellino'),('en_US',834,'Bari'),('en_US',835,'Barletta-Andria-Trani'),('en_US',836,'Belluno'),('en_US',837,'Benevento'),('en_US',838,'Bergamo'),('en_US',839,'Biella'),('en_US',840,'Bologna'),('en_US',841,'Bolzano'),('en_US',842,'Brescia'),('en_US',843,'Brindisi'),('en_US',844,'Cagliari'),('en_US',845,'Caltanissetta'),('en_US',846,'Campobasso'),('en_US',847,'Carbonia Iglesias'),('en_US',848,'Caserta'),('en_US',849,'Catania'),('en_US',850,'Catanzaro'),('en_US',851,'Chieti'),('en_US',852,'Como'),('en_US',853,'Cosenza'),('en_US',854,'Cremona'),('en_US',855,'Crotone'),('en_US',856,'Cuneo'),('en_US',857,'Enna'),('en_US',858,'Fermo'),('en_US',859,'Ferrara'),('en_US',860,'Firenze'),('en_US',861,'Foggia'),('en_US',862,'Forli-Cesena'),('en_US',863,'Frosinone'),('en_US',864,'Genova'),('en_US',865,'Gorizia'),('en_US',866,'Grosseto'),('en_US',867,'Imperia'),('en_US',868,'Isernia'),('en_US',869,'La-Spezia'),('en_US',870,'Latina'),('en_US',871,'Lecce'),('en_US',872,'Lecco'),('en_US',873,'Livorno'),('en_US',874,'Lodi'),('en_US',875,'Lucca'),('en_US',876,'Macerata'),('en_US',877,'Mantova'),('en_US',878,'Massa-Carrara'),('en_US',879,'Matera'),('en_US',880,'Medio Campidano'),('en_US',881,'Messina'),('en_US',882,'Milano'),('en_US',883,'Modena'),('en_US',884,'Monza-Brianza'),('en_US',885,'Napoli'),('en_US',886,'Novara'),('en_US',887,'Nuoro'),('en_US',888,'Ogliastra'),('en_US',889,'Olbia Tempio'),('en_US',890,'Oristano'),('en_US',891,'Padova'),('en_US',892,'Palermo'),('en_US',893,'Parma'),('en_US',894,'Pavia'),('en_US',895,'Perugia'),('en_US',896,'Pesaro-Urbino'),('en_US',897,'Pescara'),('en_US',898,'Piacenza'),('en_US',899,'Pisa'),('en_US',900,'Pistoia'),('en_US',901,'Pordenone'),('en_US',902,'Potenza'),('en_US',903,'Prato'),('en_US',904,'Ragusa'),('en_US',905,'Ravenna'),('en_US',906,'Reggio-Calabria'),('en_US',907,'Reggio-Emilia'),('en_US',908,'Rieti'),('en_US',909,'Rimini'),('en_US',910,'Roma'),('en_US',911,'Rovigo'),('en_US',912,'Salerno'),('en_US',913,'Sassari'),('en_US',914,'Savona'),('en_US',915,'Siena'),('en_US',916,'Siracusa'),('en_US',917,'Sondrio'),('en_US',918,'Taranto'),('en_US',919,'Teramo'),('en_US',920,'Terni'),('en_US',921,'Torino'),('en_US',922,'Trapani'),('en_US',923,'Trento'),('en_US',924,'Treviso'),('en_US',925,'Trieste'),('en_US',926,'Udine'),('en_US',927,'Varese'),('en_US',928,'Venezia'),('en_US',929,'Verbania'),('en_US',930,'Vercelli'),('en_US',931,'Verona'),('en_US',932,'Vibo-Valentia'),('en_US',933,'Vicenza'),('en_US',934,'Viterbo'),('en_US',935,'Aguascalientes'),('en_US',936,'Baja California'),('en_US',937,'Baja California Sur'),('en_US',938,'Campeche'),('en_US',939,'Chiapas'),('en_US',940,'Chihuahua'),('en_US',941,'Ciudad de México'),('en_US',942,'Coahuila'),('en_US',943,'Colima'),('en_US',944,'Durango'),('en_US',945,'Estado de México'),('en_US',946,'Guanajuato'),('en_US',947,'Guerrero'),('en_US',948,'Hidalgo'),('en_US',949,'Jalisco'),('en_US',950,'Michoacán'),('en_US',951,'Morelos'),('en_US',952,'Nayarit'),('en_US',953,'Nuevo León'),('en_US',954,'Oaxaca'),('en_US',955,'Puebla'),('en_US',956,'Querétaro'),('en_US',957,'Quintana Roo'),('en_US',958,'San Luis Potosí'),('en_US',959,'Sinaloa'),('en_US',960,'Sonora'),('en_US',961,'Tabasco'),('en_US',962,'Tamaulipas'),('en_US',963,'Tlaxcala'),('en_US',964,'Veracruz'),('en_US',965,'Yucatán'),('en_US',966,'Zacatecas'),('en_US',967,'Asunción'),('en_US',968,'Alto Paraguay'),('en_US',969,'Alto Paraná'),('en_US',970,'Amambay'),('en_US',971,'Boquerón'),('en_US',972,'Caaguazú'),('en_US',973,'Caazapá'),('en_US',974,'Canindeyú'),('en_US',975,'Central'),('en_US',976,'Concepción'),('en_US',977,'Cordillera'),('en_US',978,'Guairá'),('en_US',979,'Itapúa'),('en_US',980,'Misiones'),('en_US',981,'Ñeembucú'),('en_US',982,'Paraguarí'),('en_US',983,'Presidente Hayes'),('en_US',984,'San Pedro'),('en_US',985,'Municipalidad Metropolitana de Lima'),('en_US',986,'Amazonas'),('en_US',987,'Ancash'),('en_US',988,'Apurímac'),('en_US',989,'Arequipa'),('en_US',990,'Ayacucho'),('en_US',991,'Cajamarca'),('en_US',992,'Cusco'),('en_US',993,'El Callao'),('en_US',994,'Huancavelica'),('en_US',995,'Huánuco'),('en_US',996,'Ica'),('en_US',997,'Junín'),('en_US',998,'La Libertad'),('en_US',999,'Lambayeque'),('en_US',1000,'Lima'),('en_US',1001,'Loreto'),('en_US',1002,'Madre de Dios'),('en_US',1003,'Moquegua'),('en_US',1004,'Pasco'),('en_US',1005,'Piura'),('en_US',1006,'Puno'),('en_US',1007,'San Martín'),('en_US',1008,'Tacna'),('en_US',1009,'Tumbes'),('en_US',1010,'Ucayali'),('en_US',1011,'dolnośląskie'),('en_US',1012,'kujawsko-pomorskie'),('en_US',1013,'lubelskie'),('en_US',1014,'lubuskie'),('en_US',1015,'łódzkie'),('en_US',1016,'małopolskie'),('en_US',1017,'mazowieckie'),('en_US',1018,'opolskie'),('en_US',1019,'podkarpackie'),('en_US',1020,'podlaskie'),('en_US',1021,'pomorskie'),('en_US',1022,'śląskie'),('en_US',1023,'świętokrzyskie'),('en_US',1024,'warmińsko-mazurskie'),('en_US',1025,'wielkopolskie'),('en_US',1026,'zachodniopomorskie'),('en_US',1027,'Aveiro'),('en_US',1028,'Beja'),('en_US',1029,'Braga'),('en_US',1030,'Bragança'),('en_US',1031,'Castelo Branco'),('en_US',1032,'Coimbra'),('en_US',1033,'Évora'),('en_US',1034,'Faro'),('en_US',1035,'Guarda'),('en_US',1036,'Leiria'),('en_US',1037,'Lisboa'),('en_US',1038,'Portalegre'),('en_US',1039,'Porto'),('en_US',1040,'Santarém'),('en_US',1041,'Setúbal'),('en_US',1042,'Viana do Castelo'),('en_US',1043,'Vila Real'),('en_US',1044,'Viseu'),('en_US',1045,'Região Autónoma dos Açores'),('en_US',1046,'Região Autónoma da Madeira'),('en_US',1047,'Brokopondo'),('en_US',1048,'Commewijne'),('en_US',1049,'Coronie'),('en_US',1050,'Marowijne'),('en_US',1051,'Nickerie'),('en_US',1052,'Para'),('en_US',1053,'Paramaribo'),('en_US',1054,'Saramacca'),('en_US',1055,'Sipaliwini'),('en_US',1056,'Wanica'),('en_US',1057,'Blekinge län'),('en_US',1058,'Dalarnas län'),('en_US',1059,'Gotlands län'),('en_US',1060,'Gävleborgs län'),('en_US',1061,'Hallands län'),('en_US',1062,'Jämtlands län'),('en_US',1063,'Jönköpings län'),('en_US',1064,'Kalmar län'),('en_US',1065,'Kronobergs län'),('en_US',1066,'Norrbottens län'),('en_US',1067,'Skåne län'),('en_US',1068,'Stockholms län'),('en_US',1069,'Södermanlands län'),('en_US',1070,'Uppsala län'),('en_US',1071,'Värmlands län'),('en_US',1072,'Västerbottens län'),('en_US',1073,'Västernorrlands län'),('en_US',1074,'Västmanlands län'),('en_US',1075,'Västra Götalands län'),('en_US',1076,'Örebro län'),('en_US',1077,'Östergötlands län'),('en_US',1078,'Artigas'),('en_US',1079,'Canelones'),('en_US',1080,'Cerro Largo'),('en_US',1081,'Colonia'),('en_US',1082,'Durazno'),('en_US',1083,'Flores'),('en_US',1084,'Florida'),('en_US',1085,'Lavalleja'),('en_US',1086,'Maldonado'),('en_US',1087,'Montevideo'),('en_US',1088,'Paysandu'),('en_US',1089,'Río Negro'),('en_US',1090,'Rivera'),('en_US',1091,'Rocha'),('en_US',1092,'Salto'),('en_US',1093,'San José'),('en_US',1094,'Soriano'),('en_US',1095,'Tacuarembó'),('en_US',1096,'Treinta y Tres'),('en_US',1097,'Dependencias Federales'),('en_US',1098,'Distrito Capital'),('en_US',1099,'Amazonas'),('en_US',1100,'Anzoátegui'),('en_US',1101,'Apure'),('en_US',1102,'Aragua'),('en_US',1103,'Barinas'),('en_US',1104,'Bolívar'),('en_US',1105,'Carabobo'),('en_US',1106,'Cojedes'),('en_US',1107,'Delta Amacuro'),('en_US',1108,'Falcón'),('en_US',1109,'Guárico'),('en_US',1110,'Lara'),('en_US',1111,'Mérida'),('en_US',1112,'Miranda'),('en_US',1113,'Monagas'),('en_US',1114,'Nueva Esparta'),('en_US',1115,'Portuguesa'),('en_US',1116,'Sucre'),('en_US',1117,'Táchira'),('en_US',1118,'Trujillo'),('en_US',1119,'Vargas'),('en_US',1120,'Yaracuy'),('en_US',1121,'Zulia');
/*!40000 ALTER TABLE `m2_directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_directory_currency_rate`
--

DROP TABLE IF EXISTS `m2_directory_currency_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `M2_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Directory Currency Rate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_directory_currency_rate`
--

LOCK TABLES `m2_directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `m2_directory_currency_rate` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_directory_currency_rate` VALUES ('EUR','EUR',1.000000000000),('EUR','USD',1.415000000000),('USD','EUR',0.706700000000),('USD','USD',1.000000000000);
/*!40000 ALTER TABLE `m2_directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_link`
--

DROP TABLE IF EXISTS `m2_downloadable_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_link` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `M2_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`),
  CONSTRAINT `M2_DL_LNK_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Link Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_link`
--

LOCK TABLES `m2_downloadable_link` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_link_price`
--

DROP TABLE IF EXISTS `m2_downloadable_link_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_link_price` (
  `price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `M2_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `M2_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_DL_LNK_PRICE_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_DOWNLOADABLE_LINK_PRICE_LINK_ID_M2_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `m2_downloadable_link` (`link_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Link Price Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_link_price`
--

LOCK TABLES `m2_downloadable_link_price` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_link_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_link_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_link_purchased`
--

DROP TABLE IF EXISTS `m2_downloadable_link_purchased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_link_purchased` (
  `purchased_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `M2_DL_LNK_PURCHASED_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Link Purchased Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_link_purchased`
--

LOCK TABLES `m2_downloadable_link_purchased` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_link_purchased` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_link_purchased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `m2_downloadable_link_purchased_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_link_purchased_item` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `M2_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`),
  CONSTRAINT `FK_6751945ED4FBC767D9AA88AD86F22772` FOREIGN KEY (`order_item_id`) REFERENCES `m2_sales_order_item` (`item_id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B70E0F0527193FA0F907E17FE72154AB` FOREIGN KEY (`purchased_id`) REFERENCES `m2_downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Link Purchased Item Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_link_purchased_item`
--

LOCK TABLES `m2_downloadable_link_purchased_item` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_link_purchased_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_link_purchased_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_link_title`
--

DROP TABLE IF EXISTS `m2_downloadable_link_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_link_title` (
  `title_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `M2_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `M2_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_DOWNLOADABLE_LINK_TITLE_LINK_ID_M2_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `m2_downloadable_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_DOWNLOADABLE_LINK_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Link Title Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_link_title`
--

LOCK TABLES `m2_downloadable_link_title` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_link_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_link_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_sample`
--

DROP TABLE IF EXISTS `m2_downloadable_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_sample` (
  `sample_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `M2_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_DL_SAMPLE_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Sample Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_sample`
--

LOCK TABLES `m2_downloadable_sample` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_downloadable_sample_title`
--

DROP TABLE IF EXISTS `m2_downloadable_sample_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_downloadable_sample_title` (
  `title_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `M2_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `M2_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_DL_SAMPLE_TTL_SAMPLE_ID_M2_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `m2_downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Downloadable Sample Title Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_downloadable_sample_title`
--

LOCK TABLES `m2_downloadable_sample_title` WRITE;
/*!40000 ALTER TABLE `m2_downloadable_sample_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_downloadable_sample_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute`
--

DROP TABLE IF EXISTS `m2_eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute` (
  `attribute_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_code` varchar(255) NOT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `M2_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `M2_EAV_ATTRIBUTE_FRONTEND_INPUT_ENTITY_TYPE_ID_IS_USER_DEFINED` (`frontend_input`,`entity_type_id`,`is_user_defined`),
  CONSTRAINT `M2_EAV_ATTR_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute`
--

LOCK TABLES `m2_eav_attribute` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_attribute` VALUES (1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),(21,1,'disable_auto_group_change','Magento\\Customer\\Model\\Attribute','Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,NULL,0,NULL),(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),(36,2,'vat_id','Magento\\Customer\\Model\\Attribute',NULL,'static',NULL,NULL,'text','VAT Number',NULL,NULL,0,0,NULL,0,NULL),(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),(73,4,'name','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute',NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),(74,4,'sku','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU','validate-length maximum-length-64',NULL,1,0,NULL,1,NULL),(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,NULL,0,NULL),(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,NULL,0,NULL),(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),(98,4,'minimal_price',NULL,NULL,'decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(117,4,'custom_layout_update_file',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\LayoutUpdate','varchar',NULL,NULL,'select','Custom Layout Update',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\LayoutUpdate',0,0,NULL,0,NULL),(118,3,'custom_layout_update_file',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\LayoutUpdate','varchar',NULL,NULL,'select','Custom Layout Update',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\LayoutUpdate',0,0,NULL,0,NULL),(119,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(120,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(121,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key','validate-trailing-hyphen',NULL,0,0,NULL,0,NULL),(122,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(123,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Minimum Advertised Price',NULL,NULL,0,0,NULL,0,NULL),(124,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),(125,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),(126,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),(127,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),(128,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL),(129,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),(130,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),(131,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),(132,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),(133,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),(134,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(135,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),(136,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL);
/*!40000 ALTER TABLE `m2_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_group`
--

DROP TABLE IF EXISTS `m2_eav_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_group` (
  `attribute_group_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group ID',
  `attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint unsigned DEFAULT '0' COMMENT 'Default ID',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `M2_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_CODE` (`attribute_set_id`,`attribute_group_code`),
  UNIQUE KEY `M2_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `M2_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  CONSTRAINT `M2_EAV_ATTR_GROUP_ATTR_SET_ID_M2_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `m2_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_group`
--

LOCK TABLES `m2_eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_group` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_attribute_group` VALUES (1,1,'General',1,1,'general',NULL),(2,2,'General',1,1,'general',NULL),(3,3,'General',10,1,'general',NULL),(4,3,'General Information',2,0,'general-information',NULL),(5,3,'Display Settings',20,0,'display-settings',NULL),(6,3,'Custom Design',30,0,'custom-design',NULL),(7,4,'Product Details',10,1,'product-details','basic'),(8,4,'Advanced Pricing',40,0,'advanced-pricing','advanced'),(9,4,'Search Engine Optimization',30,0,'search-engine-optimization','basic'),(10,4,'Images',20,0,'image-management','basic'),(11,4,'Design',50,0,'design','advanced'),(12,4,'Autosettings',60,0,'autosettings','advanced'),(13,4,'Content',15,0,'content','basic'),(14,4,'Schedule Design Update',55,0,'schedule-design-update','advanced'),(15,5,'General',1,1,'general',NULL),(16,6,'General',1,1,'general',NULL),(17,7,'General',1,1,'general',NULL),(18,8,'General',1,1,'general',NULL),(19,4,'Bundle Items',16,0,'bundle-items',NULL),(20,4,'Gift Options',61,0,'gift-options',NULL);
/*!40000 ALTER TABLE `m2_eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_label`
--

DROP TABLE IF EXISTS `m2_eav_attribute_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_label` (
  `attribute_label_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `M2_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `M2_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`),
  CONSTRAINT `M2_EAV_ATTR_LBL_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ATTRIBUTE_LABEL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute Label';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_label`
--

LOCK TABLES `m2_eav_attribute_label` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_attribute_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_option`
--

DROP TABLE IF EXISTS `m2_eav_attribute_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `sort_order` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `M2_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_EAV_ATTR_OPT_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute Option';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_option`
--

LOCK TABLES `m2_eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_option` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_attribute_option` VALUES (1,20,0),(2,20,1),(3,20,3);
/*!40000 ALTER TABLE `m2_eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_option_swatch`
--

DROP TABLE IF EXISTS `m2_eav_attribute_option_swatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_option_swatch` (
  `swatch_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `M2_EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `M2_EAV_ATTR_OPT_SWATCH_OPT_ID_M2_EAV_ATTR_OPT_OPT_ID` (`option_id`),
  KEY `M2_EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  CONSTRAINT `M2_EAV_ATTR_OPT_SWATCH_OPT_ID_M2_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_eav_attribute_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Magento Swatches table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_option_swatch`
--

LOCK TABLES `m2_eav_attribute_option_swatch` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_option_swatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_attribute_option_swatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_option_value`
--

DROP TABLE IF EXISTS `m2_eav_attribute_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_option_value` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `M2_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `M2_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_ATTR_OPT_VAL_OPT_ID_M2_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_eav_attribute_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute Option Value';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_option_value`
--

LOCK TABLES `m2_eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_option_value` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_attribute_option_value` VALUES (1,1,0,'Male'),(2,2,0,'Female'),(3,3,0,'Not Specified');
/*!40000 ALTER TABLE `m2_eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_attribute_set`
--

DROP TABLE IF EXISTS `m2_eav_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_attribute_set` (
  `attribute_set_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `M2_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `M2_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`),
  CONSTRAINT `M2_EAV_ATTR_SET_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Attribute Set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_attribute_set`
--

LOCK TABLES `m2_eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `m2_eav_attribute_set` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_attribute_set` VALUES (1,1,'Default',2),(2,2,'Default',2),(3,3,'Default',1),(4,4,'Default',1),(5,5,'Default',1),(6,6,'Default',1),(7,7,'Default',1),(8,8,'Default',1);
/*!40000 ALTER TABLE `m2_eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity`
--

DROP TABLE IF EXISTS `m2_eav_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `M2_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `M2_EAV_ENTITY_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_ENTITY_ENTITY_TYPE_ID_M2_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity`
--

LOCK TABLES `m2_eav_entity` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_attribute`
--

DROP TABLE IF EXISTS `m2_eav_entity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_attribute` (
  `entity_attribute_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `attribute_group_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `M2_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `M2_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `M2_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `M2_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_EAV_ENTT_ATTR_ATTR_GROUP_ID_M2_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `m2_eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_ATTR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_attribute`
--

LOCK TABLES `m2_eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_attribute` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_entity_attribute` VALUES (1,1,1,1,1,10),(2,1,1,1,2,20),(3,1,1,1,3,20),(4,1,1,1,4,30),(5,1,1,1,5,40),(6,1,1,1,6,50),(7,1,1,1,7,60),(8,1,1,1,8,70),(9,1,1,1,9,80),(10,1,1,1,10,25),(11,1,1,1,11,90),(12,1,1,1,12,81),(13,1,1,1,13,115),(14,1,1,1,14,120),(15,1,1,1,15,82),(16,1,1,1,16,83),(17,1,1,1,17,100),(18,1,1,1,18,0),(19,1,1,1,19,0),(20,1,1,1,20,110),(21,1,1,1,21,28),(22,2,2,2,22,10),(23,2,2,2,23,20),(24,2,2,2,24,30),(25,2,2,2,25,40),(26,2,2,2,26,50),(27,2,2,2,27,60),(28,2,2,2,28,70),(29,2,2,2,29,100),(30,2,2,2,30,80),(31,2,2,2,31,90),(32,2,2,2,32,90),(33,2,2,2,33,110),(34,2,2,2,34,120),(35,2,2,2,35,130),(36,2,2,2,36,140),(37,2,2,2,37,132),(38,2,2,2,38,133),(39,2,2,2,39,134),(40,2,2,2,40,135),(41,1,1,1,41,87),(42,1,1,1,42,100),(43,1,1,1,43,110),(44,1,1,1,44,120),(45,3,3,4,45,1),(46,3,3,4,46,2),(47,3,3,4,47,4),(48,3,3,4,48,5),(49,3,3,4,49,6),(50,3,3,4,50,7),(51,3,3,4,51,8),(52,3,3,5,52,10),(53,3,3,5,53,20),(54,3,3,5,54,30),(55,3,3,4,55,12),(56,3,3,4,56,13),(57,3,3,4,57,14),(58,3,3,4,58,15),(59,3,3,4,59,16),(60,3,3,6,60,10),(61,3,3,6,61,30),(62,3,3,6,62,40),(63,3,3,6,63,50),(64,3,3,6,64,60),(65,3,3,4,65,24),(66,3,3,4,66,25),(67,3,3,5,67,40),(68,3,3,5,68,50),(69,3,3,4,69,10),(70,3,3,6,70,5),(71,3,3,6,71,6),(72,3,3,5,72,51),(73,4,4,7,73,10),(74,4,4,7,74,20),(75,4,4,13,75,110),(76,4,4,13,76,100),(77,4,4,7,77,30),(78,4,4,8,78,3),(79,4,4,8,79,4),(80,4,4,8,80,5),(81,4,4,8,81,6),(82,4,4,7,82,70),(83,4,4,9,84,20),(84,4,4,9,85,30),(85,4,4,9,86,40),(86,4,4,10,87,1),(87,4,4,10,88,2),(88,4,4,10,89,3),(89,4,4,10,90,4),(90,4,4,7,91,6),(91,4,4,8,92,7),(92,4,4,7,94,90),(93,4,4,7,95,100),(94,4,4,10,96,5),(95,4,4,7,97,5),(96,4,4,8,98,8),(97,4,4,7,99,80),(98,4,4,14,100,40),(99,4,4,14,101,20),(100,4,4,14,102,30),(101,4,4,11,103,10),(102,4,4,11,104,5),(103,4,4,7,105,80),(104,4,4,11,106,6),(105,4,4,7,107,14),(106,4,4,7,108,15),(107,4,4,7,109,16),(108,4,4,7,110,17),(109,4,4,7,111,18),(110,4,4,7,112,19),(111,4,4,7,113,20),(112,4,4,7,114,110),(113,4,4,7,115,60),(114,4,4,14,116,50),(115,4,4,11,117,51),(116,3,3,6,118,51),(117,3,3,4,119,3),(118,3,3,4,120,17),(119,4,4,9,121,10),(120,4,4,7,122,11),(121,4,4,8,123,9),(122,4,4,8,124,10),(123,4,4,7,125,111),(124,4,4,7,126,112),(125,4,4,7,127,113),(126,4,4,7,128,114),(127,4,4,7,129,31),(128,4,4,7,130,21),(129,4,4,7,131,71),(130,4,4,8,132,11),(131,4,4,19,133,1),(132,4,4,20,134,10),(133,4,4,10,135,3),(134,4,4,7,136,40);
/*!40000 ALTER TABLE `m2_eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_datetime`
--

DROP TABLE IF EXISTS `m2_eav_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_datetime` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `M2_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `M2_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `M2_EAV_ENTITY_DATETIME_ENTITY_ID_M2_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_DATETIME_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_DTIME_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Value Prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_datetime`
--

LOCK TABLES `m2_eav_entity_datetime` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_decimal`
--

DROP TABLE IF EXISTS `m2_eav_entity_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_decimal` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `M2_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `M2_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `M2_EAV_ENTITY_DECIMAL_ENTITY_ID_M2_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_DECIMAL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_DEC_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Value Prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_decimal`
--

LOCK TABLES `m2_eav_entity_decimal` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_int`
--

DROP TABLE IF EXISTS `m2_eav_entity_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_int` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `M2_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `M2_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `M2_EAV_ENTITY_INT_ENTITY_ID_M2_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_INT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_INT_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Value Prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_int`
--

LOCK TABLES `m2_eav_entity_int` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_store`
--

DROP TABLE IF EXISTS `m2_eav_entity_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_store` (
  `entity_store_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented ID',
  PRIMARY KEY (`entity_store_id`),
  KEY `M2_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `M2_EAV_ENTITY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_ENTITY_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_STORE_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_store`
--

LOCK TABLES `m2_eav_entity_store` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_store` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_entity_store` VALUES (1,5,1,'ORD$',NULL);
/*!40000 ALTER TABLE `m2_eav_entity_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_text`
--

DROP TABLE IF EXISTS `m2_eav_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_text` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `M2_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `M2_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_ENTITY_TEXT_ENTITY_ID_M2_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_TEXT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_TEXT_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Value Prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_text`
--

LOCK TABLES `m2_eav_entity_text` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_type`
--

DROP TABLE IF EXISTS `m2_eav_entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_type` (
  `entity_type_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type ID',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity ID Field',
  `is_data_sharing` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set ID',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `M2_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_type`
--

LOCK TABLES `m2_eav_entity_type` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_type` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_entity_type` VALUES (1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order\\Invoice',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);
/*!40000 ALTER TABLE `m2_eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_entity_varchar`
--

DROP TABLE IF EXISTS `m2_eav_entity_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_entity_varchar` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `M2_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `M2_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `M2_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `M2_EAV_ENTITY_VARCHAR_ENTITY_ID_M2_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTITY_VARCHAR_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_ENTT_VCHR_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Entity Value Prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_entity_varchar`
--

LOCK TABLES `m2_eav_entity_varchar` WRITE;
/*!40000 ALTER TABLE `m2_eav_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_form_element`
--

DROP TABLE IF EXISTS `m2_eav_form_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_form_element` (
  `element_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element ID',
  `type_id` smallint unsigned NOT NULL COMMENT 'Type ID',
  `fieldset_id` smallint unsigned DEFAULT NULL COMMENT 'Fieldset ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `M2_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `M2_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `M2_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_EAV_FORM_ELEMENT_ATTRIBUTE_ID_M2_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_FORM_ELEMENT_FIELDSET_ID_M2_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `m2_eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_EAV_FORM_ELEMENT_TYPE_ID_M2_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `m2_eav_form_type` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Form Element';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_form_element`
--

LOCK TABLES `m2_eav_form_element` WRITE;
/*!40000 ALTER TABLE `m2_eav_form_element` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_form_element` VALUES (1,1,NULL,23,0),(2,1,NULL,25,1),(3,1,NULL,27,2),(4,1,NULL,9,3),(5,1,NULL,28,4),(6,1,NULL,29,5),(7,1,NULL,31,6),(8,1,NULL,33,7),(9,1,NULL,30,8),(10,1,NULL,34,9),(11,1,NULL,35,10),(12,2,NULL,23,0),(13,2,NULL,25,1),(14,2,NULL,27,2),(15,2,NULL,9,3),(16,2,NULL,28,4),(17,2,NULL,29,5),(18,2,NULL,31,6),(19,2,NULL,33,7),(20,2,NULL,30,8),(21,2,NULL,34,9),(22,2,NULL,35,10),(23,3,NULL,23,0),(24,3,NULL,25,1),(25,3,NULL,27,2),(26,3,NULL,28,3),(27,3,NULL,29,4),(28,3,NULL,31,5),(29,3,NULL,33,6),(30,3,NULL,30,7),(31,3,NULL,34,8),(32,3,NULL,35,9),(33,4,NULL,23,0),(34,4,NULL,25,1),(35,4,NULL,27,2),(36,4,NULL,28,3),(37,4,NULL,29,4),(38,4,NULL,31,5),(39,4,NULL,33,6),(40,4,NULL,30,7),(41,4,NULL,34,8),(42,4,NULL,35,9);
/*!40000 ALTER TABLE `m2_eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_form_fieldset`
--

DROP TABLE IF EXISTS `m2_eav_form_fieldset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_form_fieldset` (
  `fieldset_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset ID',
  `type_id` smallint unsigned NOT NULL COMMENT 'Type ID',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `M2_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  CONSTRAINT `M2_EAV_FORM_FIELDSET_TYPE_ID_M2_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `m2_eav_form_type` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Form Fieldset';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_form_fieldset`
--

LOCK TABLES `m2_eav_form_fieldset` WRITE;
/*!40000 ALTER TABLE `m2_eav_form_fieldset` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_form_fieldset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `m2_eav_form_fieldset_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_form_fieldset_label` (
  `fieldset_id` smallint unsigned NOT NULL COMMENT 'Fieldset ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `M2_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_FORM_FIELDSET_LABEL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_FORM_FSET_LBL_FSET_ID_M2_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `m2_eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Form Fieldset Label';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_form_fieldset_label`
--

LOCK TABLES `m2_eav_form_fieldset_label` WRITE;
/*!40000 ALTER TABLE `m2_eav_form_fieldset_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_eav_form_fieldset_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_form_type`
--

DROP TABLE IF EXISTS `m2_eav_form_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_form_type` (
  `type_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `M2_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `M2_EAV_FORM_TYPE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_EAV_FORM_TYPE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='Eav Form Type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_form_type`
--

LOCK TABLES `m2_eav_form_type` WRITE;
/*!40000 ALTER TABLE `m2_eav_form_type` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_form_type` VALUES (1,'checkout_onepage_register','checkout_onepage_register',1,'',0),(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);
/*!40000 ALTER TABLE `m2_eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_eav_form_type_entity`
--

DROP TABLE IF EXISTS `m2_eav_form_type_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_eav_form_type_entity` (
  `type_id` smallint unsigned NOT NULL COMMENT 'Type ID',
  `entity_type_id` smallint unsigned NOT NULL COMMENT 'Entity Type ID',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `M2_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `M2_EAV_FORM_TYPE_ENTITY_TYPE_ID_M2_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `m2_eav_form_type` (`type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_M2_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `m2_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Eav Form Type Entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_eav_form_type_entity`
--

LOCK TABLES `m2_eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `m2_eav_form_type_entity` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_eav_form_type_entity` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `m2_eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_email_template`
--

DROP TABLE IF EXISTS `m2_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_email_template` (
  `template_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `M2_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `M2_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `M2_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Email Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_email_template`
--

LOCK TABLES `m2_email_template` WRITE;
/*!40000 ALTER TABLE `m2_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_flag`
--

DROP TABLE IF EXISTS `m2_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_flag` (
  `flag_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` mediumtext COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `M2_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_flag`
--

LOCK TABLES `m2_flag` WRITE;
/*!40000 ALTER TABLE `m2_flag` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_flag` VALUES (1,'analytics_link_attempts_reverse_counter',0,'24','2023-12-20 18:21:06'),(2,'system_config_snapshot',0,'{\"default\":{\"web\":{\"unsecure\":{\"base_url\":\"https:\\/\\/magento.shopping.com\\/\",\"base_link_url\":\"https:\\/\\/magento.shopping.com\\/\",\"base_static_url\":\"https:\\/\\/magento.shopping.com\\/static\\/\",\"base_media_url\":\"https:\\/\\/magento.shopping.com\\/media\\/\"},\"secure\":{\"base_url\":\"https:\\/\\/magento.shopping.com\\/\",\"base_link_url\":\"https:\\/\\/magento.shopping.com\\/\",\"base_static_url\":\"https:\\/\\/magento.shopping.com\\/static\\/\",\"base_media_url\":\"https:\\/\\/magento.shopping.com\\/media\\/\"}}}}','2023-12-21 09:55:33'),(3,'config_hash',0,'{\"system\":\"02405500bf87e10ffd229840a170a6049d51dd8f\"}','2023-12-21 09:55:33');
/*!40000 ALTER TABLE `m2_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_gift_message`
--

DROP TABLE IF EXISTS `m2_gift_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_gift_message` (
  `gift_message_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage ID',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Gift Message';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_gift_message`
--

LOCK TABLES `m2_gift_message` WRITE;
/*!40000 ALTER TABLE `m2_gift_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_gift_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_googleoptimizer_code`
--

DROP TABLE IF EXISTS `m2_googleoptimizer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_googleoptimizer_code` (
  `code_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code ID',
  `entity_id` int unsigned NOT NULL COMMENT 'Optimized entity ID product ID or catalog ID',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `M2_GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`),
  CONSTRAINT `M2_GOOGLEOPTIMIZER_CODE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Google Experiment code';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_googleoptimizer_code`
--

LOCK TABLES `m2_googleoptimizer_code` WRITE;
/*!40000 ALTER TABLE `m2_googleoptimizer_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_googleoptimizer_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_import_history`
--

DROP TABLE IF EXISTS `m2_import_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_import_history` (
  `history_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record ID',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Import history table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_import_history`
--

LOCK TABLES `m2_import_history` WRITE;
/*!40000 ALTER TABLE `m2_import_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_import_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_importexport_importdata`
--

DROP TABLE IF EXISTS `m2_importexport_importdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_importexport_importdata` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  `is_processed` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Is Row Processed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timestamp of last update',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Import Data Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_importexport_importdata`
--

LOCK TABLES `m2_importexport_importdata` WRITE;
/*!40000 ALTER TABLE `m2_importexport_importdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_importexport_importdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_indexer_state`
--

DROP TABLE IF EXISTS `m2_indexer_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_indexer_state` (
  `state_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State ID',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer ID',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `M2_INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='Indexer State';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_indexer_state`
--

LOCK TABLES `m2_indexer_state` WRITE;
/*!40000 ALTER TABLE `m2_indexer_state` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_indexer_state` VALUES (1,'design_config_grid','valid','2023-12-20 19:21:00','76ab157e891b3e2af8dfe183656b1541'),(2,'customer_grid','valid','2023-12-20 18:21:08','3bd1340826e32281e20ee0e52fc1588d'),(3,'catalog_category_product','invalid','2023-12-20 18:21:04','cd2673782aa026ec6cf723230d2eef97'),(4,'catalog_product_category','invalid','2023-12-20 18:21:04','f27bad51f490ed2fb2b31e7029d5656e'),(5,'catalogrule_rule','invalid','2023-12-20 18:21:04','b39a9e9f3723883cbf7cdb1eb42bdfbc'),(6,'catalog_product_attribute','invalid','2023-12-20 18:21:04','96eadb8a5a098376aa6ccc2ccd17ac12'),(7,'cataloginventory_stock','invalid','2023-12-20 18:21:04','f2ff3bc3942065658823f08227f1c880'),(8,'inventory','invalid','2023-12-20 18:21:04','f97e470a6243c6794735e270e2ce2c0a'),(9,'catalogrule_product','invalid','2023-12-20 18:21:04','4aeb8cb34067f2bababa9e518b5a9ace'),(10,'catalog_product_price','invalid','2023-12-20 18:21:04','cba6dbca02fd5c7a2219cb5ce0222623'),(11,'catalogsearch_fulltext','invalid','2023-12-20 18:21:04','b8ab04c47ba8a02151e49ffe7c751443');
/*!40000 ALTER TABLE `m2_indexer_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_integration`
--

DROP TABLE IF EXISTS `m2_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_integration` (
  `integration_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `M2_INTEGRATION_NAME` (`name`),
  UNIQUE KEY `M2_INTEGRATION_CONSUMER_ID` (`consumer_id`),
  CONSTRAINT `M2_INTEGRATION_CONSUMER_ID_M2_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `m2_oauth_consumer` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='integration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_integration`
--

LOCK TABLES `m2_integration` WRITE;
/*!40000 ALTER TABLE `m2_integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_geoname`
--

DROP TABLE IF EXISTS `m2_inventory_geoname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_geoname` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'entity id',
  `country_code` varchar(64) NOT NULL,
  `postcode` varchar(64) NOT NULL,
  `city` varchar(180) NOT NULL,
  `region` varchar(100) NOT NULL,
  `province` varchar(64) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_geoname`
--

LOCK TABLES `m2_inventory_geoname` WRITE;
/*!40000 ALTER TABLE `m2_inventory_geoname` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_geoname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_low_stock_notification_configuration`
--

DROP TABLE IF EXISTS `m2_inventory_low_stock_notification_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_low_stock_notification_configuration` (
  `source_code` varchar(255) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `notify_stock_qty` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`source_code`,`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_low_stock_notification_configuration`
--

LOCK TABLES `m2_inventory_low_stock_notification_configuration` WRITE;
/*!40000 ALTER TABLE `m2_inventory_low_stock_notification_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_low_stock_notification_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_order_notification`
--

DROP TABLE IF EXISTS `m2_inventory_order_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_order_notification` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Order ID',
  `notification_sent` smallint NOT NULL COMMENT 'Has Notification Been Sent For Order',
  `send_notification` smallint NOT NULL COMMENT 'Should Notification Be Send For Order',
  PRIMARY KEY (`order_id`),
  CONSTRAINT `M2_INV_ORDER_NTFC_ORDER_ID_M2_SALES_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_order_notification`
--

LOCK TABLES `m2_inventory_order_notification` WRITE;
/*!40000 ALTER TABLE `m2_inventory_order_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_order_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_pickup_location_order`
--

DROP TABLE IF EXISTS `m2_inventory_pickup_location_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_pickup_location_order` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Order ID',
  `pickup_location_code` varchar(255) NOT NULL COMMENT 'Pickup Location Code',
  PRIMARY KEY (`order_id`),
  CONSTRAINT `M2_INV_PICKUP_LOCATION_ORDER_ORDER_ID_M2_SALES_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_pickup_location_order`
--

LOCK TABLES `m2_inventory_pickup_location_order` WRITE;
/*!40000 ALTER TABLE `m2_inventory_pickup_location_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_pickup_location_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_pickup_location_quote_address`
--

DROP TABLE IF EXISTS `m2_inventory_pickup_location_quote_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_pickup_location_quote_address` (
  `address_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Quote Address ID',
  `pickup_location_code` varchar(255) NOT NULL COMMENT 'Pickup Location Code',
  PRIMARY KEY (`address_id`),
  CONSTRAINT `M2_INV_PICKUP_LOCATION_QUOTE_ADDR_ADDR_ID_M2_QUOTE_ADDR_ADDR_ID` FOREIGN KEY (`address_id`) REFERENCES `m2_quote_address` (`address_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_pickup_location_quote_address`
--

LOCK TABLES `m2_inventory_pickup_location_quote_address` WRITE;
/*!40000 ALTER TABLE `m2_inventory_pickup_location_quote_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_pickup_location_quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_reservation`
--

DROP TABLE IF EXISTS `m2_inventory_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_reservation` (
  `reservation_id` int unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int unsigned NOT NULL,
  `sku` varchar(64) NOT NULL,
  `quantity` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `metadata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `M2_INVENTORY_RESERVATION_STOCK_ID_SKU_QUANTITY` (`stock_id`,`sku`,`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_reservation`
--

LOCK TABLES `m2_inventory_reservation` WRITE;
/*!40000 ALTER TABLE `m2_inventory_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_shipment_source`
--

DROP TABLE IF EXISTS `m2_inventory_shipment_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_shipment_source` (
  `shipment_id` int unsigned NOT NULL,
  `source_code` varchar(255) NOT NULL,
  PRIMARY KEY (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_shipment_source`
--

LOCK TABLES `m2_inventory_shipment_source` WRITE;
/*!40000 ALTER TABLE `m2_inventory_shipment_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_shipment_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_source`
--

DROP TABLE IF EXISTS `m2_inventory_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_source` (
  `source_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` smallint unsigned NOT NULL DEFAULT '1',
  `description` text,
  `latitude` decimal(8,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `country_id` varchar(2) NOT NULL,
  `region_id` int unsigned DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `use_default_carrier_config` smallint unsigned NOT NULL DEFAULT '1',
  `is_pickup_location_active` tinyint(1) NOT NULL DEFAULT '0',
  `frontend_name` varchar(255) DEFAULT '',
  `frontend_description` text,
  PRIMARY KEY (`source_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_source`
--

LOCK TABLES `m2_inventory_source` WRITE;
/*!40000 ALTER TABLE `m2_inventory_source` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_inventory_source` VALUES ('default','Default Source',1,'Default Source',0.000000,0.000000,'US',NULL,NULL,NULL,NULL,'00000',NULL,NULL,NULL,NULL,1,0,'',NULL);
/*!40000 ALTER TABLE `m2_inventory_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_source_carrier_link`
--

DROP TABLE IF EXISTS `m2_inventory_source_carrier_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_source_carrier_link` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `source_code` varchar(255) NOT NULL,
  `carrier_code` varchar(255) NOT NULL,
  `position` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `M2_INV_SOURCE_CARRIER_LNK_SOURCE_CODE_M2_INV_SOURCE_SOURCE_CODE` (`source_code`),
  CONSTRAINT `M2_INV_SOURCE_CARRIER_LNK_SOURCE_CODE_M2_INV_SOURCE_SOURCE_CODE` FOREIGN KEY (`source_code`) REFERENCES `m2_inventory_source` (`source_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_source_carrier_link`
--

LOCK TABLES `m2_inventory_source_carrier_link` WRITE;
/*!40000 ALTER TABLE `m2_inventory_source_carrier_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_source_carrier_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_source_item`
--

DROP TABLE IF EXISTS `m2_inventory_source_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_source_item` (
  `source_item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `source_code` varchar(255) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `quantity` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `status` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`source_item_id`),
  UNIQUE KEY `M2_INVENTORY_SOURCE_ITEM_SOURCE_CODE_SKU` (`source_code`,`sku`),
  KEY `M2_INVENTORY_SOURCE_ITEM_SKU_SOURCE_CODE_QUANTITY` (`sku`,`source_code`,`quantity`),
  CONSTRAINT `M2_INV_SOURCE_ITEM_SOURCE_CODE_M2_INV_SOURCE_SOURCE_CODE` FOREIGN KEY (`source_code`) REFERENCES `m2_inventory_source` (`source_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_source_item`
--

LOCK TABLES `m2_inventory_source_item` WRITE;
/*!40000 ALTER TABLE `m2_inventory_source_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_inventory_source_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_source_stock_link`
--

DROP TABLE IF EXISTS `m2_inventory_source_stock_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_source_stock_link` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int unsigned NOT NULL,
  `source_code` varchar(255) NOT NULL,
  `priority` smallint unsigned NOT NULL,
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `M2_INVENTORY_SOURCE_STOCK_LINK_STOCK_ID_SOURCE_CODE` (`stock_id`,`source_code`),
  KEY `M2_INV_SOURCE_STOCK_LNK_SOURCE_CODE_M2_INV_SOURCE_SOURCE_CODE` (`source_code`),
  KEY `M2_INVENTORY_SOURCE_STOCK_LINK_STOCK_ID_PRIORITY` (`stock_id`,`priority`),
  CONSTRAINT `M2_INV_SOURCE_STOCK_LNK_SOURCE_CODE_M2_INV_SOURCE_SOURCE_CODE` FOREIGN KEY (`source_code`) REFERENCES `m2_inventory_source` (`source_code`) ON DELETE CASCADE,
  CONSTRAINT `M2_INV_SOURCE_STOCK_LNK_STOCK_ID_M2_INV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `m2_inventory_stock` (`stock_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_source_stock_link`
--

LOCK TABLES `m2_inventory_source_stock_link` WRITE;
/*!40000 ALTER TABLE `m2_inventory_source_stock_link` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_inventory_source_stock_link` VALUES (1,1,'default',1);
/*!40000 ALTER TABLE `m2_inventory_source_stock_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_inventory_stock`
--

DROP TABLE IF EXISTS `m2_inventory_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_stock` (
  `stock_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_stock`
--

LOCK TABLES `m2_inventory_stock` WRITE;
/*!40000 ALTER TABLE `m2_inventory_stock` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_inventory_stock` VALUES (1,'Default Stock');
/*!40000 ALTER TABLE `m2_inventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `m2_inventory_stock_1`
--

DROP TABLE IF EXISTS `m2_inventory_stock_1`;
/*!50001 DROP VIEW IF EXISTS `m2_inventory_stock_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `m2_inventory_stock_1` AS SELECT 
 1 AS `product_id`,
 1 AS `website_id`,
 1 AS `stock_id`,
 1 AS `quantity`,
 1 AS `is_salable`,
 1 AS `sku`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `m2_inventory_stock_sales_channel`
--

DROP TABLE IF EXISTS `m2_inventory_stock_sales_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_inventory_stock_sales_channel` (
  `type` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `stock_id` int unsigned NOT NULL,
  PRIMARY KEY (`type`,`code`),
  KEY `M2_INV_STOCK_SALES_CHANNEL_STOCK_ID_M2_INV_STOCK_STOCK_ID` (`stock_id`),
  CONSTRAINT `M2_INV_STOCK_SALES_CHANNEL_STOCK_ID_M2_INV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `m2_inventory_stock` (`stock_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_inventory_stock_sales_channel`
--

LOCK TABLES `m2_inventory_stock_sales_channel` WRITE;
/*!40000 ALTER TABLE `m2_inventory_stock_sales_channel` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_inventory_stock_sales_channel` VALUES ('website','base',1);
/*!40000 ALTER TABLE `m2_inventory_stock_sales_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_jwt_auth_revoked`
--

DROP TABLE IF EXISTS `m2_jwt_auth_revoked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_jwt_auth_revoked` (
  `user_type_id` int unsigned NOT NULL COMMENT 'User Type ID',
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `revoke_before` bigint unsigned NOT NULL COMMENT 'Not accepting tokens issued before this timestamp',
  PRIMARY KEY (`user_type_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Holds revoked JWT authentication data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_jwt_auth_revoked`
--

LOCK TABLES `m2_jwt_auth_revoked` WRITE;
/*!40000 ALTER TABLE `m2_jwt_auth_revoked` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_jwt_auth_revoked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_layout_link`
--

DROP TABLE IF EXISTS `m2_layout_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_layout_link` (
  `layout_link_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `theme_id` int unsigned NOT NULL COMMENT 'Theme ID',
  `layout_update_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update ID',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `M2_LAYOUT_LINK_THEME_ID_M2_THEME_THEME_ID` (`theme_id`),
  KEY `M2_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `M2_LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  CONSTRAINT `M2_LAYOUT_LINK_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_LAYOUT_LINK_THEME_ID_M2_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `m2_theme` (`theme_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_LYT_LNK_LYT_UPDATE_ID_M2_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `m2_layout_update` (`layout_update_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Layout Link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_layout_link`
--

LOCK TABLES `m2_layout_link` WRITE;
/*!40000 ALTER TABLE `m2_layout_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_layout_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_layout_update`
--

DROP TABLE IF EXISTS `m2_layout_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_layout_update` (
  `layout_update_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update ID',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `M2_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Layout Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_layout_update`
--

LOCK TABLES `m2_layout_update` WRITE;
/*!40000 ALTER TABLE `m2_layout_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_layout_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_login_as_customer`
--

DROP TABLE IF EXISTS `m2_login_as_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_login_as_customer` (
  `secret` varchar(64) NOT NULL COMMENT 'Login Secret',
  `customer_id` int NOT NULL COMMENT 'Customer ID',
  `admin_id` int NOT NULL COMMENT 'Admin ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  PRIMARY KEY (`secret`),
  KEY `M2_LOGIN_AS_CUSTOMER_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Magento Login as Customer Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_login_as_customer`
--

LOCK TABLES `m2_login_as_customer` WRITE;
/*!40000 ALTER TABLE `m2_login_as_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_login_as_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_login_as_customer_assistance_allowed`
--

DROP TABLE IF EXISTS `m2_login_as_customer_assistance_allowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_login_as_customer_assistance_allowed` (
  `customer_id` int unsigned NOT NULL COMMENT 'Customer ID',
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `M2_LOGIN_AS_CSTR_ASSISTANCE_ALLOWED_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Magento Login as Customer Assistance Allowed Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_login_as_customer_assistance_allowed`
--

LOCK TABLES `m2_login_as_customer_assistance_allowed` WRITE;
/*!40000 ALTER TABLE `m2_login_as_customer_assistance_allowed` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_login_as_customer_assistance_allowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_magento_acknowledged_bulk`
--

DROP TABLE IF EXISTS `m2_magento_acknowledged_bulk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_magento_acknowledged_bulk` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Internal ID',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID` (`bulk_uuid`),
  CONSTRAINT `M2_MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID_M2_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `m2_magento_bulk` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Bulk that was viewed by user from notification area';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_magento_acknowledged_bulk`
--

LOCK TABLES `m2_magento_acknowledged_bulk` WRITE;
/*!40000 ALTER TABLE `m2_magento_acknowledged_bulk` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_magento_acknowledged_bulk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_magento_bulk`
--

DROP TABLE IF EXISTS `m2_magento_bulk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_magento_bulk` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bulk Internal ID (must not be exposed)',
  `uuid` varbinary(39) DEFAULT NULL COMMENT 'Bulk UUID (can be exposed to reference bulk entity)',
  `user_id` int unsigned DEFAULT NULL COMMENT 'ID of the WebAPI user that performed an action',
  `user_type` int DEFAULT NULL COMMENT 'Which type of user',
  `description` varchar(255) DEFAULT NULL COMMENT 'Bulk Description',
  `operation_count` int unsigned NOT NULL COMMENT 'Total number of operations scheduled within this bulk',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bulk start time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_MAGENTO_BULK_UUID` (`uuid`),
  KEY `M2_MAGENTO_BULK_USER_ID` (`user_id`),
  KEY `M2_MAGENTO_BULK_START_TIME` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Bulk entity that represents set of related asynchronous operations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_magento_bulk`
--

LOCK TABLES `m2_magento_bulk` WRITE;
/*!40000 ALTER TABLE `m2_magento_bulk` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_magento_bulk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_magento_login_as_customer_log`
--

DROP TABLE IF EXISTS `m2_magento_login_as_customer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_magento_login_as_customer_log` (
  `log_id` int NOT NULL AUTO_INCREMENT COMMENT 'Log Id',
  `time` timestamp NULL DEFAULT NULL COMMENT 'Event Date',
  `user_id` int unsigned DEFAULT NULL COMMENT 'User Id',
  `user_name` varchar(40) DEFAULT NULL COMMENT 'User Name',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer Id',
  `customer_email` varchar(40) DEFAULT NULL COMMENT 'Customer email',
  PRIMARY KEY (`log_id`),
  KEY `M2_MAGENTO_LOGIN_AS_CUSTOMER_LOG_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Login as Customer Logging';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_magento_login_as_customer_log`
--

LOCK TABLES `m2_magento_login_as_customer_log` WRITE;
/*!40000 ALTER TABLE `m2_magento_login_as_customer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_magento_login_as_customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_magento_operation`
--

DROP TABLE IF EXISTS `m2_magento_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_magento_operation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Operation ID',
  `operation_key` int unsigned DEFAULT NULL COMMENT 'Operation Key',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Name of the related message queue topic',
  `serialized_data` blob COMMENT 'Data (serialized) required to perform an operation',
  `result_serialized_data` blob COMMENT 'Result data (serialized) after perform an operation',
  `status` smallint DEFAULT '0' COMMENT 'Operation status (OPEN | COMPLETE | RETRIABLY_FAILED | NOT_RETRIABLY_FAILED)',
  `error_code` smallint DEFAULT NULL COMMENT 'Code of the error that appeared during operation execution (used to aggregate related failed operations)',
  `result_message` varchar(255) DEFAULT NULL COMMENT 'Operation result message',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Datetime the operation started processing',
  PRIMARY KEY (`id`),
  KEY `M2_MAGENTO_OPERATION_BULK_UUID_ERROR_CODE` (`bulk_uuid`,`error_code`),
  KEY `M2_MAGENTO_OPERATION_STATUS_STARTED_AT` (`status`,`started_at`),
  CONSTRAINT `M2_MAGENTO_OPERATION_BULK_UUID_M2_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `m2_magento_bulk` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Operation entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_magento_operation`
--

LOCK TABLES `m2_magento_operation` WRITE;
/*!40000 ALTER TABLE `m2_magento_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_magento_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_media_content_asset`
--

DROP TABLE IF EXISTS `m2_media_content_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_media_content_asset` (
  `asset_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `entity_type` varchar(255) NOT NULL COMMENT 'Content type',
  `entity_id` varchar(255) NOT NULL COMMENT 'Content entity id',
  `field` varchar(255) NOT NULL COMMENT 'Content field',
  PRIMARY KEY (`entity_type`,`entity_id`,`field`,`asset_id`),
  KEY `M2_MEDIA_CONTENT_ASSET_ASSET_ID` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Relation between media content and media asset';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_media_content_asset`
--

LOCK TABLES `m2_media_content_asset` WRITE;
/*!40000 ALTER TABLE `m2_media_content_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_media_content_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_media_gallery_asset`
--

DROP TABLE IF EXISTS `m2_media_gallery_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_media_gallery_asset` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `path` text COMMENT 'Path',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `source` varchar(255) DEFAULT NULL COMMENT 'Source',
  `hash` varchar(255) DEFAULT NULL COMMENT 'File hash',
  `content_type` varchar(255) DEFAULT NULL COMMENT 'Content Type',
  `width` int unsigned NOT NULL DEFAULT '0' COMMENT 'Width',
  `height` int unsigned NOT NULL DEFAULT '0' COMMENT 'Height',
  `size` int unsigned NOT NULL COMMENT 'Asset file size in bytes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`id`),
  KEY `M2_MEDIA_GALLERY_ASSET_ID` (`id`),
  FULLTEXT KEY `M2_MEDIA_GALLERY_ASSET_TITLE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Media Gallery Asset';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_media_gallery_asset`
--

LOCK TABLES `m2_media_gallery_asset` WRITE;
/*!40000 ALTER TABLE `m2_media_gallery_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_media_gallery_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_media_gallery_asset_keyword`
--

DROP TABLE IF EXISTS `m2_media_gallery_asset_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_media_gallery_asset_keyword` (
  `keyword_id` int unsigned NOT NULL COMMENT 'Keyword Id',
  `asset_id` int unsigned NOT NULL COMMENT 'Asset ID',
  PRIMARY KEY (`keyword_id`,`asset_id`),
  KEY `M2_MEDIA_GALLERY_ASSET_KEYWORD_ASSET_ID` (`asset_id`),
  KEY `M2_MEDIA_GALLERY_ASSET_KEYWORD_KEYWORD_ID` (`keyword_id`),
  CONSTRAINT `M2_MDA_GLR_ASSET_KEYWORD_ASSET_ID_M2_MDA_GLR_ASSET_ID` FOREIGN KEY (`asset_id`) REFERENCES `m2_media_gallery_asset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `M2_MDA_GLR_ASSET_KEYWORD_KEYWORD_ID_M2_MDA_GLR_KEYWORD_ID` FOREIGN KEY (`keyword_id`) REFERENCES `m2_media_gallery_keyword` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Media Gallery Asset Keyword';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_media_gallery_asset_keyword`
--

LOCK TABLES `m2_media_gallery_asset_keyword` WRITE;
/*!40000 ALTER TABLE `m2_media_gallery_asset_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_media_gallery_asset_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_media_gallery_keyword`
--

DROP TABLE IF EXISTS `m2_media_gallery_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_media_gallery_keyword` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Keyword ID',
  `keyword` varchar(255) NOT NULL COMMENT 'Keyword',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_MEDIA_GALLERY_KEYWORD_KEYWORD` (`keyword`),
  KEY `M2_MEDIA_GALLERY_KEYWORD_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Media Gallery Keyword';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_media_gallery_keyword`
--

LOCK TABLES `m2_media_gallery_keyword` WRITE;
/*!40000 ALTER TABLE `m2_media_gallery_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_media_gallery_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_mview_state`
--

DROP TABLE IF EXISTS `m2_mview_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_mview_state` (
  `state_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State ID',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View ID',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int unsigned DEFAULT NULL COMMENT 'View Version ID',
  PRIMARY KEY (`state_id`),
  KEY `M2_MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `M2_MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='View State';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_mview_state`
--

LOCK TABLES `m2_mview_state` WRITE;
/*!40000 ALTER TABLE `m2_mview_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_mview_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_problem`
--

DROP TABLE IF EXISTS `m2_newsletter_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_problem` (
  `problem_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem ID',
  `subscriber_id` int unsigned DEFAULT NULL COMMENT 'Subscriber ID',
  `queue_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `problem_error_code` int unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `M2_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `M2_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`),
  CONSTRAINT `M2_NEWSLETTER_PROBLEM_QUEUE_ID_M2_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `m2_newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_NLTTR_PROBLEM_SUBSCRIBER_ID_M2_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `m2_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Problems';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_problem`
--

LOCK TABLES `m2_newsletter_problem` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_queue`
--

DROP TABLE IF EXISTS `m2_newsletter_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_queue` (
  `queue_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue ID',
  `template_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `M2_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`),
  CONSTRAINT `M2_NLTTR_QUEUE_TEMPLATE_ID_M2_NLTTR_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `m2_newsletter_template` (`template_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Queue';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_queue`
--

LOCK TABLES `m2_newsletter_queue` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_queue_link`
--

DROP TABLE IF EXISTS `m2_newsletter_queue_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_queue_link` (
  `queue_link_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link ID',
  `queue_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `subscriber_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber ID',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `M2_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `M2_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`),
  CONSTRAINT `FK_95799075A87BA7BEEA2BDDEB261C2460` FOREIGN KEY (`subscriber_id`) REFERENCES `m2_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_NEWSLETTER_QUEUE_LINK_QUEUE_ID_M2_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `m2_newsletter_queue` (`queue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Queue Link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_queue_link`
--

LOCK TABLES `m2_newsletter_queue_link` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_queue_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_queue_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `m2_newsletter_queue_store_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_queue_store_link` (
  `queue_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `M2_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`),
  CONSTRAINT `M2_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_M2_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `m2_newsletter_queue` (`queue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Queue Store Link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_queue_store_link`
--

LOCK TABLES `m2_newsletter_queue_store_link` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_queue_store_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_queue_store_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_subscriber`
--

DROP TABLE IF EXISTS `m2_newsletter_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_subscriber` (
  `subscriber_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber ID',
  `store_id` smallint unsigned DEFAULT '0' COMMENT 'Store ID',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `M2_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `M2_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  KEY `M2_NEWSLETTER_SUBSCRIBER_SUBSCRIBER_EMAIL` (`subscriber_email`),
  CONSTRAINT `M2_NEWSLETTER_SUBSCRIBER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Subscriber';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_subscriber`
--

LOCK TABLES `m2_newsletter_subscriber` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_newsletter_template`
--

DROP TABLE IF EXISTS `m2_newsletter_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_newsletter_template` (
  `template_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode',
  PRIMARY KEY (`template_id`),
  KEY `M2_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `M2_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `M2_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Newsletter Template';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_newsletter_template`
--

LOCK TABLES `m2_newsletter_template` WRITE;
/*!40000 ALTER TABLE `m2_newsletter_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_newsletter_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_oauth_consumer`
--

DROP TABLE IF EXISTS `m2_oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_oauth_consumer` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(128) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `M2_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `M2_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `M2_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='OAuth Consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_oauth_consumer`
--

LOCK TABLES `m2_oauth_consumer` WRITE;
/*!40000 ALTER TABLE `m2_oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_oauth_nonce`
--

DROP TABLE IF EXISTS `m2_oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int unsigned NOT NULL COMMENT 'Consumer ID',
  PRIMARY KEY (`nonce`,`consumer_id`),
  KEY `M2_OAUTH_NONCE_CONSUMER_ID_M2_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`),
  KEY `M2_OAUTH_NONCE_TIMESTAMP` (`timestamp`),
  CONSTRAINT `M2_OAUTH_NONCE_CONSUMER_ID_M2_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `m2_oauth_consumer` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='OAuth Nonce';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_oauth_nonce`
--

LOCK TABLES `m2_oauth_nonce` WRITE;
/*!40000 ALTER TABLE `m2_oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_oauth_token`
--

DROP TABLE IF EXISTS `m2_oauth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_oauth_token` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(128) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `M2_OAUTH_TOKEN_ADMIN_ID_M2_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `M2_OAUTH_TOKEN_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  KEY `M2_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `M2_OAUTH_TOKEN_CREATED_AT` (`created_at`),
  CONSTRAINT `M2_OAUTH_TOKEN_ADMIN_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_OAUTH_TOKEN_CONSUMER_ID_M2_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `m2_oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_OAUTH_TOKEN_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='OAuth Tokens';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_oauth_token`
--

LOCK TABLES `m2_oauth_token` WRITE;
/*!40000 ALTER TABLE `m2_oauth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_oauth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_oauth_token_request_log`
--

DROP TABLE IF EXISTS `m2_oauth_token_request_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_oauth_token_request_log` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `M2_OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Log of token request authentication failures.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_oauth_token_request_log`
--

LOCK TABLES `m2_oauth_token_request_log` WRITE;
/*!40000 ALTER TABLE `m2_oauth_token_request_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_oauth_token_request_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_pagebuilder_template`
--

DROP TABLE IF EXISTS `m2_pagebuilder_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_pagebuilder_template` (
  `template_id` int NOT NULL AUTO_INCREMENT COMMENT 'Template ID Auto Increment',
  `name` varchar(1024) NOT NULL COMMENT 'Template Name',
  `preview_image` varchar(1024) DEFAULT NULL COMMENT 'Template Preview Image',
  `template` longtext NOT NULL COMMENT 'Master Format HTML',
  `created_for` varchar(255) DEFAULT NULL COMMENT 'Created For',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`template_id`),
  FULLTEXT KEY `M2_PAGEBUILDER_TEMPLATE_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Page Builder Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_pagebuilder_template`
--

LOCK TABLES `m2_pagebuilder_template` WRITE;
/*!40000 ALTER TABLE `m2_pagebuilder_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_pagebuilder_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_password_reset_request_event`
--

DROP TABLE IF EXISTS `m2_password_reset_request_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_password_reset_request_event` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `M2_PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `M2_PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Password Reset Request Event under a security control';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_password_reset_request_event`
--

LOCK TABLES `m2_password_reset_request_event` WRITE;
/*!40000 ALTER TABLE `m2_password_reset_request_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_password_reset_request_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_patch_list`
--

DROP TABLE IF EXISTS `m2_patch_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_patch_list` (
  `patch_id` int NOT NULL AUTO_INCREMENT COMMENT 'Patch Auto Increment',
  `patch_name` varchar(1024) NOT NULL COMMENT 'Patch Class Name',
  PRIMARY KEY (`patch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb3 COMMENT='List of data/schema patches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_patch_list`
--

LOCK TABLES `m2_patch_list` WRITE;
/*!40000 ALTER TABLE `m2_patch_list` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_patch_list` VALUES (1,'Magento\\Store\\Setup\\Patch\\Schema\\InitializeStoresAndWebsites'),(2,'Magento\\Catalog\\Setup\\Patch\\Schema\\EnableSegmentation'),(3,'Magento\\CatalogRule\\Setup\\Patch\\Schema\\CleanUpProductPriceReplicaTable'),(4,'Magento\\Bundle\\Setup\\Patch\\Schema\\UpdateBundleRelatedSchema'),(5,'Magento\\InventoryCatalog\\Setup\\Patch\\Schema\\CreateLegacyStockStatusView'),(6,'Magento\\InventoryCatalog\\Setup\\Patch\\Schema\\InitializeDefaultStock'),(7,'Magento\\InventoryCatalog\\Setup\\Patch\\Schema\\UpdateInventorySourceItem'),(8,'Magento\\InventoryCatalog\\Setup\\Patch\\Schema\\ReindexDefaultSource'),(9,'Magento\\InventorySales\\Setup\\Patch\\Schema\\InitializeWebsiteDefaultSock'),(10,'Magento\\Review\\Setup\\Patch\\Schema\\AddUniqueConstraintToReviewEntitySummary'),(11,'Magento\\TwoFactorAuth\\Setup\\Patch\\Schema\\CopyTablesFromOldModule'),(12,'Temando\\ShippingRemover\\Setup\\Patch\\Schema\\EmptyTablesRemoval'),(13,'Magento\\Store\\Setup\\Patch\\Data\\DisableSid'),(14,'Magento\\Store\\Setup\\Patch\\Data\\UpdateStoreGroupCodes'),(15,'Magento\\Config\\Setup\\Patch\\Data\\RemoveTinymceConfig'),(16,'Magento\\Config\\Setup\\Patch\\Data\\UnsetTinymce3'),(17,'Magento\\Config\\Setup\\Patch\\Data\\UpdateClassAliases'),(18,'Magento\\Directory\\Setup\\Patch\\Data\\InitializeDirectoryData'),(19,'Magento\\Directory\\Setup\\Patch\\Data\\AddCountriesCaribbeanCuracaoKosovoSintMaarten'),(20,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForAlbania'),(21,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForArgentina'),(22,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForCroatia'),(23,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForIndia'),(24,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForAustralia'),(25,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForBelarus'),(26,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForBelgium'),(27,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForBolivia'),(28,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForBulgaria'),(29,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForChile'),(30,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForChina'),(31,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForColombia'),(32,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForCzechia'),(33,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForDenmark'),(34,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForEcuador'),(35,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForGreece'),(36,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForGuyana'),(37,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForIceland'),(38,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForItaly'),(39,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForMexico'),(40,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForParaguay'),(41,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForPeru'),(42,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForPoland'),(43,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForPortugal'),(44,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForSuriname'),(45,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForSweden'),(46,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForUruguay'),(47,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForVenezuela'),(48,'Magento\\Directory\\Setup\\Patch\\Data\\UpdateRegionNamesForSwitzerland'),(49,'Magento\\Theme\\Setup\\Patch\\Data\\RegisterThemes'),(50,'Magento\\Theme\\Setup\\Patch\\Data\\ConvertSerializedData'),(51,'Magento\\User\\Setup\\Patch\\Data\\UpgradePasswordHashes'),(52,'Magento\\User\\Setup\\Patch\\Data\\UpgradeSerializedFields'),(53,'Magento\\Authorization\\Setup\\Patch\\Data\\InitializeAuthRoles'),(54,'Magento\\Eav\\Setup\\Patch\\Data\\InitializeAttributeModels'),(55,'Magento\\Customer\\Setup\\Patch\\Data\\DefaultCustomerGroupsAndAttributes'),(56,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributesMetadata'),(57,'Magento\\Customer\\Setup\\Patch\\Data\\AddNonSpecifiedGenderAttributeOption'),(58,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateIdentifierCustomerAttributesVisibility'),(59,'Magento\\Customer\\Setup\\Patch\\Data\\AddCustomerUpdatedAtAttribute'),(60,'Magento\\Customer\\Setup\\Patch\\Data\\UpgradePasswordHashAndAddress'),(61,'Magento\\Customer\\Setup\\Patch\\Data\\RemoveCheckoutRegisterAndUpdateAttributes'),(62,'Magento\\Customer\\Setup\\Patch\\Data\\AddSecurityTrackingAttributes'),(63,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateAutocompleteOnStorefrontConfigPath'),(64,'Magento\\Customer\\Setup\\Patch\\Data\\MigrateStoresAllowedCountriesToWebsite'),(65,'Magento\\Customer\\Setup\\Patch\\Data\\ConvertValidationRulesFromSerializedToJson'),(66,'Magento\\Customer\\Setup\\Patch\\Data\\SessionIDColumnCleanUp'),(67,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAddressAttributesSortOrder'),(68,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateVATNumber'),(69,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributeInputFilters'),(70,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateDefaultCustomerGroupInConfig'),(71,'Magento\\Indexer\\Setup\\Patch\\Data\\InitializeIndexerState'),(72,'Magento\\Cms\\Setup\\Patch\\Data\\CreateDefaultPages'),(73,'Magento\\Cms\\Setup\\Patch\\Data\\UpdatePrivacyPolicyPage'),(74,'Magento\\Cms\\Setup\\Patch\\Data\\ConvertWidgetConditionsToJson'),(75,'Magento\\Security\\Setup\\Patch\\Data\\SessionIDColumnCleanUp'),(76,'Magento\\Catalog\\Setup\\Patch\\Data\\InstallDefaultCategories'),(77,'Magento\\Catalog\\Setup\\Patch\\Data\\SetNewResourceModelsPaths'),(78,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateDefaultAttributeValue'),(79,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateMediaAttributesBackendTypes'),(80,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductAttributes'),(81,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductMetaDescription'),(82,'Magento\\Catalog\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),(83,'Magento\\Catalog\\Setup\\Patch\\Data\\DisallowUsingHtmlForProductName'),(84,'Magento\\Catalog\\Setup\\Patch\\Data\\EnableDirectiveParsing'),(85,'Magento\\Catalog\\Setup\\Patch\\Data\\EnableSegmentation'),(86,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateCustomLayoutAttributes'),(87,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateMultiselectAttributesBackendTypes'),(88,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductDescriptionOrder'),(89,'Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\CreateUrlAttributes'),(90,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductUrlKey'),(91,'Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWidgetData'),(92,'Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWebsiteAttributes'),(93,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\CreateDefaultStock'),(94,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\UpdateStockItemsWebsite'),(95,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(96,'Magento\\CatalogRule\\Setup\\Patch\\Data\\UpdateClassAliasesForCatalogRules'),(97,'Magento\\CatalogRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(98,'Magento\\Msrp\\Setup\\Patch\\Data\\InitializeMsrpAttributes'),(99,'Magento\\Msrp\\Setup\\Patch\\Data\\ChangeMsrpAttributeLabel'),(100,'Magento\\Msrp\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),(101,'Magento\\CatalogSearch\\Setup\\Patch\\Data\\MySQLSearchRemovalNotification'),(102,'Magento\\CatalogSearch\\Setup\\Patch\\Data\\SetInitialSearchWeightForAttributes'),(103,'Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\UpdateUrlKeyForProducts'),(104,'Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\UpdateUrlKeySearchable'),(105,'Magento\\Quote\\Setup\\Patch\\Data\\InstallEntityTypes'),(106,'Magento\\Quote\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(107,'Magento\\Quote\\Setup\\Patch\\Data\\WishlistDataCleanUp'),(108,'Magento\\MediaGalleryUi\\Setup\\Patch\\Data\\AddMediaGalleryPermissions'),(109,'Magento\\Integration\\Setup\\Patch\\Data\\RemoveInactiveTokens'),(110,'Magento\\Integration\\Setup\\Patch\\Data\\UpgradeConsumerSecret'),(111,'Magento\\Integration\\Setup\\Patch\\Data\\UpgradeOauthToken'),(112,'Magento\\Sales\\Setup\\Patch\\Data\\InstallOrderStatusesAndInitialSalesConfig'),(113,'Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypes'),(114,'Magento\\Sales\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(115,'Magento\\Sales\\Setup\\Patch\\Data\\FillQuoteAddressIdInSalesOrderAddress'),(116,'Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypeModelForInvoice'),(117,'Magento\\Sales\\Setup\\Patch\\Data\\WishlistDataCleanUp'),(118,'Magento\\Checkout\\Setup\\Patch\\Data\\PrepareInitialCheckoutConfiguration'),(119,'Magento\\Widget\\Setup\\Patch\\Data\\UpgradeModelInstanceClassAliases'),(120,'Magento\\Widget\\Setup\\Patch\\Data\\ConvertSerializedData'),(121,'Magento\\Analytics\\Setup\\Patch\\Data\\PrepareInitialConfig'),(122,'Magento\\Analytics\\Setup\\Patch\\Data\\ActivateDataCollection'),(123,'Magento\\Downloadable\\Setup\\Patch\\Data\\AddDownloadableHostsConfig'),(124,'Magento\\Downloadable\\Setup\\Patch\\Data\\InstallDownloadableAttributes'),(125,'Magento\\Downloadable\\Setup\\Patch\\Data\\UpdateLinksExistDefaultAttributeValue'),(126,'Magento\\Dhl\\Setup\\Patch\\Data\\PrepareShipmentDays'),(127,'Magento\\Bundle\\Setup\\Patch\\Data\\ApplyAttributesUpdate'),(128,'Magento\\Bundle\\Setup\\Patch\\Data\\UpdateBundleRelatedEntityTypes'),(129,'Magento\\Elasticsearch\\Setup\\Patch\\Data\\InvalidateIndex'),(130,'Magento\\Email\\Setup\\Patch\\Data\\FlagLegacyTemplates'),(131,'Magento\\EncryptionKey\\Setup\\Patch\\Data\\SodiumChachaPatch'),(132,'Magento\\Fedex\\Setup\\Patch\\Data\\ConfigureFedexDefaults'),(133,'Magento\\GiftMessage\\Setup\\Patch\\Data\\AddGiftMessageAttributes'),(134,'Magento\\GiftMessage\\Setup\\Patch\\Data\\MoveGiftMessageToGiftOptionsGroup'),(135,'Magento\\GiftMessage\\Setup\\Patch\\Data\\UpdateGiftMessageAttribute'),(136,'Magento\\GroupedProduct\\Setup\\Patch\\Data\\InitializeGroupedProductLinks'),(137,'Magento\\GroupedProduct\\Setup\\Patch\\Data\\UpdateProductRelations'),(138,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\InstallInitialConfigurableAttributes'),(139,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateManufacturerAttribute'),(140,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateTierPriceAttribute'),(141,'Magento\\InventoryLowQuantityNotification\\Setup\\Patch\\Data\\MigrateCatalogInventoryNotifyStockQuantityData'),(142,'Magento\\Reports\\Setup\\Patch\\Data\\InitializeReportEntityTypesAndPages'),(143,'Magento\\Reports\\Setup\\Patch\\Data\\ReportDisableNotification'),(144,'Magento\\Newsletter\\Setup\\Patch\\Data\\FlagLegacyTemplates'),(145,'Magento\\SalesRule\\Setup\\Patch\\Data\\PrepareRuleModelSerializedData'),(146,'Magento\\SalesRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(147,'Magento\\SalesRule\\Setup\\Patch\\Data\\FillSalesRuleProductAttributeTable'),(148,'Magento\\PageBuilder\\Setup\\Patch\\Data\\UpdateProductAttribute'),(149,'Magento\\PageBuilder\\Setup\\Patch\\Data\\UpgradePageBuilderStripStyles'),(150,'Magento\\Vault\\Setup\\Patch\\Data\\SetCreditCardAsDefaultTokenType'),(151,'Magento\\Paypal\\Setup\\Patch\\Data\\AddPaypalOrderStatuses'),(152,'Magento\\Paypal\\Setup\\Patch\\Data\\UpdateBmltoPayLater'),(153,'Magento\\Paypal\\Setup\\Patch\\Data\\UpdatePaypalCreditOption'),(154,'Magento\\Paypal\\Setup\\Patch\\Data\\UpdateSmartButtonLabel'),(155,'Magento\\Paypal\\Setup\\Patch\\Data\\UpdateSmartButtonSize'),(156,'Magento\\ReCaptchaMigration\\Setup\\Patch\\Data\\MigrateConfigToRecaptchaModules'),(157,'Magento\\Review\\Setup\\Patch\\Data\\InitReviewStatusesAndData'),(158,'Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateQuoteShippingAddresses'),(159,'Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateShippingTablerate'),(160,'Magento\\UrlRewrite\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),(161,'Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageAttribute'),(162,'Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageToDefaultAttribtueSet'),(163,'Magento\\Swatches\\Setup\\Patch\\Data\\UpdateAdminTextSwatchValues'),(164,'Magento\\Swatches\\Setup\\Patch\\Data\\ConvertAdditionalDataToJson'),(165,'Magento\\Tax\\Setup\\Patch\\Data\\AddTaxAttributeAndTaxClasses'),(166,'Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxClassAttributeVisibility'),(167,'Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxRegionId'),(168,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\CopyConfigFromOldModule'),(169,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\EncryptConfiguration'),(170,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\EncryptGoogleSecrets'),(171,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\EncryptSecrets'),(172,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\GenerateDuoSecurityKey'),(173,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\PopulateCountryTable'),(174,'Magento\\TwoFactorAuth\\Setup\\Patch\\Data\\ResetU2fConfig'),(175,'Magento\\SampleData\\Setup\\Patch\\Data\\ClearSampleDataState'),(176,'Magento\\Usps\\Setup\\Patch\\Data\\UpdateAllowedMethods'),(177,'Magento\\Weee\\Setup\\Patch\\Data\\InitQuoteAndOrderAttributes'),(178,'Magento\\CurrencySymbol\\Setup\\Patch\\Data\\ConvertSerializedCustomCurrencySymbolToJson'),(179,'Magento\\Wishlist\\Setup\\Patch\\Data\\ConvertSerializedData'),(180,'Magento\\Wishlist\\Setup\\Patch\\Data\\WishlistDataCleanUp'),(181,'Temando\\ShippingRemover\\Setup\\Patch\\Data\\AttributesRemoval'),(182,'Temando\\ShippingRemover\\Setup\\Patch\\Data\\BookmarkCleaner'),(183,'Temando\\ShippingRemover\\Setup\\Patch\\Data\\ConfigRemoval');
/*!40000 ALTER TABLE `m2_patch_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_billing_agreement`
--

DROP TABLE IF EXISTS `m2_paypal_billing_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_billing_agreement` (
  `agreement_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement ID',
  `customer_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference ID',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `M2_PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `M2_PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`),
  CONSTRAINT `M2_PAYPAL_BILLING_AGREEMENT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_PAYPAL_BILLING_AGRT_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Billing Agreement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_billing_agreement`
--

LOCK TABLES `m2_paypal_billing_agreement` WRITE;
/*!40000 ALTER TABLE `m2_paypal_billing_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_billing_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_billing_agreement_order`
--

DROP TABLE IF EXISTS `m2_paypal_billing_agreement_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_billing_agreement_order` (
  `agreement_id` int unsigned NOT NULL COMMENT 'Agreement ID',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `M2_PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `FK_B8B3C9DA7A1A90708F637D734D91C1B7` FOREIGN KEY (`agreement_id`) REFERENCES `m2_paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PAYPAL_BILLING_AGRT_ORDER_ORDER_ID_M2_SALES_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Billing Agreement Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_billing_agreement_order`
--

LOCK TABLES `m2_paypal_billing_agreement_order` WRITE;
/*!40000 ALTER TABLE `m2_paypal_billing_agreement_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_billing_agreement_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_cert`
--

DROP TABLE IF EXISTS `m2_paypal_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_cert` (
  `cert_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `M2_PAYPAL_CERT_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_PAYPAL_CERT_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Paypal Certificate Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_cert`
--

LOCK TABLES `m2_paypal_cert` WRITE;
/*!40000 ALTER TABLE `m2_paypal_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_payment_transaction`
--

DROP TABLE IF EXISTS `m2_paypal_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_payment_transaction` (
  `transaction_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn ID',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `M2_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='PayPal Payflow Link Payment Transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_payment_transaction`
--

LOCK TABLES `m2_paypal_payment_transaction` WRITE;
/*!40000 ALTER TABLE `m2_paypal_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_settlement_report`
--

DROP TABLE IF EXISTS `m2_paypal_settlement_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_settlement_report` (
  `report_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report ID',
  `report_date` date DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account ID',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `M2_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Paypal Settlement Report Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_settlement_report`
--

LOCK TABLES `m2_paypal_settlement_report` WRITE;
/*!40000 ALTER TABLE `m2_paypal_settlement_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_settlement_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `m2_paypal_settlement_report_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_paypal_settlement_report_row` (
  `row_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `report_id` int unsigned NOT NULL COMMENT 'Report ID',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction ID',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice ID',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference ID',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference ID Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer ID',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `M2_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`),
  CONSTRAINT `FK_C5755E2C4BA7C1D26341AA0DB29080C5` FOREIGN KEY (`report_id`) REFERENCES `m2_paypal_settlement_report` (`report_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Paypal Settlement Report Row Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_paypal_settlement_report_row`
--

LOCK TABLES `m2_paypal_settlement_report_row` WRITE;
/*!40000 ALTER TABLE `m2_paypal_settlement_report_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_paypal_settlement_report_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_persistent_session`
--

DROP TABLE IF EXISTS `m2_persistent_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_persistent_session` (
  `persistent_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session ID',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `M2_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `M2_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `M2_PERSISTENT_SESSION_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` (`website_id`),
  KEY `M2_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  CONSTRAINT `M2_PERSISTENT_SESSION_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PERSISTENT_SESSION_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Persistent Session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_persistent_session`
--

LOCK TABLES `m2_persistent_session` WRITE;
/*!40000 ALTER TABLE `m2_persistent_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_persistent_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_product_alert_price`
--

DROP TABLE IF EXISTS `m2_product_alert_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_product_alert_price` (
  `alert_price_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price ID',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price amount',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint unsigned DEFAULT '0' COMMENT 'Store ID',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `M2_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `M2_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `M2_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `M2_PRODUCT_ALERT_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_PRD_ALERT_PRICE_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_PRICE_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_PRICE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_PRICE_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Product Alert Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_product_alert_price`
--

LOCK TABLES `m2_product_alert_price` WRITE;
/*!40000 ALTER TABLE `m2_product_alert_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_product_alert_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_product_alert_stock`
--

DROP TABLE IF EXISTS `m2_product_alert_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_product_alert_stock` (
  `alert_stock_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock ID',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint unsigned DEFAULT '0' COMMENT 'Store ID',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `M2_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `M2_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `M2_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`),
  KEY `M2_PRODUCT_ALERT_STOCK_STORE_ID` (`store_id`),
  CONSTRAINT `M2_PRD_ALERT_STOCK_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_STOCK_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_STOCK_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_PRODUCT_ALERT_STOCK_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Product Alert Stock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_product_alert_stock`
--

LOCK TABLES `m2_product_alert_stock` WRITE;
/*!40000 ALTER TABLE `m2_product_alert_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_product_alert_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_queue`
--

DROP TABLE IF EXISTS `m2_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_queue` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Queue name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_QUEUE_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='Table storing unique queues';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_queue`
--

LOCK TABLES `m2_queue` WRITE;
/*!40000 ALTER TABLE `m2_queue` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_queue` VALUES (19,'async.operations.all'),(15,'codegenerator'),(4,'export'),(10,'inventory.indexer.sourceItem'),(11,'inventory.indexer.stock'),(6,'inventory.mass.update'),(7,'inventory.reservations.cleanup'),(8,'inventory.reservations.update'),(9,'inventory.reservations.updateSalabilityStatus'),(5,'inventory.source.items.cleanup'),(12,'media.content.synchronization'),(13,'media.gallery.renditions.update'),(14,'media.gallery.synchronization'),(3,'media.storage.catalog.image.resize'),(1,'product_action_attribute.update'),(2,'product_action_attribute.website.update'),(18,'product_alert.queue'),(17,'sales.rule.quote.trigger.recollect'),(16,'sales.rule.update.coupon.usage');
/*!40000 ALTER TABLE `m2_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_queue_lock`
--

DROP TABLE IF EXISTS `m2_queue_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_queue_lock` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `message_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Message Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_QUEUE_LOCK_MESSAGE_CODE` (`message_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Messages that were processed are inserted here to be locked.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_queue_lock`
--

LOCK TABLES `m2_queue_lock` WRITE;
/*!40000 ALTER TABLE `m2_queue_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_queue_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_queue_message`
--

DROP TABLE IF EXISTS `m2_queue_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_queue_message` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Message topic',
  `body` longtext COMMENT 'Message body',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Queue messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_queue_message`
--

LOCK TABLES `m2_queue_message` WRITE;
/*!40000 ALTER TABLE `m2_queue_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_queue_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_queue_message_status`
--

DROP TABLE IF EXISTS `m2_queue_message_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_queue_message_status` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Relation ID',
  `queue_id` int unsigned NOT NULL COMMENT 'Queue ID',
  `message_id` bigint unsigned NOT NULL COMMENT 'Message ID',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `status` smallint unsigned NOT NULL COMMENT 'Message status in particular queue',
  `number_of_trials` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Number of trials to processed failed message processing',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_QUEUE_MESSAGE_STATUS_QUEUE_ID_MESSAGE_ID` (`queue_id`,`message_id`),
  KEY `M2_QUEUE_MESSAGE_STATUS_MESSAGE_ID_M2_QUEUE_MESSAGE_ID` (`message_id`),
  KEY `M2_QUEUE_MESSAGE_STATUS_STATUS_UPDATED_AT` (`status`,`updated_at`),
  CONSTRAINT `M2_QUEUE_MESSAGE_STATUS_MESSAGE_ID_M2_QUEUE_MESSAGE_ID` FOREIGN KEY (`message_id`) REFERENCES `m2_queue_message` (`id`) ON DELETE CASCADE,
  CONSTRAINT `M2_QUEUE_MESSAGE_STATUS_QUEUE_ID_M2_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `m2_queue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Relation table to keep associations between queues and messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_queue_message_status`
--

LOCK TABLES `m2_queue_message_status` WRITE;
/*!40000 ALTER TABLE `m2_queue_message_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_queue_message_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_queue_poison_pill`
--

DROP TABLE IF EXISTS `m2_queue_poison_pill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_queue_poison_pill` (
  `version` varchar(255) NOT NULL COMMENT 'Poison Pill version.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sequence table for poison pill versions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_queue_poison_pill`
--

LOCK TABLES `m2_queue_poison_pill` WRITE;
/*!40000 ALTER TABLE `m2_queue_poison_pill` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_queue_poison_pill` VALUES ('version-65833e9c72c6d');
/*!40000 ALTER TABLE `m2_queue_poison_pill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote`
--

DROP TABLE IF EXISTS `m2_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int unsigned DEFAULT '0' COMMENT 'Orig Order ID',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `customer_tax_class_id` int unsigned DEFAULT NULL COMMENT 'Customer Tax Class ID',
  `customer_group_id` int unsigned DEFAULT '0' COMMENT 'Customer Group ID',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order ID',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `is_persistent` smallint unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `M2_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `M2_QUOTE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_QUOTE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote`
--

LOCK TABLES `m2_quote` WRITE;
/*!40000 ALTER TABLE `m2_quote` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_address`
--

DROP TABLE IF EXISTS `m2_quote_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_address` (
  `address_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address ID',
  `quote_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `save_in_address_book` smallint DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int unsigned DEFAULT NULL COMMENT 'Customer Address ID',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int unsigned DEFAULT NULL COMMENT 'Region ID',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country ID',
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(120) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat ID',
  `vat_is_valid` smallint DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request ID',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint DEFAULT NULL COMMENT 'Vat Request Success',
  `validated_country_code` text COMMENT 'Validated Country Code',
  `validated_vat_number` text COMMENT 'Validated Vat Number',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  PRIMARY KEY (`address_id`),
  KEY `M2_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`),
  CONSTRAINT `M2_QUOTE_ADDRESS_QUOTE_ID_M2_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `m2_quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Address';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_address`
--

LOCK TABLES `m2_quote_address` WRITE;
/*!40000 ALTER TABLE `m2_quote_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_address_item`
--

DROP TABLE IF EXISTS `m2_quote_address_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_address_item` (
  `address_item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item ID',
  `parent_item_id` int unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `quote_address_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address ID',
  `quote_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `super_product_id` int unsigned DEFAULT NULL COMMENT 'Super Product ID',
  `parent_product_id` int unsigned DEFAULT NULL COMMENT 'Parent Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` int unsigned DEFAULT NULL COMMENT 'Free Shipping',
  PRIMARY KEY (`address_item_id`),
  KEY `M2_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `M2_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `M2_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`),
  KEY `M2_QUOTE_ADDRESS_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_509C9893BEEAAF3DB7421BA99CC0E97A` FOREIGN KEY (`parent_item_id`) REFERENCES `m2_quote_address_item` (`address_item_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_QUOTE_ADDR_ITEM_QUOTE_ADDR_ID_M2_QUOTE_ADDR_ADDR_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `m2_quote_address` (`address_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_M2_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `m2_quote_item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Address Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_address_item`
--

LOCK TABLES `m2_quote_address_item` WRITE;
/*!40000 ALTER TABLE `m2_quote_address_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_address_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_id_mask`
--

DROP TABLE IF EXISTS `m2_quote_id_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_id_mask` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `quote_id` int unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `M2_QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `M2_QUOTE_ID_MASK_MASKED_ID` (`masked_id`),
  CONSTRAINT `M2_QUOTE_ID_MASK_QUOTE_ID_M2_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `m2_quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Quote ID and masked ID mapping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_id_mask`
--

LOCK TABLES `m2_quote_id_mask` WRITE;
/*!40000 ALTER TABLE `m2_quote_id_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_id_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_item`
--

DROP TABLE IF EXISTS `m2_quote_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_item` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `quote_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `parent_item_id` int unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `is_virtual` smallint unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `M2_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `M2_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `M2_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `M2_QUOTE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `M2_QUOTE_ITEM_PARENT_ITEM_ID_M2_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `m2_quote_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_QUOTE_ITEM_QUOTE_ID_M2_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `m2_quote` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_QUOTE_ITEM_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_item`
--

LOCK TABLES `m2_quote_item` WRITE;
/*!40000 ALTER TABLE `m2_quote_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_item_option`
--

DROP TABLE IF EXISTS `m2_quote_item_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_item_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `item_id` int unsigned NOT NULL COMMENT 'Item ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `M2_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`),
  CONSTRAINT `M2_QUOTE_ITEM_OPTION_ITEM_ID_M2_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `m2_quote_item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Item Option';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_item_option`
--

LOCK TABLES `m2_quote_item_option` WRITE;
/*!40000 ALTER TABLE `m2_quote_item_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_payment`
--

DROP TABLE IF EXISTS `m2_quote_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_payment` (
  `payment_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment ID',
  `quote_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer ID',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation ID',
  PRIMARY KEY (`payment_id`),
  KEY `M2_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`),
  CONSTRAINT `M2_QUOTE_PAYMENT_QUOTE_ID_M2_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `m2_quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Payment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_payment`
--

LOCK TABLES `m2_quote_payment` WRITE;
/*!40000 ALTER TABLE `m2_quote_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_quote_shipping_rate`
--

DROP TABLE IF EXISTS `m2_quote_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_quote_shipping_rate` (
  `rate_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate ID',
  `address_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Address ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `M2_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`),
  CONSTRAINT `M2_QUOTE_SHIPPING_RATE_ADDRESS_ID_M2_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `m2_quote_address` (`address_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Quote Shipping Rate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_quote_shipping_rate`
--

LOCK TABLES `m2_quote_shipping_rate` WRITE;
/*!40000 ALTER TABLE `m2_quote_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_quote_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating`
--

DROP TABLE IF EXISTS `m2_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating` (
  `rating_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating ID',
  `entity_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `M2_RATING_RATING_CODE` (`rating_code`),
  KEY `M2_RATING_ENTITY_ID` (`entity_id`),
  CONSTRAINT `M2_RATING_ENTITY_ID_M2_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_rating_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating`
--

LOCK TABLES `m2_rating` WRITE;
/*!40000 ALTER TABLE `m2_rating` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_rating` VALUES (1,1,'Quality',0,1),(2,1,'Value',0,1),(3,1,'Price',0,1);
/*!40000 ALTER TABLE `m2_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_entity`
--

DROP TABLE IF EXISTS `m2_rating_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_entity` (
  `entity_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Rating entities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_entity`
--

LOCK TABLES `m2_rating_entity` WRITE;
/*!40000 ALTER TABLE `m2_rating_entity` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_rating_entity` VALUES (1,'product'),(2,'product_review'),(3,'review');
/*!40000 ALTER TABLE `m2_rating_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_option`
--

DROP TABLE IF EXISTS `m2_rating_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option ID',
  `rating_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `M2_RATING_OPTION_RATING_ID` (`rating_id`),
  CONSTRAINT `M2_RATING_OPTION_RATING_ID_M2_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `m2_rating` (`rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='Rating options';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_option`
--

LOCK TABLES `m2_rating_option` WRITE;
/*!40000 ALTER TABLE `m2_rating_option` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_rating_option` VALUES (1,1,'1',1,1),(2,1,'2',2,2),(3,1,'3',3,3),(4,1,'4',4,4),(5,1,'5',5,5),(6,2,'1',1,1),(7,2,'2',2,2),(8,2,'3',3,3),(9,2,'4',4,4),(10,2,'5',5,5),(11,3,'1',1,1),(12,3,'2',2,2),(13,3,'3',3,3),(14,3,'4',4,4),(15,3,'5',5,5);
/*!40000 ALTER TABLE `m2_rating_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_option_vote`
--

DROP TABLE IF EXISTS `m2_rating_option_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_option_vote` (
  `vote_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote ID',
  `option_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option ID',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int unsigned DEFAULT '0' COMMENT 'Customer ID',
  `entity_pk_value` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rating_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `review_id` bigint unsigned DEFAULT NULL COMMENT 'Review ID',
  `percent` smallint NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `M2_RATING_OPTION_VOTE_REVIEW_ID_M2_REVIEW_REVIEW_ID` (`review_id`),
  KEY `M2_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  CONSTRAINT `M2_RATING_OPTION_VOTE_OPTION_ID_M2_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `m2_rating_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_RATING_OPTION_VOTE_REVIEW_ID_M2_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `m2_review` (`review_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Rating option values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_option_vote`
--

LOCK TABLES `m2_rating_option_vote` WRITE;
/*!40000 ALTER TABLE `m2_rating_option_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_rating_option_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `m2_rating_option_vote_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_option_vote_aggregated` (
  `primary_id` int NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation ID',
  `rating_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `entity_pk_value` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `vote_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`primary_id`),
  KEY `M2_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `M2_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_M2_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `m2_rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Rating vote aggregated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_option_vote_aggregated`
--

LOCK TABLES `m2_rating_option_vote_aggregated` WRITE;
/*!40000 ALTER TABLE `m2_rating_option_vote_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_rating_option_vote_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_store`
--

DROP TABLE IF EXISTS `m2_rating_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_store` (
  `rating_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `M2_RATING_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_RATING_STORE_RATING_ID_M2_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `m2_rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_RATING_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Rating Store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_store`
--

LOCK TABLES `m2_rating_store` WRITE;
/*!40000 ALTER TABLE `m2_rating_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_rating_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_rating_title`
--

DROP TABLE IF EXISTS `m2_rating_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_rating_title` (
  `rating_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `M2_RATING_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_RATING_TITLE_RATING_ID_M2_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `m2_rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_RATING_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Rating Title';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_rating_title`
--

LOCK TABLES `m2_rating_title` WRITE;
/*!40000 ALTER TABLE `m2_rating_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_rating_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_release_notification_viewer_log`
--

DROP TABLE IF EXISTS `m2_release_notification_viewer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_release_notification_viewer_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `viewer_id` int unsigned NOT NULL COMMENT 'Viewer admin user ID',
  `last_view_version` varchar(16) NOT NULL COMMENT 'Viewer last view on product version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID` (`viewer_id`),
  CONSTRAINT `M2_RELEASE_NTFC_VIEWER_LOG_VIEWER_ID_M2_ADM_USR_USR_ID` FOREIGN KEY (`viewer_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Release Notification Viewer Log Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_release_notification_viewer_log`
--

LOCK TABLES `m2_release_notification_viewer_log` WRITE;
/*!40000 ALTER TABLE `m2_release_notification_viewer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_release_notification_viewer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_compared_product_index`
--

DROP TABLE IF EXISTS `m2_report_compared_product_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_compared_product_index` (
  `index_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index ID',
  `visitor_id` int unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `M2_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `M2_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `M2_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `M2_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `M2_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_REPORT_CMPD_PRD_IDX_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_CMPD_PRD_IDX_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reports Compared Product Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_compared_product_index`
--

LOCK TABLES `m2_report_compared_product_index` WRITE;
/*!40000 ALTER TABLE `m2_report_compared_product_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_compared_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_event`
--

DROP TABLE IF EXISTS `m2_report_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_event` (
  `event_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event ID',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type ID',
  `object_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Object ID',
  `subject_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Subject ID',
  `subtype` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`event_id`),
  KEY `M2_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `M2_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `M2_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `M2_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `M2_REPORT_EVENT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_5189719C16397C94AC07360091DA0394` FOREIGN KEY (`event_type_id`) REFERENCES `m2_report_event_types` (`event_type_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_EVENT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reports Event Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_event`
--

LOCK TABLES `m2_report_event` WRITE;
/*!40000 ALTER TABLE `m2_report_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_event_types`
--

DROP TABLE IF EXISTS `m2_report_event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_event_types` (
  `event_type_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type ID',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='Reports Event Type Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_event_types`
--

LOCK TABLES `m2_report_event_types` WRITE;
/*!40000 ALTER TABLE `m2_report_event_types` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_report_event_types` VALUES (1,'catalog_product_view',0),(2,'sendfriend_product',0),(3,'catalog_product_compare_add_product',0),(4,'checkout_cart_add_product',0),(5,'wishlist_add_product',0),(6,'wishlist_share',0);
/*!40000 ALTER TABLE `m2_report_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_viewed_product_aggregated_daily`
--

DROP TABLE IF EXISTS `m2_report_viewed_product_aggregated_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_viewed_product_aggregated_daily` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Most Viewed Products Aggregated Daily';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_viewed_product_aggregated_daily`
--

LOCK TABLES `m2_report_viewed_product_aggregated_daily` WRITE;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_viewed_product_aggregated_monthly`
--

DROP TABLE IF EXISTS `m2_report_viewed_product_aggregated_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_viewed_product_aggregated_monthly` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_2D641D6EA23AC4D58B3272E8C6EF2517` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Most Viewed Products Aggregated Monthly';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_viewed_product_aggregated_monthly`
--

LOCK TABLES `m2_report_viewed_product_aggregated_monthly` WRITE;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_viewed_product_aggregated_yearly`
--

DROP TABLE IF EXISTS `m2_report_viewed_product_aggregated_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_viewed_product_aggregated_yearly` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_401B7713B3D92C8417C3DB82D60F9B86` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Most Viewed Products Aggregated Yearly';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_viewed_product_aggregated_yearly`
--

LOCK TABLES `m2_report_viewed_product_aggregated_yearly` WRITE;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_viewed_product_aggregated_yearly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_report_viewed_product_index`
--

DROP TABLE IF EXISTS `m2_report_viewed_product_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_report_viewed_product_index` (
  `index_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index ID',
  `visitor_id` int unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `M2_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `M2_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `M2_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `M2_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_REPORT_VIEWED_PRD_IDX_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_VIEWED_PRD_IDX_PRD_ID_M2_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reports Viewed Product Index Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_report_viewed_product_index`
--

LOCK TABLES `m2_report_viewed_product_index` WRITE;
/*!40000 ALTER TABLE `m2_report_viewed_product_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_report_viewed_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_reporting_counts`
--

DROP TABLE IF EXISTS `m2_reporting_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_reporting_counts` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reporting for all count related events generated via the cron job';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_reporting_counts`
--

LOCK TABLES `m2_reporting_counts` WRITE;
/*!40000 ALTER TABLE `m2_reporting_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_reporting_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_reporting_module_status`
--

DROP TABLE IF EXISTS `m2_reporting_module_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_reporting_module_status` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Module Status Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_reporting_module_status`
--

LOCK TABLES `m2_reporting_module_status` WRITE;
/*!40000 ALTER TABLE `m2_reporting_module_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_reporting_module_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_reporting_orders`
--

DROP TABLE IF EXISTS `m2_reporting_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_reporting_orders` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `total` decimal(20,4) unsigned DEFAULT NULL,
  `total_base` decimal(20,4) unsigned DEFAULT NULL,
  `item_count` int unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reporting for all orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_reporting_orders`
--

LOCK TABLES `m2_reporting_orders` WRITE;
/*!40000 ALTER TABLE `m2_reporting_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_reporting_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_reporting_system_updates`
--

DROP TABLE IF EXISTS `m2_reporting_system_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_reporting_system_updates` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reporting for system updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_reporting_system_updates`
--

LOCK TABLES `m2_reporting_system_updates` WRITE;
/*!40000 ALTER TABLE `m2_reporting_system_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_reporting_system_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_reporting_users`
--

DROP TABLE IF EXISTS `m2_reporting_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_reporting_users` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Reporting for user actions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_reporting_users`
--

LOCK TABLES `m2_reporting_users` WRITE;
/*!40000 ALTER TABLE `m2_reporting_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_reporting_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review`
--

DROP TABLE IF EXISTS `m2_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review` (
  `review_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `entity_pk_value` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `status_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `M2_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `M2_REVIEW_STATUS_ID` (`status_id`),
  KEY `M2_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`),
  CONSTRAINT `M2_REVIEW_ENTITY_ID_M2_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_review_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REVIEW_STATUS_ID_M2_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `m2_review_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Review base information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review`
--

LOCK TABLES `m2_review` WRITE;
/*!40000 ALTER TABLE `m2_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review_detail`
--

DROP TABLE IF EXISTS `m2_review_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review_detail` (
  `detail_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail ID',
  `review_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Review ID',
  `store_id` smallint unsigned DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  PRIMARY KEY (`detail_id`),
  KEY `M2_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `M2_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `M2_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `M2_REVIEW_DETAIL_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_REVIEW_DETAIL_REVIEW_ID_M2_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `m2_review` (`review_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REVIEW_DETAIL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Review detail information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review_detail`
--

LOCK TABLES `m2_review_detail` WRITE;
/*!40000 ALTER TABLE `m2_review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review_entity`
--

DROP TABLE IF EXISTS `m2_review_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review_entity` (
  `entity_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity ID',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Review entities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review_entity`
--

LOCK TABLES `m2_review_entity` WRITE;
/*!40000 ALTER TABLE `m2_review_entity` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_review_entity` VALUES (1,'product'),(2,'customer'),(3,'category');
/*!40000 ALTER TABLE `m2_review_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review_entity_summary`
--

DROP TABLE IF EXISTS `m2_review_entity_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review_entity_summary` (
  `primary_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity ID',
  `entity_pk_value` bigint NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `entity_type` smallint NOT NULL DEFAULT '0' COMMENT 'Entity type ID',
  `reviews_count` smallint NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`primary_id`),
  UNIQUE KEY `M2_REVIEW_ENTITY_SUMMARY_ENTITY_PK_VALUE_STORE_ID_ENTITY_TYPE` (`entity_pk_value`,`store_id`,`entity_type`),
  KEY `M2_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`),
  CONSTRAINT `M2_REVIEW_ENTITY_SUMMARY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Review aggregates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review_entity_summary`
--

LOCK TABLES `m2_review_entity_summary` WRITE;
/*!40000 ALTER TABLE `m2_review_entity_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_review_entity_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review_status`
--

DROP TABLE IF EXISTS `m2_review_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review_status` (
  `status_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status ID',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Review statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review_status`
--

LOCK TABLES `m2_review_status` WRITE;
/*!40000 ALTER TABLE `m2_review_status` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_review_status` VALUES (1,'Approved'),(2,'Pending'),(3,'Not Approved');
/*!40000 ALTER TABLE `m2_review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_review_store`
--

DROP TABLE IF EXISTS `m2_review_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_review_store` (
  `review_id` bigint unsigned NOT NULL COMMENT 'Review ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `M2_REVIEW_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_REVIEW_STORE_REVIEW_ID_M2_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `m2_review` (`review_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_REVIEW_STORE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Review Store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_review_store`
--

LOCK TABLES `m2_review_store` WRITE;
/*!40000 ALTER TABLE `m2_review_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_review_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `m2_sales_bestsellers_aggregated_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_bestsellers_aggregated_daily` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Bestsellers Aggregated Daily';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_bestsellers_aggregated_daily`
--

LOCK TABLES `m2_sales_bestsellers_aggregated_daily` WRITE;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `m2_sales_bestsellers_aggregated_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_bestsellers_aggregated_monthly` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Bestsellers Aggregated Monthly';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_bestsellers_aggregated_monthly`
--

LOCK TABLES `m2_sales_bestsellers_aggregated_monthly` WRITE;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `m2_sales_bestsellers_aggregated_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_bestsellers_aggregated_yearly` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `M2_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `M2_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Bestsellers Aggregated Yearly';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_bestsellers_aggregated_yearly`
--

LOCK TABLES `m2_sales_bestsellers_aggregated_yearly` WRITE;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_bestsellers_aggregated_yearly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_creditmemo`
--

DROP TABLE IF EXISTS `m2_sales_creditmemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_creditmemo` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `email_sent` smallint unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int DEFAULT NULL COMMENT 'Shipping Address ID',
  `billing_address_id` int DEFAULT NULL COMMENT 'Billing Address ID',
  `invoice_id` int DEFAULT NULL COMMENT 'Invoice ID',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `M2_SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `M2_SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `M2_SALES_CREDITMEMO_STATE` (`state`),
  KEY `M2_SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `M2_SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `M2_SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `M2_SALES_CREDITMEMO_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_CREDITMEMO_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Creditmemo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_creditmemo`
--

LOCK TABLES `m2_sales_creditmemo` WRITE;
/*!40000 ALTER TABLE `m2_sales_creditmemo` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_creditmemo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_creditmemo_comment`
--

DROP TABLE IF EXISTS `m2_sales_creditmemo_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_creditmemo_comment` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `M2_SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_93B806D95FB2F2A7A611ADCC4BBFD03A` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_creditmemo` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Creditmemo Comment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_creditmemo_comment`
--

LOCK TABLES `m2_sales_creditmemo_comment` WRITE;
/*!40000 ALTER TABLE `m2_sales_creditmemo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_creditmemo_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_creditmemo_grid`
--

DROP TABLE IF EXISTS `m2_sales_creditmemo_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_creditmemo_grid` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint DEFAULT NULL COMMENT 'Customer Group ID',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `M2_SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `M2_SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `M2_SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `M2_SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `M2_SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `M2_SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `M2_SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `M2_SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `M2_SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_2AC83121C2D3E3440F759DAC394D104C` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Creditmemo Grid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_creditmemo_grid`
--

LOCK TABLES `m2_sales_creditmemo_grid` WRITE;
/*!40000 ALTER TABLE `m2_sales_creditmemo_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_creditmemo_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_creditmemo_item`
--

DROP TABLE IF EXISTS `m2_sales_creditmemo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_creditmemo_item` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_CREDITMEMO_ITEM_PARENT_ID_M2_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_creditmemo` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Creditmemo Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_creditmemo_item`
--

LOCK TABLES `m2_sales_creditmemo_item` WRITE;
/*!40000 ALTER TABLE `m2_sales_creditmemo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_creditmemo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoice`
--

DROP TABLE IF EXISTS `m2_sales_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoice` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int DEFAULT NULL COMMENT 'Billing Address ID',
  `is_used_for_refund` smallint unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `email_sent` smallint unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int DEFAULT NULL COMMENT 'Shipping Address ID',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction ID',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `M2_SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `M2_SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `M2_SALES_INVOICE_STATE` (`state`),
  KEY `M2_SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `M2_SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `M2_SALES_INVOICE_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `M2_SALES_INVOICE_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_INVOICE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Invoice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoice`
--

LOCK TABLES `m2_sales_invoice` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoice_comment`
--

DROP TABLE IF EXISTS `m2_sales_invoice_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoice_comment` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` smallint unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `M2_SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_INVOICE_COMMENT_PARENT_ID_M2_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_invoice` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Invoice Comment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoice_comment`
--

LOCK TABLES `m2_sales_invoice_comment` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoice_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoice_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoice_grid`
--

DROP TABLE IF EXISTS `m2_sales_invoice_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoice_grid` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `state` int DEFAULT NULL COMMENT 'State',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int DEFAULT NULL,
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `M2_SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `M2_SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `M2_SALES_INVOICE_GRID_STATE` (`state`),
  KEY `M2_SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `M2_SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `M2_SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `M2_SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `M2_SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_D1A68C3DB87DF71E48B34A6B11D19CFE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Invoice Grid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoice_grid`
--

LOCK TABLES `m2_sales_invoice_grid` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoice_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoice_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoice_item`
--

DROP TABLE IF EXISTS `m2_sales_invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoice_item` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_INVOICE_ITEM_PARENT_ID_M2_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_invoice` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Invoice Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoice_item`
--

LOCK TABLES `m2_sales_invoice_item` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoice_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `m2_sales_invoiced_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoiced_aggregated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_INVOICED_AGGREGATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Invoiced Aggregated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoiced_aggregated`
--

LOCK TABLES `m2_sales_invoiced_aggregated` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoiced_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoiced_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `m2_sales_invoiced_aggregated_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_invoiced_aggregated_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Invoiced Aggregated Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_invoiced_aggregated_order`
--

LOCK TABLES `m2_sales_invoiced_aggregated_order` WRITE;
/*!40000 ALTER TABLE `m2_sales_invoiced_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_invoiced_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order`
--

DROP TABLE IF EXISTS `m2_sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int DEFAULT NULL COMMENT 'Billing Address ID',
  `customer_group_id` int DEFAULT NULL,
  `edit_increment` int DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int DEFAULT NULL COMMENT 'Quote Address ID',
  `quote_id` int DEFAULT NULL COMMENT 'Quote ID',
  `shipping_address_id` int DEFAULT NULL COMMENT 'Shipping Address ID',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(20,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(20,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer ID',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order ID',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment ID',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child ID',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real ID',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent ID',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real ID',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(120) DEFAULT NULL,
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `paypal_ipn_customer_notified` int DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_ORDER_STATUS` (`status`),
  KEY `M2_SALES_ORDER_STATE` (`state`),
  KEY `M2_SALES_ORDER_STORE_ID` (`store_id`),
  KEY `M2_SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `M2_SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `M2_SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `M2_SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `M2_SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `M2_SALES_ORDER_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `M2_SALES_ORDER_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_SALES_ORDER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order`
--

LOCK TABLES `m2_sales_order` WRITE;
/*!40000 ALTER TABLE `m2_sales_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_address`
--

DROP TABLE IF EXISTS `m2_sales_order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_address` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned DEFAULT NULL COMMENT 'Parent ID',
  `customer_address_id` int DEFAULT NULL COMMENT 'Customer Address ID',
  `quote_address_id` int DEFAULT NULL COMMENT 'Quote Address ID',
  `region_id` int DEFAULT NULL COMMENT 'Region ID',
  `customer_id` int DEFAULT NULL COMMENT 'Customer ID',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country ID',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat ID',
  `vat_is_valid` smallint DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request ID',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_ORDER_ADDRESS_PARENT_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order Address';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_address`
--

LOCK TABLES `m2_sales_order_address` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `m2_sales_order_aggregated_created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_aggregated_created` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Aggregated Created';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_aggregated_created`
--

LOCK TABLES `m2_sales_order_aggregated_created` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_aggregated_created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_aggregated_updated`
--

DROP TABLE IF EXISTS `m2_sales_order_aggregated_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_aggregated_updated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Aggregated Updated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_aggregated_updated`
--

LOCK TABLES `m2_sales_order_aggregated_updated` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_aggregated_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_grid`
--

DROP TABLE IF EXISTS `m2_sales_order_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_grid` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `pickup_location_code` varchar(255) DEFAULT NULL COMMENT 'Pickup Location Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_ORDER_GRID_STATUS` (`status`),
  KEY `M2_SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `M2_SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `M2_SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `M2_SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `M2_SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `M2_SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `M2_SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `M2_SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `M2_SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `M2_SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_ORDER_GRID_PICKUP_LOCATION_CODE` (`pickup_location_code`),
  FULLTEXT KEY `FTI_89DE11C139284B8CDC2ACBD3D365FFAC` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order Grid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_grid`
--

LOCK TABLES `m2_sales_order_grid` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_item`
--

DROP TABLE IF EXISTS `m2_sales_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_item` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `order_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID',
  `parent_item_id` int unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `quote_item_id` int unsigned DEFAULT NULL COMMENT 'Quote Item ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` longtext COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item ID',
  `locked_do_invoice` smallint unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int DEFAULT NULL COMMENT 'Gift Message ID',
  `gift_message_available` int DEFAULT NULL COMMENT 'Gift Message Available',
  `free_shipping` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `M2_SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `M2_SALES_ORDER_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_ORDER_ITEM_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_ORDER_ITEM_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_item`
--

LOCK TABLES `m2_sales_order_item` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_payment`
--

DROP TABLE IF EXISTS `m2_sales_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_payment` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `base_shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int DEFAULT NULL COMMENT 'Quote Payment ID',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans ID',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(128) DEFAULT NULL,
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans ID',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_ORDER_PAYMENT_PARENT_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order Payment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_payment`
--

LOCK TABLES `m2_sales_order_payment` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_status`
--

DROP TABLE IF EXISTS `m2_sales_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Status Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_status`
--

LOCK TABLES `m2_sales_order_status` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_status` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_sales_order_status` VALUES ('canceled','Canceled'),('closed','Closed'),('complete','Complete'),('fraud','Suspected Fraud'),('holded','On Hold'),('payment_review','Payment Review'),('paypal_canceled_reversal','PayPal Canceled Reversal'),('paypal_reversed','PayPal Reversed'),('pending','Pending'),('pending_payment','Pending Payment'),('pending_paypal','Pending PayPal'),('processing','Processing');
/*!40000 ALTER TABLE `m2_sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_status_history`
--

DROP TABLE IF EXISTS `m2_sales_order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_status_history` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `M2_SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`),
  CONSTRAINT `M2_SALES_ORDER_STATUS_HISTORY_PARENT_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Order Status History';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_status_history`
--

LOCK TABLES `m2_sales_order_status_history` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_status_label`
--

DROP TABLE IF EXISTS `m2_sales_order_status_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `M2_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_ORDER_STATUS_LABEL_STATUS_M2_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `m2_sales_order_status` (`status`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_ORDER_STATUS_LABEL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Status Label Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_status_label`
--

LOCK TABLES `m2_sales_order_status_label` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_status_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_status_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_status_state`
--

DROP TABLE IF EXISTS `m2_sales_order_status_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`),
  CONSTRAINT `M2_SALES_ORDER_STATUS_STATE_STATUS_M2_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `m2_sales_order_status` (`status`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Status Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_status_state`
--

LOCK TABLES `m2_sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_status_state` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_sales_order_status_state` VALUES ('canceled','canceled',1,1),('closed','closed',1,1),('complete','complete',1,1),('fraud','payment_review',0,1),('fraud','processing',0,1),('holded','holded',1,1),('payment_review','payment_review',1,1),('pending','new',1,1),('pending_payment','pending_payment',1,0),('processing','processing',1,1);
/*!40000 ALTER TABLE `m2_sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_tax`
--

DROP TABLE IF EXISTS `m2_sales_order_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_tax` (
  `tax_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax ID',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int NOT NULL COMMENT 'Priority',
  `position` int NOT NULL COMMENT 'Position',
  `base_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `M2_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Tax Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_tax`
--

LOCK TABLES `m2_sales_order_tax` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_order_tax_item`
--

DROP TABLE IF EXISTS `m2_sales_order_tax_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_order_tax_item` (
  `tax_item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item ID',
  `tax_id` int unsigned NOT NULL COMMENT 'Tax ID',
  `item_id` int unsigned DEFAULT NULL COMMENT 'Item ID',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(20,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(20,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(20,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(20,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `M2_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `FK_7782665B0D08E59FEFDC06B94FB9A801` (`associated_item_id`),
  KEY `M2_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_7782665B0D08E59FEFDC06B94FB9A801` FOREIGN KEY (`associated_item_id`) REFERENCES `m2_sales_order_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_ORDER_TAX_ITEM_ITEM_ID_M2_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `m2_sales_order_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_ORDER_TAX_ITEM_TAX_ID_M2_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `m2_sales_order_tax` (`tax_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Order Tax Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_order_tax_item`
--

LOCK TABLES `m2_sales_order_tax_item` WRITE;
/*!40000 ALTER TABLE `m2_sales_order_tax_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_order_tax_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_payment_transaction`
--

DROP TABLE IF EXISTS `m2_sales_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_payment_transaction` (
  `transaction_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction ID',
  `parent_id` int unsigned DEFAULT NULL COMMENT 'Parent ID',
  `order_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID',
  `payment_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Payment ID',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn ID',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn ID',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `M2_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `M2_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `M2_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`),
  CONSTRAINT `FK_99B55FCA6FF02FFCEE69584C48DBE634` FOREIGN KEY (`payment_id`) REFERENCES `m2_sales_order_payment` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B85A6676C186855ED55F5B9D2B031D0A` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_PAYMENT_TRANSACTION_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Payment Transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_payment_transaction`
--

LOCK TABLES `m2_sales_payment_transaction` WRITE;
/*!40000 ALTER TABLE `m2_sales_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `m2_sales_refunded_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_refunded_aggregated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_REFUNDED_AGGREGATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Refunded Aggregated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_refunded_aggregated`
--

LOCK TABLES `m2_sales_refunded_aggregated` WRITE;
/*!40000 ALTER TABLE `m2_sales_refunded_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_refunded_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `m2_sales_refunded_aggregated_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_refunded_aggregated_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `M2_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Refunded Aggregated Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_refunded_aggregated_order`
--

LOCK TABLES `m2_sales_refunded_aggregated_order` WRITE;
/*!40000 ALTER TABLE `m2_sales_refunded_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_refunded_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_sequence_meta`
--

DROP TABLE IF EXISTS `m2_sales_sequence_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_sequence_meta` (
  `meta_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `sequence_table` varchar(64) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `M2_SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='sales_sequence_meta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_sequence_meta`
--

LOCK TABLES `m2_sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `m2_sales_sequence_meta` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_sales_sequence_meta` VALUES (1,'order',0,'m2_sequence_order_0'),(2,'invoice',0,'m2_sequence_invoice_0'),(3,'creditmemo',0,'m2_sequence_creditmemo_0'),(4,'shipment',0,'m2_sequence_shipment_0'),(5,'order',1,'m2_sequence_order_1'),(6,'invoice',1,'m2_sequence_invoice_1'),(7,'creditmemo',1,'m2_sequence_creditmemo_1'),(8,'shipment',1,'m2_sequence_shipment_1');
/*!40000 ALTER TABLE `m2_sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_sequence_profile`
--

DROP TABLE IF EXISTS `m2_sales_sequence_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_sequence_profile` (
  `profile_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `meta_id` int unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `M2_SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`),
  CONSTRAINT `M2_SALES_SEQUENCE_PROFILE_META_ID_M2_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `m2_sales_sequence_meta` (`meta_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='sales_sequence_profile';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_sequence_profile`
--

LOCK TABLES `m2_sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `m2_sales_sequence_profile` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_sales_sequence_profile` VALUES (1,1,NULL,NULL,1,1,4294967295,4294966295,1),(2,2,NULL,NULL,1,1,4294967295,4294966295,1),(3,3,NULL,NULL,1,1,4294967295,4294966295,1),(4,4,NULL,NULL,1,1,4294967295,4294966295,1),(5,5,'ORD$',NULL,1,1,4294967295,4294966295,1),(6,6,NULL,NULL,1,1,4294967295,4294966295,1),(7,7,NULL,NULL,1,1,4294967295,4294966295,1),(8,8,NULL,NULL,1,1,4294967295,4294966295,1);
/*!40000 ALTER TABLE `m2_sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipment`
--

DROP TABLE IF EXISTS `m2_sales_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipment` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `customer_id` int DEFAULT NULL COMMENT 'Customer ID',
  `shipping_address_id` int DEFAULT NULL COMMENT 'Shipping Address ID',
  `billing_address_id` int DEFAULT NULL COMMENT 'Billing Address ID',
  `shipment_status` int DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `M2_SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `M2_SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `M2_SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `M2_SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `M2_SALES_SHIPMENT_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `M2_SALES_SHIPMENT_ORDER_ID_M2_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `m2_sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALES_SHIPMENT_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipment`
--

LOCK TABLES `m2_sales_shipment` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipment_comment`
--

DROP TABLE IF EXISTS `m2_sales_shipment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipment_comment` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `M2_SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_SHIPMENT_COMMENT_PARENT_ID_M2_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Shipment Comment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipment_comment`
--

LOCK TABLES `m2_sales_shipment_comment` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipment_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipment_grid`
--

DROP TABLE IF EXISTS `m2_sales_shipment_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipment_grid` (
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment ID',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Order Increment ID',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `M2_SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `M2_SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `M2_SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `M2_SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `M2_SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `M2_SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `M2_SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `M2_SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `M2_SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `M2_SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  KEY `M2_SALES_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_10B90E5A100C6E8E2ACB66683FE561A8` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Shipment Grid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipment_grid`
--

LOCK TABLES `m2_sales_shipment_grid` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipment_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipment_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipment_item`
--

DROP TABLE IF EXISTS `m2_sales_shipment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipment_item` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(20,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `M2_SALES_SHIPMENT_ITEM_PARENT_ID_M2_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Shipment Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipment_item`
--

LOCK TABLES `m2_sales_shipment_item` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipment_track`
--

DROP TABLE IF EXISTS `m2_sales_shipment_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipment_track` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int unsigned NOT NULL COMMENT 'Parent ID',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `M2_SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `M2_SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `M2_SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`),
  CONSTRAINT `M2_SALES_SHIPMENT_TRACK_PARENT_ID_M2_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `m2_sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Flat Shipment Track';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipment_track`
--

LOCK TABLES `m2_sales_shipment_track` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipment_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipment_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `m2_sales_shipping_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipping_aggregated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `M2_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_SHIPPING_AGGREGATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Shipping Aggregated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipping_aggregated`
--

LOCK TABLES `m2_sales_shipping_aggregated` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipping_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipping_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `m2_sales_shipping_aggregated_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sales_shipping_aggregated_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_992E8FFD5FACA9B9B436B47B8B1B69BD` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `M2_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Shipping Aggregated Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sales_shipping_aggregated_order`
--

LOCK TABLES `m2_sales_shipping_aggregated_order` WRITE;
/*!40000 ALTER TABLE `m2_sales_shipping_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sales_shipping_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule`
--

DROP TABLE IF EXISTS `m2_salesrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint unsigned DEFAULT NULL COMMENT 'Simple Free Shipping',
  PRIMARY KEY (`rule_id`),
  KEY `M2_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule`
--

LOCK TABLES `m2_salesrule` WRITE;
/*!40000 ALTER TABLE `m2_salesrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_coupon`
--

DROP TABLE IF EXISTS `m2_salesrule_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_coupon` (
  `coupon_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon ID',
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` datetime DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `M2_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `M2_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `M2_SALESRULE_COUPON_RULE_ID` (`rule_id`),
  CONSTRAINT `M2_SALESRULE_COUPON_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Coupon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_coupon`
--

LOCK TABLES `m2_salesrule_coupon` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_coupon_aggregated`
--

DROP TABLE IF EXISTS `m2_salesrule_coupon_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_coupon_aggregated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `M2_SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `M2_SALESRULE_COUPON_AGGREGATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Coupon Aggregated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_coupon_aggregated`
--

LOCK TABLES `m2_salesrule_coupon_aggregated` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_coupon_aggregated_order`
--

DROP TABLE IF EXISTS `m2_salesrule_coupon_aggregated_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_coupon_aggregated_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_F718CC9D34D3B34DF888F46081708FCC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`),
  CONSTRAINT `M2_SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Coupon Aggregated Order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_coupon_aggregated_order`
--

LOCK TABLES `m2_salesrule_coupon_aggregated_order` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_coupon_aggregated_updated`
--

DROP TABLE IF EXISTS `m2_salesrule_coupon_aggregated_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_coupon_aggregated_updated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C8F3B97EEE93754510096A3A1B224C64` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `M2_SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `M2_SALESRULE_COUPON_AGGRED_UPDATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Coupon Aggregated Updated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_coupon_aggregated_updated`
--

LOCK TABLES `m2_salesrule_coupon_aggregated_updated` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_coupon_aggregated_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `m2_salesrule_coupon_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_coupon_usage` (
  `coupon_id` int unsigned NOT NULL COMMENT 'Coupon ID',
  `customer_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `times_used` int unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `M2_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_74ADFB211D7A4CC3C8867E71C503615F` FOREIGN KEY (`coupon_id`) REFERENCES `m2_salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_COUPON_USAGE_CSTR_ID_M2_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Coupon Usage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_coupon_usage`
--

LOCK TABLES `m2_salesrule_coupon_usage` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_coupon_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_coupon_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_customer`
--

DROP TABLE IF EXISTS `m2_salesrule_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_customer` (
  `rule_customer_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer ID',
  `rule_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `times_used` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `M2_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `M2_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`),
  CONSTRAINT `M2_SALESRULE_CUSTOMER_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_CUSTOMER_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Customer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_customer`
--

LOCK TABLES `m2_salesrule_customer` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_customer_group`
--

DROP TABLE IF EXISTS `m2_salesrule_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_customer_group` (
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `M2_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_EE0F97DBD69528D2C3F7C61B7BFBEA76` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_CUSTOMER_GROUP_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Rules To Customer Groups Relations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_customer_group`
--

LOCK TABLES `m2_salesrule_customer_group` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_label`
--

DROP TABLE IF EXISTS `m2_salesrule_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_label` (
  `label_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label ID',
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `M2_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `M2_SALESRULE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SALESRULE_LABEL_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_LABEL_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Label';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_label`
--

LOCK TABLES `m2_salesrule_label` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_product_attribute`
--

DROP TABLE IF EXISTS `m2_salesrule_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_product_attribute` (
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  `customer_group_id` int unsigned NOT NULL COMMENT 'Customer Group ID',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `M2_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `M2_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `M2_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_SALESRULE_PRD_ATTR_ATTR_ID_M2_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_M2_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `m2_customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_PRD_ATTR_WS_ID_M2_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Salesrule Product Attribute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_product_attribute`
--

LOCK TABLES `m2_salesrule_product_attribute` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_salesrule_website`
--

DROP TABLE IF EXISTS `m2_salesrule_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_salesrule_website` (
  `rule_id` int unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `M2_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `M2_SALESRULE_WEBSITE_RULE_ID_M2_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `m2_salesrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SALESRULE_WEBSITE_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Sales Rules To Websites Relations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_salesrule_website`
--

LOCK TABLES `m2_salesrule_website` WRITE;
/*!40000 ALTER TABLE `m2_salesrule_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_salesrule_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_search_query`
--

DROP TABLE IF EXISTS `m2_search_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_search_query` (
  `query_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `M2_SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `M2_SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `M2_SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `M2_SEARCH_QUERY_IS_PROCESSED` (`is_processed`),
  KEY `M2_SEARCH_QUERY_STORE_ID_POPULARITY` (`store_id`,`popularity`),
  CONSTRAINT `M2_SEARCH_QUERY_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search query table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_search_query`
--

LOCK TABLES `m2_search_query` WRITE;
/*!40000 ALTER TABLE `m2_search_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_search_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_search_synonyms`
--

DROP TABLE IF EXISTS `m2_search_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_search_synonyms` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group ID',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID - identifies the store view these synonyms belong to',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID - identifies the website ID these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `M2_SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `M2_SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `M2_SEARCH_SYNONYMS_SYNONYMS` (`synonyms`),
  CONSTRAINT `M2_SEARCH_SYNONYMS_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_SEARCH_SYNONYMS_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table storing various synonyms groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_search_synonyms`
--

LOCK TABLES `m2_search_synonyms` WRITE;
/*!40000 ALTER TABLE `m2_search_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_search_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sendfriend_log`
--

DROP TABLE IF EXISTS `m2_sendfriend_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sendfriend_log` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `M2_SENDFRIEND_LOG_IP` (`ip`),
  KEY `M2_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Send to friend function log storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sendfriend_log`
--

LOCK TABLES `m2_sendfriend_log` WRITE;
/*!40000 ALTER TABLE `m2_sendfriend_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sendfriend_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_creditmemo_0`
--

DROP TABLE IF EXISTS `m2_sequence_creditmemo_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_creditmemo_0` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_creditmemo_0`
--

LOCK TABLES `m2_sequence_creditmemo_0` WRITE;
/*!40000 ALTER TABLE `m2_sequence_creditmemo_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_creditmemo_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_creditmemo_1`
--

DROP TABLE IF EXISTS `m2_sequence_creditmemo_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_creditmemo_1` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_creditmemo_1`
--

LOCK TABLES `m2_sequence_creditmemo_1` WRITE;
/*!40000 ALTER TABLE `m2_sequence_creditmemo_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_creditmemo_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_invoice_0`
--

DROP TABLE IF EXISTS `m2_sequence_invoice_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_invoice_0` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_invoice_0`
--

LOCK TABLES `m2_sequence_invoice_0` WRITE;
/*!40000 ALTER TABLE `m2_sequence_invoice_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_invoice_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_invoice_1`
--

DROP TABLE IF EXISTS `m2_sequence_invoice_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_invoice_1` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_invoice_1`
--

LOCK TABLES `m2_sequence_invoice_1` WRITE;
/*!40000 ALTER TABLE `m2_sequence_invoice_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_invoice_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_order_0`
--

DROP TABLE IF EXISTS `m2_sequence_order_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_order_0` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_order_0`
--

LOCK TABLES `m2_sequence_order_0` WRITE;
/*!40000 ALTER TABLE `m2_sequence_order_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_order_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_order_1`
--

DROP TABLE IF EXISTS `m2_sequence_order_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_order_1` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_order_1`
--

LOCK TABLES `m2_sequence_order_1` WRITE;
/*!40000 ALTER TABLE `m2_sequence_order_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_shipment_0`
--

DROP TABLE IF EXISTS `m2_sequence_shipment_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_shipment_0` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_shipment_0`
--

LOCK TABLES `m2_sequence_shipment_0` WRITE;
/*!40000 ALTER TABLE `m2_sequence_shipment_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_shipment_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sequence_shipment_1`
--

DROP TABLE IF EXISTS `m2_sequence_shipment_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sequence_shipment_1` (
  `sequence_value` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sequence_shipment_1`
--

LOCK TABLES `m2_sequence_shipment_1` WRITE;
/*!40000 ALTER TABLE `m2_sequence_shipment_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sequence_shipment_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_session`
--

DROP TABLE IF EXISTS `m2_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Database Sessions Storage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_session`
--

LOCK TABLES `m2_session` WRITE;
/*!40000 ALTER TABLE `m2_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_setup_module`
--

DROP TABLE IF EXISTS `m2_setup_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Module versions registry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_setup_module`
--

LOCK TABLES `m2_setup_module` WRITE;
/*!40000 ALTER TABLE `m2_setup_module` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_setup_module` VALUES ('Magento_GoogleShoppingAds','4.0.1','4.0.1'),('Magento_Securitytxt','1.0.0','1.0.0'),('PayPal_Braintree','4.4.0','4.4.0');
/*!40000 ALTER TABLE `m2_setup_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_shipping_tablerate`
--

DROP TABLE IF EXISTS `m2_shipping_tablerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_shipping_tablerate` (
  `pk` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int NOT NULL DEFAULT '0' COMMENT 'Destination Region ID',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(30) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_1BA2075E432824DC543F968510058E45` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Shipping Tablerate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_shipping_tablerate`
--

LOCK TABLES `m2_shipping_tablerate` WRITE;
/*!40000 ALTER TABLE `m2_shipping_tablerate` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_shipping_tablerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_sitemap`
--

DROP TABLE IF EXISTS `m2_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_sitemap` (
  `sitemap_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap ID',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`sitemap_id`),
  KEY `M2_SITEMAP_STORE_ID` (`store_id`),
  CONSTRAINT `M2_SITEMAP_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='XML Sitemap';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_sitemap`
--

LOCK TABLES `m2_sitemap` WRITE;
/*!40000 ALTER TABLE `m2_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_store`
--

DROP TABLE IF EXISTS `m2_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_store` (
  `store_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `group_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `M2_STORE_CODE` (`code`),
  KEY `M2_STORE_WEBSITE_ID` (`website_id`),
  KEY `M2_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `M2_STORE_GROUP_ID` (`group_id`),
  CONSTRAINT `M2_STORE_GROUP_ID_M2_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `m2_store_group` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_STORE_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Stores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_store`
--

LOCK TABLES `m2_store` WRITE;
/*!40000 ALTER TABLE `m2_store` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_store` VALUES (0,'admin',0,0,'Admin',0,1),(1,'default',1,1,'Default Store View',0,1);
/*!40000 ALTER TABLE `m2_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_store_group`
--

DROP TABLE IF EXISTS `m2_store_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_store_group` (
  `group_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category ID',
  `default_store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Store group unique code',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `M2_STORE_GROUP_CODE` (`code`),
  KEY `M2_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `M2_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`),
  CONSTRAINT `M2_STORE_GROUP_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Store Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_store_group`
--

LOCK TABLES `m2_store_group` WRITE;
/*!40000 ALTER TABLE `m2_store_group` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_store_group` VALUES (0,0,'Default',0,0,'default'),(1,1,'Main Website Store',2,1,'main_website_store');
/*!40000 ALTER TABLE `m2_store_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_store_website`
--

DROP TABLE IF EXISTS `m2_store_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_store_website` (
  `website_id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group ID',
  `is_default` smallint unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `M2_STORE_WEBSITE_CODE` (`code`),
  KEY `M2_STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `M2_STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Websites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_store_website`
--

LOCK TABLES `m2_store_website` WRITE;
/*!40000 ALTER TABLE `m2_store_website` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_store_website` VALUES (0,'admin','Admin',0,0,0),(1,'base','Main Website',0,1,1);
/*!40000 ALTER TABLE `m2_store_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_calculation`
--

DROP TABLE IF EXISTS `m2_tax_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_calculation` (
  `tax_calculation_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation ID',
  `tax_calculation_rate_id` int NOT NULL COMMENT 'Tax Calculation Rate ID',
  `tax_calculation_rule_id` int NOT NULL COMMENT 'Tax Calculation Rule ID',
  `customer_tax_class_id` smallint NOT NULL COMMENT 'Customer Tax Class ID',
  `product_tax_class_id` smallint NOT NULL COMMENT 'Product Tax Class ID',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `M2_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `M2_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `M2_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `M2_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`),
  CONSTRAINT `M2_TAX_CALC_TAX_CALC_RATE_ID_M2_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `m2_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_TAX_CALC_TAX_CALC_RULE_ID_M2_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `m2_tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_M2_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `m2_tax_class` (`class_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_M2_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `m2_tax_class` (`class_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tax Calculation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_calculation`
--

LOCK TABLES `m2_tax_calculation` WRITE;
/*!40000 ALTER TABLE `m2_tax_calculation` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tax_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_calculation_rate`
--

DROP TABLE IF EXISTS `m2_tax_calculation_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_calculation_rate` (
  `tax_calculation_rate_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate ID',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country ID',
  `tax_region_id` int NOT NULL COMMENT 'Tax Region ID',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `M2_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `M2_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_270000200FD7B83F73035CF2D4A43C3A` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Tax Calculation Rate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_calculation_rate`
--

LOCK TABLES `m2_tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `m2_tax_calculation_rate` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_tax_calculation_rate` VALUES (1,'US',12,'*','US-CA-*-Rate 1',8.2500,NULL,NULL,NULL),(2,'US',43,'*','US-NY-*-Rate 1',8.3750,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m2_tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `m2_tax_calculation_rate_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title ID',
  `tax_calculation_rate_id` int NOT NULL COMMENT 'Tax Calculation Rate ID',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `M2_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `M2_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_31CAA447CE9BAC4BD3AF43C698343212` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `m2_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_TAX_CALCULATION_RATE_TITLE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tax Calculation Rate Title';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_calculation_rate_title`
--

LOCK TABLES `m2_tax_calculation_rate_title` WRITE;
/*!40000 ALTER TABLE `m2_tax_calculation_rate_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tax_calculation_rate_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_calculation_rule`
--

DROP TABLE IF EXISTS `m2_tax_calculation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_calculation_rule` (
  `tax_calculation_rule_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int NOT NULL COMMENT 'Priority',
  `position` int NOT NULL COMMENT 'Position',
  `calculate_subtotal` int NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `M2_TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `M2_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tax Calculation Rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_calculation_rule`
--

LOCK TABLES `m2_tax_calculation_rule` WRITE;
/*!40000 ALTER TABLE `m2_tax_calculation_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tax_calculation_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_class`
--

DROP TABLE IF EXISTS `m2_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_class` (
  `class_id` smallint NOT NULL AUTO_INCREMENT COMMENT 'Class ID',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Tax Class';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_class`
--

LOCK TABLES `m2_tax_class` WRITE;
/*!40000 ALTER TABLE `m2_tax_class` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_tax_class` VALUES (2,'Taxable Goods','PRODUCT'),(3,'Retail Customer','CUSTOMER');
/*!40000 ALTER TABLE `m2_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `m2_tax_order_aggregated_created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_order_aggregated_created` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_61857306E31AC1642A7A667830FE5534` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `M2_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tax Order Aggregation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_order_aggregated_created`
--

LOCK TABLES `m2_tax_order_aggregated_created` WRITE;
/*!40000 ALTER TABLE `m2_tax_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tax_order_aggregated_created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tax_order_aggregated_updated`
--

DROP TABLE IF EXISTS `m2_tax_order_aggregated_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tax_order_aggregated_updated` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_3C34562395466C28017C2FFBC6850499` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `M2_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `M2_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Tax Order Aggregated Updated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tax_order_aggregated_updated`
--

LOCK TABLES `m2_tax_order_aggregated_updated` WRITE;
/*!40000 ALTER TABLE `m2_tax_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tax_order_aggregated_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tfa_country_codes`
--

DROP TABLE IF EXISTS `m2_tfa_country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tfa_country_codes` (
  `country_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'TFA admin user ID',
  `code` varchar(2) NOT NULL COMMENT 'Country code',
  `name` varchar(255) NOT NULL COMMENT 'Country name',
  `dial_code` varchar(255) NOT NULL COMMENT 'Prefix',
  PRIMARY KEY (`country_id`),
  KEY `M2_TFA_COUNTRY_CODES_CODE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb3 COMMENT='tfa_country_codes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tfa_country_codes`
--

LOCK TABLES `m2_tfa_country_codes` WRITE;
/*!40000 ALTER TABLE `m2_tfa_country_codes` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_tfa_country_codes` VALUES (1,'IL','Israel','+972'),(2,'AF','Afghanistan','+93'),(3,'AL','Albania','+355'),(4,'DZ','Algeria','+213'),(5,'AS','AmericanSamoa','+1 684'),(6,'AD','Andorra','+376'),(7,'AO','Angola','+244'),(8,'AI','Anguilla','+1 264'),(9,'AG','Antigua and Barbuda','+1268'),(10,'AR','Argentina','+54'),(11,'AM','Armenia','+374'),(12,'AW','Aruba','+297'),(13,'AU','Australia','+61'),(14,'AT','Austria','+43'),(15,'AZ','Azerbaijan','+994'),(16,'BS','Bahamas','+1 242'),(17,'BH','Bahrain','+973'),(18,'BD','Bangladesh','+880'),(19,'BB','Barbados','+1 246'),(20,'BY','Belarus','+375'),(21,'BE','Belgium','+32'),(22,'BZ','Belize','+501'),(23,'BJ','Benin','+229'),(24,'BM','Bermuda','+1 441'),(25,'BT','Bhutan','+975'),(26,'BA','Bosnia and Herzegovina','+387'),(27,'BW','Botswana','+267'),(28,'BR','Brazil','+55'),(29,'IO','British Indian Ocean Territory','+246'),(30,'BG','Bulgaria','+359'),(31,'BF','Burkina Faso','+226'),(32,'BI','Burundi','+257'),(33,'KH','Cambodia','+855'),(34,'CM','Cameroon','+237'),(35,'CA','Canada','+1'),(36,'CV','Cape Verde','+238'),(37,'KY','Cayman Islands','+ 345'),(38,'CF','Central African Republic','+236'),(39,'TD','Chad','+235'),(40,'CL','Chile','+56'),(41,'CN','China','+86'),(42,'CX','Christmas Island','+61'),(43,'CO','Colombia','+57'),(44,'KM','Comoros','+269'),(45,'CG','Congo','+242'),(46,'CK','Cook Islands','+682'),(47,'CR','Costa Rica','+506'),(48,'HR','Croatia','+385'),(49,'CU','Cuba','+53'),(50,'CY','Cyprus','+537'),(51,'CZ','Czech Republic','+420'),(52,'DK','Denmark','+45'),(53,'DJ','Djibouti','+253'),(54,'DM','Dominica','+1 767'),(55,'DO','Dominican Republic','+1 849'),(56,'EC','Ecuador','+593'),(57,'EG','Egypt','+20'),(58,'SV','El Salvador','+503'),(59,'GQ','Equatorial Guinea','+240'),(60,'ER','Eritrea','+291'),(61,'EE','Estonia','+372'),(62,'ET','Ethiopia','+251'),(63,'FO','Faroe Islands','+298'),(64,'FJ','Fiji','+679'),(65,'FI','Finland','+358'),(66,'FR','France','+33'),(67,'GF','French Guiana','+594'),(68,'PF','French Polynesia','+689'),(69,'GA','Gabon','+241'),(70,'GM','Gambia','+220'),(71,'GE','Georgia','+995'),(72,'DE','Germany','+49'),(73,'GH','Ghana','+233'),(74,'GI','Gibraltar','+350'),(75,'GR','Greece','+30'),(76,'GL','Greenland','+299'),(77,'GD','Grenada','+1 473'),(78,'GP','Guadeloupe','+590'),(79,'GU','Guam','+1 671'),(80,'GT','Guatemala','+502'),(81,'GN','Guinea','+224'),(82,'GW','Guinea-Bissau','+245'),(83,'GY','Guyana','+595'),(84,'HT','Haiti','+509'),(85,'HN','Honduras','+504'),(86,'HU','Hungary','+36'),(87,'IS','Iceland','+354'),(88,'IN','India','+91'),(89,'ID','Indonesia','+62'),(90,'IQ','Iraq','+964'),(91,'IE','Ireland','+353'),(92,'IL','Israel','+972'),(93,'IT','Italy','+39'),(94,'JM','Jamaica','+1 876'),(95,'JP','Japan','+81'),(96,'JO','Jordan','+962'),(97,'KZ','Kazakhstan','+7 7'),(98,'KE','Kenya','+254'),(99,'KI','Kiribati','+686'),(100,'KW','Kuwait','+965'),(101,'KG','Kyrgyzstan','+996'),(102,'LV','Latvia','+371'),(103,'LB','Lebanon','+961'),(104,'LS','Lesotho','+266'),(105,'LR','Liberia','+231'),(106,'LI','Liechtenstein','+423'),(107,'LT','Lithuania','+370'),(108,'LU','Luxembourg','+352'),(109,'MG','Madagascar','+261'),(110,'MW','Malawi','+265'),(111,'MY','Malaysia','+60'),(112,'MV','Maldives','+960'),(113,'ML','Mali','+223'),(114,'MT','Malta','+356'),(115,'MH','Marshall Islands','+692'),(116,'MQ','Martinique','+596'),(117,'MR','Mauritania','+222'),(118,'MU','Mauritius','+230'),(119,'YT','Mayotte','+262'),(120,'MX','Mexico','+52'),(121,'MC','Monaco','+377'),(122,'MN','Mongolia','+976'),(123,'ME','Montenegro','+382'),(124,'MS','Montserrat','+1664'),(125,'MA','Morocco','+212'),(126,'MM','Myanmar','+95'),(127,'NA','Namibia','+264'),(128,'NR','Nauru','+674'),(129,'NP','Nepal','+977'),(130,'NL','Netherlands','+31'),(131,'AN','Netherlands Antilles','+599'),(132,'NC','New Caledonia','+687'),(133,'NZ','New Zealand','+64'),(134,'NI','Nicaragua','+505'),(135,'NE','Niger','+227'),(136,'NG','Nigeria','+234'),(137,'NU','Niue','+683'),(138,'NF','Norfolk Island','+672'),(139,'MP','Northern Mariana Islands','+1 670'),(140,'NO','Norway','+47'),(141,'OM','Oman','+968'),(142,'PK','Pakistan','+92'),(143,'PW','Palau','+680'),(144,'PA','Panama','+507'),(145,'PG','Papua New Guinea','+675'),(146,'PY','Paraguay','+595'),(147,'PE','Peru','+51'),(148,'PH','Philippines','+63'),(149,'PL','Poland','+48'),(150,'PT','Portugal','+351'),(151,'PR','Puerto Rico','+1 939'),(152,'QA','Qatar','+974'),(153,'RO','Romania','+40'),(154,'RW','Rwanda','+250'),(155,'WS','Samoa','+685'),(156,'SM','San Marino','+378'),(157,'SA','Saudi Arabia','+966'),(158,'SN','Senegal','+221'),(159,'RS','Serbia','+381'),(160,'SC','Seychelles','+248'),(161,'SL','Sierra Leone','+232'),(162,'SG','Singapore','+65'),(163,'SK','Slovakia','+421'),(164,'SI','Slovenia','+386'),(165,'SB','Solomon Islands','+677'),(166,'ZA','South Africa','+27'),(167,'GS','South Georgia and the South Sandwich Islands','+500'),(168,'ES','Spain','+34'),(169,'LK','Sri Lanka','+94'),(170,'SD','Sudan','+249'),(171,'SR','Suriname','+597'),(172,'SZ','Swaziland','+268'),(173,'SE','Sweden','+46'),(174,'CH','Switzerland','+41'),(175,'TJ','Tajikistan','+992'),(176,'TH','Thailand','+66'),(177,'TG','Togo','+228'),(178,'TK','Tokelau','+690'),(179,'TO','Tonga','+676'),(180,'TT','Trinidad and Tobago','+1 868'),(181,'TN','Tunisia','+216'),(182,'TR','Turkey','+90'),(183,'TM','Turkmenistan','+993'),(184,'TC','Turks and Caicos Islands','+1 649'),(185,'TV','Tuvalu','+688'),(186,'UG','Uganda','+256'),(187,'UA','Ukraine','+380'),(188,'AE','United Arab Emirates','+971'),(189,'GB','United Kingdom','+44'),(190,'US','United States','+1'),(191,'UY','Uruguay','+598'),(192,'UZ','Uzbekistan','+998'),(193,'VU','Vanuatu','+678'),(194,'WF','Wallis and Futuna','+681'),(195,'YE','Yemen','+967'),(196,'ZM','Zambia','+260'),(197,'ZW','Zimbabwe','+263'),(198,'AX','land Islands',''),(199,'BO','Bolivia, Plurinational State of','+591'),(200,'BN','Brunei Darussalam','+673'),(201,'CC','Cocos (Keeling) Islands','+61'),(202,'CD','Congo, The Democratic Republic of the','+243'),(203,'CI','Cote d\'Ivoire','+225'),(204,'FK','Falkland Islands (Malvinas)','+500'),(205,'GG','Guernsey','+44'),(206,'VA','Holy See (Vatican City State)','+379'),(207,'HK','Hong Kong','+852'),(208,'IR','Iran, Islamic Republic of','+98'),(209,'IM','Isle of Man','+44'),(210,'JE','Jersey','+44'),(211,'KP','Korea, Democratic People\'s Republic of','+850'),(212,'KR','Korea, Republic of','+82'),(213,'LA','Lao People\'s Democratic Republic','+856'),(214,'LY','Libyan Arab Jamahiriya','+218'),(215,'MO','Macao','+853'),(216,'MK','Macedonia, The Former Yugoslav Republic of','+389'),(217,'FM','Micronesia, Federated States of','+691'),(218,'MD','Moldova, Republic of','+373'),(219,'MZ','Mozambique','+258'),(220,'PS','Palestinian Territory, Occupied','+970'),(221,'PN','Pitcairn','+872'),(222,'RE','Réunion','+262'),(223,'RU','Russia','+7'),(224,'BL','Saint Barthélemy','+590'),(225,'SH','Saint Helena, Ascension and Tristan Da Cunha','+290'),(226,'KN','Saint Kitts and Nevis','+1 869'),(227,'LC','Saint Lucia','+1 758'),(228,'MF','Saint Martin','+590'),(229,'PM','Saint Pierre and Miquelon','+508'),(230,'VC','Saint Vincent and the Grenadines','+1 784'),(231,'ST','Sao Tome and Principe','+239'),(232,'SO','Somalia','+252'),(233,'SJ','Svalbard and Jan Mayen','+47'),(234,'SY','Syrian Arab Republic','+963'),(235,'TW','Taiwan, Province of China','+886'),(236,'TZ','Tanzania, United Republic of','+255'),(237,'TL','Timor-Leste','+670'),(238,'VE','Venezuela, Bolivarian Republic of','+58'),(239,'VN','Viet Nam','+84'),(240,'VG','Virgin Islands, British','+1 284'),(241,'VI','Virgin Islands, U.S.','+1 340');
/*!40000 ALTER TABLE `m2_tfa_country_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_tfa_user_config`
--

DROP TABLE IF EXISTS `m2_tfa_user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_tfa_user_config` (
  `config_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'TFA admin user ID',
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `encoded_providers` text COMMENT 'Encoded providers list',
  `encoded_config` text COMMENT 'Encoded providers configuration',
  `default_provider` varchar(255) DEFAULT NULL COMMENT 'Default provider',
  PRIMARY KEY (`config_id`),
  KEY `M2_TFA_USER_CONFIG_USER_ID_M2_ADMIN_USER_USER_ID` (`user_id`),
  CONSTRAINT `M2_TFA_USER_CONFIG_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='tfa_user_config';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_tfa_user_config`
--

LOCK TABLES `m2_tfa_user_config` WRITE;
/*!40000 ALTER TABLE `m2_tfa_user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_tfa_user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_theme`
--

DROP TABLE IF EXISTS `m2_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_theme` (
  `theme_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int DEFAULT NULL COMMENT 'Parent ID',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Core theme';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_theme`
--

LOCK TABLES `m2_theme` WRITE;
/*!40000 ALTER TABLE `m2_theme` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_theme` VALUES (1,NULL,'Magento/blank','Magento Blank','preview_image_658330902f898.jpeg',0,'frontend',0,'Magento/blank'),(2,NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),(3,1,'Magento/luma','Magento Luma','preview_image_658330903b87f.jpeg',0,'frontend',0,'Magento/luma');
/*!40000 ALTER TABLE `m2_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_theme_file`
--

DROP TABLE IF EXISTS `m2_theme_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_theme_file` (
  `theme_files_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int unsigned NOT NULL COMMENT 'Theme ID',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `M2_THEME_FILE_THEME_ID_M2_THEME_THEME_ID` (`theme_id`),
  CONSTRAINT `M2_THEME_FILE_THEME_ID_M2_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `m2_theme` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Core theme files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_theme_file`
--

LOCK TABLES `m2_theme_file` WRITE;
/*!40000 ALTER TABLE `m2_theme_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_theme_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_translation`
--

DROP TABLE IF EXISTS `m2_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_translation` (
  `key_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key ID of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `M2_TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  CONSTRAINT `M2_TRANSLATION_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Translations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_translation`
--

LOCK TABLES `m2_translation` WRITE;
/*!40000 ALTER TABLE `m2_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_ui_bookmark`
--

DROP TABLE IF EXISTS `m2_ui_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_ui_bookmark` (
  `bookmark_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `M2_UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`),
  CONSTRAINT `M2_UI_BOOKMARK_USER_ID_M2_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `m2_admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Bookmark';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_ui_bookmark`
--

LOCK TABLES `m2_ui_bookmark` WRITE;
/*!40000 ALTER TABLE `m2_ui_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_url_rewrite`
--

DROP TABLE IF EXISTS `m2_url_rewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_url_rewrite` (
  `url_rewrite_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite ID',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint unsigned NOT NULL COMMENT 'Store ID',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `M2_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `M2_URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `M2_URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`),
  KEY `M2_URL_REWRITE_ENTITY_ID` (`entity_id`),
  KEY `M2_URL_REWRITE_IS_AUTOGENERATED_METADATA` (`is_autogenerated`,`metadata`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='Url Rewrites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_url_rewrite`
--

LOCK TABLES `m2_url_rewrite` WRITE;
/*!40000 ALTER TABLE `m2_url_rewrite` DISABLE KEYS */;
INSERT  IGNORE INTO `m2_url_rewrite` VALUES (1,'cms-page',1,'no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),(2,'cms-page',2,'home','cms/page/view/page_id/2',0,1,NULL,1,NULL),(3,'cms-page',3,'enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),(4,'cms-page',4,'privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL);
/*!40000 ALTER TABLE `m2_url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_variable`
--

DROP TABLE IF EXISTS `m2_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_variable` (
  `variable_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `M2_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_variable`
--

LOCK TABLES `m2_variable` WRITE;
/*!40000 ALTER TABLE `m2_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_variable_value`
--

DROP TABLE IF EXISTS `m2_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_variable_value` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value ID',
  `variable_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Variable ID',
  `store_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `M2_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `M2_VARIABLE_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `M2_VARIABLE_VALUE_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_VARIABLE_VALUE_VARIABLE_ID_M2_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `m2_variable` (`variable_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Variable Value';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_variable_value`
--

LOCK TABLES `m2_variable_value` WRITE;
/*!40000 ALTER TABLE `m2_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_vault_payment_token`
--

DROP TABLE IF EXISTS `m2_vault_payment_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_vault_payment_token` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int unsigned DEFAULT NULL COMMENT 'Customer ID',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `M2_VAULT_PAYMENT_TOKEN_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `M2_VAULT_PAYMENT_TOKEN_PAYMENT_METHOD_CODE_CSTR_ID_GATEWAY_TOKEN` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `M2_VAULT_PAYMENT_TOKEN_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  CONSTRAINT `M2_VAULT_PAYMENT_TOKEN_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Vault tokens of payment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_vault_payment_token`
--

LOCK TABLES `m2_vault_payment_token` WRITE;
/*!40000 ALTER TABLE `m2_vault_payment_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_vault_payment_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_vault_payment_token_order_payment_link`
--

DROP TABLE IF EXISTS `m2_vault_payment_token_order_payment_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_vault_payment_token_order_payment_link` (
  `order_payment_id` int unsigned NOT NULL COMMENT 'Order payment ID',
  `payment_token_id` int unsigned NOT NULL COMMENT 'Payment token ID',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_5709AD880997059C93C64CF36EB19F7E` (`payment_token_id`),
  CONSTRAINT `FK_1C7FC2B4CAF2E19C18D55AF3949454D8` FOREIGN KEY (`order_payment_id`) REFERENCES `m2_sales_order_payment` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5709AD880997059C93C64CF36EB19F7E` FOREIGN KEY (`payment_token_id`) REFERENCES `m2_vault_payment_token` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Order payments to vault token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_vault_payment_token_order_payment_link`
--

LOCK TABLES `m2_vault_payment_token_order_payment_link` WRITE;
/*!40000 ALTER TABLE `m2_vault_payment_token_order_payment_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_vault_payment_token_order_payment_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_weee_tax`
--

DROP TABLE IF EXISTS `m2_weee_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_weee_tax` (
  `value_id` int NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `website_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `entity_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`value_id`),
  KEY `M2_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `M2_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `M2_WEEE_TAX_COUNTRY` (`country`),
  KEY `M2_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `M2_WEEE_TAX_ATTRIBUTE_ID_M2_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `m2_eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_WEEE_TAX_COUNTRY_M2_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `m2_directory_country` (`country_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_WEEE_TAX_ENTITY_ID_M2_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_WEEE_TAX_WEBSITE_ID_M2_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `m2_store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Weee Tax';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_weee_tax`
--

LOCK TABLES `m2_weee_tax` WRITE;
/*!40000 ALTER TABLE `m2_weee_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_weee_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_widget`
--

DROP TABLE IF EXISTS `m2_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_widget` (
  `widget_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget ID',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `M2_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Preconfigured Widgets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_widget`
--

LOCK TABLES `m2_widget` WRITE;
/*!40000 ALTER TABLE `m2_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_widget_instance`
--

DROP TABLE IF EXISTS `m2_widget_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_widget_instance` (
  `instance_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance ID',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int unsigned NOT NULL COMMENT 'Theme ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `M2_WIDGET_INSTANCE_THEME_ID_M2_THEME_THEME_ID` (`theme_id`),
  CONSTRAINT `M2_WIDGET_INSTANCE_THEME_ID_M2_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `m2_theme` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Instances of Widget for Package Theme';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_widget_instance`
--

LOCK TABLES `m2_widget_instance` WRITE;
/*!40000 ALTER TABLE `m2_widget_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_widget_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_widget_instance_page`
--

DROP TABLE IF EXISTS `m2_widget_instance_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_widget_instance_page` (
  `page_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `instance_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Instance ID',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `M2_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`),
  CONSTRAINT `FK_8A09FFA144BDB6204877CC0B3BE55883` FOREIGN KEY (`instance_id`) REFERENCES `m2_widget_instance` (`instance_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Instance of Widget on Page';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_widget_instance_page`
--

LOCK TABLES `m2_widget_instance_page` WRITE;
/*!40000 ALTER TABLE `m2_widget_instance_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_widget_instance_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_widget_instance_page_layout`
--

DROP TABLE IF EXISTS `m2_widget_instance_page_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_widget_instance_page_layout` (
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID',
  `layout_update_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update ID',
  PRIMARY KEY (`layout_update_id`,`page_id`),
  KEY `M2_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  CONSTRAINT `FK_53EDA9578FC1C71137256AF2D5575DED` FOREIGN KEY (`layout_update_id`) REFERENCES `m2_layout_update` (`layout_update_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E33FE3DFDDAC473E51D7C88213A22A3D` FOREIGN KEY (`page_id`) REFERENCES `m2_widget_instance_page` (`page_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Layout updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_widget_instance_page_layout`
--

LOCK TABLES `m2_widget_instance_page_layout` WRITE;
/*!40000 ALTER TABLE `m2_widget_instance_page_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_widget_instance_page_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_wishlist`
--

DROP TABLE IF EXISTS `m2_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_wishlist` (
  `wishlist_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `M2_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `M2_WISHLIST_SHARED` (`shared`),
  CONSTRAINT `M2_WISHLIST_CUSTOMER_ID_M2_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `m2_customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Wishlist main Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_wishlist`
--

LOCK TABLES `m2_wishlist` WRITE;
/*!40000 ALTER TABLE `m2_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_wishlist_item`
--

DROP TABLE IF EXISTS `m2_wishlist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_wishlist_item` (
  `wishlist_item_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `M2_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `M2_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `M2_WISHLIST_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `M2_WISHLIST_ITEM_PRODUCT_ID_M2_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `m2_catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `M2_WISHLIST_ITEM_STORE_ID_M2_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `m2_store` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `M2_WISHLIST_ITEM_WISHLIST_ID_M2_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `m2_wishlist` (`wishlist_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Wishlist items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_wishlist_item`
--

LOCK TABLES `m2_wishlist_item` WRITE;
/*!40000 ALTER TABLE `m2_wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2_wishlist_item_option`
--

DROP TABLE IF EXISTS `m2_wishlist_item_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2_wishlist_item_option` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `wishlist_item_id` int unsigned NOT NULL COMMENT 'Wishlist Item ID',
  `product_id` int unsigned NOT NULL COMMENT 'Product ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_F47D603D5BB4A390731E3905EBD56F16` (`wishlist_item_id`),
  CONSTRAINT `FK_F47D603D5BB4A390731E3905EBD56F16` FOREIGN KEY (`wishlist_item_id`) REFERENCES `m2_wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Wishlist Item Option Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2_wishlist_item_option`
--

LOCK TABLES `m2_wishlist_item_option` WRITE;
/*!40000 ALTER TABLE `m2_wishlist_item_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2_wishlist_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'magento_db'
--

--
-- Dumping routines for database 'magento_db'
--

--
-- Final view structure for view `m2_inventory_stock_1`
--

/*!50001 DROP VIEW IF EXISTS `m2_inventory_stock_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 */
/*!50001 VIEW `m2_inventory_stock_1` AS select distinct `legacy_stock_status`.`product_id` AS `product_id`,`legacy_stock_status`.`website_id` AS `website_id`,`legacy_stock_status`.`stock_id` AS `stock_id`,`legacy_stock_status`.`qty` AS `quantity`,`legacy_stock_status`.`stock_status` AS `is_salable`,`product`.`sku` AS `sku` from (`m2_cataloginventory_stock_status` `legacy_stock_status` join `m2_catalog_product_entity` `product` on((`legacy_stock_status`.`product_id` = `product`.`entity_id`))) */;
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

-- Dump completed on 2023-12-21 12:03:50