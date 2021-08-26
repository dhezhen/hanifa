-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2021 pada 18.51
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanifa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(2, '56b437b260', 'Tahsin', 1, 'tahsin', 1628701200, NULL, NULL, NULL),
(4, '31c625d926', 'Tahsin 1', 3, 'tahsin-1', 1629133200, 1629583200, NULL, NULL),
(10, '6db7db5c66', 'Al-Quran', 0, 'al-quran', 1629583200, 1629583200, 'fas fa-book', '93e9cdd73981a40a407ce72df9fbe552.jpg'),
(11, '3e1841fa7e', 'Tahsin Level 1', 10, 'tahsin-level-1', 1629583200, NULL, NULL, NULL),
(12, '2702f6ec3c', 'Tahsin Level 2', 10, 'tahsin-level-2', 1629583200, NULL, NULL, NULL),
(13, 'f0ff466c76', 'Tahsin Level 3', 10, 'tahsin-level-3', 1629583200, NULL, NULL, NULL),
(14, 'eff1bad2ef', 'Tahsin Level 4', 10, 'tahsin-level-4', 1629583200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aldjnqkh37hs2lujj5rr2qe7oreaimik', '::1', 1629986417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393938363235323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b),
('31t41ivkrsgsdodq84j0d9e58d55g6jh', '::1', 1629989253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393938393235333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('e4a2es8eaqo2f1u6d85b9evr8s5k088t', '::1', 1629989584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393938393538343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('goql8d6kp131v5dc0ef9l6jjr4f1cuhq', '::1', 1629989895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393938393839353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('vtipggmvv2jht282a3kmgq8rasehd8un', '::1', 1629990271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939303237313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('l11vpt68c5a7na3upqt418oqr5q4i44m', '::1', 1629991919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939313931393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('nh5cbqurfam7q0s47v6lv6kabecidmdg', '::1', 1629992229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939323232393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('1adj4tsfu2mgsi6fk9tcmvq34quk9k0f', '::1', 1629992895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939323839353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('bjb0tssp873hmgg6f596p1fh8d7no10k', '::1', 1629993211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939333231313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('mif2k7n1k6fjujbedqvfs7e9i7l55b9a', '::1', 1629993531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939333533313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b),
('4kg0ghubnqg223ub417umq593u58bjm2', '::1', 1629994158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939343135383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b757365725f69647c733a323a223137223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31353a22496e737472756b74757220416d6972223b69735f696e7374727563746f727c733a313a2231223b666c6173685f6d6573736167657c733a33303a2253656c616d617420446174616e6720496e737472756b74757220416d6972223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f6c6f67696e7c733a313a2231223b),
('12l8ai1vk1o8p6rqas9nvfrfvs03o410', '::1', 1629994459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939343435393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b757365725f69647c733a323a223137223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31353a22496e737472756b74757220416d6972223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('m6k8vgafhao6vvjmjvh1vt11nga0dcmm', '::1', 1629994854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939343835343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c733a33303a22646564652e687573656e4073747564656e742e756e696b752e61632e6964223b),
('ai6f09nq6iqiefcnnup8uniluec858uk', '::1', 1629995164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939353136343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c4e3b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2241646d696e205574616d61223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('ji9v9333a5scqo67op0qtm65040f1rav', '::1', 1629995643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939353634333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c733a33303a22646564652e687573656e4073747564656e742e756e696b752e61632e6964223b),
('qi55nv9uvnbl4q8h9osr3jqmp34b7c42', '::1', 1629995574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939353534323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2241646d696e205574616d61223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a32363a2253656c616d617420446174616e672041646d696e205574616d61223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('3c99upq8hda19033l6oilelmakekchke', '::1', 1629995945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939353934353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c733a33303a22646564652e687573656e4073747564656e742e756e696b752e61632e6964223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2241646d696e205574616d61223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a32363a2253656c616d617420446174616e672041646d696e205574616d61223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('9dh5tg23s30r33jnm9nkj6jjev79r2rj', '::1', 1629996500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939363530303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c733a33303a22646564652e687573656e4073747564656e742e756e696b752e61632e6964223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2241646d696e205574616d61223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('hbjgom83bikohu9kdf4unbqqo734q3dk', '::1', 1629996521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393939363530303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a393a22696e646f6e65736961223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a303b72656769737465725f656d61696c7c733a33303a22646564652e687573656e4073747564656e742e756e696b752e61632e6964223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2241646d696e205574616d61223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcomes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `creator`) VALUES
(9, 'Mengenal Konsep Hukum Tajwid', 'Deskripsi Singkat', '<p>Deskripsi Detail<br></p>', '[\"Mengetahui Hukum Dasar Tajwid Dll\"]', 'indonesia', 10, 11, '[31,33,34,35,36,37]', '[\"Sudah Mengenal Huruf Hijaiyah\"]', 20000, NULL, 0, 'beginner', '19,17', NULL, 'https://www.youtube.com/watch?v=DS5smqJdgu8&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=1', 1629583200, 1629756000, 'general', 1, 0, 'active', 'youtube', '', '-', 1, 1, 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', 'Ø‹', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'Æ’', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'Ð¼Ð°Ð½', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', 'â‚¬', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'Ð»Ð²', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', 'Â£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', 'áŸ›', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', 'Â¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'ColÃ³n', 'CRC', 'â‚¡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', 'â‚±', 0, 0),
(30, 'Koruny', 'CZK', 'KÄ', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', 'Â£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', 'Â£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', 'Â¢', 0, 0),
(39, 'Pounds', 'GIP', 'Â£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', 'Â£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', 'ï·¼', 0, 0),
(50, 'Pounds', 'IMP', 'Â£', 0, 0),
(51, 'New Shekels', 'ILS', 'â‚ª', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', 'Â¥', 1, 1),
(54, 'Pounds', 'JEP', 'Â£', 0, 0),
(55, 'Tenge', 'KZT', 'Ð»Ð²', 0, 1),
(56, 'Won', 'KPW', 'â‚©', 0, 0),
(57, 'Won', 'KRW', 'â‚©', 0, 1),
(58, 'Soms', 'KGS', 'Ð»Ð²', 0, 1),
(59, 'Kips', 'LAK', 'â‚­', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', 'Â£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'Ð´ÐµÐ½', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', 'â‚¨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', 'â‚®', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', 'â‚¨', 0, 1),
(73, 'Guilders', 'ANG', 'Æ’', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', 'â‚¦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', 'ï·¼', 0, 0),
(79, 'Rupees', 'PKR', 'â‚¨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zÅ‚', 1, 1),
(85, 'Rials', 'QAR', 'ï·¼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'Ñ€ÑƒÐ±', 1, 1),
(88, 'Pounds', 'SHP', 'Â£', 0, 1),
(89, 'Riyals', 'SAR', 'ï·¼', 0, 1),
(90, 'Dinars', 'RSD', 'Ð”Ð¸Ð½.', 0, 1),
(91, 'Rupees', 'SCR', 'â‚¨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', 'â‚¨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', 'Â£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', 'à¸¿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', 'Â£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', 'â‚´', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'Ð»Ð²', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', 'â‚«', 0, 1),
(111, 'Rials', 'YER', 'ï·¼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES
(7, 17, 9, 1629756000, NULL),
(8, 20, 9, 1629756000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Yuk Belajar Al-Qur&#039;an'),
(2, 'banner_sub_title', 'Mari belajar Al-Qur&#039;an dari dasar kapanpun dan dimanapun anda berada dengan menggunakan Metode Hanifa'),
(4, 'about_us', '<p></p><h2><span xss=\"removed\">Tentang Kami</span></h2><p><span xss=\"removed\">Ini adalah Website </span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'Situs web ini menggunakan cookie untuk mempersonalisasi konten dan menganalisis lalu lintas untuk menawarkan pengalaman yang lebih baik kepada Anda.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', '83f344600d15cbf1ed5cb005db32f994.jpg'),
(18, 'light_logo', 'f213d45816cad90d7333c5365de25549.png'),
(19, 'dark_logo', '83ac8b4d3275014fb480cf49c2a855c0.png'),
(20, 'small_logo', '0a73de68f10e15626eb98701ecf03adb.png'),
(21, 'favicon', 'c50303ff5222bce50ce719f09bfcef1e.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'recaptcha-secretkey'),
(24, 'recaptcha_sitekey', 'recaptcha-sitekey');

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'manage_profile', NULL),
(3, 'dashboard', NULL),
(4, 'categories', NULL),
(5, 'courses', NULL),
(6, 'students', NULL),
(7, 'enroll_history', NULL),
(8, 'message', NULL),
(9, 'settings', NULL),
(10, 'system_settings', NULL),
(11, 'frontend_settings', NULL),
(12, 'payment_settings', NULL),
(13, 'manage_language', NULL),
(14, 'edit_profile', NULL),
(15, 'log_out', NULL),
(16, 'first_name', NULL),
(17, 'last_name', NULL),
(18, 'email', NULL),
(19, 'facebook_link', NULL),
(20, 'twitter_link', NULL),
(21, 'linkedin_link', NULL),
(22, 'a_short_title_about_yourself', NULL),
(23, 'biography', NULL),
(24, 'photo', NULL),
(25, 'select_image', NULL),
(26, 'change', NULL),
(27, 'remove', NULL),
(28, 'update_profile', NULL),
(29, 'change_password', NULL),
(30, 'current_password', NULL),
(31, 'new_password', NULL),
(32, 'confirm_new_password', NULL),
(33, 'delete', NULL),
(34, 'cancel', NULL),
(35, 'are_you_sure_to_update_this_information', NULL),
(36, 'yes', NULL),
(37, 'no', NULL),
(38, 'system settings', NULL),
(39, 'system_name', NULL),
(40, 'system_title', NULL),
(41, 'slogan', NULL),
(42, 'system_email', NULL),
(43, 'address', NULL),
(44, 'phone', NULL),
(45, 'youtube_api_key', NULL),
(46, 'get_youtube_api_key', NULL),
(47, 'vimeo_api_key', NULL),
(48, 'purchase_code', NULL),
(49, 'language', NULL),
(50, 'text-align', NULL),
(51, 'update_system_settings', NULL),
(52, 'update_product', NULL),
(53, 'file', NULL),
(54, 'install_update', NULL),
(55, 'system_logo', NULL),
(56, 'update_logo', NULL),
(57, 'get_vimeo_api_key', NULL),
(58, 'add_category', NULL),
(59, 'category_title', NULL),
(60, 'sub_categories', NULL),
(61, 'actions', NULL),
(62, 'action', NULL),
(63, 'manage_sub_categories', NULL),
(64, 'edit', NULL),
(65, 'add_course', NULL),
(66, 'select_category', NULL),
(67, 'title', NULL),
(68, 'category', NULL),
(69, '#_section', NULL),
(70, '#_lesson', NULL),
(71, '#_enrolled_user', NULL),
(72, 'view_course_details', NULL),
(73, 'manage_section', NULL),
(74, 'manage_lesson', NULL),
(75, 'student', NULL),
(76, 'add_student', NULL),
(77, 'name', NULL),
(78, 'date_added', NULL),
(79, 'enrolled_courses', NULL),
(80, 'view_profile', NULL),
(81, 'admin_dashboard', NULL),
(82, 'total_courses', NULL),
(83, 'number_of_courses', NULL),
(84, 'total_lessons', NULL),
(85, 'number_of_lessons', NULL),
(86, 'total_enrollment', NULL),
(87, 'number_of_enrollment', NULL),
(88, 'total_student', NULL),
(89, 'number_of_student', NULL),
(90, 'manage_sections', NULL),
(91, 'manage sections', NULL),
(92, 'course', NULL),
(93, 'add_section', NULL),
(94, 'lessons', NULL),
(95, 'serialize_sections', NULL),
(96, 'add_lesson', NULL),
(97, 'edit_section', NULL),
(98, 'delete_section', NULL),
(99, 'course_details', NULL),
(100, 'course details', NULL),
(101, 'details', NULL),
(102, 'instructor', NULL),
(103, 'sub_category', NULL),
(104, 'enrolled_user', NULL),
(105, 'last_modified', NULL),
(106, 'manage language', NULL),
(107, 'language_list', NULL),
(108, 'add_phrase', NULL),
(109, 'add_language', NULL),
(110, 'option', NULL),
(111, 'edit_phrase', NULL),
(112, 'delete_language', NULL),
(113, 'phrase', NULL),
(114, 'value_required', NULL),
(115, 'frontend settings', NULL),
(116, 'banner_title', NULL),
(117, 'banner_sub_title', NULL),
(118, 'about_us', NULL),
(119, 'blog', NULL),
(120, 'update_frontend_settings', NULL),
(121, 'update_banner', NULL),
(122, 'banner_image', NULL),
(123, 'update_banner_image', NULL),
(124, 'payment settings', NULL),
(125, 'paypal_settings', NULL),
(126, 'client_id', NULL),
(127, 'sandbox', NULL),
(128, 'production', NULL),
(129, 'active', NULL),
(130, 'mode', NULL),
(131, 'stripe_settings', NULL),
(132, 'testmode', NULL),
(133, 'on', NULL),
(134, 'off', NULL),
(135, 'test_secret_key', NULL),
(136, 'test_public_key', NULL),
(137, 'live_secret_key', NULL),
(138, 'live_public_key', NULL),
(139, 'save_changes', NULL),
(140, 'category_code', NULL),
(141, 'update_phrase', NULL),
(142, 'check', NULL),
(143, 'settings_updated', NULL),
(144, 'checking', NULL),
(145, 'phrase_added', NULL),
(146, 'language_added', NULL),
(147, 'language_deleted', NULL),
(148, 'add course', NULL),
(149, 'add_courses', NULL),
(150, 'add_course_form', NULL),
(151, 'basic_info', NULL),
(152, 'short_description', NULL),
(153, 'description', NULL),
(154, 'level', NULL),
(155, 'beginner', NULL),
(156, 'advanced', NULL),
(157, 'intermediate', NULL),
(158, 'language_made_in', NULL),
(159, 'is_top_course', NULL),
(160, 'outcomes', NULL),
(161, 'category_and_sub_category', NULL),
(162, 'select_a_category', NULL),
(163, 'select_a_category_first', NULL),
(164, 'requirements', NULL),
(165, 'price_and_discount', NULL),
(166, 'price', NULL),
(167, 'has_discount', NULL),
(168, 'discounted_price', NULL),
(169, 'course_thumbnail', NULL),
(170, 'note', NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL),
(172, 'course_overview_url', NULL),
(173, '0%', NULL),
(174, 'manage profile', NULL),
(175, 'edit_course', NULL),
(176, 'edit course', NULL),
(177, 'edit_courses', NULL),
(178, 'edit_course_form', NULL),
(179, 'update_course', NULL),
(180, 'course_updated', NULL),
(181, 'number_of_sections', NULL),
(182, 'number_of_enrolled_users', NULL),
(183, 'add section', NULL),
(184, 'section', NULL),
(185, 'add_section_form', NULL),
(186, 'update', NULL),
(187, 'serialize_section', NULL),
(188, 'serialize section', NULL),
(189, 'submit', NULL),
(190, 'sections_have_been_serialized', NULL),
(191, 'select_course', NULL),
(192, 'search', NULL),
(193, 'thumbnail', NULL),
(194, 'duration', NULL),
(195, 'provider', NULL),
(196, 'add lesson', NULL),
(197, 'add_lesson_form', NULL),
(198, 'video_type', NULL),
(199, 'select_a_course', NULL),
(200, 'select_a_course_first', NULL),
(201, 'video_url', NULL),
(202, 'invalid_url', NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL),
(204, 'for', NULL),
(205, 'of', NULL),
(206, 'edit_lesson', NULL),
(207, 'edit lesson', NULL),
(208, 'edit_lesson_form', NULL),
(209, 'login', NULL),
(210, 'password', NULL),
(211, 'forgot_password', NULL),
(212, 'back_to_website', NULL),
(213, 'send_mail', NULL),
(214, 'back_to_login', NULL),
(215, 'student_add', NULL),
(216, 'student add', NULL),
(217, 'add_students', NULL),
(218, 'student_add_form', NULL),
(219, 'login_credentials', NULL),
(220, 'social_information', NULL),
(221, 'facebook', NULL),
(222, 'twitter', NULL),
(223, 'linkedin', NULL),
(224, 'user_image', NULL),
(225, 'add_user', NULL),
(226, 'user_update_successfully', NULL),
(227, 'user_added_successfully', NULL),
(228, 'student_edit', NULL),
(229, 'student edit', NULL),
(230, 'edit_students', NULL),
(231, 'student_edit_form', NULL),
(232, 'update_user', NULL),
(233, 'enroll history', NULL),
(234, 'filter', NULL),
(235, 'user_name', NULL),
(236, 'enrolled_course', NULL),
(237, 'enrollment_date', NULL),
(238, 'biography2', NULL),
(239, 'home', NULL),
(240, 'search_for_courses', NULL),
(241, 'total', NULL),
(242, 'go_to_cart', NULL),
(243, 'your_cart_is_empty', NULL),
(244, 'log_in', NULL),
(245, 'sign_up', NULL),
(246, 'what_do_you_want_to_learn', NULL),
(247, 'online_courses', NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL),
(249, 'expert_instruction', NULL),
(250, 'find_the_right_course_for_you', NULL),
(251, 'lifetime_access', NULL),
(252, 'learn_on_your_schedule', NULL),
(253, 'top_courses', NULL),
(254, 'last_updater', NULL),
(255, 'hours', NULL),
(256, 'add_to_cart', NULL),
(257, 'top', NULL),
(258, 'latest_courses', NULL),
(259, 'added_to_cart', NULL),
(260, 'admin', NULL),
(261, 'log_in_to_your_udemy_account', NULL),
(262, 'by_signing_up_you_agree_to_our', NULL),
(263, 'terms_of_use', NULL),
(264, 'and', NULL),
(265, 'privacy_policy', NULL),
(266, 'do_not_have_an_account', NULL),
(267, 'sign_up_and_start_learning', NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL),
(269, 'already_have_an_account', NULL),
(270, 'checkout', NULL),
(271, 'paypal', NULL),
(272, 'stripe', NULL),
(273, 'step', NULL),
(274, 'how_would_you_rate_this_course_overall', NULL),
(275, 'write_a_public_review', NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL),
(278, 'next', NULL),
(279, 'previous', NULL),
(280, 'publish', NULL),
(281, 'search_results', NULL),
(282, 'ratings', NULL),
(283, 'search_results_for', NULL),
(284, 'category_page', NULL),
(285, 'all', NULL),
(286, 'category_list', NULL),
(287, 'by', NULL),
(288, 'go_to_wishlist', NULL),
(289, 'hi', NULL),
(290, 'my_courses', NULL),
(291, 'my_wishlist', NULL),
(292, 'my_messages', NULL),
(293, 'purchase_history', NULL),
(294, 'user_profile', NULL),
(295, 'already_purchased', NULL),
(296, 'all_courses', NULL),
(297, 'wishlists', NULL),
(298, 'search_my_courses', NULL),
(299, 'students_enrolled', NULL),
(300, 'created_by', NULL),
(301, 'last_updated', NULL),
(302, 'what_will_i_learn', NULL),
(303, 'view_more', NULL),
(304, 'other_related_courses', NULL),
(305, 'updated', NULL),
(306, 'curriculum_for_this_course', NULL),
(307, 'about_the_instructor', NULL),
(308, 'reviews', NULL),
(309, 'student_feedback', NULL),
(310, 'average_rating', NULL),
(311, 'preview_this_course', NULL),
(312, 'includes', NULL),
(313, 'on_demand_videos', NULL),
(314, 'full_lifetime_access', NULL),
(315, 'access_on_mobile_and_tv', NULL),
(316, 'course_preview', NULL),
(317, 'instructor_page', NULL),
(318, 'buy_now', NULL),
(319, 'shopping_cart', NULL),
(320, 'courses_in_cart', NULL),
(321, 'student_name', NULL),
(322, 'amount_to_pay', NULL),
(323, 'payment_successfully_done', NULL),
(324, 'filter_by', NULL),
(325, 'instructors', NULL),
(326, 'reset', NULL),
(327, 'your', NULL),
(328, 'rating', NULL),
(329, 'course_detail', NULL),
(330, 'start_lesson', NULL),
(331, 'show_full_biography', NULL),
(332, 'terms_and_condition', NULL),
(333, 'about', NULL),
(334, 'terms_&_condition', NULL),
(335, 'sub categories', NULL),
(336, 'add_sub_category', NULL),
(337, 'sub_category_title', NULL),
(338, 'add sub category', NULL),
(339, 'add_sub_category_form', NULL),
(340, 'sub_category_code', NULL),
(341, 'data_deleted', NULL),
(342, 'edit_category', NULL),
(343, 'edit category', NULL),
(344, 'edit_category_form', NULL),
(345, 'font', NULL),
(346, 'awesome class', NULL),
(347, 'update_category', NULL),
(348, 'data_updated_successfully', NULL),
(349, 'edit_sub_category', NULL),
(350, 'edit sub category', NULL),
(351, 'sub_category_edit', NULL),
(352, 'update_sub_category', NULL),
(353, 'course_added', NULL),
(354, 'user_deleted_successfully', NULL),
(355, 'private_messaging', NULL),
(356, 'private messaging', NULL),
(357, 'messages', NULL),
(358, 'select_message_to_read', NULL),
(359, 'new_message', NULL),
(360, 'email_duplication', NULL),
(361, 'your_registration_has_been_successfully_done', NULL),
(362, 'profile', NULL),
(363, 'account', NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL),
(365, 'basics', NULL),
(366, 'add_your_twitter_link', NULL),
(367, 'add_your_facebook_link', NULL),
(368, 'add_your_linkedin_link', NULL),
(369, 'credentials', NULL),
(370, 'edit_your_account_settings', NULL),
(371, 'enter_current_password', NULL),
(372, 'enter_new_password', NULL),
(373, 're-type_your_password', NULL),
(374, 'save', NULL),
(375, 'update_user_photo', NULL),
(376, 'update_your_photo', NULL),
(377, 'upload_image', NULL),
(378, 'updated_successfully', NULL),
(379, 'invalid_login_credentials', NULL),
(380, 'blank_page', NULL),
(381, 'no_section_found', NULL),
(382, 'select_a_message_thread_to_read_it_here', NULL),
(383, 'send', NULL),
(384, 'type_your_message', NULL),
(385, 'date', NULL),
(386, 'total_price', NULL),
(387, 'payment_type', NULL),
(388, 'edit section', NULL),
(389, 'edit_section_form', NULL),
(390, 'reply_message', NULL),
(391, 'reply', NULL),
(392, 'log_in_to_your_account', NULL),
(393, 'no_result_found', NULL),
(394, 'enrollment', NULL),
(395, 'enroll_a_student', NULL),
(396, 'report', NULL),
(397, 'admin_revenue', NULL),
(398, 'instructor_revenue', NULL),
(399, 'instructor_settings', NULL),
(400, 'view_frontend', NULL),
(401, 'number_of_active_courses', NULL),
(402, 'number_of_pending_courses', NULL),
(403, 'all_instructor', NULL),
(404, 'active_courses', NULL),
(405, 'pending_courses', NULL),
(406, 'no_data_found', NULL),
(407, 'view_course_on_frontend', NULL),
(408, 'mark_as_pending', NULL),
(409, 'add category', NULL),
(410, 'add_categories', NULL),
(411, 'category_add_form', NULL),
(412, 'icon_picker', NULL),
(413, 'enroll a student', NULL),
(414, 'enrollment_form', NULL),
(415, 'admin revenue', NULL),
(416, 'total_amount', NULL),
(417, 'instructor revenue', NULL),
(418, 'status', NULL),
(419, 'instructor settings', NULL),
(420, 'allow_public_instructor', NULL),
(421, 'instructor_revenue_percentage', NULL),
(422, 'admin_revenue_percentage', NULL),
(423, 'update_instructor_settings', NULL),
(424, 'payment_info', NULL),
(425, 'required_for_instructors', NULL),
(426, 'paypal_client_id', NULL),
(427, 'stripe_public_key', NULL),
(428, 'stripe_secret_key', NULL),
(429, 'mark_as_active', NULL),
(430, 'mail_subject', NULL),
(431, 'mail_body', NULL),
(432, 'paid', NULL),
(433, 'pending', NULL),
(434, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL),
(435, 'pay_with_paypal', NULL),
(436, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL),
(437, 'pay_with_stripe', NULL),
(438, 'create_course', NULL),
(439, 'payment_report', NULL),
(440, 'instructor_dashboard', NULL),
(441, 'draft', NULL),
(442, 'view_lessons', NULL),
(443, 'course_title', NULL),
(444, 'update_your_payment_settings', NULL),
(445, 'edit_course_detail', NULL),
(446, 'edit_basic_informations', NULL),
(447, 'publish_this_course', NULL),
(448, 'save_to_draft', NULL),
(449, 'update_section', NULL),
(450, 'analyzing_given_url', NULL),
(451, 'select_a_section', NULL),
(452, 'update_lesson', NULL),
(453, 'website_name', NULL),
(454, 'website_title', NULL),
(455, 'website_keywords', NULL),
(456, 'website_description', NULL),
(457, 'author', NULL),
(458, 'footer_text', NULL),
(459, 'footer_link', NULL),
(460, 'update_backend_logo', NULL),
(461, 'update_favicon', NULL),
(462, 'favicon', NULL),
(463, 'active courses', NULL),
(464, 'product_updated_successfully', NULL),
(465, 'course_overview_provider', NULL),
(466, 'youtube', NULL),
(467, 'vimeo', NULL),
(468, 'html5', NULL),
(469, 'meta_keywords', NULL),
(470, 'meta_description', NULL),
(471, 'lesson_type', NULL),
(472, 'video', NULL),
(473, 'select_type_of_lesson', NULL),
(474, 'text_file', NULL),
(475, 'pdf_file', NULL),
(476, 'document_file', NULL),
(477, 'image_file', NULL),
(478, 'lesson_provider', NULL),
(479, 'select_lesson_provider', NULL),
(480, 'analyzing_the_url', NULL),
(481, 'attachment', NULL),
(482, 'summary', NULL),
(483, 'download', NULL),
(484, 'system_settings_updated', NULL),
(485, 'course_updated_successfully', NULL),
(486, 'please_wait_untill_admin_approves_it', NULL),
(487, 'pending courses', NULL),
(488, 'course_status_updated', NULL),
(489, 'smtp_settings', NULL),
(490, 'free_course', NULL),
(491, 'free', NULL),
(492, 'get_enrolled', NULL),
(493, 'course_added_successfully', NULL),
(494, 'update_frontend_logo', NULL),
(495, 'system_currency_settings', NULL),
(496, 'select_system_currency', NULL),
(497, 'currency_position', NULL),
(498, 'left', NULL),
(499, 'right', NULL),
(500, 'left_with_a_space', NULL),
(501, 'right_with_a_space', NULL),
(502, 'paypal_currency', NULL),
(503, 'select_paypal_currency', NULL),
(504, 'stripe_currency', NULL),
(505, 'select_stripe_currency', NULL),
(506, 'heads_up', NULL),
(507, 'please_make_sure_that', NULL),
(508, 'system_currency', NULL),
(509, 'are_same', NULL),
(510, 'smtp settings', NULL),
(511, 'protocol', NULL),
(512, 'smtp_host', NULL),
(513, 'smtp_port', NULL),
(514, 'smtp_user', NULL),
(515, 'smtp_pass', NULL),
(516, 'update_smtp_settings', NULL),
(517, 'phrase_updated', NULL),
(518, 'registered_user', NULL),
(519, 'provide_your_valid_login_credentials', NULL),
(520, 'registration_form', NULL),
(521, 'provide_your_email_address_to_get_password', NULL),
(522, 'reset_password', NULL),
(523, 'want_to_go_back', NULL),
(524, 'message_sent!', NULL),
(525, 'selected_icon', NULL),
(526, 'pick_another_icon_picker', NULL),
(527, 'show_more', NULL),
(528, 'show_less', NULL),
(529, 'all_category', NULL),
(530, 'price_range', NULL),
(531, 'price_range_withing', NULL),
(532, 'all_categories', NULL),
(533, 'all_sub_category', NULL),
(534, 'number_of_results', NULL),
(535, 'showing_on_this_page', NULL),
(536, 'welcome', NULL),
(537, 'my_account', NULL),
(538, 'logout', NULL),
(539, 'visit_website', NULL),
(540, 'navigation', NULL),
(541, 'add_new_category', NULL),
(542, 'enrolment', NULL),
(543, 'enrol_history', NULL),
(544, 'enrol_a_student', NULL),
(545, 'language_settings', NULL),
(546, 'congratulations', NULL),
(547, 'oh_snap', NULL),
(548, 'close', NULL),
(549, 'parent', NULL),
(550, 'none', NULL),
(551, 'category_thumbnail', NULL),
(552, 'the_image_size_should_be', NULL),
(553, 'choose_thumbnail', NULL),
(554, 'data_added_successfully', NULL),
(555, '', NULL),
(556, 'update_category_form', NULL),
(557, 'student_list', NULL),
(558, 'choose_user_image', NULL),
(559, 'finish', NULL),
(560, 'thank_you', NULL),
(561, 'you_are_almost_there', NULL),
(562, 'you_are_just_one_click_away', NULL),
(563, 'country', NULL),
(564, 'website_settings', NULL),
(565, 'write_down_facebook_url', NULL),
(566, 'write_down_twitter_url', NULL),
(567, 'write_down_linkedin_url', NULL),
(568, 'google_link', NULL),
(569, 'write_down_google_url', NULL),
(570, 'instagram_link', NULL),
(571, 'write_down_instagram_url', NULL),
(572, 'pinterest_link', NULL),
(573, 'write_down_pinterest_url', NULL),
(574, 'update_settings', NULL),
(575, 'upload_banner_image', NULL),
(576, 'update_light_logo', NULL),
(577, 'upload_light_logo', NULL),
(578, 'update_dark_logo', NULL),
(579, 'upload_dark_logo', NULL),
(580, 'update_small_logo', NULL),
(581, 'upload_small_logo', NULL),
(582, 'upload_favicon', NULL),
(583, 'logo_updated', NULL),
(584, 'favicon_updated', NULL),
(585, 'banner_image_update', NULL),
(586, 'frontend_settings_updated', NULL),
(587, 'setup_payment_informations', NULL),
(588, 'update_system_currency', NULL),
(589, 'setup_paypal_settings', NULL),
(590, 'update_paypal_keys', NULL),
(591, 'setup_stripe_settings', NULL),
(592, 'test_mode', NULL),
(593, 'update_stripe_keys', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES
(91, 'Konsep Dasar Sukun', '00:03:41', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=DS5smqJdgu8&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p', 1629583200, NULL, 'video', NULL, 'url', 'Detail Sukun', 1, 0, 'html5', 'https://www.youtube.com/watch?v=DS5smqJdgu8&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p', '00:03:41'),
(92, 'Sukun - Alirkan Suara dan Nafas (1)', '00:11:28', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=oY7IFakYNLk&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=2', 1629583200, 1629583200, 'video', '', 'url', '', 0, 0, 'html5', 'https://www.youtube.com/watch?v=oY7IFakYNLk&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=2', '00:11:28'),
(93, 'Sukun - Alirkan Suara dan Nafas (2)', '00:09:42', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=QPZqwvaHMZk&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=3', 1629583200, 1629583200, 'video', '', 'url', 'ini adalah ringkasan', 0, 0, 'html5', 'https://www.youtube.com/watch?v=QPZqwvaHMZk&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=3', '00:09:42'),
(94, 'Sukun - Alirkan Suara Tanpa Disertai Nafas (1)', '00:10:50', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=GwgNPo8CdWc&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=4', 1629583200, 1629583200, 'video', '', 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=GwgNPo8CdWc&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=4', '00:10:50'),
(95, 'Sukun - Alirkan Suara Tanpa Disertai Nafas (2)', '00:10:08', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=TUkhTWkJrJw&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=5', 1629583200, NULL, 'video', NULL, 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=TUkhTWkJrJw&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=5', '00:10:08'),
(96, 'Sukun - Tahan Suara Kemudian Alirkan Nafas', '00:05:19', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=UDnmLSpe19M&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=6', 1629583200, 1629583200, 'video', '', 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=UDnmLSpe19M&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=6', '00:05:19'),
(97, 'Sukun - Alirkan Sebagian Suara', '00:09:35', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=H_ydtYo_Auc&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=7', 1629583200, NULL, 'video', NULL, 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=H_ydtYo_Auc&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=7', '00:09:35'),
(98, 'Sukun - Pantulkan Suara Tanpa Disertai Nafas', '00:11:09', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=OnRpU_0YOrg&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=8', 1629583200, NULL, 'video', NULL, 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=OnRpU_0YOrg&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=8', '00:11:09'),
(99, 'Sukun - Tahan Suara dan Nafas', '00:01:35', 9, 31, 'YouTube', 'https://www.youtube.com/watch?v=jUiO8jjUuSY&amp;list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&amp;index=9', 1629583200, NULL, 'video', NULL, 'url', '-', 0, 0, 'html5', 'https://www.youtube.com/watch?v=jUiO8jjUuSY&list=PLzINGXQKv1LRv4jyyXDjAaE_wN_QwhD8p&index=9', '00:01:35'),
(103, 'tsetes', NULL, 9, 31, NULL, NULL, 1629756000, NULL, 'other', '3ed34a69a79ba1e451095cc7fb158929.pdf', 'doc', 'fdsfsafassaf', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES
(1, '311e21edeb29c4a', 'Assalamu\'alaikum\r\n... \r\n', '4', '1628697958', 1),
(2, '311e21edeb29c4a', 'Walaikumsalam... ', '1', '1628698032', NULL),
(3, '7ffd6af4f9d5e69', 'tset', '17', '1629642249', NULL),
(4, 'aa83a4daa6c3791', 'Hi Admin Kedua', '17', '1629778188', NULL),
(5, '512e31712491e96', 'Hi Admin', '20', '1629778817', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, '311e21edeb29c4a', '4', '1', NULL),
(2, '7ffd6af4f9d5e69', '17', '1', NULL),
(3, 'aa83a4daa6c3791', '17', '19', NULL),
(4, '512e31712491e96', '20', '19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `admin_id`, `permissions`) VALUES
(1, 2, '[\"settings\",\"category\",\"course\",\"user\",\"instructor\",\"student\",\"enrolment\",\"messaging\",\"coupon\"]'),
(2, 19, '[\"category\",\"course\",\"instructor\",\"user\",\"student\",\"enrolment\",\"messaging\"]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES
(1, 4, 'Peratanyaan Ke 1', 'multiple_choice', 3, '[\"Jawaban Benar\",\"Jawaban salah\",\"Jawaban salah\"]', '[\"1\"]', 0),
(2, 81, 'Pertanyaan satu', 'multiple_choice', 4, '[\"Benar\",\"Tidak Benar\",\"Apakah Benar\",\"Salah\"]', '[\"1\"]', 0),
(3, 81, 'Pertanyaan Dua', 'multiple_choice', 3, '[\"Benar\",\"Benar Juga\",\"Ini Salah\"]', '[\"1\",\"2\"]', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`) VALUES
(1, 5, 20, 9, 'course', 1629756000, NULL, 'Alhamdulillah Sangat Membantu Saya Mempelajari Al-Quran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(31, 'Sukun', 9, 0),
(33, 'Mad Thobi&#039;i', 9, 0),
(34, 'Tanwin', 9, 0),
(35, 'Tasydid', 9, 0),
(36, 'Nun &amp; Mim Bertasydid', 9, 0),
(37, 'Tanda Layar', 9, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'indonesia'),
(2, 'system_name', 'Hanifa Learning System'),
(3, 'system_title', 'Elearning Hanifa Darul Hidayah'),
(4, 'system_email', 'admin@hanifadarulhidayah.com'),
(5, 'address', 'Yogyakarta - Indonesia'),
(6, 'phone', '082214783760'),
(7, 'purchase_code', '2993a921-7f8c-4753-93e9-dac184e73d06'),
(8, 'paypal', '[{\"active\":\"0\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'AIzaSyDthDJK7F5kKCDIcZeSFxU4rx9s3DSaBAU'),
(11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c'),
(12, 'slogan', 'slogan kita'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'IDR'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Alterdev.id'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'ini adalah '),
(22, 'website_keywords', 'Metode Hanifa,Belajar Tahsin'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://alterdev.id/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', 'alterdevkuningan@gmail.com'),
(29, 'smtp_pass', 'kuningaN2021Juara'),
(30, 'version', '5.1'),
(31, 'student_email_verification', 'enable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"0\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`, `is_instructor`, `image`) VALUES
(1, 'Admin', 'Utama', 'adehusen@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, '[{\"lesson_id\":\"2\",\"progress\":\"1\"},{\"lesson_id\":\"1\",\"progress\":\"1\"},{\"lesson_id\":\"6\",\"progress\":\"0\"},{\"lesson_id\":\"7\",\"progress\":\"0\"},{\"lesson_id\":\"82\",\"progress\":\"0\"},{\"lesson_id\":\"83\",\"progress\":\"0\"},{\"lesson_id\":\"84\",\"progress\":\"0\"},{\"lesson_id\":\"89\",\"progress\":\"1\"}]', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(15, 'Feri', 'Supriatna', 'alterdevkuningan@gmail.com', '12dea96fec20593566ab75692c9949596833adc9', '{\"facebook\":\"-\",\"twitter\":\"-\",\"linkedin\":\"-\"}', '<p>My Bio    </p>', 2, 1629607316, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 0, '6c518782dcc323a54976d4171601e152'),
(17, 'Instruktur', 'Amir', 'instruktur@gmail.com', '795a6fe8e1aef6a7f07786156a150e2be1553e5c', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1629639859, NULL, '[{\"lesson_id\":\"91\",\"progress\":\"1\"},{\"lesson_id\":\"92\",\"progress\":\"1\"},{\"lesson_id\":\"93\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 1, '23de3e9dfbe91bad3fd663c94dc29cc1'),
(18, 'Dede', 'Yohansen', 'dedehusenn@gmail.com', '12dea96fec20593566ab75692c9949596833adc9', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1629639938, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 0, '3d4159f6c9d3b04274a449a20ba8a238'),
(19, 'admin', 'Admin Kedua', 'admindua@gmail.com', '315f166c5aca63a157f7d41007675cb44a948b33', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '<p>-    </p>', 1, 1629644777, NULL, '[{\"lesson_id\":\"102\",\"progress\":\"1\"},{\"lesson_id\":\"100\",\"progress\":\"1\"},{\"lesson_id\":\"91\",\"progress\":\"1\"},{\"lesson_id\":\"92\",\"progress\":\"1\"},{\"lesson_id\":\"93\",\"progress\":\"1\"},{\"lesson_id\":\"94\",\"progress\":\"1\"},{\"lesson_id\":\"95\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":null,\"production_secret_key\":null}]', '[{\"public_live_key\":null,\"secret_live_key\":null}]', NULL, 1, 1, 'd7ad24f82f829263d42be267080bf8df'),
(20, 'Ridwan', 'ridwan@gmail.com', 'ridwan@gmail.com', '12dea96fec20593566ab75692c9949596833adc9', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1629778049, NULL, '[{\"lesson_id\":\"91\",\"progress\":\"1\"},{\"lesson_id\":\"92\",\"progress\":\"1\"},{\"lesson_id\":\"93\",\"progress\":\"1\"},{\"lesson_id\":\"94\",\"progress\":\"1\"},{\"lesson_id\":\"95\",\"progress\":\"1\"},{\"lesson_id\":\"96\",\"progress\":\"1\"},{\"lesson_id\":\"97\",\"progress\":\"1\"},{\"lesson_id\":\"98\",\"progress\":\"1\"},{\"lesson_id\":\"99\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 0, '8bc2c580427e962b1c6eebd32ff180e3'),
(23, 'Lulu', 'tobing', 'dede.husen@student.uniku.ac.id', '12dea96fec20593566ab75692c9949596833adc9', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1629995240, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '169949', 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indeks untuk tabel `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indeks untuk tabel `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT untuk tabel `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
