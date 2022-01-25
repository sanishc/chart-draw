-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2019 at 07:19 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChartData`
--

CREATE TABLE `ChartData` (
  `no` int(11) NOT NULL,
  `temp1` int(11) NOT NULL,
  `temp2` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ChartData`
--

INSERT INTO `ChartData` (`no`, `temp1`, `temp2`, `date`) VALUES
(1, 10, 0, '2019-10-02 10:35:17'),
(2, 0, 20, '2019-10-02 10:35:29'),
(3, 40, 20, '2019-10-02 10:35:38'),
(4, 0, 20, '2019-10-02 10:35:48'),
(5, 10, 50, '2019-10-02 10:35:55'),
(6, 50, 80, '2019-10-02 11:06:54'),
(13, 20, 10, '2019-10-02 11:30:49'),
(14, 0, 50, '2019-10-02 11:30:55'),
(15, 80, 100, '2019-10-02 11:31:04'),
(16, 70, 10, '2019-10-04 18:41:53'),
(17, 100, 100, '2019-10-04 18:42:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChartData`
--
ALTER TABLE `ChartData`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ChartData`
--
ALTER TABLE `ChartData`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
