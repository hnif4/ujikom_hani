-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2024 at 09:33 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_hanifah_301024`
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
('0cbf019d661686b4a1db3c54fb0b0595', 'i:1;', 1730173138),
('0cbf019d661686b4a1db3c54fb0b0595:timer', 'i:1730173138;', 1730173138),
('1e3056aca9d4c0643b5ba0524119bbd5', 'i:2;', 1730101492),
('1e3056aca9d4c0643b5ba0524119bbd5:timer', 'i:1730101492;', 1730101492),
('a41bbef27d099abce58c396846e98103', 'i:1;', 1730101992),
('a41bbef27d099abce58c396846e98103:timer', 'i:1730101992;', 1730101992),
('b6c2cb22a246d8b89c1c12419f40e4ff', 'i:1;', 1730272879),
('b6c2cb22a246d8b89c1c12419f40e4ff:timer', 'i:1730272879;', 1730272879);

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
(11, 'tes tampilannya', 'lebih', NULL, NULL);

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
(3, 1, 'yes', 'alhamdulillah', '2024-10-04 00:54:48', '2024-10-23 06:06:30'),
(4, 1, 'aku bisa', 'bisa apa? bisa kaya', '2024-10-05 21:38:10', '2024-10-23 06:06:51'),
(7, 3, 'halo', 'bisa ges keyboardnya', '2024-10-18 18:25:23', '2024-10-25 19:56:56'),
(9, 2, 'test kak', 'tes lagi', '2024-10-23 06:05:28', '2024-10-27 19:47:14'),
(10, 2, 'tes', 'tes aja', '2024-10-26 23:34:00', '2024-10-27 19:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(27, '2024_10_28_032133_add_role_to_users_table', 12);

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
(22, 'App\\Models\\User', 11, 'auth_token', '207e73a6bbcc03a66f68db20cfeba7256382ee43a5765149e51bdbcef0cb36f0', '[\"*\"]', '2024-10-28 19:27:42', NULL, '2024-10-28 19:24:19', '2024-10-28 19:27:42');

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
(9, 'alhamdulillah', 'photos/88x7aARhh90ilKnoQcNfXQiHlIyafWqt4UTiIW4p.jpg', 1, 4, NULL, NULL),
(14, 'bismillah', 'photos/oo3awksdXY5XovVCoit255gb06JR7p6ocgGAK0at.jpg', 1, 4, NULL, NULL),
(15, 'Test', 'photos/Pyi33INkomPFe5TuLIKnTm3lLUq2UaYIbCBCphcd.jpg', 1, 7, NULL, NULL),
(16, 'kalo kalo', 'photos/07oKpcJNptunsvcVmhCfNicVEtbAcG2I3ZEMMYAw.jpg', 1, 3, NULL, NULL),
(18, 'tes', 'photos/7V5gz430aIE3vurWCugCj7PJYTgZmgfOMIiGE3Mu.jpg', 11, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint NOT NULL,
  `image` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
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

INSERT INTO `posts` (`id`, `image`, `judul`, `isi`, `category_id`, `user_id`, `status`, `tanggal_posts`, `created_at`, `updated_at`) VALUES
(1, 'posts/9sOhOQ0ClVhGbSqYoQgJgRCmWgJBl21QHSQ1qxDS.jpg', 'bismillah', 'tes bisa', 1, 1, 'aktif', '1111-11-10', '2024-10-23 03:38:29', '2024-10-30 00:23:12'),
(2, 'posts/3MUPxu0Yelu9Iv2zpweVRZLDpRqr3paJLX0Ao3QV.jpg', 'SMKN 4 HEBAT', 'SMKN 4 Hebat', 1, 1, 'aktif', '2024-10-26', '2024-10-23 03:52:08', '2024-10-30 00:23:20'),
(3, 'posts/URrQv9rNNa00DcV8N2I4vZ21OPn8rNnKgDqRJ7ZF.jpg', 'aloka', 'hai hai', 2, 1, 'aktif', '2333-02-11', '2024-10-23 08:00:32', '2024-10-30 00:44:36'),
(4, 'posts/glYp1WsvTWeJ7UHdXADcTrSU1u9zfv7YBZpQresA.jpg', 'SMKN 4 Bisa', 'Jaya jaya jaya', 3, 1, 'aktif', '2024-10-27', '2024-10-26 23:53:53', '2024-10-30 00:23:57'),
(5, 'posts/GP8SK1Kum4K3ST0BQ451FZWavX7msh6zEX0IQF4F.png', 'smk', 'smknnnn', 1, 11, 'tidak aktif', '2024-10-30', '2024-10-30 01:25:19', '2024-10-30 01:25:19');

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
(1, 'VISI DAN MISI SEKOLAH', 'VISI MISI PERMISI', '2024-10-23 07:24:04', '2024-10-23 07:34:23'),
(2, 'tes', 'tes', '2024-10-25 20:31:49', '2024-10-25 20:31:49'),
(3, 'Judul Profil', 'Isi Profil', '2024-10-27 00:22:45', '2024-10-27 00:22:45');

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
('JQxBq4DRXbWJbFbIuMYmVqUHxAPAk4bRbG5xSqOn', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTBtbnVWUmJiTTZUUHNoRXlhbnZDMFpTSEMzREdxUUplWDV0VlZDNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7fQ==', 1730280625);

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
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Siti Nur Hanifah', 'nhanifah320@gmail.com', NULL, '$2y$12$NwoZeRurdIgk.VjrPHfAy.058joAloPZORbrnf0zGMXluadktnEBm', NULL, NULL, 'avatars/I0CXpAIF7gnrVfekjwHFAqsY7NpxMTI1FbFa4u41.jpg', 'HJA2amJxpZvVk4BAbb0P0H8wkDbU7yZ4PKs0gcsecOIoerrjL5H0VsQ1sqil', NULL, '2024-10-18 17:53:52'),
(2, 'hani', 'hani@example.com', NULL, '$2y$12$TEBtM5o9voMq0Lnb7IAhceTIlrVBMwaNyPLFj/bbV1ffS/zumpzFm', NULL, NULL, NULL, NULL, '2024-10-18 20:22:25', '2024-10-18 20:22:25'),
(3, 'Dania', 'dania@gmail.com', NULL, '$2y$12$NoaA69Q.CANNldLLsh.CBuaRNAaD2nFOFXQ7VjYB5AIEa3muNmtmu', NULL, NULL, NULL, NULL, '2024-10-18 20:24:33', '2024-10-18 20:24:33'),
(4, 'Danisa', 'Danisa@example.com', NULL, '$2y$12$PTkrq2XMrtcpfXYQv6S.huNyJr0c/pJ7Y/UQH1TO1SpgJXH6S2Ika', NULL, NULL, 'avatars/0VAtHJSyaWmXfGeRF98wEly4iyEYYKdRBeG3nQG0.jpg', NULL, '2024-10-18 20:44:35', '2024-10-28 19:58:01'),
(5, 'Siti Nur Hanifah', 'adminnur@gmail.com', NULL, '$2y$12$uYAa97wSAB/MwpVxaYrg3.bs8NVcH6mt9q.MZDczdoW8Ueivy5pV2', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'John Doe', 'john@example.com', NULL, '$2y$12$RwXKnf1QdNl2NmdztFPOc.gA5EvJg0vcu2XMPqK9JUxh88XVRc.nO', NULL, NULL, NULL, NULL, '2024-10-26 00:59:15', '2024-10-26 00:59:15'),
(9, 'Hani', 'hanhan@example.com', NULL, '$2y$12$AGjJOXfojBqXDWEdAJwzyeiKhmD9Ih6WGRF2O5A0at8d7zmXK4iE6', NULL, NULL, NULL, NULL, '2024-10-26 01:19:00', '2024-10-26 01:19:00'),
(10, 'Regular User', 'user@example.com', '2024-10-26 06:08:34', '$2y$12$yhPGi8QreKa.7lJRffgclutmgt4nf/9FckybdB3DQCIAQFfJz.7w2', NULL, NULL, NULL, NULL, '2024-10-26 06:08:34', '2024-10-26 06:08:34'),
(11, 'Siti Nur Hanifah', 'hanifahhanif835@gmail.com', '2024-10-26 06:08:35', '$2y$12$V4A2f4YMEmNnYVZFbfnGnuLPykfhIfXNs8Xmz72qhspZ07t2MybNW', NULL, NULL, 'avatars/xl2FLdjX8g5EsqboPykY465e9Sxf7uWix99WGyLH.jpg', NULL, '2024-10-26 06:08:35', '2024-10-28 00:46:49'),
(18, 'kaka', 'kaka@gmail.com', NULL, '$2y$12$NXXsmz1N4QWzgrPOWIivLucor5t1r6w6.Ojl5P6qVN7Pocn/L8eFW', NULL, NULL, NULL, NULL, '2024-10-27 20:46:03', '2024-10-27 20:46:03'),
(19, 'tes', 'tes@gmail.com', NULL, '$2y$12$3NibyS7N7jauXNDMh8x41e32asH/aZtsb5wvHgk5DSSuFQFC3R7VG', NULL, NULL, NULL, NULL, '2024-10-27 20:53:21', '2024-10-27 20:53:21');

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
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile_sekolah`
--
ALTER TABLE `profile_sekolah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
