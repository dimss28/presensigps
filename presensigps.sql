-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2025 at 01:58 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u289602821_presensigps`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `kode_cabang` char(3) NOT NULL,
  `nama_cabang` varchar(50) NOT NULL,
  `alamat_cabang` varchar(100) NOT NULL,
  `telepon_cabang` varchar(13) NOT NULL,
  `lokasi_cabang` varchar(255) NOT NULL,
  `radius_cabang` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`kode_cabang`, `nama_cabang`, `alamat_cabang`, `telepon_cabang`, `lokasi_cabang`, `radius_cabang`, `created_at`, `updated_at`) VALUES
('BGR', 'SMP Al - Jariyah', 'Jln rubaya kepuh aljariyah', '08', '-6.289968,107.305489', 200, '2024-06-15 14:36:25', '2025-08-12 19:50:56'),
('TSM', 'SMK Al - Jariyah', 'jln. rubaya kepuh al jariyah', '08', '-6.289968,107.305489', 30, '2024-06-15 14:44:04', '2025-08-12 19:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `kode_cuti` char(3) NOT NULL,
  `jenis_cuti` varchar(255) NOT NULL,
  `jumlah_hari` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`kode_cuti`, `jenis_cuti`, `jumlah_hari`, `created_at`, `updated_at`) VALUES
('C02', 'Melahirkan', 90, '2024-06-15 15:03:56', '2024-06-15 15:03:56'),
('C03', 'Khusus', 2, '2024-06-15 15:03:56', '2024-10-14 20:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dari` smallint(6) NOT NULL,
  `sampai` smallint(6) NOT NULL,
  `denda` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id`, `dari`, `sampai`, `denda`, `created_at`, `updated_at`) VALUES
(6, 0, 5, 5000, '2025-08-13 08:45:25', '2025-08-13 08:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `kode_dept` char(3) NOT NULL,
  `nama_dept` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`kode_dept`, `nama_dept`, `created_at`, `updated_at`) VALUES
('A', '-', '2024-04-27 21:06:16', '2025-08-05 11:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `detailtunjangans`
--

CREATE TABLE `detailtunjangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur`
--

CREATE TABLE `hari_libur` (
  `kode_libur` char(7) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hari_libur`
--

