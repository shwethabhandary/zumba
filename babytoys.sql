-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 06:53 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babytoys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@babytoys.com', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `mostvisited`
--

DROP TABLE IF EXISTS `mostvisited`;
CREATE TABLE IF NOT EXISTS `mostvisited` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `cost` int(10) NOT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `image` (`image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `homephone` varchar(50) NOT NULL,
  `cellphone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fname` (`fname`),
  UNIQUE KEY `lname` (`lname`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `address` (`address`),
  UNIQUE KEY `homephone` (`homephone`),
  UNIQUE KEY `cellphone` (`cellphone`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `address`, `homephone`, `cellphone`) VALUES
(1, 'shwetha', 'Bhandary', 'shwetha@babytoys.com', '3rs street CA', '988652694', '8609864567'),
(2, 'shweta', 'B', 'sb@babytoys.com', '101 street CA', '9076052684', '8609863567'),
(3, '', '', '', '', '', ''),
(4, 'shin', 'chin', 'bdgh@hgfvd.jh', 'dfghj', '12345', '1234567'),
(5, 'Shwetha Shyam', '8uhgfvc', 'shwethagrad@gmail.com', 'Appartments #214', '6692946104', '6692956104'),
(6, 'edfv ', 'ijhgfd', 'ijhgfdascv@efg.fd', 'iuytf', '09876345', '123456789'),
(7, 'uhygfsdfgy', 'sdfgy', 'e567g@fghj.jhx', 'fghuj', '987654345', '4567890'),
(8, 'uhygfsdfg', 'sdfg', 'e56g@fghj.jhx', 'fghu', '987654045', '4587890'),
(9, 'uhyfsdfg', 'sdg', 'e5g@fghj.jhx', 'fhu', '98765445', '457890'),
(10, 'Shtha Shyam', 'Bhanry', 'shweth@gmail.com', 'street Appartments ', '66929101', '456'),
(11, 'Shthaam', 'Bhary', 'shwth@gmail.com', 'Appartments ', '6629101', '4562'),
(12, 'sg2yfuy8tfy', 'xcvxcfghu', 'fgy', 'kiuytf', '234567', '98765'),
(13, 'wedrf', 'sdf', 'wedrfwef', 'gfd', '123', '7654');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
