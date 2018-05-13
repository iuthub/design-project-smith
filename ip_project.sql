-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2018 at 03:43 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ip_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `Content` text NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Content`, `Title`, `Id`) VALUES
('Maftunakhon', 'Muhammad', 3),
('Announcement', 'Title2223', 4),
('Announcement222', 'Title2223', 5),
('Announcement2221', 'Title2223', 6),
('', '1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Surname`, `Login`, `Password`) VALUES
('', '', '', ''),
('hellll', 'slslslsls', '12122', '12122'),
('12123121', '1231321', '12312312', '1'),
('12123121', '1231321', '123123122', '12'),
('12123121', '1231321', '12312312212', 'qqqq'),
('12123121', '1231321', '12312312212qw', '1'),
('12123121', '1231321', '12312312212qw1', '1'),
('12123121', '1231321', '12312312212qw11', '2'),
('12123121', '1231321', '12312312212qw112', '2'),
('12123121', '1231321', '12312312212qw1121', '22'),
('2', '1231321', '12312312212qw11211', '2'),
('2', '1231321', '12312312212qw112112', '2'),
('12123121', '1231321', '12312312212qw12', '1'),
('12123121', '1231321', '12312312212qw122', '2'),
('12123121', '1231321', '123123122q', '12121'),
('hello', 'bello', 'hello', 'bello'),
('sass', 'sadas', 'hello1111', 'world');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `Login` (`Login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
