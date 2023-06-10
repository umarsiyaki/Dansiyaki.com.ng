-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2023 at 08:43 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trinitya_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtime`
--

CREATE TABLE `airtime` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aBuyDiscount` float NOT NULL DEFAULT '96',
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL,
  `aType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airtime`
--

INSERT INTO `airtime` (`aId`, `aNetwork`, `aBuyDiscount`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`, `aType`) VALUES
(1, '1', 96, 99, 98, 97, 'VTU'),
(2, '2', 96, 99, 98, 97, 'VTU'),
(3, '3', 96, 99, 98, 97, 'VTU'),
(4, '4', 96, 99, 98, 97, 'VTU'),
(5, '1', 96, 99, 98, 97, 'Share And Sell'),
(6, '2', 96, 99, 98, 97, 'Share And Sell'),
(7, '3', 96, 99, 98, 97, 'Share And Sell'),
(8, '4', 96, 99, 98, 97, 'Share And Sell');

-- --------------------------------------------------------

--
-- Table structure for table `airtimepinprice`
--

CREATE TABLE `airtimepinprice` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airtimepinprice`
--

INSERT INTO `airtimepinprice` (`aId`, `aNetwork`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`) VALUES
(1, '1', 99, 98, 97),
(2, '2', 99, 98, 97),
(3, '3', 99, 98, 97),
(4, '4', 99, 98, 97);

-- --------------------------------------------------------

--
-- Table structure for table `apiconfigs`
--

CREATE TABLE `apiconfigs` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apiconfigs`
--

INSERT INTO `apiconfigs` (`aId`, `name`, `value`) VALUES
(1, 'monifyCharges', '50'),
(2, 'monifyApi', 'MK_PROD_2UA1UPTYYO'),
(3, 'monifySecrete', 'QMN6AUGP8AXH0HASIOG9L4ZYTHUXN6BJ'),
(4, 'monifyContract', '111718694222'),
(5, 'monifyWeStatus', 'On'),
(6, 'monifyMoStatus', 'On'),
(7, 'monifyFeStatus', 'On'),
(8, 'monifySaStatus', 'On'),
(9, 'monifyStatus', 'On'),
(10, 'paystackCharges', '1.5'),
(11, 'paystackApi', ''),
(12, 'paystackStatus', 'Off'),
(13, 'mtnVtuKey', 'OPyhYWc6VSS5TUQxKKK6'),
(14, 'mtnVtuProvider', 'https://n3tdata.com/api/topup/'),
(15, 'mtnSharesellKey', 'OPyhYWc6VSS5TUQxKKK6'),
(16, 'mtnSharesellProvider', 'https://n3tdata.com/api/topup/'),
(17, 'airtelVtuKey', 'OPyhYWc6VSS5TUQxKKK6'),
(18, 'airtelVtuProvider', 'https://n3tdata.com/api/topup/'),
(19, 'airtelSharesellKey', 'OPyhYWc6VSS5TUQxKKK6'),
(20, 'airtelSharesellProvider', 'https://n3tdata.com/api/topup/'),
(21, 'gloVtuKey', 'OPyhYWc6VSS5TUQxKKK6'),
(22, 'gloVtuProvider', 'https://n3tdata.com/api/topup/'),
(23, 'gloSharesellKey', 'OPyhYWc6VSS5TUQxKKK6'),
(24, 'gloSharesellProvider', 'https://n3tdata.com/api/topup/'),
(25, '9mobileVtuKey', 'OPyhYWc6VSS5TUQxKKK6'),
(26, '9mobileVtuProvider', 'https://n3tdata.com/api/topup/'),
(27, '9mobileSharesellKey', 'OPyhYWc6VSS5TUQxKKK6'),
(28, '9mobileSharesellProvider', 'https://n3tdata.com/api/topup/'),
(29, 'mtnSmeApi', 'OPyhYWc6VSS5TUQxKKK6'),
(30, 'mtnSmeProvider', 'https://aabaxztech.com/api/data/'),
(31, 'mtnGiftingApi', 'OPyhYWc6VSS5TUQxKKK6'),
(32, 'mtnGiftingProvider', 'https://aabaxztech.com/api/data/'),
(33, 'mtnCorporateApi', 'OPyhYWc6VSS5TUQxKKK6'),
(34, 'mtnCorporateProvider', 'https://aabaxztech.com/api/data/'),
(35, 'airtelSmeApi', 'OPyhYWc6VSS5TUQxKKK6'),
(36, 'airtelSmeProvider', 'https://aabaxztech.com/api/data/'),
(37, 'airtelGiftingApi', 'OPyhYWc6VSS5TUQxKKK6'),
(38, 'airtelGiftingProvider', 'https://n3tdata.com/api/data/'),
(39, 'airtelCorporateApi', 'OPyhYWc6VSS5TUQxKKK6'),
(40, 'airtelCorporateProvider', 'https://aabaxztech.com/api/data/'),
(41, 'gloSmeApi', 'OPyhYWc6VSS5TUQxKKK6'),
(42, 'gloSmeProvider', 'https://aabaxztech.com/api/data/'),
(43, 'gloGiftingApi', 'OPyhYWc6VSS5TUQxKKK6'),
(44, 'gloGiftingProvider', 'https://aabaxztech.com/api/data/'),
(45, 'gloCorporateApi', 'OPyhYWc6VSS5TUQxKKK6'),
(46, 'gloCorporateProvider', 'https://aabaxztech.com/api/data/'),
(47, '9mobileSmeApi', 'OPyhYWc6VSS5TUQxKKK6'),
(48, '9mobileSmeProvider', 'https://aabaxztech.com/api/data/'),
(49, '9mobileGiftingApi', 'OPyhYWc6VSS5TUQxKKK6'),
(50, '9mobileGiftingProvider', 'https://aabaxztech.com/api/data/'),
(51, '9mobileCorporateApi', 'OPyhYWc6VSS5TUQxKKK6'),
(52, '9mobileCorporateProvider', 'https://aabaxztech.com/api/data/'),
(53, 'cableVerificationApi', 'OPyhYWc6VSS5TUQxKKK6'),
(54, 'cableVerificationProvider', 'https://aabaxztech.com/api/validateiuc'),
(55, 'cableApi', 'OPyhYWc6VSS5TUQxKKK6'),
(56, 'cableProvider', 'https://aabaxztech.com/api/cablesub/'),
(57, 'meterVerificationApi', 'OPyhYWc6VSS5TUQxKKK6'),
(58, 'meterVerificationProvider', 'https://aabaxztech.com/api/validatemeter'),
(59, 'meterApi', 'OPyhYWc6VSS5TUQxKKK6'),
(60, 'meterProvider', 'https://aabaxztech.com/api/billpayment/'),
(61, 'examApi', 'OPyhYWc6VSS5TUQxKKK6'),
(62, 'examProvider', 'https://aabaxztech.com/api/epin/'),
(63, 'rechargePinApi', ''),
(64, 'rechargePinProvider', ''),
(65, 'walletOneApi', 'OPyhYWc6VSS5TUQxKKK6'),
(66, 'walletOneProvider', 'https://n3tdata.com/api/user/'),
(67, 'walletOneProviderName', 'N3TDATA'),
(68, 'walletTwoApi', 'OPyhYWc6VSS5TUQxKKK6'),
(69, 'walletTwoProvider', 'https://legitdataway.com/api/user'),
(70, 'walletTwoProviderName', 'TOPUPMATE'),
(71, 'walletThreeApi', 'OPyhYWc6VSS5TUQxKKK6'),
(72, 'walletThreeProvider', 'https://aabaxztech.com/api/user/'),
(73, 'walletThreeProviderName', 'AABAXTECH ');

-- --------------------------------------------------------

--
-- Table structure for table `apilinks`
--

CREATE TABLE `apilinks` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apilinks`
--

INSERT INTO `apilinks` (`aId`, `name`, `value`, `type`) VALUES
(1, 'Topupmate', 'https://topupmate.com/api/user/', 'Wallet'),
(2, 'Topupmate', 'https://topupmate.com/api/airtime/', 'Airtime'),
(3, 'Topupmate', 'https://topupmate.com/api/data/', 'Data'),
(4, 'Topupmate', 'https://topupmate.com/api/cabletv/verify/', 'CableVer'),
(5, 'Topupmate', 'https://topupmate.com/api/cabletv/', 'Cable'),
(6, 'Topupmate', 'https://topupmate.com/api/electricity/verify/', 'ElectricityVer'),
(7, 'Topupmate', 'https://topupmate.com/api/electricity/', 'Electricity'),
(8, 'Topupmate', 'https://topupmate.com/api/exam/', 'Exam'),
(9, 'N3T Data', 'https://n3tdata.com/api/user/', 'Wallet'),
(10, 'N3T Data', 'https://n3tdata.com/api/topup/', 'Airtime'),
(11, 'N3T Data', 'https://n3tdata.com/api/data/', 'Data'),
(12, 'N3T Data', 'https://n3tdata.com/api/cable/cable-validation', 'CableVer'),
(13, 'N3T Data', 'https://n3tdata.com/api/cable/', 'Cable'),
(14, 'N3T Data', 'https://n3tdata.com/api/bill/bill-validation', 'ElectricityVer'),
(15, 'N3T Data', 'https://n3tdata.com/api/bill/', 'Electricity'),
(16, 'N3T Data', 'https://n3tdata.com/api/exam/', 'Exam'),
(17, 'Legitdataway', 'https://legitdataway.com/api/user', 'Wallet'),
(18, 'Legitdataway', 'https://legitdataway.com/api/topup', 'Airtime'),
(19, 'Legitdataway', 'https://legitdataway.com/api/data', 'Data'),
(20, 'Legitdataway', 'https://legitdataway.com/api/cable/cable-validation', 'CableVer'),
(21, 'Legitdataway', 'https://legitdataway.com/api/cable/', 'Cable'),
(22, 'Legitdataway', 'https://legitdataway.com/api/bill/bill-validation', 'ElectricityVer'),
(23, 'Legitdataway', 'https://legitdataway.com/api/bill/', 'Electricity'),
(24, 'Legitdataway', 'https://legitdataway.com/api/exam/', 'Exam'),
(25, 'Aabaxztech', 'https://aabaxztech.com/api/user/', 'Wallet'),
(26, 'Aabaxztech', 'https://aabaxztech.com/api/topup/', 'Airtime'),
(27, 'Aabaxztech', 'https://aabaxztech.com/api/data/', 'Data'),
(28, 'Aabaxztech', 'https://aabaxztech.com/api/validateiuc', 'CableVer'),
(29, 'Aabaxztech', 'https://aabaxztech.com/api/cablesub/', 'Cable'),
(30, 'Aabaxztech', 'https://aabaxztech.com/api/validatemeter', 'ElectricityVer'),
(31, 'Aabaxztech', 'https://aabaxztech.com/api/billpayment/', 'Electricity'),
(32, 'Aabaxztech', 'https://aabaxztech.com/api/epin/', 'Exam'),
(33, 'Maskawasub', 'https://maskawasub.com/api/user/', 'Wallet'),
(34, 'Maskawasub', 'https://maskawasub.com/api/topup/', 'Airtime'),
(35, 'Maskawasub', 'https://maskawasub.com/api/data/', 'Data'),
(36, 'Maskawasub', 'https://maskawasub.com/api/validateiuc', 'CableVer'),
(37, 'Maskawasub', 'https://maskawasub.com/api/cablesub/', 'Cable'),
(38, 'Maskawasub', 'https://maskawasub.com/api/validatemeter', 'ElectricityVer'),
(39, 'Maskawasub', 'https://maskawasub.com/api/billpayment/', 'Electricity'),
(40, 'Maskawasub', 'https://maskawasub.com/api/epin/', 'Exam'),
(41, 'Husmodataapi', 'https://husmodataapi.com/api/user/', 'Wallet'),
(42, 'Husmodataapi', 'https://husmodataapi.com/api/topup/', 'Airtime'),
(43, 'Husmodataapi', 'https://husmodataapi.com/api/data/', 'Data'),
(44, 'Husmodataapi', 'https://husmodataapi.com/api/validateiuc', 'CableVer'),
(45, 'Husmodataapi', 'https://husmodataapi.com/api/cablesub/', 'Cable'),
(46, 'Husmodataapi', 'https://husmodataapi.com/api/validatemeter', 'ElectricityVer'),
(47, 'Husmodataapi', 'https://husmodataapi.com/api/billpayment/', 'Electricity'),
(48, 'Husmodataapi', 'https://husmodataapi.com/api/epin/', 'Exam'),
(49, 'Gongozconcept', 'https://gongozconcept.com/api/user/', 'Wallet'),
(50, 'Gongozconcept', 'https://gongozconcept.com/api/topup/', 'Airtime'),
(51, 'Gongozconcept', 'https://gongozconcept.com/api/data/', 'Data'),
(52, 'Gongozconcept', 'https://gongozconcept.com/api/validateiuc', 'CableVer'),
(53, 'Gongozconcept', 'https://gongozconcept.com/api/cablesub/', 'Cable'),
(54, 'Gongozconcept', 'https://gongozconcept.com/api/validatemeter', 'ElectricityVer'),
(55, 'Gongozconcept', 'https://gongozconcept.com/api/billpayment/', 'Electricity'),
(56, 'Gongozconcept', 'https://gongozconcept.com/api/epin/', 'Exam'),
(57, 'Sabrdataapi', 'https://sabrdataapi.com/api/user/', 'Wallet'),
(58, 'Sabrdataapi', 'https://sabrdataapi.com/api/topup/', 'Airtime'),
(59, 'Sabrdataapi', 'https://sabrdataapi.com/api/data/', 'Data'),
(60, 'Sabrdataapi', 'https://sabrdataapi.com/ajax/validate_iuc', 'CableVer'),
(61, 'Sabrdataapi', 'https://sabrdataapi.com/api/cablesub/', 'Cable'),
(62, 'Sabrdataapi', 'https://sabrdataapi.com/api/validatemeter', 'ElectricityVer'),
(63, 'Sabrdataapi', 'https://sabrdataapi.com/api/billpayment/', 'Electricity'),
(64, 'Sabrdataapi', 'https://sabrdataapi.com/api/epin/', 'Exam');

-- --------------------------------------------------------

--
-- Table structure for table `cableid`
--

CREATE TABLE `cableid` (
  `cId` int(11) NOT NULL,
  `cableid` varchar(10) DEFAULT NULL,
  `provider` varchar(10) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cableid`
--

INSERT INTO `cableid` (`cId`, `cableid`, `provider`, `providerStatus`) VALUES
(1, '1', 'GOTV', 'On'),
(2, '2', 'DSTV', 'On'),
(3, '3', 'STARTIMES', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `cableplans`
--

CREATE TABLE `cableplans` (
  `cpId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cableprovider` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `msgId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`msgId`, `sId`, `name`, `contact`, `subject`, `message`, `dPosted`) VALUES
(3, 0, 'Inanstech', 'inanstech@gmail.com', 'Hghj', 'Gfvhgy', '2022-11-18 22:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `dataplans`
--

CREATE TABLE `dataplans` (
  `pId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataplans`
--

INSERT INTO `dataplans` (`pId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(12, '500 MB', '103', '120', '115', '110', '6', 'SME', 1, '30'),
(13, '1GB', '205', '215', '210', '210', '7', 'SME', 1, '30'),
(14, '2GB', '410', '440', '430', '420', '8', 'SME', 1, '30'),
(15, '5GB', '1025', '1100', '1075', '1050', '11', 'SME', 1, '30'),
(16, '10GB', '2080', '2200', '2180', '2150', '43', 'SME', 1, '30'),
(19, '1.5GB', '870', '1000', '950', '900', '8', 'Gifting', 4, '30'),
(20, '2GB', '1050', '1200', '1150', '1100', '9', 'Gifting', 4, '30'),
(21, '3GB', '1320', '1500', '1450', '1400', '10', 'Gifting', 4, '30'),
(22, '4.5GB', '1750', '2000', '1920', '1850', '11', 'Gifting', 4, '30'),
(23, '6GB', '2200', '2500', '2400', '2300', '12', 'Gifting', 4, '30'),
(24, '1.35GB', '455', '500', '490', '480', '20', 'Gifting', 2, '30'),
(25, '2.9GB', '950', '1050', '1000', '950', '21', 'Gifting', 2, '30'),
(26, '4.1', '1450', '1600', '1550', '1500', '22', 'Gifting', 2, '30'),
(27, '5.8GB', '1900', '2100', '2050', '2000', '24', 'Gifting', 2, '30'),
(28, '2GB', '470', '500', '490', '480', '208', 'Corporate', 1, '30'),
(29, '1GB', '235', '250', '245', '240', '210', 'Corporate', 1, '30'),
(30, '3GB', '705', '750', '735', '720', '211', 'Corporate', 1, '30'),
(32, '5GB', '1175', '1150', '1125', '1100', '212', 'Corporate', 1, '30'),
(33, '10GB', '2400', '2500', '2500', '2500', '213', 'Corporate', 1, '30'),
(34, '500MB', '123', '135', '130', '130', '216', 'Corporate', 1, '30'),
(35, '650MB', '183', '210', '200', '198', '235', 'Corporate', 3, '30'),
(36, '500MB', '425', '450', '445', '440', '182', 'Gifting', 3, '30'),
(37, '1.5GB', '850', '900', '890', '880', '183', 'Gifting', 3, '30'),
(38, '500 MB', '95', '105', '100', '100', '222', 'Corporate', 4, '30'),
(39, '1GB', '190', '215', '210', '205', '223', 'Corporate', 4, '30'),
(40, '2GB', '380', '430', '420', '410', '224', 'Corporate', 4, '30'),
(41, '5GB', '950', '1075', '1050', '1025', '225', 'Corporate', 4, '30'),
(42, '10GB', '1900', '2150', '2100', '2050', '230', 'Corporate', 4, '30'),
(43, '3GB', '615', '660', '645', '630', '44', 'SME', 1, '30'),
(44, '200MB', '65', '80', '75', '75', '231', 'Corporate', 1, '30'),
(45, '100MB', '70', '80', '80', '80', '228', 'Corporate', 4, '30'),
(46, '300MB', '110', '120', '120', '120', '229', 'Corporate', 4, '30'),
(47, '2GB', '1020', '1100', '1090', '1080', '184', 'Gifting', 3, '30'),
(48, '3GB', '1275', '1400', '1375', '1350', '185', 'Gifting', 3, '30'),
(49, '4.5GB', '1700', '1850', '1825', '1800', '186', 'Gifting', 3, '30'),
(50, '11GB', '3400', '3900', '3800', '3700', '187', 'Gifting', 3, '30'),
(51, '15GB', '4250', '4850', '4800', '4500', '188', 'Gifting', 3, '30'),
(52, '6GB', '2500', '2800', '2750', '2700', '49', 'Gifting', 1, '30'),
(53, '15GB', '5000', '5500', '5450', '5400', '50', 'Gifting', 1, '30'),
(54, '40GB', '10000', '12000', '11800', '11500', '51', 'Gifting', 1, '30');

-- --------------------------------------------------------

--
-- Table structure for table `electricityid`
--

CREATE TABLE `electricityid` (
  `eId` int(11) NOT NULL,
  `electricityid` varchar(50) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electricityid`
--

INSERT INTO `electricityid` (`eId`, `electricityid`, `provider`, `abbreviation`, `providerStatus`) VALUES
(1, '1', 'Ikeja Electric', 'IE', 'On'),
(2, '2', 'Eko Electric', 'EKEDC', 'On'),
(3, '3', 'Kano Electric', 'KEDCO', 'On'),
(4, '4', 'Port Harcourt Electric', 'PHEDC', 'On'),
(5, '5', 'Jos Electric', 'JED', 'On'),
(6, '6', 'Ibadan Electric', 'IBEDC', 'On'),
(7, '7', 'Kaduna Electric', 'KEDC', 'On'),
(8, '8', 'Abuja Electric', 'AEDC', 'On'),
(9, '9', 'Enugu Electric', 'ENUGU', 'On'),
(10, '10', 'Benin Electric', 'BENIN', 'On'),
(11, '11', 'Yola Electric', 'YOLA', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `examid`
--

CREATE TABLE `examid` (
  `eId` int(11) NOT NULL,
  `examid` varchar(10) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `price` int(20) NOT NULL DEFAULT '0',
  `buying_price` int(20) NOT NULL DEFAULT '0',
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examid`
--

INSERT INTO `examid` (`eId`, `examid`, `provider`, `price`, `buying_price`, `providerStatus`) VALUES
(1, '1', 'WAEC', 1800, 0, 'On'),
(2, '2', 'NECO', 800, 0, 'On'),
(3, '3', 'NABTEB', 950, 0, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `networkid`
--

CREATE TABLE `networkid` (
  `nId` int(11) NOT NULL,
  `networkid` varchar(10) NOT NULL,
  `smeId` varchar(10) NOT NULL,
  `giftingId` varchar(10) NOT NULL,
  `corporateId` varchar(10) NOT NULL,
  `vtuId` varchar(10) NOT NULL,
  `sharesellId` varchar(10) NOT NULL,
  `network` varchar(20) NOT NULL,
  `networkStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `vtuStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `sharesellStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `airtimepinStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `smeStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `giftingStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `corporateStatus` varchar(10) NOT NULL DEFAULT 'Off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkid`
--

INSERT INTO `networkid` (`nId`, `networkid`, `smeId`, `giftingId`, `corporateId`, `vtuId`, `sharesellId`, `network`, `networkStatus`, `vtuStatus`, `sharesellStatus`, `airtimepinStatus`, `smeStatus`, `giftingStatus`, `corporateStatus`) VALUES
(1, '1', '1', '1', '1', '1', '1', 'MTN', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(2, '3', '3', '3', '3', '3', '3', 'GLO', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(3, '4', '4', '4', '4', '4', '4', '9MOBILE', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(4, '2', '2', '2', '2', '2', '2', 'AIRTEL', 'On', 'On', 'On', 'Off', 'On', 'On', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `msgId` int(200) NOT NULL,
  `msgfor` tinyint(4) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dPosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`msgId`, `msgfor`, `subject`, `message`, `status`, `dPosted`) VALUES
(1, 3, 'Welcome Message', 'Hi There! You are welcome, we are your one-stop platform for all for bills payment, airtime, data plans, and cable tv subscription. All our services are available to you at a discount rate. Our customer support team is available to you 24/7.', 0, '2022-06-21 17:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `sId` int(200) NOT NULL,
  `sitename` varchar(20) DEFAULT NULL,
  `siteurl` varchar(100) DEFAULT NULL,
  `agentupgrade` varchar(20) DEFAULT NULL,
  `vendorupgrade` varchar(20) DEFAULT NULL,
  `apidocumentation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `whatsappgroup` varchar(100) DEFAULT NULL,
  `facebook` varchar(10) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `referalupgradebonus` float NOT NULL DEFAULT '100',
  `referalairtimebonus` float NOT NULL DEFAULT '1',
  `referaldatabonus` float NOT NULL DEFAULT '1',
  `referalwalletbonus` float NOT NULL DEFAULT '1',
  `referalcablebonus` float NOT NULL DEFAULT '1',
  `referalexambonus` float NOT NULL DEFAULT '1',
  `referalmeterbonus` float NOT NULL DEFAULT '1',
  `wallettowalletcharges` float NOT NULL DEFAULT '50',
  `sitecolor` varchar(10) NOT NULL DEFAULT '#0000e6',
  `logindesign` varchar(10) NOT NULL DEFAULT '5',
  `homedesign` varchar(10) NOT NULL DEFAULT '5',
  `notificationStatus` varchar(5) NOT NULL DEFAULT 'Off',
  `accountname` varchar(50) DEFAULT NULL,
  `accountno` varchar(15) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  `electricitycharges` varchar(5) DEFAULT NULL,
  `airtimemin` varchar(10) NOT NULL DEFAULT '50',
  `airtimemax` varchar(10) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`sId`, `sitename`, `siteurl`, `agentupgrade`, `vendorupgrade`, `apidocumentation`, `phone`, `email`, `whatsapp`, `whatsappgroup`, `facebook`, `twitter`, `instagram`, `telegram`, `referalupgradebonus`, `referalairtimebonus`, `referaldatabonus`, `referalwalletbonus`, `referalcablebonus`, `referalexambonus`, `referalmeterbonus`, `wallettowalletcharges`, `sitecolor`, `logindesign`, `homedesign`, `notificationStatus`, `accountname`, `accountno`, `bankname`, `electricitycharges`, `airtimemin`, `airtimemax`) VALUES
(1, 'TEST VTU', 'https://inanstech.com/', '1000', '2000', 'https://inanstech.com/documentation', '080111111111', 'support@inanstech.com', '070111111111', '', '', '', '', '', 100, 1, 1, 1, 1, 1, 1, 10000000000, '#0000ff', '4', '5', 'On', 'INANS TECH', '1111111111', 'TEST BANK', '200', '50', '500');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `sId` int(200) NOT NULL,
  `sApiKey` varchar(200) NOT NULL,
  `sFname` varchar(50) NOT NULL,
  `sLname` varchar(50) NOT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sPhone` varchar(20) NOT NULL,
  `sPass` varchar(150) NOT NULL,
  `sState` varchar(50) NOT NULL,
  `sPin` int(10) NOT NULL DEFAULT '1234',
  `sPinStatus` tinyint(3) DEFAULT '0',
  `sType` tinyint(10) NOT NULL DEFAULT '1',
  `sWallet` float NOT NULL DEFAULT '0',
  `sRefWallet` float NOT NULL DEFAULT '0',
  `sBankNo` varchar(20) DEFAULT NULL,
  `sRolexBank` varchar(20) DEFAULT NULL,
  `sSterlingBank` varchar(20) DEFAULT NULL,
  `sFidelityBank` varchar(20) DEFAULT NULL,
  `sBankName` varchar(30) DEFAULT NULL,
  `sRegStatus` tinyint(5) NOT NULL DEFAULT '3',
  `sVerCode` smallint(20) NOT NULL DEFAULT '0',
  `sRegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sLastActivity` datetime DEFAULT NULL,
  `sReferal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`sId`, `sApiKey`, `sFname`, `sLname`, `sEmail`, `sPhone`, `sPass`, `sState`, `sPin`, `sPinStatus`, `sType`, `sWallet`, `sRefWallet`, `sBankNo`, `sRolexBank`, `sSterlingBank`, `sFidelityBank`, `sBankName`, `sRegStatus`, `sVerCode`, `sRegDate`, `sLastActivity`, `sReferal`) VALUES
(3, 'bAColvB8B9ma39DxrcCCCpAqCCd1fA072nAbGCgIx8A6s6iA1JCBdktA4Eex1669972573', 'Mujahid', 'Lawan', 'mujahidlawan242@gmail.com', '08165715893', '6412cac4c8', 'Kano', 2019, 0, 1, 0, 0, '8868953658', NULL, NULL, NULL, 'Wema bank', 0, 6863, '2022-12-02 10:16:13', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sysusers`
--

CREATE TABLE `sysusers` (
  `sysId` int(100) NOT NULL,
  `sysName` varchar(50) NOT NULL,
  `sysRole` tinyint(2) NOT NULL,
  `sysUsername` varchar(20) NOT NULL,
  `sysToken` varchar(30) NOT NULL,
  `sysStatus` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sysusers`
--

INSERT INTO `sysusers` (`sysId`, `sysName`, `sysRole`, `sysUsername`, `sysToken`, `sysStatus`) VALUES
(1, 'TEST', 1, 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `transref` varchar(255) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `servicedesc` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `oldbal` varchar(100) NOT NULL,
  `newbal` varchar(100) NOT NULL,
  `profit` float NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `user`, `token`) VALUES
(1, 37, '1668805408nCqsmDHlyt110');

-- --------------------------------------------------------

--
-- Table structure for table `uservisits`
--

CREATE TABLE `uservisits` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `visitTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uservisits`
--

INSERT INTO `uservisits` (`id`, `user`, `state`, `visitTime`) VALUES
(1, 37, 'Ogun', '1668805426');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtime`
--
ALTER TABLE `airtime`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `apilinks`
--
ALTER TABLE `apilinks`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `cableid`
--
ALTER TABLE `cableid`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `cableplans`
--
ALTER TABLE `cableplans`
  ADD PRIMARY KEY (`cpId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `dataplans`
--
ALTER TABLE `dataplans`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `electricityid`
--
ALTER TABLE `electricityid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `examid`
--
ALTER TABLE `examid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `networkid`
--
ALTER TABLE `networkid`
  ADD PRIMARY KEY (`nId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`sId`),
  ADD UNIQUE KEY `sApiKey` (`sApiKey`),
  ADD UNIQUE KEY `sPhone` (`sPhone`),
  ADD UNIQUE KEY `sEmail` (`sEmail`);

--
-- Indexes for table `sysusers`
--
ALTER TABLE `sysusers`
  ADD PRIMARY KEY (`sysId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tId`),
  ADD UNIQUE KEY `transref` (`transref`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservisits`
--
ALTER TABLE `uservisits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airtime`
--
ALTER TABLE `airtime`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `apilinks`
--
ALTER TABLE `apilinks`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `cableid`
--
ALTER TABLE `cableid`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cableplans`
--
ALTER TABLE `cableplans`
  MODIFY `cpId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dataplans`
--
ALTER TABLE `dataplans`
  MODIFY `pId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `electricityid`
--
ALTER TABLE `electricityid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `examid`
--
ALTER TABLE `examid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `networkid`
--
ALTER TABLE `networkid`
  MODIFY `nId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sysusers`
--
ALTER TABLE `sysusers`
  MODIFY `sysId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `uservisits`
--
ALTER TABLE `uservisits`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
