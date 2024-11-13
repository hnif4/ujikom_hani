-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2024 at 12:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_301024`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0cbf019d661686b4a1db3c54fb0b0595', 'i:1;', 1730897857),
('0cbf019d661686b4a1db3c54fb0b0595:timer', 'i:1730897857;', 1730897857),
('1e3056aca9d4c0643b5ba0524119bbd5', 'i:1;', 1730897261),
('1e3056aca9d4c0643b5ba0524119bbd5:timer', 'i:1730897261;', 1730897261),
('a6d5d390212c59f293453733cd3ef85c', 'i:1;', 1730897324),
('a6d5d390212c59f293453733cd3ef85c:timer', 'i:1730897324;', 1730897324),
('b69dead7a6d2063c5b48dfbac9cb7ae3', 'i:1;', 1731417390),
('b69dead7a6d2063c5b48dfbac9cb7ae3:timer', 'i:1731417390;', 1731417390),
('b6c2cb22a246d8b89c1c12419f40e4ff', 'i:1;', 1730973134),
('b6c2cb22a246d8b89c1c12419f40e4ff:timer', 'i:1730973134;', 1730973134),
('danisa@example.com|127.0.0.1', 'i:1;', 1730897858),
('danisa@example.com|127.0.0.1:timer', 'i:1730897858;', 1730897858),
('danisa@gmail.com|127.0.0.1', 'i:1;', 1730897261),
('danisa@gmail.com|127.0.0.1:timer', 'i:1730897261;', 1730897261),
('hanifahhanif835@gmail.com|127.0.0.1', 'i:1;', 1730973135),
('hanifahhanif835@gmail.com|127.0.0.1:timer', 'i:1730973135;', 1730973135);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Informasi', 'Semua Informasi', NULL, '2024-10-19 00:16:14'),
(2, 'Agenda', 'Semua Agenda', NULL, '2024-10-19 00:17:35'),
(3, 'Galery', 'Semua Galery', NULL, '2024-10-19 00:17:15'),
(11, 'tes', 'tes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id` int NOT NULL,
  `post_id` int UNSIGNED DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id`, `post_id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, 6, 'Upacara Bendera', 'SMKN 4 Rutin melakukan Upacara Bendera di hari senin', '2024-10-04 00:54:48', '2024-11-10 07:13:35'),
