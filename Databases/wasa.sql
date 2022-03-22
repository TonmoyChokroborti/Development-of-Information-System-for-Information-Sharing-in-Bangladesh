-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 06:40 PM
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
-- Database: `wasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `house` varchar(255) NOT NULL,
  `nid` int(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `u_gender` varchar(100) NOT NULL,
  `u_connection` varchar(255) NOT NULL,
  `u_birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wasadb`
--

CREATE TABLE `wasadb` (
  `id` int(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ward` int(100) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wasadb`
--

INSERT INTO `wasadb` (`id`, `city`, `location`, `ward`, `number`) VALUES
(2, 'South Dhaka ,Wasa Head Office ', '98 Kazi Nazrul Islam Ave, Dhaka 1215', 0, '+888110596'),
(3, 'South Dhaka ', 'WASA Fakirapul', 0, '+889358615'),
(4, 'South Dhaka', 'WASA Chadni Ghat', 0, '+887312589'),
(5, 'North Dhaka ', 'WASA Lalmatia', 0, '+888120205'),
(6, 'North Dhaka ', 'WASA Mirpur', 0, '+889003842'),
(7, 'North Dhaka ', 'WASA Mohakhali', 0, '+889899340'),
(8, 'North Dhaka', 'WASA Badda', 0, '+888833719'),
(9, 'South Dhaka', 'WASA Hatkhola', 0, '+889568705'),
(10, 'Narayongonj City', 'WASA Narayangong', 0, '+887630528'),
(11, 'North Dhaka', '107/1/A/1/1, 5th floor, Near to Jatrabari Ideal School,North Jatrabari,Dhaka.', 0, '+8801819229419'),
(12, 'North Dhaka', 'Near Mirpur Bangla college, Mirpur-1, Dhaka', 0, '+880181714495'),
(13, 'Narayongonj ', 'Khanpur Jora Panir tank, Khanpur, Narayanganj.', 0, '+8801819237170'),
(14, 'South Dhaka', 'Dhaka Water Works, Chadnighat, Dhaka.', 0, '+8801819229415'),
(15, 'North Dhaka', 'Lalmatia Steel Tank Compound, Dhaka.', 0, '+8801819229418'),
(16, 'North Dhaka ', 'Mirpur Bangla college, Mirpur-1, Dhaka', 0, '+8801819229417'),
(17, 'North Dhaka ', 'Mahakhali T B Gate, Dhaka.', 0, '+8801819229416'),
(18, 'South Dhaka', 'Fakirapul Steel Tank Compund (Ground Floor), Dhaka.', 0, '+8801819229420'),
(19, 'North Dhaka', 'Notun Bazar, Badda, Dhaka.', 0, '+8801819556318'),
(20, 'North Dhaka', 'Road-7, Sector-3 (Near to west side of Friends Club playground) Uttara, Dhaka.', 0, '+8801819208902');

-- --------------------------------------------------------

--
-- Table structure for table `waterproblem`
--

CREATE TABLE `waterproblem` (
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
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wasadb`
--
ALTER TABLE `wasadb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waterproblem`
--
ALTER TABLE `waterproblem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wasadb`
--
ALTER TABLE `wasadb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `waterproblem`
--
ALTER TABLE `waterproblem`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
