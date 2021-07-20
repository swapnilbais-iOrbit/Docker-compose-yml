-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 06, 2021 at 12:06 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.3.12-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `First_Try`
--
CREATE DATABASE IF NOT EXISTS `First_Try` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;

CREATE DATABASE IF NOT EXISTS `iThingsPlatform` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;

CREATE USER 'smarttest'@'localhost' IDENTIFIED BY 'smarttest';
GRANT ALL PRIVILEGES ON *.* TO 'smarttest'@'%';

USE `First_Try`;
-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `Id` int(200) NOT NULL,
  `UUID` varchar(200) DEFAULT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `Street` varchar(200) DEFAULT NULL,
  `StreetAdditional` varchar(200) DEFAULT NULL,
  `PostalCode` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Authorization`
--

CREATE TABLE `Authorization` (
  `Id` int(11) NOT NULL,
  `Api_Key` text NOT NULL,
  `Customer_Name` varchar(200) NOT NULL,
  `Access_Token` varchar(200) NOT NULL,
  `Created_On` date NOT NULL,
  `Modified_On` date NOT NULL,
  `Status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `Id` int(200) NOT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CompanyAdmin`
--

CREATE TABLE `CompanyAdmin` (
  `Id` int(200) NOT NULL,
  `AdminId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Device`
--

CREATE TABLE `Device` (
  `Id` int(200) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `DeviceNumber` varchar(200) DEFAULT NULL,
  `FirmwareVersion` varchar(200) DEFAULT NULL,
  `ModelNo` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceCompanyMap`
--

CREATE TABLE `DeviceCompanyMap` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `LastUpdated` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceDetails`
--

CREATE TABLE `DeviceDetails` (
  `DeviceId` int(11) NOT NULL,
  `DeviceUUId` varchar(200) NOT NULL,
  `DeviceName` varchar(200) NOT NULL,
  `ModelId` varchar(200) NOT NULL,
  `BleId` varchar(200) NOT NULL,
  `devmacid` varchar(200) NOT NULL,
  `DeviceIMageName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceMeasurementList`
--

CREATE TABLE `DeviceMeasurementList` (
  `id` int(11) NOT NULL,
  `ParamID` varchar(200) DEFAULT NULL,
  `ParamName` varchar(200) DEFAULT NULL,
  `DevModel` varchar(200) DEFAULT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `MeasTimeStamp` bigint(20) DEFAULT NULL,
  `RecvdTimeStamp` bigint(20) DEFAULT NULL,
  `ValueType` varchar(200) DEFAULT NULL,
  `FloatVal` float DEFAULT NULL,
  `IntVal` int(11) DEFAULT NULL,
  `StringVal` varchar(200) DEFAULT NULL,
  `Blobval` longtext,
  `FileName` varchar(200) DEFAULT NULL,
  `LinkType` varchar(200) DEFAULT NULL,
  `LinkID` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceModel`
--

CREATE TABLE `DeviceModel` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `DeviceName` varchar(200) DEFAULT NULL,
  `ModelName` varchar(200) DEFAULT NULL,
  `Manufacturer` varchar(200) DEFAULT NULL,
  `DeviceClass` varchar(200) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `Version` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceParameterGroup`
--

CREATE TABLE `DeviceParameterGroup` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `GroupId` varchar(200) DEFAULT NULL,
  `GroupName` varchar(200) DEFAULT NULL,
  `ParamId` varchar(200) DEFAULT NULL,
  `Type` int(20) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DevicePatientMap`
--

CREATE TABLE `DevicePatientMap` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `LastUpdated` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DevicePhysicianMap`
--

CREATE TABLE `DevicePhysicianMap` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `LastUpdated` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DevModel`
--

