-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2025 at 07:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larticles-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `title`, `body`, `author_name`) VALUES
(1, NULL, NULL, 'This is Laravel API data number 1', 'kaise laga mera majak', 'Ashik Meher Mobin'),
(2, NULL, NULL, 'laarvel api data second set', 'kaise laga 22 mera majak', 'Robindranath Tagore'),
(3, '2021-11-23 06:46:24', '2021-11-23 06:46:24', 'Helloo api post', 'aha, successful api post', 'ashik007'),
(5, '2021-11-23 06:54:12', '2021-11-23 07:07:06', 'Hello API POst sob change', 'haha kaise laga from postman majak', 'Mobin The Greate update ki hoylo naki??'),
(6, '2021-11-23 07:07:54', '2021-11-23 07:07:54', 'Hello API POst sob change 4 notun create', 'haha kaise laga from postman majak', 'Mobin The Greate update ki hoylo naki??'),
(7, '2022-11-23 04:44:35', '2022-11-23 04:44:35', 'qww', '', 'Ashik Meher Mobin'),
(8, '2022-11-23 04:48:54', '2022-11-23 04:48:54', 'aa', 'ssd', 'Ashik Meher Mobin'),
(9, '2022-11-24 03:19:48', '2022-11-24 03:19:48', 'Cox\'s Bazar Case', 'Wel come to coxs bazar', 'Ashik Meher Mobin'),
(10, '2022-11-24 04:28:38', '2022-11-24 04:28:38', 'iiui', 'jhtf', 'Ashik Meher Mobin'),
(11, '2022-11-28 00:15:25', '2022-11-28 00:15:25', 'Hello postman 007', 'james bond 008', 'aaaasssssssshhhhhh'),
(12, '2022-11-28 06:21:52', '2022-11-28 06:21:52', 'Hyeiiwiw', 'bangla time', 'one bengal'),
(13, '2022-11-28 06:44:00', '2022-11-28 06:44:00', 'dhdhdh', 'dhura', 'mura'),
(14, '2022-11-28 07:23:06', '2022-11-28 07:23:06', 'vfffgfg', 'shuvolong', 'muras'),
(15, '2022-11-28 07:26:42', '2022-11-28 07:26:42', 'gurrr', 'shuvolong gurr', 'muras furr'),
(16, '2022-11-28 07:31:04', '2022-11-28 07:31:04', 'hhiwiww', 'kek khek', 'Ashik Meher Mobin'),
(17, '2022-11-28 07:53:12', '2022-11-28 07:53:12', 'gurrr', 'shuvolong gurriiii', 'muras furr'),
(18, '2022-11-28 09:04:05', '2022-11-28 09:04:05', 'hur', 'chur', 'murs furr'),
(19, '2022-11-28 09:11:02', '2022-11-28 09:11:02', 'hur', 'chur', 'murs furrii'),
(20, '2022-11-28 09:12:56', '2022-11-28 09:12:56', 'hur', 'churwwe', 'murs furrii'),
(21, '2022-11-28 10:49:56', '2022-11-28 10:49:56', 'hur', 'churwwe5677', 'murs furriiiiihhgg'),
(22, '2022-11-28 05:51:05', '2022-11-28 05:51:05', 'yeuue', 'cwiiw', 'murs furriiiiihhgg'),
(23, '2022-11-28 08:52:33', '2022-11-28 08:52:33', 'yeuueio', 'cwiiw', 'murs furriiiiihhgg'),
(24, '2022-11-28 09:34:26', '2022-11-28 09:34:26', 'yeuueioty', 'cwiiw', 'murs furriiiiihhgg'),
(25, '2022-11-28 11:08:48', '2022-11-28 11:08:48', 'ggyujj', 'cwiiw', 'murs furriiiiihhgg'),
(26, '2022-11-28 11:45:41', '2022-11-28 11:45:41', '90765', 'cwiiw', 'murs furriiiiihhgg'),
(27, '2022-11-28 11:50:32', '2022-11-28 11:50:32', 'database thik ase', 'cwiiw', 'murs furriiiiihhgg'),
(28, '2022-11-28 11:53:18', '2022-11-28 11:53:18', 'hmm\'ok', 'cwiiw', 'murs furriiiiihhgg'),
(29, '2022-11-28 11:54:43', '2022-11-28 11:54:43', 'ggg', 'cwiiw', 'murs furriiiiihhgg'),
(30, '2022-11-28 12:07:05', '2022-11-28 12:07:05', 'ee', 'rrr', 'Ashik Meher Mobin'),
(31, '2022-11-28 12:13:43', '2022-11-28 12:13:43', 'tututu', 'cwiiw', 'murs furriiiiihhgg'),
(32, '2022-11-28 12:19:35', '2022-11-28 12:19:35', 'a tututu', 'cwiiw', 'murs furriiiiihhgg'),
(33, '2023-10-09 05:17:08', '2023-10-09 05:17:08', 'How to do SEO online', 'Take it as a tip', 'Ashik Meher Mobin'),
(34, '2024-05-26 07:40:07', '2024-05-26 07:40:07', 'This a AJAX', 'AJAX test for Laravel', 'Ashik Meher Mobin'),
(35, '2024-05-26 08:10:16', '2024-05-26 10:13:19', 'This a AJAXxxx tyaay', 'xxx\r\n                AJAX test for Laravelyy\r\ntyyyaaa tia\r\nmia', 'Ashik Meher Mobin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
