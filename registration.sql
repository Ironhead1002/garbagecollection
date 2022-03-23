-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 01:57 PM
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
(2, 'Kalawad Road', 'Kalawad Road', 'Nr. G.T.Sheth School', 'Rajkot', 'kalawadbin@gmail.com', 'Kalawad', 'Bio and Nonbio', 'daily'),
(3, 'University Road', 'University Road', 'Nr. Shivam Medical Store', 'Rajkot', 'universitybin@gmail.com', 'University Road', 'Bio and Nonbio', 'daily'),
(4, 'Old Jagnath', 'Jagnath', 'Nr. Moti Tanki Chowk', 'Rajkot', 'oldjagnathbin@gmail.com', 'Old Jagnath', 'Bio and Nonbio', 'daily'),
(5, 'Saurashtra Kalakendra', 'Prakash Society', 'Nr. Old Balaji Temple', 'Rajkot', 'saurashtrakalakendrabin@gmail.com', 'Saurashtra kalakendra', 'Bio and Nonbio', 'daily'),
(6, 'Marwadi University', 'Bedi Village', 'Nr. Bedi Chowk', 'Rajkot', 'marwadiuniversitybin@gmail.com', 'Marwadi University', 'Bio, Nonbio and Medical', 'twice a day');

-- --------------------------------------------------------

--
-- Table structure for table `postcomplaint`
--

CREATE TABLE `postcomplaint` (
  `complaint_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `bin_id` int(11) NOT NULL,
  `area` varchar(40) NOT NULL,
  `complaint` varchar(80) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postcomplaint`
--

INSERT INTO `postcomplaint` (`complaint_id`, `email`, `bin_id`, `area`, `complaint`, `status`) VALUES
(3, 'yash@gmail.com', 4, 'Old Jagnath', 'Dustbin bharai gayu chhe', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `Id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Id`, `name`, `email`, `password`, `mobile`, `address`) VALUES
(9, 'Smeet', 'smeet@gmail.com', 'smeet12345', '8675847685', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-23'),
(10, 'Meet', 'meet@gmail.com', 'meet12345', '7689075434', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-23'),
(11, 'Jay', 'jay@gmail.com', 'jay12345', '9705684356', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335'),
(12, 'Anish', 'anish@gmail.com', 'anish12345', '8690723456', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335'),
(13, 'Harday', 'harday@gmail.com', 'harday12345', '7689549348', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335');

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
  MODIFY `bin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `postcomplaint`
--
ALTER TABLE `postcomplaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
