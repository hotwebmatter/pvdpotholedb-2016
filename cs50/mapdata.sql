CREATE DATABASE IF NOT EXISTS mapdata;

USE mapdata;
CREATE TABLE IF NOT EXISTS `markers` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `date_created` timestamp NOT NULL,
        `locationX` decimal(8,6) NOT NULL,
        `locationY` decimal(8,6) NOT NULL,
        `roadType` int(1),
        `street` varchar(255),
        `country` character(2),
        `city` varchar(255),
        `type` varchar(255),
        `subtype` varchar(255),
        `reportRating` int(1),
        `confidence` int(1),
        `reliability` int(1),
        PRIMARY KEY (`id`),
       ) ENGINE=InnoDB;

