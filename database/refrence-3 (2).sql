-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2021 pada 05.47
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refrence-3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `document`
--

CREATE TABLE `document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `id_forum` int(122) DEFAULT NULL,
  `judul_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `deskripsi_dokumen` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(122) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_dokumen` int(20) DEFAULT NULL,
  `jumlah_like` int(122) DEFAULT NULL,
  `jumlah_view` int(122) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` int(12) DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `document`
--

INSERT INTO `document` (`id`, `id_kategori`, `id_forum`, `judul_dokumen`, `jumlah_halaman`, `deskripsi_dokumen`, `publisher`, `tahun`, `file`, `cover`, `tipe_dokumen`, `jumlah_like`, `jumlah_view`, `created_at`, `updated_at`, `created_by`, `modified_by`, `modified_at`) VALUES
(31, 5, NULL, 'upload gambar', 12, '@include(\'sweetalert::alert\')', 'lia', '2019', 'document/20210206090155/index.html', 'document/20210125084904.png', NULL, 3, 3, '2021-01-25 01:49:04', '2021-02-06 02:03:07', NULL, NULL, '2021-01-25 08:49:04'),
(32, 13, NULL, 'belajar laravel', 12, 'success', 'robby', '2020', 'document/20210125085015/index/', 'document/20210125085015.png', NULL, 1, NULL, '2021-01-25 01:50:15', '2021-02-05 12:19:35', NULL, NULL, '2021-01-25 08:50:15'),
(33, 9, NULL, 'Undang undang', 222, '_3687ca64d18a39fe61d2da08cd250280ec844f538b:https://elearning.pln-pusdiklat.co.id/sso/saml2/idp/SSOService.php?spentityid=https%3A%2F%2Felearning.pln-pusdiklat.co.id&amp;RelayState=http%3A%2F%2Flocalho', 'siapa', '2929', 'document/20210125104918/index.html', 'document/20210125104926.png', NULL, 3, 3, '2021-01-25 03:49:26', '2021-02-06 07:22:19', NULL, NULL, '2021-01-25 10:49:26'),
(34, 9, NULL, 'wahyu', 21, 'lorem ipsu', 'wahyu', '2020', 'document/20210127223341/index.html', 'document/20210127223926.png', NULL, 1, NULL, '2021-01-27 15:33:50', '2021-02-06 01:53:21', NULL, NULL, '2021-01-27 22:33:50'),
(35, 16, NULL, 'novian', 12, 'lorem ipsu digtu aja', 'novian', '2020', 'document/20210127224251.pdf', NULL, NULL, 4, 3, '2021-01-27 15:42:51', '2021-02-06 11:14:57', NULL, NULL, '2021-01-27 22:42:51'),
(36, 18, NULL, 'hukum online', 1212, 'Illuminate\\Contracts\\Filesystem\\FileNotFoundException\r\nFile not found at path: home/k3508610/referenceLearning/public/uploads/1078158958kategori2021-01-29 03_37_20.xlsx', 'fatih', '2020', 'document/hukum online/index.html', NULL, NULL, 3, 3, '2021-01-28 21:12:19', '2021-02-07 10:15:52', NULL, NULL, '2021-01-29 04:12:19'),
(37, 17, NULL, 'hukum undang undang', 12, 'hukum adalah hukum', 'wahyu', '2020', 'document/hukum undang undang/index.html', NULL, NULL, 4, 8, '2021-01-28 21:14:38', '2021-02-07 21:40:48', NULL, NULL, '2021-01-29 04:14:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id` int(21) NOT NULL,
  `message` varchar(6500) NOT NULL,
  `user_id` int(21) NOT NULL,
  `dokumen_id` int(122) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `forum`
--

INSERT INTO `forum` (`id`, `message`, `user_id`, `dokumen_id`, `created_at`, `update_at`) VALUES
(69, 'mesage', 5, NULL, '2021-01-20 14:48:00', NULL),
(75, 'assalamualaikum pak', 3, NULL, '2021-01-24 16:24:59', NULL),
(77, 'apa kabar lia', 5, NULL, '2021-01-29 06:32:36', NULL),
(78, 'saya rommi', 1699, NULL, '2021-02-06 17:10:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `jumlah_dokumen` int(20) DEFAULT NULL,
  `jumlah_like` int(20) DEFAULT NULL,
  `jumlah_view` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(12) DEFAULT NULL,
  `modified_by` bigint(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `jumlah_dokumen`, `jumlah_like`, `jumlah_view`, `created_at`, `modified_at`, `created_by`, `modified_by`, `updated_at`) VALUES
(4, 'Supply Chain Management', 12, 14, 12, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-20 08:07:18'),
(5, 'Peralatan Ketenagalistrikan', 12, 35, 12, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-02-06 01:57:09'),
(6, 'Pembelejaran', 45, 60, 33, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-25 04:43:21'),
(7, 'Penelitian dan Pengembangan', 66, 76, 80, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-25 01:18:03'),
(8, 'distribusi', 11, 67, 55, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-11 12:29:25'),
(9, 'K2, K3, Keamanan dan lingkungan', 33, 38, 32, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-02-06 07:22:19'),
(10, 'dokument baru', NULL, NULL, NULL, '2021-01-14 09:57:21', '2021-01-14 16:57:21', NULL, NULL, '2021-01-15 01:09:42'),
(13, 'Pembangkit', NULL, 1, NULL, '2021-01-14 23:12:13', '2021-01-15 06:12:13', NULL, NULL, '2021-02-05 12:19:35'),
(14, 'kategori', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(15, 'pembangkit listrik', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(16, 'K2, K3, Keamanan dan lingkungan', NULL, 4, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-06 11:14:57'),
(17, 'distribusi', NULL, 4, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-07 21:40:30'),
(18, 'Penelitian dan Pengembangan', NULL, 3, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-07 10:15:52'),
(19, 'Pembelejaran', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(20, 'Peralatan Ketenagalistrikan', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(997, 'PEMBELAJARAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(998, 'MANAJEMEN PERUSAHAAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(999, 'KOMUNIKASI, CSR DAN PENGELOLAAN KANTOR', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1000, 'KEUANGAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1001, 'SDM', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1002, 'TEKNOLOGI INFORMASI', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1003, 'REGULATORY AND COMPLIANCE', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1004, 'SUPPLY CHAIN MANAGEMENT', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1005, 'SERTIFIKASI', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1006, 'PEMBANGKITAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1007, 'PENELITIAN DAN PENGEMBANGAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1008, 'MANAJEMEN PROYEK, ENJINIRING DAN KONSTRUKSI', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1009, 'K2, K3, KEAMANAN DAN LINGKUNGAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1010, 'PRODUKSI PERALATAN KETENAGALISTRIKAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1011, 'NIAGA DAN MANAJEMEN PELANGGAN', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1012, 'DISTRIBUSI', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1013, 'TRANSMISI', NULL, NULL, NULL, '2021-02-02 06:23:44', '2021-02-02 13:23:44', NULL, NULL, '2021-02-02 06:23:44'),
(1014, 'PEMBELAJARAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1015, 'MANAJEMEN PERUSAHAAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1016, 'KOMUNIKASI, CSR DAN PENGELOLAAN KANTOR', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1017, 'KEUANGAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1018, 'SDM', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1019, 'TEKNOLOGI INFORMASI', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1020, 'REGULATORY AND COMPLIANCE', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1021, 'SUPPLY CHAIN MANAGEMENT', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1022, 'SERTIFIKASI', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1023, 'PEMBANGKITAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1024, 'PENELITIAN DAN PENGEMBANGAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1025, 'MANAJEMEN PROYEK, ENJINIRING DAN KONSTRUKSI', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1026, 'K2, K3, KEAMANAN DAN LINGKUNGAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1027, 'PRODUKSI PERALATAN KETENAGALISTRIKAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1028, 'NIAGA DAN MANAJEMEN PELANGGAN', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1029, 'DISTRIBUSI', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1030, 'TRANSMISI', NULL, NULL, NULL, '2021-02-02 06:24:45', '2021-02-02 13:24:45', NULL, NULL, '2021-02-02 06:24:45'),
(1032, 'kategori', NULL, NULL, NULL, '2021-02-07 21:41:36', '2021-02-08 04:41:36', NULL, NULL, '2021-02-07 21:41:36'),
(1033, 'kategori', NULL, NULL, NULL, '2021-02-07 21:42:18', '2021-02-08 04:42:18', NULL, NULL, '2021-02-07 21:42:18'),
(1034, 'Supply Chain Management', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1035, 'K2, K3, Keamanan dan lingkungan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1036, 'distribusi', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1037, 'Penelitian dan Pengembangan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1038, 'Pembelejaran', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1039, 'Peralatan Ketenagalistrikan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1040, 'dokument baru', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1041, 'Pembangkit', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1042, 'Peralatan Ketenagalistrikan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1043, 'Pembelejaran', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1044, 'Penelitian dan Pengembangan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1045, 'distribusi', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1046, 'K2, K3, Keamanan dan lingkungan', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1047, 'pembangkit listrik', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1048, 'kategori', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1049, 'PENELITIAN DAN PENGEMBANGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1050, 'MANAJEMEN PROYEK, ENJINIRING DAN KONSTRUKSI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1051, 'K2, K3, KEAMANAN DAN LINGKUNGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1052, 'PRODUKSI PERALATAN KETENAGALISTRIKAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1053, 'NIAGA DAN MANAJEMEN PELANGGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1054, 'DISTRIBUSI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1055, 'TRANSMISI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1056, 'PEMBANGKITAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1057, 'SERTIFIKASI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1058, 'SUPPLY CHAIN MANAGEMENT', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1059, 'PEMBELAJARAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1060, 'MANAJEMEN PERUSAHAAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1061, 'KOMUNIKASI, CSR DAN PENGELOLAAN KANTOR', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1062, 'KEUANGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1063, 'SDM', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1064, 'TEKNOLOGI INFORMASI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1065, 'REGULATORY AND COMPLIANCE', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1066, 'PENELITIAN DAN PENGEMBANGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1067, 'MANAJEMEN PROYEK, ENJINIRING DAN KONSTRUKSI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1068, 'K2, K3, KEAMANAN DAN LINGKUNGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1069, 'PRODUKSI PERALATAN KETENAGALISTRIKAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1070, 'NIAGA DAN MANAJEMEN PELANGGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1071, 'DISTRIBUSI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1072, 'TRANSMISI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1073, 'PEMBANGKITAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1074, 'SERTIFIKASI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1075, 'SUPPLY CHAIN MANAGEMENT', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1076, 'PEMBELAJARAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1077, 'MANAJEMEN PERUSAHAAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1078, 'KOMUNIKASI, CSR DAN PENGELOLAAN KANTOR', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1079, 'KEUANGAN', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1080, 'SDM', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1081, 'TEKNOLOGI INFORMASI', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1082, 'REGULATORY AND COMPLIANCE', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1083, 'kategori', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49'),
(1084, 'kategori', NULL, NULL, NULL, '2021-02-07 21:42:49', '2021-02-08 04:42:49', NULL, NULL, '2021-02-07 21:42:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likesdocument`
--

CREATE TABLE `likesdocument` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `document_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `likesdocument`
--

INSERT INTO `likesdocument` (`id`, `user_id`, `updated_at`, `document_id`, `created_at`, `modified_at`) VALUES
(3, 5, '2021-01-20 06:45:19', 27, '2021-01-20 06:45:19', '2021-01-20 13:45:19'),
(7, 5, '2021-01-20 08:06:37', 29, '2021-01-20 08:06:37', '2021-01-20 15:06:37'),
(8, 25, '2021-01-20 08:07:18', 29, '2021-01-20 08:07:18', '2021-01-20 15:07:18'),
(9, 5, '2021-01-20 08:41:45', 28, '2021-01-20 08:41:45', '2021-01-20 15:41:45'),
(15, 5, '2021-01-25 01:18:03', 30, '2021-01-25 01:18:03', '2021-01-25 08:18:03'),
(29, 25, '2021-01-26 05:35:55', 31, '2021-01-26 05:35:55', '2021-01-26 12:35:55'),
(33, 25, '2021-01-26 05:37:55', 33, '2021-01-26 05:37:55', '2021-01-26 12:37:55'),
(34, 5, '2021-01-31 09:01:36', 35, '2021-01-31 09:01:36', '2021-01-31 16:01:36'),
(38, 23, '2021-02-05 11:41:05', 36, '2021-02-05 11:41:05', '2021-02-05 18:41:05'),
(39, 23, '2021-02-05 11:41:09', 35, '2021-02-05 11:41:09', '2021-02-05 18:41:09'),
(44, 1959, '2021-02-05 12:11:16', 35, '2021-02-05 12:11:16', '2021-02-05 19:11:16'),
(45, 1959, '2021-02-05 12:14:08', 37, '2021-02-05 12:14:08', '2021-02-05 19:14:08'),
(46, 1959, '2021-02-05 12:14:16', 36, '2021-02-05 12:14:16', '2021-02-05 19:14:16'),
(50, 1959, '2021-02-05 12:18:52', 34, '2021-02-05 12:18:52', '2021-02-05 19:18:52'),
(52, 1959, '2021-02-05 12:19:35', 32, '2021-02-05 12:19:35', '2021-02-05 19:19:35'),
(53, 1959, '2021-02-05 12:19:44', 31, '2021-02-05 12:19:44', '2021-02-05 19:19:44'),
(54, 23, '2021-02-05 12:23:03', 37, '2021-02-05 12:23:03', '2021-02-05 19:23:03'),
(65, 1699, '2021-02-06 01:51:38', 33, '2021-02-06 01:51:38', '2021-02-06 08:51:38'),
(71, 1699, '2021-02-06 01:57:09', 31, '2021-02-06 01:57:09', '2021-02-06 08:57:09'),
(72, 1947, '2021-02-06 02:46:23', 36, '2021-02-06 02:46:23', '2021-02-06 09:46:23'),
(73, 1947, '2021-02-06 07:03:46', 37, '2021-02-06 07:03:46', '2021-02-06 14:03:46'),
(74, 1947, '2021-02-06 07:22:19', 33, '2021-02-06 07:22:19', '2021-02-06 14:22:19'),
(79, 1699, '2021-02-06 11:14:57', 35, '2021-02-06 11:14:57', '2021-02-06 18:14:57'),
(82, 1699, '2021-02-07 21:40:30', 37, '2021-02-07 21:40:30', '2021-02-08 04:40:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(122) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access`
--

CREATE TABLE `user_access` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `like_is` tinyint(1) DEFAULT NULL,
  `dislike_is` tinyint(1) DEFAULT NULL,
  `accessed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_auth`
--

CREATE TABLE `user_auth` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `avatar_file` varchar(64) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` tinyint(4) NOT NULL,
  `user_entity_id` bigint(20) DEFAULT NULL,
  `user_key` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_auth`
--

INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(1, 'Aurelia F R', '20210106070701.png', 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$OodErjg0.0gu1MWPr.YabeQ6pRNz.X6nSpYHuRtp.SOmrqnEOunIC', 1, NULL, NULL, '2020-11-12 17:42:41', '2021-01-13 08:27:16', NULL, '2020-11-12 17:42:41'),
(2, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$neJ379i3ubKC5TcVQj1YUuIKE2dWcNPhMNfv.cShm3VAp41UPTNRW', 2, NULL, NULL, '2020-11-12 17:42:41', '2020-11-12 17:42:41', NULL, '2020-11-12 17:42:41'),
(3, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$fefqcQAb8Aa18p4w7cXA.eUT4o4.hAzS2FIlpjfmVwjf7KlO8Sd42', 3, NULL, NULL, '2020-11-12 17:42:41', '2021-01-06 05:53:24', NULL, '2020-11-12 17:42:41'),
(4, 'noviansyah', '20210106074140.jpg', 'novian@gmail.com', '12345', '$2y$10$R4DuK.nTomw3OGGfUURm7uQDuKd4fL5y9sWMNsuOJkTvIsXEEqbXK', 3, NULL, NULL, '2021-01-06 00:16:48', '2021-01-06 00:41:40', NULL, '2021-01-06 07:16:48'),
(5, 'andi agus', '20210131132040.png', 'andiaja@gmail.com', 'admin', '$2y$10$rfzq3wT2Hpk4KSdPH9.Fe.8F0UYjhW81qKmYtE8oIn3lJbhv38YKq', 1, NULL, NULL, '2021-01-06 00:48:44', '2021-02-06 06:51:56', NULL, '2021-01-06 07:48:44'),
(22, 'NUR SYAMSU SAFRILLAH', '20210128024047.png', 'syahsu@gmail.com', '7095123R', '$2y$10$fE4Xgwm4QV6mi1bKcz1QRe5Caqi8iwp9q.nvdkCdqaSjf1t0IiFQ6', 3, NULL, NULL, '2021-01-06 05:51:13', '2021-01-27 19:40:47', NULL, '2021-01-06 12:51:13'),
(23, 'ROMMY ARIE PRASETIA', '20210107060806.jpg', 'rommy@gmail.com', '88112003Z', '$2y$10$xAOwMENFo/6eqSiB2rqWz.RIpvXd9n/faRA7lIH8CM0/BtIdLRAyq', 3, NULL, NULL, '2021-01-06 05:52:07', '2021-01-06 23:08:06', NULL, '2021-01-06 12:52:07'),
(25, 'ANDI AGUS T', '20210106144405.JPG', 'agus@gmail.com', '94161714ZY', '$2y$10$N9SwZkNOUnIaswnIBlIS2ORw5oAr85o8Iu9H6V9ZP05bIenEVl6vq', 3, NULL, NULL, '2021-01-06 05:54:08', '2021-01-06 23:04:42', NULL, '2021-01-06 12:54:08'),
(1685, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$kvWQCRHQM2bJVEG9g3JVmORcEGVghxTDkEpcxHJ1PJoA9LDfTv3wK', 1, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1686, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$fBwBkUxYQDoyNr9zNe3F6..RvLWE4IOorOX1VMzMXz27O6ahGLDdu', 2, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1687, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$BDmXYfaBhjkGkezBvTXn6.fTzVHT.R8izosTELS5lgINKcakEFnWi', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1688, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$EDuvarNxpW4gSCJJoLxwQevQLZ2kmREmt4TksqbJ01d4ZbvYqN7oO', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1689, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$LT3uNi52Ml.23vFvaqoNPuJYEWmsIAU1TuX1gPuA0Qd3HsNqThwI2', 1, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1690, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$FVQ3j6r3q251srjKYuv2POXO0qRFO.6v4vS8BN1/4BkDzSdcfQcWa', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1691, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$.AIvOkkjyKGO/5oHqZbHy.JU7tnRRB0Mu53KWJ/rOMEwJwaR4J.NO', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1692, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$XQE7gUGHapsp5JqMN459RecEvQ.Pl4k8gNTksEsabQMqp.jSyn0dm', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1693, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$lLZrO14Wj8eraGB94dQEGeyfncF1fs7H..E4U36CzhWSJNO/xiBnm', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1694, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$saeicEy.Is8J72uq6dcwE.7HBEASLJsE6BFH8Wyjp.rrD2Cz/VTCO', 2, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1695, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$wTMpDm0.P57wVPlUNVcnMOhYvu5ZklwJpWtiZfJ65yKaZ/J.Ys9Qi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1696, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$PoEeiEgNGwSdj7VtxikCSOB/ev4IpnoCKw3JB2GW3ec3tGuu6G8N.', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1697, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$wytIIPMiW3G5ZZNgSEWoHuQCJw2gfoO9sRBBaFn6oP70.bf5hO06i', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1698, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$65vfX4O0PyzFpdVx6xW6aOOHQXhdUl52TGsZNiPV.42WFuJCk6auy', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1699, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '11223344', '$2y$10$6WscB8QwkbykC.MFRmfc1OVikptSdtAIkdemSIN/cycz10i4yip7a', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1700, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Zt4qkF9ebMCaVdJZKqXiJeFjU1y6jebjIjKyICHvHjoKbAhZ/5aNO', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1701, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ecZRLL/03EBGnADZt91oFOa.djWo5B9XyfeZGe7sL4hwmRJVEi5Wi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1702, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$E8zz6Yv8B4xRL9w7f0BmcOhm4mqjRAyeYGoHeUPKqqp/MK37M6R9K', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1703, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$XkEET24aMfYm8bq.a49dieqUS.szIJRouwcGIYwGokTE4M4twFNci', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1704, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$lHlto0UOqHhaFR9/eT9gZ.LNc6RXJeJ.m4JLlPxB5dlLH8hfmgvo6', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1705, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$V6/ODqdCHnlb/WDEFg9Y..SCxLTz.FlFvytWgAmNEuN6i7SZwU6Mi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1706, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$g/cyL2i4ioaCEJZH9OPHDOr/GunpkkHIocYjHUL6o/pTDpI20Tv1u', 2, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1707, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$/.62reCiBYaF8n/4E4zFD.qCHlrLZ20NSv3L6FRisdfVCCO2op9CG', 1, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1708, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$4plYuDbQw/1PsAz4recCFeendepNpta9dWQIwrrmKjQqpgjugPgfu', 3, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1709, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$6u6rnURefUe5LgOun4fLzuPNgc2qIZBO9ThEJtmlVPauR7XfpvYp.', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1710, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$k7tJJ9.YNJe5bqXyHzTn/OilqAjcJNBLgR3oOoZYdULVjs.rF7DKa', 2, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1711, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Jb6XzUddHKUhK82bu/r21.fL.XpZ0SP76saTaAvUusqjdEuLaNGhe', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1712, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$L2SxwtOrUC6NFuKbmWmbqudhkyIHdJUPLBHbX.qXOpFG5dq6240gu', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1713, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ilcYySSQUNpyxSGWhCsZZOkBQoFhe/Lw80ImJV2kVwAaOA1z3FBfO', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1714, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$g0Ixc.cTFTdZC3S94CHz0uz21WNtgyjs9jGIjoigrCT8nkyXqs1aa', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1715, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$nM1vR8swrWlmx1wxCNIi4eYPNH3IbD1S5j1NFDIgWaazvlBKREAYm', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1716, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$obS1nZu/RbJGyDbDFlYOqed2IRI9zhXGbTpStHHGLlECLxp8k39OG', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1717, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$c/udgCuqKO1y2Pcs6TMq/O1JVP2WzIgmVxJ12s7lTVg5HsH09VY5u', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1718, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$THpjG6vmRFCzhWh268R14u4YrXmIrw45YPeALdkJ7StVmdudctGby', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1719, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$rp4GKVaIAnXUfRdZg3L3YOjLcc65NjT5wh9UjTApX5.wXXcW.mkAy', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1720, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$8qz0x6ep7yrd5KJmwSaQB.vGAyIFUnXVGBMVEpSQnG7c9gwU/XGea', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1721, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$1JtQir2jOYtfzRDjQt2ehO3apMRID8GgnLUYQE2Ldcau42UcB0i/C', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1722, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$DxTeeCbyN95hCqsK/H1peu4wWb2nqOFP3p5m5ADhJwzcIu/jZO6H6', 2, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1723, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$rwyogMP6M.cEsbYsCuT6s.5.EDU1.9sFFutpbcTxc..8j8En3HLoy', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1724, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$fpgrcyM5WWdixajh0J9T9O5P8quk4l.RuyPOdw0QNYgJwBN8wDr4W', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1725, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$v1jMZyzE5WYdGXXxSjaDGOGaF/QoR3F0bbdFGE3rmmI.F2sE7Dd3W', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1726, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$96k1ni02qEiCvgkRn9SxZuWqS2QGxzJ/YIUmo3./P90fjl/R66Hty', 2, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1727, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Yu72sP4qiTdz9oVauRAucOmrU9fy/MyT0da7SeBrmxz9gS5LWadLW', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1728, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$vtCSunOI3PPzwvqfFy8g2e896MW.wTaRDV4yn5PyRojvNT0E/3Ene', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1729, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$StWZ0JyARNVWTKaEVRHspOwqWoIyWGMv1FtcrsOR49pVbg.gU4AGy', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1730, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$ET8jLFtHgKiEPf1c8vz6vO3nzp7TkNI3CI2pLt4J3/BaZpU/CDqRa', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1731, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$SnROaGqyA9tyWhGTV.SJm.P5d.hbFQCpXapmdH1ptMfXuLg6E0KE6', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1732, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$/uz2YvAFOwg20aQOFL2hZO/1y.fXhJ0PbZaUPjZ.2nOmOwjiLs7nq', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1733, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$HNd2IHJFA9kxNv9qwIIyxuCmy8xwjQfC5yIRVm3ZBOABxkmhMtuvm', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1734, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$McicQItUEIeBehjAdsJEr.82v/i0FCyZKIF/wLN6vatShdlLQjuHu', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1735, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$EGJAhkLCsPuRSw2BnwH42OQka0L0ALCIxrSpe4WrOr4rdZQ1DQHqC', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1736, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$UdpRj7Wcg47TQPyK1kS9muZByk0Xp8ei38Ls/kfItUAMlF9NQxxxW', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1737, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$SP/l8vDqF1D.W6c48uYIpujJ3fmjtWA7J8i.DJbYPVvZ7exsKWcAq', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1738, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$J64ZianuUmDNdOTp4gErCu5c3ZSsROsmrXtMg0xqUnmmkXN1ZhNXa', 2, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1739, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$0b0At.2CZts.m/KO.vYnjuHFhkpZoZe8CZ48ksUCKxvOSs1lqwHtS', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1740, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$/B0bcCKxwz6mYZZdhVIPee7oqdP12jUqaorpg1BnxTYNacqthDHdm', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1741, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$ljUOkrknNXuk4cHLGOkmBugi/h2kwGDV2f5.8ebAkKRXy4a4apdhu', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1742, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$K/9mPmVreRZAjQnmU3iyG.b5blWZvgKLAuYXwu9r9BJoul1ZXRMJW', 2, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1743, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$sgsR/ZvEzwFuLJAgF2xU/uJWuFNLxSf.jqVKan1nJI2.nWmIwR.sO', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1744, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$lGH90RFROYt8bwZDCyuEsOs9a6RNkMaY9tcr1T5f.jX8dAMWBODBu', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1745, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$upVxZK0QyTl3VXAA/o1LkuXED2Y720KTzznYEQb9KSsrvTtgY2gC6', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1746, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$9UUZe64zH/zCokuE.S.tNep0CAbSkTe1g5.JOx4TwoBEsRMPzRs1e', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1747, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$8/gTM.TdTiAZgraZpmw2w.9/It4GPTNv3BZjzhZEtw5NJYnvxXO.e', 1, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1748, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$Kgxk2hmbvvXcpuaR/Z00k.WlHCpL0lgrHWBPINyPKt7ne30XnD/YK', 2, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1749, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$kt.IuFE7N17ik6Yr68qCjeQPNWWNaqbvak8A9PZR2OgjkKagRUPzm', 3, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1750, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$irg8udm9VG4KYGagrELHNu0iwaorDe.7y0aHyHGL91eaQb8wBN3wW', 3, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1751, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$Vkn0T5lGs546Cwy7ZUuRIe.upOjNvgqpXDcPyF/IYGn0xrpcBRB9O', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1752, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$vKWOXKZ0WR5NEUVNPb7O4e1Dgt/xK4TqKRBrHbCHvJF3q/1GWHSxK', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1753, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$EGOSA3voC6W0Cz46ornGH.IHBIrOP5MLusUDZaKpCm7WvRZ57c3Tu', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1754, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$yQo3LjExHZDA9aECEntnduAlJ5zWJiR7e3Wk1XhyNu/N4Gi5IkVJC', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1755, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$7wXJ.sqTjE3GflzKXK4CFuPVuafsDgmF1ZJ1.gYGtFp8fGVnTbvIe', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1756, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$SKfstujmLjbVH6HnBJM9zu2.LnzhJyVjZQIPaOcYG68/0br2Scnw2', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1757, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$DM..lonWWWN1MN7cB/f0AOpFW6uAcGTD70MOHrz2RxzDQJLen94AK', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1758, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$VuMGxHMjIFIpzTV6pky62OqBH0X29koYxl/uMXhWHtPLWK7fqsaie', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1759, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$r.fnW1QzqyBNxtYeQ1ui/uSW16pGDM9wc5auLA/eVx.ButfFF7LYm', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1760, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$kkLC4YcGHhWSehMwhT39tefpUqTEEpLb2KUgyU4StgUUjtVqES3gK', 2, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1761, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$s4XwEeaZsh/zqq1ompPv/.IQlzmTKHeRJn/aedzmr7.JpRCSUBlJa', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1762, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$CfKN3ZI8nspXgj.buC6F2ewz78Ss9CoqCJPhcoHi4cFfMVcsdfJqi', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1763, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$mCN.zIjVFVi6iVmHsLiXNuJb1x9vS.18zZ0cwzI9ddGiH1aU/uR9q', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1764, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$H8Bl1L7AN5Bzrm7RIKgQcuQTwMEFgD2/Bz1VZQejQ2SmuJVQelEhq', 2, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1765, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$/9MVusYVp.oUejRU8Tq/8eihcJLrr6O6AL61qILkMN9Ss.I04oIKe', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1766, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Bmk.fbTMgxl1GnRrrF9f9uhsV5dCT.a.FVK.sKJ8lDbc3FuLkCtMG', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1767, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$.Van4QO8vxzHDvAI5PurIuIhaJqIHGcONlFI/CuVxES87aPQxidTW', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1768, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$wUGxUeBKL4gnh2T925pRnO6FT12OnQXzxV01ghAyfSZO6cTc7XJNa', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1769, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZFBfGlsWj6wkwZYcOAOy2eDdRv2PR76mE4a.Oz5SyMM0hChNj0C1W', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1770, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$4QWvuUYo.mOantRX8WjMMeKChmJdFiVe/.r9Fvz77JnQY22jul3gm', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1771, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$5nA5KWIiKmQwXwx2CA3b0uGgYqg.7MpRw6zgbmGU9JqoxouZHXspO', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1772, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aWeOOCwNzhwdl1DhjAD25OnrICqpLa5q/CCaIFddx4JK0dcbJc2ke', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1773, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$sL.L95ISzZEH/HncQTukB.26Gi3IdQ9tsf0IBNWGcGr6gF0ZirBim', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1774, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$EBaYxt1qyg7uAwpGB7RnYexF2XGQpQwwcGAuCD5Mz5mxUa3U6dX5.', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1775, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$yZlcamueI7DlMw42RJwX8OR/Z7/Op84BcjrfBcW0n0MaOAsgxBPDi', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1776, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$u6wkrKkFIvmsyD2uonI9i.1jgAGJhQtNedXAYB7Zl7f7eqYR5Fu9.', 2, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1777, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Lq2KcyijAHlpfdaq5A1xrukx6hoMn1Fp5SW.t/Er00WVs3cAcQUTK', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1778, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$NHY59YYumryBptmY2eB1tumetzFfAZ.iznJzhNSOkzvA4gmaRJOJm', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1779, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$B1yL3Cr9wjq4PKOAQSg8.OfHxwn/B8gPqZ3Ec.DSF1GRPaa8eVIUy', 1, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1780, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$mJvuD3bFW7YZJVEwF88TJuQb/z9HAGTyC21z8e46AOJL0L3d1p6cG', 2, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1781, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$UzDrHtSszg661fRR6B8x7Of1N/GewxdN7s3.vG/kMvUPZald.rRBm', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1782, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$fPQAKHVf4F71iAMg6rJIGuyUNv7KY24ZU0ufSZjVXbdZT79Vx1B8u', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1783, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$RRPSthTgYjNTkOJxhuC2i.mxzZrJmVPpTUz/C3QC6RWiXKqXzGBxS', 1, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1784, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Jl5YmI/KM4GPIqFNhYREB.07QfBQT41mBn5vL9T92nTp3uPe2Zl06', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1785, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$ohDYaiMR/H975WyPgAIG4OS8BxywJLwF15qjUsNEnd2T85dC1LIci', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1786, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Sf5EBUU4z6dAPiDKgShMJuM8z8Lbq6RIjuX2gzux2z2m4QLDLtMvy', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1787, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$woTOfqBDDMmoKSrwqCCZ1uDIfMf29MCxeq8fMld.muK1B/iFS4KWO', 1, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1788, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$YyhTnIO0VSXoGpIYrY.mL.iGVzReVRSRxUtZ95RpBur02KLlu0C6i', 2, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1789, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$zkn651Ijz97dqbQ49sidNu5ho5Yi6a9/8DD/lDCZGpisK3z76OMI2', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1790, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Z7c3lT64DUcvi3XW6EwJ1OjJax1AJAwRrCZSXU77ptKLGv.fBAUGu', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1791, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$URj7E.RZN/d.36lHkntuf.bP1lyWChN2IZJGJwwXqD4E76FNgqWwu', 1, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1792, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aMmlrfyC/uSUext4bMKjSOwZOJsJXPfxV.GWqP517ytBvG087zrDK', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1793, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$MMGgvBB3ystwZPwcDs5nI.P0OR88221EwCqjwKAQH6cP1BzhBIXaS', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1794, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Ny4PZRC147GhmMswjpc9VOpE/tuq4QhWwTRcV4u6PdcZvug5Vw3.a', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1795, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$dFhoTZWoYocfCSMFM5dScu2X/V96SKbdqYPaoSMIIi3zmcyhpukv.', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1796, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Osqme7s3jK5LsCgvtBz8p.mkiZ46mTWlTbtaKGDSrcXlSlFqKePE6', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1797, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$AOE7ru2OsYMXXMpJbkJGQOJNuv1sKgDG/XKsMsBr/uHccAQcNEQaO', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1798, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$u4PZ1yEsSzFhGuUnSPuwfedgJsCRSxvFdS3E/OFH2G8xjr0cYfX6G', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1799, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$ZXQHrK6Bd1W4WjvykcKXd.rsJW811nCLvusV7jry3.th1WwH9XXLG', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1800, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$w1Y9bvOz/2izy8GKZzoZxO3sEe6SelCdVFtFDykGvtqtEJR7WKrQ6', 2, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1801, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$wz9C21xTXtGV/8G9hHrZGOoAacDppRBRmWubhGT5n/4l3Ze0ISZau', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1802, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$n8TS8gYuJjxtpFrpiWydXOSjbOVHwj.FcuX.Je.3zhGdcm3xQy3lu', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1803, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$BtmYd.wKTySKZConq/VVa.rcrCz9nZAVfnavxy5LpwGDHKu7IJvYS', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1804, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$rb1hVzDNSkDO7ZIZYHbf7uW9UMwk294lkjWpvjJZtXPV9NQLx2bou', 2, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1805, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$PGa3LoD6VR/9pdpup3JyV.O9JaM10ERvuY6zLlxFBBb8t/PwHxwTy', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1806, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$joxbcIeZOrnRt/Gv4Fm9KeZQJu5QKK2ThclriuWGswIkOrY17VCfG', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1807, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$HCMk68y6FXeNRvuf4D.TWuC/4HxBB5R6cpL4cHSLBINJfR3e2852m', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1808, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$p.R.mD8xVpkwD43Fr1mZHuiUeiuNiADx2YrMfUlt7sS0Imj9a5Suy', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1809, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$x3Eqi2FaphhR6p48prYlO.sRgLByiszT93qxZnfkDiQx5LzCtaJjm', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1810, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$gzrHPfWlZAELJNoJLnNZbuov6pNBIpxf0J1QpLsMh7byInzRJ4SaK', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1811, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$2CWKx./FTXHvhQ/tukQHKObZPs/BmTQOO8Euz9wchwWvLmBCBxbG2', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1812, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$COXNRFZx2p1zYIgOnSdKhee4h9loHFJCaYktvyda01PLJQUGDBGlW', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1813, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$EHrc/38u.XwEqUD3E.rO0OyzEHCTwJML3SiFOS4D/CmdojyXkmYXu', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1814, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$ZkYwlN.wtgF2uL7EGPlna.kTm8e/ZDiWmpWlKZo5/M4beXaTuVOQy', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1815, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$jll52ud./e5ZnGABI1Wjy.clVdhNN6v4F0sI4D2.wQ5W6XyeKoCIm', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1816, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$giIEumD93nve2Rx00pTw9eaG7IyznzFw7Y6uenZtXDoxvKtMXbzOe', 2, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1817, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Nw.xstyCvcCMwASdLmqv1O1pmD1itKX1pSvdapIcw4YadB88qKFE.', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1818, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$qVdHPaw/4.kUHV/U17JSm.6.n8V69Qj4JPPtZ.fJ.8GS/SLDziQIS', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1819, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$tjxNRKiLiXhlnY9Zf8.gze/Plrgkjeu1aUWpyzVpc6/RGIWruYso.', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1820, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$.f9JJQ6dKOETFj59quWZaOPJ6PtGhp1r.RsxA8oO4e94oqTP.CdWe', 2, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1821, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$hO6MB6VlNCuYRZMaWdHmk.flw.W9NhqBznTelJmIl91tZcyb38J4i', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1822, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Q8eWySGbnXgiUexluJrdReL57YT8ICQFB3Gu7PYqwi0.ZRIYDak6K', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1823, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$.nOGA5HntOQx24t0pgjaduUZSy4U/DVfDZw2Z8TmnhvmE2cojgBuW', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1824, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$V9xvrNLvqEDyfES9sTnu8e.tY3gjztehsRZfpLFrwxU/PLVuJRMMi', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1825, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$gu84jp8gOO/nn2PF7Bc9CulCsgnah54YVPVWLGeVO888Kn0OxwS.G', 3, NULL, NULL, '2021-01-27 15:45:18', '2021-01-27 15:45:18', NULL, '2021-01-27 22:45:18'),
(1826, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$fZww/Vq9i6B9gqPE.gy7FObCcYSTfoXIPlNNMD8tXiN1gzt3N2mrm', 3, NULL, NULL, '2021-01-27 15:45:18', '2021-01-27 15:45:18', NULL, '2021-01-27 22:45:18'),
(1827, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$dAzK.M2SRPV95OcW.vL3Hubgra3yEfA.IEzVmvj6L/LBQdn0xez0a', 1, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1828, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$apXBUAobWcSy58P7jrlYL.C2W65SPSGthnhf54/w/TKHC5/C2gNfG', 2, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1829, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$HmFl8vsibuiIXZJe316i9ecQX2g8107pImyd1p1zoG/Cm0PKyIENi', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1830, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$qzmqfexo5GhKvLmY2pu6Tu4fC44Pp3lJ39jAQxZ.DGO9SThqWiHtq', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1831, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$P/brtyauXx9VSLxGjRBW1eTKMqO39y83crPwCDlgt/O.g/9mvWLKW', 1, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1832, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$C4yThdpdP23HKmBF/ikeb.5KzDPq.Fwf/ujU/OrfPVdt7ieZdlneS', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1833, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$sM6Y2vCZkKIa6trXVjKNWOdSDltaup.H0aHa5iZWYvuvcNhF61Cqi', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1834, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Chovhs0dyFSn2e1AsFFSpu.CatA0oGM9I1QqsH4wPSvMy2uq2oF/m', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1835, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$uUHI9tTpBO2cEUlftA4M0uijVMp8OKVn6H0W4TAYYJi9Sns2PJYya', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1836, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$j27Mj7hB4z1MzJeDomJKx.a9sdC0JwMdNnfyZjTBxIunwz7aq/AsK', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1837, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$BctvMS605GGole0.smBgcOknoTmehqmtv9kGI6Rh6cjiKFrfJB/Na', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1838, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$zgAEFB1RPERnJG4rNsoGLODCOOAnumi4C2xSRVCEv61KWYbe./1lK', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1839, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$49WpMd82Q8ntBRN11RE83..g93BAwdrMx6AIrtyJ7Sm1OgKso15Iu', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1840, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$771EOkfXgXKeAZbzs58r4.hfp7xggHXsrRbG2v63RzBVQljhiTpoa', 2, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1841, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$secDr1eRiUvid0gQL7OoPe8KA3Bu5HBZ.FQv4McE3mf73gjEcekCq', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1842, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$c5QFdlQRFqwLY0RBoIwDrOjFcL4gFZDIWsUcBMPrOOc9SU7hSpDfW', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1843, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$dUySPZtdJSus.DCckalg/.k4GLanqM1QHbXmv.FT9dRnGl7f.2eaW', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1844, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$sRyZv9hGuuRABb3GnDSRY.a3J7i.SZGeI0T9SGAdqKjGbnj4Ez0kG', 2, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1845, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Vq/FkbFzLxQ2pnTSO9XuVO626gtZGSWzCS.UnAcuPhDGZgRMWjrGi', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1846, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$dcd18vLRLCxazf3PFOF8C.zpEWssJhLpBLkY/9dGgzsuFFajg2zbO', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1847, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$QivJtdmgsumEJrfZOaeaROGrcWK1R32W1ECvPjevce.2TVQk4n9wu', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1848, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aq6FKqEyO98s/ehhDdkuFutTf0zKxzzM0zTp/pEo48EqjXTYM2Xea', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1849, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$X2nRAekoSWLP6EY3TlYqHOvUMbeOqJOaQem2j8Bs6nIneqWKvC9PW', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1850, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$1qc/mVxQi4DLDFItCBYXROQTlC3SjfisrcOIXK32EClDOfPJfmxGi', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1851, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZVo/ArFYoIMry/..1G3eV.1YxXEUhfWR5P5g8q.J04LL9RA.fIRSa', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1852, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$tCLgSgy0.zChkhK.7iI9H.McGHF5cowyDCQ7eQ5KqL/8JM4p9.Jcy', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1853, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$rE0KKB81jrX2Fwz9MdoG6uXnd2JV/wwimeW.3Mge4jNDXTYPOTScq', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1854, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$d69kF3NpfLsvT6gbd8.24.u7C7V.ofV3e.Ui5dPO3qNeCsmBJFeoy', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1855, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$pZl/rETXk0Ouuce1WHPwaufo2LPYACx7buN4bLzNE2knSGRjhYb6a', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1856, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$mkPbcPtS1CPI8Qf2vSjXh.YcDVUD0uvBNdSXyzpqWf5skQuEbjc/q', 2, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1857, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Ucp2lE31hhDh5hdlgcQ2.O/Dt9cDK6B4doUQnuVDwY13lfD85mQVm', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1858, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$2YKeuuquhL6QwUzIvNmXs.Zhxam/SthpRFfG0Y.DLRh0i.b00gpd6', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1859, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$F7k2j6LqhRs7C.ExOz3d5OaVP7YT6neYVK.Jk8j/2P6WkfbuU9T6q', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1860, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$n/aUSHpSnZzOV7AutJ/eU.Bhj9tV4o6oHy2.aDGQBjiW08JCYhZ5y', 2, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1861, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$OzccEYNbxRmnrRbALXOTA.yZJaR5OUL6wKYzbDw1Ya/fqElfmsw1u', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1862, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$K0mb4Ehmn1op9.jb4tsGo.121qTO6F56rJgrdeX4y7ngzdJTCyyzS', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1863, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$n41JVDrZZl9oIy/HeIRBjOSddWRfQYjsLGj3UGVI60rHUyA6BMMu.', 1, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1864, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$OgK88OlVGFsioI74w80/xOlhDywMheeD2H3ycU57gU9eN2Y2QsYzW', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1865, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$wEfz77GPTGBVSPjfCwo12ej77SbQM/m4p4NTBB76d5P40L.90Qmze', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1866, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$f/Ga6spNH0paZCP2jZNbY.Zz5B11oQqjc.bzYKIrbJjllzdGY7t3S', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1867, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Hlkua43TOBIb/jdDvB5aGOhTSy63itBSmx.JC4HsF7a2p8Z7eqndW', 1, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1868, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$rqMqRmHeiLKXCqwwnCasueHnA4z5LF7kHID7xHQZrG2vhYmMb79vS', 2, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1869, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$VJi5Me7FaZXlxBYKAH238OsjLcCrvnUzpCoDiRdgUrl0UpjmRV6r6', 3, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1870, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Cqz2VafWSuIbTrgBvOmU..9dmOHQYkpxZT5F2mHyyj4Ek3dFvZVvS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1871, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$4f.1q3ZOuwILBrZvcWRbV.aHpX76i7NPKjc29XYNC33HIO2a8HrYq', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1872, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Yiu5ShVIx4Yd78kKlyvc4eANjC0XWvVn9f463esfhebjSJKyDtkuu', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1873, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$MECcmG./l4JbZipzEhZcgODvBLYTW8IMxi6IYuvDeACXe/jAftiQS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1874, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$ys2c3557fkO.ZuuXojbgZues8GYo8fxJNp9D/FeXYATZ53PFXF/MS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1875, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZaPEiGT/hpgeI/KVbysIV.KjYgEXhYLbCZFWbusPW68HZo9Lhn6sG', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1876, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$oYNyGnsifXbumS5ALg/NjO.QRUN1FkLAn6KOWqPNN0A5/csGKeyuW', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1877, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ZN3Jv5AiBoCRkRU.SF4ujOjiPuEdcB6TACoRDNar7/1Dvz0s8oldW', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1878, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$aU1LbsjEBJOk3N5xvp.G7OL2GTaIzwD1m/c9kk4DKi3vLzoJrpx32', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1879, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$p8gHDiAuZqI6O8jWLr2vuefVzw5J9415/JzdcTyorM7gwl5ZVdavG', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1880, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$6ATT6Q5byXgi7Q./Y4hvDeNctce2FEVU3b7LWJH7.nSNlyDVuwj0W', 2, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1881, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$0c2yNMnBXVha993zv9Ppy.PdQWojGun83cyhE47HGIhkwEI6UflAy', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1882, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$P6bO1vze3PUiY4wAIFT4i.Km/lH9P46KdZ6n2dVn/W4X38Z.xbZ0i', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1883, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$29yQP05Ym5NtFjqWKtMO5OiPMxTrVO50XRBV9Cyj9/H2swzgjVh2i', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1884, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$cRJYA6lYGOy5LPm6GtliE.X1Ngf4lPocf4SEgPGIGjG/SRiWIO/i2', 2, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1885, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$3MV0YtW3JBiduT1r6p1W.uBg4cY9d1KTXBaB6qFkJY/jjxvDTVYm2', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1886, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Mu0yDQioxKrAfWJ1aM8KTOw3rVZcZuEWltZi38a.3LDvLC9raqD6q', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1887, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$XnWxSTxfbSeeHNEhQQS8Vu017kZceO6vmIH2IJuBONytYVzZKzT0a', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1888, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$m17q.WWn4tzhroczAikIbOkaN4TVDaR3.XeXPxkKlEcJRaZxBAy5q', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1889, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$9lrDM0u3ayHPTYqYZ6xV1OIJeuGNgW8avy5QUA6mJqpIVirHwv04S', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1890, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$5Da/Fc2YTxxtNxNdPrd/B.DC60XqeaCD1Qth2zzeOhn3Lt2Eoxujy', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1891, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$lfX8n9eCSUSzN.6KGS3QEehk6.8vegSk7/ueUxFv7E0Dp9HY50PVO', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1892, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$HeIO2OvHiH5fCcLiUdPQI.gje2OimgGELqtdEC8Va.i1m7LzkX/US', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1893, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$Trl0.ksAyKkI0jx/LgNwYuhMoMuuL/urZh3bTikcKMTnafs.Upzsi', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1894, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$NnoQa0leaJG1Kf/NW8FD.ucrMjoMVZe.FaNz6pNX8L9JOpaBfz1Rq', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1895, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$FLIUUpgCKhA2ch0HwMBPpuELLP.wXncWhdHFcRn3HuIecsJOuAVHu', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1896, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$qDE4QN3QTNO10l4.JwKrr.uC2Z631IIRDFFJAUNXH0GAKfWFTr58W', 2, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1897, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$eLnmFGyJLhjsa91H4ohrmOS6Nzg7STVtarq9K7JE0zllz1HL1lDby', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1898, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$0CLQOR3aUpBu.icBpuaaOu5E6./GNDC8lEzJKsk8oujESs.tiv1NO', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1899, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$zxYwfEh9xYyF9qtHsGQ8K.xKHSdXSDn973Hb4ZEkWrWIcsFrwgqG.', 1, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1900, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$giw4a52j/MCjdi9Ch.QwEuPxWpeh9ZSJYpmh0uWLvaBnN2qx40dEa', 2, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1901, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$BcpTOFUgxETrYuTlyp1wNOZ3YebNVR9CrDkJTzvTYgL5nj0SEwP/2', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1902, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$58XL09/RCxSJXgmLuJDK9OLDXly1PVdh6ysiG1FRL0EFkn4Bu95IO', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1903, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$0.tz8EqErPtxd3RYXzutQuJvuFtBIwmkaG7y9gQDQXAgS8upcibj2', 1, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1904, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$X.pCKWSZJEllWHlpd3yYpuRw5ydIAbmJJKFK87nIn4pb2pSuTZ182', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1905, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$vwm80JA/Hu3Yfmmx4Hx3COXMQhh3xOG3LkKKi4uoDrscZodituFAa', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08');
INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(1906, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$7hrCQCt4wiWNVrZUl3s7B.hES3RZiOalp7gVpFACUkqIkqDkofLBi', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1907, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$RUmmZeie6.PVRDrssKlAOOStfgFm368HmzYGRcEyb6Pe0rwL1kqKq', 1, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1908, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$P03iqlw6IpKZmb.p8pw3.eZcCOQodmXeAFrH9lELdEX5o1fLMSpDS', 2, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1909, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$bwcdTQqgpjbhE60QMnppLevfprYXlbaLgWgezaPvEzcZ.8OAwUcdO', 3, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1910, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$ijHl626hHmFNN3zni6GGG.9sWATC9vcelQlYVRfbH133lMUu7tMPC', 3, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1911, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$L.uOV139zlgSFtCFIYWeH.equGa6Sb4JhFzG.i2nch5HdgmnFVxfm', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1912, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$C6z1he6tTAO006718lPOBOXk12hWlRpZYyjcD0wwaUrfs1uthWhl2', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1913, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$J8JKqC2gScflD1cc0K0mQO9ElctGE9ZAHrJmv2BuAWKTW4iaKiISi', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1914, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Us64vZxlWwOoihB3shs37eNO1Vz0y3DwPYVQbtganXE7IltNlosr6', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1915, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$RVlTdjsum1cWSF.Tt4AWluTJrmE0fyAfBG/Vzqie0MLulRd4Udqgy', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1916, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$U059/eO.PfeRYXc.Sj.ZueHTNXwHtHNm4hM.qs8cJVcDpaY9Wfwme', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1917, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$elbUIbFbUxPesL43lM./me4hjqNx0R9X/805B9ZYgRmxxaWObzday', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1918, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$W6dacdvnwP1MFXShjJyRjO5zmnucd/NwbdCSVtvr5Xwt3djV6g5q.', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1919, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$0ufRyANB5FojPdzCwvgVteyup52cOIV86IDvbvn0S8zOR0Zqk8wHe', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1920, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$Toy2ysXVsRhxfmwqPNhOJ.cX1TbbgHHr4/MLDwc7wx6paze/zf1OW', 2, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1921, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$vkjUpDEh5lU3Y8qJpLz8Xeqs1193gr3jlkhjIwEO59T3O1xurq3va', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1922, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$aB47KtzqyR/fxlc2G4RHpus/xC9TPMbaP8VUTLSV7mEh7gCgKt9lm', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1923, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$.4VVLZqeeDAtRE//k1F6QeNDMivjEsGV6m8d6bbMZCRZkrt.jZxXS', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1924, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$LbIZnpvlF0faCzGfuUMJpezb2P0UwTm53fvaoq13ptXojgERYI.bu', 2, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1925, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$v/0sO3ZuX8zArxj0B0RFB.GtZ0So44MQGr/MzFJAyXc3GtPmzlQbq', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1926, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$sgb2Z.5DCwxYh82LboNHqu7nv7D9UoixqnEMEq.3pKCWJt/diLJUu', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1927, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$pDyC/ocfKm2kNVYmEDC6YusB5ikbBAal3NFi5jxz9jiE5O2K4piyO', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1928, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$gGHyijUQ3sLyXaTKwl5RouD4TtZSjw6PO563QR58qkbvegnKHZtYa', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1929, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$W4InOaN3/Ftcksai6Zj4Ve3r.xa3pLRbDQeSbBhSirPMi9AyxUPPe', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1930, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$AsMrb9prQYr5IGwKa6BdN.ZYggS7Rwz/11OvunDECO/QASITg/cGu', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1931, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$.oawMT98WCoNb5lPkOhcEOmQqsbfduCT.nO7uNElkbcEn8Q0Ocqui', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1932, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$ju/jPZBQfIaGTMVlETzsD.cUEFiWcweRYeP8IIlMixlxDz8Q1w9Be', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1933, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ijvUvqV/L4Q8bq4T5WUMf.eo5oSnOLO99a55bHiG8cdJmd7RpHEGq', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1934, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$wXrCAw44NYxTYIhcblcuces8Q0AXNQOjBYTWBXdAXr/4BXRACMR3i', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1935, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$NCWgG3BISjqwIgQD0lNhPeRKQyM0kKZhU0tdcd7QNVpWpt6sQ8.SC', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1936, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$XZrPNV1fwtDs3VAndIuGo.ODIIDZoiDZLHY//z1zJ79G5AZV7sU/i', 2, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1937, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$TquZtMwhS5SO94LTloDXFuspUPNvtNV3LPGEwgkDFvzqMxgQlBaZG', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1938, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$UVnYveadbI9zPDO3qyCUG.gp0NZD1HYku6S4gImzA4KZDmGwI5nb6', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1939, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$EfRhKV3mH.1j1Y4NIq0cVeD0WEwKdgis.RckQ7CaV1hD75HtZlvLS', 1, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1940, 'NUR SYAMSU SAFRILLAH', NULL, 'lia.fairuz@yahoo.com', '7095123R', '$2y$10$IN3knmQim8RkMKdv2PYCG.5o0g1Ay8zLuhFNrVD8KLtNBoQhfI9RO', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1941, 'ROMMY ARIE PRASETIA', NULL, 'aureliafr@gmail.com', '88112003Z', '$2y$10$mLrbCSJsYQHubK8V7DwFXeiTvCp/r7osfJD0kICKEC9RpmXOO1VGa', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1942, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$VFo1d/LeR0hKSTWyBsJIuuEk7tsdg9NiEI3Hez0ZJ75SKPYK2yRo2', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1943, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$MqX4RZ4OMKVYzK3XVd97ge2WnDnv.LT7ycvBM9KYfcuIQPgyaOdzy', 1, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1944, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$tqt9fjnoZnFLW6xOJq405unuugwk0oCKK4F69edx/jhlFhlZSpR.y', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1945, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$o6IMPoS3n04milirrEzY1eFAvRUd06tAifLO.PgTta0jo49RhbTkC', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1946, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$LDU3AZyrlstnRBa/5fXF2OXvmGui1AOZ6cBkN3EXmyDObGMJhi0Fy', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1947, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '123456', '$2y$10$F.5XESIHv177jsq0FfGRweWclNFvNXHG/AD6QIBnpyAo.tag2cKQu', 2, NULL, NULL, '2021-02-02 07:24:52', '2021-02-05 12:27:39', NULL, '2021-02-02 14:24:52'),
(1948, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$6jGIhzSHoQWaFJnUJfqK5OV9wvV3tHa4thhTBEZhGGUZehAlucuQK', 2, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1949, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$z0p7Ln8cX/mSTRGmWLp14uPFyNT.t7QklcJ097hznhkl1gSUYfgSe', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1950, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$jqeJPPJ0KptpoIlbE.DDZegfeIaIqgTJ202X.1mgT3Vuvdr5p53jW', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1951, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$lcWjQV9oEFdpG3o.6Dho2eRXqd1dtEUyY8UjvJmV7FlP.A2JGsXbe', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1952, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$cAoH1IhbxppVZioRDyPNS.Q0Cy3r/eBAS0yAL8U9jSaAVnXKmihFy', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1953, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$l9uZKghK59xRuLID5ca9muytpK8oxUU4il.H8IFRAu9V/y/6YrMvS', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1954, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$wUXLpda.LypgG/R0RYYABOfFRURwg4A6Otv5tOyfoCJ47XmPTB06.', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1955, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$wgLKE.diOcWSIpetMMlkO.K77xwShWBeH95kZXEYUrBp/L15SHmKS', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1956, 'TOHA NGAFIF', NULL, 'user@gmail.com', '123456', '$2y$10$Hh.t4X545saIReORNOdhw.abJ0LFDu6t114pCnkqV3lvnYIo/5f6O', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 11:43:41', NULL, '2021-02-02 14:24:53'),
(1957, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$pSldARA0VGPWikpkhPfb3OObFwG9ryYvo2y/SVh2IDZa6Y2i35zbS', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1958, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$qhLU8qk6XODYd20FT96z0eguZOo3rwx9w1jYQWNxxAD4/IFHQu6G.', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1959, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$FSImE1EG04S7/kT.8zMmSu0k00QEXvGpSVYVgo1m4cqtUOGEsX2sK', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1960, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$fVq4QWeCf4BW6J9hvLOj0.WI7su7jKv6uyzoatxSOKVyyAIV42.TG', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1961, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$yhjNBQo0wsn4pExQq0hELupKDrLiRTuPm2LCfAr.Ur9L8jFjg.FdS', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` tinyint(4) NOT NULL,
  `type` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'superadmin', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL),
(2, 'admin', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL),
(3, 'pusdiklat', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1085;

--
-- AUTO_INCREMENT untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1962;

--
-- AUTO_INCREMENT untuk tabel `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  ADD CONSTRAINT `likesdocument_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_auth` (`id`),
  ADD CONSTRAINT `likesdocument_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_auth` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
