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
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(1, 3, 1, '    helllo', 'tonmoy_chokroborti_281167', '2021-01-09 09:40:05'),
(2, 3, 1, '    haii  tonmoy', 'tonmoy_chokroborti_281167', '2021-01-09 10:19:54'),
(3, 3, 1, 'hello again me', 'tonmoy_chokroborti_281167', '2021-01-09 10:40:54'),
(4, 3, 1, '    helllo hridoy', 'hridoy_singha_05377', '2021-01-13 18:12:46'),
(5, 3, 1, '    ', 'tonmoy_chokroborti', '2021-02-11 06:57:21'),
(6, 3, 1, '   hello developer', 'tonmoy_chokroborti', '2021-02-11 06:57:46'),
(7, 3, 1, '    We want Bangladesh as a  digital  developed Bangladesh', 'tonmoy_chokroborti', '2021-02-11 07:50:33'),
(8, 4, 2, '    Be the participator  of  development ', 'tonmoy_chokroborti', '2021-02-11 07:51:55'),
(9, 6, 1, '    We want  neat and clean road', 'tonmoy_chokroborti', '2021-12-05 11:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(1, 1, 'Hello Bangladesh', 'tonmoy.jpg.33', '2020-11-26 20:09:19'),
(4, 2, 'Hello Develop  Bangladesh ', '', '2021-01-13 18:09:25'),
(5, 1, 'haiiii', '160028.jpg.82', '2021-02-11 08:01:39'),
(6, 1, 'This road is nearby Tongi station road . The road is broken .Vehicles can not move easily . Passerby suffer more while passing on this road . Sometime  accidents occoured   .So  we want authority should reconstruct this road', 'tonhr.jpg.62', '2021-12-05 11:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_division` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_division`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'Tonmoy', 'Chokroborti', 'tonmoy_chokroborti', 'I am self motivated and  I love my country', 'Single', 'tonmoy433790', 'aronnotonmoy@gmail.com', 'Dhaka', 'Male', '1997-11-06', '160028.jpg.55', '160028.jpg.34', '2020-11-25 19:39:49', 'verified', 'yes', 'HridoySingha'),
(2, 'Hridoy', 'Singha', 'hridoy_singha_05377', 'Hello Develop Bangladesh.This is my default status!', '...', '1731510325', 'hridoy96@gmail.com', 'Dhaka', 'Male', '1997-08-20', 'boy.png', 'default_cover.jpg', '2021-01-11 05:14:58', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(3, 'Bishal', 'Biswas', 'bishal_biswas_304521', 'Hello Develop Bangladesh.This is my default status!', '...', 'bishal12345', 'bishal98@gmail.com', 'Dhaka', 'Male', '1998-06-10', 'skull.png', 'default_cover.jpg', '2021-02-11 06:52:49', 'verified', 'no', 'Iwanttoputading intheuniverse.'),
(4, 'Ashikur ', 'Rahaman', 'ashikur _rahaman_18825', 'Hello Develop Bangladesh.This is my default status!', '...', 'ashikur1290', 'ashik99@gmail.com', 'Dhaka', 'Male', '1999-08-25', 'boy.png', 'default_cover.jpg', '2021-02-11 07:05:54', 'verified', 'no', 'Iwanttoputading intheuniverse.'),
(5, 'Rafsan ', 'Wasif', 'rafsan _wasif_719169', 'Hello Develop Bangladesh.This is my default status!', '...', 'rafsan2345', 'Rafsan71@gmail.com', 'Chittagong', 'Male', '1998-07-22', 'boy.png', 'default_cover.jpg', '2021-02-11 07:41:33', 'verified', 'no', 'Iwanttoputading intheuniverse.');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 1, 2, 'hello', '2021-01-24 11:29:07', 'no'),
(2, 1, 2, 'hello', '2021-01-24 11:29:32', 'no'),
(3, 1, 2, 'haii  hridoy', '2021-01-24 11:29:47', 'no'),
(4, 1, 2, 'haii  hridoy', '2021-01-24 11:29:54', 'no'),
(5, 2, 2, 'haii\r\n', '2021-01-24 11:30:27', 'no'),
(6, 2, 2, 'haii\r\n', '2021-01-24 11:30:31', 'no'),
(7, 1, 2, 'i am tonmoy', '2021-01-24 11:30:50', 'no'),
(8, 2, 1, 'hello  hridoy', '2021-01-24 11:35:52', 'no'),
(10, 2, 2, 'hello  hridoy', '2021-01-24 11:39:44', 'no'),
(11, 2, 2, 'hello  hridoy', '2021-01-24 11:39:49', 'no'),
(12, 1, 2, 'hello tonmoy', '2021-01-24 12:03:29', 'no'),
(13, 2, 1, 'hello faridpur', '2021-01-24 12:05:03', 'no'),
(14, 2, 1, 'hello faridpur', '2021-01-24 12:05:07', 'no'),
(15, 1, 2, 'hello  dhaka', '2021-01-24 12:06:26', 'no'),
(16, 1, 2, 'hello  dhaka', '2021-01-24 12:06:31', 'no'),
(17, 2, 1, 'haiii   hridoy', '2021-01-27 09:45:52', 'no'),
(18, 2, 1, 'haiii   hridoy', '2021-01-27 09:45:58', 'no'),
(19, 1, 2, 'haii  tonmoy', '2021-01-27 09:58:53', 'no'),
(20, 1, 2, 'ki obosta kmn asos ?', '2021-01-27 09:59:10', 'no'),
(21, 1, 2, 'ki obosta kmn asos ?', '2021-01-27 09:59:20', 'no'),
(22, 1, 5, 'Hello Tonmoy', '2021-02-11 07:44:57', 'no'),
(23, 1, 5, 'Hello Tonmoy', '2021-02-11 07:45:06', 'no'),
(24, 5, 1, 'hello rafsan', '2021-02-11 07:46:48', 'no'),
(25, 5, 1, 'How are You ?', '2021-02-11 07:47:37', 'no'),
(26, 2, 1, 'hlwo hridoy', '2022-01-06 08:50:38', 'no'),
(27, 2, 1, 'hlwo hridoy', '2022-01-06 08:50:46', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
