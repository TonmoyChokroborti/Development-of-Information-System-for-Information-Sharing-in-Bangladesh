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
-- Database: `fire`
--

-- --------------------------------------------------------

--
-- Table structure for table `keranigonj`
--

CREATE TABLE `keranigonj` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `narayongonj`
--

CREATE TABLE `narayongonj` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `northdhaka`
--

CREATE TABLE `northdhaka` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `northdhaka`
--

INSERT INTO `northdhaka` (`id`, `city`, `location`, `ward`, `number`) VALUES
(1, 'South Dhaka ', 'Siddikbazar fire station ', 0, '+880173002210'),
(2, 'South Dhaka ', 'Sadarghat Fire station', 0, '+8801730002214'),
(3, 'South Dhaka ', 'Sadarghat River Fire Station', 0, '+8801317370301'),
(4, 'South Dhaka ', 'Postogola Fire Station ', 0, '+8801730002216'),
(5, 'South Dhaka', 'Lalbagh Fire station', 0, '+880173002218'),
(6, 'South Dhaka ', 'Polashi Barack Fire Station', 0, '+8801730002219'),
(7, 'South Dhaka', 'Khilgaon Fire Sation', 0, '+8801730002225'),
(8, 'South Dhaka ', 'Tejgaon Fire Station', 0, '+8801730002226'),
(9, 'North Dhaka ', 'Mohammadpur Fire Station', 0, '+8801730002227'),
(10, 'North Dhaka ', 'Mirpur Fire Station', 0, '+8801730002229'),
(11, 'North Dhaka ', 'Kurmitola Fire Station', 0, '+8801730002232'),
(12, 'North Dhaka ', 'Uttara Fire Station ', 0, '+8801730082230'),
(13, 'South Dhaka ', 'Demra Fire Station', 0, '+8801730002302'),
(14, 'North Dhaka ', 'Baridhara Fire Station ', 0, '+8801730002245'),
(15, 'South Dhaka', 'Hazaribagh Fire Station', 0, '+8801721733114'),
(16, 'South Dhaka', 'Secreteraiate Fire Station ', 0, '02-9515555'),
(17, 'South Dhaka ', 'Sutrapur Fire Station', 0, '+8801794117037');

-- --------------------------------------------------------

--
-- Table structure for table `southdhaka`
--

CREATE TABLE `southdhaka` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` int(11) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keranigonj`
--
ALTER TABLE `keranigonj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `narayongonj`
--
ALTER TABLE `narayongonj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `northdhaka`
--
ALTER TABLE `northdhaka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `southdhaka`
--
ALTER TABLE `southdhaka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranigonj`
--
ALTER TABLE `keranigonj`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `narayongonj`
--
ALTER TABLE `narayongonj`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `northdhaka`
--
ALTER TABLE `northdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `southdhaka`
--
ALTER TABLE `southdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
