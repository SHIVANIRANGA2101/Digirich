-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: digirich
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpu4bcbluhsxagirmbdn7dilm5` (`product_id`),
  KEY `FKg5uhi8vpsuy0lgloxk2h4w5o6` (`user_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKpu4bcbluhsxagirmbdn7dilm5` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Laptop','Top brands for Phones and Electronics. Latest trends in Fashion. Free Shipping available* Browse & Discover Thousands of products.','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTyiZ7Jzl6vLGPh0nxt87TjMl5AVXVobx0AQUikFiAX8-PziCoayS7_fK8siLR8&usqp=CAc'),(3,'Mobiles','Shop for Android, iOS, Dual-SIM mobiles & More. Brand Warranty. Pay COD. Best Deals. Huge Selection. Top Brands. No Cost EMI Available. Great Offers. Easy & Fast Delivery. Low Prices.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4smIFqSWm42Dx3_Rg10RnI6-fo_jtQrxRgw&usqp=CAU'),(4,'HeadPhones','Vast selection of components, accessories, adapters, media drives & more from top brands. Great Offers. Huge Selection. No Cost EMI Available. Top Brands. Easy & Fast Delivery. Best Deals. Low Prices.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrlJyW-75kWPcVF66KSdk1frsBgm9MkRJBSg&usqp=CAU'),(5,'Desktop PC','Vast selection of components, accessories, adapters, media drives & more from top brands. Best Deals. Easy & Fast Delivery. Huge Selection. Low Prices. No Cost EMI Available. Top Brands. Great Offers.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjK5rCZknr30n_QPVs_uaBX3U6GaWfPnElIw&usqp=CAU'),(6,'Cameras','Functional and user-friendly, digital cameras let you capture all the beautiful moments of your life with ease.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRk_Y86MEqFmVEkZRHV0zN-crF0ZUvbV302g&usqp=CAU');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `percentage` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (2,'WIPRO2k22',20),(3,'RPS2K22',25);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (25);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `ordered_item_id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ordered_item_id`),
  KEY `FKocimc7dtr037rh4ls4l95nlfi` (`product_id`),
  CONSTRAINT `FKocimc7dtr037rh4ls4l95nlfi` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1),(2,1,3);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `total_price` double NOT NULL,
  `ordered_item_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKe4bjgylbbx2i0t6s9wueh691i` (`ordered_item_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKe4bjgylbbx2i0t6s9wueh691i` FOREIGN KEY (`ordered_item_id`) REFERENCES `order_items` (`ordered_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2022-07-31 19:23:29.729000',100000,1,6),(2,'2022-08-01 12:35:22.343000',88900,2,6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'new ','https://www.lenovo.com/medias/ThinkBook-14-Gen-2-Intel-hero.png?context=bWFzdGVyfHJvb3R8NjYwMDh8aW1hZ2UvcG5nfGg2NC9oZjYvMTMwMzMyMzY0NjM2NDYucG5nfDdlZWU5OGJlYzllYWI0OTM2NDcyMjMwYzA4ZmY3OWRjZDFkNTI4NjgxNWJhOGRmNmZlYTE3OWUzODhmOWQyZjM',100000,'Apple Z',10,1),(3,'jj','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaYpw7jDtDLOzmTXiR3n1NJB-dIyht-TUN9u68qk44YQ&s',88900,'Hp Desktop',12,5),(4,'jj','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRltCkAkjp4534buB8Ofz_5ERfkzwPLbDkHyGHzPLwKww&s',6999,'NikonPro',17,6),(5,'ii','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGdi3qhBa1PFzMx3mWJuPZwsRpMpvh2YdAPn4afLDM&s',68999,'iphone 13',5,3),(6,'kk','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThYbvXbAllhzQRf3O9rczcJhobO6_1Yj6hty2YDEj_jw&s',8968,'Boat headphones',5,4),(7,'hh','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5DF3F4-So_23afC6jicgVrY9wDJB7mbpo3DwlKoKDpw&s',6589,'JBL Headphones',4,4),(10,'another new','https://m.media-amazon.com/images/I/81-fFXQdPTL._AC_UY327_FMwebp_QL65_.jpg',50000,'M13',10,3),(13,'Windows 10 laptop with a 14.00-inch display that has a resolution of 1920x1080 pixels. It is powered by a Core i7 processor and it comes with 12GB of RAM. The Lenovo ThinkPad packs 256GB of SSD storage. Graphics are powered by Intel HD Graphics 520.','https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Lenovo_ThinkPad_X1_Ultrabook.jpg/120px-Lenovo_ThinkPad_X1_Ultrabook.jpg',40000,'Lenovo ThinkPad X1 Ultrabook',20,1),(14,'Asus Vivobook 16X (M1603) ; Display resolution, 1920x1200 pixels ; Processor, Ryzen 5 ; OS, Windows 11 ; SSD, 512GB ; Weight, 1.80 kg.','https://upload.wikimedia.org/wikipedia/commons/5/53/Asus_x21_ultrabook.jpg',2000,'Asus vivobook',7,1),(15,'Windows 10 laptop with a 14.00-inch display that has a resolution of 1920x1080 pixels. It is powered by a Core i7 processor and it comes with 12GB of RAM. The Lenovo ThinkPad packs 256GB of SSD storage. Graphics are powered by Intel HD Graphics 520.','https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Lenovo_ThinkPad_X1_Ultrabook.jpg/120px-Lenovo_ThinkPad_X1_Ultrabook.jpg',40000,'Lenovo ThinkPad X1 Ultrabook',20,1),(16,'Asus Vivobook 16X (M1603) ; Display resolution, 1920x1200 pixels ; Processor, Ryzen 5 ; OS, Windows 11 ; SSD, 512GB ; Weight, 1.80 kg.','https://upload.wikimedia.org/wikipedia/commons/5/53/Asus_x21_ultrabook.jpg',2000,'Asus vivobook',7,1),(18,'HP NoteBook packs 256GB of SSD storage. Graphics are powered by Intel HD Graphics 620.','https://cdn.vox-cdn.com/thumbor/FaX7kJVuzCN9aJHK2ZGUlG0d6Gs=/1x0:1802x1013/1200x675/cdn.vox-cdn.com/uploads/chorus_image/image/70453028/thumb_v02_txtless.0.jpeg',42000,'Hp Notebook',4,1),(20,'noise cancellation','https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Headphones_1.jpg/1200px-Headphones_1.jpg',12000,'JBL Headphones',100,4),(21,'quality, reliability and affordability.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Desktop.jpg/930px-Desktop.jpg',79000,'Compaq Desktop',20,5),(23,'Network, Technology, GSM / CDMA / HSPA / LTE ; Launch, Announced, 2019, May 14 ; Body, Dimensions, 157.7 x 74.8 x 8.2 mm ','hhttps://www.91-cdn.com/hub/wp-content/uploads/2022/03/oneplus-9r-image-feat.png.jpeg',50000,'One plus 7',10,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `token_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `FK2dylsfo39lgjyqml2tbe0b0ss` (`user_id`),
  CONSTRAINT `FK2dylsfo39lgjyqml2tbe0b0ss` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (5,'2022-07-31 18:26:51.705000','f0f24ec2-6316-484b-9003-948ec30281c0',5),(6,'2022-07-31 19:00:44.767000','387b7d91-4118-46c6-9732-9c570b39748d',6),(7,'2022-08-01 08:37:41.290000','a0c97db1-48dd-4af2-9d1b-abcd29e85c70',7);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact_number` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'D.No: 7-0-1216Th ward,,nehru street.','Vizag',9999999999,'gayathri@gmail.com','Gayathri','Balla','$2a$10$hy9Pe9E..vF2daLSa3krB.ucUJNen8qViQhLP2BtiJenlUb4V1tNG','admin','AP',534789),(6,'D.No: 7-0-12,jubliee hills.','Hyderabad',8989898989,'shivani@gmail.com','Shivani','Ranga','$2a$10$xfraapqJ3ckm2Dz5rH22cO13repmi37gsKFFkL9kbAjE3/DD6pI/2','user','Telangana',678999),(7,'D.No: 16-0-12,12Th ward,,snhb street.','West Godavari',9090909090,'harsha@gmail.com','Harsha','Balla','$2a$10$3Y6/McP4RmOEe/JkRiQW5uPXmdI31CZgToWDx/DSNjPFXtZPo7/Gu','user','AP',788989);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6p7qhvy1bfkri13u29x6pu8au` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FK6p7qhvy1bfkri13u29x6pu8au` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 14:54:45
