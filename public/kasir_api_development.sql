-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Des 2020 pada 04.48
-- Versi server: 8.0.19
-- Versi PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_api_development`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `active_storage_attachments`
--

CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `active_storage_blobs`
--

CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2020-10-12 06:43:20', '2020-10-12 06:43:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FD', 'Food', '1', '2020-11-01 17:00:00', '2020-11-01 17:00:00'),
(2, 'BV', 'Beverages', '1', '2020-11-01 17:00:00', '2020-11-01 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `id_category` int NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` int NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `id_category`, `code`, `name`, `stock`, `price`, `status`, `description`, `created_at`, `updated_at`, `gambar`) VALUES
(15, 2, 'pkt1', 'paket 1', 100, 20000, 'active', 'paket 1 ayam bakar plus nasi dengan sambal teri', '2020-10-26 08:43:58', '2020-10-26 08:43:58', 'image/upload/v1603727040/kbgps4sygmqpbx1jmjsy.jpg'),
(16, 4, 'pkt2', 'paket 2 hot lava', 1000, 25000, 'active', 'paket 2 ayam bakar dengan sambel teri dan sambel plecing', '2020-10-26 09:11:45', '2020-10-26 09:11:45', 'image/upload/v1603728708/afeqqwlt5ujpcygtncv4.jpg'),
(17, 3, 'tst1', 'test 01', 30, 15000, 'not_active', 'test 01', '2020-11-02 05:41:56', '2020-11-02 05:41:56', 'image/upload/v1604320922/tpnpya86hs21lonauq9k.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20201012062205'),
('20201012064057'),
('20201024014723'),
('20201026151711');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password_digest`, `created_at`, `updated_at`) VALUES
(1, 'ryan', 'ryan saputro', 'ryansaputro52@gmail.com', '$2a$12$sRJ058moId2aGkfPNaQVr.n5oa6hYs8U5oe4xNFMoc4oljbZD6m2a', '2020-10-12 06:49:39', '2020-10-12 06:49:39'),
(2, 'sisca', 'siscaningtyas', 'siscaningtyas@gmail.com', '$2a$12$gzPwPqLXSujtrKJKYXwILOn9..U3170H0Os3mIUeIS2h5lhzcGHdm', '2020-10-12 07:39:31', '2020-10-12 07:39:31'),
(3, 'abidah', 'abidah', 'abidah@gmail.com', '$2a$12$uvWxwfWuMM/tvjMk.iDTj.PsBehzXJQRTIMGFbDjOYz33UQDvLY9.', '2020-10-17 15:59:28', '2020-10-17 15:59:28'),
(4, 'abidah1', 'abidah1', 'abidah1@gmail.com', '$2a$12$WeeGuot.4Y4SXST5u0ZaQuzBzPXHGsSyEb4hwJ65Yt8S4re/Zt8Mq', '2020-10-23 15:19:12', '2020-10-23 15:19:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  ADD KEY `index_active_storage_attachments_on_blob_id` (`blob_id`);

--
-- Indeks untuk tabel `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_blobs_on_key` (`key`);

--
-- Indeks untuk tabel `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
