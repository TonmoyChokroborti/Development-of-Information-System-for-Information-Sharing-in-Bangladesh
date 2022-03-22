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
-- Database: `electricity`
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

--
-- Dumping data for table `narayongonj`
--

INSERT INTO `narayongonj` (`id`, `city`, `location`, `ward`, `number`) VALUES
(1, 'Fatulla , Narayongonj	', 'Fatulla	Punchaboti, NOCS Fatulla, N.gong.	Email:xenfatulla@dpdc.org.bd', 74, '+8801730320328'),
(2, 'Narayangonj (West)', '33 Esakha Road, Killarpul, N.gong.  Email:xennarayangongjw@dpdc.org.bd', 71, '+8801730320330'),
(3, 'Narayangonj (East)', '33 Esakha Road, Killarpul, N.gong.  Email:xennarayangonje@dpdc.org.bd', 73, '+8801730320329'),
(4, 'Siddhirgonj', '147/A, Ati Siddirgong, N.gong. Email:xensiddirgonj@dpdc.org.bd', 72, '+8801730320331'),
(5, 'Sitalakhya', ' 33/11kv Sub-Station, Punchaboti,Fatulla, N.gonj		Email:xensitalakhya@dpdc.org.bd', 87, '+8801766675041');

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
(9, 'Adabor , North Dhaka', '24/A, Block-C, Tajmohal Road, Japan Garden City, Adabor, Dhaka.	xenadabor@dpdc.org.bd	', 36, '+8801766675038'),
(10, 'Bashaboo,North Dhaka', '1460/2/kha, Taltala Jilpar, Khilgaon, Dhaka-1219.	xenbashaboo@dpdc.org.bd	', 53, '+8801730320316'),
(11, 'Bonosri, North Dhaka ', 'Bonosri	Block # M, Goran 33/11 Kv Sub-station, South Bonosri, Khilgaon, Dhaka 1219.		Email : xenbanasree@dpdc.org.bd	', 57, '+8801766675039'),
(14, 'Shamoli,North Dhaka', '8/2 NEW Colony, Lalmatia, \r\nBlock-A, \r\nDhaka-1207.\r\nxenshamoli@dpdc.org.bd', 34, '+8801730320303');

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

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `name`, `nidnumber`, `ward`, `area`, `city`, `problem`, `solution`, `councilor`, `address`) VALUES
(1, 'Tonmoy Chokroborti', 0, 41, '19 A Joychondro Ghosh Lane,Paridas road ', 'South Dhaka', 'There is a broken  transmeter in our  locality , sometimes it is firing  , it is infront of a  hospital  , paaserby are sufffering most        ', 'Repair this transmeter or change this transmeter .               ', 'Arif Hossain Choton ', 'Nilkuthi ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `nid` int(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `u_gender` varchar(255) NOT NULL,
  `u_connection` varchar(255) NOT NULL,
  `u_birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `city`, `ward`, `house`, `nid`, `occupation`, `u_gender`, `u_connection`, `u_birthday`) VALUES
(1, 'TONMOY CHOKROBORTI', 'North Dhaka', '32', '18/A Rankeen Street Wari', 2147483647, 'Engineer', 'Male', 'Digital Card Meter Connection', '2021-09-30');

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
(14, 'Azimpur ,South Dhaka', '33/11 kV Sub-station, Azimpur Bus Stand, Chowrasta, West Side, Dhaka. \r\n  xenazimpur@dpdc.org.bd', 25, '+8801730320309'),
(15, 'Banglabazar, North Dhaka', '1, Kumartoli, Islampur, Dhaka.	xenbanglabazar@dpdc.org.bd	', 63, '+8801730320321	'),
(16, 'Bangshal,South Dhaka ', '26, Nazimuddin Road, infront of Mappusha mazar, Dhaka. 	xenbangshal@dpdc.org.bd	', 65, '+8801730320322	'),
(17, 'Dhanmondi, South Dhaka	', '8/2 Lalmatia, NEW Colony, Dhaka-1207.	 Email: xendhanmondi@dpdc.org.bd', 32, '+8801730320302'),
(18, 'Demra, South Dhaka', 'Sharulia Bazar, Beside Fire Service, Demra, Dhaka.  Email:xendemra@dpdc.org.bd	', 85, '+8801730320332'),
(19, 'Jurain,South Dhaka', '169/1/A/2 , Dhoalipar, Amir Nibash, Dhaka-1204.		Email:xenjurain@dpdc.org.bd', 83, ' +8801730320326	'),
(20, 'Jigatola, South Dhaka', 'House #58/A, Road # 6/A, Dhanmondi R/A, Dhaka-1209.	Email:xenjigatola@dpdc.org.bd	', 24, '+8801730320304'),
(21, 'Kakrail, South Dhaka ', 'House:7, NEW Eskaton Road, Gausnager, Dhaka-1000 Email: xenkakrail@dpdc.org.bd	', 42, '+8801730320308'),
(22, 'Kazla,South Dhaka', 'North Kutubkhali, Kazla, Dhaka-1204	Email:xenkazla@dpdc.org.bd	', 82, '+8801730320320'),
(23, 'Khilgaon,South Dhaka', 'Taltala Jilpar, Khilgaon, Dhaka-1000.	Email:xenkhilgaon@dpdc.org.bd	52', 52, '+8801730320315'),
(24, 'Lalbag,South Dhaka', '132/33, Lalbag Grid, Lalbagh, Dhaka.	Email:xenlalbag@dpdc.org.bd', 62, '+8801730320311'),
(25, 'Motijheel,South Dhaka', '1 no. Pirjangi Majar, beside of Ideal College Gate, Dhaka.	Email:xenmotijheel@dpdc.org.bd', 51, '+8801730320317'),
(26, 'Mugdapara,South Dhaka6', '132/33/11 KV GIS Grid Sub-Station, Grid North-2, 3 East Madartek, Dhaka-1214.		Email:xenmugdapara@dpdc.org.bd', 56, '+8801730320319'),
(27, 'Mogbazar,South Dhaka', 'Mogbazar TNT 33/11 KV GIS Sub-Station, DIT Road, beside Shahidi Mashjid, Malibag, Dhaka-1217.	Email:xenmogbazar@dpdc.org.bd', 15, '+8801730320306'),
(28, 'Maniknagar,South Dhaka	', '22/6/1-2, North Golapbagh, Dhaka-1204.	Email:xenmaniknagar@dpdc.org.bd', 55, '+8801730320318'),
(29, 'Matuail,South Dhaka', 'Shahjahan Babul Center, South Matuail, Nearest Multimedia CNG Station	Email:xenmatuail@dpdc.org.bd', 86, '+8801766675040'),
(30, 'Narinda,South Dhaka', 'Narinda	62, Bhagoboti Shonkho Nedhi Shakha Lan, Narinda, Dhaka		Email:xennarinda@dpdc.org.bd', 64, '+8801730320324'),
(31, 'Paribag,South Dhaka ', 'Green Road Dormatory, 33/11 kV Sub-station, Dhaka-1000.   Email	:xenparibag@dpdc.org.bd', 33, '+8801730320310'),
(32, 'Postogola,South Dhaka', '47/48 NCG Road, Postagola, Dhaka.	Email:xenpostogola@dpdc.org.bd', 81, '+8801730320325'),
(33, 'Ramna,South Dhaka', '1, Abdul Gani Road, Ramna Control Room, Biddut Bhaban, Dhaka.Email:xenramna@dpdc.org.bd', 43, '+8801730320313'),
(35, 'Ramna,South Dhaka', '1, Abdul Gani Road, Ramna Control Room, Biddut Bhaban, Dhaka.	Email:xenramna@dpdc.org.bd', 43, '+8801730320313'),
(36, 'Swamibag,South Dhaka', '84, Samibagh Road, Dhaka	Email:xenswamibag@dpdc.org.bd', 54, '+8801730320323	'),
(37, 'Satmosjid,South Dhaka', 'House: 97/3/k, Kazi Nazrul Islam Road, Mohammadpur Busstand, Dhaka Email:xensatmosjid@dpdc.org.bd', 31, '+8801730320301'),
(38, 'Sher-e-bangla Nagar,South Dhaka', '22, Manik Mia Avenue, Shech Bhaban, NOCS, Ser-e-Banglanager, Dhaka-1207. Email:xensherebanglanagar@dpdc.org.bd', 35, '+8801730320307'),
(39, 'Shyampur,South Dhaka', 'shyampur Staff QUARTER, Bhaban-2, WASA liae, Dhaka-1204 Email:xenshayampur@dpdc.org.bd', 84, '+8801730320327'),
(40, 'Tejgaon,South Dhaka', 'Tejgaon	374, Eastern Tube, Tajgaon, Dhaka-1208.	Email:xentejgaon@dpdc.org.bd	', 41, '+8801730320305'),
(41, 'Kamrangirchar,South Dhaka', 'Kurarghat, Biddut Office, Beside Hospital, Kamrangirchar, Dhaka.Email:xenkamrangirchar@dpdc.org.bd', 26, '+8801730320312');

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
-- Indexes for table `registration`
--
ALTER TABLE `registration`
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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `northdhaka`
--
ALTER TABLE `northdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `southdhaka`
--
ALTER TABLE `southdhaka`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
