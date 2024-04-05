-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 10:05 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `pcu` varchar(255) NOT NULL,
  `rcu` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `until` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `uploadImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `job`, `mobile`, `pcu`, `rcu`, `username`, `password`, `until`, `status`, `uploadImage`) VALUES
(463, 'Libs, Andi', 'Davao City Brooklyn NY', 'ydna1@comcast.net', 'Developer', '09090909909', 'davao del norte', 'Region XI - Davao Region', 'Andyo', '111', '', '3', ''),
(464, 'Dee T. Ayy', 'Uyanguren Davao City Lot 45', 'dti1989@yahoo.com', 'Programmer', '09212123445', 'Surigao del Sur', 'Region XIII - Caraga', 'DTIfever', '1111', '', '3', ''),
(469, 'sample', 'sample', 'sample', 'sample', '12312312312', 'Zamboanga Sibugay', 'Region IX - Zamboanga Peninsula', '123', '123', '', '2', 'C:fakepath4. DTI-RAPID whole.png'),
(470, 'Nobela, Odlanyer L.', 'Davao City', 'odlanyer.nobela@hcdc.edu.ph', 'Farmer', '09223344556', 'Zamboanga del Norte', 'Region IX - Zamboanga Peninsula', 'Lanyer', '123', '', '2', 'C:fakepath393F07ADC1B84257A6B957C356D30165 (1).png'),
(471, 'testing1', 'testing1', 'testing1@gmail.com', 'testing1', '12312312312', 'Maguindanao', 'Region VIII - Eastern Visayas', 'testing user', '123', '', '2', 'C:fakepath4. DTI-RAPID whole.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
