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
-- Table structure for table `chartUser`
--

CREATE TABLE `chartUser` (
  `user_id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chartUser`
--

INSERT INTO `chartUser` (`user_id`, `uname`, `password`) VALUES
(7, 'anand', '$2y$10$5HhAoSAJ4tOzeW.STm3.ReX6iYVk7enu2P3bpA4bt9nZOMXHHS.1C'),
(11, 'jain', '$2y$10$EY4Vp9L0L4u4ptEA6.t4qOgME.w2SUHt7XWwHzLvC3oIbK.N2jfxC'),
(12, 'varun', '$2y$10$UT.W70hlmFzgdxQRnVMFe.OOkVXzYMHlncS/llllLaZWcxt1UC/nK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chartUser`
--
ALTER TABLE `chartUser`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chartUser`
--
ALTER TABLE `chartUser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
