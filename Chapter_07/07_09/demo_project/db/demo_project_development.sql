
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `products_count` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `categories` VALUES (1,'Furniture','2016-12-12 14:23:05','2016-12-15 01:53:35','FURN',3,NULL),(2,'Clothes','2016-12-12 14:23:05','2016-12-15 02:24:01','CLTH',3,NULL),(3,'Books','2016-12-12 15:11:17','2016-12-14 17:12:36','BOOK',0,NULL),(4,'Mirrors','2016-12-14 19:14:05','2016-12-15 16:56:47','GEN',1,NULL),(6,'Garden','2016-12-15 02:26:45','2016-12-15 02:27:12','GEN',1,NULL),(7,'Tools','2016-12-15 03:13:19','2016-12-15 03:13:19','GEN',0,6),(8,'Hoses','2016-12-15 03:13:28','2016-12-15 03:13:28','GEN',0,6),(9,'Printed','2016-12-15 16:57:39','2016-12-15 16:58:15','GEN',1,NULL);

DROP TABLE IF EXISTS `mailing_lists_users`;
CREATE TABLE `mailing_lists_users` (
  `mailing_list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `inventory` int(11) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `restocked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty_sold` int(11) DEFAULT NULL,
  `ref_num` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_ref_num` (`ref_num`),
  KEY `index_products_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `products` VALUES (1,'Couch','Modern blue couch',200,100.00,'2016-12-08 22:59:04','2016-12-08 19:02:31','2016-12-08 22:59:04',21,'1000001',1,'OnlineProduct'),(2,'Chair','Brown chair',100,40.00,'2016-12-07 19:02:31','2016-12-08 19:02:31','2016-12-08 19:55:42',20,'1000002',1,'OnlineProduct'),(3,'Green shirt',NULL,100,10.00,NULL,'2016-12-09 16:35:03','2016-12-12 15:10:47',NULL,NULL,2,'OnlineProduct'),(4,'Sofa',NULL,1,300.00,NULL,'2016-12-09 17:10:15','2016-12-14 23:26:07',5,NULL,1,'OnlineProduct'),(6,'Large mirror',NULL,100,NULL,NULL,'2016-12-14 19:14:47','2016-12-15 16:56:47',NULL,NULL,4,'StoreProduct'),(10,'Snow boots',NULL,100,NULL,NULL,'2016-12-15 02:23:25','2016-12-15 02:23:25',NULL,NULL,2,'OnlineProduct'),(11,'Leather belt',NULL,100,NULL,NULL,'2016-12-15 02:24:01','2016-12-15 02:24:01',NULL,NULL,2,'OnlineProduct'),(12,'Shovel',NULL,100,NULL,NULL,'2016-12-15 02:27:12','2016-12-15 02:27:12',NULL,NULL,6,'OnlineProduct'),(13,'Catalog',NULL,1000,0.00,NULL,'2016-12-15 16:58:15','2016-12-15 16:58:15',NULL,NULL,9,'Unpurchasable');

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `schema_migrations` VALUES ('20161207181703'),('20161207181804'),('20161207181848'),('20161207181916'),('20161207201425'),('20161208170128'),('20161208172240'),('20161212132756'),('20161214171100'),('20161215015148'),('20161215031115'),('20161215165121');
