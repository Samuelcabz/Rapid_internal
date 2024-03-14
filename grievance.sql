-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 09:42 AM
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
-- Table structure for table `grievance`
--

CREATE TABLE `grievance` (
  `id` int(11) NOT NULL,
  `type-complaint` varchar(255) NOT NULL,
  `SECAP` varchar(11) NOT NULL,
  `complainant-quantity` int(11) NOT NULL,
  `nationality` varchar(3) NOT NULL,
  `confidentiality-request` varchar(3) NOT NULL,
  `confidentiality-identity` varchar(3) NOT NULL,
  `confidentiality-option` varchar(255) NOT NULL,
  `complainant-1-fullname` varchar(255) NOT NULL,
  `complainant-1-title` varchar(255) NOT NULL,
  `complainant-1-organization` varchar(255) NOT NULL,
  `complainant-1-phone` varchar(255) NOT NULL,
  `complainant-1-email` varchar(255) NOT NULL,
  `complainant-1-address` varchar(255) NOT NULL,
  `complainant-1-mailing-address` varchar(255) NOT NULL,
  `complainant-1-additional-guidance` varchar(255) NOT NULL,
  `complainant-2-fullname` varchar(255) NOT NULL,
  `complainant-2-title` varchar(255) NOT NULL,
  `complainant-2-organization` varchar(255) NOT NULL,
  `complainant-2-phone` varchar(255) NOT NULL,
  `complainant-2-email` varchar(255) NOT NULL,
  `complainant-2-address` varchar(255) NOT NULL,
  `complainant-2-mailing-address` varchar(255) NOT NULL,
  `complainant-2-additional-guidance` varchar(255) NOT NULL,
  `ifad-project-concern` varchar(255) NOT NULL,
  `ifad-project-description` varchar(255) NOT NULL,
  `ifad-project-situation` varchar(255) NOT NULL,
  `raised-complaint` varchar(3) NOT NULL,
  `satisfactory-response` varchar(255) NOT NULL,
  `complaint-resolution` varchar(255) NOT NULL,
  `ifad-disagreement` varchar(3) NOT NULL,
  `ifad-response-details` varchar(255) NOT NULL,
  `ifad-unsatisfactory-explanation` varchar(255) NOT NULL,
  `ifad-desired-resolution` varchar(255) NOT NULL,
  `ifad-other-matters` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grievance`
--

INSERT INTO `grievance` (`id`, `type-complaint`, `SECAP`, `complainant-quantity`, `nationality`, `confidentiality-request`, `confidentiality-identity`, `confidentiality-option`, `complainant-1-fullname`, `complainant-1-title`, `complainant-1-organization`, `complainant-1-phone`, `complainant-1-email`, `complainant-1-address`, `complainant-1-mailing-address`, `complainant-1-additional-guidance`, `complainant-2-fullname`, `complainant-2-title`, `complainant-2-organization`, `complainant-2-phone`, `complainant-2-email`, `complainant-2-address`, `complainant-2-mailing-address`, `complainant-2-additional-guidance`, `ifad-project-concern`, `ifad-project-description`, `ifad-project-situation`, `raised-complaint`, `satisfactory-response`, `complaint-resolution`, `ifad-disagreement`, `ifad-response-details`, `ifad-unsatisfactory-explanation`, `ifad-desired-resolution`, `ifad-other-matters`) VALUES
(1, 'Complaint relating to individuals/communities believing they are or may be adversely affected by an IFAD funded project', 'SECAP 2015', 0, 'NO', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'NO', '', '', 'YES', '', '', '', ''),
(2, 'Complaint relating to individuals/communities believing they are or may be adversely affected by an IFAD funded project', 'SECAP 2017', 1, 'NO', 'YES', 'YES', '1231', '123', '123', '123', '12312412412', '123', '123', '1231', '231', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 'YES', '123', '123', 'YES', '123', '123', '123', '123123'),
(3, 'Complaint relating to individuals/communities believing they are or may be adversely affected by an IFAD funded project', 'SECAP 2017', 3, 'YES', 'YES', 'YES', 'sadf', 'awev', 'asdvWE', 'asdvaWS', '05165215153', 'EeQEV', 'ASDFASD', 'Vwgsd', 'fQWE', 'ASDF', 'ASDF', 'ASDF', '02541542322', 'ASDF', 'ASDFA', 'SDFASD', 'FASD', 'ASDF', 'ASDF', 'ASDF', 'NO', 'ASDF', 'ASDF', 'YES', 'ASDF', 'ASDFASD', 'FASD', 'FASDF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grievance`
--
ALTER TABLE `grievance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grievance`
--
ALTER TABLE `grievance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
