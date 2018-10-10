-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 05:09 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `make_them_work`
--

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

CREATE TABLE `constituencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituencies`
--

INSERT INTO `constituencies` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Mandrem', '2018-09-09 11:52:18', '2018-09-09 11:52:18'),
(2, 'Pernem', '2018-09-09 11:52:37', '2018-09-09 11:52:37'),
(3, 'Bicholim', '2018-09-09 11:52:50', '2018-09-09 11:52:50'),
(4, 'Tivim', '2018-09-09 11:53:02', '2018-09-09 11:53:02'),
(5, 'Mapusa', '2018-09-09 11:53:14', '2018-09-09 11:53:14'),
(6, 'Siolim', '2018-09-09 11:53:24', '2018-09-09 11:53:24'),
(7, 'Saligao', '2018-09-09 11:53:33', '2018-09-09 11:53:33'),
(8, 'Calangute', '2018-09-09 11:53:41', '2018-09-09 11:53:41'),
(9, 'Porvorim', '2018-09-09 11:53:51', '2018-09-09 11:53:51'),
(10, 'Aldona', '2018-09-09 11:54:00', '2018-09-09 11:54:00'),
(11, 'Panaji', '2018-09-09 11:54:09', '2018-09-09 11:54:09'),
(12, 'Taleigao', '2018-09-09 11:54:19', '2018-09-09 11:54:19'),
(13, 'Santa Cruz', '2018-09-09 11:54:28', '2018-09-09 11:54:28'),
(14, 'St. Andre', '2018-09-09 11:54:39', '2018-09-09 11:54:39'),
(15, 'Cumbarjua', '2018-09-09 11:54:52', '2018-09-09 11:54:52'),
(16, 'Maem', '2018-09-09 11:54:59', '2018-09-09 11:54:59'),
(17, 'Sankhali', '2018-09-09 11:55:09', '2018-09-09 11:55:09'),
(18, 'Poriem', '2018-09-09 11:55:16', '2018-09-09 11:55:16'),
(19, 'Valpoi', '2018-09-09 11:55:27', '2018-09-09 11:55:27'),
(20, 'Priol', '2018-09-09 11:55:34', '2018-09-09 11:55:34'),
(21, 'Ponda', '2018-09-09 11:55:42', '2018-09-09 11:55:42'),
(22, 'Siroda', '2018-09-09 11:55:51', '2018-09-09 11:55:51'),
(23, 'Marcaim', '2018-09-09 11:55:58', '2018-09-09 11:55:58'),
(24, 'Mormugao', '2018-09-09 11:56:06', '2018-09-09 11:56:06'),
(25, 'Vasco Da Gama', '2018-09-09 11:56:15', '2018-09-09 11:56:15'),
(26, 'Dabolim', '2018-09-09 11:56:29', '2018-09-09 11:56:29'),
(27, 'Cortalim', '2018-09-09 11:56:37', '2018-09-09 11:56:37'),
(28, 'Nuvem', '2018-09-09 11:56:44', '2018-09-09 11:56:44'),
(29, 'Curtorim', '2018-09-09 11:56:52', '2018-09-09 11:56:52'),
(30, 'Fatorda', '2018-09-09 11:57:00', '2018-09-09 11:57:00'),
(31, 'Margao', '2018-09-09 11:57:08', '2018-09-09 11:57:08'),
(32, 'Benaulim', '2018-09-09 11:57:17', '2018-09-09 11:57:17'),
(33, 'Navelim', '2018-09-09 11:57:24', '2018-09-09 11:57:24'),
(34, 'Cuncolim', '2018-09-09 11:57:31', '2018-09-09 11:57:31'),
(35, 'Velim', '2018-09-09 11:57:39', '2018-09-09 11:57:39'),
(36, 'Quepem', '2018-09-09 11:57:47', '2018-09-09 11:57:47'),
(37, 'Curchorem', '2018-09-09 11:57:54', '2018-09-09 11:57:54'),
(38, 'Sanvordem', '2018-09-09 11:58:02', '2018-09-09 11:58:02'),
(39, 'Sanguem', '2018-09-09 11:58:10', '2018-09-09 11:58:10'),
(40, 'Canacona', '2018-09-09 11:58:22', '2018-09-09 11:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `potholes`
--

CREATE TABLE `potholes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL,
  `constituency_id` int(10) UNSIGNED NOT NULL,
  `severity` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potholes`
--

INSERT INTO `potholes` (`id`, `user_id`, `image`, `path`, `location`, `address`, `constituency_id`, `severity`, `description`, `created`, `modified`) VALUES
(1, 2, '{\"image_0\":\"\\/files\\/2\\/1\\/615.PNG\"}', '', 'Prabhu Nagar, Ponda, Goa, India', 'Ved Gym', 21, '2', '', '2018-09-12 09:14:53', '2018-09-12 09:14:53'),
(2, 2, '{\"image_0\":\"\\/files\\/2\\/2\\/Dk7abVvU8AAWI8j.jpg large.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'Near the near overhead bridge', 11, '3', 'very dangerous man', '2018-09-12 09:16:40', '2018-09-12 09:16:40'),
(3, 2, '{\"image_0\":\"\\/files\\/2\\/3\\/7.19.jpg\"}', '', 'Kalika Chambers, Valaulikar Road, Pajifond, Margao, Goa, India', 'Grace church', 31, '1', 'small pothole', '2018-09-12 10:17:50', '2018-09-12 10:17:50'),
(4, 2, '{\"image_0\":\"\\/files\\/2\\/4\\/grimstroke.jpg\"}', '', 'Top Cola, Borim, Goa', 'Petrol Pump', 21, '3', 'big potholes', '2018-09-12 10:18:42', '2018-09-12 10:18:43'),
(5, 2, '{\"image_0\":\"\\/files\\/2\\/1\\/615.PNG\"}', '', 'Prabhu Nagar, Ponda, Goa, India', 'Ved Gym', 21, '2', 'very big pothole', '2018-09-12 09:14:53', '2018-09-12 09:14:53'),
(6, 2, '{\"image_0\":\"\\/files\\/2\\/2\\/Dk7abVvU8AAWI8j.jpg large.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'Near the near overhead bridge', 11, '3', 'very dangerous man', '2018-09-12 09:16:40', '2018-09-12 09:16:40'),
(7, 2, '{\"image_0\":\"\\/files\\/2\\/3\\/7.19.jpg\"}', '', 'Kalika Chambers, Valaulikar Road, Pajifond, Margao, Goa, India', 'Grace church', 31, '1', 'small pothole', '2018-09-12 10:17:50', '2018-09-12 10:17:50'),
(8, 2, '{\"image_0\":\"\\/files\\/2\\/4\\/grimstroke.jpg\"}', '', 'Top Cola, Borim, Goa', 'Petrol Pump', 21, '3', 'big potholes', '2018-09-12 10:18:42', '2018-09-12 10:18:43'),
(9, 2, '{\"image_0\":\"\\/files\\/2\\/1\\/615.PNG\"}', '', 'Prabhu Nagar, Ponda, Goa, India', 'Ved Gym', 21, '2', 'very big pothole', '2018-09-12 09:14:53', '2018-09-12 09:14:53'),
(10, 2, '{\"image_0\":\"\\/files\\/2\\/2\\/Dk7abVvU8AAWI8j.jpg large.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'Near the near overhead bridge', 11, '3', 'very dangerous man', '2018-09-12 09:16:40', '2018-09-12 09:16:40'),
(11, 2, '{\"image_0\":\"\\/files\\/2\\/3\\/7.19.jpg\"}', '', 'Kalika Chambers, Valaulikar Road, Pajifond, Margao, Goa, India', 'Grace church', 31, '1', 'small pothole', '2018-09-12 10:17:50', '2018-09-12 10:17:50'),
(12, 2, '{\"image_0\":\"\\/files\\/2\\/4\\/grimstroke.jpg\"}', '', 'Top Cola, Borim, Goa', 'Petrol Pump', 21, '3', 'big potholes', '2018-09-12 10:18:42', '2018-09-12 10:18:43'),
(13, 2, '{\"image_0\":\"\\/files\\/2\\/1\\/615.PNG\"}', '', 'Prabhu Nagar, Ponda, Goa, India', 'Ved Gym', 20, '2', 'very big pothole', '2018-09-12 09:14:53', '2018-09-12 09:14:53'),
(14, 2, '{\"image_0\":\"\\/files\\/2\\/2\\/Dk7abVvU8AAWI8j.jpg large.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'Near the near overhead bridge', 11, '3', 'very dangerous man', '2018-09-12 09:16:40', '2018-09-12 09:16:40'),
(15, 2, '{\"image_0\":\"\\/files\\/2\\/3\\/7.19.jpg\"}', '', 'Kalika Chambers, Valaulikar Road, Pajifond, Margao, Goa, India', 'Grace church', 31, '1', 'small pothole', '2018-09-12 10:17:50', '2018-09-12 10:17:50'),
(16, 2, '{\"image_0\":\"\\/files\\/2\\/4\\/grimstroke.jpg\"}', '', 'Top Cola, Borim, Goa', 'Petrol Pump', 21, '3', 'big potholes', '2018-09-12 10:18:42', '2018-09-12 10:18:43'),
(17, 2, '{\"image_0\":\"\\/files\\/2\\/1\\/615.PNG\"}', '', 'Prabhu Nagar, Ponda, Goa, India', 'Ved Gym', 21, '2', 'very big pothole', '2018-09-12 09:14:53', '2018-09-12 09:14:53'),
(18, 2, '{\"image_0\":\"\\/files\\/2\\/2\\/Dk7abVvU8AAWI8j.jpg large.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'Near the near overhead bridge', 11, '3', 'very dangerous man', '2018-09-12 09:16:40', '2018-09-12 09:16:40'),
(19, 2, '{\"image_0\":\"\\/files\\/2\\/3\\/7.19.jpg\"}', '', 'Kalika Chambers, Valaulikar Road, Pajifond, Margao, Goa, India', 'Grace church', 31, '1', 'small pothole', '2018-09-12 10:17:50', '2018-09-12 10:17:50'),
(20, 2, '{\"image_0\":\"\\/files\\/2\\/4\\/grimstroke.jpg\"}', '', 'Top Cola, Borim, Goa', 'Petrol Pump', 21, '3', 'big potholes', '2018-09-12 10:18:42', '2018-09-12 10:18:43'),
(21, 2, '{\"image_0\":\"\\/files\\/2\\/21\\/meepo_announcer2.png\",\"image_1\":\"\\/files\\/2\\/21\\/79718.jpg\",\"image_2\":\"\\/files\\/2\\/21\\/natures_prophet_dota_2_abstract_art_94375_1920x1080.jpg\"}', '', 'Panaji Bus Stand, Patto Centre, Goa, India', 'near new bridge', 12, '3', 'very small potholes, but many in numbers. very small potholes, but many in numbers. very small potholes, but many in numbers. very small potholes, but many in numbers.', '2018-09-23 06:40:09', '2018-09-23 06:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `pothole_verifications`
--

CREATE TABLE `pothole_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `pothole_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pothole_verifications`
--

INSERT INTO `pothole_verifications` (`id`, `pothole_id`, `user_id`, `created`, `modified`) VALUES
(1, 3, 2, '2018-09-13 18:54:54', '2018-09-13 18:54:54'),
(2, 3, 3, '2018-09-13 18:55:13', '2018-09-13 18:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `phone`, `created`, `modified`) VALUES
(2, 'Sandeep', 'Kumar', 'kksandyrox@gmail.com', '$2y$10$hnN4E0Ytchupni9mi11KieyKW6xJxCUJrupmIoTEul79kSnQqqeku', NULL, NULL, '2018-09-08 06:48:25', '2018-09-08 06:48:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constituencies`
--
ALTER TABLE `constituencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potholes`
--
ALTER TABLE `potholes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pothole_verifications`
--
ALTER TABLE `pothole_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `constituencies`
--
ALTER TABLE `constituencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `potholes`
--
ALTER TABLE `potholes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pothole_verifications`
--
ALTER TABLE `pothole_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
