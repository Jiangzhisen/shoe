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
INSERT INTO `counter` VALUES (13);
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
INSERT INTO `member` VALUES ('abc123','123456789','陳大明','男','animal2','abc123@gmail.com','0987654321','桃園市桃園區100號'),('admin','12345','管理員','男','animal3','admin@gmail.com','0912345678','桃園市中壢區250號'),('bnm123','101010','王小春','男','animal1','bnm@gmail.com','0974563210','桃園市中壢區55號'),('cxz321','987654321','321',NULL,NULL,NULL,NULL,NULL),('ert123','741852963','黃小亮','男','animal1','tyu123@gmail.com','0901010101','桃園市桃園區50號'),('fbig123','123456789','金大帥','男','animal2','fbig@gmail.com','0987654321','高雄市'),('fgh123','123456789','蕭大搖','男','animal1','fgh123@gmail.com','0912121212','桃園市中壢區55號'),('ghj123','24682','王小花','女','animal3','asd123@gmail.com','0965432126','桃園市桃園區300號'),('qwe123','13579','王小明','男','animal1','qwe123@gmail.com','0912345678','桃園市中壢區250號'),('zxc123','123456789','123',NULL,NULL,NULL,NULL,NULL);
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
  `picture` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `tolqua` int NOT NULL,
  `tolpri` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `method` varchar(45) NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `Putdate` datetime NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (59,'qwe123','王小名','鞋1','./asset/image/s1.jpg','白色','25',2,3000,'桃園市桃園區','7-11','棒!!','2022-06-08 20:31:50'),(60,'qwe123','王小名','鞋2','./asset/image/s2.jpg','白色','28',3,5250,'桃園市桃園區','7-11','棒!!','2022-06-08 20:31:50'),(61,'qwe123','王小名','巴巴','./asset/image/top.jpg','紅色','31',2,2000,'台北市信義區','全家','讚!!','2022-06-08 20:33:30'),(62,'qwe123','王小名','鞋7','./asset/image/s7.jpg','黑橘色','25',5,23000,'桃園市中壢區','7-11','超讚!!','2022-06-08 21:27:33'),(63,'qwe123','王小名','鞋5','./asset/image/s5.jpg','白色','25',1,1000,'桃園市中壢區','7-11','超讚!!','2022-06-08 21:27:33'),(64,'qwe123','王小名','鞋1','./asset/image/s1.jpg','白色','28',2,3000,'桃園市中壢區','7-11','超讚!!','2022-06-08 21:27:33'),(65,'qwe123','王小名','鞋9','./asset/image/s9.jpg','褐色','25',1,2300,'台北市信義區','全家','超超超棒!!!','2022-06-08 21:31:30'),(66,'qwe123','王小名','鞋9','./asset/image/s9.jpg','褐色','26',2,4600,'台北市信義區','全家','超超超棒!!!','2022-06-08 21:31:30'),(67,'qwe123','王小名','鞋10','./asset/image/s10.jpg','灰土色','27',2,2400,'台北市信義區','全家','超超超棒!!!','2022-06-08 21:31:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'鞋1','./asset/image/s1.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',486,1500,'白色','25','26','27','28','板鞋'),(2,'鞋2','./asset/image/s2.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',592,1750,'白色','25','26','27','28','板鞋'),(3,'鞋3','./asset/image/s3.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',350,2000,'黑色','25','26','27','28','板鞋'),(4,'鞋4','./asset/image/s4.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',400,3500,'黑色','25','26','27','28','板鞋'),(5,'鞋5','./asset/image/s5.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',492,1000,'白色','25','26','27','28','運動鞋'),(6,'鞋6','./asset/image/s6.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',650,2000,'薄荷綠','25','26','27','28','運動鞋'),(7,'鞋7','./asset/image/s7.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',540,4600,'黑橘色','25','26','27','28','運動鞋'),(8,'鞋8','./asset/image/s8.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',427,4200,'黑金色','25','26','27','28','運動鞋'),(9,'鞋9','./asset/image/s9.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',507,2300,'褐色','25','26','27','28','靴子'),(10,'鞋10','./asset/image/s10.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',498,1200,'灰土色','25','26','27','28','靴子'),(11,'鞋11','./asset/image/s11.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',320,2500,'黑色','25','26','27','28','靴子'),(12,'鞋12','./asset/image/s12.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',397,2600,'黑色','25','26','27','28','靴子'),(13,'鞋13','./asset/image/s13.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',600,2700,'黑綠色','25','26','27','28','休閒鞋'),(14,'鞋14','./asset/image/s14.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',749,3900,'小麥色','25','26','27','28','休閒鞋'),(15,'鞋15','./asset/image/s15.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',650,3400,'杏仁白','25','26','27','28','休閒鞋'),(16,'鞋16','./asset/image/s16.jpg','超級中二，夏天透氣涼爽，適合最屁的國中生',528,2100,'褐色','25','26','27','28','休閒鞋');
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

-- Dump completed on 2022-06-08 21:36:26
