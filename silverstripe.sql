-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2013 at 12:52 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `silverstripe`
--

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField`
--

CREATE TABLE IF NOT EXISTS `EditableFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `EditableFormField`
--

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:39:43', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 8, 3),
(2, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:39:43', 'EditableEmailField2', 'Email', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 8, 3),
(4, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:39:43', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `EditableFormField_Live`
--

INSERT INTO `EditableFormField_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:39:43', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 8, 3),
(2, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:39:43', 'EditableEmailField2', 'Email', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 8, 3),
(4, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:39:43', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `EditableFormField_versions`
--

INSERT INTO `EditableFormField_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `ParentID`) VALUES
(1, 1, 1, 0, 1, 0, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:31:15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(2, 1, 2, 0, 1, 0, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:31:15', 'EditableTextField1', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 3),
(3, 2, 1, 0, 1, 0, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:31:37', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(4, 2, 2, 0, 1, 0, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:31:37', 'EditableEmailField2', NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, 3),
(5, 3, 1, 0, 1, 0, 'EditableTextField', '2013-04-23 00:31:46', '2013-04-23 00:31:46', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(6, 3, 2, 0, 1, 0, 'EditableTextField', '2013-04-23 00:31:46', '2013-04-23 00:31:46', 'EditableTextField3', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, 3),
(7, 1, 3, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:34:40', 'EditableTextField1', NULL, NULL, 1, 0, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(8, 2, 3, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:34:40', 'EditableEmailField2', NULL, NULL, 2, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(9, 3, 3, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:46', '2013-04-23 00:34:40', 'EditableTextField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(10, 1, 4, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:35:19', 'EditableTextField1', 'Name', NULL, 1, 0, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(11, 2, 4, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:35:19', 'EditableEmailField2', 'Email', NULL, 2, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(12, 3, 4, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:46', '2013-04-23 00:35:19', 'EditableTextField3', 'Message', NULL, 3, 0, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(13, 4, 1, 0, 1, 0, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:36:55', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(14, 4, 2, 0, 1, 0, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:36:55', 'EditableTextField4', NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, 3),
(15, 1, 5, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:37:12', 'EditableTextField1', 'Name', NULL, 1, 0, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(16, 2, 5, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:37:12', 'EditableEmailField2', 'Email', NULL, 2, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(17, 4, 3, 1, 1, 1, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:37:12', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(18, 1, 6, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:37:24', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(19, 2, 6, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:37:24', 'EditableEmailField2', 'Email', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(20, 4, 4, 1, 1, 1, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:37:24', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(21, 1, 7, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:38:22', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(22, 2, 7, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:38:22', 'EditableEmailField2', 'Email', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(23, 4, 5, 1, 1, 1, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:38:22', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(24, 1, 8, 1, 1, 1, 'EditableTextField', '2013-04-23 00:31:15', '2013-04-23 00:39:43', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(25, 2, 8, 1, 1, 1, 'EditableEmailField', '2013-04-23 00:31:37', '2013-04-23 00:39:43', 'EditableEmailField2', 'Email', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3),
(26, 4, 6, 1, 1, 1, 'EditableTextField', '2013-04-23 00:36:55', '2013-04-23 00:39:43', 'EditableTextField4', 'Message', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:2:"10";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption`
--

CREATE TABLE IF NOT EXISTS `EditableOption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_Live`
--

CREATE TABLE IF NOT EXISTS `EditableOption_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_versions`
--

CREATE TABLE IF NOT EXISTS `EditableOption_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Email_BounceRecord`
--

CREATE TABLE IF NOT EXISTS `Email_BounceRecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') CHARACTER SET utf8 DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `HeaderLink`
--

CREATE TABLE IF NOT EXISTS `HeaderLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HeaderLink') CHARACTER SET utf8 DEFAULT 'HeaderLink',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `LinkTitle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Link` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `Target` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `HeaderLink`
--

INSERT INTO `HeaderLink` (`ID`, `ClassName`, `Created`, `LastEdited`, `LinkTitle`, `Link`, `Target`) VALUES
(3, 'HeaderLink', '2013-04-22 21:12:46', '2013-04-22 21:20:14', 'LinkedIn', 'http://www.linkedin.com/pub/nick-hentschel/4b/4ba/454', '_blank'),
(4, 'HeaderLink', '2013-04-22 21:13:40', '2013-04-22 21:13:40', 'Google +', 'https://plus.google.com/102976618611786943086', '_blank'),
(5, 'HeaderLink', '2013-04-22 21:14:12', '2013-04-22 21:14:12', 'GitHub', 'https://github.com/nickhentschel', '_blank');

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`(255)),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2013-04-22 20:46:52', '2013-04-23 00:16:48', 'Default Admin', NULL, NULL, NULL, NULL, 1, '2013-04-23 00:51:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL),
(2, 'Member', '2013-04-23 00:20:06', '2013-04-23 00:20:06', 'Nick', 'Hentschel', 'hentschel.nicholas@gmail.com', '$2y$10$af1b3e59cb75f53e5ffabud8a5KxCGivPAxrd3LUbgY6qpJIIa.VC', NULL, 0, NULL, 0, NULL, NULL, 'blowfish', '10$af1b3e59cb75f53e5ffab3', NULL, NULL, 'en_US', 0, 'MMM d, y', 'h:mm:ss a');

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2013-04-23 00:20:06', '2013-04-23 00:20:06', '$2y$10$af1b3e59cb75f53e5ffabud8a5KxCGivPAxrd3LUbgY6qpJIIa.VC', '10$af1b3e59cb75f53e5ffab3', 'blowfish', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2013-04-22 20:46:52', '2013-04-22 21:11:36', 'Nick Hentschel', 'Student, Web Developer', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_HeaderLinks`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_HeaderLinks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `HeaderLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `HeaderLinkID` (`HeaderLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Page','ErrorPage','UserDefinedForm','SiteTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2013-04-22 20:46:52', '2013-04-22 23:10:16', 'home', 'Home', NULL, '<p>Hello and welcome to my site. I''m nick, and I am an aspiring web developer and technology enthusiast. I am currently a student at <a href="http://bentley.edu">Bentley University</a> in Waltham, MA studying Computer Information Systems. If you would like to contact me for a projet or just to chat, hit up the <a href="[sitetree_link,id=3]">contact</a> page. Otherwise, check out my projects at the projects<a href="http://nickhentschel.local/"></a> page or if you are interested in hiring me, take a look at my <a href="[sitetree_link,id=6]">resume</a>.</p>\n<p>I have developed this site using (hopefully) standards-compliant HTML5, so it will look best in an HTML5 compatible browser like the latest versions of <a href="http://www.mozilla.org/en-US/firefox/new/">Mozialla Firefox</a> and <a href="https://www.google.com/intl/en/chrome/browser/">Google Chrome</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2013-04-22 20:46:52', '2013-04-23 00:21:02', 'about', 'About', NULL, '<p>I developed this site to be my final project for a course I took at Bentley University. I developed it using HTML5, and all pages are 100% standards-compliant. It also makes liberal use of CSS3 transitions, as evidenced by the hover effects on links, and the drop shadow on the logo. jQuery is used for the menu and the scroll-to-top arrow at the bottom of every page. The site is also built with a SilverStripe CMS backend, making administration and editing easy.</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(3, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:39:43', 'contact', 'Contact', NULL, '<p>If you would like to contact me for any reason, a great way to do so is though this form. Otherwise, get in touch via my <a href="http://www.linkedin.com/pub/nick-hentschel/4b/4ba/454">LinkedIn</a> profile.</p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(4, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:05:38', 'resume', 'Resume', NULL, '<h3>Education</h3>\n<p class="resume-para"><a href="http://bentley.edu">Bentley University</a>, Waltham, MA</p>\n<p class="resume-para">Candidate for Bachelor of Science, Computer Information Systems, Law minor, May 2014</p>\n<p class="resume-para">G.P.A. 3.44</p>\n<p class="resume-para">Major G.P.A. 3.93</p>\n<p class="resume-para">Honors: Dean''s List</p>\n<h3>Relevant Courses</h3>\n<h4>CS 420 (Linux System Administration)</h4>\n<ul class="resume-list"><li>This class covered topics such as shell scripting, file and network manipulation, and system management, including the installation and configuration of software, networking options, storage management, security, user management, etc.</li>\n<li>Personally taught review sessions for exams, and gave a lecture on cluster computing, creating a Beowulf cluster using students'' computers and <a href="http://pareto.uab.es/mcreel/PelicanHPC/">PelicanHPC</a> for demonstration</li>\n</ul><h4>CS 480 (Android Application Development)</h4>\n<ul class="resume-list"><li>Member of an academic team developing an application which will be used for indoor navigation at Massachusetts General Hospital</li>\n<li>Code written in JAVA, with SQLite used for database manipulation</li>\n</ul><h3>Experience</h3>\n<h4><a href="http://cis.bentley.edu/sandbox/">CIS Learning and Technology Sandbox</a>, Bentley University, Waltham, MA<br><em>Tutor</em></h4>\n<ul class="resume-list"><li>Tutor students in various technical disciplines, ranging from programming to web technologies</li>\n<li>Perform various administrative tasks</li>\n</ul><h4><a href="http://www.polardesign.com/">Polar Design</a>, Woburn, MA<br><em>Junior Web Developer</em></h4>\n<ul class="resume-list"><li>Created custom interactive pages using PHP, Javascript, HTML, and CSS</li>\n<li>Developed dynamic web sites using SilverStripe and WordPress</li>\n<li>Performed maintenance tasks on both development and production servers running Linux</li>\n<li>Trained new interns and designers to properly code standards-compliant HTML and CSS</li>\n<li>Developed mobile sites using jQueryMobile and SilverStripe</li>\n</ul><h4><a href="http://www.criver.com/en-US/Pages/home.aspx">Charles River Laboratories International, Inc.</a>, Wilmington, MA<br><em>Data Analyst</em></h4>\n<ul class="resume-list"><li>Data entry using large Microsoft Access databases</li>\n<li>Error checking in tables</li>\n<li>Integrity checking through Internet­based research</li>\n</ul><h3>Technical Skills</h3>\n<ul class="resume-list"><li>Computer Languages: PHP, JAVA, SQL, Javascript, HTML, CSS, some Python &amp; Perl</li>\n<li>Environment Experience: Linux, Mac, Windows</li>\n<li>Knowledge of: Linux System Administration, Android Application Development, Object Oriented Programming, CodeIgniter, Oracle SQL, MySQL, SQLite, LAMP development, Eclipse IDE, SVN, GIT, Adobe Creative Suite, Microsoft Office</li>\n</ul>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

INSERT INTO `SiteTree_LinkTracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(21, 1, 3, 'Content'),
(22, 1, 6, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Page','ErrorPage','UserDefinedForm','SiteTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2013-04-22 20:46:52', '2013-04-23 00:39:43', 'home', 'Home', NULL, '<p>Hello and welcome to my site. I''m nick, and I am an aspiring web developer and technology enthusiast. I am currently a student at <a href="http://bentley.edu">Bentley University</a> in Waltham, MA studying Computer Information Systems. If you would like to contact me for a projet or just to chat, hit up the <a href="[sitetree_link,id=3]">contact</a> page. Otherwise, check out my projects at the projects<a href="http://nickhentschel.local/"></a> page or if you are interested in hiring me, take a look at my <a href="[sitetree_link,id=6]">resume</a>.</p>\n<p>I have developed this site using (hopefully) standards-compliant HTML5, so it will look best in an HTML5 compatible browser like the latest versions of <a href="http://www.mozilla.org/en-US/firefox/new/">Mozialla Firefox</a> and <a href="https://www.google.com/intl/en/chrome/browser/">Google Chrome</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2013-04-22 20:46:52', '2013-04-23 00:21:02', 'about', 'About', NULL, '<p>I developed this site to be my final project for a course I took at Bentley University. I developed it using HTML5, and all pages are 100% standards-compliant. It also makes liberal use of CSS3 transitions, as evidenced by the hover effects on links, and the drop shadow on the logo. jQuery is used for the menu and the scroll-to-top arrow at the bottom of every page. The site is also built with a SilverStripe CMS backend, making administration and editing easy.</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(3, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:39:43', 'contact', 'Contact', NULL, '<p>If you would like to contact me for any reason, a great way to do so is though this form. Otherwise, get in touch via my <a href="http://www.linkedin.com/pub/nick-hentschel/4b/4ba/454">LinkedIn</a> profile.</p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(4, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:05:38', 'resume', 'Resume', NULL, '<h3>Education</h3>\n<p class="resume-para"><a href="http://bentley.edu">Bentley University</a>, Waltham, MA</p>\n<p class="resume-para">Candidate for Bachelor of Science, Computer Information Systems, Law minor, May 2014</p>\n<p class="resume-para">G.P.A. 3.44</p>\n<p class="resume-para">Major G.P.A. 3.93</p>\n<p class="resume-para">Honors: Dean''s List</p>\n<h3>Relevant Courses</h3>\n<h4>CS 420 (Linux System Administration)</h4>\n<ul class="resume-list"><li>This class covered topics such as shell scripting, file and network manipulation, and system management, including the installation and configuration of software, networking options, storage management, security, user management, etc.</li>\n<li>Personally taught review sessions for exams, and gave a lecture on cluster computing, creating a Beowulf cluster using students'' computers and <a href="http://pareto.uab.es/mcreel/PelicanHPC/">PelicanHPC</a> for demonstration</li>\n</ul><h4>CS 480 (Android Application Development)</h4>\n<ul class="resume-list"><li>Member of an academic team developing an application which will be used for indoor navigation at Massachusetts General Hospital</li>\n<li>Code written in JAVA, with SQLite used for database manipulation</li>\n</ul><h3>Experience</h3>\n<h4><a href="http://cis.bentley.edu/sandbox/">CIS Learning and Technology Sandbox</a>, Bentley University, Waltham, MA<br><em>Tutor</em></h4>\n<ul class="resume-list"><li>Tutor students in various technical disciplines, ranging from programming to web technologies</li>\n<li>Perform various administrative tasks</li>\n</ul><h4><a href="http://www.polardesign.com/">Polar Design</a>, Woburn, MA<br><em>Junior Web Developer</em></h4>\n<ul class="resume-list"><li>Created custom interactive pages using PHP, Javascript, HTML, and CSS</li>\n<li>Developed dynamic web sites using SilverStripe and WordPress</li>\n<li>Performed maintenance tasks on both development and production servers running Linux</li>\n<li>Trained new interns and designers to properly code standards-compliant HTML and CSS</li>\n<li>Developed mobile sites using jQueryMobile and SilverStripe</li>\n</ul><h4><a href="http://www.criver.com/en-US/Pages/home.aspx">Charles River Laboratories International, Inc.</a>, Wilmington, MA<br><em>Data Analyst</em></h4>\n<ul class="resume-list"><li>Data entry using large Microsoft Access databases</li>\n<li>Error checking in tables</li>\n<li>Integrity checking through Internet­based research</li>\n</ul><h3>Technical Skills</h3>\n<ul class="resume-list"><li>Computer Languages: PHP, JAVA, SQL, Javascript, HTML, CSS, some Python &amp; Perl</li>\n<li>Environment Experience: Linux, Mac, Windows</li>\n<li>Knowledge of: Linux System Administration, Android Application Development, Object Oriented Programming, CodeIgniter, Oracle SQL, MySQL, SQLite, LAMP development, Eclipse IDE, SVN, GIT, Adobe Creative Suite, Microsoft Office</li>\n</ul>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('Page','ErrorPage','UserDefinedForm','SiteTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 1, 1, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 1, 1, 'ErrorPage', '2013-04-22 20:46:52', '2013-04-22 20:46:52', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 3, 2, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 21:23:50', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 2, 2, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 21:24:04', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:02:53', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(9, 6, 2, 1, 1, 1, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:03:06', 'resume', 'Resume', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(10, 2, 3, 0, 1, 0, 'Page', '2013-04-22 20:46:52', '2013-04-22 23:03:21', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 6, 3, 1, 1, 1, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:03:40', 'resume', 'Resume', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 6, 4, 1, 1, 1, 'Page', '2013-04-22 23:02:53', '2013-04-22 23:05:38', 'resume', 'Resume', NULL, '<h3>Education</h3>\n<p class="resume-para"><a href="http://bentley.edu">Bentley University</a>, Waltham, MA</p>\n<p class="resume-para">Candidate for Bachelor of Science, Computer Information Systems, Law minor, May 2014</p>\n<p class="resume-para">G.P.A. 3.44</p>\n<p class="resume-para">Major G.P.A. 3.93</p>\n<p class="resume-para">Honors: Dean''s List</p>\n<h3>Relevant Courses</h3>\n<h4>CS 420 (Linux System Administration)</h4>\n<ul class="resume-list"><li>This class covered topics such as shell scripting, file and network manipulation, and system management, including the installation and configuration of software, networking options, storage management, security, user management, etc.</li>\n<li>Personally taught review sessions for exams, and gave a lecture on cluster computing, creating a Beowulf cluster using students'' computers and <a href="http://pareto.uab.es/mcreel/PelicanHPC/">PelicanHPC</a> for demonstration</li>\n</ul><h4>CS 480 (Android Application Development)</h4>\n<ul class="resume-list"><li>Member of an academic team developing an application which will be used for indoor navigation at Massachusetts General Hospital</li>\n<li>Code written in JAVA, with SQLite used for database manipulation</li>\n</ul><h3>Experience</h3>\n<h4><a href="http://cis.bentley.edu/sandbox/">CIS Learning and Technology Sandbox</a>, Bentley University, Waltham, MA<br><em>Tutor</em></h4>\n<ul class="resume-list"><li>Tutor students in various technical disciplines, ranging from programming to web technologies</li>\n<li>Perform various administrative tasks</li>\n</ul><h4><a href="http://www.polardesign.com/">Polar Design</a>, Woburn, MA<br><em>Junior Web Developer</em></h4>\n<ul class="resume-list"><li>Created custom interactive pages using PHP, Javascript, HTML, and CSS</li>\n<li>Developed dynamic web sites using SilverStripe and WordPress</li>\n<li>Performed maintenance tasks on both development and production servers running Linux</li>\n<li>Trained new interns and designers to properly code standards-compliant HTML and CSS</li>\n<li>Developed mobile sites using jQueryMobile and SilverStripe</li>\n</ul><h4><a href="http://www.criver.com/en-US/Pages/home.aspx">Charles River Laboratories International, Inc.</a>, Wilmington, MA<br><em>Data Analyst</em></h4>\n<ul class="resume-list"><li>Data entry using large Microsoft Access databases</li>\n<li>Error checking in tables</li>\n<li>Integrity checking through Internet­based research</li>\n</ul><h3>Technical Skills</h3>\n<ul class="resume-list"><li>Computer Languages: PHP, JAVA, SQL, Javascript, HTML, CSS, some Python &amp; Perl</li>\n<li>Environment Experience: Linux, Mac, Windows</li>\n<li>Knowledge of: Linux System Administration, Android Application Development, Object Oriented Programming, CodeIgniter, Oracle SQL, MySQL, SQLite, LAMP development, Eclipse IDE, SVN, GIT, Adobe Creative Suite, Microsoft Office</li>\n</ul>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 2, 4, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 23:07:30', 'about', 'About', NULL, '<p>I developed this site to be my final project for a course I took at Bentley University. I developed it using HTML5, and all pages are 100% standards-compliant. It also makes liberal use of CSS3 transitions, as evidenced by the hover effects on links, and the drop shadow on the logo. jQuery is used for the menu and the scroll-to-top arrow at the bottom of every page. The site is also built with a SilverStripe CMS backend, making administration and editing easy.</p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 1, 2, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 23:08:55', 'home', 'Home', NULL, '<p>Hello and welcome to my site. I''m nick, and I am an aspiring web developer and technology enthusiast. I am currently a student at <a href="http://bentley.edu">Bentley University</a> in Waltham, MA studying Computer Information Systems. If you would like to contact me for a projet or just to chat, hit up the <a href="http://nickhentschel.local/">contact</a> page. Otherwise, check out my projects at the <a href="http://nickhentschel.local/">projects</a> page or if you are interested in hiring me, take a look at my <a href="http://nickhentschel.local/">resume</a>.</p>\n<p>I have developed this site using (hopefully) standards-compliant HTML5, so it will look best in an HTML5 compatible browser like the latest versions of <a href="http://www.mozilla.org/en-US/firefox/new/">Mozialla Firefox</a> and <a href="https://www.google.com/intl/en/chrome/browser/">Google Chrome</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 1, 3, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-22 23:10:16', 'home', 'Home', NULL, '<p>Hello and welcome to my site. I''m nick, and I am an aspiring web developer and technology enthusiast. I am currently a student at <a href="http://bentley.edu">Bentley University</a> in Waltham, MA studying Computer Information Systems. If you would like to contact me for a projet or just to chat, hit up the <a href="[sitetree_link,id=3]">contact</a> page. Otherwise, check out my projects at the projects<a href="http://nickhentschel.local/"></a> page or if you are interested in hiring me, take a look at my <a href="[sitetree_link,id=6]">resume</a>.</p>\n<p>I have developed this site using (hopefully) standards-compliant HTML5, so it will look best in an HTML5 compatible browser like the latest versions of <a href="http://www.mozilla.org/en-US/firefox/new/">Mozialla Firefox</a> and <a href="https://www.google.com/intl/en/chrome/browser/">Google Chrome</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 2, 5, 1, 1, 1, 'Page', '2013-04-22 20:46:52', '2013-04-23 00:20:32', 'about', 'About', NULL, '<p>I developed this site to be my final project for a course I took at Bentley University. I developed it using HTML5, and all pages are 100% standards-compliant. It also makes liberal use of CSS3 transitions, as evidenced by the hover effects on links, and the drop shadow on the logo. jQuery is used for the menu and the scroll-to-top arrow at the bottom of every page. The site is also built with a SilverStripe CMS backend, making administration and editing easy.</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 3, 3, 1, 1, 1, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:27:53', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 3, 4, 1, 1, 1, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:34:40', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 3, 5, 1, 1, 1, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:38:22', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(20, 3, 6, 1, 1, 1, 'UserDefinedForm', '2013-04-22 20:46:52', '2013-04-23 00:39:43', 'contact', 'Contact', NULL, '<p>If you would like to contact me for any reason, a great way to do so is though this form. Otherwise, get in touch via my <a href="http://www.linkedin.com/pub/nick-hentschel/4b/4ba/454">LinkedIn</a> profile.</p>', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFileField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedForm`
--

CREATE TABLE IF NOT EXISTS `SubmittedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedForm') CHARACTER SET utf8 DEFAULT 'SubmittedForm',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFormField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SubmittedFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UserDefinedForm`
--

INSERT INTO `UserDefinedForm` (`ID`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(3, 'Submit', '<p style="text-align: center;">Thank you for your submission. I will get back to you as soon as possible.</p>', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipient`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipient') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipient',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `UserDefinedForm_EmailRecipient`
--

INSERT INTO `UserDefinedForm_EmailRecipient` (`ID`, `ClassName`, `Created`, `LastEdited`, `EmailAddress`, `EmailSubject`, `EmailFrom`, `EmailReplyTo`, `EmailBody`, `SendPlain`, `HideFormData`, `FormID`, `SendEmailFromFieldID`, `SendEmailToFieldID`) VALUES
(1, 'UserDefinedForm_EmailRecipient', '2013-04-23 00:34:10', '2013-04-23 00:35:39', 'hentschel.nicholas@gmail.com', 'nickhentschel.com form submission', 'mail@nickhentschel.com', NULL, NULL, 0, 0, 3, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_Live`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UserDefinedForm_Live`
--

INSERT INTO `UserDefinedForm_Live` (`ID`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(3, 'Submit', '<p style="text-align: center;">Thank you for your submission. I will get back to you as soon as possible.</p>', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_versions`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `UserDefinedForm_versions`
--

INSERT INTO `UserDefinedForm_versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(1, 3, 3, NULL, NULL, 0, 0, 0, 0),
(2, 3, 4, 'Submit', '<p>Thank you for your submission. I will get back to you as soon as possible.</p>', 0, 0, 0, 0),
(3, 3, 5, 'Submit', '<p style="text-align: center;">Thank you for your submission. I will get back to you as soon as possible.</p>', 0, 0, 0, 0),
(4, 3, 6, 'Submit', '<p style="text-align: center;">Thank you for your submission. I will get back to you as soon as possible.</p>', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