INSERT INTO `hari_libur` (`kode_libur`, `tanggal`, `kode_cabang`, `keterangan`, `created_at`, `updated_at`) VALUES
('LB25001', '2025-05-01', 'BGR', 'Hari Buruh', '2025-05-03 21:20:07', '2025-05-03 21:20:07'),
('LB25002', '2025-05-03', 'BGR', 'Cuti Bersama', '2025-05-03 21:23:58', '2025-05-03 21:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur_detail`
--

CREATE TABLE `hari_libur_detail` (
  `kode_libur` char(7) NOT NULL,
  `nik` char(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hari_libur_detail`
--

INSERT INTO `hari_libur_detail` (`kode_libur`, `nik`, `created_at`, `updated_at`) VALUES
('LB25001', '00.00.000', '2025-05-03 21:20:15', '2025-05-03 21:20:15'),
('LB25002', '00.00.000', '2025-05-03 21:27:29', '2025-05-03 21:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` char(3) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
('1', 'Kepala sekolah', '2024-04-27 21:11:42', '2025-08-05 11:36:26'),
('10', 'MATEMATIKA', '2025-08-12 10:06:22', '2025-08-12 10:06:22'),
('11', 'PABP', '2025-08-12 10:07:21', '2025-08-12 10:07:21'),
('12', 'INFORMATIKA', '2025-08-12 10:08:15', '2025-08-12 10:08:15'),
('13', 'PKN', '2025-08-12 10:07:34', '2025-08-12 10:07:34'),
('14', 'PRAKARYA', '2025-08-12 10:07:53', '2025-08-12 10:07:53'),
('15', 'PJOK', '2025-08-12 11:55:50', '2025-08-12 11:55:50'),
('16', 'KONSELING', '2025-08-12 12:05:49', '2025-08-12 12:05:49'),
('17', 'BHS INGGRIS', '2025-08-12 12:10:34', '2025-08-12 12:10:34'),
('18', 'PEND. PANCASILA', '2025-08-12 12:10:56', '2025-08-12 12:10:56'),
('19', 'BAHASA ARAB', '2025-08-12 12:11:09', '2025-08-12 12:11:09'),
('2', 'TU', '2025-03-01 21:56:56', '2025-08-05 11:36:47'),
('20', 'PRAMUKA', '2025-08-12 12:11:16', '2025-08-12 12:11:16'),
('3', 'WAKASEKSAPRAS', '2025-08-12 10:03:50', '2025-08-12 10:03:50'),
('4', 'WAKASEKKURIKULUM', '2025-08-12 10:04:01', '2025-08-12 10:04:01'),
('5', 'WAKASEKKESISWAAN', '2025-08-12 10:04:17', '2025-08-12 10:04:17'),
('6', 'ADM KETATAUSAHAAN', '2025-08-12 10:04:34', '2025-08-12 10:04:34'),
('7', 'BHS INDONESIA', '2025-08-12 10:05:29', '2025-08-12 10:05:29'),
('8', 'BHS SUNDA', '2025-08-12 10:05:42', '2025-08-12 10:05:42'),
('9', 'IPS', '2025-08-12 10:06:04', '2025-08-12 10:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tunjangan`
--

CREATE TABLE `jenis_tunjangan` (
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jenis_tunjangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_tunjangan`
--

INSERT INTO `jenis_tunjangan` (`kode_jenis_tunjangan`, `jenis_tunjangan`, `created_at`, `updated_at`) VALUES
('TJ01', 'Makan', '2025-05-29 15:08:17', '2025-05-30 15:57:12'),
('TJ02', 'Jabatan', '2025-05-29 15:53:13', '2025-05-30 15:57:16'),
('TJ03', 'Istri', '2025-05-30 15:57:22', '2025-05-30 15:57:22'),
('TJ04', 'Tanggung Jawab', '2025-05-30 16:22:23', '2025-05-30 16:22:30');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(9) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `kode_status_kawin` char(2) DEFAULT NULL,
  `pendidikan_terakhir` varchar(4) DEFAULT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `kode_jabatan` char(3) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status_karyawan` char(1) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kode_jadwal` char(5) DEFAULT NULL,
  `pin` smallint(6) DEFAULT NULL,
  `tanggal_nonaktif` date DEFAULT NULL,
  `tanggal_off_gaji` date DEFAULT NULL,
  `lock_location` char(1) NOT NULL,
  `lock_jam_kerja` char(1) NOT NULL DEFAULT '1',
  `status_aktif_karyawan` char(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `no_ktp`, `nama_karyawan`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `jenis_kelamin`, `kode_status_kawin`, `pendidikan_terakhir`, `kode_cabang`, `kode_dept`, `kode_jabatan`, `tanggal_masuk`, `status_karyawan`, `foto`, `kode_jadwal`, `pin`, `tanggal_nonaktif`, `tanggal_off_gaji`, `lock_location`, `lock_jam_kerja`, `status_aktif_karyawan`, `password`, `created_at`, `updated_at`) VALUES
('00.00.000', '3207321607111222', 'admin', 'karawang', '2025-04-28', 'karang pawitan', '082220804021', 'L', 'K2', 'S1', 'TSM', 'A', '1', '2025-04-28', 'T', '22.22.224.jpg', NULL, 1, NULL, NULL, '0', '1', '1', '$2y$12$odm2ghh54Zjqda20eg9T/uRAD9C7TLK3R.VWv7r53uJvPaqt3qMeC', '2025-04-29 06:17:11', '2025-08-12 09:44:51'),
('00.01', '00.01', 'Rakhmat hadi wiria', 'karawang', '2025-08-12', 'jln', '083188920381', 'L', 'K0', 'S1', 'BGR', 'A', '1', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$x.vS91I3oQKVxwzF1ibWeuehpHtSeCaTYZ5GXWKx2Z.n2LfqKrJxa', '2025-08-12 11:54:01', '2025-08-12 20:38:11'),
('00.02', '00.02', 'suganda', 'karawang', '2025-08-12', 'jln', '000000', 'L', 'K0', 'S1', 'BGR', 'A', '15', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$r.ZXoXu5r7e.szWRWpBYqu26VsnwcYwmn5wHc9k2WieuUJqItIOUa', '2025-08-12 11:55:22', '2025-08-12 11:56:18'),
('00.03', '00.03', 'yana mulyana', 'karawang', '2025-08-12', 'jln', '00000', 'L', 'K0', 'SMK', 'BGR', 'A', '8', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$UbWBTiQc2ldDxHj5225//u5OX0NiEdqYTvS9Jha484Jz1dnOWgg9a', '2025-08-12 11:57:14', '2025-08-12 11:57:14'),
('00.04', '00.04', 'Nesam sugiri', 'karawang', '2025-08-12', 'jln', '00000', 'L', 'K0', 'S1', 'BGR', 'A', '11', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$elutDRe0B7oEgtuawu16q.hIWxkf.J3U4VHb6vRtdeIyUJ/xy2aTO', '2025-08-12 11:58:22', '2025-08-12 11:58:22'),
('00.05', '00.03', 'Ana marliana', 'karawang', '1998-08-12', 'jln', '929393', 'P', 'K1', 'S1', 'TSM', 'A', '12', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$GMsgGJ8uyJmTHpLc9bZx3emsrLbTRXMXw/XaW/Cde69lMToT3HHuy', '2025-08-12 10:11:23', '2025-08-12 11:58:45'),
('00.06', '00.06', 'Nana sumarna', 'karawang', '2025-08-12', 'jln', '0000', 'L', 'K0', 'S1', 'BGR', 'A', '12', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$nC9VUhSLThEW.VuIp7sOFOVzbZJbxc7zyEwufuMHEVGG/Vh.OOh7m', '2025-08-12 11:59:51', '2025-08-12 11:59:51'),
('00.07', '00.07', 'Wawan Hermawan', 'karawang', '2025-08-12', 'jln', '000000', 'L', 'K0', 'S1', 'BGR', 'A', '16', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$3ZnqUqRypOmiU/vEt.hxAO2YISkXTHKxxfijhHJS/.buJnQOfPu1y', '2025-08-12 12:05:32', '2025-08-12 12:06:15'),
('00.08', '00.08', 'M.ridho', 'karawang', '2025-08-12', 'jln', '00000', 'L', 'K0', 'S1', 'BGR', 'A', '14', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$jSuBC52tgQuRt/IjrMYtregZW//EPQWe3SMbgCOAQFqRjnPFFNnYC', '2025-08-12 12:08:26', '2025-08-12 12:08:26'),
('00.09', '00.09', 'siti dudah. M', 'karawang', '2025-08-12', 'jln', '000000', 'P', 'K0', 'S1', 'BGR', 'A', '17', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$cYjxgFk7l7Gb1FHQBZPZ5OQXtrtNEXKMaf8cZUSdORPy7K3sl7dey', '2025-08-12 12:10:17', '2025-08-12 12:11:47'),
('00.10', '00.10', 'Anisah septyarini', 'Karawang', '2025-08-12', 'jln', '0000', 'P', 'K0', 'S1', 'BGR', 'A', '10', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$/DfAIPDB.24RRSAFtvJwxuDEyvU24utcbV.Ug/sRTOM7Girk6wIt2', '2025-08-12 12:13:28', '2025-08-12 12:13:28'),
('00.11', '00.11', 'Elin Ristiati', 'Karawang', '2025-08-12', 'jln', '00000', 'P', 'K0', 'S1', 'BGR', 'A', '7', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$AHGqiLHnjF5GnrbKkJjZPeSVlubcwLUnT95EKzS3/PnpfH6.9pkqi', '2025-08-12 12:14:53', '2025-08-12 12:14:53'),
('00.12', '00.12', 'Alya fitriani', 'karawang', '2025-08-12', 'jln', '00000', 'P', 'K0', 'S1', 'BGR', 'A', '18', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$YwfeQ2qgrPqund2yVPFIJOKpMboHoZcO0ZumRsrhn5UHoDkQHP5w6', '2025-08-12 12:16:18', '2025-08-12 12:16:18'),
('00.13', '00.13', 'Neneng farliah', 'karawang', '2025-08-12', 'jln', '00000', 'P', 'K0', 'S1', 'BGR', 'A', '9', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$3ZVCQsjkqKMwtyFW68qoYeokHT6x/DkoPH9yhbDMRqWkF/2wapBTC', '2025-08-12 12:17:31', '2025-08-12 12:17:31'),
('00.14', '00.14', 'Karyadi', 'karawang', '2025-08-12', 'jln', '00009', 'L', 'K0', 'S1', 'BGR', 'A', '19', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$0wUfdCkGf3mA1mYZyfsMAOWSvRUB6XFesN6oMqRlzCntEwLvToIcu', '2025-08-12 12:18:25', '2025-08-12 12:18:25'),
('00.15', '00.15', 'Yoyo', 'karawang', '2025-08-12', 'jln', '00000', 'L', 'K0', 'S1', 'BGR', 'A', '20', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$k/K.kqu5mHLyRZsW7z0y6uTzVDDBRJrQ5bd8mqKhFvqL0Atd2Z9zS', '2025-08-12 12:19:25', '2025-08-12 12:19:25'),
('00.16', '00.16', 'Alamsyah', 'karawangg', '2025-08-12', 'jlmn', '0000', 'L', 'K0', 'S1', 'BGR', 'A', '20', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$Pbxijoq9TvBp40TtkoRMOevirNjtK/Lo1hMoSjLZiQ3SGNN4NhaSq', '2025-08-12 12:20:03', '2025-08-12 12:20:03'),
('00.20', '3210230329', 'anggreani', 'karawang', '2025-08-12', 'grahapusps', '085813865755', 'P', 'TK', 'S1', 'BGR', 'A', '2', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$TanyPyPNnoxxMYVkLEFnbuzya/XWTQQOgLNuUsobaUKWXg8Brj3y6', '2025-08-12 11:22:17', '2025-08-12 11:52:29'),
('00.21', '00.21', 'sabila asyasyifa putri', 'karawang', '2004-05-05', 'jln', '085607423283', 'P', 'K0', 'S1', 'BGR', 'A', '2', '2025-08-12', 'T', '00.21.jpg', NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$cMvzcY3NytZz3Jx8.9BmGOk3RQ.KdDYmVpunnTE1wnKu6BtrAjcpy', '2025-08-12 12:51:29', '2025-08-12 20:37:37'),
('00.22', '318828282', 'MUHIDIN', 'karawang', '2006-08-05', 'annur', '083804173975', 'L', 'K3', 'SMA', 'BGR', 'A', '2', '2025-08-05', 'T', NULL, NULL, 22, NULL, NULL, '1', '1', '1', '$2y$12$GhAQlWSDfTXwpRIT1V7bZOsaPB140i5U3qWkmhmU0OkbVMM/VeUri', '2025-08-05 11:58:42', '2025-08-12 20:38:44'),
('11.11.', '3215012812030008', 'dimas', 'karawang', '2025-08-12', 'jln', '000', 'L', 'K0', 'S1', 'BGR', 'A', '2', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$90yDE/D4cRTBIK5yu/ZU8.DPDedMoTSpUNZBBzZEQM30LTye37G86', '2025-08-12 13:59:58', '2025-08-12 13:59:58'),
('22.22', '22222', 'admin sekoalh', 'karawang', '2025-08-12', 'jln', '6777', 'L', 'K0', 'S3', 'BGR', 'A', '2', '2025-08-12', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$Y2MOKxmtj99t6EZpWguDzefluPi8CqDdsGO0AXHo7GWL3vALTiS4e', '2025-08-12 15:26:23', '2025-08-12 15:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjskesehatan`
--

CREATE TABLE `karyawan_bpjskesehatan` (
  `kode_bpjs_kesehatan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_bpjskesehatan`
--

INSERT INTO `karyawan_bpjskesehatan` (`kode_bpjs_kesehatan`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('K250001', '00.00.000', 75000, '2025-05-01', '2025-06-06 15:43:46', '2025-06-06 15:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjstenagakerja`
--

CREATE TABLE `karyawan_bpjstenagakerja` (
  `kode_bpjs_tk` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_bpjstenagakerja`
--

INSERT INTO `karyawan_bpjstenagakerja` (`kode_bpjs_tk`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('K250001', '00.00.000', 25000, '2025-05-01', '2025-06-06 15:43:58', '2025-06-06 15:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_gaji_pokok`
--

CREATE TABLE `karyawan_gaji_pokok` (
  `kode_gaji` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_gaji_pokok`
--

INSERT INTO `karyawan_gaji_pokok` (`kode_gaji`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('G250001', '00.00.000', 15000000, '2025-05-01', '2025-05-28 16:41:22', '2025-05-28 17:00:41'),
('G250002', '00.22', 1500000, '2025-08-01', '2025-08-05 13:19:23', '2025-08-05 13:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji`
--

CREATE TABLE `karyawan_penyesuaian_gaji` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `bulan` smallint(6) NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_penyesuaian_gaji`
--

INSERT INTO `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
('PYG072025', 7, 2025, '2025-06-08 14:30:22', '2025-07-19 14:40:40'),
('PYG082025', 8, 2025, '2025-08-05 13:27:05', '2025-08-05 13:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji_detail`
--

CREATE TABLE `karyawan_penyesuaian_gaji_detail` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `nik` char(9) NOT NULL,
  `penambah` int(11) NOT NULL,
  `pengurang` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_penyesuaian_gaji_detail`
--

INSERT INTO `karyawan_penyesuaian_gaji_detail` (`kode_penyesuaian_gaji`, `nik`, `penambah`, `pengurang`, `keterangan`, `created_at`, `updated_at`) VALUES
('PYG072025', '00.00.000', 100000, 0, 'Kekurangan Bulan Lalu', '2025-06-08 16:39:55', '2025-06-08 16:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan`
--

CREATE TABLE `karyawan_tunjangan` (
  `kode_tunjangan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_tunjangan`
--

INSERT INTO `karyawan_tunjangan` (`kode_tunjangan`, `nik`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('T250001', '00.00.000', '2025-05-01', '2025-05-30 17:16:59', '2025-05-30 17:16:59'),
('T250002', '11.11.', '2025-08-12', '2025-08-12 22:11:01', '2025-08-12 22:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan_detail`
--

CREATE TABLE `karyawan_tunjangan_detail` (
  `kode_tunjangan` char(7) NOT NULL,
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_tunjangan_detail`
--

INSERT INTO `karyawan_tunjangan_detail` (`kode_tunjangan`, `kode_jenis_tunjangan`, `jumlah`, `created_at`, `updated_at`) VALUES
('T250001', 'TJ01', 150000, '2025-05-30 17:16:59', '2025-05-30 17:16:59'),
('T250001', 'TJ02', 250000, '2025-05-30 17:16:59', '2025-05-30 17:16:59'),
('T250001', 'TJ03', 300000, '2025-05-30 17:16:59', '2025-05-30 17:16:59'),
('T250001', 'TJ04', 1500000, '2025-05-30 17:16:59', '2025-05-30 17:16:59'),
('T250002', 'TJ01', 25000, '2025-08-12 22:11:01', '2025-08-12 22:11:01'),
('T250002', 'TJ02', 10000, '2025-08-12 22:11:01', '2025-08-12 22:11:01'),
('T250002', 'TJ03', 20000, '2025-08-12 22:11:01', '2025-08-12 22:11:01'),
('T250002', 'TJ04', 20000, '2025-08-12 22:11:01', '2025-08-12 22:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_wajah`
--

CREATE TABLE `karyawan_wajah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `wajah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `lembur`
--

CREATE TABLE `lembur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nik` char(9) NOT NULL,
  `lembur_mulai` datetime NOT NULL,
  `lembur_selesai` datetime NOT NULL,
  `lembur_in` datetime DEFAULT NULL,
  `lembur_out` datetime DEFAULT NULL,
  `foto_lembur_in` varchar(255) DEFAULT NULL,
  `foto_lembur_out` varchar(255) DEFAULT NULL,
  `lokasi_lembur_in` varchar(255) DEFAULT NULL,
  `lokasi_lembur_out` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lembur`
--

INSERT INTO `lembur` (`id`, `tanggal`, `nik`, `lembur_mulai`, `lembur_selesai`, `lembur_in`, `lembur_out`, `foto_lembur_in`, `foto_lembur_out`, `lokasi_lembur_in`, `lokasi_lembur_out`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, '2025-07-07', '22.22.224', '2025-07-07 22:00:00', '2025-07-07 23:59:00', '2025-07-07 22:10:00', '2025-07-07 23:00:00', '22.22.224-2025-07-07-in.png', NULL, '-5.390336,105.2737536', NULL, '1', 'Beresin Laporan Keuangan', '2025-07-07 22:10:29', '2025-07-15 17:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_13_163827_add_username_field_to_users', 1),
(6, '2024_01_14_065610_create_permission_tables', 1),
(7, '2024_01_15_170203_create_permission_groups_table', 1),
(8, '2024_01_16_081416_add_id_permission_group_to_permissions', 1),
(9, '2024_01_16_082530_add_relation_from_permissions_to_permission_groups', 1),
(10, '2024_04_27_133940_create_karyawans_table', 2),
(11, '2024_04_27_134826_create_cabangs_table', 3),
(12, '2024_04_27_140209_create_departemens_table', 4),
(13, '2024_04_27_140736_create_jabatans_table', 5),
(14, '2024_04_27_141507_crate_table_status_kawin', 6),
(15, '2024_05_25_080125_add_column_to_karyawan', 7),
(16, '2024_06_01_151030_create_relation_karyawan_to_departemen', 8),
(17, '2024_06_15_075718_create_cutis_table', 9),
(19, '2024_12_01_143041_create_jamkerjas_table', 10),
(21, '2024_12_17_221256_create_setjamkerjas_table', 11),
(22, '2024_12_25_141314_create_hariliburs_table', 12),
(23, '2024_12_30_143453_create_detailhariliburs_table', 13),
(24, '2025_01_13_152829_create_setjamkerjabydates_table', 14),
(25, '2025_01_21_074359_create_userkaryawans_table', 15),
(26, '2025_01_22_150849_create_presensis_table', 16),
(27, '2025_01_22_153134_create_setjamkerjabydepts_table', 17),
(28, '2025_01_22_153959_create_detailsetjamkerjabydepts_table', 18),
(29, '2025_01_27_083520_create_izinabsens_table', 19),
(32, '2025_01_28_225208_create_approveizinabsens_table', 20),
(33, '2025_01_29_110840_create_izinsakits_table', 21),
(34, '2025_01_29_235629_create_approveizinsakits_table', 22),
(35, '2025_01_31_052651_create_izincutis_table', 23),
(36, '2025_02_01_221452_create_approveizincutis_table', 24),
(37, '2025_03_01_215021_add_relation_karyawan_jabatan', 25),
(38, '2025_03_10_233534_create_pengaturanumums_table', 26),
(39, '2025_03_12_210910_add_column_periode_laporan', 27),
(40, '2025_03_12_213803_create_dendas_table', 28),
(41, '2025_03_21_070306_create_facerecognitions_table', 29),
(43, '2025_03_24_145610_add_facerecognition', 30),
(44, '2025_03_24_151107_add_cloud_id_token', 31),
(45, '2025_04_28_194528_change_cascade_userskaryawan', 32),
(46, '2025_04_28_195903_change_cascade_harilibur', 32),
(47, '2025_04_28_200136_change_cascade_presensi_jamkerja_bydate', 32),
(48, '2025_04_28_200151_change_cascade_presensi_jamkerja_byday', 32),
(49, '2025_04_28_200326_change_cascade_presensi_izinabsen', 32),
(50, '2025_04_28_200341_change_cascade_presensi_izincuti', 32),
(51, '2025_04_28_200352_change_cascade_presensi_izinsakit', 32),
(52, '2025_04_28_200644_change_cascade_presensi', 32),
(53, '2025_04_28_201020_change_cascase_presensi_izinabsen_approve', 32),
(54, '2025_04_28_201036_change_cascase_presensi_izincuti_approve', 33),
(55, '2025_04_28_201055_change_cascase_presensi_izinsakit_approve', 33),
(56, '2025_04_28_205629_add_logo_and_domain_email_to_pengaturanumums_table', 34),
(57, '2025_05_13_172741_create_sessions_table', 35),
(58, '2025_05_19_200108_add_domian_wa_gateway', 36),
(59, '2025_05_25_182126_create_jobs_table', 37),
(61, '2025_05_28_160332_create_gajipokoks_table', 38),
(63, '2025_05_29_144500_create_jenistunjangans_table', 39),
(64, '2025_05_30_154217_create_tunjangans_table', 40),
(66, '2025_05_30_154419_create_detailtunjangans_table', 41),
(67, '2025_05_31_162620_add_column_batasi_absen_jam_batasi_absen', 42),
(68, '2025_06_06_131732_create_bpjskesehatans_table', 43),
(70, '2025_06_06_144606_create_bpjstenagakerjas_table', 44),
(71, '2025_06_08_140901_create_penyesuaiangajis_table', 45),
(74, '2025_06_08_141250_create_detailpenyesuaiangajis_table', 46),
(75, '2025_06_10_162258_create_wamessages_table', 47),
(76, '2025_06_10_163230_add_column_wa_api_key_to_pengaturan_umum', 48),
(78, '2025_06_24_183103_create_slipgajis_table', 49),
(80, '2025_07_04_145928_create_lemburs_table', 50),
(82, '2025_07_08_052018_add_column_istirahat_to_presensi', 51),
(84, '2025_07_19_165824_add_column_multilokasi_to_pengaturan_umum', 52),
(85, '2025_07_28_173007_create_izindinas_table', 53),
(86, '2025_08_01_184429_add_column_batasi_hari_izin_pengaturan_umum', 54),
(87, '2025_08_01_195631_add_column_batas_presensi_lintashari', 55),
(88, '2025_08_02_155748_add_column_batas_jam_absen_pulang', 56);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 43);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_umum`
--

CREATE TABLE `pengaturan_umum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `total_jam_bulan` int(11) NOT NULL,
  `denda` tinyint(1) NOT NULL DEFAULT 1,
  `face_recognition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `periode_laporan_dari` smallint(6) NOT NULL,
  `periode_laporan_sampai` smallint(6) NOT NULL,
  `periode_laporan_next_bulan` tinyint(1) NOT NULL,
  `cloud_id` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `domain_email` varchar(255) DEFAULT NULL,
  `domain_wa_gateway` varchar(255) DEFAULT NULL,
  `wa_api_key` varchar(255) NOT NULL,
  `batasi_absen` tinyint(1) NOT NULL DEFAULT 0,
  `batas_jam_absen` smallint(6) NOT NULL DEFAULT 0,
  `batas_jam_absen_pulang` smallint(6) NOT NULL DEFAULT 0,
  `multi_lokasi` tinyint(1) NOT NULL DEFAULT 0,
  `notifikasi_wa` tinyint(1) NOT NULL DEFAULT 0,
  `batasi_hari_izin` tinyint(1) NOT NULL DEFAULT 1,
  `jml_hari_izin_max` int(11) NOT NULL,
  `batas_presensi_lintashari` time NOT NULL DEFAULT '08:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengaturan_umum`
--

INSERT INTO `pengaturan_umum` (`id`, `nama_perusahaan`, `alamat`, `telepon`, `logo`, `total_jam_bulan`, `denda`, `face_recognition`, `created_at`, `updated_at`, `periode_laporan_dari`, `periode_laporan_sampai`, `periode_laporan_next_bulan`, `cloud_id`, `api_key`, `domain_email`, `domain_wa_gateway`, `wa_api_key`, `batasi_absen`, `batas_jam_absen`, `batas_jam_absen_pulang`, `multi_lokasi`, `notifikasi_wa`, `batasi_hari_izin`, `jml_hari_izin_max`, `batas_presensi_lintashari`) VALUES
(1, 'yayasan al jariyah', 'Jl. rubaya', '031-1234563838', '1754965649.png', 173, 0, 0, '2025-03-12 21:19:58', '2025-08-12 19:46:25', 21, 20, 1, NULL, NULL, 'presensi.site', 'http://localhost:3000', 'JAVSBcN2MFggS5idxtnN', 1, 2, 3, 1, 1, 1, 2, '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_permission_group` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `id_permission_group`) VALUES
(1, 'karyawan.index', 'web', '2024-03-14 16:46:35', '2024-03-14 16:46:35', 1),
(2, 'karyawan.create', 'web', '2024-03-14 16:46:44', '2024-03-14 16:46:44', 1),
(3, 'karyawan.edit', 'web', '2024-03-14 16:46:54', '2024-03-14 16:46:54', 1),
(4, 'karyawan.show', 'web', '2024-03-14 16:48:11', '2024-03-14 16:48:11', 1),
(5, 'karyawan.delete', 'web', '2024-03-14 16:48:18', '2024-03-14 16:48:18', 1),
(6, 'departemen.index', 'web', '2024-03-14 16:56:41', '2024-03-14 16:56:41', 2),
(7, 'departemen.create', 'web', '2024-03-14 16:57:08', '2024-03-14 16:57:08', 2),
(8, 'departemen.edit', 'web', '2024-03-14 16:57:16', '2024-03-14 16:57:16', 2),
(9, 'departemen.delete', 'web', '2024-03-14 16:57:32', '2024-03-14 16:57:32', 2),
(10, 'cabang.index', 'web', '2024-03-14 17:12:07', '2024-03-14 17:12:07', 3),
(11, 'cabang.create', 'web', '2024-03-14 17:12:15', '2024-03-14 17:12:15', 3),
(12, 'cabang.edit', 'web', '2024-03-14 17:12:25', '2024-03-14 17:12:25', 3),
(13, 'cabang.delete', 'web', '2024-03-14 17:12:41', '2024-03-14 17:12:41', 3),
(14, 'cuti.index', 'web', '2024-03-14 17:15:53', '2024-03-14 17:15:53', 4),
(15, 'cuti.create', 'web', '2024-03-14 17:16:00', '2024-03-14 17:16:00', 4),
(16, 'cuti.edit', 'web', '2024-03-14 17:16:09', '2024-03-14 17:16:09', 4),
(17, 'cuti.delete', 'web', '2024-03-14 17:16:20', '2024-03-14 17:16:20', 4),
(18, 'presensi.index', 'web', '2024-03-14 17:22:37', '2025-01-22 21:15:52', 10),
(19, 'karyawan.lockunlocklocation', 'web', '2024-05-25 15:39:29', '2024-05-25 15:39:29', 1),
(20, 'karyawan.lockunlockjamkerja', 'web', '2024-05-25 15:39:40', '2024-05-25 15:39:40', 1),
(21, 'karyawan.setjamkerja', 'web', '2024-10-14 20:38:16', '2024-10-14 20:38:16', 1),
(22, 'jamkerja.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(23, 'jamkerja.create', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(24, 'jamkerja.edit', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(25, 'jamkerja.show', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(26, 'jamkerja.delete', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(27, 'suratjalancabang.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(28, 'harilibur.index', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(29, 'harilibur.create', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(30, 'harilibur.edit', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(31, 'harilibur.show', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(32, 'harilibur.delete', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(33, 'harilibur.setharilibur', 'web', '2024-12-25 21:44:03', '2024-12-25 21:44:03', 7),
(34, 'users.index', 'web', '2025-01-21 15:02:01', '2025-01-21 15:02:01', 8),
(35, 'users.create', 'web', '2025-01-21 15:02:09', '2025-01-21 15:02:09', 8),
(36, 'users.edit', 'web', '2025-01-21 15:02:20', '2025-01-21 15:02:20', 8),
(37, 'users.delete', 'web', '2025-01-21 15:02:31', '2025-01-21 15:02:31', 8),
(38, 'presensi.create', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(39, 'presensi.edit', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(40, 'presensi.delete', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(41, 'jamkerjabydept.index', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(42, 'jamkerjabydept.create', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(43, 'jamkerjabydept.edit', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(44, 'jamkerjabydept.delete', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(45, 'izinabsen.index', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(46, 'izinabsen.create', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(47, 'izinabsen.edit', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(48, 'izinabsen.delete', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(49, 'izinsakit.index', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(50, 'izinsakit.create', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(51, 'izinsakit.edit', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(52, 'izinsakit.delete', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(53, 'izinsakit.approve', 'web', '2025-01-29 21:52:51', '2025-01-29 21:52:51', 13),
(54, 'izincuti.index', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(55, 'izincuti.create', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(56, 'izincuti.edit', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(57, 'izincuti.delete', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(58, 'izincuti.approve', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(59, 'izinabsen.approve', 'web', '2025-02-01 22:46:19', '2025-02-01 22:46:19', 12),
(60, 'jabatan.index', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(61, 'jabatan.create', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(62, 'jabatan.edit', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(63, 'jabatan.show', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(64, 'jabatan.delete', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(65, 'generalsetting.index', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(66, 'generalsetting.create', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(67, 'generalsetting.edit', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(68, 'generalsetting.show', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(69, 'generalsetting.delete', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(70, 'laporan.presensi', 'web', '2025-03-13 00:36:30', '2025-03-13 00:36:30', 17),
(71, 'wagateway.index', 'web', '2025-05-19 20:11:48', '2025-05-19 20:11:48', 18),
(72, 'gajipokok.index', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(73, 'gajipokok.create', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(74, 'gajipokok.edit', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(75, 'gajipokok.show', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(76, 'gajipokok.delete', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(77, 'jenistunjangan.index', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(78, 'jenistunjangan.create', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(79, 'jenistunjangan.edit', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(80, 'jenistunjangan.show', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(81, 'jenistunjangan.delete', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(82, 'tunjangan.index', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(83, 'tunjangan.create', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(84, 'tunjangan.edit', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(85, 'tunjangan.show', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(86, 'tunjangan.delete', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(87, 'bpjskesehatan.index', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(88, 'bpjskesehatan.create', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(89, 'bpjskesehatan.edit', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(90, 'bpjskesehatan.show', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(91, 'bpjskesehatan.delete', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(92, 'bpjstenagakerja.index', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(93, 'bpjstenagakerja.create', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(94, 'bpjstenagakerja.edit', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(95, 'bpjstenagakerja.show', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(96, 'bpjstenagakerja.delete', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(97, 'penyesuaiangaji.index', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(98, 'penyesuaiangaji.create', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(99, 'penyesuaiangaji.edit', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(100, 'penyesuaiangaji.show', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(101, 'penyesuaiangaji.delete', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(102, 'slipgaji.index', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25),
(103, 'slipgaji.create', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25),
(104, 'slipgaji.edit', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25),
(105, 'slipgaji.delete', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25),
(106, 'lembur.index', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26),
(107, 'lembur.create', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26),
(108, 'lembur.edit', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26),
(109, 'lembur.delete', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26),
(110, 'lembur.approve', 'web', '2025-07-05 15:07:36', '2025-07-05 15:07:36', 26),
(111, 'izindinas.index', 'web', '2025-07-28 17:34:46', '2025-07-28 17:34:46', 27),
(112, 'izindinas.create', 'web', '2025-07-28 17:34:46', '2025-07-28 17:34:46', 27),
(113, 'izindinas.edit', 'web', '2025-07-28 17:34:46', '2025-07-28 17:34:46', 27),
(114, 'izindinas.delete', 'web', '2025-07-28 17:34:46', '2025-07-28 17:34:46', 27),
(115, 'izindinas.approve', 'web', '2025-07-28 17:34:46', '2025-07-28 17:34:46', 27);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Karyawan', '2024-03-14 16:46:22', '2024-03-14 16:46:22'),
(2, 'Departemen', '2024-03-14 16:55:53', '2024-03-14 16:55:53'),
(3, 'Cabang', '2024-03-14 17:09:23', '2024-03-14 17:09:23'),
(4, 'Cuti', '2024-03-14 17:15:40', '2024-03-14 17:15:40'),
(5, 'Presensi', '2024-03-14 17:22:00', '2024-03-14 17:22:00'),
(6, 'Jam Kerja', '2024-12-01 21:41:55', '2024-12-01 21:41:55'),
(7, 'Haril Libur', '2024-12-25 21:16:11', '2024-12-25 21:16:11'),
(8, 'User', '2025-01-21 15:01:51', '2025-01-21 15:01:51'),
(10, 'Presensi', '2025-01-22 21:14:08', '2025-01-22 21:14:08'),
(11, 'Jam Kerja Departemen', '2025-01-22 22:42:39', '2025-01-22 22:42:39'),
(12, 'Izin Absen', '2025-01-27 08:40:47', '2025-01-27 08:40:47'),
(13, 'Izin Sakit', '2025-01-29 21:10:31', '2025-01-29 21:10:31'),
(14, 'Izin Cuti', '2025-02-01 20:20:35', '2025-02-01 20:20:35'),
(15, 'Jabatan', '2025-03-01 21:27:48', '2025-03-01 21:27:48'),
(16, 'General Setting', '2025-03-12 18:49:24', '2025-03-12 18:49:24'),
(17, 'Laporan', '2025-03-13 00:36:30', '2025-03-13 00:36:30'),
(18, 'WA Gateway', '2025-05-19 20:11:48', '2025-05-19 20:11:48'),
(19, 'Gaji Pokok', '2025-05-28 16:08:43', '2025-05-28 16:08:43'),
(20, 'Jenis Tunjangan', '2025-05-29 14:48:28', '2025-05-29 14:48:28'),
(21, 'Tunjangan', '2025-05-30 15:47:12', '2025-05-30 15:47:12'),
(22, 'Bpjs Kesehatan', '2025-06-06 13:20:52', '2025-06-06 13:20:52'),
(23, 'Bpjs Tenaga Kerja', '2025-06-06 14:48:31', '2025-06-06 14:48:31'),
(24, 'Penyesuaian Gaji', '2025-06-08 14:15:37', '2025-06-08 14:15:37'),
(25, 'Slip Gaji', '2025-06-24 18:40:00', '2025-06-24 18:40:00'),
(26, 'Lembur', '2025-07-04 15:13:10', '2025-07-04 15:13:10'),
(27, 'Izin Dinas', '2025-07-28 17:34:46', '2025-07-28 17:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_in` datetime DEFAULT NULL,
  `jam_out` datetime DEFAULT NULL,
  `foto_in` varchar(255) DEFAULT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` varchar(255) DEFAULT NULL,
  `lokasi_out` varchar(255) DEFAULT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `istirahat_in` datetime DEFAULT NULL,
  `lokasi_istirahat_in` varchar(255) DEFAULT NULL,
  `foto_istirahat_in` varchar(255) DEFAULT NULL,
  `istirahat_out` datetime DEFAULT NULL,
  `lokasi_istirahat_out` varchar(255) DEFAULT NULL,
  `foto_istirahat_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `nik`, `tanggal`, `jam_in`, `jam_out`, `foto_in`, `foto_out`, `lokasi_in`, `lokasi_out`, `kode_jam_kerja`, `status`, `created_at`, `updated_at`, `istirahat_in`, `lokasi_istirahat_in`, `foto_istirahat_in`, `istirahat_out`, `lokasi_istirahat_out`, `foto_istirahat_out`) VALUES
(54, '00.00.000', '2025-05-13', '2025-05-13 06:45:00', NULL, NULL, NULL, NULL, NULL, 'JK01', 'h', '2025-05-13 18:40:07', '2025-05-13 18:40:07', NULL, NULL, NULL, NULL, NULL, NULL),
(57, '00.00.000', '2025-05-14', '2025-05-14 23:32:00', NULL, '22.22.224-2025-05-14-in.png', NULL, '-6.7403776,108.5374464', NULL, 'JK03', 'h', '2025-05-14 23:32:32', '2025-05-14 23:32:32', NULL, NULL, NULL, NULL, NULL, NULL),
(59, '00.00.000', '2025-05-21', '2025-05-21 22:04:00', '2025-05-22 05:40:00', '22.22.224-2025-05-21-in.png', '22.22.224-2025-05-21-out.png', '-6.7272704,108.5472768', '-6.7272704,108.5472768', 'JK03', 'h', '2025-05-21 22:04:50', '2025-05-22 05:40:39', NULL, NULL, NULL, NULL, NULL, NULL),
(60, '00.00.000', '2025-05-26', '2025-05-25 18:34:00', NULL, '22.22.224-2025-05-25-in.png', NULL, '-6.9075,107.8151', NULL, 'JK05', 'h', '2025-05-25 18:34:14', '2025-05-25 18:34:14', NULL, NULL, NULL, NULL, NULL, NULL),
(63, '00.00.000', '2025-05-31', '2025-05-31 16:37:00', NULL, '22.22.224-2025-05-31-in.png', NULL, '-6.8419,108.0232', NULL, 'JK04', 'h', '2025-05-31 16:37:59', '2025-05-31 16:37:59', NULL, NULL, NULL, NULL, NULL, NULL),
(64, '00.00.000', '2025-06-01', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 16:16:18', '2025-06-01 16:16:18', NULL, NULL, NULL, NULL, NULL, NULL),
(65, '00.00.000', '2025-05-02', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 16:36:51', '2025-06-01 16:36:51', NULL, NULL, NULL, NULL, NULL, NULL),
(68, '00.00.000', '2025-06-10', '2025-06-10 17:21:00', '2025-06-10 17:21:00', '22.22.224-2025-06-10-in.png', '22.22.224-2025-06-10-out.png', '-6.9075,107.8151', '-6.9075,107.8151', 'JK03', 'h', '2025-06-10 17:21:13', '2025-06-10 17:21:41', NULL, NULL, NULL, NULL, NULL, NULL),
(69, '00.00.000', '2025-07-08', '2025-07-08 05:14:00', NULL, '22.22.224-2025-07-08-in.png', NULL, '-5.390336,105.2737536', NULL, 'JK01', 'h', '2025-07-08 05:14:36', '2025-07-08 08:04:45', '2025-07-08 08:04:00', '-5.390336,105.2737536', '22.22.224-2025-07-08-in.png', NULL, NULL, NULL),
(73, '00.00.000', '2025-07-14', '2025-07-14 19:53:00', NULL, '22.22.224-2025-07-14-in.png', NULL, '-6.193152,106.7384832', NULL, 'JK04', 'h', '2025-07-14 19:53:20', '2025-07-14 19:54:41', '2025-07-14 19:53:00', '-6.193152,106.7384832', '22.22.224-2025-07-14-in.png', '2025-07-14 19:54:00', '-6.193152,106.7384832', '22.22.224-2025-07-14-out.png'),
(77, '00.00.000', '2025-07-19', '2025-07-19 17:27:00', NULL, '22.22.224-2025-07-19-in.png', NULL, '-6.9177,107.7226', NULL, 'JK04', 'h', '2025-07-19 17:27:08', '2025-07-19 17:27:08', NULL, NULL, NULL, NULL, NULL, NULL),
(80, '00.00.000', '2025-07-21', '2025-07-21 16:25:00', NULL, '22.22.224-2025-07-21-in.png', NULL, '-5.3772288,105.2606464', NULL, 'JK04', 'h', '2025-07-21 16:25:10', '2025-07-21 16:25:10', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '00.00.000', '2024-07-24', '2024-07-24 08:00:00', '2024-07-24 16:00:00', NULL, NULL, NULL, NULL, 'JK03', 'h', '2025-07-24 17:26:45', '2025-07-24 17:27:10', NULL, NULL, NULL, NULL, NULL, NULL),
(83, '00.00.000', '2025-07-25', '2025-07-25 22:24:00', NULL, '22.22.224-2025-07-25-in.png', NULL, '-6.9177,107.7226', NULL, 'JK01', 'h', '2025-07-25 22:24:16', '2025-07-25 22:24:16', NULL, NULL, NULL, NULL, NULL, NULL),
(84, '00.00.000', '2025-07-26', '2025-07-26 07:12:00', NULL, '22.22.224-2025-07-26-in.png', NULL, '-7.302417040043266,108.24185936959124', NULL, 'JK04', 'h', '2025-07-26 07:12:20', '2025-07-26 07:12:20', NULL, NULL, NULL, NULL, NULL, NULL),
(95, '00.00.000', '2025-07-31', '2025-07-31 18:31:00', NULL, '22.22.224-2025-07-31-in.png', NULL, '-7.302417040043266,108.24185936959124', NULL, 'JK01', 'h', '2025-07-31 18:31:39', '2025-07-31 18:31:39', NULL, NULL, NULL, NULL, NULL, NULL),
(99, '00.00.000', '2025-08-04', '2025-08-04 20:57:00', NULL, '22.22.224-2025-08-04-in.png', NULL, '-7.302444505653355,108.36294156481085', NULL, 'JK04', 'h', '2025-08-04 20:57:58', '2025-08-04 20:57:58', NULL, NULL, NULL, NULL, NULL, NULL),
(100, '00.22', '2025-08-05', '2025-08-05 12:13:00', NULL, '00.00.02-2025-08-05-in.png', NULL, '-6.2900045,107.3055309', NULL, 'JK02', 'h', '2025-08-05 12:13:59', '2025-08-05 12:13:59', NULL, NULL, NULL, NULL, NULL, NULL),
(102, '00.22', '2025-08-12', '2025-08-12 10:50:00', NULL, '00.00.02-2025-08-12-in.png', NULL, '-6.2900000339527935,107.30514464883643', NULL, '0001', 'h', '2025-08-12 10:50:54', '2025-08-12 10:50:54', NULL, NULL, NULL, NULL, NULL, NULL),
(103, '00.05', '2025-08-12', '2025-08-12 07:01:00', '2025-08-12 15:00:00', '00.00.03-2025-08-12-in.png', '00.00.03-2025-08-12-out.png', '-6.2899998,107.3055446', '-6.2900041,107.3055433', '0001', 'h', '2025-08-12 11:11:43', '2025-08-12 13:46:55', NULL, NULL, NULL, NULL, NULL, NULL),
(105, '11.11.', '2025-08-13', NULL, NULL, NULL, NULL, NULL, NULL, '0001', 'i', '2025-08-13 07:44:01', '2025-08-13 07:44:01', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen`
--

CREATE TABLE `presensi_izinabsen` (
  `kode_izin` char(255) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_izinabsen`
--

INSERT INTO `presensi_izinabsen` (`kode_izin`, `tanggal`, `dari`, `sampai`, `nik`, `keterangan`, `keterangan_hrd`, `status`, `created_at`, `updated_at`) VALUES
('IA25080001', '2025-08-13', '2025-08-13', '2025-08-13', '11.11.', 'izin keperluan', NULL, '1', '2025-08-12 22:15:14', '2025-08-13 07:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen_approve`
--

CREATE TABLE `presensi_izinabsen_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_izinabsen_approve`
--

INSERT INTO `presensi_izinabsen_approve` (`id_presensi`, `kode_izin`, `created_at`, `updated_at`) VALUES
(105, 'IA25080001', '2025-08-13 07:44:01', '2025-08-13 07:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti`
--

CREATE TABLE `presensi_izincuti` (
  `kode_izin_cuti` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `kode_cuti` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti_approve`
--

CREATE TABLE `presensi_izincuti_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_cuti` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izindinas`
--

CREATE TABLE `presensi_izindinas` (
  `kode_izin_dinas` char(255) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_izindinas`
--

INSERT INTO `presensi_izindinas` (`kode_izin_dinas`, `tanggal`, `dari`, `sampai`, `nik`, `keterangan`, `keterangan_hrd`, `status`, `created_at`, `updated_at`) VALUES
('ID25070001', '2025-07-31', '2025-07-31', '2025-07-31', '00.00.000', 'test', NULL, '1', '2025-07-31 18:30:10', '2025-07-31 18:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit`
--

CREATE TABLE `presensi_izinsakit` (
  `kode_izin_sakit` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `doc_sid` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit_approve`
--

CREATE TABLE `presensi_izinsakit_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_sakit` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja`
--

CREATE TABLE `presensi_jamkerja` (
  `kode_jam_kerja` char(4) NOT NULL,
  `nama_jam_kerja` varchar(255) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `istirahat` char(1) NOT NULL,
  `jam_awal_istirahat` time DEFAULT NULL,
  `jam_akhir_istirahat` time DEFAULT NULL,
  `total_jam` smallint(6) NOT NULL,
  `lintashari` char(1) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja`
--

INSERT INTO `presensi_jamkerja` (`kode_jam_kerja`, `nama_jam_kerja`, `jam_masuk`, `jam_pulang`, `istirahat`, `jam_awal_istirahat`, `jam_akhir_istirahat`, `total_jam`, `lintashari`, `keterangan`, `created_at`, `updated_at`) VALUES
('0001', 'non shift', '08:00:00', '16:00:00', '0', NULL, NULL, 9, '0', 'normal', '2025-08-12 09:33:36', '2025-08-12 20:35:28'),
('JK01', 'NON SHIFT', '07:00:00', '16:00:00', '0', '08:00:00', '12:30:00', 9, '1', 'normal', NULL, '2025-08-12 09:32:51'),
('JK02', 'SHIFT 1', '07:00:00', '15:00:00', '1', '11:30:00', '12:30:00', 7, '0', 'Mantap', '2024-12-17 22:11:39', '2024-12-17 22:21:00'),
('JK03', 'SHIFT 3', '22:00:00', '07:00:00', '1', '04:00:00', '05:00:00', 7, '1', '-', '2025-03-01 20:58:19', '2025-05-21 22:04:31'),
('JK04', 'SHIFT 2', '15:00:00', '23:00:00', '1', '19:00:00', '20:00:00', 7, '0', NULL, '2025-05-06 21:03:37', '2025-07-14 19:44:35'),
('JK05', 'SHIFT 4', '18:00:00', '23:00:00', '1', '04:00:00', '05:00:00', 7, '0', '-', '2025-05-11 00:40:34', '2025-05-25 18:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydate`
--

CREATE TABLE `presensi_jamkerja_bydate` (
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydate`
--

INSERT INTO `presensi_jamkerja_bydate` (`nik`, `tanggal`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('00.22', '2025-08-12', '0001', '2025-08-12 10:36:59', '2025-08-12 10:36:59'),
('00.05', '2025-08-12', '0001', '2025-08-12 11:10:06', '2025-08-12 11:10:06'),
('00.16', '2025-08-12', '0001', '2025-08-12 12:32:59', '2025-08-12 12:32:59'),
('00.04', '2025-08-12', '0001', '2025-08-12 12:33:24', '2025-08-12 12:33:24'),
('00.02', '2025-08-12', '0001', '2025-08-12 14:31:13', '2025-08-12 14:31:13'),
('00.13', '2025-08-12', 'JK03', '2025-08-12 20:42:06', '2025-08-12 20:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_byday`
--

CREATE TABLE `presensi_jamkerja_byday` (
  `nik` char(9) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_byday`
--

INSERT INTO `presensi_jamkerja_byday` (`nik`, `hari`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('00.00.000', 'Senin', 'JK04', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Selasa', 'JK01', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Rabu', 'JK03', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Kamis', 'JK01', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Jumat', 'JK01', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Sabtu', 'JK04', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.00.000', 'Minggu', 'JK05', '2025-07-14 19:40:52', '2025-07-14 19:40:52'),
('00.22', 'Selasa', 'JK02', '2025-08-05 11:59:06', '2025-08-05 11:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept`
--

CREATE TABLE `presensi_jamkerja_bydept` (
  `kode_jk_dept` char(7) NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept`
--

INSERT INTO `presensi_jamkerja_bydept` (`kode_jk_dept`, `kode_cabang`, `kode_dept`, `created_at`, `updated_at`) VALUES
('JBGRA', 'BGR', 'A', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRAKT', 'BGR', 'AKT', '2025-01-23 21:02:24', '2025-01-23 21:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept_detail`
--

CREATE TABLE `presensi_jamkerja_bydept_detail` (
  `kode_jk_dept` char(7) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept_detail`
--

INSERT INTO `presensi_jamkerja_bydept_detail` (`kode_jk_dept`, `hari`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('JBGRAKT', 'Senin', 'JK02', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Selasa', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Rabu', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Kamis', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Jumat', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Sabtu', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRAKT', 'Minggu', 'JK02', '2025-01-23 21:28:00', '2025-01-23 21:28:00'),
('JBGRA', 'Senin', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Selasa', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Rabu', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Kamis', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Jumat', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Sabtu', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46'),
('JBGRA', 'Minggu', '0001', '2025-08-12 19:47:46', '2025-08-12 19:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2024-03-14 16:31:06', '2024-03-14 16:31:06'),
(2, 'admin departemen', 'web', '2024-03-14 16:51:49', '2024-03-14 16:51:49'),
(3, 'karyawan', 'web', '2025-01-21 14:42:30', '2025-01-21 14:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(40, 3),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(70, 2),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(102, 2),
(102, 3),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(106, 3),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(114, 1),
(114, 3),
(115, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5cnJxgTlUgeZRaYcvCnKRx9jmdlypdUC39uXaVcg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0c0YU9PeXdXMURXQWdURGxuQVZwRXpjTjN2a2FoMk1LZ2RaVWt2UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747891930),
('bHztnxwTzMnoA0Eq9K6SlFbASUMvxk8NM0cK0BVT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm1xMERXakp2bFR2dW1abFcwS2lBNHZLUzRsYTBpQ1A0WlZoR1NyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747869124),
('GmB1EFcJigpcehMkuclwnXOeg7ZBlDCqJtqMdxlH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0FPRXJsVlU2UG9zWUFFSHBqWWN0ZVJ2b0lqZFdQbk43WWY5bVR4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXJ5YXdhbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1747695657),
('V9m7zD1SgRzTFUG4ZocXR3Nbj7orWoTUTVQABzn5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSkY2OEtvZ21SZEZVVVZRd2MxVkhTdGY3VFRwd1pXWk1MRngyREhQcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748181137),
('WfkoxeJDZw3M8hskj6FTcPZHCxq2jgZ9NNn18uEi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREt3UkVSNFMyRzVnTGpYSklHZGNnRFJMSnhqMUxiMkhPSFo4WUdaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748172920),
('YuXDjDSUhQROI2eedBORZrhCpr7wgluzmnYCp1Pl', 12, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1lneG1aUEFTRVZTbW1kdjAzTVNSM3hNTHlMcnYwOWVRMmh6ZlkzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYWNlcmVjb2duaXRpb24vZ2V0d2FqYWg/dD0xNzQ3NjY5ODk0NDQ5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1747662701);

-- --------------------------------------------------------

--
-- Table structure for table `slip_gaji`
--

CREATE TABLE `slip_gaji` (
  `kode_slip_gaji` char(8) NOT NULL,
  `bulan` smallint(6) NOT NULL,
  `tahun` char(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slip_gaji`
--

INSERT INTO `slip_gaji` (`kode_slip_gaji`, `bulan`, `tahun`, `status`, `created_at`, `updated_at`) VALUES
('GJ62025', 7, '2025', 1, '2025-06-26 17:37:38', '2025-07-19 15:52:30'),
('GJ82025', 8, '2025', 1, '2025-08-05 13:26:10', '2025-08-05 13:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `status_kawin`
--

CREATE TABLE `status_kawin` (
  `kode_status_kawin` char(2) NOT NULL,
  `status_kawin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_kawin`
--

INSERT INTO `status_kawin` (`kode_status_kawin`, `status_kawin`, `created_at`, `updated_at`) VALUES
('HB', 'Telah Berpisah Secara Hukum / Janda / Duda', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K0', 'Kawin Belum Punya Tanggungan', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K1', 'Kawin Punya Tanggungan 1', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K2', 'Kawin PUnya Tanggungan 2', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K3', 'Kawin PUnya Tanggungan 3', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('TK', 'Tidak Kawin', '2024-04-27 21:20:47', '2024-04-27 21:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'MUHIDIN', '00.22', 'h@gghh', NULL, '$2y$12$UtXGqJsG6BU254BxMSUcVuUaGCpfub9beloIznCKz6iZF7XCXjhQ2', 'IVNou1GUoj8mtFp3r0cB5fHRwqWHcMeA9PxCgtlHP4GYNDAm4dIMoz4WCOW6', '2025-08-05 11:58:50', '2025-08-12 11:49:10'),
(17, 'admin', 'admin', '0000000@presensi.site', NULL, '$2y$12$IKHe8uqTOhoLxXsiAJMcrOGBYObwQ2GR/xcpjvqlrmpt6zXXbpGZm', 'LnsR5c0SVd1uBYbn9GjkgyJ8w4y38ona8wl425D6Id1x9qkytzDi7vKcXvYd', '2025-08-12 09:44:54', '2025-08-12 14:04:11'),
(21, 'Ana marliana', '00.05', '000003@presensi.site', NULL, '$2y$12$I2Y0typlI15zPkonYDnCMuOOXE6Toz78iGZNF6b4Pjh0njhv28eTK', NULL, '2025-08-12 10:32:18', '2025-08-12 11:51:51'),
(23, 'anggreani', '00.20', '01@presensi.site', NULL, '$2y$12$mD3YUa3q7mUuZbHTCz1AuuqHHAlMlenBYqkqUsTQlU2PmHzcVV1QG', NULL, '2025-08-12 11:22:25', '2025-08-12 11:48:29'),
(24, 'Alya fitriani', '00.12', '0012@presensi.site', NULL, '$2y$12$FuphiSAEKaHR76jdUHuIlevOoZHoCPanMF4f0Zg/TZhq8iLgFo5TW', NULL, '2025-08-12 12:21:17', '2025-08-12 12:21:17'),
(25, 'Alamsyah', '00.16', '0016@presensi.site', NULL, '$2y$12$NjizrnFd5Mjlzk0HoN/iGuu3ozsk1ShM.3BRS3/REAaNQh7LvZQNK', NULL, '2025-08-12 12:21:21', '2025-08-12 12:21:21'),
(26, 'Anisah septyarini', '00.10', '0010@presensi.site', NULL, '$2y$12$eBD3fw8y55u8IV9R6sLmYOyBqva82XMa.KF843JNJyVxG4OyHz1ru', NULL, '2025-08-12 12:21:25', '2025-08-12 12:21:25'),
(27, 'Elin Ristiati', '00.11', '0011@presensi.site', NULL, '$2y$12$Z/vwYRee./8v2EVcSlwtt.hFHHWQV5IpPe6eKX1vuzsIOthepK/vS', NULL, '2025-08-12 12:21:29', '2025-08-12 12:21:29'),
(28, 'Karyadi', '00.14', '0014@presensi.site', NULL, '$2y$12$UTe0vcKbe.FlbAlyXBNimeiNc7WCQIWgeqhHfOcB3qqmAE42jjaVq', NULL, '2025-08-12 12:21:33', '2025-08-12 12:21:33'),
(29, 'M.ridho', '00.08', '0008@presensi.site', NULL, '$2y$12$BjCvecu5Zk3JC/MzHZ2Er.5im3JXcKweoxv0w40t6tvDi6Sk9UXtG', NULL, '2025-08-12 12:21:37', '2025-08-12 12:21:37'),
(30, 'Nana sumarna', '00.06', '0006@presensi.site', NULL, '$2y$12$Szz2.Yc8gDaHySVYeVAKvueA5GhYXUWLtNpHgDcVQO5zKu4aw.p..', NULL, '2025-08-12 12:21:40', '2025-08-12 12:21:40'),
(31, 'Neneng farliah', '00.13', '0013@presensi.site', NULL, '$2y$12$lwWKw65SR7Q05UoG2Cyll.PF8NpvOcBobEw6uBJBaMFlsl2FBzHbi', NULL, '2025-08-12 12:21:44', '2025-08-12 12:21:44'),
(32, 'Nesam sugiri', '00.04', '0004@presensi.site', NULL, '$2y$12$niDfaEjxWxjNqlWz82Ng6u7Tt76SyZE.XbjICXGwKpB1QLjxBrauC', NULL, '2025-08-12 12:21:49', '2025-08-12 12:21:49'),
(33, 'Rakhmat hadi wiria', '00.01', '0001@presensi.site', NULL, '$2y$12$c3PHfzINMWgmRef7Qs0jq.Dycg4xHjmj.pcAlGZMxOAwqV5lqQtgG', NULL, '2025-08-12 12:21:52', '2025-08-12 12:21:52'),
(34, 'siti dudah. M', '00.09', '0009@presensi.site', NULL, '$2y$12$GjqUZxnrdTxTzY7vamWPeODnGmsHmtca0cZcKv8my/KY8x3dI5s4a', NULL, '2025-08-12 12:21:58', '2025-08-12 12:21:58'),
(35, 'suganda', '00.02', '0002@presensi.site', NULL, '$2y$12$3m55v0hCEzcGYMVKzLvbuuDBU73/DQiLmD6CUMmSX8XbQ5//O05MW', NULL, '2025-08-12 12:22:07', '2025-08-12 12:22:07'),
(36, 'Wawan Hermawan', '00.07', '0007@presensi.site', NULL, '$2y$12$fClZODX1y40J.gkwiAq.DOnA954h8dtGv4Z2yk65V5lnQl2Z7xKdi', NULL, '2025-08-12 12:22:16', '2025-08-12 12:22:16'),
(37, 'yana mulyana', '00.03', '0003@presensi.site', NULL, '$2y$12$3QVA35OkBawv5OGhPKryne2K1GJLX3HlbU486pVlf9A3uVpTsDMei', NULL, '2025-08-12 12:22:23', '2025-08-12 12:22:23'),
(38, 'Yoyo', '00.15', '0015@presensi.site', NULL, '$2y$12$5.YQAHSOvFghSOa41F26AOlzmKXbN3U879pkF6PxGSKTQt8e48jUm', NULL, '2025-08-12 12:22:28', '2025-08-12 12:22:28'),
(40, 'sabila asyasyifa putri', '00.21', '0021@presensi.site', NULL, '$2y$12$D/F01N34gPMUFpH.y0Ft5.AehLmg5M/k3lGIATP.aoSpFcveHRBHO', NULL, '2025-08-12 13:58:19', '2025-08-12 13:58:19'),
(42, 'admin sekoalh', '22.22', '2222@presensi.site', NULL, '$2y$12$lsRpLJVJAz7x6a837IpfT./zyctyFr9Q9dO2X7apFAJ31vWGYSy/6', NULL, '2025-08-12 15:26:45', '2025-08-12 15:27:01'),
(43, 'dimas', '11.11.', '1111@presensi.site', NULL, '$2y$12$RGvewa3.N4C33mppR23DFOC2w7MAxluzTpCkZIVO4oTDJdphaYE7C', NULL, '2025-08-12 22:13:59', '2025-08-12 22:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `users_karyawan`
--

CREATE TABLE `users_karyawan` (
  `nik` char(10) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_karyawan`
--

INSERT INTO `users_karyawan` (`nik`, `id_user`, `created_at`, `updated_at`) VALUES
('00.22', 16, '2025-08-05 11:58:50', '2025-08-05 11:58:50'),
('00.00.000', 17, '2025-08-12 09:44:54', '2025-08-12 09:44:54'),
('00.05', 21, '2025-08-12 10:32:18', '2025-08-12 10:32:18'),
('00.20', 23, '2025-08-12 11:22:25', '2025-08-12 11:22:25'),
('00.12', 24, '2025-08-12 12:21:17', '2025-08-12 12:21:17'),
('00.16', 25, '2025-08-12 12:21:21', '2025-08-12 12:21:21'),
('00.10', 26, '2025-08-12 12:21:25', '2025-08-12 12:21:25'),
('00.11', 27, '2025-08-12 12:21:29', '2025-08-12 12:21:29'),
('00.14', 28, '2025-08-12 12:21:33', '2025-08-12 12:21:33'),
('00.08', 29, '2025-08-12 12:21:37', '2025-08-12 12:21:37'),
('00.06', 30, '2025-08-12 12:21:40', '2025-08-12 12:21:40'),
('00.13', 31, '2025-08-12 12:21:44', '2025-08-12 12:21:44'),
('00.04', 32, '2025-08-12 12:21:49', '2025-08-12 12:21:49'),
('00.01', 33, '2025-08-12 12:21:52', '2025-08-12 12:21:52'),
('00.09', 34, '2025-08-12 12:21:58', '2025-08-12 12:21:58'),
('00.02', 35, '2025-08-12 12:22:07', '2025-08-12 12:22:07'),
('00.07', 36, '2025-08-12 12:22:16', '2025-08-12 12:22:16'),
('00.03', 37, '2025-08-12 12:22:23', '2025-08-12 12:22:23'),
('00.15', 38, '2025-08-12 12:22:28', '2025-08-12 12:22:28'),
('00.21', 40, '2025-08-12 13:58:19', '2025-08-12 13:58:19'),
('22.22', 42, '2025-08-12 15:26:45', '2025-08-12 15:26:45'),
('11.11.', 43, '2025-08-12 22:13:59', '2025-08-12 22:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `wamessages`
--

CREATE TABLE `wamessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT '2025-06-10 16:26:41',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wamessages`
--

INSERT INTO `wamessages` (`id`, `sender`, `receiver`, `message`, `status`, `error_message`, `sent_at`, `created_at`, `updated_at`) VALUES
(113, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(114, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(115, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(116, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(117, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(118, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(119, '6282220804021:82@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(120, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ttt', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(121, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(122, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '12', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(123, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '22', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(124, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'TESTTT', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(125, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggggg', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(126, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggg', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(127, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'tttt', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(128, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(129, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'hhhh', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(130, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ddd', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(131, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'gggg', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL),
(132, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'bbbbb', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`kode_cabang`) USING BTREE;

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`kode_cuti`) USING BTREE;

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kode_dept`) USING BTREE;

--
-- Indexes for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_kode_cabang_foreign` (`kode_cabang`) USING BTREE;

--
-- Indexes for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD KEY `hari_libur_detail_kode_libur_foreign` (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_detail_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `jenis_tunjangan`
--
ALTER TABLE `jenis_tunjangan`
  ADD PRIMARY KEY (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`) USING BTREE,
  ADD KEY `karyawan_kode_dept_foreign` (`kode_dept`) USING BTREE,
  ADD KEY `karyawan_kode_jabatan_foreign` (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD PRIMARY KEY (`kode_bpjs_kesehatan`) USING BTREE,
  ADD KEY `karyawan_bpjskesehatan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD PRIMARY KEY (`kode_bpjs_tk`) USING BTREE,
  ADD KEY `karyawan_bpjstenagakerja_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD PRIMARY KEY (`kode_gaji`) USING BTREE,
  ADD KEY `karyawan_gaji_pokok_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji`
--
ALTER TABLE `karyawan_penyesuaian_gaji`
  ADD PRIMARY KEY (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD KEY `karyawan_penyesuaian_gaji_detail_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD PRIMARY KEY (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD KEY `karyawan_tunjangan_detail_kode_tunjangan_foreign` (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `karyawan_wajah_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `lembur`
--
ALTER TABLE `lembur`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE,
  ADD KEY `permissions_id_permission_group_foreign` (`id_permission_group`) USING BTREE;

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `presensi_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD PRIMARY KEY (`kode_izin`) USING BTREE,
  ADD KEY `presensi_izinabsen_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinabsen_approve_kode_izin_foreign` (`kode_izin`) USING BTREE;

--
-- Indexes for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD PRIMARY KEY (`kode_izin_cuti`) USING BTREE,
  ADD KEY `presensi_izincuti_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_izincuti_kode_cuti_foreign` (`kode_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izincuti_approve_kode_izin_cuti_foreign` (`kode_izin_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izindinas`
--
ALTER TABLE `presensi_izindinas`
  ADD PRIMARY KEY (`kode_izin_dinas`) USING BTREE,
  ADD KEY `presensi_izindinas_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD PRIMARY KEY (`kode_izin_sakit`) USING BTREE,
  ADD KEY `presensi_izinsakit_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinsakit_approve_kode_izin_sakit_foreign` (`kode_izin_sakit`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja`
--
ALTER TABLE `presensi_jamkerja`
  ADD PRIMARY KEY (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD KEY `presensi_jamkerja_bydate_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD KEY `presensi_jamkerja_byday_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_byday_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept`
--
ALTER TABLE `presensi_jamkerja_bydept`
  ADD PRIMARY KEY (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `status_kawin`
--
ALTER TABLE `status_kawin`
  ADD PRIMARY KEY (`kode_status_kawin`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD KEY `users_karyawan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `wamessages`
--
ALTER TABLE `wamessages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `lembur`
--
ALTER TABLE `lembur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wamessages`
--
ALTER TABLE `wamessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD CONSTRAINT `hari_libur_kode_cabang_foreign` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON UPDATE CASCADE;

--
-- Constraints for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD CONSTRAINT `hari_libur_detail_kode_libur_foreign` FOREIGN KEY (`kode_libur`) REFERENCES `hari_libur` (`kode_libur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hari_libur_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_kode_dept_foreign` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_kode_jabatan_foreign` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD CONSTRAINT `karyawan_bpjskesehatan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD CONSTRAINT `karyawan_bpjstenagakerja_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD CONSTRAINT `karyawan_gaji_pokok_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` FOREIGN KEY (`kode_penyesuaian_gaji`) REFERENCES `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD CONSTRAINT `karyawan_tunjangan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` FOREIGN KEY (`kode_jenis_tunjangan`) REFERENCES `jenis_tunjangan` (`kode_jenis_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_tunjangan_foreign` FOREIGN KEY (`kode_tunjangan`) REFERENCES `karyawan_tunjangan` (`kode_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD CONSTRAINT `karyawan_wajah_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_id_permission_group_foreign` FOREIGN KEY (`id_permission_group`) REFERENCES `permission_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD CONSTRAINT `presensi_izinabsen_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD CONSTRAINT `presensi_izinabsen_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinabsen_approve_kode_izin_foreign` FOREIGN KEY (`kode_izin`) REFERENCES `presensi_izinabsen` (`kode_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD CONSTRAINT `presensi_izincuti_kode_cuti_foreign` FOREIGN KEY (`kode_cuti`) REFERENCES `cuti` (`kode_cuti`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD CONSTRAINT `presensi_izincuti_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_approve_kode_izin_cuti_foreign` FOREIGN KEY (`kode_izin_cuti`) REFERENCES `presensi_izincuti` (`kode_izin_cuti`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izindinas`
--
ALTER TABLE `presensi_izindinas`
  ADD CONSTRAINT `presensi_izindinas_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD CONSTRAINT `presensi_izinsakit_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD CONSTRAINT `presensi_izinsakit_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinsakit_approve_kode_izin_sakit_foreign` FOREIGN KEY (`kode_izin_sakit`) REFERENCES `presensi_izinsakit` (`kode_izin_sakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD CONSTRAINT `presensi_jamkerja_bydate_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD CONSTRAINT `presensi_jamkerja_byday_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_byday_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` FOREIGN KEY (`kode_jk_dept`) REFERENCES `presensi_jamkerja_bydept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD CONSTRAINT `users_karyawan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
