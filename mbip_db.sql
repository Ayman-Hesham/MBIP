-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 12:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbip_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fullName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fullName`, `password`) VALUES
('admin', 'adminpass');

-- --------------------------------------------------------

--
-- Table structure for table `electricity`
--

CREATE TABLE `electricity` (
  `userFullName` varchar(255) DEFAULT NULL,
  `monthNumber` int(11) DEFAULT NULL,
  `eAmount` double DEFAULT NULL,
  `eCC` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electricity`
--

INSERT INTO `electricity` (`userFullName`, `monthNumber`, `eAmount`, `eCC`) VALUES
('Sakif', 1, 12, 5.028),
('Sakif', 2, 123, 51.537),
('Sakif', 7, 34, 19.855999999999998);

-- --------------------------------------------------------

--
-- Table structure for table `recycle`
--

CREATE TABLE `recycle` (
  `userFullName` varchar(255) DEFAULT NULL,
  `monthNumber` int(11) DEFAULT NULL,
  `rAmount` double DEFAULT NULL,
  `rCC` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recycle`
--

INSERT INTO `recycle` (`userFullName`, `monthNumber`, `rAmount`, `rCC`) VALUES
('Sakif', 1, 12, 5.028),
('Sakif', 2, 123, 51.537),
('Asif', 3, 100, 286),
('Sakif', 2, 123, 351.78);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fullName` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirmPassword` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fullName`, `phoneNumber`, `password`, `confirmPassword`, `address`, `city`, `state`, `zipCode`) VALUES
('Asif', '21321313', 'pass', 'pass', '123asdasd', 'sasad', 'adsadsad', 'dsadasdsa'),
('Sakif', '2121121212', 'pas', 'pass', '21312sadasdas', 'sadasdsdsds', 'fadasdas', 'dsadsad'),
('Sawda', '019244242', 'pass', 'pass', 'Khulna', 'khulna', 'Bangladesh', '8088');

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

CREATE TABLE `water` (
  `userFullName` varchar(255) DEFAULT NULL,
  `monthNumber` int(11) DEFAULT NULL,
  `wAmount` double DEFAULT NULL,
  `wCC` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `water`
--

INSERT INTO `water` (`userFullName`, `monthNumber`, `wAmount`, `wCC`) VALUES
('Sakif', 1, 12, 5.028),
('Sakif', 2, 123, 51.537),
('Sakif', 12, 12, 5.028),
('Asif', 4, 1221, 511.599),
('Sakif', 8, 12, 5.028),
('Sakif', 9, 123, 51.537);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`fullName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
