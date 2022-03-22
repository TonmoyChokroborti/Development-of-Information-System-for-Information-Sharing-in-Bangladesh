-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 06:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbaze`
--

-- --------------------------------------------------------

--
-- Table structure for table `garbazedb`
--

CREATE TABLE `garbazedb` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garbazedb`
--

INSERT INTO `garbazedb` (`id`, `city`, `location`, `ward`, `number`) VALUES
(1, 'Dhaka North City Corporation Zonal Office', '49 Kawran Bazar Rd, Dhaka 1215, Bangladesh\r\n\r\n', 0, '+880 2-9125877\r\n\r\n'),
(2, 'Dhaka south city corporation zonal office ', 'Zone - 1 level - 9, west block, nagar bhaban, Fulbaria ', 0, '+8801709900888'),
(3, 'South Dhaka City Corporation Zone 3', '5/Ka, Azimpur Rd, Dhaka 1205', 0, '+8802223-365883'),
(4, 'Dhaka South City Corporation (Mechanical)', 'Maniknagar link road , Dhaka 1100', 0, '+8802223-365883'),
(5, 'Dhaka South City Corporation Zone 2(Khilgaon)', 'Shantipur road , Dhaka 1209', 0, '+8802223-365883');

-- --------------------------------------------------------

--
-- Table structure for table `garbazeproblem`
--

CREATE TABLE `garbazeproblem` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nidnumber` int(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `area` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `solution` varchar(255) NOT NULL,
  `councilor` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garbazedb`
--
ALTER TABLE `garbazedb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garbazeproblem`
--
ALTER TABLE `garbazeproblem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `garbazedb`
--
ALTER TABLE `garbazedb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garbazeproblem`
--
ALTER TABLE `garbazeproblem`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
