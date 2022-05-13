-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: May 13, 2022 at 05:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `inquirys`
--

CREATE TABLE `inquirys` (
  `inquiryID` int(10) NOT NULL,
  `inquiryType` varchar(50) NOT NULL,
  `inquiryEmail` varchar(50) NOT NULL,
  `inquiryName` varchar(50) NOT NULL,
  `inquiryMsg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquirys`
--

INSERT INTO `inquirys` (`inquiryID`, `inquiryType`, `inquiryEmail`, `inquiryName`, `inquiryMsg`) VALUES
(2, 'Wire breakage moratuwa', 'anusara@gmail.com', 'kunkuma', '2-hour power cut due to a power outage in the Moratuwa area'),
(5, 'Meter board damage', 'harsha@gmail.com', 'harsha', 'Wire breakage Moratuwa area');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inquirys`
--
ALTER TABLE `inquirys`
  ADD PRIMARY KEY (`inquiryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquirys`
--
ALTER TABLE `inquirys`
  MODIFY `inquiryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
