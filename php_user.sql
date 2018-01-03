-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 11:21 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `php_user`
--

CREATE TABLE `php_user` (
  `id` int(11) NOT NULL,
  `name` char(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `skill` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `php_user`
--

INSERT INTO `php_user` (`id`, `name`, `email`, `skill`) VALUES
(4, 'Ripon', 'habib4236diu@gmail.com', 'Web Design'),
(5, 'Shadat', 'shadat@hotmail.com', 'Wordpress'),
(6, 'Zuboraj', 'zubo@msn.com', 'Loverboy'),
(7, 'Rahim', 'Rahim@hsitu.org', 'Civil'),
(8, 'jony Sin', 'jony123@yahoo.com', 'Actor'),
(9, 'sonjoy', 'sonjoy@cse.com', 'All'),
(10, 'Toma', 'Toma@gmail.com', 'House Hold Work'),
(11, 'sumon', 'sumon@gmail.com', 'Networking'),
(12, 'sopons', 'sopon@gmail.com', 'EEE'),
(13, 'Jakir', 'jakir@gmail', 'we');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php_user`
--
ALTER TABLE `php_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php_user`
--
ALTER TABLE `php_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
