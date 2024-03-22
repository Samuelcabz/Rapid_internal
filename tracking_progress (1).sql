-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 09:40 AM
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
  `POA` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tracking_progress`
--

INSERT INTO `tracking_progress` (`Id`, `logFrame`, `AWPB`, `reflect_i`, `act_title`, `Males`, `Females`, `IP`, `Youth`, `PWD`, `Date`, `Venue`, `Resource`, `NPCO`, `UB`, `act_outputs`, `other`, `MOV`, `POA`, `date_created`, `date_modified`) VALUES
(30, 'sample', 3, 5, 'testing', 345, 25, 5234, 234234, 234234, '2024-03-22', 'we', '2aasda', 'adasd', 324234, 'sdgsdgsg', 'sdgsgd', 'sdgsdgds', 'ASD', '2024-03-22 07:55:38', '2024-03-22 08:12:30'),
(31, 'sample', 1, 1, 'sample', 2, 2, 2, 2, 2, '2024-03-16', 'sample', 'sample', 'sample', 2, 'sample', 'sample', 'sample', 'sample', '2024-03-22 07:55:38', NULL),
(33, 'testing', 2, 2, 'testing', 2, 2, 2, 2, 2, '2024-03-16', 'testing', 'testing', 'testing', 2, 'testing', 'testing', 'testing', 'testing', '2024-03-22 07:55:38', NULL),
(48, 'sample 1', 2, 2, 'title testing', 123, 123, 123, 123, 123, '2024-03-23', 'davao city', 'sample', 'sample', 123, 'sample', 'sample', 'sample', 'testing participants', '2024-03-22 07:55:38', NULL),
(49, 'sample', 5, 5, 'testing', 2, 2, 2, 2, 2, '2024-03-23', 'davao', 'sample', 'sample', 20000, 'sample', 'sample', 's', 'testing', '2024-03-22 07:56:26', '2024-03-22 07:57:00');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
