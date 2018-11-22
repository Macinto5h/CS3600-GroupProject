-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Team3
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Id` int(10) NOT NULL,
  `ReceivesMail` char(5) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Person` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (7,'0'),(8,'1'),(9,'0'),(14,'1'),(16,'1'),(17,'0'),(18,'1'),(19,'0'),(20,'1'),(21,'0');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `Id` int(10) NOT NULL,
  `DeptName` char(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'Marketing'),(2,'Finances'),(3,'IT'),(4,'Warehouse'),(5,'Customer Service'),(6,'Administration'),(7,'Retail'),(8,'Human Resources'),(9,'Research'),(10,'Shipping');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `Id` int(10) NOT NULL,
  `Payrate` float DEFAULT NULL,
  `Position` char(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Person` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,7.55,'Stocker'),(2,8.95,'Cashier'),(3,12,'Store Manager'),(4,12.05,'Lead Accountant'),(5,11.5,'Warehouse Manager'),(6,9.05,'Forklift Operator'),(10,11.67,'Senior IT Consultant'),(11,9.06,'Delivery Driver'),(12,8.59,'Groovy Developer'),(13,7.25,'Cashier'),(15,8.3,'Quality Assurance Co');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IsReturn`
--

DROP TABLE IF EXISTS `IsReturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IsReturn` (
  `SalesId` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`SalesId`),
  KEY `FKIRP` (`ProductId`),
  CONSTRAINT `FKIR` FOREIGN KEY (`SalesId`) REFERENCES `Sales` (`SalesId`),
  CONSTRAINT `FKIRP` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IsReturn`
--

LOCK TABLES `IsReturn` WRITE;
/*!40000 ALTER TABLE `IsReturn` DISABLE KEYS */;
INSERT INTO `IsReturn` VALUES (3,10,1),(5,11,2);
/*!40000 ALTER TABLE `IsReturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `Id` int(10) NOT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `PhoneNum` char(15) DEFAULT NULL,
  `Email` char(30) DEFAULT NULL,
  `Address` char(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Kanye','West','(213)555-5555','kan@yemail.com','42 Yandhi Way Los Angeles, CA'),(2,'Post','Malone','(587)555-0123','imalone@yahoo.com','984B Birch St. New York, NY'),(3,'Peter','Sherman','(234)555-0987','foundnemo@yemail.com','42 Wallaby Way Sydney, Austral'),(4,'Will','Smith','(261)555-9573','fresh@gmail.com','251 North Bristol Avenue, CA'),(5,'Spongebob','Squarepants','(385)555-4794','pineapple@gmail.com','124 Conch Street, BB'),(6,'Patrick','Star','(385)555-2078','rock@gmail.com','120 Conch Street, BB'),(7,'Kevin','Gates','(903)555-9240','islah@gmail.com','182 Chatham Way, WA'),(8,'Nayvadius','Wilburn','(674)555-4891','future@gmail.com','1350 Godfrey Street, OR'),(9,'Elongated','Muskrat','(496)555-5460','mars@comcast.net','2874 Tenmile, CA'),(10,'Jeffery','Williams','(163)555-3840','slime@language.org','4381 Freedom Lane, CA'),(11,'Scooby','Doo','(333)555-8134','scooby@snacks.net','3734 Cimmaron Road, PA'),(12,'Shaggy','Rogers','(333)555-8855','shaggy@snacks.net','3734 Cimmaron Road, PA'),(13,'Papa','Johns','(603)227-7272','pizza@lord.gov','2002 Papa Johns Blvd, KY'),(14,'Abraham','Lincoln','(160)555-1832','free@dom.gov','4509 Bryan Street, NC'),(15,'Paul','McCartney','(603)555-1942','beatles@yahoo.com','1452 Reel Avenue, NM'),(16,'Rosa','Parks','(207)555-5002','rights@lefts.gov','2741 Agriculture Lane, FL'),(17,'Barack','Obama','(448)555-4484','obama@cares.gov','3041 Briarhill Lane, OH'),(18,'Shrek',NULL,'(372)555-1253','swamp@donkey.net','4803 Layman Court, GA'),(19,'Nosferatu','Grauens','(582)555-2619','green@slime.ooz','2010 Cottrill Lane, MO'),(20,'Elman','Bashar','(603)555-2307','doctor@arch.com','4122 Dovetail Drive, IL'),(21,'Zhizhang','Shen','(603)283-3898','betyou@buck.com','5 Buck Drive, NH');
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `Id` int(10) NOT NULL,
  `Price` float NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Artist` varchar(20) NOT NULL,
  `Stock` int(10) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Secondary` (`Name`,`Artist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,8.99,'Ye, CD','Kanye West',16,'2018-06-01'),(2,4.99,'DropTopWop, CD','Gucci Mane',3,'2016-06-22'),(3,8.99,'Yeezus, CD','Kanye West',6,'2013-06-18'),(4,11.99,'Yandhi, CD','Kanye West',40,'2018-11-23'),(5,5.99,'To Pimp A Butterfly, CD','Kendrick Lamar',12,'2018-04-15'),(6,6.99,'Painting Pictures, CD','Kodak Black',16,'2017-03-31'),(7,6.99,'DAMN. CD','Kendrick Lamar',13,'2017-06-14'),(8,12.99,'Tha Carter V, CD','Lil Wayne',28,'2018-09-28'),(9,12.99,'The Wack Album, Vinyl','The Lonely Island',3,'2013-06-07'),(10,8.99,'Swimming, CD','Mac Miller',17,'2018-08-03'),(11,6.99,'Culture, CD','Migos',4,'2017-01-27'),(12,6.99,'Stoney, CD','Post Malone',2,'2016-12-09'),(13,7.99,'DAYTONA, CD','Pusha T',6,'2018-05-25'),(14,31.99,'Bad, Vinyl','Michael Jackson',2,'1987-09-01'),(15,4.99,'Blank Face LP, CD','Schoolboy Q',9,'2016-07-08'),(16,3.99,'Deadstar, CD','Smokepurpp',3,'2017-09-29'),(17,9.99,'ASTROWORLD, CD','Travis Scott',21,'2018-08-03'),(18,10.99,'Flower Boy, CD','Tyler, The Creator',12,'2017-07-21'),(19,5.99,'Big Fish Theory, CD','Vince Staples',8,'2017-06-23'),(20,15.99,'Slime Season 3, Vinyl','Young Thug',5,'2016-03-25'),(21,3.99,'Astro Lounge, CD','Smashmouth',15,'1999-06-19');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ProductSold`
--

DROP TABLE IF EXISTS `ProductSold`;
/*!50001 DROP VIEW IF EXISTS `ProductSold`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ProductSold` (
  `Id` tinyint NOT NULL,
  `QuantitySold` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales` (
  `SalesId` int(10) NOT NULL,
  `CustomerId` int(10) NOT NULL,
  `CurrentDate` date DEFAULT NULL,
  PRIMARY KEY (`SalesId`) USING BTREE,
  KEY `FKCID` (`CustomerId`) USING BTREE,
  CONSTRAINT `FKCID` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (1,21,'2018-10-30'),(2,9,'2018-10-30'),(3,19,'2018-10-30'),(4,20,'2018-10-31'),(5,8,'2018-10-31'),(6,18,'2018-10-31'),(7,17,'2018-10-31'),(8,14,'2018-11-01'),(9,9,'2018-11-01'),(10,16,'2018-11-01');
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesItem`
--

DROP TABLE IF EXISTS `SalesItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesItem` (
  `SalesId` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL DEFAULT '0',
  `Quantity` int(10) NOT NULL,
  PRIMARY KEY (`SalesId`,`ProductId`) USING BTREE,
  KEY `FKCI` (`Quantity`),
  CONSTRAINT `FKSI` FOREIGN KEY (`SalesId`) REFERENCES `Sales` (`SalesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesItem`
--

LOCK TABLES `SalesItem` WRITE;
/*!40000 ALTER TABLE `SalesItem` DISABLE KEYS */;
INSERT INTO `SalesItem` VALUES (1,14,1),(3,12,1),(4,16,1),(8,14,1),(9,20,1),(10,5,1),(2,3,3),(7,7,3),(6,21,10);
/*!40000 ALTER TABLE `SalesItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorksIn`
--

DROP TABLE IF EXISTS `WorksIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorksIn` (
  `EmployeeId` int(10) NOT NULL,
  `WorksSince` date DEFAULT NULL,
  `DeptId` int(10) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  KEY `FKID` (`DeptId`),
  CONSTRAINT `FKEID` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee` (`Id`),
  CONSTRAINT `FKID` FOREIGN KEY (`DeptId`) REFERENCES `Department` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorksIn`
--

LOCK TABLES `WorksIn` WRITE;
/*!40000 ALTER TABLE `WorksIn` DISABLE KEYS */;
INSERT INTO `WorksIn` VALUES (1,'2018-10-30',7),(2,'2017-05-11',7),(3,'2017-05-12',6),(4,'2017-05-16',2),(5,'2017-08-31',6),(6,'2018-07-22',4),(10,'2017-02-21',3),(11,'2017-03-11',10),(12,'2016-11-29',3),(13,'2017-01-15',7),(15,'2017-03-03',5);
/*!40000 ALTER TABLE `WorksIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ProductSold`
--

/*!50001 DROP TABLE IF EXISTS `ProductSold`*/;
/*!50001 DROP VIEW IF EXISTS `ProductSold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`prs1005`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ProductSold` AS select `P`.`Id` AS `Id`,sum(`I`.`Quantity`) AS `QuantitySold` from (`Product` `P` join `SalesItem` `I`) where (`P`.`Id` = `I`.`ProductId`) group by `P`.`Id` */;
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

-- Dump completed on 2018-11-22 11:08:08
