-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2025 at 05:12 AM
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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '778a6f22-edc0-4818-bb02-c8c869ffbd60', 'database', 'default', '{\"uuid\":\"778a6f22-edc0-4818-bb02-c8c869ffbd60\",\"displayName\":\"App\\\\Events\\\\UserNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":15:{s:5:\\\"event\\\";O:27:\\\"App\\\\Events\\\\UserNotification\\\":2:{s:6:\\\"userId\\\";i:1;s:7:\\\"message\\\";s:20:\\\"News Article Created\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1757819667,\"delay\":null}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 8080 after 2043 ms: Couldn\'t connect to server (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:8080/apps/62722/events?auth_key=29892h29d9sgg8282hsss&auth_timestamp=1757819695&auth_version=1.0&body_md5=45c4460bcb26e1460de1a683e375e70b&auth_signature=52acb40708b20fb61be87c52169c9d3d52f7bb8638ba832aac40df6b57a2fc7c. in D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:163\nStack trace:\n#0 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(93): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'user.notificati...\', Array)\n#1 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#7 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(444): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(394): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(180): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#27 D:\\Server8088\\htdocs\\elastic\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\Server8088\\htdocs\\elastic\\vendor\\symfony\\console\\Application.php(1110): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\Server8088\\htdocs\\elastic\\vendor\\symfony\\console\\Application.php(359): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\Server8088\\htdocs\\elastic\\vendor\\symfony\\console\\Application.php(194): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\Server8088\\htdocs\\elastic\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\Server8088\\htdocs\\elastic\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-09-13 21:14:58');

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
(47, '2025-09-10 22:42:16', '2025-09-10 22:42:16', 'Voting begins in Jucsu polls after 33 years', 'Voting in the Jahangirnagar University Central Students’ Union (Jucsu) election began at 9am on Thursday, marking the return of the long-awaited polls after a 33-year gap.\r\n\r\nLong queues of students were seen outside polling booths at various halls from early morning. The polls will continue until 5pm across the university’s 21 residential halls.\r\n\r\nOn-site visits showed voters—particularly female students—turning out in notable numbers. The university administration said the atmosphere has remained peaceful, with security measures in place to avert any untoward incidents.', 'Ashik'),
(48, '2025-09-13 21:14:24', '2025-09-13 21:14:24', 'weess', 'asddss', 'Ashik'),
(49, '2025-09-13 21:15:48', '2025-09-13 21:15:48', 'xssss', 'assasaas', 'Ashik'),
(50, '2025-09-13 21:20:20', '2025-09-13 21:20:20', 'sddsd', 'cxzczcx', 'Ashik'),
(51, '2025-09-13 21:50:49', '2025-09-13 21:50:49', 'sddsfdsf', 'dfssdfdfs', 'Ashik'),
(52, '2025-09-13 21:55:02', '2025-09-13 21:55:02', 'dasdasdas', 'dasasddassd', 'Ashik'),
(53, '2025-09-13 21:55:43', '2025-09-13 21:55:43', 'sasdasa', 'sdaasdasd', 'Ashik'),
(54, '2025-09-13 22:08:20', '2025-09-13 22:08:20', 'dsfsdffsd', 'fdsdsfds', 'Ashik'),
(55, '2025-09-13 22:08:56', '2025-09-13 22:08:56', 'cdasdd', 'cscascaafsda', 'Ashik'),
(56, '2025-09-13 22:12:23', '2025-09-13 22:12:23', 'fdfdsfds', 'saasdfasdf', 'Ashik'),
(57, '2025-09-13 22:12:52', '2025-09-13 22:12:52', 'sassa', 'sssa', 'Ashik'),
(58, '2025-09-13 22:13:46', '2025-09-13 22:13:46', 'zxxz', 'xzxzxz', 'Ashik'),
(59, '2025-09-13 22:14:30', '2025-09-13 22:14:30', 'xsxx', 'xzzXzX', 'Ashik'),
(60, '2025-09-13 22:19:38', '2025-09-13 22:19:38', 'xdasddss', 'dasdsdsadas', 'Ashik'),
(61, '2025-09-13 22:19:50', '2025-09-13 22:19:50', 'sdadsa', 'cccx', 'Ashik'),
(62, '2025-09-13 22:20:48', '2025-09-13 22:20:48', 'dsdasdsa', 'dsaasdasd', 'Ashik'),
(63, '2025-09-13 23:33:41', '2025-09-13 23:33:41', 'Govt belt-tightening saved Tk 5,689cr in FY25', 'The government cut its expenditure by 25 percent, or Tk 5,689 crore, in the fiscal year (FY) 2024-25 as part of a series of austerity measures.\r\n\r\nThis is more than twice the Tk 2,500 crore saved a year earlier.\r\n\r\nIn the last fiscal year, the development and non-development budget allocations for energy, buildings, vehicles and land acquisition totalled Tk 22,756 crore, but actual spending stood at Tk 17,067 crore.\r\n\r\nTo steer through the economic turbulence caused by the Covid-19 pandemic in March 2020, the authorities introduced the first round of belt-tightening.', 'Ashik'),
(64, '2025-09-13 23:35:40', '2025-09-13 23:35:40', 'assaas', 'aSAA', 'Ashik'),
(65, '2025-09-13 23:37:42', '2025-09-13 23:37:42', 'ASSASD', 'SASASAD', 'Ashik'),
(66, '2025-09-13 23:38:32', '2025-09-13 23:38:32', 'DSFSDFDS', 'SDASAfdfds affasd', 'Ashik'),
(67, '2025-09-13 23:41:51', '2025-09-13 23:41:51', 'dsadasdascaf', 'cxcxzcacas', 'Ashik'),
(68, '2025-09-13 23:42:47', '2025-09-13 23:42:47', 'dadfsadsfasdf', 'dsaasfdasfasfd', 'Ashik'),
(69, '2025-09-13 23:43:23', '2025-09-13 23:43:23', 'dasafsdfasdfasd', 'afcddfasfasdasfd', 'Ashik'),
(70, '2025-09-13 23:44:18', '2025-09-13 23:44:18', 'dasasdasddas', 'fsdsdsfd', 'Ashik'),
(71, '2025-09-13 23:44:29', '2025-09-13 23:44:29', 'dddsf', 'sddsdsef', 'Ashik'),
(72, '2025-09-13 23:54:00', '2025-09-13 23:54:00', 'fsdsdds', 'dsadadsasd', 'Ashik'),
(73, '2025-09-13 23:54:43', '2025-09-13 23:54:43', 'sasa', 'saxssx', 'Ashik'),
(74, '2025-09-13 23:55:42', '2025-09-13 23:55:42', 'zcxczx', 'xcZcxz', 'Ashik'),
(75, '2025-09-14 00:30:02', '2025-09-14 00:30:02', 'cvcds', 'dsdsds', 'Ashik'),
(76, '2025-09-14 00:31:38', '2025-09-14 00:31:38', 'ddsfsdf', 'dssdfsds', 'Ashik'),
(77, '2025-09-14 00:32:39', '2025-09-14 00:32:39', 'cvcvxvcx', 'vcvcffsd', 'Ashik'),
(78, '2025-09-14 00:32:51', '2025-09-14 00:32:51', 'fsdff', 'fsdfsdsdfdf', 'Ashik'),
(79, '2025-09-14 00:34:11', '2025-09-14 00:34:11', 'sasda', 'sdadsasda', 'Ashik'),
(80, '2025-09-14 00:35:01', '2025-09-14 00:35:01', 'fdfsdf', 'dssfdsfd', 'Ashik'),
(81, '2025-09-14 00:58:30', '2025-09-14 00:58:30', 'asaasas', 'asxZXZ', 'Ashik'),
(82, '2025-09-14 01:12:26', '2025-09-14 01:12:26', 'dfsdfsdfs', 'fdsfddfs', 'Ashik'),
(83, '2025-09-14 02:20:50', '2025-09-14 02:20:50', 'sdasd', 'dsadasasd', 'Ashik'),
(84, '2025-09-14 02:21:12', '2025-09-14 02:21:12', 'dasddas', 'asssdasd', 'Ashik'),
(85, '2025-09-14 02:35:45', '2025-09-14 02:35:45', 'dsdsdfs', 'fdfsdfsdsdf', 'Ashik'),
(86, '2025-09-14 02:36:14', '2025-09-14 02:36:14', 'cvxvxv', 'fdzzddvz', 'Ashik'),
(87, '2025-09-14 02:36:30', '2025-09-14 02:36:30', 'sadass', 'sdadasdasa', 'Ashik'),
(88, '2025-09-14 02:37:38', '2025-09-14 02:37:38', 'dfdssfd', 'dfssdsdffsd', 'Ashik'),
(89, '2025-09-14 02:41:20', '2025-09-14 02:41:20', 'zsd', 'saasdsad', 'Ashik'),
(90, '2025-09-14 02:46:32', '2025-09-14 02:46:32', 'dfdffdgh', 'fgfdsfsdfds', 'Ashik'),
(91, '2025-09-14 02:49:03', '2025-09-14 02:49:03', 'sdsf', 'dfsdsdsf', 'Ashik'),
(92, '2025-09-14 02:51:14', '2025-09-14 02:51:14', 'dfdssdffds', 'fdsfgcvx ewfewerrwe', 'Ashik'),
(93, '2025-09-14 02:58:00', '2025-09-14 02:58:00', 'srgrfgf', 'fdssfdsfdsfdsfd', 'Ashik'),
(94, '2025-09-14 02:59:34', '2025-09-14 02:59:34', 'sxsas', 'sssx', 'Ashik'),
(95, '2025-09-14 03:03:47', '2025-09-14 03:03:47', 'asdasdfdfa', 'dasdasasdf', 'Ashik'),
(96, '2025-09-14 03:04:19', '2025-09-14 03:04:19', 'saddasads', 'sddsaasd', 'Ashik'),
(97, '2025-09-14 03:05:41', '2025-09-14 03:05:41', 'dsfdffd', 'dssdadsasd', 'Ashik'),
(98, '2025-09-14 03:07:41', '2025-09-14 03:07:41', 'dfssfd', 'fdfdsfddfsfsd', 'Ashik'),
(99, '2025-09-14 03:08:19', '2025-09-14 03:08:19', 'cddd', 'dadadadaf', 'Ashik'),
(100, '2025-09-14 03:09:08', '2025-09-14 03:09:08', 'dsads', 'dssadsadsad', 'Ashik'),
(101, '2025-09-14 03:09:56', '2025-09-14 03:09:56', 'azaA', 'AaaAAaAA', 'Ashik'),
(102, '2025-09-14 03:12:52', '2025-09-14 03:12:52', 'sadadsadas', 'sdassasas efefewf', 'Ashik'),
(103, '2025-09-14 03:14:09', '2025-09-14 03:14:09', 'v xxfv', 'fffsew', 'Ashik'),
(104, '2025-09-14 03:20:39', '2025-09-14 03:20:39', 'fdssfsfd', 'fdsfsd', 'Ashik'),
(105, '2025-09-14 03:21:35', '2025-09-14 03:21:35', 'fddfgd', 'gffggffggd', 'Ashik'),
(106, '2025-09-14 23:28:36', '2025-09-14 23:28:36', 'ggdf', 'gfdfgdf', 'Ashik'),
(107, '2025-09-14 23:29:59', '2025-09-14 23:29:59', 'fdfd', 'ffdfdfvv', 'Ashik'),
(108, '2025-09-14 23:30:30', '2025-09-14 23:30:30', 'fdfd', 'ffdfdfvv', 'Ashik');

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
('gFiEvNQEDNhFj2cD1lIqduaxjNP0pPw8zusaPyIw', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTRnazVMVHduUnZVZ2dyVzZMNjJRckl3NlQ2UTVST1c3Ynp2ZWdUayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLWFydGljbGVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1757914236);

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
(1, 'Ashik Mobin Mobin', 'ashikmehermobin@gmail.com', NULL, '$2y$12$MnrOuir0J6E7wY4AdiFWGO/JlvTBn6.0qHibqwfZLmdd161pTFs2e', NULL, '2025-09-07 22:36:53', '2025-09-07 22:36:53'),
(2, 'AM Mubeen', 'ashikmeherpial@gmail.com', NULL, '$2y$12$s/7PeujsZeJgSGk2tbTb4O2ODaB70.gW5vhDfh/vFRPmFb96NgHaq', NULL, '2025-09-13 21:54:45', '2025-09-13 21:54:45');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
