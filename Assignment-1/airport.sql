-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 09:02 AM
-- Server version: 10.4.8-MariaDB
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
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `Aid` int(20) NOT NULL,
  `Aname` varchar(20) NOT NULL,
  `Cruisingrange` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`Aid`, `Aname`, `Cruisingrange`) VALUES
(1, 'Airbus A319', 3000),
(2, 'Airbus A330', 6400),
(3, 'Airbus A340', 8000),
(4, 'Boeing 717', 1580),
(5, 'Boeing 737-700', 3800),
(6, 'Boeing 767-300', 7080),
(7, 'Boeing 747-400', 8380),
(8, 'Dornier 228', 834),
(9, 'IIyushin 1162', 11000);

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `Eid` int(20) NOT NULL,
  `Aid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`Eid`, `Aid`) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 6),
(2, 7),
(3, 1),
(3, 5),
(4, 1),
(4, 4),
(4, 5),
(5, 3),
(5, 7),
(7, 3),
(7, 6),
(7, 7),
(7, 9),
(9, 2),
(9, 5),
(9, 6),
(10, 4),
(10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Eid` int(20) NOT NULL,
  `Ename` varchar(20) NOT NULL,
  `Salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Eid`, `Ename`, `Salary`) VALUES
(1, 'Jafar Ahmed', 58000),
(2, 'Shahriar Chowdhury', 103000),
(3, 'Jamal E Mollah', 55000),
(4, 'Alvi Hussain', 67000),
(5, 'Tonmoy Jaman', 81000),
(6, 'Vibek Joardar', 45000),
(7, 'Jannatul Lamia', 118000),
(8, 'Toukir Munshi', 79000),
(9, 'Yakub Noby', 69000),
(10, 'Mithila Rounok', 48000),
(11, 'Jobbar Shekh', 42000),
(12, 'Chunnu Wahidul', 58000);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `Flno` int(20) NOT NULL,
  `Ffrom` varchar(20) NOT NULL,
  `Fto` varchar(20) NOT NULL,
  `Distance` int(20) NOT NULL,
  `Departs` time NOT NULL,
  `Arrives` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`Flno`, `Ffrom`, `Fto`, `Distance`, `Departs`, `Arrives`) VALUES
(1, 'Jessore', 'Khulna', 7240, '14:00:00', '19:20:00'),
(130, 'Jessore', 'Bogra', 2790, '07:00:00', '15:09:00'),
(246, 'Dhaka', 'Chittagong', 1020, '09:30:00', '12:43:00'),
(272, 'Chittagong', 'Cox\'s Bazar', 820, '13:20:00', '16:13:00'),
(292, 'Bandarban', 'Chittagong', 190, '10:44:00', '11:40:00'),
(607, 'Khulna', 'Sylhet', 1650, '20:45:00', '22:25:00'),
(852, 'Barisal', 'Faridpur', 6525, '10:30:00', '09:25:00'),
(895, 'Chittagong', 'Jessore', 2060, '07:00:00', '09:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`Flno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
