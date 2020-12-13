CREATE DATABASE IF NOT EXISTS mapdata;

USE mapdata;
CREATE TABLE IF NOT EXISTS `markers` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `pubMillis` int(13) NOT NULL,
        `lastUpdated` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `timesUpdated` int(10) NOT NULL,
        `locationX` decimal(8,6) NOT NULL,
        `locationY` decimal(8,6) NOT NULL,
        `roadType` int(1),
        `street` varchar(255),
        `country` character(2),
        `city` varchar(255),
        `type` varchar(255),
        `subtype` varchar(255),
        `magvar` int(3),
        `reportRating` int(1),
        `confidence` int(1),
        `reliability` int(1),
        PRIMARY KEY (`id`),
        UNIQUE KEY `locationUnique` (`locationX`, `locationY`)
       ) ENGINE=InnoDB;

INSERT INTO `markers`
