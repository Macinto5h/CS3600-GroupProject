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
INSERT INTO `Customer` VALUES (7,'0'),(8,'1'),(9,'0'),(14,'1'),(16,'1'),(17,'0'),(18,'1'),(19,'0'),(20,'1'),(21,'0'),(32,'1'),(33,'1'),(43,'1');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `DeptName` char(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
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
  `Payrate` float NOT NULL,
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
INSERT INTO `Employee` VALUES (1,7.55,'Stocker'),(2,8.95,'Cashier'),(3,12,'Store Manager'),(4,12.05,'Lead Accountant'),(5,11.5,'Warehouse Manager'),(6,9.05,'Forklift Operator'),(10,11.67,'Senior IT Consultant'),(11,9.06,'Delivery Driver'),(12,8.59,'Groovy Developer'),(13,7.25,'Cashier'),(15,8.3,'Quality Assurance Co'),(21,5,'Advisor'),(34,10,'Director'),(35,5,'Cashier'),(36,12,'Database Manager'),(37,9,'Lead Director'),(38,9,'Lead Director'),(39,9,'Lead Director'),(40,13,'Cashier'),(42,11.5,'Intern'),(44,12.49,'Director');
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
  `Quantity` int(10) NOT NULL,
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `PhoneNum` char(15) DEFAULT NULL,
  `Email` char(30) NOT NULL,
  `Address` char(30) DEFAULT NULL,
  `Password` varchar(64) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Kanye','West','(213)555-5555','kan@yemail.com','42 Yandhi Way Los Angeles, CA','0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e'),(2,'Post','Malone','(587)555-0123','imalone@yahoo.com','984B Birch St. New York, NY','6cf615d5bcaac778352a8f1f3360d23f02f34ec182e259897fd6ce485d7870d4'),(3,'Peter','Sherman','(234)555-0987','foundnemo@yemail.com','42 Wallaby Way Sydney, Austral','0a14a1797925f8b61d010574c110617ee9bce8918da92c2187b9d02b68a792ba'),(4,'Will','Smith','(261)555-9573','fresh@gmail.com','251 North Bristol Avenue, CA','26c1d062cc7a60c3d55fe2df1797d9e361054a08ddb979a09093549ca157ca86'),(5,'Spongebob','Squarepants','(385)555-4794','pineapple@gmail.com','124 Conch Street, BB','054da1e8bc1cb20b4504d603ca6154d353cedb698909503733343bb3f22161c1'),(6,'Patrick','Star','(385)555-2078','rock@gmail.com','120 Conch Street, BB','958272842345dc514f401ef3db2ea2be3010287944c62498abf312218895ee9d'),(7,'Kevin','Gates','(903)555-9240','islah@gmail.com','182 Chatham Way, WA','7e8eea5cc60980270c9ceb75ce8c087d48d726110fd3d17921f774eefd8e18d8'),(8,'Nayvadius','Wilburn','(674)555-4891','future@gmail.com','1350 Godfrey Street, OR','b82e723b461323374c1eec211e066dc7a1c2130fe36c906e4bec5cc45109c248'),(9,'Elongated','Muskrat','(496)555-5460','mars@comcast.net','2874 Tenmile, CA','c76e1c8f366279da648fcc12a1bf99355a04257e23f22697ef13ec86c3994953'),(10,'Jeffery','Williams','(163)555-3840','slime@language.org','4381 Freedom Lane, CA','e9fb9ad9ddf2bebe82eec9c1e0295bee4f0942ceae1d08443421b3f30988b851'),(11,'Scooby','Doo','(333)555-8134','scooby@snacks.net','3734 Cimmaron Road, PA','e067e8beb3a29632e1a9c1a074dac8b34b7fd3a6eb8851cf0111a3f409345f93'),(12,'Shaggy','Rogers','(333)555-8855','shaggy@snacks.net','3734 Cimmaron Road, PA','1c18bc2214f67ae19bbaa640fc776f5a4a38c4021d421cdd8cd3d2bcad23da93'),(13,'Papa','Johns','(603)227-7272','pizza@lord.gov','2002 Papa Johns Blvd, KY','195f33b50fa62ef2bd3d89227ecc1219419e3b907579718541f22cd1b1f1f5e4'),(14,'Abraham','Lincoln','(160)555-1832','free@dom.gov','4509 Bryan Street, NC','6ea607f9a01e62d1531a0809507966ce1d6a322cab7502915063ae0529e0bc90'),(15,'Paul','McCartney','(603)555-1942','beatles@yahoo.com','1452 Reel Avenue, NM','36296059cca8b7c7c7a52ff12abe53eb374d509d480f69bb673ac2566ea0b53f'),(16,'Rosa','Parks','(207)555-5002','rights@lefts.gov','2741 Agriculture Lane, FL','1c1480e67eee52c17293f3628a94874948eae6a2481044b13b6778db6c7dbeab'),(17,'Barack','Obama','(448)555-4484','obama@cares.gov','3041 Briarhill Lane, OH','486ea46224d1bb4fb680f34f7c9ad96a8f24ec88be73ea8e5a6c65260e9cb8a7'),(18,'Shrek',NULL,'(372)555-1253','swamp@donkey.net','4803 Layman Court, GA','f683740cded6680d9d94dfe6a258e44c96a27278a89e15acb52c0b8f32453d38'),(19,'Nosferatu','Grauens','(582)555-2619','green@slime.ooz','2010 Cottrill Lane, MO','d14a7310bdf55b8ffeb7b8462d1f1e3bc6c79a7d80a90e70eae4ef36f223847f'),(20,'Elman','Bashar','(603)555-2307','doctor@arch.com','4122 Dovetail Drive, IL','84816ff383c826e9c11e26fdbd8d66e4edd7cf1ec1a4b23f8d10d84aa56e0d8f'),(21,'Zhizhang','Shen','(603)283-3898','betyou@buck.com','5 Buck Drive, NH','9372c470eeadd5ecd9c3c74c2b3cb633f8e2f2fad799250a0f70d652b6b825e4'),(32,'Charlie','Sheen','123456789','charlie@goofy.net','17 High Street','645dfcb4d1d2d7f1fa00f60e45541f33dfafc3a7ce1dc4bb1901bf409e4edd60'),(33,'John','Smith','(603)555-5255','john@smith.net','48 Amherst Way, NH','2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824'),(34,'Smitty','Werben','(777)555-2434','werben@gmail.com','6008 Meme St, IA','82e35a63ceba37e9646434c5dd412ea577147f1e4a41ccde1614253187e3dbf9'),(35,'scoop','woop','123456789','scoop@woop.com','bananaland','b493d48364afe44d11c0165cf470a4164d1e2609911ef998be868d46ade3de4e'),(36,'John','Snow','5085085085','john@snowy.com','42 Okay Lane, OK','0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e'),(37,'Joan','Smith','5555555555','joan@tomatons.com','73 Free Terrace, CA','2d0f4c4eb78ce93adc09b60c696c76d0476185983c956a6f2a5bbf0afb9dbc2e'),(38,'Joan','Smith','5555555555','joan@tomatoes.com','73 Free Terrace, CA','2d0f4c4eb78ce93adc09b60c696c76d0476185983c956a6f2a5bbf0afb9dbc2e'),(39,'Joan','Smith','5555555555','joan@tomaties.com','73 Free Terrace, CA','2d0f4c4eb78ce93adc09b60c696c76d0476185983c956a6f2a5bbf0afb9dbc2e'),(40,'Benny','Zen','6035554512','zenben@yahoo.com','9456 Wilson Rd, WI','92e4accd3d41d63fe7698c06c990e5a78916d6dfe3f6d498e46d9db1128c2ac9'),(42,'Super','Steve','6035552121','supersteve@aol.com','99 Gloria Square, GA','73d1b1b1bc1dabfb97f216d897b7968e44b06457920f00f2dc6c1ed3be25ad4c'),(43,'Steve','Carrell','5554445555','steve@carrell.io','2846 Bahama Ave, ME','63ea2e30d2e849742e27b1e3e1e8f59d72aae0507c154654efeb75da64a13fb5'),(44,'Leslie','Knopp','6815559823','knoppforpawnee@grizzl.net','444 Pawnee Rd, IN','abefb919775dccbaeb1f6370bd3d2803d1a1a088c510e2eb2acd223a286e740a');
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Price` float NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Artist` varchar(20) NOT NULL,
  `Stock` int(10) NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Secondary` (`Name`,`Artist`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,8.99,'Ye, CD','Kanye West',16,'2018-06-01'),(2,4.99,'DropTopWop, CD','Gucci Mane',3,'2016-06-22'),(3,8.99,'Yeezus, CD','Kanye West',6,'2013-06-18'),(4,11.99,'Yandhi, CD','Kanye West',40,'2018-11-23'),(5,5.99,'To Pimp A Butterfly, CD','Kendrick Lamar',12,'2018-04-15'),(6,6.99,'Painting Pictures, CD','Kodak Black',16,'2017-03-31'),(7,6.99,'DAMN. CD','Kendrick Lamar',13,'2017-06-14'),(8,12.99,'Tha Carter V, CD','Lil Wayne',28,'2018-09-28'),(9,12.99,'The Wack Album, Vinyl','The Lonely Island',3,'2013-06-07'),(10,8.99,'Swimming, CD','Mac Miller',17,'2018-08-03'),(11,6.99,'Culture, CD','Migos',4,'2017-01-27'),(12,6.99,'Stoney, CD','Post Malone',2,'2016-12-09'),(13,7.99,'DAYTONA, CD','Pusha T',6,'2018-05-25'),(14,31.99,'Bad, Vinyl','Michael Jackson',2,'1987-09-01'),(15,4.99,'Blank Face LP, CD','Schoolboy Q',9,'2016-07-08'),(16,3.99,'Deadstar, CD','Smokepurpp',3,'2017-09-29'),(17,9.99,'ASTROWORLD, CD','Travis Scott',21,'2018-08-03'),(18,10.99,'Flower Boy, CD','Tyler, The Creator',12,'2017-07-21'),(19,5.99,'Big Fish Theory, CD','Vince Staples',8,'2017-06-23'),(20,15.99,'Slime Season 3, Vinyl','Young Thug',5,'2016-03-25'),(21,3.99,'Astro Lounge, CD','Smashmouth',15,'1999-06-19'),(25,2,'cd','gary',10000,'2018-12-12'),(26,12,'Led Zeppelin IV [Vinyl]','Led Zeppelin',40,'1971-11-08'),(27,12.99,'The Dark Side of The Moon [CD]','Pink Floyd',12,'1973-03-01'),(28,2,'cd 2','mac',10001,'2018-12-12');
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
  `SalesId` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(10) NOT NULL,
  `CurrentDate` date NOT NULL,
  PRIMARY KEY (`SalesId`) USING BTREE,
  KEY `FKCID` (`CustomerId`) USING BTREE,
  CONSTRAINT `FKCID` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
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
  `ProductId` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  PRIMARY KEY (`SalesId`,`ProductId`) USING BTREE,
  KEY `FKCI` (`Quantity`),
  KEY `FKCP` (`ProductId`),
  CONSTRAINT `FKCP` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`Id`),
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
INSERT INTO `WorksIn` VALUES (1,'2018-10-30',7),(2,'2017-05-11',7),(3,'2017-05-12',6),(4,'2017-05-16',2),(5,'2017-08-31',6),(6,'2018-07-22',4),(10,'2017-02-21',3),(11,'2017-03-11',10),(12,'2016-11-29',3),(13,'2017-01-15',7),(15,'2017-03-03',5),(21,'2018-12-05',9),(34,'2018-12-04',9),(35,'2018-12-05',5),(36,'2018-12-05',3),(37,'2018-12-05',1),(38,'2018-12-05',1),(39,'2018-12-05',1),(40,'2018-12-05',7),(42,'2018-12-05',8),(44,'2018-12-05',8);
/*!40000 ALTER TABLE `WorksIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailinglist`
--

DROP TABLE IF EXISTS `mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailinglist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) DEFAULT NULL,
  `Source` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailinglist`
--

LOCK TABLES `mailinglist` WRITE;
/*!40000 ALTER TABLE `mailinglist` DISABLE KEYS */;
INSERT INTO `mailinglist` VALUES (1,'pete@snoopdoggy.com','www.example.com/newsletter_signup.html'),(2,'mac@goofy.net','www.example.com/newsletter_signup.html');
/*!40000 ALTER TABLE `mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raters`
--

DROP TABLE IF EXISTS `raters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raters`
--

LOCK TABLES `raters` WRITE;
/*!40000 ALTER TABLE `raters` DISABLE KEYS */;
INSERT INTO `raters` VALUES (1,'Gary Strzepek','gs1070@plymouth.edu'),(2,'Scoopy','MikeScarn@scoooooop.com'),(3,'mac','mac@goofy.net');
/*!40000 ALTER TABLE `raters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rating` int(6) DEFAULT NULL,
  `Boss` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,4,'peter calamari'),(2,3,'Peter');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdata` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES ('Mac','mac@goofy.net','12344','Male','Peter, Gary','Undergradu','USA'),('Mac Aroni','mhat@beats.org','password1','Male','Santa Claus','Undergradu','Bangladesh'),('Pete Za','phat@beats.org','1234','Male','Doge','Postgradua','Others');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
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

-- Dump completed on 2018-12-05 20:27:09
