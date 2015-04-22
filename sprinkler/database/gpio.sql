-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2015 at 11:15 PM
-- Server version: 5.5.41
-- PHP Version: 5.4.36-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gpio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_start`
--

CREATE TABLE IF NOT EXISTS `auto_start` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinHours` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinMins` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinSecs` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `needUpdate` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `autoDuration` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `pump` int(2) NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `auto_start`
--

INSERT INTO `auto_start` (`pinID`, `pinNumber`, `pinHours`, `pinMins`, `pinSecs`, `needUpdate`, `autoDuration`, `pump`) VALUES
(1, '0', '12', '30', '', '1', '15', 0),
(2, '1', '09', '45', '', '1', '10', 0),
(3, '2', '02', '16', '00', '0', '00', 0),
(4, '3', '02', '17', '', '0', '30', 0),
(5, '4', '24', '06', '', '0', '15', 0),
(6, '5', '19', '50', '', '0', '30', 0),
(7, '6', '18', '03', '0', '0', '24', 0),
(8, '7', '18', '06', '', '0', '25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doLoop`
--

CREATE TABLE IF NOT EXISTS `doLoop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `doLoop` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `numbers` (`numbers`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doLoop`
--

INSERT INTO `doLoop` (`ID`, `numbers`, `doLoop`) VALUES
(1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE IF NOT EXISTS `garage` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `isOpen` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `garage`
--

INSERT INTO `garage` (`pinID`, `pinNumber`, `isOpen`) VALUES
(1, '10', '0');

-- --------------------------------------------------------

--
-- Table structure for table `manual_start`
--

CREATE TABLE IF NOT EXISTS `manual_start` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinStart` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `manualDuration` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `pump` int(2) NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `manual_start`
--

INSERT INTO `manual_start` (`pinID`, `pinNumber`, `pinStart`, `manualDuration`, `pump`) VALUES
(1, '0', '1', '5', 1),
(2, '1', '1', '10', 0),
(3, '2', '0', '1', 0),
(4, '3', '0', '1', 1),
(5, '4', '0', '1', 0),
(6, '5', '0', '1', 0),
(7, '6', '0', '1', 0),
(8, '7', '0', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pinAutoMode`
--

CREATE TABLE IF NOT EXISTS `pinAutoMode` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinAutoMode` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pump` int(2) NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinAutoMode`
--

INSERT INTO `pinAutoMode` (`pinID`, `pinNumber`, `pinAutoMode`, `pump`) VALUES
(1, '0', '2', 0),
(2, '1', '2', 1),
(3, '2', '2', 0),
(4, '3', '2', 1),
(5, '4', '2', 0),
(6, '5', '2', 1),
(7, '6', '2', 0),
(8, '7', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pinDays`
--

CREATE TABLE IF NOT EXISTS `pinDays` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinDays` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinDays`
--

INSERT INTO `pinDays` (`pinID`, `pinNumber`, `pinDays`) VALUES
(1, '0', 0),
(2, '1', 127),
(3, '2', 72),
(4, '3', 8),
(5, '4', 8),
(6, '5', 4),
(7, '6', 1),
(8, '7', 127);

-- --------------------------------------------------------

--
-- Table structure for table `pinDescription`
--

CREATE TABLE IF NOT EXISTS `pinDescription` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinDescription`
--

INSERT INTO `pinDescription` (`pinID`, `pinNumber`, `pinDescription`) VALUES
(1, '0', 'Pump 1'),
(2, '1', 'Pump 2'),
(3, '2', 'Station 1'),
(4, '3', 'Station 2'),
(5, '4', 'Station 3'),
(6, '5', 'Reserved for Temperature Sensor 	'),
(7, '6', 'Station 4'),
(8, '7', 'Station 5');

-- --------------------------------------------------------

--
-- Table structure for table `pinDirection`
--

CREATE TABLE IF NOT EXISTS `pinDirection` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinDirection` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinDirection`
--

INSERT INTO `pinDirection` (`pinID`, `pinNumber`, `pinDirection`) VALUES
(1, '0', '0'),
(2, '1', '0'),
(3, '2', '0'),
(4, '3', '0'),
(5, '4', '0'),
(6, '5', '0'),
(7, '6', '0'),
(8, '7', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pinMode`
--

CREATE TABLE IF NOT EXISTS `pinMode` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinMode` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinMode`
--

INSERT INTO `pinMode` (`pinID`, `pinNumber`, `pinMode`) VALUES
(1, '0', '1'),
(2, '1', '1'),
(3, '2', '0'),
(4, '3', '0'),
(5, '4', '1'),
(6, '5', '1'),
(7, '6', '1'),
(8, '7', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pinStatus`
--

CREATE TABLE IF NOT EXISTS `pinStatus` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinStatus` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pinStatus`
--

INSERT INTO `pinStatus` (`pinID`, `pinNumber`, `pinStatus`) VALUES
(1, '0', '0'),
(2, '1', '0'),
(3, '2', '0'),
(4, '3', '0'),
(5, '4', '0'),
(6, '5', '0'),
(7, '6', '0'),
(8, '7', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pumps`
--

CREATE TABLE IF NOT EXISTS `pumps` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `isOpen` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pumps`
--

INSERT INTO `pumps` (`pinID`, `pinNumber`, `isOpen`) VALUES
(1, '2', '1'),
(2, '3', '1'),
(3, '4', '1'),
(4, '5', '0'),
(5, '6', '0'),
(6, '7', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pumps_old2`
--

CREATE TABLE IF NOT EXISTS `pumps_old2` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `isOpen` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pumps_old2`
--

INSERT INTO `pumps_old2` (`pinID`, `pinNumber`, `isOpen`) VALUES
(1, '0', '1'),
(2, '1', '0'),
(3, '2', '0'),
(4, '3', '1'),
(5, '4', '0'),
(6, '5', '0'),
(7, '6', '1'),
(8, '7', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Season`
--

CREATE TABLE IF NOT EXISTS `Season` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `adjust` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `adjust` (`adjust`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Season`
--

INSERT INTO `Season` (`ID`, `adjust`) VALUES
(1, '-5');

-- --------------------------------------------------------

--
-- Table structure for table `Temperature`
--

CREATE TABLE IF NOT EXISTS `Temperature` (
  `tempID` int(11) NOT NULL AUTO_INCREMENT,
  `minTemp` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `currTemp` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tempID`),
  UNIQUE KEY `minTemp` (`minTemp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Temperature`
--

INSERT INTO `Temperature` (`tempID`, `minTemp`, `currTemp`) VALUES
(1, '-3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `salt`) VALUES
(1, 'admin', '7d5fd66937a5cdb59319fc00cb5b4627cf4d3ba6609942a73dc469753740cbdf', '34e5d918');

