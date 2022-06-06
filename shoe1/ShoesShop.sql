CREATE DATABASE  IF NOT EXISTS `shoesshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shoesshop`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shoesshop
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `GBNO` int NOT NULL AUTO_INCREMENT,
  `GBName` varchar(45) NOT NULL,
  `Content` text NOT NULL,
  `Putdate` date NOT NULL,
  `product` varchar(45) NOT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'王小花','好好穿','2022-06-02','1'),(2,'王小花','穿起來很舒服','2022-06-02','2'),(3,'王小花','讚','2022-06-02','3'),(4,'王小明','超級舒服','2022-06-02','4'),(5,'王小明','非常好穿!!','2022-06-03','5'),(6,'王小花','一定買爆!!','2022-06-03','6'),(7,'王小花','一定買爆!!','2022-06-03','7'),(8,'王小花','好棒!!','2022-06-03','5'),(9,'王小明','超讚!!','2022-06-03','5'),(10,'王小明','good!!','2022-06-03','5'),(11,'王小明','超棒!!','2022-06-03','5'),(12,'王小明','so good!','2022-06-03','2'),(13,'王小明','perfect!!','2022-06-03','3'),(14,'王小明','great!!','2022-06-03','5'),(15,'王小明','讚!!','2022-06-04',''),(16,'王小明','123','2022-06-04','1'),(17,'王小明','123','2022-06-04','1'),(18,'王小明','321','2022-06-04','1'),(19,'王小明','123','2022-06-04','2'),(20,'王小明','讚!!','2022-06-04','4'),(21,'王小明','讚!!','2022-06-05','7'),(22,'王小明','超棒!!','2022-06-05','4'),(23,'金大帥','穿起來很舒服!!','2022-06-06','7');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `count` int NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (6);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `account` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `times` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `evaluation` varchar(45) NOT NULL,
  `psatisfaction` varchar(45) NOT NULL,
  `recommend` varchar(45) NOT NULL,
  `point` varchar(45) NOT NULL,
  `where` varchar(45) NOT NULL,
  `speed` varchar(45) NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `Putdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('fbig123','金大帥','2次','1000-2000','靴子','還行','普通','不會','潮流','朋友連結','普通','','2022-06-06'),('ghj123','王小花','2次以上','2000元↑','休閒鞋','非常好','很喜歡','已推推','女友喜歡','電視廣告','極速','','2022-06-05'),('qwe123','王小明','1次','1000元↓','板鞋','不錯','不好','會','顏色','報紙','慢死了','','2022-06-05'),('qwe123','王小名','1次','null','null','null','null','null','null','null','null','','2022-06-06'),('qwe123','王小名','2次','1000-2000','休閒鞋','還行','不好','已推推','潮流','電視廣告','慢死了','','2022-06-06');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `account` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('abc123','123456789','陳大明','男','animal2','abc123@gmail.com','0987654321','桃園市桃園區100號'),('admin','12345','管理員','男','animal3','admin@gmail.com','0912345678','桃園市中壢區250號'),('bnm123','101010','王小春','男','animal1','bnm@gmail.com','0974563210','桃園市中壢區55號'),('cxz321','987654321','321',NULL,NULL,NULL,NULL,NULL),('ert123','741852963','黃小亮','男','animal1','tyu123@gmail.com','0901010101','桃園市桃園區50號'),('fbig123','123456789','金大帥','男','animal2','fbig@gmail.com','0987654321','高雄市'),('fgh123','123456789','蕭大搖','男','animal1','fgh123@gmail.com','0912121212','桃園市中壢區55號'),('ghj123','24682','王小花','女','animal3','asd123@gmail.com','0965432126','桃園市桃園區300號'),('qwe123','13579','王小名','男','animal1','qwe123@gmail.com','0912345678','桃園'),('zxc123','123456789','123',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_record`
--

