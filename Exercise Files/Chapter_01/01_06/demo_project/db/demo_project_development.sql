DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `mailing_lists_users`;

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
  `ref_num` varchar(255) DEFAULT NULL
  PRIMARY KEY (`id`),
  KEY `index_products_on_ref_num` (`ref_num`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `schema_migrations` VALUES ('20161207181703'),('20161207181804'),('20161207181848'),('20161207181916');
