-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 11:06 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `49ersense`
--

-- --------------------------------------------------------

--
-- Table structure for table `dooractuator`
--

CREATE TABLE `dooractuator` (
  `doorID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lightdetails`
--

CREATE TABLE `lightdetails` (
  `lightID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `access` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motiondetector`
--

CREATE TABLE `motiondetector` (
  `detectorID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--

CREATE TABLE `sensor` (
  `sensorID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thermoschedule`
--

CREATE TABLE `thermoschedule` (
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `tmodetf` int(11) NOT NULL,
  `tfan` int(11) NOT NULL,
  `tcurrent` int(11) NOT NULL,
  `tcontrol` int(11) NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fullname` mediumtext NOT NULL,
  `username` mediumtext NOT NULL,
  `password` mediumtext NOT NULL,
  `emailid` mediumtext NOT NULL,
  `phone` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `userid` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `emailid`, `phone`, `address`, `userid`) VALUES
(10, '', 'username1', 'password1', 'emailid1', 'phone1', 'address1', 'userid1'),
(11, '', '123', '123', '123', '123', '123', '123'),
(12, '', '123', '123', '123', '123', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `windowactuator`
--

CREATE TABLE `windowactuator` (
  `windowID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `floorID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
