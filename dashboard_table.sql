-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 07:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `tracking_progress`
--

CREATE TABLE `tracking_progress` (
  `Id` int(11) NOT NULL,
  `logFrame` varchar(255) NOT NULL,
  `AWPB` int(11) NOT NULL,
  `reflect_i` int(11) NOT NULL,
  `act_title` varchar(255) NOT NULL,
  `Males` int(11) NOT NULL,
  `Females` int(11) NOT NULL,
  `IP` int(11) NOT NULL,
  `Youth` int(11) NOT NULL,
  `PWD` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Resource` varchar(255) NOT NULL,
  `NPCO` varchar(255) DEFAULT NULL,
  `UB` int(11) NOT NULL,
  `act_outputs` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `MOV` varchar(255) NOT NULL,
  `POA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tracking_progress`
--

INSERT INTO `tracking_progress` (`Id`, `logFrame`, `AWPB`, `reflect_i`, `act_title`, `Males`, `Females`, `IP`, `Youth`, `PWD`, `Date`, `Venue`, `Resource`, `NPCO`, `UB`, `act_outputs`, `other`, `MOV`, `POA`) VALUES
(25, 'asd', 2, 2, 'asd', 2, 2, 2, 2, 2, '2024-03-15', 'asd', 'asd', 'asd', 2, 'asd', 'asd', 'asd', NULL),
(27, 'asd', 2, 1, 'gaaasdg', 23, 2, 3, 32, 232, '2024-03-14', 'asdagasd', 'qwe', 'qwe', 232, 'asda', 'gasdas', 'fasda', 'asdag'),
(28, 'gdwqeqwf', 3, 3, 'fasfafasf', 123, 123, 123, 123, 123, '2024-03-23', 'wafasfqw', 'eqweqwdas', 'asdasfqw', 123, 'asdasf', 'asdafsa', 'asfasfa', 'asdaf'),
(29, 'gasdasdasd', 3, 3, 'asdafasf', 2, 23, 321, 321, 321, '2024-03-16', 'asdasd', 'sdas', 'asfasf', 231, 'dasd', 'asfg', 'erwerwer', 'asdasdasd'),
(30, 'pass', 3, 5, 'testing', 345, 25, 5234, 234234, 234234, '2024-03-22', 'we', '2aasda', 'adasd', 324234, 'sdgsdgsg', 'sdgsgd', 'sdgsdgds', 'ASD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tracking_progress`
--
ALTER TABLE `tracking_progress`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tracking_progress`
--
ALTER TABLE `tracking_progress`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