DROP TABLE IF EXISTS `order_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_record` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `account` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `tolqua` int NOT NULL,
  `tolpri` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `method` varchar(45) NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `Putdate` datetime NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (1,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 03:00:00'),(2,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 03:00:00'),(3,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 03:00:00'),(4,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 03:00:00'),(5,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 03:00:00'),(6,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 05:00:00'),(7,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 05:00:00'),(8,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 05:00:00'),(9,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 05:00:00'),(10,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 05:00:00'),(11,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','','2022-06-01 08:00:00'),(12,'qwe123','王小明','鞋2',3,5250,'桃園市桃園區','7-11','','2022-06-01 08:00:00'),(13,'qwe123','王小明','鞋5',2,2000,'台北市信義區','全家','讚!!','2022-06-01 08:00:00'),(14,'qwe123','王小明','鞋6',1,2000,'台北市信義區','全家','讚!!','2022-06-01 08:00:00'),(15,'qwe123','王小明','鞋1',3,4500,'桃園市中壢區','7-11','便宜!!','2022-06-01 08:00:00'),(16,'qwe123','王小明','鞋2',3,5250,'桃園市中壢區','7-11','便宜!!','2022-06-01 12:00:00'),(17,'ghj123','王小花','鞋1',3,4500,'新北市','宅配','好棒!!','2022-06-01 12:00:00'),(18,'ghj123','王小明','鞋2',5,8750,'新北市','宅配','好棒!!','2022-06-01 12:00:00'),(19,'qwe123','王小明','鞋7',2,9200,'新竹市','全家','好便宜!!','2022-06-01 12:00:00'),(20,'qwe123','王小明','鞋8',3,12600,'新竹市','全家','好便宜!!','2022-06-01 12:00:00'),(21,'qwe123','王小明','鞋1',2,3000,'新竹縣','全家','棒!!','2022-06-01 12:30:00'),(22,'qwe123','王小明','鞋2',3,5250,'新竹縣','全家','棒!!','2022-06-01 12:30:00'),(23,'qwe123','王小明','鞋1',2,3000,'台南市','全家','超讚!!','2022-06-01 12:30:00'),(24,'qwe123','王小明','鞋2',3,5250,'台南市','全家','超讚!!','2022-06-01 12:30:00'),(25,'abc123','陳大明','鞋8',3,12600,'桃園市桃園區','7-11','讚讚讚!!!','2022-06-01 12:30:00'),(26,'qwe123','王小明','鞋1',2,3000,'桃園市桃園區','7-11','棒!!','2022-06-05 14:00:00'),(27,'qwe123','王小明','鞋3',3,6000,'桃園市桃園區','7-11','棒!!','2022-06-05 14:00:00'),(28,'ghj123','王小花','鞋9',2,4600,'桃園市中壢區','7-11','讚!!','2022-06-05 14:00:00'),(29,'ghj123','王小花','鞋10',1,1200,'桃園市中壢區','7-11','讚!!','2022-06-05 14:00:00'),(30,'ghj123','王小花','鞋5',1,1000,'桃園市中壢區','全家','讚!!','2022-06-05 14:00:00'),(31,'ghj123','王小花','鞋9',1,2300,'桃園市中壢區','全家','讚!!','2022-06-05 17:00:00'),(32,'ghj123','王小花','鞋10',2,2400,'台北市信義區','7-11','棒!!','2022-06-05 17:00:00'),(33,'ghj123','王小花','鞋8',3,12600,'台北市信義區','7-11','棒!!','2022-06-05 17:00:00'),(34,'qwe123','王小明','鞋15',1,3400,'桃園市桃園區','7-11','讚!!','2022-06-05 21:15:58'),(35,'qwe123','王小明','鞋16',2,4200,'桃園市桃園區','7-11','讚!!','2022-06-05 21:15:58'),(36,'qwe123','王小明','鞋4',2,7000,'桃園市中壢區','7-11','讚!!','2022-06-05 22:41:43'),(37,'ghj123','王小花','鞋16',3,6300,'台北市信義區','7-11','棒!!','2022-06-05 22:44:06'),(38,'qwe123','王小明','鞋1',1,1500,'桃園市中壢區','7-11','棒!!\r\n','2022-06-06 00:12:54'),(39,'qwe123','王小明','鞋1',1,1500,'桃園市中壢區','7-11','讚!!','2022-06-06 00:16:14'),(40,'qwe123','王小明','鞋12',2,5200,'桃園市中壢區','7-11','棒!!','2022-06-06 00:18:28'),(41,'qwe123','王小明','鞋7',2,9200,'桃園市桃園區','7-11','棒!!','2022-06-06 02:31:28'),(42,'qwe123','王小明','鞋8',3,12600,'桃園市桃園區','7-11','棒!!','2022-06-06 02:31:28'),(43,'fbig123','金大帥','鞋5',1,1000,'高雄市','全家','棒!!','2022-06-06 02:46:55'),(44,'fbig123','金大帥','鞋7',2,9200,'高雄市','全家','棒!!','2022-06-06 02:46:55'),(45,'qwe123','王小春','鞋1',1,1500,'桃園市桃園區','7-11','讚!!','2022-06-06 02:54:09'),(46,'qwe123','暱稱','鞋14',1,3900,'桃園市桃園區','7-11','','2022-06-06 10:16:48');
/*!40000 ALTER TABLE `order_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `describe` varchar(45) DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `color` varchar(45) NOT NULL,
  `size1` varchar(45) DEFAULT NULL,
  `size2` varchar(45) DEFAULT NULL,
  `size3` varchar(45) DEFAULT NULL,
  `size4` varchar(45) DEFAULT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'鞋1','./asset/image/s1.jpg',NULL,498,1500,'白色','25','26','27','28','板鞋'),(2,'鞋2','./asset/image/s2.jpg',NULL,600,1750,'白色','25','26','27','28','板鞋'),(3,'鞋3','./asset/image/s3.jpg',NULL,350,2000,'黑色','25','26','27','28','板鞋'),(4,'鞋4','./asset/image/s4.jpg',NULL,400,3500,'黑色','25','26','27','28','板鞋'),(5,'鞋5','./asset/image/s5.jpg',NULL,499,1000,'白色','25','26','27','28','運動鞋'),(6,'鞋6','./asset/image/s6.jpg',NULL,650,2000,'薄荷綠','25','26','27','28','運動鞋'),(7,'鞋7','./asset/image/s7.jpg',NULL,546,4600,'黑橘色','25','26','27','28','運動鞋'),(8,'鞋8','./asset/image/s8.jpg',NULL,427,4200,'黑金色','25','26','27','28','運動鞋'),(9,'鞋9','./asset/image/s9.jpg',NULL,510,2300,'褐色','25','26','27','28','靴子'),(10,'鞋10','./asset/image/s10.jpg',NULL,500,1200,'灰土色','25','26','27','28','靴子'),(11,'鞋11','./asset/image/s11.jpg',NULL,320,2500,'黑色','25','26','27','28','靴子'),(12,'鞋12','./asset/image/s12.jpg',NULL,398,2600,'黑色','25','26','27','28','靴子'),(13,'鞋13','./asset/image/s13.jpg',NULL,600,2700,'黑綠色','25','26','27','28','休閒鞋'),(14,'鞋14','./asset/image/s14.jpg',NULL,749,3900,'小麥色','25','26','27','28','休閒鞋'),(15,'鞋15','./asset/image/s15.jpg',NULL,650,3400,'杏仁白','25','26','27','28','休閒鞋'),(16,'鞋16','./asset/image/s16.jpg',NULL,530,2100,'褐色','25','26','27','28','休閒鞋');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `account` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `size` varchar(45) DEFAULT NULL,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06 11:25:58