CREATE TABLE `DevModel` (
  `DeviceId` int(11) NOT NULL,
  `DeviceUUId` text NOT NULL,
  `ModelName` varchar(200) DEFAULT NULL,
  `ModelNumber` varchar(200) DEFAULT NULL,
  `VersionNumber` varchar(200) DEFAULT NULL,
  `DeviceType` varchar(200) DEFAULT NULL,
  `Manufacturer` varchar(200) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Created_By` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `ModifiedDate` varchar(200) DEFAULT NULL
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
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `Id` int(200) NOT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `UUID` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Measurement`
--

CREATE TABLE `Measurement` (
  `Id` int(20) NOT NULL,
  `MeasurementId` varchar(200) DEFAULT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `DevRemoteUUID` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `MACID` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MeasurementDetails`
--

CREATE TABLE `MeasurementDetails` (
  `Id` int(20) NOT NULL,
  `MeasurementId` varchar(200) DEFAULT NULL,
  `MeasurementType` varchar(200) DEFAULT NULL,
  `InstrumentLocation` varchar(200) DEFAULT NULL,
  `MeasurementDate` varchar(200) DEFAULT NULL,
  `StartTime` varchar(200) DEFAULT NULL,
  `ElapsedTime` varchar(200) DEFAULT NULL,
  `ParamGroupId` varchar(200) DEFAULT NULL,
  `MeasurementName` varchar(200) DEFAULT NULL,
  `MeasuredValue` varchar(200) DEFAULT NULL,
  `DefaultValue` varchar(200) DEFAULT NULL,
  `MaxRange` varchar(200) DEFAULT NULL,
  `MinRange` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MeasurementParameterDetails`
--

CREATE TABLE `MeasurementParameterDetails` (
  `id` int(11) NOT NULL,
  `MeasurementId` int(11) NOT NULL,
  `ParamID` varchar(200) DEFAULT NULL,
  `ParamName` varchar(200) DEFAULT NULL,
  `ParamFraction` varchar(200) DEFAULT NULL,
  `MeasTimeStamp` bigint(20) DEFAULT NULL,
  `RecvdTimeStamp` bigint(20) DEFAULT NULL,
  `ValueType` varchar(200) DEFAULT NULL,
  `FloatVal` float DEFAULT NULL,
  `IntVal` int(11) DEFAULT NULL,
  `StringVal` longtext,
  `Blobval` longtext,
  `FileName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ModelParameterMap`
--

CREATE TABLE `ModelParameterMap` (
  `Id` int(20) NOT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `ParamGroupId` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Observation`
--

CREATE TABLE `Observation` (
  `Id` int(20) NOT NULL,
  `ObservationId` varchar(200) DEFAULT NULL,
  `ProcedureId` varchar(200) DEFAULT NULL,
  `EventId` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `DeviceId` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ObservationDetails`
--

CREATE TABLE `ObservationDetails` (
  `Id` int(20) NOT NULL,
  `ObservationId` varchar(200) DEFAULT NULL,
  `ObservationDate` varchar(200) DEFAULT NULL,
  `StartTime` varchar(200) DEFAULT NULL,
  `EndTime` varchar(200) DEFAULT NULL,
  `RelevantInformation` varchar(200) DEFAULT NULL,
  `OrderNumber` varchar(200) DEFAULT NULL,
  `OrderStatus` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ObservationResult`
--

CREATE TABLE `ObservationResult` (
  `Id` int(11) NOT NULL,
  `ObservationId` varchar(200) DEFAULT NULL,
  `ResultStatus` varchar(200) DEFAULT NULL,
  `ObservationDate` varchar(200) DEFAULT NULL,
  `ObservationMethod` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OrganizationAdmin`
--

CREATE TABLE `OrganizationAdmin` (
  `Id` int(200) NOT NULL,
  `AdminId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ParameterGroup`
--

CREATE TABLE `ParameterGroup` (
  `Id` int(20) NOT NULL,
  `GroupId` varchar(200) DEFAULT NULL,
  `GroupName` varchar(200) DEFAULT NULL,
  `ParamId` varchar(200) DEFAULT NULL,
  `Type` int(20) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `Created_On` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ParameterMeasuredValues`
--

CREATE TABLE `ParameterMeasuredValues` (
  `Id` int(20) NOT NULL,
  `MeasurementId` varchar(200) DEFAULT NULL,
  `GroupName` varchar(200) DEFAULT NULL,
  `ParamId` varchar(200) DEFAULT NULL,
  `MeasuredValue` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ParameterRange`
--

CREATE TABLE `ParameterRange` (
  `id` int(20) NOT NULL,
  `ParamId` varchar(200) DEFAULT NULL,
  `RangeName` varchar(200) DEFAULT NULL,
  `RangeType` varchar(200) DEFAULT NULL,
  `Min` int(20) DEFAULT NULL,
  `Max` int(20) DEFAULT NULL,
  `Typical` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Parameters`
--

CREATE TABLE `Parameters` (
  `Id` int(20) NOT NULL,
  `ParamId` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Type` int(20) DEFAULT NULL,
  `ValueType` int(20) DEFAULT NULL,
  `Length` int(20) DEFAULT NULL,
  `Unit` varchar(200) DEFAULT NULL,
  `Typical` varchar(200) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ProcessingComponent` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `Id` int(200) NOT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PatientOtherDetails`
--

CREATE TABLE `PatientOtherDetails` (
  `id` int(11) NOT NULL,
  `PatientID` varchar(200) NOT NULL,
  `PhysicianID` varchar(200) DEFAULT NULL,
  `BloodGroup` varchar(200) DEFAULT NULL,
  `Age` varchar(200) DEFAULT NULL,
  `Alcohol` varchar(200) DEFAULT NULL,
  `AlternateContactNo` varchar(200) DEFAULT NULL,
  `AlternateEmailID` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(200) DEFAULT NULL,
  `CreatedByRole` varchar(200) DEFAULT NULL,
  `Diabetic` varchar(200) DEFAULT NULL,
  `Height` varchar(200) DEFAULT NULL,
  `HighBP` varchar(200) DEFAULT NULL,
  `OtherDetails` varchar(200) DEFAULT NULL,
  `SSID` varchar(200) DEFAULT NULL,
  `Smoke` varchar(200) DEFAULT NULL,
  `Weight` varchar(200) DEFAULT NULL,
  `ZIP` varchar(200) DEFAULT NULL,
  `FactorDBP` varchar(200) DEFAULT NULL,
  `FactorSBP` varchar(200) DEFAULT NULL,
  `Honorific` varchar(200) DEFAULT NULL,
  `StdDBP` varchar(200) DEFAULT NULL,
  `StdSBP` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Permissions`
--

CREATE TABLE `Permissions` (
  `Id` int(200) NOT NULL,
  `PermissionId` int(200) DEFAULT NULL,
  `PermissionName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Physician`
--

CREATE TABLE `Physician` (
  `Id` int(200) NOT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Profile`
--

CREATE TABLE `Profile` (
  `ProfileId` int(200) NOT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `CompanyId` varchar(200) DEFAULT NULL,
  `PhysicianId` varchar(200) DEFAULT NULL,
  `PatientId` varchar(200) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `RoleId` int(200) DEFAULT NULL,
  `UserId` int(20) DEFAULT NULL,
  `AdminId` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Dob` datetime DEFAULT NULL,
  `Age` varchar(200) DEFAULT NULL,
  `Street` varchar(200) DEFAULT NULL,
  `StreetAdditional` varchar(200) DEFAULT NULL,
  `PostalCode` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Photo_Name` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL,
  `img` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RolePermission`
--

CREATE TABLE `RolePermission` (
  `Id` int(200) NOT NULL,
  `RoleId` int(200) NOT NULL,
  `PermissionId` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `RoleId` int(200) NOT NULL,
  `Roles` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Root`
--

CREATE TABLE `Root` (
  `Id` int(200) NOT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `Type` int(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION`
--

CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `Tenant`
--

CREATE TABLE `Tenant` (
  `Id` int(200) NOT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `RootId` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TenantAdmin`
--

CREATE TABLE `TenantAdmin` (
  `Id` int(200) NOT NULL,
  `AdminId` varchar(200) DEFAULT NULL,
  `TenantId` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Created_On` varchar(200) DEFAULT NULL,
  `Modified_On` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserList`
--

CREATE TABLE `UserList` (
  `Id` int(20) NOT NULL,
  `UserId` int(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Authorization`
--
ALTER TABLE `Authorization`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `CompanyAdmin`
--
ALTER TABLE `CompanyAdmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Device`
--
ALTER TABLE `Device`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DeviceCompanyMap`
--
ALTER TABLE `DeviceCompanyMap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DeviceDetails`
--
ALTER TABLE `DeviceDetails`
  ADD PRIMARY KEY (`DeviceId`);

--
-- Indexes for table `DeviceMeasurementList`
--
ALTER TABLE `DeviceMeasurementList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DeviceModel`
--
ALTER TABLE `DeviceModel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DeviceParameterGroup`
--
ALTER TABLE `DeviceParameterGroup`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DevicePatientMap`
--
ALTER TABLE `DevicePatientMap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DevicePhysicianMap`
--
ALTER TABLE `DevicePhysicianMap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `DevModel`
--
ALTER TABLE `DevModel`
  ADD PRIMARY KEY (`DeviceId`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Measurement`
--
ALTER TABLE `Measurement`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `MeasurementDetails`
--
ALTER TABLE `MeasurementDetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `MeasurementParameterDetails`
--
ALTER TABLE `MeasurementParameterDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ModelParameterMap`
--
ALTER TABLE `ModelParameterMap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `OrganizationAdmin`
--
ALTER TABLE `OrganizationAdmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ParameterGroup`
--
ALTER TABLE `ParameterGroup`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ParameterMeasuredValues`
--
ALTER TABLE `ParameterMeasuredValues`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ParameterRange`
--
ALTER TABLE `ParameterRange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parameters`
--
ALTER TABLE `Parameters`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `PatientOtherDetails`
--
ALTER TABLE `PatientOtherDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Permissions`
--
ALTER TABLE `Permissions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Physician`
--
ALTER TABLE `Physician`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`ProfileId`);

--
-- Indexes for table `RolePermission`
--
ALTER TABLE `RolePermission`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `Root`
--
ALTER TABLE `Root`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `SPRING_SESSION`
--
ALTER TABLE `SPRING_SESSION`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `SPRING_SESSION_ATTRIBUTES`
--
ALTER TABLE `SPRING_SESSION_ATTRIBUTES`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `Tenant`
--
ALTER TABLE `Tenant`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `TenantAdmin`
--
ALTER TABLE `TenantAdmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `UserList`
--
ALTER TABLE `UserList`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
--
-- AUTO_INCREMENT for table `Authorization`
--
ALTER TABLE `Authorization`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `CompanyAdmin`
--
ALTER TABLE `CompanyAdmin`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Device`
--
ALTER TABLE `Device`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `DeviceCompanyMap`
--
ALTER TABLE `DeviceCompanyMap`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `DeviceDetails`
--
ALTER TABLE `DeviceDetails`
  MODIFY `DeviceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `DeviceMeasurementList`
--
ALTER TABLE `DeviceMeasurementList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5813;
--
-- AUTO_INCREMENT for table `DeviceModel`
--
ALTER TABLE `DeviceModel`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `DeviceParameterGroup`
--
ALTER TABLE `DeviceParameterGroup`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `DevicePatientMap`
--
ALTER TABLE `DevicePatientMap`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `DevicePhysicianMap`
--
ALTER TABLE `DevicePhysicianMap`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `DevModel`
--
ALTER TABLE `DevModel`
  MODIFY `DeviceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `Login`
--
ALTER TABLE `Login`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;
--
-- AUTO_INCREMENT for table `Measurement`
--
ALTER TABLE `Measurement`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `MeasurementDetails`
--
ALTER TABLE `MeasurementDetails`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `MeasurementParameterDetails`
--
ALTER TABLE `MeasurementParameterDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `ModelParameterMap`
--
ALTER TABLE `ModelParameterMap`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `OrganizationAdmin`
--
ALTER TABLE `OrganizationAdmin`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ParameterGroup`
--
ALTER TABLE `ParameterGroup`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `ParameterMeasuredValues`
--
ALTER TABLE `ParameterMeasuredValues`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `ParameterRange`
--
ALTER TABLE `ParameterRange`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `Parameters`
--
ALTER TABLE `Parameters`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;
--
-- AUTO_INCREMENT for table `PatientOtherDetails`
--
ALTER TABLE `PatientOtherDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Permissions`
--
ALTER TABLE `Permissions`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `Physician`
--
ALTER TABLE `Physician`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `ProfileId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;
--
-- AUTO_INCREMENT for table `RolePermission`
--
ALTER TABLE `RolePermission`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `RoleId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Root`
--
ALTER TABLE `Root`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `Tenant`
--
ALTER TABLE `Tenant`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `TenantAdmin`
--
ALTER TABLE `TenantAdmin`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserList`
--
ALTER TABLE `UserList`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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