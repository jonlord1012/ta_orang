-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.27-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for resto_online
CREATE DATABASE IF NOT EXISTS `resto_online` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `resto_online`;


-- Dumping structure for table resto_online.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.category: ~4 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `active`) VALUES
	(1, 'FOOD', 1),
	(2, 'BEVERAGES', 1),
	(3, 'SNACK', 1),
	(4, 'DESSERT', 1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table resto_online.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.company: ~1 rows (approximately)
DELETE FROM `company`;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
	(1, 'BinJava', '', '10', 'Bekasi', '89692711143', 'Indonesia', 'this is just an testing', 'IDR');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


-- Dumping structure for table resto_online.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.groups: ~5 rows (approximately)
DELETE FROM `groups`;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
	(1, 'Super Administrator', 'a:32:{i:0;s:10:"createUser";i:1;s:10:"updateUser";i:2;s:8:"viewUser";i:3;s:10:"deleteUser";i:4;s:11:"createGroup";i:5;s:11:"updateGroup";i:6;s:9:"viewGroup";i:7;s:11:"deleteGroup";i:8;s:11:"createStore";i:9;s:11:"updateStore";i:10;s:9:"viewStore";i:11;s:11:"deleteStore";i:12;s:11:"createTable";i:13;s:11:"updateTable";i:14;s:9:"viewTable";i:15;s:11:"deleteTable";i:16;s:14:"createCategory";i:17;s:14:"updateCategory";i:18;s:12:"viewCategory";i:19;s:14:"deleteCategory";i:20;s:13:"createProduct";i:21;s:13:"updateProduct";i:22;s:11:"viewProduct";i:23;s:13:"deleteProduct";i:24;s:11:"createOrder";i:25;s:11:"updateOrder";i:26;s:9:"viewOrder";i:27;s:11:"deleteOrder";i:28;s:10:"viewReport";i:29;s:13:"updateCompany";i:30;s:11:"viewProfile";i:31;s:13:"updateSetting";}'),
	(4, 'Members', 'a:9:{i:0;s:9:"viewStore";i:1;s:11:"deleteStore";i:2;s:9:"viewTable";i:3;s:11:"deleteTable";i:4;s:12:"viewCategory";i:5;s:11:"viewProduct";i:6;s:11:"createOrder";i:7;s:11:"updateOrder";i:8;s:9:"viewOrder";}'),
	(5, 'Staff', 'a:6:{i:0;s:9:"viewTable";i:1;s:11:"viewProduct";i:2;s:11:"createOrder";i:3;s:11:"updateOrder";i:4;s:9:"viewOrder";i:5;s:11:"viewProfile";}'),
	(6, 'ORDERS', 'a:5:{i:0;s:9:"viewTable";i:1;s:11:"viewProduct";i:2;s:11:"createOrder";i:3;s:11:"updateOrder";i:4;s:9:"viewOrder";}'),
	(7, 'KASIR', 'a:4:{i:0;s:9:"viewTable";i:1;s:11:"viewProduct";i:2;s:11:"updateOrder";i:3;s:9:"viewOrder";}');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table resto_online.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.orders: ~1 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
	(1, 'BILPR-C8C0', '1611248024', '45000.00', '', '0', '10', '4500.00', '', '49500.00', 1, 2, 2, 1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table resto_online.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.order_items: ~3 rows (approximately)
DELETE FROM `order_items`;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
	(4, 1, 3, '3', '5000', '15000.00'),
	(5, 1, 2, '2', '15000', '15000.00'),
	(6, 1, 1, '1', '15000', '15000.00');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;


-- Dumping structure for table resto_online.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.products: ~5 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
	(1, '["1"]', '["1"]', 'INDOMIE HEBOH KUAH', '15000', '<p>INDOMIE KUAH DENGAN KEHEBOHAN MAKSIMAL</p>', '<p>You did not select a file to upload.</p>', 1),
	(2, '["1"]', '["1"]', 'INDOMIE HEBOH GORENG', '15000', '<p>INDOMIE GORENG DENGAN KEHEBOHAN MAKSIMAL</p>', '<p>You did not select a file to upload.</p>', 1),
	(3, '["2"]', '["1"]', 'KOPI HITAM BIASA', '5000', '<p>KOPI ITEM BIASA, DI SEDUH BIASA, BIASA AJA DEH,</p><p>KECUALI RASA NYA YG TETEP LUAR BIASA<br></p>', '<p>You did not select a file to upload.</p>', 1),
	(4, '["2"]', '["1"]', 'ESPRESSO', '15000', '<p>BIAR KAYAK ORANG-ORANG<br></p>', '<p>You did not select a file to upload.</p>', 1),
	(5, '["2"]', '["1"]', 'ES KOPI BIASA', '8000', '<p>KOPI ITEM + ES ... <br></p><p>SEGEEER<br></p>', '<p>You did not select a file to upload.</p>', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Dumping structure for table resto_online.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.stores: ~1 rows (approximately)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `active`) VALUES
	(1, 'Bekasi1', 1);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;


-- Dumping structure for table resto_online.tables
CREATE TABLE IF NOT EXISTS `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.tables: ~4 rows (approximately)
DELETE FROM `tables`;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
	(1, 'T001', '4', 1, 1, 1),
	(2, 'T002', '10', 2, 1, 1),
	(3, 'T003', '4', 1, 1, 1),
	(4, 'T004', '2', 1, 1, 1);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;


-- Dumping structure for table resto_online.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.users: ~3 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
	(1, 'admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'binjava@local.local', 'Bin', 'Java', '89692711143', 1, 1),
	(6, 'order01', '$2y$10$/YjYhGojyadNUqqZSZDR/.HvnTiDfe6n0LyOntzGzK8r3TIAuiAgy', 'order@local.local', 'Order', 'BKS1', '', 1, 1),
	(7, 'kasir01', '$2y$10$3wf9rlX5FV5SUU5OxL0/v.Wd.PnHkTX17QSSjFH54g1W.FcvePJPu', 'kasir@local.local', 'Kasir', 'BKS1', '', 2, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table resto_online.user_group
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table resto_online.user_group: ~3 rows (approximately)
DELETE FROM `user_group`;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(7, 6, 6),
	(8, 7, 7);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
