/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : presensigpsv2

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 08/07/2025 13:34:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cabang
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang`  (
  `kode_cabang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_cabang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_cabang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon_cabang` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_cabang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius_cabang` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_cabang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO `cabang` VALUES ('BGR', 'Bogor', 'Jln. Raya Bogor  no. 27 Kabupaten Bogor', '089671121142', '-6.7272704,108.5341696', 30, '2024-06-15 14:36:25', '2025-05-15 18:35:23');
INSERT INTO `cabang` VALUES ('TSM', 'Tasikmalaya', 'Jln. Perintis Kemerdekaan No. 27', '089670444321', '-7.30240639825841, 108.24185936927442', 30, '2024-06-15 14:44:04', '2025-05-14 21:16:54');

-- ----------------------------
-- Table structure for cuti
-- ----------------------------
DROP TABLE IF EXISTS `cuti`;
CREATE TABLE `cuti`  (
  `kode_cuti` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_hari` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_cuti`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cuti
-- ----------------------------
INSERT INTO `cuti` VALUES ('C01', 'Tahunan', 12, '2024-06-15 15:03:56', '2024-06-15 15:03:56');
INSERT INTO `cuti` VALUES ('C02', 'Melahirkan', 90, '2024-06-15 15:03:56', '2024-06-15 15:03:56');
INSERT INTO `cuti` VALUES ('C03', 'Khusus', 2, '2024-06-15 15:03:56', '2024-10-14 20:31:20');

-- ----------------------------
-- Table structure for denda
-- ----------------------------
DROP TABLE IF EXISTS `denda`;
CREATE TABLE `denda`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dari` smallint NOT NULL,
  `sampai` smallint NOT NULL,
  `denda` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of denda
-- ----------------------------
INSERT INTO `denda` VALUES (2, 1, 5, 5000, '2025-03-12 22:15:38', '2025-03-12 22:15:38');
INSERT INTO `denda` VALUES (3, 6, 10, 10000, '2025-03-12 22:15:45', '2025-03-12 22:15:45');
INSERT INTO `denda` VALUES (4, 11, 15, 15000, '2025-03-12 22:16:26', '2025-03-12 22:16:26');
INSERT INTO `denda` VALUES (5, 15, 59, 25000, '2025-03-12 22:16:39', '2025-03-12 22:21:18');

-- ----------------------------
-- Table structure for departemen
-- ----------------------------
DROP TABLE IF EXISTS `departemen`;
CREATE TABLE `departemen`  (
  `kode_dept` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dept` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_dept`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departemen
-- ----------------------------
INSERT INTO `departemen` VALUES ('AKT', 'Akunting', '2024-06-15 14:24:09', '2024-06-15 14:24:23');
INSERT INTO `departemen` VALUES ('ICT', 'Information Technology', '2024-04-27 21:06:16', '2024-06-15 14:24:14');

-- ----------------------------
-- Table structure for detailtunjangans
-- ----------------------------
DROP TABLE IF EXISTS `detailtunjangans`;
CREATE TABLE `detailtunjangans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detailtunjangans
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for hari_libur
-- ----------------------------
DROP TABLE IF EXISTS `hari_libur`;
CREATE TABLE `hari_libur`  (
  `kode_libur` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `kode_cabang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_libur`) USING BTREE,
  INDEX `hari_libur_kode_cabang_foreign`(`kode_cabang` ASC) USING BTREE,
  CONSTRAINT `hari_libur_kode_cabang_foreign` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hari_libur
-- ----------------------------
INSERT INTO `hari_libur` VALUES ('LB25001', '2025-05-01', 'BGR', 'Hari Buruh', '2025-05-03 21:20:07', '2025-05-03 21:20:07');
INSERT INTO `hari_libur` VALUES ('LB25002', '2025-05-03', 'BGR', 'Cuti Bersama', '2025-05-03 21:23:58', '2025-05-03 21:23:58');

-- ----------------------------
-- Table structure for hari_libur_detail
-- ----------------------------
DROP TABLE IF EXISTS `hari_libur_detail`;
CREATE TABLE `hari_libur_detail`  (
  `kode_libur` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `hari_libur_detail_kode_libur_foreign`(`kode_libur` ASC) USING BTREE,
  INDEX `hari_libur_detail_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `hari_libur_detail_kode_libur_foreign` FOREIGN KEY (`kode_libur`) REFERENCES `hari_libur` (`kode_libur`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hari_libur_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hari_libur_detail
-- ----------------------------
INSERT INTO `hari_libur_detail` VALUES ('LB25001', '22.22.225', '2025-05-03 21:20:15', '2025-05-03 21:20:15');
INSERT INTO `hari_libur_detail` VALUES ('LB25001', '22.22.224', '2025-05-03 21:20:15', '2025-05-03 21:20:15');
INSERT INTO `hari_libur_detail` VALUES ('LB25002', '22.22.225', '2025-05-03 21:27:29', '2025-05-03 21:27:29');
INSERT INTO `hari_libur_detail` VALUES ('LB25002', '22.22.224', '2025-05-03 21:27:29', '2025-05-03 21:27:29');

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `kode_jabatan` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jabatan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES ('J01', 'Kepala ICT', '2024-04-27 21:11:42', '2025-03-01 21:47:33');
INSERT INTO `jabatan` VALUES ('J02', 'Direktur', '2025-03-01 21:56:56', '2025-03-01 21:56:56');

-- ----------------------------
-- Table structure for jenis_tunjangan
-- ----------------------------
DROP TABLE IF EXISTS `jenis_tunjangan`;
CREATE TABLE `jenis_tunjangan`  (
  `kode_jenis_tunjangan` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_tunjangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jenis_tunjangan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis_tunjangan
-- ----------------------------
INSERT INTO `jenis_tunjangan` VALUES ('TJ01', 'Makan', '2025-05-29 15:08:17', '2025-05-30 15:57:12');
INSERT INTO `jenis_tunjangan` VALUES ('TJ02', 'Jabatan', '2025-05-29 15:53:13', '2025-05-30 15:57:16');
INSERT INTO `jenis_tunjangan` VALUES ('TJ03', 'Istri', '2025-05-30 15:57:22', '2025-05-30 15:57:22');
INSERT INTO `jenis_tunjangan` VALUES ('TJ04', 'Tanggung Jawab', '2025-05-30 16:22:23', '2025-05-30 16:22:30');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_karyawan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jenis_kelamin` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_status_kawin` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pendidikan_terakhir` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_cabang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dept` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jabatan` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status_karyawan` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_jadwal` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pin` smallint NULL DEFAULT NULL,
  `tanggal_nonaktif` date NULL DEFAULT NULL,
  `tanggal_off_gaji` date NULL DEFAULT NULL,
  `lock_location` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lock_jam_kerja` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status_aktif_karyawan` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nik`) USING BTREE,
  INDEX `karyawan_kode_dept_foreign`(`kode_dept` ASC) USING BTREE,
  INDEX `karyawan_kode_jabatan_foreign`(`kode_jabatan` ASC) USING BTREE,
  CONSTRAINT `karyawan_kode_dept_foreign` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `karyawan_kode_jabatan_foreign` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('22.22.224', '3207321607111222', 'Adam Adifa', 'Ciamis', '2025-04-28', 'Sindangkasih Ciamis', '089670444321', 'L', 'K2', 'S3', 'TSM', 'ICT', 'J01', '2025-04-28', 'T', '22.22.224.png', NULL, 1, NULL, NULL, '0', '1', '1', '$2y$12$odm2ghh54Zjqda20eg9T/uRAD9C7TLK3R.VWv7r53uJvPaqt3qMeC', '2025-04-29 06:17:11', '2025-06-10 17:17:51');
INSERT INTO `karyawan` VALUES ('22.22.225', '3207321607111222', 'Farhan Rizky', 'Ciamis', '2025-04-28', 'Sindangkasih Ciamis', '089670444322', 'L', 'K2', 'S3', 'BGR', 'ICT', 'J01', '2025-04-28', 'K', '22.22.225.jpg', NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$YS1ZCERXkIXDx6oyefZzEuGSouxwl8Ful3nwy0FqB0q.UA7CO1KxC', '2025-04-29 06:17:12', '2025-05-28 15:59:19');
INSERT INTO `karyawan` VALUES ('55.55.555', '3207321607930005', 'Qiandra Zaydan', 'Ciamis', '1993-06-03', 'Tasikmalay', '089670444322', 'L', 'K2', 'S3', 'BGR', 'AKT', 'J01', '2025-06-26', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$7p5wqiB.uUvBQgJQIMquhuUuRHoEsycUp2OUEt0G4/EyoulHGS2TS', '2025-06-26 17:14:32', '2025-06-26 17:14:32');

-- ----------------------------
-- Table structure for karyawan_bpjskesehatan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_bpjskesehatan`;
CREATE TABLE `karyawan_bpjskesehatan`  (
  `kode_bpjs_kesehatan` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_bpjs_kesehatan`) USING BTREE,
  INDEX `karyawan_bpjskesehatan_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `karyawan_bpjskesehatan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_bpjskesehatan
-- ----------------------------
INSERT INTO `karyawan_bpjskesehatan` VALUES ('K250001', '22.22.224', 75000, '2025-05-01', '2025-06-06 15:43:46', '2025-06-06 15:43:46');

-- ----------------------------
-- Table structure for karyawan_bpjstenagakerja
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_bpjstenagakerja`;
CREATE TABLE `karyawan_bpjstenagakerja`  (
  `kode_bpjs_tk` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_bpjs_tk`) USING BTREE,
  INDEX `karyawan_bpjstenagakerja_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `karyawan_bpjstenagakerja_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_bpjstenagakerja
-- ----------------------------
INSERT INTO `karyawan_bpjstenagakerja` VALUES ('K250001', '22.22.224', 25000, '2025-05-01', '2025-06-06 15:43:58', '2025-06-06 15:43:58');
INSERT INTO `karyawan_bpjstenagakerja` VALUES ('K250002', '22.22.225', 25000, '2025-05-01', '2025-06-06 15:44:28', '2025-06-06 15:44:28');

-- ----------------------------
-- Table structure for karyawan_gaji_pokok
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_gaji_pokok`;
CREATE TABLE `karyawan_gaji_pokok`  (
  `kode_gaji` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_gaji`) USING BTREE,
  INDEX `karyawan_gaji_pokok_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `karyawan_gaji_pokok_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_gaji_pokok
