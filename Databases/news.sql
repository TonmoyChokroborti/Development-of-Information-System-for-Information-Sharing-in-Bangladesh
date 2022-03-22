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
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`) VALUES
(1, 'Tonmoy Chokroborti', 'aronnotonmoy@gmail.com', 'tonmoy433790');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(100) NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `catagory_name`, `des`) VALUES
(3, 'Sports', 'Bangladesh has always been a sports-loving nation. Sports brings people together irrespective of religion or social and economic background.  We should prioritise sports in the national budget and development policy.'),
(4, 'Science and Technology ', 'The vibrant and rapidly growing ICT industry in Bangladesh is the fourth area supporting digital transformation. We serve clients in an array of domains, including financial services, telecoms and healthcare, and drive the IT/ITES engine behind some of th'),
(5, 'Society and Culture ', '  Our Bangladeshi  Culture is updating day by day  for  globalization. '),
(6, 'Entertainment', 'Today, the medium of entertainment is no longer limited to television, theatre, and cinema halls. With digitisation, it has expanded to online platforms like YouTube, Netflix, Iflix, Bioscope, Hoichoi and a multitude of others, drawing the interest of the');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`) VALUES
(1, 'Tonmoy', 'hridoy72@gmail.com', 'huegdici kgvfriohcdeiuxh rfjeicdhxishi frjcijhdxish'),
(2, 'Tonmoy', 'hridoy72@gmail.com', 'huegdici kgvfriohcdeiuxh rfjeicdhxishi frjcijhdxish');

-- --------------------------------------------------------

--
-- Table structure for table `newsbd`
--

CREATE TABLE `newsbd` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `admin` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsbd`
--

INSERT INTO `newsbd` (`id`, `title`, `description`, `date`, `catagory`, `thumbnail`, `admin`) VALUES
(5, 'PADMA MULTIPURPOSE BRIDGE PROJECT', '  The Padma Bridge is a multipurpose road-rail bridge across the Padma River to be constructed in Bangladesh. When completed it will be the largest bridge in Bangladesh and the first fixed river crossing for road traffic. It will connect Louhajong, Munshiganj to Shariatpur and Madaripur, linking the south-west of the country, to northern and eastern regions.', '2021-09-23', 'Society and Culture ', 'slide12.jpg', 'Tonmoy Chokroborti'),
(6, 'Metro Rail', '  2021 Mehedi Hasan/Dhaka Tribune\r\n\r\nGovernment mulls launching circular bus service from Agargaon to Farmgate\r\n\r\n\r\nOnce the authorities start partially operating the country’s first metro rail service in December 2022 between Uttara and Agargaon, experts say, it will likely lead to a chaotic situation at the Agargaon point due to various reasons.\r\n\r\nAs the Agargaon station has no additional surrounding space, passengers will flood the area and block the existing narrow road if the metro train carries passengers at full capacity, some planning experts fear.\r\n\r\nAccording to Dhaka Mass Transit Company Ltd (DMTCL), each train has six cars that can carry a maximum of 2,308 people at a time.\r\n\r\nAs one metro train is expected to leave every five minutes, thousands will likely flock to the Agargaon station. It is estimated that some 20,000 passengers will be picked up and dropped off every hour as people are intrigued by the new service, on top of the significantly reduced travel time. It will take just 20 minutes to commute between Uttara and Agargaon.', '2021-09-23', 'Society and Culture ', 'metrorail.jpg', 'Tonmoy Chokroborti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsbd`
--
ALTER TABLE `newsbd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsbd`
--
ALTER TABLE `newsbd`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
