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
-- Database: `police`
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

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
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

-- --------------------------------------------------------

--
-- Table structure for table `southdhaka`
--

CREATE TABLE `southdhaka` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `southdhaka`
--

INSERT INTO `southdhaka` (`id`, `city`, `location`, `ward`, `number`) VALUES
(1, 'South Dhaka', 'AC (Ramna-Zone)', 0, '+8801713373123'),
(2, 'South Dhaka', 'AC Patrol (Ramna-Zone)', 0, '+8801713398533'),
(3, 'South Dhaka', 'AC (Dhanmondi Zone)', 0, '+88-02-9615874'),
(4, 'South Dhaka', 'OC (Ramna)', 0, '+8801713373125'),
(5, 'South Dhaka', 'OC (Shahbag)', 0, '+8801713373127'),
(6, 'South Dhaka', 'OC (Dhanmondi)', 0, '+8801713373126'),
(7, 'South Dhaka', 'OC (Hajaribag)', 0, '+8801713373136'),
(8, 'South Dhaka', 'OC (Newmarke)', 0, '+8801713373128'),
(9, 'South Dhaka', 'OC (Kalabagan)', 0, '+8801713373139'),
(10, 'South Dhaka ', 'AC (Kotwali)	', 0, '+8801713-373132	'),
(11, 'South Dhaka', 'AC (Lalbag)\\', 0, '+8801713-398350'),
(12, 'South Dhaka', '+8801713-373134', 0, '+8801713-373134'),
(13, 'South Dhaka', 'OC (Kotwali)', 0, '+8801713-373135'),
(14, 'South Dhaka', 'OC (Kamrangichar)', 0, '+8801713-373137'),
(15, 'South Dhaka', 'OC (Chalk Bazar PS)', 0, '+8801713-398337'),
(16, 'South Dhaka', 'OC (Bangshal)', 0, '+8801713-398336'),
(17, 'South Dhaka', 'OC (Bangshal)', 0, '+8801713-398336');

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
-- Indexes for table `problems`
--
ALTER TABLE `problems`
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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `southdhaka`
--
ALTER TABLE `southdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
