-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 06:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `createbin`
--

CREATE TABLE `createbin` (
  `bin_id` int(11) NOT NULL,
  `area` varchar(40) NOT NULL,
  `locality` varchar(40) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `route` varchar(50) NOT NULL,
  `loadtype` varchar(50) NOT NULL,
  `cycle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createbin`
--

INSERT INTO `createbin` (`bin_id`, `area`, `locality`, `landmark`, `city`, `email`, `route`, `loadtype`, `cycle`) VALUES
(1, 'Yagnik Road', 'Yagnik Road', 'Nr. Imperial Hotel', 'Rajkot', 'yagnikroad@gmail.com', 'Yagnik Road', 'Non Bio', 'Daily'),
(2, 'Kalawad Road', 'Kalawad Road', 'Nr. G.T.Sheth School', 'Rajkot', 'kalawadbin@gmail.com', 'Kalawad', 'Bio and Nonbio', 'daily'),
(3, 'University Road', 'University Road', 'Nr. Shivam Medical Store', 'Rajkot', 'universitybin@gmail.com', 'University Road', 'Bio and Nonbio', 'daily'),
(4, 'Old Jagnath', 'Jagnath', 'Nr. Moti Tanki Chowk', 'Rajkot', 'oldjagnathbin@gmail.com', 'Old Jagnath', 'Bio and Nonbio', 'daily'),
(5, 'Saurashtra Kalakendra', 'Prakash Society', 'Nr. Old Balaji Temple', 'Rajkot', 'saurashtrakalakendrabin@gmail.com', 'Saurashtra kalakendra', 'Bio and Nonbio', 'daily'),
(6, 'Marwadi University', 'Bedi Village', 'Nr. Bedi Chowk', 'Rajkot', 'marwadiuniversitybin@gmail.com', 'Marwadi University', 'Bio, Nonbio and Medical', 'twice a day'),
(7, 'Vastrapur', 'vastrapur', 'Nr. Vastrapur Lake', 'Ahmedabad', 'vastrapurbin@gmail.com', 'vastrapur', 'Non Bio', 'Daily'),
(8, 'Gunda Vadi', 'Gunda Vadi', 'Nr. Police Station', 'Rajkot', 'gundavadibin@gmail.com', 'Gundawadi', 'Bio', 'Weekly'),
(9, 'Cricket Bunglow', 'Cricket Bunglow', 'Nr. Satish Chowk', 'Jamnagar', 'cricketbunglowbin@gmail.com', 'Cricket Bunglow', 'Non Bio', 'Daily'),
(10, 'Bhavnagar Road', 'Bhavnagar Road', 'Nr. City Hospital', 'Rajkot', 'bhavnagarroad@gmail.com', 'Bhavnagar Road', 'Bio', 'Daily'),
(11, 'Morbi Road', 'Morbi Road', 'Nr. ADB', 'Rajkot', 'morbiroadbin@gmail.com', 'Morbi Road', 'Non Bio', 'Daily'),
(12, 'Amli Bopal Road', 'Bopal', 'Nr. Hilton Hotel', 'Ahmedabad', 'amliroad@gmail.com', 'Amli Bopal Road', 'Bio', 'Weekly'),
(13, 'Gopal Chowk', 'Gopal NAgar', 'Nr. Shivalik 8', 'Rajkot', 'gopalchowkbin@gmail.com', 'Gopal Chowk', 'Non Bio', 'Daily'),
(14, 'University Road', 'University Road', 'Nr. Atmiya University', 'Rajkot', 'universityroadbin@gmail.com', 'University Road', 'Non Bio', 'Daily'),
(15, 'Mahajan Vadi', 'Mahajan Vadi', 'Nr. Mahavir Temple', 'Rajkot', 'mahajanvadi@gmail.com', 'Mahajan Vadi', 'Non Bio', 'Weekly');

-- --------------------------------------------------------

--
-- Table structure for table `postcomplaint`
--

CREATE TABLE `postcomplaint` (
  `complaint_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `bin_id` int(11) NOT NULL,
  `area` varchar(40) NOT NULL,
  `complaint` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postcomplaint`
--

INSERT INTO `postcomplaint` (`complaint_id`, `user_id`, `email`, `bin_id`, `area`, `complaint`, `phone`, `status`) VALUES
(4, 11, 'jay@gmail.com', 3, 'University Road', 'hello', '2345678912', 'open'),
(5, 11, 'jay@gmail.com', 2, 'Kalawad Road', 'We are testing ', '4536453425', 'open'),
(8, 11, 'jay@gmail.com', 2, 'Kalawad Road', 'aasdasdasdad', '5465768795', 'open'),
(9, 11, 'jay@gmail.com', 2, 'Kalawad Road', 'dasdasdadfa', '5463546354', 'open'),
(10, 9, 'smeet@gmail.com', 4, 'Old Jagnath', 'hgyftyftftftftg', '123456789', 'open'),
(11, 9, 'smeet@gmail.com', 3, 'University Road', 'sdfsdsdfsdfsdf', 'dssdfsdfsdfsd', 'open'),
(12, 9, 'smeet@gmail.com', 2, 'Kalawad Road', 'fsdfsdfsdfdsf', 'sdsdsdfsdfsdfsd', 'open'),
(13, 9, 'smeet@gmail.com', 2, 'Kalawad Road', 'dfsfsdfsdfdsfsd', 'dfsdfsdfsdfsdfs', 'open'),
(14, 9, 'smeet@gmail.com', 1, 'Yagnik Road', 'sdsdfsdfsdfsdfsd', '4657465783', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `Id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Id`, `name`, `email`, `password`, `mobile`, `address`, `user_type`) VALUES
(9, 'Smeet', 'smeet@gmail.com', 'bda0f8b1b991b212f1554ec0bb7fe0d8', '8675847685', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-23', 'user'),
(10, 'Meet', 'meet@gmail.com', 'ba52894dfa2202b0dceac4770c7a9aa2', '7689075434', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-23', 'user'),
(11, 'Jay', 'jay@gmail.com', 'b73e3711cadb840c9a2876f55265c6e8', '9705684356', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335', 'user'),
(12, 'Anish', 'anish@gmail.com', '23b0bd056563a6cd84188059316f96ac', '8690723456', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335', 'user'),
(13, 'Harday', 'harday@gmail.com', '9700652624ec43278f09e5d59b2cf8e9', '7689549348', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335', 'user'),
(15, 'yash', 'yash@gmail.com', '9e8ce07ea0af9cf135b8fa0b3bee421f', '5768594857', 'vastrapur ahmedabad.', 'sweeper'),
(16, 'Om', 'om@gmail.com', 'e283eb80b324a4cf0cec77b2b3272ebd', '7685767463', 'Hello12345', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createbin`
--
ALTER TABLE `createbin`
  ADD PRIMARY KEY (`bin_id`);

--
-- Indexes for table `postcomplaint`
--
ALTER TABLE `postcomplaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createbin`
--
ALTER TABLE `createbin`
  MODIFY `bin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `postcomplaint`
--
ALTER TABLE `postcomplaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
