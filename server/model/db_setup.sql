CREATE DATABASE IF NOT EXISTS `general_db`
USE `general_db`;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `guestID` int(11) NOT NULL AUTO_INCREMENT,
  `guestName` varchar(40) NOT NULL,
  `guestComment` varchar(500) NOT NULL,
  `commentDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`guestID`),
  UNIQUE KEY `guestID_UNIQUE` (`guestID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hashedVisitorIPs`
--

DROP TABLE IF EXISTS `hashedVisitorIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashedVisitorIPs` (
  `hashedVisitorIP` binary(32) NOT NULL,
  PRIMARY KEY (`hashedVisitorIP`),
  UNIQUE KEY `hashedVisitorIP_UNIQUE` (`hashedVisitorIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `projectID` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(75) NOT NULL,
  `projectCategory` varchar(100) NOT NULL,
  `projectURL` varchar(200) DEFAULT NULL,
  `projectSecondaryURL` varchar(200) DEFAULT NULL,
  `projectTertiaryURL` varchar(200) DEFAULT NULL,
  `projectImage` varchar(200) DEFAULT 'NULL.png',
  `projectSecondaryImage` varchar(200) DEFAULT NULL,
  `projectSummary` varchar(100) NOT NULL,
  `projectDetails` varchar(1000) NOT NULL,
  `projectLanguagesAndTechnologies` varchar(500) NOT NULL,
  `projectRole` varchar(500) NOT NULL,
  PRIMARY KEY (`projectID`),
  UNIQUE KEY `project_id_UNIQUE` (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subtitles`
--

DROP TABLE IF EXISTS `subtitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtitles` (
  `subtitle` varchar(50) NOT NULL,
  PRIMARY KEY (`subtitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uuid` varchar(36) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `role` tinyint(3) DEFAULT NULL COMMENT 'roles: 0: guest 1: user 2: moderator 3: admin',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;