-- ----------------------------
INSERT INTO `karyawan_gaji_pokok` VALUES ('G250001', '22.22.224', 15000000, '2025-05-01', '2025-05-28 16:41:22', '2025-05-28 17:00:41');
INSERT INTO `karyawan_gaji_pokok` VALUES ('G250002', '22.22.225', 7000000, '2025-05-01', '2025-05-28 17:03:07', '2025-05-28 17:03:07');

-- ----------------------------
-- Table structure for karyawan_penyesuaian_gaji
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_penyesuaian_gaji`;
CREATE TABLE `karyawan_penyesuaian_gaji`  (
  `kode_penyesuaian_gaji` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` smallint NOT NULL,
  `tahun` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_penyesuaian_gaji`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_penyesuaian_gaji
-- ----------------------------
INSERT INTO `karyawan_penyesuaian_gaji` VALUES ('PYG052025', 5, 2025, '2025-06-08 14:30:22', '2025-06-08 16:40:19');

-- ----------------------------
-- Table structure for karyawan_penyesuaian_gaji_detail
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_penyesuaian_gaji_detail`;
CREATE TABLE `karyawan_penyesuaian_gaji_detail`  (
  `kode_penyesuaian_gaji` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penambah` int NOT NULL,
  `pengurang` int NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `karyawan_penyesuaian_gaji_detail_nik_foreign`(`nik` ASC) USING BTREE,
  INDEX `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign`(`kode_penyesuaian_gaji` ASC) USING BTREE,
  CONSTRAINT `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` FOREIGN KEY (`kode_penyesuaian_gaji`) REFERENCES `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `karyawan_penyesuaian_gaji_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_penyesuaian_gaji_detail
-- ----------------------------
INSERT INTO `karyawan_penyesuaian_gaji_detail` VALUES ('PYG052025', '22.22.224', 100000, 0, 'Kekurangan Bulan Lalu', '2025-06-08 16:39:55', '2025-06-08 16:39:55');
INSERT INTO `karyawan_penyesuaian_gaji_detail` VALUES ('PYG052025', '22.22.225', 0, 50000, 'Test', '2025-06-09 17:41:07', '2025-06-09 17:41:07');

-- ----------------------------
-- Table structure for karyawan_tunjangan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_tunjangan`;
CREATE TABLE `karyawan_tunjangan`  (
  `kode_tunjangan` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_tunjangan`) USING BTREE,
  INDEX `karyawan_tunjangan_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `karyawan_tunjangan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_tunjangan
-- ----------------------------
INSERT INTO `karyawan_tunjangan` VALUES ('T250001', '22.22.224', '2025-05-01', '2025-05-30 17:16:59', '2025-05-30 17:16:59');

-- ----------------------------
-- Table structure for karyawan_tunjangan_detail
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_tunjangan_detail`;
CREATE TABLE `karyawan_tunjangan_detail`  (
  `kode_tunjangan` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jenis_tunjangan` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `karyawan_tunjangan_detail_kode_tunjangan_foreign`(`kode_tunjangan` ASC) USING BTREE,
  INDEX `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign`(`kode_jenis_tunjangan` ASC) USING BTREE,
  CONSTRAINT `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` FOREIGN KEY (`kode_jenis_tunjangan`) REFERENCES `jenis_tunjangan` (`kode_jenis_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `karyawan_tunjangan_detail_kode_tunjangan_foreign` FOREIGN KEY (`kode_tunjangan`) REFERENCES `karyawan_tunjangan` (`kode_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan_tunjangan_detail
-- ----------------------------
INSERT INTO `karyawan_tunjangan_detail` VALUES ('T250001', 'TJ01', 150000, '2025-05-30 17:16:59', '2025-05-30 17:16:59');
INSERT INTO `karyawan_tunjangan_detail` VALUES ('T250001', 'TJ02', 250000, '2025-05-30 17:16:59', '2025-05-30 17:16:59');
INSERT INTO `karyawan_tunjangan_detail` VALUES ('T250001', 'TJ03', 300000, '2025-05-30 17:16:59', '2025-05-30 17:16:59');
INSERT INTO `karyawan_tunjangan_detail` VALUES ('T250001', 'TJ04', 1500000, '2025-05-30 17:16:59', '2025-05-30 17:16:59');

-- ----------------------------
-- Table structure for karyawan_wajah
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_wajah`;
CREATE TABLE `karyawan_wajah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `karyawan_wajah_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `karyawan_wajah_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of karyawan_wajah
-- ----------------------------
INSERT INTO `karyawan_wajah` VALUES (40, '22.22.224', '1.png', '2025-05-31 15:00:36', '2025-05-31 15:00:36');

-- ----------------------------
-- Table structure for lembur
-- ----------------------------
DROP TABLE IF EXISTS `lembur`;
CREATE TABLE `lembur`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembur_mulai` datetime NOT NULL,
  `lembur_selesai` datetime NOT NULL,
  `lembur_in` datetime NULL DEFAULT NULL,
  `lembur_out` datetime NULL DEFAULT NULL,
  `foto_lembur_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto_lembur_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lokasi_lembur_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lokasi_lembur_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lembur
-- ----------------------------
INSERT INTO `lembur` VALUES (3, '2025-07-07', '22.22.224', '2025-07-07 22:00:00', '2025-07-07 23:59:00', '2025-07-07 22:10:00', NULL, '22.22.224-2025-07-07-in.png', NULL, '-5.390336,105.2737536', NULL, '1', 'Beresin Laporan Keuangan', '2025-07-07 22:10:29', '2025-07-07 22:31:13');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_01_13_163827_add_username_field_to_users', 1);
INSERT INTO `migrations` VALUES (6, '2024_01_14_065610_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (7, '2024_01_15_170203_create_permission_groups_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_01_16_081416_add_id_permission_group_to_permissions', 1);
INSERT INTO `migrations` VALUES (9, '2024_01_16_082530_add_relation_from_permissions_to_permission_groups', 1);
INSERT INTO `migrations` VALUES (10, '2024_04_27_133940_create_karyawans_table', 2);
INSERT INTO `migrations` VALUES (11, '2024_04_27_134826_create_cabangs_table', 3);
INSERT INTO `migrations` VALUES (12, '2024_04_27_140209_create_departemens_table', 4);
INSERT INTO `migrations` VALUES (13, '2024_04_27_140736_create_jabatans_table', 5);
INSERT INTO `migrations` VALUES (14, '2024_04_27_141507_crate_table_status_kawin', 6);
INSERT INTO `migrations` VALUES (15, '2024_05_25_080125_add_column_to_karyawan', 7);
INSERT INTO `migrations` VALUES (16, '2024_06_01_151030_create_relation_karyawan_to_departemen', 8);
INSERT INTO `migrations` VALUES (17, '2024_06_15_075718_create_cutis_table', 9);
INSERT INTO `migrations` VALUES (19, '2024_12_01_143041_create_jamkerjas_table', 10);
INSERT INTO `migrations` VALUES (21, '2024_12_17_221256_create_setjamkerjas_table', 11);
INSERT INTO `migrations` VALUES (22, '2024_12_25_141314_create_hariliburs_table', 12);
INSERT INTO `migrations` VALUES (23, '2024_12_30_143453_create_detailhariliburs_table', 13);
INSERT INTO `migrations` VALUES (24, '2025_01_13_152829_create_setjamkerjabydates_table', 14);
INSERT INTO `migrations` VALUES (25, '2025_01_21_074359_create_userkaryawans_table', 15);
INSERT INTO `migrations` VALUES (26, '2025_01_22_150849_create_presensis_table', 16);
INSERT INTO `migrations` VALUES (27, '2025_01_22_153134_create_setjamkerjabydepts_table', 17);
INSERT INTO `migrations` VALUES (28, '2025_01_22_153959_create_detailsetjamkerjabydepts_table', 18);
INSERT INTO `migrations` VALUES (29, '2025_01_27_083520_create_izinabsens_table', 19);
INSERT INTO `migrations` VALUES (32, '2025_01_28_225208_create_approveizinabsens_table', 20);
INSERT INTO `migrations` VALUES (33, '2025_01_29_110840_create_izinsakits_table', 21);
INSERT INTO `migrations` VALUES (34, '2025_01_29_235629_create_approveizinsakits_table', 22);
INSERT INTO `migrations` VALUES (35, '2025_01_31_052651_create_izincutis_table', 23);
INSERT INTO `migrations` VALUES (36, '2025_02_01_221452_create_approveizincutis_table', 24);
INSERT INTO `migrations` VALUES (37, '2025_03_01_215021_add_relation_karyawan_jabatan', 25);
INSERT INTO `migrations` VALUES (38, '2025_03_10_233534_create_pengaturanumums_table', 26);
INSERT INTO `migrations` VALUES (39, '2025_03_12_210910_add_column_periode_laporan', 27);
INSERT INTO `migrations` VALUES (40, '2025_03_12_213803_create_dendas_table', 28);
INSERT INTO `migrations` VALUES (41, '2025_03_21_070306_create_facerecognitions_table', 29);
INSERT INTO `migrations` VALUES (43, '2025_03_24_145610_add_facerecognition', 30);
INSERT INTO `migrations` VALUES (44, '2025_03_24_151107_add_cloud_id_token', 31);
INSERT INTO `migrations` VALUES (45, '2025_04_28_194528_change_cascade_userskaryawan', 32);
INSERT INTO `migrations` VALUES (46, '2025_04_28_195903_change_cascade_harilibur', 32);
INSERT INTO `migrations` VALUES (47, '2025_04_28_200136_change_cascade_presensi_jamkerja_bydate', 32);
INSERT INTO `migrations` VALUES (48, '2025_04_28_200151_change_cascade_presensi_jamkerja_byday', 32);
INSERT INTO `migrations` VALUES (49, '2025_04_28_200326_change_cascade_presensi_izinabsen', 32);
INSERT INTO `migrations` VALUES (50, '2025_04_28_200341_change_cascade_presensi_izincuti', 32);
INSERT INTO `migrations` VALUES (51, '2025_04_28_200352_change_cascade_presensi_izinsakit', 32);
INSERT INTO `migrations` VALUES (52, '2025_04_28_200644_change_cascade_presensi', 32);
INSERT INTO `migrations` VALUES (53, '2025_04_28_201020_change_cascase_presensi_izinabsen_approve', 32);
INSERT INTO `migrations` VALUES (54, '2025_04_28_201036_change_cascase_presensi_izincuti_approve', 33);
INSERT INTO `migrations` VALUES (55, '2025_04_28_201055_change_cascase_presensi_izinsakit_approve', 33);
INSERT INTO `migrations` VALUES (56, '2025_04_28_205629_add_logo_and_domain_email_to_pengaturanumums_table', 34);
INSERT INTO `migrations` VALUES (57, '2025_05_13_172741_create_sessions_table', 35);
INSERT INTO `migrations` VALUES (58, '2025_05_19_200108_add_domian_wa_gateway', 36);
INSERT INTO `migrations` VALUES (59, '2025_05_25_182126_create_jobs_table', 37);
INSERT INTO `migrations` VALUES (61, '2025_05_28_160332_create_gajipokoks_table', 38);
INSERT INTO `migrations` VALUES (63, '2025_05_29_144500_create_jenistunjangans_table', 39);
INSERT INTO `migrations` VALUES (64, '2025_05_30_154217_create_tunjangans_table', 40);
INSERT INTO `migrations` VALUES (66, '2025_05_30_154419_create_detailtunjangans_table', 41);
INSERT INTO `migrations` VALUES (67, '2025_05_31_162620_add_column_batasi_absen_jam_batasi_absen', 42);
INSERT INTO `migrations` VALUES (68, '2025_06_06_131732_create_bpjskesehatans_table', 43);
INSERT INTO `migrations` VALUES (70, '2025_06_06_144606_create_bpjstenagakerjas_table', 44);
INSERT INTO `migrations` VALUES (71, '2025_06_08_140901_create_penyesuaiangajis_table', 45);
INSERT INTO `migrations` VALUES (74, '2025_06_08_141250_create_detailpenyesuaiangajis_table', 46);
INSERT INTO `migrations` VALUES (75, '2025_06_10_162258_create_wamessages_table', 47);
INSERT INTO `migrations` VALUES (76, '2025_06_10_163230_add_column_wa_api_key_to_pengaturan_umum', 48);
INSERT INTO `migrations` VALUES (78, '2025_06_24_183103_create_slipgajis_table', 49);
INSERT INTO `migrations` VALUES (80, '2025_07_04_145928_create_lemburs_table', 50);
INSERT INTO `migrations` VALUES (82, '2025_07_08_052018_add_column_istirahat_to_presensi', 51);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 6);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 8);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 13);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pengaturan_umum
-- ----------------------------
DROP TABLE IF EXISTS `pengaturan_umum`;
CREATE TABLE `pengaturan_umum`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jam_bulan` int NOT NULL,
  `denda` tinyint(1) NOT NULL DEFAULT 1,
  `face_recognition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `periode_laporan_dari` smallint NOT NULL,
  `periode_laporan_sampai` smallint NOT NULL,
  `periode_laporan_next_bulan` tinyint(1) NOT NULL,
  `cloud_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `domain_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `domain_wa_gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wa_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batasi_absen` tinyint(1) NOT NULL DEFAULT 0,
  `batas_jam_absen` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengaturan_umum
-- ----------------------------
INSERT INTO `pengaturan_umum` VALUES (1, 'PT. ADAM ADIFA', 'Jl. Pemuda No. 1, Tasikmalaya', '031-1234567', '1745851168.png', 173, 1, 0, '2025-03-12 21:19:58', '2025-07-07 20:56:13', 21, 20, 1, NULL, NULL, 'adamadifa.com', 'http://localhost:3000', 'supersecretapikey123', 0, 1);

-- ----------------------------
-- Table structure for permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE `permission_groups`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_groups
-- ----------------------------
INSERT INTO `permission_groups` VALUES (1, 'Karyawan', '2024-03-14 16:46:22', '2024-03-14 16:46:22');
INSERT INTO `permission_groups` VALUES (2, 'Departemen', '2024-03-14 16:55:53', '2024-03-14 16:55:53');
INSERT INTO `permission_groups` VALUES (3, 'Cabang', '2024-03-14 17:09:23', '2024-03-14 17:09:23');
INSERT INTO `permission_groups` VALUES (4, 'Cuti', '2024-03-14 17:15:40', '2024-03-14 17:15:40');
INSERT INTO `permission_groups` VALUES (5, 'Presensi', '2024-03-14 17:22:00', '2024-03-14 17:22:00');
INSERT INTO `permission_groups` VALUES (6, 'Jam Kerja', '2024-12-01 21:41:55', '2024-12-01 21:41:55');
INSERT INTO `permission_groups` VALUES (7, 'Haril Libur', '2024-12-25 21:16:11', '2024-12-25 21:16:11');
INSERT INTO `permission_groups` VALUES (8, 'User', '2025-01-21 15:01:51', '2025-01-21 15:01:51');
INSERT INTO `permission_groups` VALUES (10, 'Presensi', '2025-01-22 21:14:08', '2025-01-22 21:14:08');
INSERT INTO `permission_groups` VALUES (11, 'Jam Kerja Departemen', '2025-01-22 22:42:39', '2025-01-22 22:42:39');
INSERT INTO `permission_groups` VALUES (12, 'Izin Absen', '2025-01-27 08:40:47', '2025-01-27 08:40:47');
INSERT INTO `permission_groups` VALUES (13, 'Izin Sakit', '2025-01-29 21:10:31', '2025-01-29 21:10:31');
INSERT INTO `permission_groups` VALUES (14, 'Izin Cuti', '2025-02-01 20:20:35', '2025-02-01 20:20:35');
INSERT INTO `permission_groups` VALUES (15, 'Jabatan', '2025-03-01 21:27:48', '2025-03-01 21:27:48');
INSERT INTO `permission_groups` VALUES (16, 'General Setting', '2025-03-12 18:49:24', '2025-03-12 18:49:24');
INSERT INTO `permission_groups` VALUES (17, 'Laporan', '2025-03-13 00:36:30', '2025-03-13 00:36:30');
INSERT INTO `permission_groups` VALUES (18, 'WA Gateway', '2025-05-19 20:11:48', '2025-05-19 20:11:48');
INSERT INTO `permission_groups` VALUES (19, 'Gaji Pokok', '2025-05-28 16:08:43', '2025-05-28 16:08:43');
INSERT INTO `permission_groups` VALUES (20, 'Jenis Tunjangan', '2025-05-29 14:48:28', '2025-05-29 14:48:28');
INSERT INTO `permission_groups` VALUES (21, 'Tunjangan', '2025-05-30 15:47:12', '2025-05-30 15:47:12');
INSERT INTO `permission_groups` VALUES (22, 'Bpjs Kesehatan', '2025-06-06 13:20:52', '2025-06-06 13:20:52');
INSERT INTO `permission_groups` VALUES (23, 'Bpjs Tenaga Kerja', '2025-06-06 14:48:31', '2025-06-06 14:48:31');
INSERT INTO `permission_groups` VALUES (24, 'Penyesuaian Gaji', '2025-06-08 14:15:37', '2025-06-08 14:15:37');
INSERT INTO `permission_groups` VALUES (25, 'Slip Gaji', '2025-06-24 18:40:00', '2025-06-24 18:40:00');
INSERT INTO `permission_groups` VALUES (26, 'Lembur', '2025-07-04 15:13:10', '2025-07-04 15:13:10');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_permission_group` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE,
  INDEX `permissions_id_permission_group_foreign`(`id_permission_group` ASC) USING BTREE,
  CONSTRAINT `permissions_id_permission_group_foreign` FOREIGN KEY (`id_permission_group`) REFERENCES `permission_groups` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'karyawan.index', 'web', '2024-03-14 16:46:35', '2024-03-14 16:46:35', 1);
INSERT INTO `permissions` VALUES (2, 'karyawan.create', 'web', '2024-03-14 16:46:44', '2024-03-14 16:46:44', 1);
INSERT INTO `permissions` VALUES (3, 'karyawan.edit', 'web', '2024-03-14 16:46:54', '2024-03-14 16:46:54', 1);
INSERT INTO `permissions` VALUES (4, 'karyawan.show', 'web', '2024-03-14 16:48:11', '2024-03-14 16:48:11', 1);
INSERT INTO `permissions` VALUES (5, 'karyawan.delete', 'web', '2024-03-14 16:48:18', '2024-03-14 16:48:18', 1);
INSERT INTO `permissions` VALUES (6, 'departemen.index', 'web', '2024-03-14 16:56:41', '2024-03-14 16:56:41', 2);
INSERT INTO `permissions` VALUES (7, 'departemen.create', 'web', '2024-03-14 16:57:08', '2024-03-14 16:57:08', 2);
INSERT INTO `permissions` VALUES (8, 'departemen.edit', 'web', '2024-03-14 16:57:16', '2024-03-14 16:57:16', 2);
INSERT INTO `permissions` VALUES (9, 'departemen.delete', 'web', '2024-03-14 16:57:32', '2024-03-14 16:57:32', 2);
INSERT INTO `permissions` VALUES (10, 'cabang.index', 'web', '2024-03-14 17:12:07', '2024-03-14 17:12:07', 3);
INSERT INTO `permissions` VALUES (11, 'cabang.create', 'web', '2024-03-14 17:12:15', '2024-03-14 17:12:15', 3);
INSERT INTO `permissions` VALUES (12, 'cabang.edit', 'web', '2024-03-14 17:12:25', '2024-03-14 17:12:25', 3);
INSERT INTO `permissions` VALUES (13, 'cabang.delete', 'web', '2024-03-14 17:12:41', '2024-03-14 17:12:41', 3);
INSERT INTO `permissions` VALUES (14, 'cuti.index', 'web', '2024-03-14 17:15:53', '2024-03-14 17:15:53', 4);
INSERT INTO `permissions` VALUES (15, 'cuti.create', 'web', '2024-03-14 17:16:00', '2024-03-14 17:16:00', 4);
INSERT INTO `permissions` VALUES (16, 'cuti.edit', 'web', '2024-03-14 17:16:09', '2024-03-14 17:16:09', 4);
INSERT INTO `permissions` VALUES (17, 'cuti.delete', 'web', '2024-03-14 17:16:20', '2024-03-14 17:16:20', 4);
INSERT INTO `permissions` VALUES (18, 'presensi.index', 'web', '2024-03-14 17:22:37', '2025-01-22 21:15:52', 10);
INSERT INTO `permissions` VALUES (19, 'karyawan.lockunlocklocation', 'web', '2024-05-25 15:39:29', '2024-05-25 15:39:29', 1);
INSERT INTO `permissions` VALUES (20, 'karyawan.lockunlockjamkerja', 'web', '2024-05-25 15:39:40', '2024-05-25 15:39:40', 1);
INSERT INTO `permissions` VALUES (21, 'karyawan.setjamkerja', 'web', '2024-10-14 20:38:16', '2024-10-14 20:38:16', 1);
INSERT INTO `permissions` VALUES (22, 'jamkerja.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (23, 'jamkerja.create', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (24, 'jamkerja.edit', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (25, 'jamkerja.show', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (26, 'jamkerja.delete', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (27, 'suratjalancabang.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6);
INSERT INTO `permissions` VALUES (28, 'harilibur.index', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7);
INSERT INTO `permissions` VALUES (29, 'harilibur.create', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7);
INSERT INTO `permissions` VALUES (30, 'harilibur.edit', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7);
INSERT INTO `permissions` VALUES (31, 'harilibur.show', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7);
INSERT INTO `permissions` VALUES (32, 'harilibur.delete', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7);
INSERT INTO `permissions` VALUES (33, 'harilibur.setharilibur', 'web', '2024-12-25 21:44:03', '2024-12-25 21:44:03', 7);
INSERT INTO `permissions` VALUES (34, 'users.index', 'web', '2025-01-21 15:02:01', '2025-01-21 15:02:01', 8);
INSERT INTO `permissions` VALUES (35, 'users.create', 'web', '2025-01-21 15:02:09', '2025-01-21 15:02:09', 8);
INSERT INTO `permissions` VALUES (36, 'users.edit', 'web', '2025-01-21 15:02:20', '2025-01-21 15:02:20', 8);
INSERT INTO `permissions` VALUES (37, 'users.delete', 'web', '2025-01-21 15:02:31', '2025-01-21 15:02:31', 8);
INSERT INTO `permissions` VALUES (38, 'presensi.create', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10);
INSERT INTO `permissions` VALUES (39, 'presensi.edit', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10);
INSERT INTO `permissions` VALUES (40, 'presensi.delete', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10);
INSERT INTO `permissions` VALUES (41, 'jamkerjabydept.index', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11);
INSERT INTO `permissions` VALUES (42, 'jamkerjabydept.create', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11);
INSERT INTO `permissions` VALUES (43, 'jamkerjabydept.edit', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11);
INSERT INTO `permissions` VALUES (44, 'jamkerjabydept.delete', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11);
INSERT INTO `permissions` VALUES (45, 'izinabsen.index', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12);
INSERT INTO `permissions` VALUES (46, 'izinabsen.create', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12);
INSERT INTO `permissions` VALUES (47, 'izinabsen.edit', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12);
INSERT INTO `permissions` VALUES (48, 'izinabsen.delete', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12);
INSERT INTO `permissions` VALUES (49, 'izinsakit.index', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13);
INSERT INTO `permissions` VALUES (50, 'izinsakit.create', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13);
INSERT INTO `permissions` VALUES (51, 'izinsakit.edit', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13);
INSERT INTO `permissions` VALUES (52, 'izinsakit.delete', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13);
INSERT INTO `permissions` VALUES (53, 'izinsakit.approve', 'web', '2025-01-29 21:52:51', '2025-01-29 21:52:51', 13);
INSERT INTO `permissions` VALUES (54, 'izincuti.index', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14);
INSERT INTO `permissions` VALUES (55, 'izincuti.create', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14);
INSERT INTO `permissions` VALUES (56, 'izincuti.edit', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14);
INSERT INTO `permissions` VALUES (57, 'izincuti.delete', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14);
INSERT INTO `permissions` VALUES (58, 'izincuti.approve', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14);
INSERT INTO `permissions` VALUES (59, 'izinabsen.approve', 'web', '2025-02-01 22:46:19', '2025-02-01 22:46:19', 12);
INSERT INTO `permissions` VALUES (60, 'jabatan.index', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15);
INSERT INTO `permissions` VALUES (61, 'jabatan.create', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15);
INSERT INTO `permissions` VALUES (62, 'jabatan.edit', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15);
INSERT INTO `permissions` VALUES (63, 'jabatan.show', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15);
INSERT INTO `permissions` VALUES (64, 'jabatan.delete', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15);
INSERT INTO `permissions` VALUES (65, 'generalsetting.index', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16);
INSERT INTO `permissions` VALUES (66, 'generalsetting.create', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16);
INSERT INTO `permissions` VALUES (67, 'generalsetting.edit', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16);
INSERT INTO `permissions` VALUES (68, 'generalsetting.show', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16);
INSERT INTO `permissions` VALUES (69, 'generalsetting.delete', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16);
INSERT INTO `permissions` VALUES (70, 'laporan.presensi', 'web', '2025-03-13 00:36:30', '2025-03-13 00:36:30', 17);
INSERT INTO `permissions` VALUES (71, 'wagateway.index', 'web', '2025-05-19 20:11:48', '2025-05-19 20:11:48', 18);
INSERT INTO `permissions` VALUES (72, 'gajipokok.index', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19);
INSERT INTO `permissions` VALUES (73, 'gajipokok.create', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19);
INSERT INTO `permissions` VALUES (74, 'gajipokok.edit', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19);
INSERT INTO `permissions` VALUES (75, 'gajipokok.show', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19);
INSERT INTO `permissions` VALUES (76, 'gajipokok.delete', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19);
INSERT INTO `permissions` VALUES (77, 'jenistunjangan.index', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20);
INSERT INTO `permissions` VALUES (78, 'jenistunjangan.create', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20);
INSERT INTO `permissions` VALUES (79, 'jenistunjangan.edit', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20);
INSERT INTO `permissions` VALUES (80, 'jenistunjangan.show', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20);
INSERT INTO `permissions` VALUES (81, 'jenistunjangan.delete', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20);
INSERT INTO `permissions` VALUES (82, 'tunjangan.index', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21);
INSERT INTO `permissions` VALUES (83, 'tunjangan.create', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21);
INSERT INTO `permissions` VALUES (84, 'tunjangan.edit', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21);
INSERT INTO `permissions` VALUES (85, 'tunjangan.show', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21);
INSERT INTO `permissions` VALUES (86, 'tunjangan.delete', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21);
INSERT INTO `permissions` VALUES (87, 'bpjskesehatan.index', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22);
INSERT INTO `permissions` VALUES (88, 'bpjskesehatan.create', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22);
INSERT INTO `permissions` VALUES (89, 'bpjskesehatan.edit', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22);
INSERT INTO `permissions` VALUES (90, 'bpjskesehatan.show', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22);
INSERT INTO `permissions` VALUES (91, 'bpjskesehatan.delete', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22);
INSERT INTO `permissions` VALUES (92, 'bpjstenagakerja.index', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23);
INSERT INTO `permissions` VALUES (93, 'bpjstenagakerja.create', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23);
INSERT INTO `permissions` VALUES (94, 'bpjstenagakerja.edit', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23);
INSERT INTO `permissions` VALUES (95, 'bpjstenagakerja.show', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23);
INSERT INTO `permissions` VALUES (96, 'bpjstenagakerja.delete', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23);
INSERT INTO `permissions` VALUES (97, 'penyesuaiangaji.index', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);
INSERT INTO `permissions` VALUES (98, 'penyesuaiangaji.create', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);
INSERT INTO `permissions` VALUES (99, 'penyesuaiangaji.edit', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);
INSERT INTO `permissions` VALUES (100, 'penyesuaiangaji.show', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);
INSERT INTO `permissions` VALUES (101, 'penyesuaiangaji.delete', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);
INSERT INTO `permissions` VALUES (102, 'slipgaji.index', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25);
INSERT INTO `permissions` VALUES (103, 'slipgaji.create', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25);
INSERT INTO `permissions` VALUES (104, 'slipgaji.edit', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25);
INSERT INTO `permissions` VALUES (105, 'slipgaji.delete', 'web', '2025-06-24 18:40:01', '2025-06-24 18:40:01', 25);
INSERT INTO `permissions` VALUES (106, 'lembur.index', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26);
INSERT INTO `permissions` VALUES (107, 'lembur.create', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26);
INSERT INTO `permissions` VALUES (108, 'lembur.edit', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26);
INSERT INTO `permissions` VALUES (109, 'lembur.delete', 'web', '2025-07-04 15:13:10', '2025-07-04 15:13:10', 26);
INSERT INTO `permissions` VALUES (110, 'lembur.approve', 'web', '2025-07-05 15:07:36', '2025-07-05 15:07:36', 26);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for presensi
-- ----------------------------
DROP TABLE IF EXISTS `presensi`;
CREATE TABLE `presensi`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam_in` datetime NULL DEFAULT NULL,
  `jam_out` datetime NULL DEFAULT NULL,
  `foto_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lokasi_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lokasi_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `istirahat_in` datetime NULL DEFAULT NULL,
  `lokasi_istirahat_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto_istirahat_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `istirahat_out` datetime NULL DEFAULT NULL,
  `lokasi_istirahat_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto_istirahat_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `presensi_nik_foreign`(`nik` ASC) USING BTREE,
  INDEX `presensi_kode_jam_kerja_foreign`(`kode_jam_kerja` ASC) USING BTREE,
  CONSTRAINT `presensi_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `presensi_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi
-- ----------------------------
INSERT INTO `presensi` VALUES (54, '22.22.224', '2025-05-13', '2025-05-13 06:45:00', NULL, NULL, NULL, NULL, NULL, 'JK01', 'h', '2025-05-13 18:40:07', '2025-05-13 18:40:07', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (57, '22.22.224', '2025-05-14', '2025-05-14 23:32:00', NULL, '22.22.224-2025-05-14-in.png', NULL, '-6.7403776,108.5374464', NULL, 'JK03', 'h', '2025-05-14 23:32:32', '2025-05-14 23:32:32', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (59, '22.22.224', '2025-05-21', '2025-05-21 22:04:00', '2025-05-22 05:40:00', '22.22.224-2025-05-21-in.png', '22.22.224-2025-05-21-out.png', '-6.7272704,108.5472768', '-6.7272704,108.5472768', 'JK03', 'h', '2025-05-21 22:04:50', '2025-05-22 05:40:39', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (60, '22.22.224', '2025-05-26', '2025-05-25 18:34:00', NULL, '22.22.224-2025-05-25-in.png', NULL, '-6.9075,107.8151', NULL, 'JK05', 'h', '2025-05-25 18:34:14', '2025-05-25 18:34:14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (62, '22.22.225', '2025-05-31', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'i', '2025-05-31 16:01:25', '2025-05-31 16:01:25', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (63, '22.22.224', '2025-05-31', '2025-05-31 16:37:00', NULL, '22.22.224-2025-05-31-in.png', NULL, '-6.8419,108.0232', NULL, 'JK04', 'h', '2025-05-31 16:37:59', '2025-05-31 16:37:59', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (64, '22.22.224', '2025-06-01', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 16:16:18', '2025-06-01 16:16:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (65, '22.22.224', '2025-05-02', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 16:36:51', '2025-06-01 16:36:51', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (68, '22.22.224', '2025-06-10', '2025-06-10 17:21:00', '2025-06-10 17:21:00', '22.22.224-2025-06-10-in.png', '22.22.224-2025-06-10-out.png', '-6.9075,107.8151', '-6.9075,107.8151', 'JK03', 'h', '2025-06-10 17:21:13', '2025-06-10 17:21:41', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `presensi` VALUES (69, '22.22.224', '2025-07-08', '2025-07-08 05:14:00', NULL, '22.22.224-2025-07-08-in.png', NULL, '-5.390336,105.2737536', NULL, 'JK01', 'h', '2025-07-08 05:14:36', '2025-07-08 08:04:45', '2025-07-08 08:04:00', '-5.390336,105.2737536', '22.22.224-2025-07-08-in.png', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for presensi_izinabsen
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izinabsen`;
CREATE TABLE `presensi_izinabsen`  (
  `kode_izin` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_hrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_izin`) USING BTREE,
  INDEX `presensi_izinabsen_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `presensi_izinabsen_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izinabsen
-- ----------------------------
INSERT INTO `presensi_izinabsen` VALUES ('IA25050001', '2025-05-31', '2025-05-31', '2025-05-31', '22.22.225', 'Keperluan Keluarga', NULL, '1', '2025-05-31 16:00:53', '2025-05-31 16:01:25');
INSERT INTO `presensi_izinabsen` VALUES ('IA25070001', '2025-07-05', '2025-07-05', '2025-07-05', '22.22.224', 'test', NULL, '0', '2025-07-05 16:04:06', '2025-07-05 16:04:06');

-- ----------------------------
-- Table structure for presensi_izinabsen_approve
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izinabsen_approve`;
CREATE TABLE `presensi_izinabsen_approve`  (
  `id_presensi` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_izin` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_presensi`) USING BTREE,
  INDEX `presensi_izinabsen_approve_kode_izin_foreign`(`kode_izin` ASC) USING BTREE,
  CONSTRAINT `presensi_izinabsen_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `presensi_izinabsen_approve_kode_izin_foreign` FOREIGN KEY (`kode_izin`) REFERENCES `presensi_izinabsen` (`kode_izin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izinabsen_approve
-- ----------------------------
INSERT INTO `presensi_izinabsen_approve` VALUES (62, 'IA25050001', '2025-05-31 16:01:25', '2025-05-31 16:01:25');

-- ----------------------------
-- Table structure for presensi_izincuti
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izincuti`;
CREATE TABLE `presensi_izincuti`  (
  `kode_izin_cuti` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `kode_cuti` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_hrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_izin_cuti`) USING BTREE,
  INDEX `presensi_izincuti_nik_foreign`(`nik` ASC) USING BTREE,
  INDEX `presensi_izincuti_kode_cuti_foreign`(`kode_cuti` ASC) USING BTREE,
  CONSTRAINT `presensi_izincuti_kode_cuti_foreign` FOREIGN KEY (`kode_cuti`) REFERENCES `cuti` (`kode_cuti`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `presensi_izincuti_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izincuti
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_izincuti_approve
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izincuti_approve`;
CREATE TABLE `presensi_izincuti_approve`  (
  `id_presensi` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_izin_cuti` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_presensi`) USING BTREE,
  INDEX `presensi_izincuti_approve_kode_izin_cuti_foreign`(`kode_izin_cuti` ASC) USING BTREE,
  CONSTRAINT `presensi_izincuti_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `presensi_izincuti_approve_kode_izin_cuti_foreign` FOREIGN KEY (`kode_izin_cuti`) REFERENCES `presensi_izincuti` (`kode_izin_cuti`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izincuti_approve
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_izinsakit
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izinsakit`;
CREATE TABLE `presensi_izinsakit`  (
  `kode_izin_sakit` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `doc_sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_hrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_izin_sakit`) USING BTREE,
  INDEX `presensi_izinsakit_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `presensi_izinsakit_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izinsakit
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_izinsakit_approve
-- ----------------------------
DROP TABLE IF EXISTS `presensi_izinsakit_approve`;
CREATE TABLE `presensi_izinsakit_approve`  (
  `id_presensi` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_izin_sakit` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_presensi`) USING BTREE,
  INDEX `presensi_izinsakit_approve_kode_izin_sakit_foreign`(`kode_izin_sakit` ASC) USING BTREE,
  CONSTRAINT `presensi_izinsakit_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `presensi_izinsakit_approve_kode_izin_sakit_foreign` FOREIGN KEY (`kode_izin_sakit`) REFERENCES `presensi_izinsakit` (`kode_izin_sakit`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_izinsakit_approve
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_jamkerja
-- ----------------------------
DROP TABLE IF EXISTS `presensi_jamkerja`;
CREATE TABLE `presensi_jamkerja`  (
  `kode_jam_kerja` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jam_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `istirahat` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_awal_istirahat` time NULL DEFAULT NULL,
  `jam_akhir_istirahat` time NULL DEFAULT NULL,
  `total_jam` smallint NOT NULL,
  `lintashari` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jam_kerja`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_jamkerja
-- ----------------------------
INSERT INTO `presensi_jamkerja` VALUES ('JK01', 'NON SHIFT', '08:00:00', '16:00:00', '1', '08:00:00', '12:30:00', 7, '0', 'NORMAL', NULL, '2025-07-08 08:00:32');
INSERT INTO `presensi_jamkerja` VALUES ('JK02', 'SHIFT 1', '07:00:00', '15:00:00', '1', '11:30:00', '12:30:00', 7, '0', 'Mantap', '2024-12-17 22:11:39', '2024-12-17 22:21:00');
INSERT INTO `presensi_jamkerja` VALUES ('JK03', 'SHIFT 3', '22:00:00', '07:00:00', '1', '04:00:00', '05:00:00', 7, '1', '-', '2025-03-01 20:58:19', '2025-05-21 22:04:31');
INSERT INTO `presensi_jamkerja` VALUES ('JK04', 'SHIFT 2', '15:00:00', '23:00:00', '0', NULL, NULL, 7, '0', NULL, '2025-05-06 21:03:37', '2025-05-06 21:03:37');
INSERT INTO `presensi_jamkerja` VALUES ('JK05', 'SHIFT 4', '18:00:00', '23:00:00', '1', '04:00:00', '05:00:00', 7, '0', '-', '2025-05-11 00:40:34', '2025-05-25 18:32:47');

-- ----------------------------
-- Table structure for presensi_jamkerja_bydate
-- ----------------------------
DROP TABLE IF EXISTS `presensi_jamkerja_bydate`;
CREATE TABLE `presensi_jamkerja_bydate`  (
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `presensi_jamkerja_bydate_nik_foreign`(`nik` ASC) USING BTREE,
  INDEX `presensi_jamkerja_bydate_kode_jam_kerja_foreign`(`kode_jam_kerja` ASC) USING BTREE,
  CONSTRAINT `presensi_jamkerja_bydate_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `presensi_jamkerja_bydate_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_jamkerja_bydate
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_jamkerja_byday
-- ----------------------------
DROP TABLE IF EXISTS `presensi_jamkerja_byday`;
CREATE TABLE `presensi_jamkerja_byday`  (
  `nik` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `presensi_jamkerja_byday_nik_foreign`(`nik` ASC) USING BTREE,
  INDEX `presensi_jamkerja_byday_kode_jam_kerja_foreign`(`kode_jam_kerja` ASC) USING BTREE,
  CONSTRAINT `presensi_jamkerja_byday_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `presensi_jamkerja_byday_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_jamkerja_byday
-- ----------------------------
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.225', 'Sabtu', 'JK01', '2025-05-31 16:01:17', '2025-05-31 16:01:17');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Senin', 'JK03', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Selasa', 'JK01', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Rabu', 'JK03', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Kamis', 'JK01', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Jumat', 'JK01', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Sabtu', 'JK04', '2025-07-08 05:14:18', '2025-07-08 05:14:18');
INSERT INTO `presensi_jamkerja_byday` VALUES ('22.22.224', 'Minggu', 'JK05', '2025-07-08 05:14:18', '2025-07-08 05:14:18');

-- ----------------------------
-- Table structure for presensi_jamkerja_bydept
-- ----------------------------
DROP TABLE IF EXISTS `presensi_jamkerja_bydept`;
CREATE TABLE `presensi_jamkerja_bydept`  (
  `kode_jk_dept` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_cabang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dept` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jk_dept`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_jamkerja_bydept
-- ----------------------------
INSERT INTO `presensi_jamkerja_bydept` VALUES ('JBGRAKT', 'BGR', 'AKT', '2025-01-23 21:02:24', '2025-01-23 21:02:24');

-- ----------------------------
-- Table structure for presensi_jamkerja_bydept_detail
-- ----------------------------
DROP TABLE IF EXISTS `presensi_jamkerja_bydept_detail`;
CREATE TABLE `presensi_jamkerja_bydept_detail`  (
  `kode_jk_dept` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign`(`kode_jam_kerja` ASC) USING BTREE,
  INDEX `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign`(`kode_jk_dept` ASC) USING BTREE,
  CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` FOREIGN KEY (`kode_jk_dept`) REFERENCES `presensi_jamkerja_bydept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_jamkerja_bydept_detail
-- ----------------------------
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Senin', 'JK02', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Selasa', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Rabu', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Kamis', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Jumat', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Sabtu', 'JK01', '2025-01-23 21:28:00', '2025-01-23 21:28:00');
INSERT INTO `presensi_jamkerja_bydept_detail` VALUES ('JBGRAKT', 'Minggu', 'JK02', '2025-01-23 21:28:00', '2025-01-23 21:28:00');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
INSERT INTO `role_has_permissions` VALUES (37, 1);
INSERT INTO `role_has_permissions` VALUES (38, 1);
INSERT INTO `role_has_permissions` VALUES (39, 1);
INSERT INTO `role_has_permissions` VALUES (40, 1);
INSERT INTO `role_has_permissions` VALUES (41, 1);
INSERT INTO `role_has_permissions` VALUES (42, 1);
INSERT INTO `role_has_permissions` VALUES (43, 1);
INSERT INTO `role_has_permissions` VALUES (44, 1);
INSERT INTO `role_has_permissions` VALUES (45, 1);
INSERT INTO `role_has_permissions` VALUES (46, 1);
INSERT INTO `role_has_permissions` VALUES (47, 1);
INSERT INTO `role_has_permissions` VALUES (48, 1);
INSERT INTO `role_has_permissions` VALUES (49, 1);
INSERT INTO `role_has_permissions` VALUES (50, 1);
INSERT INTO `role_has_permissions` VALUES (51, 1);
INSERT INTO `role_has_permissions` VALUES (52, 1);
INSERT INTO `role_has_permissions` VALUES (53, 1);
INSERT INTO `role_has_permissions` VALUES (54, 1);
INSERT INTO `role_has_permissions` VALUES (55, 1);
INSERT INTO `role_has_permissions` VALUES (56, 1);
INSERT INTO `role_has_permissions` VALUES (57, 1);
INSERT INTO `role_has_permissions` VALUES (58, 1);
INSERT INTO `role_has_permissions` VALUES (59, 1);
INSERT INTO `role_has_permissions` VALUES (60, 1);
INSERT INTO `role_has_permissions` VALUES (61, 1);
INSERT INTO `role_has_permissions` VALUES (62, 1);
INSERT INTO `role_has_permissions` VALUES (63, 1);
INSERT INTO `role_has_permissions` VALUES (64, 1);
INSERT INTO `role_has_permissions` VALUES (65, 1);
INSERT INTO `role_has_permissions` VALUES (66, 1);
INSERT INTO `role_has_permissions` VALUES (67, 1);
INSERT INTO `role_has_permissions` VALUES (68, 1);
INSERT INTO `role_has_permissions` VALUES (69, 1);
INSERT INTO `role_has_permissions` VALUES (70, 1);
INSERT INTO `role_has_permissions` VALUES (71, 1);
INSERT INTO `role_has_permissions` VALUES (72, 1);
INSERT INTO `role_has_permissions` VALUES (73, 1);
INSERT INTO `role_has_permissions` VALUES (74, 1);
INSERT INTO `role_has_permissions` VALUES (75, 1);
INSERT INTO `role_has_permissions` VALUES (76, 1);
INSERT INTO `role_has_permissions` VALUES (77, 1);
INSERT INTO `role_has_permissions` VALUES (78, 1);
INSERT INTO `role_has_permissions` VALUES (79, 1);
INSERT INTO `role_has_permissions` VALUES (80, 1);
INSERT INTO `role_has_permissions` VALUES (81, 1);
INSERT INTO `role_has_permissions` VALUES (82, 1);
INSERT INTO `role_has_permissions` VALUES (83, 1);
INSERT INTO `role_has_permissions` VALUES (84, 1);
INSERT INTO `role_has_permissions` VALUES (85, 1);
INSERT INTO `role_has_permissions` VALUES (86, 1);
INSERT INTO `role_has_permissions` VALUES (87, 1);
INSERT INTO `role_has_permissions` VALUES (88, 1);
INSERT INTO `role_has_permissions` VALUES (89, 1);
INSERT INTO `role_has_permissions` VALUES (90, 1);
INSERT INTO `role_has_permissions` VALUES (91, 1);
INSERT INTO `role_has_permissions` VALUES (92, 1);
INSERT INTO `role_has_permissions` VALUES (93, 1);
INSERT INTO `role_has_permissions` VALUES (94, 1);
INSERT INTO `role_has_permissions` VALUES (95, 1);
INSERT INTO `role_has_permissions` VALUES (96, 1);
INSERT INTO `role_has_permissions` VALUES (97, 1);
INSERT INTO `role_has_permissions` VALUES (98, 1);
INSERT INTO `role_has_permissions` VALUES (99, 1);
INSERT INTO `role_has_permissions` VALUES (100, 1);
INSERT INTO `role_has_permissions` VALUES (101, 1);
INSERT INTO `role_has_permissions` VALUES (102, 1);
INSERT INTO `role_has_permissions` VALUES (103, 1);
INSERT INTO `role_has_permissions` VALUES (104, 1);
INSERT INTO `role_has_permissions` VALUES (105, 1);
INSERT INTO `role_has_permissions` VALUES (106, 1);
INSERT INTO `role_has_permissions` VALUES (107, 1);
INSERT INTO `role_has_permissions` VALUES (108, 1);
INSERT INTO `role_has_permissions` VALUES (109, 1);
INSERT INTO `role_has_permissions` VALUES (110, 1);
INSERT INTO `role_has_permissions` VALUES (18, 3);
INSERT INTO `role_has_permissions` VALUES (38, 3);
INSERT INTO `role_has_permissions` VALUES (39, 3);
INSERT INTO `role_has_permissions` VALUES (40, 3);
INSERT INTO `role_has_permissions` VALUES (45, 3);
INSERT INTO `role_has_permissions` VALUES (46, 3);
INSERT INTO `role_has_permissions` VALUES (47, 3);
INSERT INTO `role_has_permissions` VALUES (48, 3);
INSERT INTO `role_has_permissions` VALUES (49, 3);
INSERT INTO `role_has_permissions` VALUES (50, 3);
INSERT INTO `role_has_permissions` VALUES (51, 3);
INSERT INTO `role_has_permissions` VALUES (52, 3);
INSERT INTO `role_has_permissions` VALUES (54, 3);
INSERT INTO `role_has_permissions` VALUES (55, 3);
INSERT INTO `role_has_permissions` VALUES (56, 3);
INSERT INTO `role_has_permissions` VALUES (57, 3);
INSERT INTO `role_has_permissions` VALUES (102, 3);
INSERT INTO `role_has_permissions` VALUES (106, 3);
INSERT INTO `role_has_permissions` VALUES (107, 3);
INSERT INTO `role_has_permissions` VALUES (108, 3);
INSERT INTO `role_has_permissions` VALUES (109, 3);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'super admin', 'web', '2024-03-14 16:31:06', '2024-03-14 16:31:06');
INSERT INTO `roles` VALUES (2, 'admin departemen', 'web', '2024-03-14 16:51:49', '2024-03-14 16:51:49');
INSERT INTO `roles` VALUES (3, 'karyawan', 'web', '2025-01-21 14:42:30', '2025-01-21 14:42:30');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('5cnJxgTlUgeZRaYcvCnKRx9jmdlypdUC39uXaVcg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0c0YU9PeXdXMURXQWdURGxuQVZwRXpjTjN2a2FoMk1LZ2RaVWt2UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747891930);
INSERT INTO `sessions` VALUES ('bHztnxwTzMnoA0Eq9K6SlFbASUMvxk8NM0cK0BVT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm1xMERXakp2bFR2dW1abFcwS2lBNHZLUzRsYTBpQ1A0WlZoR1NyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747869124);
INSERT INTO `sessions` VALUES ('GmB1EFcJigpcehMkuclwnXOeg7ZBlDCqJtqMdxlH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0FPRXJsVlU2UG9zWUFFSHBqWWN0ZVJ2b0lqZFdQbk43WWY5bVR4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXJ5YXdhbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1747695657);
INSERT INTO `sessions` VALUES ('V9m7zD1SgRzTFUG4ZocXR3Nbj7orWoTUTVQABzn5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSkY2OEtvZ21SZEZVVVZRd2MxVkhTdGY3VFRwd1pXWk1MRngyREhQcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748181137);
INSERT INTO `sessions` VALUES ('WfkoxeJDZw3M8hskj6FTcPZHCxq2jgZ9NNn18uEi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREt3UkVSNFMyRzVnTGpYSklHZGNnRFJMSnhqMUxiMkhPSFo4WUdaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748172920);
INSERT INTO `sessions` VALUES ('YuXDjDSUhQROI2eedBORZrhCpr7wgluzmnYCp1Pl', 12, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1lneG1aUEFTRVZTbW1kdjAzTVNSM3hNTHlMcnYwOWVRMmh6ZlkzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYWNlcmVjb2duaXRpb24vZ2V0d2FqYWg/dD0xNzQ3NjY5ODk0NDQ5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1747662701);

-- ----------------------------
-- Table structure for slip_gaji
-- ----------------------------
DROP TABLE IF EXISTS `slip_gaji`;
CREATE TABLE `slip_gaji`  (
  `kode_slip_gaji` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` smallint NOT NULL,
  `tahun` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slip_gaji
-- ----------------------------
INSERT INTO `slip_gaji` VALUES ('GJ62025', 6, '2025', 1, '2025-06-26 17:37:38', '2025-07-01 19:55:33');

-- ----------------------------
-- Table structure for status_kawin
-- ----------------------------
DROP TABLE IF EXISTS `status_kawin`;
CREATE TABLE `status_kawin`  (
  `kode_status_kawin` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kawin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_status_kawin`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of status_kawin
-- ----------------------------
INSERT INTO `status_kawin` VALUES ('HB', 'Telah Berpisah Secara Hukum / Janda / Duda', '2024-04-27 21:20:47', '2024-04-27 21:20:47');
INSERT INTO `status_kawin` VALUES ('K0', 'Kawin Belum Punya Tanggungan', '2024-04-27 21:20:47', '2024-04-27 21:20:47');
INSERT INTO `status_kawin` VALUES ('K1', 'Kawin Punya Tanggungan 1', '2024-04-27 21:20:47', '2024-04-27 21:20:47');
INSERT INTO `status_kawin` VALUES ('K2', 'Kawin PUnya Tanggungan 2', '2024-04-27 21:20:47', '2024-04-27 21:20:47');
INSERT INTO `status_kawin` VALUES ('K3', 'Kawin PUnya Tanggungan 3', '2024-04-27 21:20:47', '2024-04-27 21:20:47');
INSERT INTO `status_kawin` VALUES ('TK', 'Tidak Kawin', '2024-04-27 21:20:47', '2024-04-27 21:20:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Adam Abdi Al Ala', 'adam', 'adamabdi.al.a@gmail.com', NULL, '$2y$12$7f.rOofB1/CU8PtbCJ25Ge04gv1wsF3S74w4ppq5XH9dmfRAjf.yO', NULL, NULL, '2024-03-14 16:31:24');
INSERT INTO `users` VALUES (12, 'Nabila Salsabila', '22.22.224', '2222224@adamadifa.com', NULL, '$2y$12$PR5buN8QwrdlN93gS1rsb.SHRCRL4ghnQoqyZIPuuWqDCPxM9PBJu', NULL, '2025-05-06 20:54:44', '2025-05-06 20:54:44');
INSERT INTO `users` VALUES (13, 'Farhan Rizky', '22.22.225', '2222225@adamadifa.com', NULL, '$2y$12$MwNsGPLXgbZTfT2kSxyMI.q8YqJgR4k4kAoZBHfxUlESuRC/Mf0NW', NULL, '2025-07-05 15:52:01', '2025-07-05 15:52:01');

-- ----------------------------
-- Table structure for users_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `users_karyawan`;
CREATE TABLE `users_karyawan`  (
  `nik` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `users_karyawan_nik_foreign`(`nik` ASC) USING BTREE,
  CONSTRAINT `users_karyawan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_karyawan
-- ----------------------------
INSERT INTO `users_karyawan` VALUES ('22.22.224', 12, '2025-05-06 20:54:44', '2025-05-06 20:54:44');
INSERT INTO `users_karyawan` VALUES ('22.22.225', 13, '2025-07-05 15:52:01', '2025-07-05 15:52:01');

-- ----------------------------
-- Table structure for wamessages
-- ----------------------------
DROP TABLE IF EXISTS `wamessages`;
CREATE TABLE `wamessages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sent_at` timestamp NOT NULL DEFAULT '2025-06-10 16:26:41',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wamessages
-- ----------------------------
INSERT INTO `wamessages` VALUES (113, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (114, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (115, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (116, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (117, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (118, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (119, '6282220804021:82@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (120, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ttt', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (121, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (122, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '12', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (123, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '22', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (124, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'TESTTT', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (125, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggggg', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (126, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggg', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (127, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'tttt', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (128, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (129, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'hhhh', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (130, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ddd', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (131, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'gggg', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);
INSERT INTO `wamessages` VALUES (132, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'bbbbb', 0, 'Connection Closed', '2025-06-10 16:26:41', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
