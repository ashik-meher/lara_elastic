-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2025 at 09:05 AM
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
-- Database: `elastic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE `news_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`id`, `created_at`, `updated_at`, `title`, `body`, `author_name`) VALUES
(1, '2021-11-23 06:46:24', '2021-11-23 06:46:24', 'Laravel: Enterprise Backend Framework', 'Laravel is great for backend api data', 'Ashik Meher Mobin'),
(2, '2021-11-23 06:46:24', '2021-11-23 06:46:24', 'Laravel Livewire: Full Stack option', 'A full stack framwork', 'Robindranath Tagore'),
(3, '2021-11-23 06:46:24', '2021-11-23 06:46:24', 'Api GET post', 'successful api post', 'ashik007'),
(5, '2021-11-23 06:54:12', '2021-11-23 07:07:06', 'Hello API Post', 'from postman ', 'Mobin'),
(6, '2021-11-23 07:07:54', '2021-11-23 07:07:54', 'Interim Gov', 'postman automated testing', 'Mobin'),
(7, '2022-11-23 04:44:35', '2022-11-23 04:44:35', 'qww', '78976', 'Ashik Meher Mobin'),
(8, '2022-11-23 04:48:54', '2022-11-23 04:48:54', 'aa', 'ssd', 'Ashik Meher Mobin'),
(9, '2022-11-24 03:19:48', '2022-11-24 03:19:48', 'Cox\'s Bazar Case', 'Wel come to coxs bazar', 'Ashik Meher Mobin'),
(10, '2022-11-24 04:28:38', '2022-11-24 04:28:38', 'iiui', 'jhtf', 'Ashik Meher Mobin'),
(11, '2022-11-28 00:15:25', '2022-11-28 00:15:25', 'Hello postman 007', 'james bond 008', 'ashik'),
(12, '2022-11-28 06:21:52', '2022-11-28 06:21:52', 'Hyeiiwiw', 'bangla time', 'one bengal'),
(13, '2022-11-28 06:44:00', '2022-11-28 06:44:00', 'dhdhdh', 'dhura', 'mura'),
(14, '2022-11-28 07:23:06', '2022-11-28 07:23:06', 'vfffgfg', 'shuvolong', 'muras'),
(15, '2022-11-28 07:26:42', '2022-11-28 07:26:42', 'gurrr', 'shuvolong pahar', 'murat'),
(16, '2022-11-28 07:31:04', '2022-11-28 07:31:04', 'hhiwiww', 'kek khek', 'Ashik Meher Mobin'),
(17, '2022-11-28 07:53:12', '2022-11-28 07:53:12', 'gurrr', 'shuvolong', 'muras furr'),
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
(35, '2024-05-26 08:10:16', '2024-05-26 10:13:19', 'This a AJAXxxx tyaay', 'xxx\n                AJAX test for Laravelyy\ntyyyaaa tia\nmia', 'Ashik Meher Mobin'),
(36, '2025-09-10 04:36:40', '2025-09-10 04:36:40', 'fdsfsds', 'ffdsfsdsdf', 'Ashik'),
(37, '2025-09-10 04:41:28', '2025-09-10 04:41:28', 'acv', 'acvfrt', 'Ashik'),
(38, '2025-09-10 04:41:28', '2025-09-10 04:41:28', 'acv', 'acvfrt', 'Ashik'),
(39, '2025-09-10 04:42:29', '2025-09-10 04:42:29', 'The final act: Learning to accept election defeat', 'So far as Ducsu election is concerned, it was a celebration and an occasion to remember, since student union elections are held very irregularly, the last held in 2019 and the one before that in 1990, and only when it suits the incumbent. Thus, although supposed to be an annual event, for many students it has been once in a lifetime ritual, or not even that, to be able to vote for their campus representatives.', 'Ashik'),
(40, '2025-09-10 04:46:57', '2025-09-10 04:46:57', 'বজ্রপাত থেকে প্রাণহানি রোধে মনোহরদীতে বসুন্ধরা শুভসংঘের তালবীজ রোপণ কর্মসূচি', 'বজ্রপাত প্রতিরোধ, প্রাণহানি হ্রাস ও পরিবেশ সুরক্ষার লক্ষ্য নিয়ে নরসিংদীর মনোহরদীতে তালবীজ রোপণ কর্মসূচি পালন করেছে বসুন্ধরা শুভসংঘ মনোহরদী উপজেলা শাখা।\r\n\r\nরবিবার (৭ সেপ্টেম্বর) সকালে উপজেলার কলেজ রোডের দুই পাশে সারিবদ্ধভাবে দুই শতাধিক তালবীজ রোপণ করা হয়। এ কর্মসূচিতে উপস্থিত ছিলেন উপজেলা শাখার সভাপতি সহকারী অধ্যাপক ডা. মো. সাইদুর রহমান, উপদেষ্টা মো. আবদুল হামিদ, মো. ফারুক আহাম্মেদ মুদির, সাধারণ সম্পাদক মো. খায়রুল আলম মোরাদ, সাংগঠনিক সম্পাদক মো. আল মমিন হোসাইন সজিব, শুভার্থী গাজি শরিফ, শেখ বাইজিদ আহমেদ শিপনসহ সংগঠনের অন্যান্য সদস্যরা।', 'Ashik'),
(41, '2025-09-10 21:17:42', '2025-09-10 21:17:42', 'Nepal stares into political void', 'Shaken by deadly protests that ousted its veteran prime minister and set parliament ablaze, Nepal faces the pressing question of who will step into the political void.\r\n\r\nIn the short term, the army has taken charge of the nation of 30 million people since the protests escalated on Tuesday.\r\n\r\nNepali Army chief, General Ashok Raj Sigdel met Wednesday with key figures and \"representatives of Gen Z\", an army spokesman said, referring to the loose umbrella title of the young protesters, without giving further details.', 'Ashik'),
(42, '2025-09-10 21:19:03', '2025-09-10 21:19:03', 'Islami Bank’s provision shortfall nears record Tk 70,000cr', 'Islami Bank Bangladesh PLC ended last year with a provision shortfall of nearly Tk 70,000 crore, audit reports show, exposing cracks in the financial health of the country\'s largest Shariah-based commercial lender for the first time in its four-decade history.\r\n\r\nWeak asset quality in loans and investments, along with the bank\'s failure to set aside adequate funds to cover potential losses from defaults or bad debts, overshadowed its reported Tk 100 crore profit for 2024.', 'Ashik'),
(43, '2025-09-10 21:22:58', '2025-09-10 21:22:58', 'Frontier technology institute to be set up at Buet', 'The Bangladesh Hi-Tech Park Authority has signed a memorandum of understanding (MoU) with and the Bangladesh University of Engineering and Technology (Buet) to establish the Institute of Frontier Technology (IFT) on the Buet campus.\r\n\r\nThe agreement is part of the project, titled \"Bangladesh Institute of Frontier Technology Preliminary Infrastructure Development (1st Revision)\".\r\n\r\nAbu Borhan Mohammad Badruzzaman, vice-chancellor of Buet, and AKM Amirul Islam, managing director of the Bangladesh Hi-Tech Park Authority, signed the MoU at the InterContinental Dhaka in the capital today.', 'Ashik'),
(44, '2025-09-10 21:27:45', '2025-09-10 21:27:45', 'Ducsu election results: Winners declared for all 28 posts', 'In the Dhaka University Central Students\' Union (Ducsu) election, 471 candidates contested 28 posts. The election commission announced the final results today, around 8:00am at the Dhaka University Senate building.\r\n\r\nShadik Kayem was elected vice-president, leading a panel that secured key positions across the union.\r\n\r\nSM Farhad Hossain won the post of general secretary with 10,794 votes, while Muhammad Mohiuddin Khan was elected assistant general secretary, receiving 11,772 votes.', 'Ashik'),
(45, '2025-09-10 22:34:53', '2025-09-10 22:34:53', 'Bangladeshi family assaulted, looted; envoy’s car vandalised in Nepal', 'A Bangladeshi family fell victim to assault and looting amid the chaotic situation in Nepal on Tuesday when protesters vandalised a five-star hotel in Kathmandu.\r\n\r\nThe Bangladesh ambassador\'s car was also vandalised when he was on his way to provide support for the Bangladesh football team now in Nepal, officials of Bangladesh Embassy in Kathmandu confirmed to The Daily Star last night.\r\n\r\nThe assaulted Bangladeshi family was later sheltered at the ambassador\'s residence yesterday.', 'Ashik'),
(46, '2025-09-10 22:36:10', '2025-09-10 22:36:10', 'Starlink in Gaza: Humanitarian Lifeline or Military Asset?', 'Starlink, the satellite internet project under Musk\'s SpaceX, began with the lofty ambition of blanketing the globe with high-speed internet. What started as a futuristic experiment quickly turned into a sprawling constellation of thousands of satellites, reshaping digital access in remote and conflict-stricken regions. Its role in Ukraine after Russia\'s 2022 invasion catapulted Starlink into global headlines. Musk\'s satellites kept Ukrainian forces connected when terrestrial systems failed, reinforcing its image as both a humanitarian and strategic tool. Since then, Starlink has become synonymous with resilience in crises—but also increasingly entangled in the politics of war.', 'Ashik'),
(47, '2025-09-10 22:42:16', '2025-09-10 22:42:16', 'Voting begins in Jucsu polls after 33 years', 'Voting in the Jahangirnagar University Central Students’ Union (Jucsu) election began at 9am on Thursday, marking the return of the long-awaited polls after a 33-year gap.\r\n\r\nLong queues of students were seen outside polling booths at various halls from early morning. The polls will continue until 5pm across the university’s 21 residential halls.\r\n\r\nOn-site visits showed voters—particularly female students—turning out in notable numbers. The university administration said the atmosphere has remained peaceful, with security measures in place to avert any untoward incidents.', 'Ashik');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1nUCqcdofLnXNLmgEIXguMUJZ0qVKtfRPpQtVQQs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYmhSdjA4aXV3NkJTYlVLdlVhWExpYmVxQndXczVteERSbzA4dzlVWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLWFydGljbGVzL3NlYXJjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1757574072);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashik Mobin Mobin', 'ashikmehermobin@gmail.com', NULL, '$2y$12$MnrOuir0J6E7wY4AdiFWGO/JlvTBn6.0qHibqwfZLmdd161pTFs2e', NULL, '2025-09-07 22:36:53', '2025-09-07 22:36:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