(4, 15, 'P5', 'PROFIL PELAJAR PANCASILA', '2024-10-05 21:38:10', '2024-11-10 07:19:35'),
(7, 2, 'Ekstrakulikuller PMR', 'Ekstrakulikuller PMR SMKN 4', '2024-10-18 18:25:23', '2024-11-10 07:20:34'),
(9, 2, 'Ekstrakulikuller Paskibra', 'Ekstrakulikuller Paskibra', '2024-10-23 06:05:28', '2024-11-10 07:20:48'),
(10, 2, 'Dokumentasi Random', 'Random', '2024-10-26 23:34:00', '2024-11-07 03:00:53'),
(18, 8, 'Pengembangan Perangkat Lunak dan GIM', 'PPLG P nya Paling Keren', '2024-11-07 03:08:14', '2024-11-07 03:10:09'),
(19, 8, 'Teknik Komputer dan Jaringan', 'TKJ Not bad', '2024-11-07 03:08:50', '2024-11-07 03:08:50'),
(20, 8, 'Teknik Otomotif', 'TO o nya Oke', '2024-11-07 03:09:17', '2024-11-07 03:09:17'),
(21, 8, 'Teknik pengelasan dan fabrikasi Logam', 'Apa itu TP?', '2024-11-07 03:09:49', '2024-11-07 03:09:49'),
(23, 10, 'Keputrian SMKN 4', 'Keputrian', '2024-11-10 07:17:41', '2024-11-10 07:28:22'),
(24, 17, 'tes', 'tes', '2024-11-12 04:13:56', '2024-11-12 04:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('unread','read') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Siti Nur Hanifah', 'hanifahhanif835@gmail.com', 'tes', 'unread', '2024-11-09 07:31:59', '2024-11-09 07:31:59'),
(2, 'cursor lagi keren', 'keren@gmail.com', 'masyaallah alhamdulillah', 'unread', '2024-11-09 07:33:19', '2024-11-09 07:33:19'),
(3, 'Siti Nur Hanifah', 'nhanifah320@gmail.com', 'apakah ada siswa yang saya suka di smkn 4?', 'unread', '2024-11-10 05:56:04', '2024-11-10 05:56:04'),
(4, 'Hanifah Cantik', 'nhanifah320@gmail.com', 'aku suka dia', 'unread', '2024-11-12 05:05:16', '2024-11-12 05:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2024_09_28_141723_add_two_factor_columns_to_users_table', 1),
(13, '2024_09_28_151741_create_galeries_table', 2),
(14, '2024_09_28_151742_create_informasis_table', 2),
(15, '2024_09_28_151744_create_agendas_table', 2),
(16, '2024_09_30_040939_create_categories_table', 3),
(17, '2024_10_01_123533_add_category_id_to_informasis_agendas_and_galeries_tables', 4),
(18, '2024_10_01_152824_add_image_url_to_agenda_table', 5),
(19, '2024_10_02_035040_add_image_url_to_informasis_table', 6),
(20, '2024_10_03_141358_add_photo_to_users_table', 7),
(21, '2024_10_17_141522_create_personal_access_tokens_table', 8),
(22, '2024_10_19_042139_create_guests_table', 9),
(23, '2024_10_19_071157_add_timestamps_to_categories_and_photo', 9),
(25, '2024_10_24_125722_add_role_to_users_table', 10),
(26, '2024_10_26_124555_add_role_and_verified_to_users_table', 11),
(27, '2024_10_28_032133_add_role_to_users_table', 12),
(28, '2024_11_02_131928_add_status_to_users_table', 13),
(29, '2024_11_06_114454_add_status_to_users_table', 14),
(30, '2024_03_09_create_messages_table', 15),
(31, 'xxxx_xx_xx_add_lokasi_to_posts_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '18feeb5c0f1c26990c9f6042d9273c7cd848a0ee37997746b90a3af16def5505', '[\"*\"]', NULL, NULL, '2024-10-18 20:22:25', '2024-10-18 20:22:25'),
(2, 'App\\Models\\User', 3, 'auth_token', '6191401d3bfacdf828bef869eb30a527330014b69dba9c6ad1483947f719ce2a', '[\"*\"]', NULL, NULL, '2024-10-18 20:24:33', '2024-10-18 20:24:33'),
(3, 'App\\Models\\User', 1, 'auth_token', 'd6bb9557299ef323f0998fd55567a1ec1ff449074f58eb2ab4353ab4c94e9f6a', '[\"*\"]', NULL, NULL, '2024-10-18 20:32:39', '2024-10-18 20:32:39'),
(4, 'App\\Models\\User', 4, 'auth_token', '589fe4214da2661a0bff73343389e08676ca107abb52033a7d7888bb2bf96a25', '[\"*\"]', NULL, NULL, '2024-10-18 20:44:35', '2024-10-18 20:44:35'),
(5, 'App\\Models\\User', 4, 'auth_token', '2ecbe54c1c8a015a14e22a5b662ae830147e8f262788d768c48b6ada318bafa6', '[\"*\"]', NULL, NULL, '2024-10-18 20:45:19', '2024-10-18 20:45:19'),
(6, 'App\\Models\\User', 8, 'auth_token', '709f746c49c3e7e6f75476264a52c91076f4727a5099366f5e8719683d489cd5', '[\"*\"]', NULL, NULL, '2024-10-26 00:59:16', '2024-10-26 00:59:16'),
(7, 'App\\Models\\User', 9, 'auth_token', 'bf3018a2213863f8e0ea9366afc6014097fce985d94f08c6b983e12b1fd13ace', '[\"*\"]', NULL, NULL, '2024-10-26 01:19:00', '2024-10-26 01:19:00'),
(8, 'App\\Models\\Guest', 1, 'auth_token', '1dc2e1d99929b7e501715b6904dc6f7c1b9e9c35bfcf9c44e0504d378e5b4145', '[\"*\"]', NULL, NULL, '2024-10-26 01:53:00', '2024-10-26 01:53:00'),
(9, 'App\\Models\\Guest', 2, 'auth_token', 'e5e5e3be1add629ab5882358274b7ad224af350004da89b2459d6abf54187e73', '[\"*\"]', NULL, NULL, '2024-10-26 04:21:46', '2024-10-26 04:21:46'),
(10, 'App\\Models\\User', 12, 'auth_token', 'd7335ce309ab854a2affcc8acb0d0d09eac718d030e668cd1961fd26a0991256', '[\"*\"]', NULL, NULL, '2024-10-26 22:18:36', '2024-10-26 22:18:36'),
(11, 'App\\Models\\User', 13, 'auth_token', '384791df408432b11b014a322d9eeef0459d8f8b688d2ba45351d9df36ec6eab', '[\"*\"]', NULL, NULL, '2024-10-26 22:19:45', '2024-10-26 22:19:45'),
(12, 'App\\Models\\User', 13, 'auth_token', '0929f13d26aa51b47791a7f67bda1a800b2f395e24af28783a062f29574cd0a3', '[\"*\"]', NULL, NULL, '2024-10-26 22:31:58', '2024-10-26 22:31:58'),
(13, 'App\\Models\\User', 12, 'auth_token', 'a303b2aaad3777c11b75ff8f72e9ad4a1a1521bf1d19c9d8ef0caa942525e293', '[\"*\"]', NULL, NULL, '2024-10-26 22:33:00', '2024-10-26 22:33:00'),
(14, 'App\\Models\\User', 14, 'auth_token', 'd4d0d9905ba501d49fa3757c9bca823914e89f18f6c2adb33eaa89cd3bb67d6f', '[\"*\"]', NULL, NULL, '2024-10-27 01:24:35', '2024-10-27 01:24:35'),
(15, 'App\\Models\\User', 14, 'auth_token', 'c392faff24dce6033a8a6bcbd5989bf946dbb78abd48db386edb926b09116803', '[\"*\"]', '2024-10-27 01:51:40', NULL, '2024-10-27 01:25:41', '2024-10-27 01:51:40'),
(16, 'App\\Models\\User', 15, 'auth_token', '0085523b1e7d757e23dee50493f479809d815ae261d8527d7f242bd8ab3a1201', '[\"*\"]', NULL, NULL, '2024-10-27 20:03:46', '2024-10-27 20:03:46'),
(17, 'App\\Models\\User', 16, 'auth_token', 'c4c3f793ecabc16bcc48ab0220bc98f95feacabbccde4ed2e683d9a47b0eb5ae', '[\"*\"]', NULL, NULL, '2024-10-27 20:29:12', '2024-10-27 20:29:12'),
(18, 'App\\Models\\User', 17, 'auth_token', 'd2219f7d575e2ce3989f1d57bf5226bdf92c696e5b7934232a35e9d68c19bf50', '[\"*\"]', NULL, NULL, '2024-10-27 20:37:37', '2024-10-27 20:37:37'),
(19, 'App\\Models\\User', 18, 'auth_token', 'e12b19ff8fd8403118847001ab6040a61271a47c336d29cbf975c0b209c71273', '[\"*\"]', NULL, NULL, '2024-10-27 20:46:03', '2024-10-27 20:46:03'),
(20, 'App\\Models\\User', 19, 'auth_token', '61cfb6bd4f94eac859c35ca41f9b44fe825d5471802f88cbfc246fb95e16a84c', '[\"*\"]', NULL, NULL, '2024-10-27 20:53:21', '2024-10-27 20:53:21'),
(21, 'App\\Models\\User', 11, 'auth_token', 'ccfc831cd3fdfb667958e47c3e0fdddcf32edc1b847a96e5b0d55d9ed427cb0c', '[\"*\"]', '2024-10-28 02:13:06', NULL, '2024-10-27 21:48:50', '2024-10-28 02:13:06'),
(22, 'App\\Models\\User', 11, 'auth_token', '207e73a6bbcc03a66f68db20cfeba7256382ee43a5765149e51bdbcef0cb36f0', '[\"*\"]', '2024-10-28 19:27:42', NULL, '2024-10-28 19:24:19', '2024-10-28 19:27:42'),
(24, 'App\\Models\\User', 1, 'auth_token', 'd271697ed19076108dea9d6dc07bb79aa39f3d0f65c95cadb3d5922f42a1bbf5', '[\"*\"]', NULL, NULL, '2024-11-12 06:54:07', '2024-11-12 06:54:07'),
(25, 'App\\Models\\User', 1, 'auth_token', '609935eb7c0b4c44d3226b1a678fd9fdf790d002504a24185bbb4cad2620ab92', '[\"*\"]', NULL, NULL, '2024-11-12 07:08:16', '2024-11-12 07:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` bigint UNSIGNED NOT NULL,
  `judul_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `galery_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `judul_foto`, `isi_foto`, `user_id`, `galery_id`, `created_at`, `updated_at`) VALUES
(9, 'Upacara', 'photos/YUlB8K6akNf9LsAHf7odxB7hTwq1v3Zd85pqfiFa.jpg', 1, 3, NULL, NULL),
(14, 'Upacara bendera 17/08/2024', 'photos/668jXpchhHS7zYbWQhT1wXDFreYaqoTG7UXhkYey.jpg', 1, 3, NULL, NULL),
(28, 'Demo Eskul PMR', 'photos/zimuLpbaKFPOhoaqhzHm0avmVl57ldFSe87GGO0W.jpg', 1, 7, NULL, NULL),
(29, 'Pmr jaga upacara', 'photos/qMaRtCD07ZZXInX4MnzTcFoqGSmRD05NoBx1hcJL.jpg', 1, 7, NULL, NULL),
(30, 'Dokumentasi Notipu pingsan pt 3', 'photos/A68xN3ArvS1JpbmSYilbGZ7bbe2uetWvAWWd9Tl3.jpg', 1, 7, NULL, NULL),
(31, 'p5', 'photos/1CYLe4m7ZTuPT0iUoPVUKqBT16D9C3KsLmnIDGyW.jpg', 1, 4, NULL, NULL),
(32, 'pmrr', 'photos/pKk73fZTplgkCQID7OnTWZlhB2zJE8J4xFWQz4Xz.jpg', 1, 7, NULL, NULL),
(33, 'Teknik Pengelasan 1', 'photos/SreA63uI105jkExwm1OUVpAqdOWj68oooDNgh78s.jpg', 1, 21, NULL, NULL),
(34, 'Teknik Pengelasan 2', 'photos/werJ66tQ64OxFBDfM0TsX4DWDCYnNNJwis5Q4107.jpg', 1, 21, NULL, NULL),
(35, 'Teknik Pengelasan 3', 'photos/tQCXIq2bThWCfX2cAEub3AG6bXWmFQZ1aCaT5yR2.jpg', 1, 21, NULL, NULL),
(36, 'tes', 'photos/4geVeWtgOlzZtvAZK2Gk7v8ruz3ZVGwJtAQTPz6i.jpg', 1, 10, NULL, NULL),
(37, 'Dokumentasi Notipu pingsan', 'photos/hbAjmS2RFIa3TYh2bVfusDN0XjOHfeME3A61azIv.jpg', 1, 7, NULL, NULL),
(38, 'Dokumentasi Notipu pingsan pt 2', 'photos/otPKJptHIwePHAXSLaaMYZ63CTCZFXfpZanNdjJZ.jpg', 1, 7, NULL, NULL),
(41, 'bismillah', 'photos/CF7QjjBWvQPWY4H70zuajGrnhAR9P9Bs3Pg48DpY.jpg', 1, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint NOT NULL,
  `image` varchar(255) NOT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggal_posts` date NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `judul`, `isi`, `lokasi`, `category_id`, `user_id`, `status`, `tanggal_posts`, `created_at`, `updated_at`) VALUES
(1, 'posts/Fg4IKsF272AMNTJpJ2WzUL0jsRg3P9KKB6hVSYRv.jpg', 'Siswa Jurusan Teknik Pengelasan Sangat Beruntung karena bisa ke Jepang!', 'Menurut Arief Rudiana, S.Kom, wakil kepala sekolah, Hubungan Industri dan Masyarakat (HIM) bahwa SMK Negeri 4 Kota Bogor, memiliki kelulusan siswa-siswinya yang kompeten dan berdaya saing di dunia kerja.\r\nMerupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya. Terdapat 54 staff pengajar dan 22 orang staff tata usaha, dikepalai oleh Drs. Mulya Mulprihartono, M. Si, sekolah ini merupakan investasi pendidikan yang tepat untuk putra/putri anda.', NULL, 1, 1, 'aktif', '2024-10-31', '2024-11-04 14:28:42', '2024-11-10 07:05:27'),
(2, 'posts/GrUYEGBs84PW1dfSNIdFjjwXgNfAQgaznoDoVSqR.jpg', 'Ekstrakulikuler yang ada di SMKN 4 Kota Bogor', 'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 1, 1, 'aktif', '2024-10-26', '2024-10-23 03:52:08', '2024-11-10 07:20:05'),
(3, 'posts/pIMpbWSeTcJvxNtH0mpkkhMsjjpER3Yj5is5KhKy.jpg', 'Workshop 1', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 1, 'aktif', '0024-11-25', '2024-10-23 08:00:32', '2024-11-07 03:03:51'),
(5, 'posts/LE3jGG0PJybTSOjy9OA8noMbOwMF7uA7HtEJqgc9.jpg', 'Workshop 2', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 11, 'tidak aktif', '2024-05-29', '2024-10-30 01:25:19', '2024-11-12 04:12:25'),
(6, 'posts/Lp8inCJGgGN4u50xNq04pqIHjg4M3TJru7kPnfEM.jpg', 'Upacara Bendera', 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, a 1st-century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin. The first two words themselves are a truncation of dolorem ipsum (\"pain itself\").', NULL, 1, 11, 'aktif', '2024-05-29', '2024-10-31 07:37:50', '2024-11-07 03:06:03'),
(8, 'posts/rc0SfQWMTsYmBKSdHxGdOmTOQrzzTmzU09BEOzLx.jpg', 'Inilah 4 jurusan di SMKN 4 Bogor', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 1, 11, 'aktif', '2025-09-22', '2024-10-31 08:40:04', '2024-11-10 07:09:04'),
(9, 'posts/bauGINZBeANzPPp9nx3LEgYUJUVnLGYPcbUufVk2.jpg', 'Selamat hari guru', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos accusam et justo duo dolores ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', NULL, 1, 11, 'aktif', '2023-11-25', '2024-11-01 07:40:22', '2024-11-10 07:10:03'),
(10, 'posts/cfvf1CwS34fNrtyzFvEyUMBdia5iEGDyiLHKs2bt.jpg', 'Keputrian SMKN 4', 'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 1, 11, 'aktif', '2024-11-25', '2024-11-06 05:18:40', '2024-11-10 07:27:49'),
(12, 'posts/qc2Ovaa0Zja2S2aHLPcSiQ2OJ2JEPvshhzY4lzpR.jpg', 'Demo eskul 2024', 'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 1, 11, 'aktif', '2024-06-23', '2024-11-06 05:19:53', '2024-11-10 07:11:00'),
(14, 'posts/usFtpJcBpXpSVby7SxWyjNYSQ71icSKP5KMGJMFP.jpg', 'Keaktifan Ekstrakulikuller Paskibra SMKN 4 Bogor', 'Sejak satu tahun lalu SMKN 4 Kota Bogor dipimpin oleh seseorang yang membawa warna baru, tahun pertama sejak dilantik, tepatnya pada tanggal 10 Juli 2020, inovasi dan kebijakan-kebijakan baru pun mulai dirancang. Bukan tanpa kesulitan, penuh tantangan tapi beliau meyakinkan untuk selalu optimis pada harapan dengan bersinergi mewujudkan visi misi SMKN 4 Bogor ditengah kesulitan pandemi ini. Strategi baru pun dimunculkan, beberapa program sudah terealisasikan diantaranya mengembangkan aplikasi LMS (Learning Management System) sebagai solusi dalam pelaksanaan program BDR (Belajar dari Rumah), untuk mengoptimalkan hubungan kerjasama antara sekolah dengan Industri dan Dunia Kerja (IDUKA), dan juga untuk pengalaman praktek belajar jarak jauh agar tetap berjalan dengan optimal.', NULL, 1, 1, 'aktif', '2024-11-10', '2024-11-09 09:06:23', '2024-11-10 07:12:33'),
(15, 'posts/B2A8ItMkJQyd0qz0HAGZq4wCRjOilc2uKJOXtVdA.jpg', 'P5', 'Profile Pelajar Pancasila', NULL, 1, 1, 'aktif', '2022-12-12', '2024-11-10 07:18:35', '2024-11-10 07:19:19'),
(16, 'posts/9L2W6ut4zagm5OrWp7nr7FiM8uu0WyOBIYQH72Gz.jpg', 'Agenda P5 Senam', 'agenda', NULL, 2, 1, 'aktif', '2024-11-25', '2024-11-10 08:00:16', '2024-11-10 08:00:16'),
(17, 'posts/Yo7jCncG4MiDUxwQHJHgwBEbkNeVqxCtZWMdiSu8.jpg', 'tes', 'keputrian', NULL, 2, 1, 'aktif', '2023-02-12', '2024-11-10 08:02:41', '2024-11-12 04:12:56'),
(18, 'posts/Mncq0MAOSjvDS3QRXfozumqaNbzEl1D7kYH3J0KY.jpg', 'tes akak', 'tes', NULL, 1, 1, 'tidak aktif', '2023-02-12', '2024-11-10 08:36:15', '2024-11-12 04:12:08'),
(19, 'posts/IW1GChKBcCHxoZxdxisJBhmflM35rCyaeoymzq3Y.jpg', 'tes', 'hai', NULL, 1, 1, 'aktif', '2021-02-12', '2024-11-12 04:11:36', '2024-11-12 04:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `profile_sekolah`
--

CREATE TABLE `profile_sekolah` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profile_sekolah`
--

INSERT INTO `profile_sekolah` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'MISI', 'Misi : \r\n1. Mewujudkan karakter pelajar pancasila beriman dan bertaqwa kepada Tuhan Yang Maha Esa\r\n dan berakhlak mulia, berkebhinekaan global, gotong royong, mandiri, kreatif dan bernalar kritis.\r\n2. Mengembangkan pembelajaran dan pengelolaan sekolah berbasis Teknologi Informasi dan Komunikasi.\r\n3. Mengembangkan sekolah yang berwawasan Adiwiyata Mandiri.\r\n4. Mengembangkan usaha dalam berbagai bidang secara optimal sehingga memiliki kemandirian dan daya saing tinggi.', '2024-10-23 07:24:04', '2024-11-06 23:56:38'),
(2, 'VISI', 'Terwujudnya SMK Pusat Keunggulan melalui terciptanya pelajar pancasila yang berbasis teknologi, berwawasan lingkungan dan berkewirausahaan.', '2024-10-25 20:31:49', '2024-11-03 07:16:40'),
(3, 'SMKN 4 KOTA BOGOR', 'Merupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya. Terdapat 54 staff pengajar dan 22 orang staff tata usaha, dikepalai oleh Drs. Mulya Mulprihartono, M. Si, sekolah ini merupakan investasi pendidikan yang tepat untuk putra/putri anda.', '2024-10-27 00:22:45', '2024-11-03 07:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0p4CSO1x4UA7QKDd7JrEoUYwZkDYZI4NOz2EEe6I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTdlVXB3Zm9QZWtCT1lwbU5mWHl0OVFKTHplSTROQTZVMHQ0V2Q3ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1731417347);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(5, 'slider/jKcGdTrkqBVlopOf0W6GeIPTuPflgHEbavIse2d6.jpg', 'https://smkn4bogor.sch.id/', '2024-11-03 23:33:45', '2024-11-03 23:33:45'),
(11, 'slider/nVjFVJNZlpCHbZOxryZoGhohRyPregkQpKlBtSmj.jpg', 'https://smkn4bogor.sch.id/', '2024-11-09 09:08:54', '2024-11-09 09:08:54'),
(12, 'slider/MjuTex6fGiP2VIVEJvHV81ex9T98Rq9IBrEIgqT8.jpg', 'https://smkn4bogor.sch.id/', '2024-11-10 07:25:52', '2024-11-10 07:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('aktif','tidak aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin 1', 'nhanifah320@gmail.com', NULL, '$2y$12$NwoZeRurdIgk.VjrPHfAy.058joAloPZORbrnf0zGMXluadktnEBm', NULL, NULL, 'avatars/zk8vQz4giRVCTTcmCEsCgRcx8nc9MZZemzBC8fS8.jpg', 'aktif', 'suVbXtlJFFcS4zAfbu7trgktU6jqLMHKPewIBRzQcdC99zYWBnsQQGCIu3p7', NULL, '2024-10-18 17:53:52'),
(3, 'Dania', 'dania@gmail.com', NULL, '$2y$12$NoaA69Q.CANNldLLsh.CBuaRNAaD2nFOFXQ7VjYB5AIEa3muNmtmu', NULL, NULL, NULL, 'aktif', NULL, '2024-10-18 20:24:33', '2024-10-18 20:24:33'),
(4, 'Danisa', 'Danisa@example.com', NULL, '$2y$12$PTkrq2XMrtcpfXYQv6S.huNyJr0c/pJ7Y/UQH1TO1SpgJXH6S2Ika', NULL, NULL, 'avatars/0VAtHJSyaWmXfGeRF98wEly4iyEYYKdRBeG3nQG0.jpg', 'tidak aktif', NULL, '2024-10-18 20:44:35', '2024-11-06 05:45:23');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `galery_id` (`galery_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `profile_sekolah`
--
ALTER TABLE `profile_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `profile_sekolah`
--
ALTER TABLE `profile_sekolah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `galeries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
