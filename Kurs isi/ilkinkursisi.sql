-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 12:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilkinkursisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `basliqlar`
--

CREATE TABLE `basliqlar` (
  `A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infobasliqlari`
--

CREATE TABLE `infobasliqlari` (
  `BasliqID` int(11) NOT NULL,
  `Ad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infomezmun`
--

CREATE TABLE `infomezmun` (
  `InfoID` int(11) NOT NULL,
  `Mezmun` text NOT NULL,
  `BasliqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infobasliqlari`
--
ALTER TABLE `infobasliqlari`
  ADD PRIMARY KEY (`BasliqID`);

--
-- Indexes for table `infomezmun`
--
ALTER TABLE `infomezmun`
  ADD PRIMARY KEY (`InfoID`),
  ADD KEY `BasliqID` (`BasliqID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `infomezmun`
--
ALTER TABLE `infomezmun`
  ADD CONSTRAINT `infomezmun_ibfk_1` FOREIGN KEY (`BasliqID`) REFERENCES `infobasliqlari` (`BasliqID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
