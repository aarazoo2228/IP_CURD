-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 11:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clubuvdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Australia'),
(4, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(12) NOT NULL,
  `lname` varchar(12) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `image` text NOT NULL,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it`
--

INSERT INTO `it` (`id`, `fname`, `lname`, `email`, `password`, `cpassword`) VALUES
(1, 'arazoo', 'Kaneriya', 'akaneriya@gmail.com', '2228126', '2228126'),
(2, 'aayat', 'kaneriya', 'ap2228@gmail.com', '1233444', '1233444'),
(3, 'rutika', 'sorathiya', 'rsorthiya@gmail.com', '1234444', '1234444'),
(4, 'hetang', 'kasundra', 'hkasundra@gmail.com', '26102013', '26102013'),
(5, 'het', 'kasundra', 'het@gmail.com', '07072018', '07072018'),
(6, 'priya', 'panseriya', 'ppanseriya@gmail.com', '04052001', '04052001'),
(7, 'dhruvi', 'koldia', 'dkoladia@gmail.com', '02112001', '02112001'),
(8, 'pqr', 'xyz', 'xyab@gmail.com', '2228126', '2228126'),
(9, 'bhavnaben', 'kaneriya', 'bkaneriya@gmail.com', '090595', '090595'),
(10, 'Het', 'kasundra', 'h@gmail.com', '07071818', '07071818');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `birthday` text NOT NULL,
  `gender` text NOT NULL,
  `passno` varchar(10) NOT NULL DEFAULT '0',
  `registerby` varchar(15) NOT NULL DEFAULT 'regular',
  `status` varchar(1) NOT NULL,
  `photo` text NOT NULL,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `fullname`, `firstname`, `lastname`, `email`, `password`, `contact`, `birthday`, `gender`, `passno`, `registerby`, `status`, `photo`, `timestemp`) VALUES
(46, 'aasaa', 'fffgfh', 'fhjhg', 'a@gmail.com', '123445', '9876543210', '2000-06-22', 'male', '1', 'b', '3', 'TCS1.PNG', '2020-09-08 09:33:46'),
(47, 'hdghg', 'hfjfhf', 'djfhk', 'ajhj@gmail.com', 'dhufhuew', '6586758895', '2001-12-22', 'male', '1', 'regular', '3', 'TCS1.PNG', '2020-06-30 02:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `priority` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `priority`, `message`, `date`, `status`, `timestemp`) VALUES
(36, 1, 'Two days to go Navratri... Come on Kheliya get ready to play Dandiy with CLUB UV', '2016-09-29', 1, '2018-07-13 04:47:27'),
(40, 2, 'Wish you Happy Navratri in Advance...', '2016-09-30', 1, '2017-10-16 06:56:49'),
(41, 3, 'Importance of 1st Nortu : The first form of Goddess Durga is called Shailputri . She is considered the daughter of the Himalayas. She is a form of Shakti, the consort of Lord Shiva. ', '2016-10-01', 1, '2018-07-13 04:47:31'),
(42, 4, 'Importance of 2nd Nortu : The second form of Goddess Durga is known as \'Brahmacharini\'. Her name is derivative of the word \'Brahma\', which means \'Tapa\' or penace. She is also a form of Uma or Parvati, a form of Mata Shakti.', '2016-10-02', 0, '2017-09-03 18:34:37'),
(43, 5, 'Importance of 3rd Nortu : On the third day the goddess is worshipped as Chandraghanta. She is the symbolic representation of beauty and bravery.', '2016-10-03', 0, '2017-09-03 18:34:48'),
(44, 7, 'Importance of 4th Nortu : Kushmanda, is the form of the goddess which is worshipped on the fourth day. It is believed that Kushmanda is the creator of the entire Universe and she has created the entire Universe by her laugh.', '2016-10-04', 0, '2017-09-03 18:34:57'),
(45, 9, 'Importance Of 5th Nortu : On the fifth day, the form of Goddess is called Skand Mata. She is actually called so because she is here represented as the mother of Skanda, the chief warrior of the Gods army.', '2016-10-05', 0, '2017-09-03 18:35:11'),
(46, 11, 'Importance of 6th Nortu: On the sixth day, the goddess is worshipped as Katyayani. Seated on her vehicle lion, Katyayani has three eyes and four hands.', '2016-10-06', 0, '2017-09-03 18:36:09'),
(47, 14, 'Importance of 7th Nortu: On the seventh day, the Goddess is worshipped as \'Kalratri\'. As the name suggests, Kalrati is as black as a dark night. She has four hands, she is meant to make the devotees fearless.', '2016-10-07', 0, '2017-09-03 18:35:40'),
(48, 20, 'Importance of 8th Nortu: On the eight day, the Mata Rani is worshipped as \'Maha Gauri\'. She is considered to extremely beautiful, white like snow and accessorized with white colored ornaments. She represents calmness and exhibits wisdom.', '2016-10-08', 0, '2017-09-03 18:36:07'),
(49, 30, 'Importance of 9th Nortu: On the ninth day, Durga is worshipped as Siddhidatri. It is believed she consists of all the eight siddhis. She lives on lotus and is worshipped by all the Rishis-Munis, Siddhas, Sadhakas and Yogis.', '2016-10-09', 0, '2017-09-03 18:35:36'),
(50, 4, 'Congratulation to Winner of the 1st day. For more detail check winner and Gallery menu.', '2016-10-02', 0, '2017-09-03 18:34:42'),
(51, 6, 'Due to rain today Navratri is cancelled. Ground is not playable... Club UV', '2016-10-03', 0, '2017-09-03 18:34:53'),
(52, 8, 'Due to rain today Navratri is cancelled. Ground is not playable... Club UV', '2016-10-04', 0, '2017-09-03 18:35:05'),
(53, 10, 'After 2 days break..Come on Kheliya..Tide your lace...Now the time arrives to enjoy navratri again with lots of fun...Let\'s meet at Club UV Ground... A haloooooooo...', '2016-10-05', 0, '2017-09-03 18:35:19'),
(54, 11, 'Congratulation to all winners... Gallery is updated with your photos...Download and share with your friends...', '2016-10-06', 0, '2017-09-03 18:35:46'),
(55, 12, 'Ha Kheliya Ha...Now wineers can download their photos from gallery of updated version of club UV Application...so waiting for what...update app and take benefits of new feature...\r\n', '2016-10-07', 0, '2017-09-03 18:35:44'),
(56, 13, 'Congratulation to all winners... Gallery is updated with your photos...Download and share with your friends...', '2016-10-07', 0, '2017-09-03 18:35:42'),
(57, 21, 'Congratulation to Winner. Find your pics from gallery For more detail check winner and Gallery menu.', '2016-10-08', 0, '2017-09-03 18:35:39'),
(62, 33, 'Welcome to Club UV navratri Mahotsav 2017', '2017-09-20', 0, '2017-09-30 07:46:32'),
(58, 31, 'You are most welcome to Maha Aarti organized by Club UV', '2016-10-09', 0, '2017-09-03 18:35:34'),
(59, 32, 'Golden chance to win : 3 best selfie and 3 best comments will get prise. Hurry up... upload  your selfie with comments to www.clubuv.in ', '2016-10-10', 0, '2017-09-27 08:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country`, `state_name`) VALUES
(1, 1, 'Alabama'),
(2, 1, 'california'),
(3, 1, 'newyork'),
(4, 4, 'Gujrat'),
(5, 4, 'Delhi'),
(6, 4, 'Bengluru');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `note` varchar(255) NOT NULL,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `note`, `timestemp`) VALUES
(1, 'admin@gmail.com', '123456', 'Admin', '2020-03-03 03:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` bigint(20) NOT NULL,
  `voter` varchar(10) NOT NULL,
  `passno` varchar(10) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `category` varchar(1) NOT NULL,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` bigint(20) NOT NULL,
  `category` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `winnername` varchar(255) NOT NULL,
  `passno` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `timestemp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `category`, `rank`, `winnername`, `passno`, `date`, `status`, `timestemp`) VALUES
(12, 2, 7, 'Nena', '55', '2020-03-13', 1, '0000-00-00 00:00:00'),
(10, 3, 15, 'priyanshi', '67', '2020-03-11', 0, '2020-01-30 22:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `it`
--
ALTER TABLE `it`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
