-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2025 at 12:10 PM
-- Server version: 8.0.43-0ubuntu0.24.04.2
-- PHP Version: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_laravel_undangan_ungu`
--

-- --------------------------------------------------------

--
-- Table structure for table `acaras`
--

CREATE TABLE `acaras` (
  `id` bigint UNSIGNED NOT NULL,
  `slug_list_id` bigint UNSIGNED NOT NULL,
  `nama_acara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_acara` date NOT NULL,
  `pukul_acara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_acara` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acaras`
--

INSERT INTO `acaras` (`id`, `slug_list_id`, `nama_acara`, `tanggal_acara`, `pukul_acara`, `alamat_acara`, `link_acara`, `created_at`, `updated_at`) VALUES
(7, 5, 'Akad', '2025-10-11', 'a111', '111213123awdadaw', 'awdawdawdaw', '2025-10-04 10:04:53', '2025-10-04 10:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countings`
--

CREATE TABLE `countings` (
  `id` bigint UNSIGNED NOT NULL,
  `slug_list_id` bigint UNSIGNED NOT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_arab` text COLLATE utf8mb4_unicode_ci,
  `deskripsi_surat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countings`
--

INSERT INTO `countings` (`id`, `slug_list_id`, `nama_surat`, `surat_arab`, `deskripsi_surat`, `created_at`, `updated_at`) VALUES
(1, 5, '(Q.S. Ar-Rum: 21)', 'وَمِنْ اٰيٰتِهٖٓ اَنْ خَلَقَ لَكُمْ مِّنْ اَنْفُسِكُمْ اَزْوَاجًا لِّتَسْكُنُوْٓا اِلَيْهَا وَجَعَلَ بَيْنَكُمْ مَّوَدَّةً وَّرَحْمَةًۗ اِنَّ فِيْ ذٰلِكَ لَاٰيٰتٍ لِّقَوْمٍ يَّتَفَكَّرُوْنَ', '“Dan di antara tanda-tanda (kebesaran)-Nya ialah Dia menciptakan pasangan-pasangan untukmu dari jenismu sendiri, agar kamu cenderung dan merasa tenteram kepadanya, dan Dia menjadikan di antaramu rasa kasih dan sayang. Sungguh, pada yang demikian itu benar-benar terdapat tanda-tanda (kebesaran Allah) bagi kaum yang berpikir. “', '2025-10-03 08:30:21', '2025-10-04 09:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint UNSIGNED NOT NULL,
  `slug_list_id` bigint UNSIGNED NOT NULL,
  `carousel_atas` json DEFAULT NULL,
  `carousel_bawah` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `slug_list_id`, `carousel_atas`, `carousel_bawah`, `created_at`, `updated_at`) VALUES
(1, 5, '\"[\\\"galeri\\\\/atas\\\\/dtqkoX3QBjn93tAgCXzu9TIC3MPjhCYhpVMdEFmA.jpg\\\",\\\"galeri\\\\/atas\\\\/p2lfHqnz01E3fxYBIA1J8yNzsI8U43Q8jfd4M5HY.jpg\\\",\\\"galeri\\\\/atas\\\\/nXFHmBmUPExLtdIsd2cAI9CM2pzJofpPTQBP0fI5.jpg\\\",\\\"galeri\\\\/atas\\\\/xMvNjUzYqKvIptXFPdd3tA4ZhJoEc0xpHgFHYKlO.jpg\\\",\\\"galeri\\\\/atas\\\\/hWKlIpJLCKcUPGw8xgx8X8nypWR4QVaQ8Y2y2iAf.jpg\\\"]\"', '\"[\\\"galeri\\\\/bawah\\\\/RKkBdscrGOfNf5pwG8yiGxV66vJlVQL5koDCEnzl.jpg\\\",\\\"galeri\\\\/bawah\\\\/i9bIlOVmiDZeOhCp1XH91Sd8mp4KMNtn2SMgmgL0.jpg\\\",\\\"galeri\\\\/bawah\\\\/cPRD0DKrle7gNMdlojpfTMzndgFyZS1lBR0V5mDE.jpg\\\",\\\"galeri\\\\/bawah\\\\/dc7slEVlx8Ev3qd5CV6yNTtt19WftOMsTQVfKvQR.jpg\\\",\\\"galeri\\\\/bawah\\\\/BSfy3f72cJMm199TzjlYvC0OIpNtReB6R0m2dpki.jpg\\\"]\"', '2025-10-03 10:25:19', '2025-10-03 10:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `hero_invitations`
--

CREATE TABLE `hero_invitations` (
  `id` bigint UNSIGNED NOT NULL,
  `slug_id` bigint UNSIGNED NOT NULL,
  `nama_panggilan_pria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap_pria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orangtua_pria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_panggilan_wanita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap_wanita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orangtua_wanita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_invitations`
--

INSERT INTO `hero_invitations` (`id`, `slug_id`, `nama_panggilan_pria`, `nama_lengkap_pria`, `foto_pria`, `orangtua_pria`, `nama_panggilan_wanita`, `nama_lengkap_wanita`, `foto_wanita`, `orangtua_wanita`, `created_at`, `updated_at`) VALUES
(2, 5, 'Nandi', 'Nandiwardhana', 'hero/ioVbX1hf0p0YfZTbevZAo2qalRzcQfyVlaTF3R8u.jpg', 'Putra Bapak Nico & Ibu Ketut', 'Mia', 'Mia Lutfiana', 'hero/sFR1UXkWy1oUgBFMYEU5m2cS7reQNHF88H0XwgnP.jpg', 'Putri Bapak Pairan & Ibu Sukemi', '2025-10-03 09:48:47', '2025-10-04 08:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_gifts`
--

CREATE TABLE `love_gifts` (
  `id` bigint UNSIGNED NOT NULL,
  `slug_list_id` bigint UNSIGNED NOT NULL,
  `banks` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `love_gifts`
--

INSERT INTO `love_gifts` (`id`, `slug_list_id`, `banks`, `created_at`, `updated_at`) VALUES
(1, 5, '[{\"nama_bank\": \"awdawdawd\", \"no_rekening\": \"awdawdawd\", \"pemilik_bank\": \"awdawdaw\"}]', '2025-10-03 20:47:05', '2025-10-03 20:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_01_164517_create_slug_lists_table', 1),
(5, '2025_10_02_084313_create_hero_invitations_table', 1),
(6, '2025_10_03_062217_create_acaras_table', 2),
(7, '2025_10_03_151605_create_countings_table', 3),
(9, '2025_10_03_164937_create_galeri_table', 4),
(10, '2025_10_03_173230_create_love_gift_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DrUKQvY2GFBD7QhQBHlv0oL1jYQ1aQ6IctRddMVo', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnJoNFJIUFNNRURRbUducFFvZEVNdVUyNU1US0JhWncyUjhqOUlqUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zbHVnLWxpc3QvNS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1759597493),
('ph5TXOEZnQrxD8sRZGPnaLcyj6vm6fPir6AlR79h', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWxLMUFUcENoRnJSREt6d1ByWHBzNHpTblJRRlBKSE16WExSRW9vWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759641918),
('tpgdBKdB7bvULoGaYgbWvUU70zrzY1EyCsGoQyaN', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlNETUxVTTNuVDRialh3OHJSOXRkdTB1TG9JQUZrdjNsMmlzNDQyWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zbHVnLWxpc3QvNS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1759664230);

-- --------------------------------------------------------

--
-- Table structure for table `slug_lists`
--

CREATE TABLE `slug_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hosting_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slug_lists`
--

INSERT INTO `slug_lists` (`id`, `nama`, `slug`, `keterangan`, `created_at`, `updated_at`, `hosting_at`) VALUES
(5, 'nandiMia', 'nandimia', NULL, '2025-10-03 08:20:56', '2025-10-03 08:20:56', NULL),
(6, 'MiaNandi', 'mianandi', NULL, '2025-10-04 01:08:48', '2025-10-04 01:08:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acaras`
--
ALTER TABLE `acaras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acaras_slug_list_id_foreign` (`slug_list_id`);

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
-- Indexes for table `countings`
--
ALTER TABLE `countings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countings_slug_list_id_foreign` (`slug_list_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeris_slug_list_id_foreign` (`slug_list_id`);

--
-- Indexes for table `hero_invitations`
--
ALTER TABLE `hero_invitations`
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
-- Indexes for table `love_gifts`
--
ALTER TABLE `love_gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `love_gifts_slug_list_id_foreign` (`slug_list_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slug_lists`
--
ALTER TABLE `slug_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_lists_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `acaras`
--
ALTER TABLE `acaras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countings`
--
ALTER TABLE `countings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hero_invitations`
--
ALTER TABLE `hero_invitations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_gifts`
--
ALTER TABLE `love_gifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slug_lists`
--
ALTER TABLE `slug_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acaras`
--
ALTER TABLE `acaras`
  ADD CONSTRAINT `acaras_slug_list_id_foreign` FOREIGN KEY (`slug_list_id`) REFERENCES `slug_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `countings`
--
ALTER TABLE `countings`
  ADD CONSTRAINT `countings_slug_list_id_foreign` FOREIGN KEY (`slug_list_id`) REFERENCES `slug_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galeris`
--
ALTER TABLE `galeris`
  ADD CONSTRAINT `galeris_slug_list_id_foreign` FOREIGN KEY (`slug_list_id`) REFERENCES `slug_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `love_gifts`
--
ALTER TABLE `love_gifts`
  ADD CONSTRAINT `love_gifts_slug_list_id_foreign` FOREIGN KEY (`slug_list_id`) REFERENCES `slug_lists` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
