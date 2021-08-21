-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2021 at 12:07 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17383114_customer_bank`
--
CREATE DATABASE IF NOT EXISTS `id17383114_customer_bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id17383114_customer_bank`;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` int(3) NOT NULL,
  `First_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Last_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Balance` int(255) NOT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `First_Name`, `Last_Name`, `Email`, `Balance`, `Username`, `Password`) VALUES
(1, 'Anora', 'Shastri', 'anosha@gmail.com', 23512789, 'Anosha', '123'),

(3, 'Anushka', 'More', 'anumo@gmail.com', 1200000, 'Anuma', '789'),
(4, 'Yameeni', 'Mhaske', 'yammha@gmail.com', 123456, 'Yamma', 'abc'),
(5, 'Tapasvini', 'Adapala', 'tapu@gmail.com', 12345678, 'Tapu', '9876543210'),

(7, 'Himani', 'Ranpariya', 'himzz@gmail.com', 123456, 'Himzz', 'wbjbk6'),


-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text COLLATE utf8_unicode_ci NOT NULL,
  `receiver` text COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES

(2, 'Anushka More', 'Yameeni Mhaske', 800, '2021-08-02 20:44:53'),
(3, 'Himani Ranpariya', 'Ishika Joshi', 600, '2021-08-03 07:34:22'),


(6, 'Yamma', 'Anuma', 12121, '2021-08-13 19:18:25'),
(7, 'Anuma', 'Anosha', 500, '2021-08-14 09:48:08'),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES

(2, 'Anosha', '$2y$10$wo.h6hcJmzVqMiSfmbk/R.uJUajTAIM1wgqDSdsSr7wRk09oQg7xW', '2021-08-15 10:23:43'),
(3, 'AnushkaMore', '$2y$10$tt9h1zT9KEJ0tiGx.q5vF.glsuO4Mq4qXWfLK2Ow45tzopzgz7k8S', '2021-08-15 17:36:13'),
(4, 'Tapasvini', '$2y$10$BtDgO./F6xfTNOjWEyCL9u.Qt6TpEizYo81TRnfVqKRu/wvXSIl6y', '2021-08-16 08:58:20'),
(5, 'apurva', '$2y$10$YJjtCnZM2xCIYcxWBeWg3uUI3pioUC8IQKEYbS6xxZaGAoL10UFh2', '2021-08-16 09:43:28'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
