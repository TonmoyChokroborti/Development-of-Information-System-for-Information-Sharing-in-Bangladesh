-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 06:38 PM
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
-- Database: `ambulance`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulancedb`
--

CREATE TABLE `ambulancedb` (
  `id` int(100) NOT NULL,
  `ambulanceprovider` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `fee` int(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulancedb`
--

INSERT INTO `ambulancedb` (`id`, `ambulanceprovider`, `location`, `fee`, `number`) VALUES
(1, 'M N Emergency Ambulance Service', ' Dhalka Nagar Ln, ঢাকা 1204', 500, '+88 01923-128139'),
(2, 'খালেদ অ্যাম্বুলেন্স সার্ভিস', ' 67 মতিঝিল রোড, ঢাকা 1000', 500, '+8801933-246577'),
(3, 'Jatrabari ambulance service', 'Jatrabari , Dhaka', 500, '+8801788-97778'),
(4, 'upoma ambulance service', 'Shonir Akhra Dhaka-Chittagong, Highway Mukti Sharani, ঢাকা', 500, '+8801713-543905'),
(5, 'Mim Ambulance Service', 'House-08, Road-13, DIT Project, ঢাকা 1212', 500, '+8801716-523567'),
(6, '24 ambulance service', '250 Moghbazar Rd, ঢাকা 1217', 500, '+8801911-125156'),
(7, 'Sagor Ambulance Sarvice', 'বাগবাড়ি রোড, ঢাকা', 500, '+8801632-720361');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulancedb`
--
ALTER TABLE `ambulancedb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulancedb`
--
ALTER TABLE `ambulancedb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
