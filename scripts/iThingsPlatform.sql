-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2021 at 04:50 AM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.3.12-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iThingsPlatform`
--
CREATE DATABASE IF NOT EXISTS `iThingsPlatform` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iThingsPlatform`;

-- --------------------------------------------------------

--
-- Table structure for table `CustomMenu`
--

CREATE TABLE `CustomMenu` (
  `CustomMenuId` int(20) NOT NULL,
  `MenuUUID` varchar(200) DEFAULT NULL,
  `MenuText` varchar(200) DEFAULT NULL,
  `MenuIconUrl` varchar(200) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `priority` int(20) DEFAULT '12'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventDefinition`
--

CREATE TABLE `EventDefinition` (
  `Id` int(200) NOT NULL,
  `EventId` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `EventName` varchar(200) DEFAULT NULL,
  `EventOwnerId` varchar(200) DEFAULT NULL,
  `EventOwnerType` varchar(200) DEFAULT NULL,
  `EventDetailsTable` varchar(200) DEFAULT NULL,
  `EventIcon` varchar(200) DEFAULT NULL,
  `EventMenu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventStatusList`
--

CREATE TABLE `EventStatusList` (
  `Id` int(200) NOT NULL,
  `EventId` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `StatusID` int(20) DEFAULT NULL,
  `StatusName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Layout`
--

CREATE TABLE `Layout` (
  `Id` int(200) NOT NULL,
  `layoutName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `Id` int(20) NOT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RoleName` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LoginStatus`
--

CREATE TABLE `LoginStatus` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `sessionid` varchar(200) DEFAULT NULL,
  `emailid` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MasterMenu`
--

CREATE TABLE `MasterMenu` (
  `MasterMenuId` int(20) NOT NULL,
  `MenuUUID` varchar(200) DEFAULT NULL,
  `MenuText` varchar(200) DEFAULT NULL,
  `MenuIconUrl` varchar(200) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `Roles_Id` varchar(200) DEFAULT NULL,
  `Role_id` int(100) NOT NULL,
  `priority` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `Id` int(200) NOT NULL,
  `RoleName` varchar(200) DEFAULT NULL,
  `RoleId` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `security__Session`
--

CREATE TABLE `security__Session` (
  `_smartUser` varchar(1024) DEFAULT NULL,
  `_identity` varchar(1024) DEFAULT NULL,
  `_sessionId` varchar(255) NOT NULL,
  `_valid` int(11) DEFAULT NULL,
  `_auth` varchar(1024) DEFAULT NULL,
  `___smart_state___` varchar(1024) DEFAULT NULL,
  `___smart_id___` varchar(1024) DEFAULT NULL,
  `___smart_group___` varchar(1024) DEFAULT NULL,
  `___smart_createdOn___` bigint(20) DEFAULT NULL,
  `___smart_lastModifiedOn___` bigint(20) DEFAULT NULL,
  `___smart_ownedBy___` varchar(1024) DEFAULT NULL,
  `___smart_lastModifiedBy___` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Site_Request`
--

CREATE TABLE `Site_Request` (
  `Id` int(20) NOT NULL,
  `RequestId` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `SiteName` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User_Menu`
--

CREATE TABLE `User_Menu` (
  `Id` int(20) NOT NULL,
  `UserId` varchar(200) NOT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `RoleName` varchar(200) DEFAULT NULL,
  `MasterMenuId` varchar(200) DEFAULT NULL,
  `CustomMenuId` varchar(200) DEFAULT NULL,
  `MenuText` varchar(200) DEFAULT NULL,
  `MenuIconURL` varchar(200) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `MenuActionType` varchar(200) DEFAULT NULL,
  `Script` varchar(200) DEFAULT NULL,
  `MenuScriptName` varchar(200) DEFAULT NULL,
  `SiteRequestId` varchar(200) DEFAULT NULL,
  `priority` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User_Role`
--

CREATE TABLE `User_Role` (
  `Id` int(20) NOT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `CustomRoleName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User_ThemeSelection`
--

CREATE TABLE `User_ThemeSelection` (
  `Id` int(200) NOT NULL,
  `ThemeName` varchar(200) DEFAULT NULL,
  `UserId` varchar(200) DEFAULT NULL,
  `SiteName` varchar(200) DEFAULT NULL,
  `LogoURL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CustomMenu`
--
ALTER TABLE `CustomMenu`
  ADD PRIMARY KEY (`CustomMenuId`);

--
-- Indexes for table `EventDefinition`
--
ALTER TABLE `EventDefinition`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `EventStatusList`
--
ALTER TABLE `EventStatusList`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Layout`
--
ALTER TABLE `Layout`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `LoginStatus`
--
ALTER TABLE `LoginStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MasterMenu`
--
ALTER TABLE `MasterMenu`
  ADD PRIMARY KEY (`MasterMenuId`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Site_Request`
--
ALTER TABLE `Site_Request`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `User_Menu`
--
ALTER TABLE `User_Menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `User_Role`
--
ALTER TABLE `User_Role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `User_ThemeSelection`
--
ALTER TABLE `User_ThemeSelection`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CustomMenu`
--
ALTER TABLE `CustomMenu`
  MODIFY `CustomMenuId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;
--
-- AUTO_INCREMENT for table `EventDefinition`
--
ALTER TABLE `EventDefinition`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `EventStatusList`
--
ALTER TABLE `EventStatusList`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `Layout`
--
ALTER TABLE `Layout`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Login`
--
ALTER TABLE `Login`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `MasterMenu`
--
ALTER TABLE `MasterMenu`
  MODIFY `MasterMenuId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Site_Request`
--
ALTER TABLE `Site_Request`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `User_Menu`
--
ALTER TABLE `User_Menu`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `User_Role`
--
ALTER TABLE `User_Role`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;
--
-- AUTO_INCREMENT for table `User_ThemeSelection`
--
ALTER TABLE `User_ThemeSelection`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
