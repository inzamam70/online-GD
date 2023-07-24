-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 10:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocrds`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(40) NOT NULL,
  `aemail` varchar(40) NOT NULL,
  `apassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `aemail`, `apassword`) VALUES
(1, 'admin', 'admin@ocr.com', '1234'),
(2, 'admin', 'admin@ocr.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `message` text NOT NULL,
  `gdid` varchar(30) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `gd`
--

CREATE TABLE `gd` (
  `gdid` int(9) NOT NULL,
  `nid` bigint(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `location of crime` varchar(255) NOT NULL,
  `thana name` varchar(30) NOT NULL,
  `problem statement` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gd`
--

INSERT INTO `gd` (`gdid`, `nid`, `type`, `name`, `location of crime`, `thana name`, `problem statement`, `photo`, `status`, `pid`) VALUES
(1, 154799546, 'Emergency', 'Rokonuzzam', 'Transport, Uits', 'Banani', 'I have lost my wallet', '', 'Queue', 1),
(2, 12345679, 'Emergency', 'setumoni', 'Banani Super Market', 'Banani', 'Higher price of necessary things', '', 'Queue', -1),
(3, 12345679, 'Emergency', 'sojol', 'Banani', 'Banani', 'Some freaks are following me', '', 'Completed', 2),
(4, 12345679, 'Emergency', 'raj', 'Halishahar', 'Mahakhali', 'I have lost my phone', '', 'Processing', 0),
(5, 12345679, 'Choose...', 'rasel', 'notun bazar', 'Rampura', 'My passport is missing', '', 'Completed', 1),
(6, 1250189636, 'Emergency', 'Fahiba', 'uits', 'noyanogor', 'My NID card is missing.', '', 'Processing', 0),
(7, 1250189636, 'Regular', 'Trishna', 'bashtola', 'vatara', 'My phone is missing. Please make a fast investigation. ', '', 'Queue', 2),
(8, 12747419736, 'Emergency', 'Elma', 'shuvastu srper market', 'vatara', 'My wallet is missing', '', 'Processing', 3),
(9, 1250189636, 'Emergency', 'Rayhan', 'Mirpur 10 bus stand', 'Mirpur', 'a person was beaten by the criminals', '', 'Queue', 4),
(11, 1254789635, 'Emergency', 'tahi', 'New Market', 'Dhanmandi', 'Someone is following me', '', 'Queue', 1),
(12, 1234567890, 'Emergency', 'Rokonuzzaman', 'Uits, noyanogor', '', 'I have lost my phone', '', 'Queue', -1);

-- --------------------------------------------------------

--
-- Table structure for table `incharge`
--

CREATE TABLE `incharge` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incharge`
--

INSERT INTO `incharge` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `tid`) VALUES
(1, 'Rokon', 'Rokon@gmail.com', '1234', 'male', '01780917922', 1),
(2, 'raj', 'Raj@ocrds.com', '1234', 'male', '01914792470', 2),
(3, 'sojol', 'sojol@ocrds.com', '1234', 'male', '01798765678', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(9) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `name`, `email`, `message`) VALUES
(1, 'noyon', 'noyon@ocrds.com', 'please check my gd quickly'),
(2, 'rasel', 'rasel@ocrds.com', 'I need a quick support. '),
(3, 'Rokon', 'Rokon@ocrds.com', 'My work has not done yet. I want to know the reason.  '),
(4, 'Setumoni ', 'Setu@ocrds.com', 'please check my gd quickly.'),
(5, 'fahiba', 'Fahiba@ocrds.com', 'please review my gd. It\'s not updating status for 5 days '),
(6, 'Trishna', 'Trishna@ocrds.com', 'i need a quick support'),
(7, 'munira', 'munira@ocrds.com', 'please check my gd quickly'),
(8, 'Raj', 'Raj21@ocrds.com', 'Please take action against my gd as soon as possible.'),
(9, 'Sojol', 'Sojol2009@ocrds.com', 'tamanna bully me. I need justice'),
(10, 'Redoy', 'redoy@gmail.com', 'My phone is missing! ');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `pid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`pid`, `name`, `email`, `password`, `gender`, `mobile`, `tid`) VALUES
(1, 'Rokon', 'rokon@gmail.com', '1234', 'Male', '01234567890', 1),
(2, 'sojol', 'sojol@gmail.com', '1234', 'Male', '01234567899', 1),
(3, 'Joy', 'Joy@ocrds.com', '1234', 'Male', '01874578962', 0),
(4, 'raj', 'raj@ocrds.com', '1234', 'male', '01797718990', 0),
(5, 'setumoni', 'setu@ocrds.com', '1234', 'Female', '01784785426', 0),
(6, 'fahiba', 'fahiba@ocrds.com', '1234', 'Female', '01745718990', 4),
(10, 'trishna', 'trishna@ocrds.com', '1234', 'Female', '01357718990', 2),
(11, 'Rakib', 'Rakib@ocrds.com', '1234', 'Male', '01797722990', 2);

-- --------------------------------------------------------

--
-- Table structure for table `thana`
--

CREATE TABLE `thana` (
  `tid` int(11) NOT NULL,
  `thana_name` varchar(30) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thana`
--

INSERT INTO `thana` (`tid`, `thana_name`, `district_id`) VALUES
(1, 'Banani', 1),
(2, 'Badda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nid` bigint(18) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nid`, `name`, `email`, `password`, `address`, `gender`, `mobile`) VALUES
(12345678, 'Rokon', 'Rokon@gmail.com', '1234', 'notun bazar, Dhaka', 'Male', '01978707676'),
(1234567890, 'Rokonuzzaman', 'rokonbabu233@gmail.com', '12345', 'notun bazar ', 'Male', '01780917922'),
(1250189636, 'setu', 'setu@gmail.com', '1234', '100ft', 'Female', '01780917922'),
(1250189637, 'Fahiba', 'Fahiba@gmail.com', '1234', 'notun bazar', 'Female', '01780917922'),
(1254719636, 'raj', 'Raj@gmail.com', '1234', 'norda', 'male', '01780917922'),
(1254719736, 'sojol', 'sojol@gmail.com', '1234', 'moddho badda', 'male', '01780917922'),
(1254789635, 'neaz', 'neaz@gmail.com', '1234', 'rampura', 'male', '01780917922'),
(12345689545, 'rayhan', 'rayhan@ocrds.com', '1234', 'Sayedabad', 'Male', '01798768990'),
(12547419736, 'parvez', 'parvez@gmail.com', '1234', 'notun bazar', 'Male', '01797718990'),
(12747419736, 'rasel', 'rasel@gmail.com', '1234', 'bashtola,', 'male', '01797718990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `gd`
--
ALTER TABLE `gd`
  ADD PRIMARY KEY (`gdid`);

--
-- Indexes for table `incharge`
--
ALTER TABLE `incharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `thana`
--
ALTER TABLE `thana`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gd`
--
ALTER TABLE `gd`
  MODIFY `gdid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `incharge`
--
ALTER TABLE `incharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `thana`
--
ALTER TABLE `thana`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
