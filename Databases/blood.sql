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
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `blood` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(100) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `blood`, `phone`, `email`, `age`, `address`) VALUES
(1, 'Tonmoy Chokroborti', 'B+', '01303971209', 'tonmoy15-10318@diu.edu.bd', 23, '19 Paridas Road');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `username`, `password`, `name`, `email`, `address`) VALUES
(1, 'DNMC', 'dnmc1234', 'Dhaka National Medical College', 'dnmc1234@gmail.com', 'Jhonson Road ');

-- --------------------------------------------------------

--
-- Table structure for table `keranigonj`
--

CREATE TABLE `keranigonj` (
  `id` int(100) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `narayongonj`
--

CREATE TABLE `narayongonj` (
  `id` int(100) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `northdhaka`
--

CREATE TABLE `northdhaka` (
  `id` int(100) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `southdhaka`
--

CREATE TABLE `southdhaka` (
  `id` int(100) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `southdhaka`
--

INSERT INTO `southdhaka` (`id`, `hospital`, `location`, `number`) VALUES
(1, 'Blood Bank and transfiution centre ', '44/11 West Panthapath, Opposite Shamrita Hospital, ঢাকা 1205', '+8801712-392923'),
(2, 'Red Crescent Blood Bank', ' PCW2+736,Dhaka', '+8801911-212893'),
(3, 'Blood Bank Red Crescent Society', '7, 5 Aorongojeb ,Dhaka', '+8802-9139940'),
(4, 'Nirapod blood bank and trnasfusion centre ', '3rd Floor, Above Olive Restora, 36 Green Road ,Dhaka 1205', '+8801767-456760');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `southdhaka`
--
ALTER TABLE `southdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
