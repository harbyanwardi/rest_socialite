-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2021 pada 04.25
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest-bridge`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_06_13_055256_add_google_id_column', 2),
(10, '2021_06_13_064433_password_user_nullable', 3),
(11, '2021_06_13_085057_add_facebook_id_column', 4),
(12, '2021_06_13_091619_change_unique_email_user', 5),
(13, '2021_06_14_021452_add_status_position_table_user', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f67b2055829e4a7d05ac183b1fbaa68c87c8054bb9142fb06015ffa8e05202d8fccfce974053049', 2, 1, 'nApp', '[]', 0, '2021-06-13 01:49:47', '2021-06-13 01:49:47', '2022-06-13 08:49:47'),
('4650c1cba45aa4869c0ee42f4be5e079b237f340f9ac69b7cea1e16281cda87109690e529a1b5518', 1, 1, 'nApp', '[]', 0, '2021-06-12 20:53:04', '2021-06-12 20:53:04', '2022-06-13 03:53:04'),
('628036621e30b29105819c3c5644709952097a68be8aa86942018dd584d142d1044b1a7dc1ee20ae', 7, 1, 'nApp', '[]', 0, '2021-06-13 02:41:29', '2021-06-13 02:41:29', '2022-06-13 09:41:29'),
('6f520b379eccef5dd06356506e8111723bfdc0c3676a12c1d0f6d2c64f9736c9e43483aad0f69f35', 2, 1, 'nApp', '[]', 0, '2021-06-12 23:42:30', '2021-06-12 23:42:30', '2022-06-13 06:42:30'),
('6f63d36ecd3222032665fbdf6c53e2450646dc19750af15de03e090a048181db39d3667c094bca60', 7, 1, 'nApp', '[]', 0, '2021-06-13 02:17:05', '2021-06-13 02:17:05', '2022-06-13 09:17:05'),
('990412383cb18e5b4debb44c32b3d7f60a5a0b33a76f182e7319e0ee3c33630deb1a8f8e3fd81715', 1, 1, 'nApp', '[]', 0, '2021-06-12 10:58:55', '2021-06-12 10:58:55', '2022-06-12 17:58:55'),
('a3a9c97a6c32089d560122ec661b3d4ced5466335af83253f3e3654c3d4afdbf4de068be0f3806fe', 5, 1, 'nApp', '[]', 0, '2021-06-13 01:50:09', '2021-06-13 01:50:09', '2022-06-13 08:50:09'),
('a8b6007bbaf06bd4dff15f38fcd7aadccdc754bde276240fddc79d45380b229869a17ac567847fb6', 1, 1, 'nApp', '[]', 0, '2021-06-13 19:23:20', '2021-06-13 19:23:20', '2022-06-14 02:23:20'),
('cf75c2be45f5460d7d0a17db5073754d8f6389062e88ab62fe2a7df42095ab78bf2d7dfdb65bdd3d', 1, 1, 'nApp', '[]', 0, '2021-06-12 11:00:42', '2021-06-12 11:00:42', '2022-06-12 18:00:42'),
('d9f7b77d926432c5fcfc44b0ca3573185497ecd903e1b5bae808763dd036c2af21ee6195aeabc959', 2, 1, 'nApp', '[]', 0, '2021-06-12 23:35:28', '2021-06-12 23:35:28', '2022-06-13 06:35:28'),
('dd8f803bae13ab6629ec833fad955290cf43ed8a65c12f91f4b90112e7e56a4b86c570ac7a73398c', 3, 1, 'nApp', '[]', 0, '2021-06-12 23:46:39', '2021-06-12 23:46:39', '2022-06-13 06:46:39'),
('eb95e2b61ba75aab9b897ddf6678d331da8dd78585a3d81109c5adf2e580be44918c090769399c84', 4, 1, 'nApp', '[]', 0, '2021-06-12 23:48:30', '2021-06-12 23:48:30', '2022-06-13 06:48:30'),
('f01bd20686100d9cc6da20e92c50059fe28b07adcdd1636f7ee275a6c36758ffb8333c0f3c28712f', 3, 1, 'nApp', '[]', 0, '2021-06-13 02:41:07', '2021-06-13 02:41:07', '2022-06-13 09:41:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vqvTFnxJq8B2wn2J8ygLdJTZZmgPMitxwS1Btq8v', NULL, 'http://localhost', 1, 0, 0, '2021-06-12 10:41:00', '2021-06-12 10:41:00'),
(2, NULL, 'Laravel Password Grant Client', 'Gv3W5ulnp9HE19OBIkYL8toKJGacZQIKbcHLQg6P', 'users', 'http://localhost', 0, 1, 0, '2021-06-12 10:41:00', '2021-06-12 10:41:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-12 10:41:00', '2021-06-12 10:41:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `facebook_id`, `status`, `position`) VALUES
(1, 'harby', 'jaja@gmail.com', NULL, '$2y$10$.UWDth8Rg2S.WpDZsSdStelvWpRIint99p2sjlbzK80jOnzMHq/Gm', NULL, '2021-06-12 10:58:55', '2021-06-12 10:58:55', NULL, NULL, 'inactive', NULL),
(2, 'joki ngoding', 'jokingoding@gmail.com', NULL, '$2y$10$pXNFmjWAh64.2JoxziqdOuJUzgLIxmTTNHr4dYtcWYI7Fa2XPd6pq', NULL, '2021-06-12 23:35:27', '2021-06-12 23:35:27', '109028330454631534657', NULL, 'active', NULL),
(3, 'Harby Anwardi', 'harby.banana@gmail.com', NULL, NULL, NULL, '2021-06-12 23:46:39', '2021-06-12 23:46:39', '111128048662922311927', NULL, 'active', NULL),
(4, 'Harby Anwardi', 'anwardiharby@gmail.com', NULL, NULL, NULL, '2021-06-12 23:48:30', '2021-06-12 23:48:30', '100505606344362901405', NULL, 'active', NULL),
(5, 'getuk kelapa', 'getukkelapa@gmail.com', NULL, NULL, NULL, '2021-06-13 01:50:08', '2021-06-13 01:50:08', '103541940426668991121', NULL, 'active', NULL),
(7, 'Harby', 'harby.banana@gmail.com', NULL, NULL, NULL, '2021-06-13 02:17:05', '2021-06-13 02:17:05', NULL, '4679671322046057', 'active', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
