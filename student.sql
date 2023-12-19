-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 12:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(50) NOT NULL,
  `brand_icon` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_icon`, `status`) VALUES
(1, '1679553859-1940.png', 'active'),
(2, '1679553869-463.png', 'active'),
(3, '1679553919-191.png', 'active'),
(4, '1679553931-535.png', 'active'),
(5, '1679553938-1971.png', 'active'),
(6, '1679553952-725.png', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `area_year` int(50) NOT NULL,
  `area_percentage` int(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `area_name`, `area_year`, `area_percentage`, `status`) VALUES
(1, 'DHAKA COLLEGIATE SCHOOL', 2014, 100, 'active'),
(2, 'DHAKA IMPERIAL COLLEGE', 2016, 95, 'active'),
(3, 'UNITED INTERNAITONAL UNIVERSITY', 2023, 85, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(50) NOT NULL,
  `fact_icon` varchar(50) NOT NULL,
  `fact_title` varchar(50) NOT NULL,
  `fact_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `fact_icon`, `fact_title`, `fact_description`) VALUES
(2, 'fa fa-search', 'search', 'search'),
(3, 'fa fa-id-card', 'HOUSE', 'house'),
(4, 'fa fa-id-badge', 'BADGE', 'BADGE');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(50) NOT NULL,
  `service_icon` varchar(50) NOT NULL,
  `service_title` varchar(50) NOT NULL,
  `service_description` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_icon`, `service_title`, `service_description`, `status`) VALUES
(4, 'fa fa-id-card', 'ID CARD', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'active'),
(5, 'fa fa-envelope-open', 'ENVELOPE', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 'active'),
(7, 'fa fa-bath', 'BATH', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(50) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_value`, `setting_name`) VALUES
(1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'owner_about'),
(2, 'UNITED CITY', 'owner_address'),
(3, '+880174****', 'owner_phone'),
(4, 'mroy193154@gmail.com', 'owner_email'),
(5, 'www.facebook.com', 'owner_fb_link'),
(6, 'www.twitter.com', 'owner_tw_link'),
(7, 'MRIDUL ROY', 'owner_name'),
(8, 'STAY HAPPY', 'owner_bio');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `profile_image` varchar(50) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `gender`, `profile_image`) VALUES
(3, 'rubel', 'rubel@mail.com', 'f93e6914209aac9e120e242ee455dc55', 'tati bazar', 'male', 'default.jpg'),
(4, 'akhi alamgir', 'akhi@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'tati bazar', 'male', 'default.jpg'),
(5, 'admin', 'admin@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'gulshan', 'male', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(50) NOT NULL,
  `work_title` varchar(50) NOT NULL,
  `work_icon` varchar(50) NOT NULL,
  `work_feature_photo` varchar(50) NOT NULL,
  `work_details` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `work_title`, `work_icon`, `work_feature_photo`, `work_details`, `status`) VALUES
(1, 'ART', '1679556435-33.jpg', '1679556435-100.jpg', 'ART', 'active'),
(2, 'DANCE', '1679556513-14.jpg', '1679556513-68.jpg', 'DANCE', 'active'),
(3, 'SUNGLASSES', '1679559074-12.jpg', '1679559074-85.jpg', 'SUNGLASSES', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
