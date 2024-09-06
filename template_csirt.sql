-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 05:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcsirt`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Peringatan Keamanan', 'peringatan-keamanan', '2022-02-08 00:53:16', '2022-02-17 20:46:25'),
(2, 'Berita Keamanan Siber', 'berita-keamanan-siber', '2022-02-08 00:53:16', '2022-02-17 20:54:53'),
(3, 'Personal', 'personal', '2022-02-08 00:53:16', '2022-02-08 00:53:16'),
(4, 'Web Programming', 'web-programming', '2022-02-17 07:32:50', '2022-02-19 00:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `created_at`, `updated_at`) VALUES
(1, 'rfc2350-JatengProv-CSIRT-id.pdf', 'uploads/rfc2350-JatengProv-CSIRT-id.pdf', '2022-02-08 08:16:20', '2022-02-08 08:16:20'),
(3, 'RFC-2350-Jatim-CSIRTv-1_2.pdf', 'uploads/RFC-2350-Jatim-CSIRTv-1_2.pdf', '2022-02-17 07:35:19', '2022-02-17 07:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `name`, `slug`, `address`, `telephone`, `email`, `maps`, `created_at`, `updated_at`) VALUES
(2, 'Gov-CSIRT', 'gov-csirt', 'Jl. Harsono RM No.70, Ragunan, Pasar Minggu, Jakarta Selatan Indonesia – 12550', '(021) 78833610987', 'bantuan70@bssn.go.id', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126876.72850031761!2d106.67506405820313!3d-6.407169799999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69e89508d65a39%3A0xdb839ef71e638af0!2sBadan%20Siber%20Dan%20Sandi%20Negara!5e0!3m2!1sid!2sid!4v1644308724362!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2022-02-08 01:21:42', '2022-02-17 07:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `guidances`
--

CREATE TABLE `guidances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guidances`
--

INSERT INTO `guidances` (`id`, `name`, `file_name`, `slug`, `size`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Panduan Penanganan Insiden Serangan SQL Injection', 'Panduan-Penanganan-Insiden-Serangan-SQL-Injection.pdf', 'panduan-penanganan-insiden-serangan-sql-injection', 830958, 'uploads-guidances/Panduan-Penanganan-Insiden-Serangan-SQL-Injection.pdf', '2022-02-18 22:22:12', '2022-02-18 22:22:12'),
(2, 'Panduan Penanganan Insiden Web Defacement', 'Panduan-Penanganan-Insiden-Web-Defacement.pdf', 'panduan-penanganan-insiden-web-defacement', 1121454, 'uploads-guidances/Panduan-Penanganan-Insiden-Web-Defacement.pdf', '2022-02-18 22:22:38', '2022-02-18 22:22:38'),
(3, 'Panduan Penanganan Insiden Serangan DDOS', 'Panduan-Penanganan-Insiden-Serangan-DDoS.pdf', 'panduan-penanganan-insiden-serangan-ddos', 877882, 'uploads-guidances/Panduan-Penanganan-Insiden-Serangan-DDoS.pdf', '2022-02-18 22:23:25', '2022-02-18 22:23:25'),
(4, 'Panduan Penanganan Insiden Serangan Phising', 'Panduan-Penanganan-Insiden-Serangan-Phishing.pdf', 'panduan-penanganan-insiden-serangan-phising', 968469, 'uploads-guidances/Panduan-Penanganan-Insiden-Serangan-Phishing.pdf', '2022-02-18 22:23:44', '2022-02-18 22:23:44'),
(5, 'Panduan Penanganan Insiden Serangan Malware', 'Panduan-Penanganan-Insiden-Malware.pdf', 'panduan-penanganan-insiden-serangan-malware', 680703, 'uploads-guidances/Panduan-Penanganan-Insiden-Malware.pdf', '2022-02-18 22:24:01', '2022-02-18 22:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `image_properties`
--

CREATE TABLE `image_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_properties`
--

INSERT INTO `image_properties` (`id`, `property`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 'Logo JatimProv-CSIRT', 'logo-jatimprov-csirt', 'image-property/tO48Am4oFQsGaMjaa19v8jGEyd2Y0bbzypALFkcG.png', '2022-02-08 08:10:12', '2022-02-18 17:56:21'),
(3, 'Banner', 'Banner Home CSIRT', 'banner-home-csirt', 'image-property/gidtvwI16LGewQeozvXGNNTQ0sWm1l42oPj6dwar.jpg', '2022-02-08 08:15:22', '2022-02-19 00:46:53'),
(9, 'Logo', 'Logo Baru', 'logo-baru', 'image-property/As4vO9sAxmTOCFsJXowDsdg6hL0J7ipc2vqPC328.png', '2022-02-25 09:08:13', '2022-02-25 09:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `name`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Publik-Key-Bantuan70-pub.asc', 'public-key/Publik-Key-Bantuan70-pub.asc', '2022-02-08 08:21:07', '2022-02-08 08:21:07'),
(3, 'pgcsirt@jogjaprov.go_.id-0xC824AF44-rev.asc', 'public-key/pgcsirt@jogjaprov.go_.id-0xC824AF44-rev.asc', '2022-02-17 07:37:02', '2022-02-17 07:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_10_201824_create_posts_table', 1),
(6, '2022_01_10_205658_create_categories_table', 1),
(7, '2022_01_14_082501_create_footers_table', 1),
(8, '2022_01_15_100817_create_image_properties_table', 1),
(9, '2022_01_15_163930_create_profils_table', 1),
(10, '2022_01_15_164731_create_files_table', 1),
(11, '2022_01_28_103447_create_services_table', 1),
(12, '2022_01_28_155903_create_keys_table', 1),
(13, '2022_02_01_081246_add_is_superadmin_to_users_table', 1),
(17, '2022_02_18_125057_create_guidances_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Malware Medusa Bergabung dengan Flubot\'s Android Distribution Network', 'malware-medusa-bergabung-dengan-flubot-s-android-distribution-network', 'post-image/iiHtQOWpLSV9PtcFIbxNoFRr7UUCsVjGJNgAm8Yk.png', 'Flubot, spyware Android yang telah menyebar secara viral sejak tahun lalu, telah meningkatkan infrastrukturnya ke ancaman seluler lain yang dikenal sebagai Medusa. Menurut ThreatFabric, Medusa sekaran...', '<div>Flubot, spyware Android yang telah menyebar secara viral sejak tahun lalu, telah meningkatkan infrastrukturnya ke ancaman seluler lain yang dikenal sebagai Medusa. Menurut ThreatFabric, Medusa sekarang didistribusikan melalui infrastruktur SMS-phishing yang sama dengan Flubot. Dalam waktu kurang dari sebulan, pendekatan distribusi ini memungkinkan Medusa menjangkau lebih dari 1.500 perangkat yang terinfeksi dalam satu botnet, menyamar sebagai DHL. Menurut ThreatFabric, Medusa memiliki banyak botnet yang melakukan banyak kampanye.<br>&nbsp;<br><br>Sumber :https://threatpost.com/medusa-malware-flubot-android-distribution/178258/<br><br></div>', 1, NULL, '2022-02-08 00:53:16', '2022-02-19 00:05:40'),
(7, 2, 1, 'Tindakan Penegak Hukum Mendorong Kelompok Ransomware Melakukan Surgical Attack', 'tindakan-penegak-hukum-mendorong-kelompok-ransomware-melakukan-surgical-attack', 'post-image/VyvrZq0h1LSQpPCftCyOtf5ArWx29YFfAwft0vDZ.png', 'Banyaknya tindakan penegakan hukum yang mengarah pada penangkapan dan penghapusan ransomware pada tahun 2021 telah memaksa threat actor untuk mempersempit cakupan penargetan mereka dan memaksimalkan e...', '<div>Banyaknya tindakan penegakan hukum yang mengarah pada penangkapan dan penghapusan ransomware pada tahun 2021 telah memaksa threat actor untuk mempersempit cakupan penargetan mereka dan memaksimalkan efisiensi operasi yang dilakukan. Sebagian besar kelompok <em>ransomware-as-service </em>(RaaS) melanjutkan operasi mereka bahkan setelah otoritas penegak hukum telah menangkap anggota kunci dari kelompok ransomware tersebut. Hal itu, karena kelompok tersebut telah menyempurnakan taktik mereka untuk dampak maksimum. Menurut analisis yang diterbitkan oleh Coveware, yang melihat data negosiasi tebusan dari Q4 2021, kelompok ransomware sekarang menuntut pembayaran tebusan yang lebih tinggi daripada meningkatkan volume serangan mereka.<br><br><br>sumber : https://www.bleepingcomputer.com/news/security/law-enforcement-action-push-ransomware-gangs-to-surgical-attacks/&nbsp;</div>', 1, NULL, '2022-02-17 20:38:21', '2022-02-19 00:05:26'),
(8, 2, 1, 'Kerentanan RCE pada PHP Everywhere Mengancam Ribuan Situs WordPress', 'kerentanan-rce-pada-php-everywhere-mengancam-ribuan-situs-wordpress', 'post-image/GdOeHhrotsoi9VLmm8K3cSHDdjOULB67fbzC0Fb8.png', 'Para peneliti menemukan tiga kerentanan remote code execution (RCE) dengan kategori kritis di plugin \'PHP Everywhere\' untuk WordPress, yang digunakan oleh lebih dari 30.000 situs web di seluruh dunia....', '<div>Para peneliti menemukan tiga kerentanan remote code execution (RCE) dengan kategori kritis di plugin \'PHP Everywhere\' untuk WordPress, yang digunakan oleh lebih dari 30.000 situs web di seluruh dunia. Tiga kerentanan ditemukan oleh analis keamanan di Wordfence dan dapat dieksploitasi oleh pengguna yang memengaruhi semua versi WordPress dari 2.0.3 dan di bawahnya. Ketiga kerentanan tersebut terdaftar sebagai CVE-2022-24663, CVE-2022-24664, dan CVE-2022-24665 dengan nilai kerentanannya berdasarkan CVSS yaitu 9,9. Dua kelemahan terakhir tidak mudah dieksploitasi karena memerlukan izin tingkat kontributor, kerentanan pertama jauh lebih terbuka untuk eksploitasi yang lebih luas karena dapat dieksploitasi hanya dengan menjadi subscriber di situs.<br>&nbsp;<br>Sumber : https://www.bleepingcomputer.com/news/security/php-everywhere-rce-flaws-threaten-thousands-of-wordpress-sites/<br><br></div>', 1, NULL, '2022-02-17 20:40:06', '2022-02-19 00:05:02'),
(9, 2, 1, 'Apple Memperbaiki Zero-day yang Dieksploitasi untuk Meretas iPhone, iPad, Mac', 'apple-memperbaiki-zero-day-yang-dieksploitasi-untuk-meretas-iphone-ipad-mac', 'post-image/wjqNEpu0QSqEHFB1yPHZhlmf7FgcfNFUSnkfeeAd.png', 'Apple telah merilis pembaruan keamanan untuk memperbaiki kerentanan zero-day yang dieksploitasi di alam liar oleh penyerang untuk meretas iPhone, iPad, dan Mac. Patch zero-day hari ini dilacak sebagai...', '<div>Apple telah merilis pembaruan keamanan untuk memperbaiki kerentanan zero-day yang dieksploitasi di alam liar oleh penyerang untuk meretas iPhone, iPad, dan Mac. Patch zero-day hari ini dilacak sebagai CVE-2022-22620 dan merupakan masalah Penggunaan WebKit Gratis yang dapat menyebabkan crash pada OS dan eksekusi kode pada perangkat yang disusupi. Eksploitasi bug ini berhasil memungkinkan penyerang mengeksekusi kode arbitrer pada iPhone dan iPad yang menjalankan versi iOS dan iPadOS yang rentan setelah memproses konten web yang berbahaya. Apple menangani CVE-2022-22620 dengan manajemen memori yang ditingkatkan di iOS 15.3.1, iPadOS 15.3.1, dan macOS Monterey 12.2.1.<br>&nbsp;<br>Sumber : https://www.bleepingcomputer.com/news/security/apple-patches-new-zero-day-exploited-to-hack-iphones-ipads-macs/<br><br></div>', 1, NULL, '2022-02-17 20:41:39', '2022-02-19 00:04:42'),
(10, 2, 1, 'Ransomware LockBit Kembangkan Versi Linuxnya', 'ransomware-lockbit-kembangkan-versi-linuxnya', 'post-image/tfE7Vwi0VsqwbGVAtSqVZpCnnu5xTx8PCC5jJ8ji.jpg', 'LockBit adalah salah satu keluarga ransomware paling produktif. Ransomware ini menjadi lebih berbahaya dengan varian yang berfokus pada Linux dan VMware ESXi. Versi ini diberi nama LockBit Linux-ESXi...', '<div>LockBit adalah salah satu keluarga ransomware paling produktif. Ransomware ini menjadi lebih berbahaya dengan varian yang berfokus pada Linux dan VMware ESXi. Versi ini diberi nama LockBit Linux-ESXi Locker versi 1.0, yang telah ditemukan diiklankan di forum underground. Versi baru ini menggunakan kombinasi algoritma AES dan ECC untuk enkripsi. LockBit 1.0 memiliki fungsi logging dan dapat mencatat informasi prosesor, VM, total file, file terenkripsi dan VM, dan waktu yang dihabiskan untuk mengenkripsi. Selain itu, ransomware ini memiliki perintah untuk mengenkripsi gambar VM di server ESXi. Namun, catatan tebusan mirip dengan LockBit. Versi baru LockBit mensyaratkan bahwa ia dapat menyebar lebih jauh dan mengenkripsi berbagai perangkat dan file. Hal ini akan meningkatkan tekanan pada korban untuk membayar uang tebusan. Selain itu, server ESXi menampung beberapa VM dan enkripsi yang berhasil menunjukkan dampak besar pada organisasi korban.<br><br></div>', 1, NULL, '2022-02-17 20:45:08', '2022-02-19 00:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `profils`
--

CREATE TABLE `profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profils`
--

INSERT INTO `profils` (`id`, `name`, `slug`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Gov-CSIRT', 'gov-csirt', '<div>ini profil gov csirt baru</div>', 'https://osticket.com/', '2022-02-08 07:56:44', '2022-02-08 08:03:50'),
(3, 'JatimProv-CSIRT', 'jatimprov-csirt', '<div>Ini Profil baru, welcome to Website JatimProv-CSIRT</div>', 'https://bssn.go.id', '2022-02-17 07:34:27', '2022-02-17 07:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Gov-CSIRT', 'gov-csirt', '<div>ini merupakan layanan dari gov-csirt</div>', '2022-02-08 08:35:16', '2022-02-08 08:35:16'),
(4, 'JatimProv-CSIRT', 'jatimprov-csirt', '<div>Ini merupakan layanan JatimProv-CSIRT yang telah diedit</div>', '2022-02-17 07:36:18', '2022-02-17 07:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `is_superadmin`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$CeAMAQeChUytGyOLe.B0GOWmmbYLdnfahkYdQacGTCOzUonPQEB/W', 1, NULL, '2022-02-08 00:53:15', '2022-02-25 07:57:57', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `footers_name_unique` (`name`),
  ADD UNIQUE KEY `footers_slug_unique` (`slug`);

--
-- Indexes for table `guidances`
--
ALTER TABLE `guidances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guidances_name_unique` (`name`),
  ADD UNIQUE KEY `guidances_slug_unique` (`slug`);

--
-- Indexes for table `image_properties`
--
ALTER TABLE `image_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image_properties_name_unique` (`name`),
  ADD UNIQUE KEY `image_properties_slug_unique` (`slug`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profils_name_unique` (`name`),
  ADD UNIQUE KEY `profils_slug_unique` (`slug`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_name_unique` (`name`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guidances`
--
ALTER TABLE `guidances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `image_properties`
--
ALTER TABLE `image_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profils`
--
ALTER TABLE `profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
