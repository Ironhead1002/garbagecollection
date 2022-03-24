-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 06:09 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createbin`
--
ALTER TABLE `createbin`
  ADD PRIMARY KEY (`bin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createbin`
--
ALTER TABLE `createbin`
  MODIFY `bin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
