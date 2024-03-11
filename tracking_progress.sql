-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 08:36 AM
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
-- Database: `tracking_progress`
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
  `POA` int(11) NOT NULL,
  `Males` int(11) NOT NULL,
  `Females` int(11) NOT NULL,
  `IP` int(11) NOT NULL,
  `Youth` int(11) NOT NULL,
  `PWD` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Resource` varchar(255) NOT NULL,
  `NCPO` varchar(255) NOT NULL,
  `UB` int(11) NOT NULL,
  `act_outputs` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `MOV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tracking_progress`
--

INSERT INTO `tracking_progress` (`Id`, `logFrame`, `AWPB`, `reflect_i`, `act_title`, `POA`, `Males`, `Females`, `IP`, `Youth`, `PWD`, `Date`, `Venue`, `Resource`, `NCPO`, `UB`, `act_outputs`, `other`, `MOV`) VALUES
(1, 'test', 0, 0, '', 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, '', '', ''),
(2, 'sample', 0, 0, '', 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, '', '', ''),
(3, 'sample', 0, 0, '', 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, '', '', ''),
(4, 'Project 101', 0, 0, '', 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, '', '', ''),
(11, 'popo', 0, 0, '', 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, '', '', '');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
