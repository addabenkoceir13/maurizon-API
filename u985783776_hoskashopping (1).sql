-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 12:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u985783776_hoskashopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mm', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/1/51715e72e64749af612b330ca9a123b5.jpg', 'https://shopping.hoskadev.com/', '2023-10-21 15:03:38', '2023-11-19 20:05:23', NULL),
(2, 'كوكاكولا', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/2/03f65c38ca0250107e7af9df57dd7688.png', 'https://shopping.hoskadev.com/', '2023-10-22 10:36:12', '2023-11-19 20:05:16', NULL),
(3, 'شيبس', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/3/baf4fbffa0e3440eaa0a50d0dfe2b147.jpg', 'https://shopping.hoskadev.com/', '2023-10-22 10:41:20', '2023-11-19 20:05:09', NULL),
(4, 'شيبس2', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/4/bf5247bab876a36f38a6675106099d6f.jpg', 'https://shopping.hoskadev.com/', '2023-10-22 10:41:41', '2023-11-19 20:05:02', NULL),
(5, 'قهوة', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/5/2ca9f6ad20d7ac82d1f8048fa655a674.jpg', 'https://shopping.hoskadev.com/', '2023-10-22 10:45:41', '2023-11-19 20:04:51', NULL),
(6, 'shopping', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/6/ded6a176bc2f30172087a1690b911ad4.png', 'shopping.hoskadev.com', '2023-10-31 16:53:11', '2023-10-31 16:53:14', NULL),
(7, 'pc', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/7/592699a8a087f41b5e3608857965a169.jpg', 'https://chat.openai.com/', '2023-10-31 17:43:06', '2023-11-12 18:39:30', '2023-11-12 18:39:30'),
(8, 'تعليب', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/ads/8/094e8737226c5b21c84df3d08c081dc4.jpg', 'https://shopping.hoskadev.com/', '2023-11-12 18:42:44', '2023-11-19 20:04:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('current','order') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'current', '2023-10-21 13:20:28', '2023-10-22 18:55:23', '2023-10-22 18:55:23'),
(2, 2, 'current', '2023-10-21 13:20:28', '2023-10-23 12:05:50', '2023-10-23 12:05:50'),
(3, 3, 'current', '2023-10-21 13:37:54', '2023-10-29 09:11:16', '2023-10-29 09:11:16'),
(4, 3, 'current', '2023-10-21 13:37:54', '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(5, 4, 'current', '2023-10-21 14:51:29', '2023-10-21 14:52:18', '2023-10-21 14:52:18'),
(6, 4, 'order', '2023-10-21 14:52:18', '2023-11-01 09:40:07', '2023-11-01 09:40:07'),
(7, 4, 'current', '2023-10-21 14:52:19', '2023-10-24 21:04:43', '2023-10-24 21:04:43'),
(8, 5, 'current', '2023-10-22 09:45:54', '2023-11-07 17:34:30', '2023-11-07 17:34:30'),
(9, 2, 'order', '2023-10-22 18:55:23', '2023-11-01 09:40:15', '2023-11-01 09:40:15'),
(10, 2, 'order', '2023-10-23 12:05:49', '2023-11-01 09:40:21', '2023-11-01 09:40:21'),
(11, 2, 'current', '2023-10-23 12:05:52', '2023-10-23 21:19:23', '2023-10-23 21:19:23'),
(12, 2, 'current', '2023-10-23 12:05:52', '2023-10-23 21:19:57', '2023-10-23 21:19:57'),
(13, 2, 'current', '2023-10-23 21:19:23', '2023-10-23 23:56:57', '2023-10-23 23:56:57'),
(14, 2, 'order', '2023-10-23 21:19:57', '2023-10-23 21:19:57', NULL),
(15, 2, 'order', '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(16, 2, 'current', '2023-10-23 23:56:59', '2023-10-24 09:22:04', '2023-10-24 09:22:04'),
(17, 2, 'order', '2023-10-24 09:22:04', '2023-11-01 09:40:33', '2023-11-01 09:40:33'),
(18, 2, 'current', '2023-10-24 09:22:05', '2023-10-24 09:54:41', '2023-10-24 09:54:41'),
(19, 2, 'current', '2023-10-24 09:54:41', '2023-10-24 09:54:41', NULL),
(20, 4, 'order', '2023-10-24 21:04:43', '2023-11-01 09:40:40', '2023-11-01 09:40:40'),
(21, 4, 'current', '2023-10-24 21:04:46', '2023-10-24 21:14:53', '2023-10-24 21:14:53'),
(22, 4, 'order', '2023-10-24 21:14:53', '2023-11-01 09:40:46', '2023-11-01 09:40:46'),
(23, 4, 'current', '2023-10-24 21:14:54', '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(24, 4, 'order', '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(25, 4, 'current', '2023-10-25 12:13:15', '2023-10-27 09:30:25', '2023-10-27 09:30:25'),
(26, 6, 'current', '2023-10-27 09:04:47', '2023-10-27 09:06:09', '2023-10-27 09:06:09'),
(27, 6, 'order', '2023-10-27 09:06:09', '2023-10-27 09:11:34', '2023-10-27 09:11:34'),
(28, 6, 'current', '2023-10-27 09:06:10', '2023-10-27 09:06:10', NULL),
(29, 4, 'order', '2023-10-27 09:30:25', '2023-11-01 09:40:59', '2023-11-01 09:40:59'),
(30, 4, 'current', '2023-10-27 09:30:27', '2023-10-27 09:30:51', '2023-10-27 09:30:51'),
(31, 4, 'order', '2023-10-27 09:30:51', '2023-11-01 09:41:06', '2023-11-01 09:41:06'),
(32, 4, 'current', '2023-10-27 09:30:52', '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(33, 4, 'current', '2023-10-27 09:47:43', '2023-10-27 16:39:47', '2023-10-27 16:39:47'),
(34, 4, 'current', '2023-10-27 16:39:47', '2023-10-28 12:37:13', '2023-10-28 12:37:13'),
(35, 7, 'current', '2023-10-27 19:38:33', '2023-10-27 19:38:33', NULL),
(36, 7, 'current', '2023-10-27 19:38:33', '2023-10-27 19:38:33', NULL),
(37, 4, 'order', '2023-10-28 12:37:13', '2023-11-01 09:41:28', '2023-11-01 09:41:28'),
(38, 4, 'current', '2023-10-28 12:37:15', '2023-11-01 09:37:20', '2023-11-01 09:37:20'),
(39, 3, 'order', '2023-10-29 09:11:16', '2023-11-01 09:41:34', '2023-11-01 09:41:34'),
(40, 8, 'current', '2023-10-30 16:53:04', '2023-10-30 16:53:04', NULL),
(41, 4, 'order', '2023-11-01 09:37:20', '2023-11-01 09:39:49', '2023-11-01 09:39:49'),
(42, 4, 'current', '2023-11-01 09:37:21', '2023-11-01 09:45:09', '2023-11-01 09:45:09'),
(43, 4, 'order', '2023-11-01 09:45:09', '2023-11-01 09:45:09', NULL),
(44, 4, 'current', '2023-11-01 09:45:10', '2023-11-04 16:25:42', '2023-11-04 16:25:42'),
(45, 9, 'current', '2023-11-01 11:34:29', '2023-11-15 14:49:25', '2023-11-15 14:49:25'),
(46, 10, 'current', '2023-11-02 11:07:00', '2023-11-02 11:07:00', NULL),
(47, 4, 'current', '2023-11-04 16:25:42', '2023-11-04 16:43:49', '2023-11-04 16:43:49'),
(48, 4, 'current', '2023-11-04 16:43:49', '2023-11-04 16:46:22', '2023-11-04 16:46:22'),
(49, 4, 'current', '2023-11-04 16:46:22', '2023-11-04 16:51:11', '2023-11-04 16:51:11'),
(50, 4, 'current', '2023-11-04 16:51:11', '2023-11-04 16:51:29', '2023-11-04 16:51:29'),
(51, 4, 'order', '2023-11-04 16:51:29', '2023-11-04 16:51:29', NULL),
(52, 4, 'current', '2023-11-04 16:51:30', '2023-11-04 17:11:03', '2023-11-04 17:11:03'),
(53, 4, 'current', '2023-11-04 17:11:03', '2023-11-04 18:07:13', '2023-11-04 18:07:13'),
(54, 4, 'order', '2023-11-04 18:07:13', '2023-11-04 18:07:13', NULL),
(55, 4, 'current', '2023-11-04 18:07:13', '2023-11-04 21:28:31', '2023-11-04 21:28:31'),
(56, 3, 'order', '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(57, 3, 'current', '2023-11-04 18:33:54', '2023-11-06 19:17:51', '2023-11-06 19:17:51'),
(58, 4, 'order', '2023-11-04 21:28:30', '2023-11-04 21:28:30', NULL),
(59, 4, 'current', '2023-11-04 21:28:33', '2023-11-05 10:23:51', '2023-11-05 10:23:51'),
(60, 4, 'current', '2023-11-05 10:23:51', '2023-11-05 10:24:01', '2023-11-05 10:24:01'),
(61, 4, 'current', '2023-11-05 10:24:01', '2023-11-05 11:34:06', '2023-11-05 11:34:06'),
(62, 4, 'current', '2023-11-05 11:34:06', '2023-11-05 22:08:11', '2023-11-05 22:08:11'),
(63, 11, 'current', '2023-11-05 16:32:31', '2023-11-05 16:32:31', NULL),
(64, 11, 'current', '2023-11-05 16:32:31', '2023-11-05 16:32:31', NULL),
(65, 4, 'current', '2023-11-05 22:08:11', '2023-11-05 22:08:34', '2023-11-05 22:08:34'),
(66, 4, 'current', '2023-11-05 22:08:34', '2023-11-06 19:04:57', '2023-11-06 19:04:57'),
(67, 12, 'current', '2023-11-06 13:22:51', '2023-11-06 13:24:36', '2023-11-06 13:24:36'),
(68, 12, 'current', '2023-11-06 13:22:51', '2023-11-06 13:22:51', NULL),
(69, 12, 'order', '2023-11-06 13:24:36', '2023-11-06 13:24:36', NULL),
(70, 4, 'order', '2023-11-06 19:04:57', '2023-11-06 19:04:57', NULL),
(71, 4, 'current', '2023-11-06 19:04:58', '2023-11-07 18:46:54', '2023-11-07 18:46:54'),
(72, 3, 'order', '2023-11-06 19:17:51', '2023-11-06 19:17:51', NULL),
(73, 3, 'current', '2023-11-06 19:17:52', '2023-11-06 19:18:13', '2023-11-06 19:18:13'),
(74, 3, 'order', '2023-11-06 19:18:13', '2023-11-06 19:18:13', NULL),
(75, 3, 'current', '2023-11-06 19:18:14', '2023-11-06 19:18:14', NULL),
(76, 13, 'current', '2023-11-07 14:22:21', '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(77, 13, 'order', '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(78, 13, 'current', '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(79, 5, 'current', '2023-11-07 17:34:30', '2023-11-07 17:34:30', NULL),
(80, 14, 'current', '2023-11-07 18:34:16', '2023-11-13 19:52:39', '2023-11-13 19:52:39'),
(81, 4, 'current', '2023-11-07 18:46:54', '2023-11-12 19:09:36', '2023-11-12 19:09:36'),
(82, 4, 'order', '2023-11-12 19:09:36', '2023-11-13 19:22:43', '2023-11-13 19:22:43'),
(83, 4, 'current', '2023-11-12 19:09:37', '2023-11-12 19:10:11', '2023-11-12 19:10:11'),
(84, 4, 'order', '2023-11-12 19:10:11', '2023-11-13 19:22:39', '2023-11-13 19:22:39'),
(85, 4, 'current', '2023-11-12 19:10:12', '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(86, 4, 'order', '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(87, 4, 'current', '2023-11-12 19:40:49', '2023-11-12 19:41:12', '2023-11-12 19:41:12'),
(88, 4, 'order', '2023-11-12 19:41:12', '2023-11-13 19:22:28', '2023-11-13 19:22:28'),
(89, 4, 'current', '2023-11-12 19:41:13', '2023-11-13 18:17:33', '2023-11-13 18:17:33'),
(90, 4, 'order', '2023-11-13 18:17:33', '2023-11-13 19:22:25', '2023-11-13 19:22:25'),
(91, 4, 'current', '2023-11-13 18:17:34', '2023-11-13 18:17:56', '2023-11-13 18:17:56'),
(92, 4, 'order', '2023-11-13 18:17:56', '2023-11-13 19:22:21', '2023-11-13 19:22:21'),
(93, 4, 'current', '2023-11-13 18:17:57', '2023-11-13 18:22:29', '2023-11-13 18:22:29'),
(94, 4, 'order', '2023-11-13 18:22:29', '2023-11-13 19:22:17', '2023-11-13 19:22:17'),
(95, 4, 'current', '2023-11-13 18:22:30', '2023-11-13 18:33:54', '2023-11-13 18:33:54'),
(96, 4, 'order', '2023-11-13 18:33:54', '2023-11-13 19:22:12', '2023-11-13 19:22:12'),
(97, 4, 'current', '2023-11-13 18:33:56', '2023-11-13 18:34:17', '2023-11-13 18:34:17'),
(98, 4, 'order', '2023-11-13 18:34:17', '2023-11-13 19:22:03', '2023-11-13 19:22:03'),
(99, 4, 'current', '2023-11-13 18:34:18', '2023-11-13 18:34:31', '2023-11-13 18:34:31'),
(100, 4, 'order', '2023-11-13 18:34:31', '2023-11-13 19:21:57', '2023-11-13 19:21:57'),
(101, 4, 'current', '2023-11-13 18:34:32', '2023-11-13 18:34:47', '2023-11-13 18:34:47'),
(102, 4, 'order', '2023-11-13 18:34:47', '2023-11-13 19:21:49', '2023-11-13 19:21:49'),
(103, 4, 'current', '2023-11-13 18:34:47', '2023-11-13 18:35:07', '2023-11-13 18:35:07'),
(104, 4, 'order', '2023-11-13 18:35:07', '2023-11-13 19:21:45', '2023-11-13 19:21:45'),
(105, 4, 'current', '2023-11-13 18:35:07', '2023-11-13 18:36:32', '2023-11-13 18:36:32'),
(106, 4, 'order', '2023-11-13 18:36:32', '2023-11-13 19:21:41', '2023-11-13 19:21:41'),
(107, 4, 'current', '2023-11-13 18:36:32', '2023-11-13 18:38:32', '2023-11-13 18:38:32'),
(108, 4, 'order', '2023-11-13 18:38:32', '2023-11-13 19:21:37', '2023-11-13 19:21:37'),
(109, 4, 'current', '2023-11-13 18:38:32', '2023-11-13 18:39:17', '2023-11-13 18:39:17'),
(110, 4, 'order', '2023-11-13 18:39:17', '2023-11-13 19:21:33', '2023-11-13 19:21:33'),
(111, 4, 'current', '2023-11-13 18:39:18', '2023-11-13 18:40:44', '2023-11-13 18:40:44'),
(112, 4, 'order', '2023-11-13 18:40:44', '2023-11-13 19:21:29', '2023-11-13 19:21:29'),
(113, 4, 'current', '2023-11-13 18:40:46', '2023-11-13 18:41:30', '2023-11-13 18:41:30'),
(114, 4, 'order', '2023-11-13 18:41:30', '2023-11-13 19:21:25', '2023-11-13 19:21:25'),
(115, 4, 'current', '2023-11-13 18:41:31', '2023-11-13 18:45:26', '2023-11-13 18:45:26'),
(116, 4, 'order', '2023-11-13 18:45:26', '2023-11-13 19:21:20', '2023-11-13 19:21:20'),
(117, 4, 'current', '2023-11-13 18:45:26', '2023-11-13 18:49:20', '2023-11-13 18:49:20'),
(118, 4, 'order', '2023-11-13 18:49:20', '2023-11-13 19:21:16', '2023-11-13 19:21:16'),
(119, 4, 'current', '2023-11-13 18:49:21', '2023-11-13 18:49:38', '2023-11-13 18:49:38'),
(120, 4, 'order', '2023-11-13 18:49:38', '2023-11-13 19:21:11', '2023-11-13 19:21:11'),
(121, 4, 'current', '2023-11-13 18:49:39', '2023-11-13 18:50:15', '2023-11-13 18:50:15'),
(122, 4, 'order', '2023-11-13 18:50:15', '2023-11-13 19:21:06', '2023-11-13 19:21:06'),
(123, 4, 'current', '2023-11-13 18:50:16', '2023-11-13 18:52:12', '2023-11-13 18:52:12'),
(124, 4, 'order', '2023-11-13 18:52:12', '2023-11-13 19:21:01', '2023-11-13 19:21:01'),
(125, 4, 'current', '2023-11-13 18:52:13', '2023-11-13 18:58:10', '2023-11-13 18:58:10'),
(126, 4, 'order', '2023-11-13 18:58:10', '2023-11-13 19:20:56', '2023-11-13 19:20:56'),
(127, 4, 'current', '2023-11-13 18:58:11', '2023-11-13 18:58:35', '2023-11-13 18:58:35'),
(128, 4, 'order', '2023-11-13 18:58:35', '2023-11-13 19:20:52', '2023-11-13 19:20:52'),
(129, 4, 'current', '2023-11-13 18:58:36', '2023-11-13 18:59:11', '2023-11-13 18:59:11'),
(130, 4, 'order', '2023-11-13 18:59:11', '2023-11-13 19:20:47', '2023-11-13 19:20:47'),
(131, 4, 'current', '2023-11-13 18:59:12', '2023-11-13 19:01:08', '2023-11-13 19:01:08'),
(132, 4, 'order', '2023-11-13 19:01:08', '2023-11-13 19:20:42', '2023-11-13 19:20:42'),
(133, 4, 'current', '2023-11-13 19:01:09', '2023-11-13 19:15:12', '2023-11-13 19:15:12'),
(134, 4, 'order', '2023-11-13 19:15:12', '2023-11-13 19:20:30', '2023-11-13 19:20:30'),
(135, 4, 'current', '2023-11-13 19:15:13', '2023-11-13 19:18:37', '2023-11-13 19:18:37'),
(136, 4, 'order', '2023-11-13 19:18:37', '2023-11-13 19:20:20', '2023-11-13 19:20:20'),
(137, 4, 'current', '2023-11-13 19:18:38', '2023-11-13 19:18:56', '2023-11-13 19:18:56'),
(138, 4, 'order', '2023-11-13 19:18:56', '2023-11-13 19:18:56', NULL),
(139, 4, 'current', '2023-11-13 19:18:57', '2023-11-13 19:25:12', '2023-11-13 19:25:12'),
(140, 4, 'order', '2023-11-13 19:25:12', '2023-11-13 19:25:12', NULL),
(141, 4, 'current', '2023-11-13 19:25:13', '2023-11-13 19:36:53', '2023-11-13 19:36:53'),
(142, 4, 'order', '2023-11-13 19:36:53', '2023-11-13 19:36:53', NULL),
(143, 4, 'current', '2023-11-13 19:36:55', '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(144, 4, 'current', '2023-11-13 19:36:55', '2023-11-15 10:34:14', '2023-11-15 10:34:14'),
(145, 14, 'order', '2023-11-13 19:52:39', '2023-11-13 19:52:39', NULL),
(146, 14, 'current', '2023-11-13 19:52:40', '2023-11-13 19:52:40', NULL),
(147, 15, 'current', '2023-11-14 16:26:12', '2023-11-14 16:29:21', '2023-11-14 16:29:21'),
(148, 15, 'order', '2023-11-14 16:29:21', '2023-11-14 16:29:21', NULL),
(149, 15, 'current', '2023-11-14 16:29:22', '2023-11-14 16:29:22', NULL),
(150, 4, 'order', '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(151, 4, 'order', '2023-11-15 10:34:14', '2023-11-15 10:34:14', NULL),
(152, 4, 'current', '2023-11-15 10:34:14', '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(153, 9, 'order', '2023-11-15 14:49:25', '2023-11-15 14:49:25', NULL),
(154, 9, 'current', '2023-11-15 14:50:18', '2023-11-16 11:13:50', '2023-11-16 11:13:50'),
(155, 9, 'order', '2023-11-16 11:13:50', '2023-11-16 11:13:50', NULL),
(156, 9, 'current', '2023-11-16 11:13:59', '2023-11-16 11:30:10', '2023-11-16 11:30:10'),
(157, 9, 'order', '2023-11-16 11:30:10', '2023-11-16 11:30:10', NULL),
(158, 9, 'current', '2023-11-16 11:30:16', '2023-11-16 11:33:42', '2023-11-16 11:33:42'),
(159, 9, 'order', '2023-11-16 11:33:42', '2023-11-16 11:33:42', NULL),
(160, 9, 'current', '2023-11-16 11:33:49', '2023-11-16 11:38:21', '2023-11-16 11:38:21'),
(161, 9, 'order', '2023-11-16 11:38:21', '2023-11-16 11:38:21', NULL),
(162, 9, 'current', '2023-11-16 11:38:30', '2023-11-16 11:47:58', '2023-11-16 11:47:58'),
(163, 9, 'order', '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(164, 9, 'current', '2023-11-16 11:48:02', '2023-11-16 11:51:18', '2023-11-16 11:51:18'),
(165, 9, 'order', '2023-11-16 11:51:18', '2023-11-16 11:51:18', NULL),
(166, 9, 'current', '2023-11-16 11:51:20', '2023-11-16 11:52:59', '2023-11-16 11:52:59'),
(167, 9, 'order', '2023-11-16 11:52:59', '2023-11-16 11:52:59', NULL),
(168, 9, 'current', '2023-11-16 11:53:07', '2023-11-16 12:01:27', '2023-11-16 12:01:27'),
(169, 9, 'order', '2023-11-16 12:01:27', '2023-11-16 12:01:27', NULL),
(170, 9, 'current', '2023-11-16 12:01:35', '2023-11-16 12:10:58', '2023-11-16 12:10:58'),
(171, 9, 'order', '2023-11-16 12:10:58', '2023-11-16 12:10:58', NULL),
(172, 9, 'current', '2023-11-16 12:11:01', '2023-11-16 14:17:08', '2023-11-16 14:17:08'),
(173, 9, 'order', '2023-11-16 14:17:08', '2023-11-16 14:17:08', NULL),
(174, 9, 'current', '2023-11-16 14:17:15', '2023-11-16 14:45:11', '2023-11-16 14:45:11'),
(175, 9, 'order', '2023-11-16 14:45:11', '2023-11-16 14:45:11', NULL),
(176, 9, 'current', '2023-11-16 14:45:11', '2023-11-16 15:08:29', '2023-11-16 15:08:29'),
(177, 9, 'order', '2023-11-16 15:08:29', '2023-11-16 15:08:29', NULL),
(178, 9, 'current', '2023-11-16 15:08:30', '2023-11-16 16:05:09', '2023-11-16 16:05:09'),
(179, 9, 'order', '2023-11-16 16:05:09', '2023-11-16 16:05:09', NULL),
(180, 9, 'current', '2023-11-16 16:05:23', '2023-11-16 16:08:14', '2023-11-16 16:08:14'),
(181, 9, 'order', '2023-11-16 16:08:14', '2023-11-16 16:08:14', NULL),
(182, 9, 'current', '2023-11-16 16:08:17', '2023-11-16 16:11:39', '2023-11-16 16:11:39'),
(183, 9, 'order', '2023-11-16 16:11:39', '2023-11-16 16:11:39', NULL),
(184, 9, 'current', '2023-11-16 16:11:39', '2023-11-16 16:12:53', '2023-11-16 16:12:53'),
(185, 9, 'order', '2023-11-16 16:12:53', '2023-11-16 16:12:53', NULL),
(186, 9, 'current', '2023-11-16 16:12:57', '2023-11-16 16:13:37', '2023-11-16 16:13:37'),
(187, 9, 'order', '2023-11-16 16:13:37', '2023-11-16 16:13:37', NULL),
(188, 9, 'current', '2023-11-16 16:13:43', '2023-11-16 16:15:13', '2023-11-16 16:15:13'),
(189, 9, 'order', '2023-11-16 16:15:13', '2023-11-16 16:15:13', NULL),
(190, 9, 'current', '2023-11-16 16:15:17', '2023-11-16 16:18:21', '2023-11-16 16:18:21'),
(191, 9, 'order', '2023-11-16 16:18:21', '2023-11-16 16:18:21', NULL),
(192, 9, 'current', '2023-11-16 16:18:25', '2023-11-16 16:21:57', '2023-11-16 16:21:57'),
(193, 9, 'order', '2023-11-16 16:21:57', '2023-11-16 16:21:57', NULL),
(194, 9, 'current', '2023-11-16 16:21:57', '2023-11-16 16:21:57', NULL),
(195, 4, 'order', '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(196, 4, 'current', '2023-11-19 11:33:47', '2023-11-19 19:58:13', '2023-11-19 19:58:13'),
(197, 4, 'order', '2023-11-19 19:58:13', '2023-11-19 19:58:13', NULL),
(198, 4, 'current', '2023-11-19 19:58:13', '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(199, 4, 'order', '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(200, 4, 'current', '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'كورنفلاكس', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/1/2c7efec983b76644fd28d98580893c50.jpeg', '2023-10-21 12:52:07', '2023-10-26 17:06:28', '2023-10-26 17:06:28'),
(2, 'كورنفلاكس2', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/2/be33969917eac0e82b7ccf17219718f4.jpeg', '2023-10-21 13:33:20', '2023-10-23 21:18:31', '2023-10-23 21:18:31'),
(3, 'مقرمشات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/3/18a091def53ddb79f6d9ff76cdd38ff8.jpg', '2023-10-21 13:34:09', '2023-10-23 21:28:46', NULL),
(4, 'شيبس2', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/4/8da93094d899531020980d99ef188986.jpeg', '2023-10-21 13:35:00', '2023-10-23 21:18:36', '2023-10-23 21:18:36'),
(5, 'اكسسوارات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/5/23b3305f899c4a96525ef2957a80db8c.jpg', '2023-10-23 17:04:27', '2023-10-23 17:04:28', NULL),
(6, 'الساعات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/6/8bb7cfd02caf962bc60440051dce0738.jpg', '2023-10-23 17:16:21', '2023-10-26 16:31:10', NULL),
(7, 'الحواسيب', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/7/8ef748164e792868930cd5a565d3f85c.jpg', '2023-10-23 17:20:52', '2023-10-23 17:20:53', NULL),
(8, 'الهواتف النقالة', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/8/ed425384cd69994ff0c46c7fc0889d0b.png', '2023-10-23 17:23:21', '2023-10-23 17:23:22', NULL),
(9, 'ملابس', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/9/377616c4612790eb5c29128aa9eb43e1.jpg', '2023-10-23 21:34:48', '2023-10-23 21:34:48', NULL),
(10, 'سيارات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/10/db1075f4181583646c7b75080bfabde6.jpg', '2023-10-23 21:56:57', '2023-10-23 21:58:30', NULL),
(11, 'دراجات نارية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/11/cea4ed0a3d0b705a7e4e11c9d09d7421.jpg', '2023-10-23 21:59:41', '2023-10-23 21:59:41', NULL),
(12, 'دراجات هوائية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/12/0292e3cb04b80994e3b7f3e79432a2db.jpg', '2023-10-23 22:01:18', '2023-10-23 22:01:18', NULL),
(13, 'الخضر والفواكه', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/13/72a94e5a05ccd934ec1d30a31d555381.jpg', '2023-10-25 10:52:26', '2023-10-25 11:12:34', NULL),
(14, 'الفواكه', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/14/df2a05bbedfb039ea36fe530879b8a23.jpg', '2023-10-25 10:59:47', '2023-10-25 11:12:21', '2023-10-25 11:12:21'),
(15, 'كهرومنزلية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/15/088c877c3114ce05a318d50d0175bed2.png', '2023-10-25 11:11:09', '2023-10-25 11:11:11', NULL),
(16, 'المشروبات والعصائر', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/16/8b203048b62829fbf7c0e8dc765314d2.jpg', '2023-10-25 11:40:15', '2023-10-25 11:40:16', NULL),
(17, 'مواد التنظيف المنزلية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/17/ff9dccce65ebf19180b8a1ffad3b2728.jpg', '2023-10-25 11:41:45', '2023-10-25 11:41:46', NULL),
(18, 'المواد الغذائية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/18/8332a56887ac5bfe1baa16ac8c0a95a6.jpeg', '2023-10-25 11:45:15', '2023-10-25 11:45:16', NULL),
(19, 'الحليب ومشتقاته', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/19/d827a89e629f4822976c2c7b848e1945.jpg', '2023-10-25 17:45:15', '2023-10-25 17:45:18', NULL),
(20, 'حلويات ومرطبات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/20/61e3464142e5184ac6d48e083f85b1ab.jpg', '2023-10-25 17:50:01', '2023-10-25 17:50:03', NULL),
(21, 'العاب اطفال', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/21/68bcffa873720d5c58b38b1ce5135dd1.jpg', '2023-10-25 17:52:16', '2023-10-25 17:52:17', NULL),
(22, 'اللحوم والاسماك', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/22/f5220ea9a9c2cf55ed3ac8a5877bbb4f.jpg', '2023-10-25 17:54:44', '2023-10-25 17:54:45', NULL),
(23, 'الشبه صيدلانية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/23/e7020ec2a7ede7f0f007231cc421a949.jpg', '2023-10-25 17:56:32', '2023-10-25 17:56:32', NULL),
(24, 'مواد البناء', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/24/4ede9d736a8a081b7cf6b0bd39730e45.jpg', '2023-10-25 17:59:09', '2023-10-25 17:59:10', NULL),
(25, 'الاحذية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/25/be2abcc915814f089a4a49d86b355806.jpg', '2023-10-25 18:02:12', '2023-10-25 18:02:12', NULL),
(26, 'الديكورات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/26/3ac27e16f9fa2e67b6a700a9dd4c7585.jpg', '2023-10-25 18:04:06', '2023-10-25 18:04:06', NULL),
(27, 'الشاحنات', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/27/7cd80f79f621cd2e6bd31540993d7421.jpg', '2023-10-25 18:20:26', '2023-10-25 18:20:27', NULL),
(28, 'أدوات التجميل', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/28/a29bd2024cd412110584c221436ceba0.jpg', '2023-10-26 16:11:05', '2023-10-26 16:11:09', NULL),
(29, 'أدوات الحلاقة', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/29/5765bdb7b047e5127bb03795dcf1c644.jpg', '2023-10-26 16:57:06', '2023-10-26 16:57:06', NULL),
(30, 'أدوات مكتبية', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/categories/30/bc6efb239e81ecf0d63dc10418c2bf43.jpg', '2023-10-26 17:03:23', '2023-10-26 17:03:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_offers`
--

CREATE TABLE `category_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_offers`
--

INSERT INTO `category_offers` (`id`, `category_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-10-21 12:54:49', '2023-10-22 10:32:07', '2023-10-22 10:32:07'),
(2, 1, 2, '2023-10-21 13:32:17', '2023-10-23 17:40:59', '2023-10-23 17:40:59'),
(3, 1, 3, '2023-10-22 10:32:30', '2023-10-22 10:33:03', '2023-10-22 10:33:03'),
(4, 2, 3, '2023-10-22 10:32:30', '2023-10-22 10:33:03', '2023-10-22 10:33:03'),
(5, 3, 3, '2023-10-22 10:32:30', '2023-10-22 10:33:03', '2023-10-22 10:33:03'),
(6, 4, 3, '2023-10-22 10:32:30', '2023-10-22 10:33:03', '2023-10-22 10:33:03'),
(7, 1, 3, '2023-10-22 10:33:03', '2023-10-23 17:40:50', '2023-10-23 17:40:50'),
(8, 3, 3, '2023-10-22 10:33:03', '2023-10-23 17:40:50', '2023-10-23 17:40:50'),
(9, 6, 4, '2023-10-23 20:26:57', '2023-10-23 20:32:32', '2023-10-23 20:32:32'),
(10, 6, 4, '2023-10-23 20:32:32', '2023-10-23 20:32:32', NULL),
(11, 8, 4, '2023-10-23 20:32:32', '2023-10-23 20:32:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('fixed','percentage') DEFAULT 'percentage',
  `amount` double NOT NULL DEFAULT 0,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `type`, `amount`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'percentage', 10, '2023-10-21 00:00:00', '2023-10-24 00:00:00', '2023-10-21 15:02:06', '2023-10-23 17:18:19', '2023-10-23 17:18:19'),
(2, 3, 'percentage', 0, '2023-10-22 00:00:00', '2023-10-31 00:00:00', '2023-10-22 18:31:33', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(3, 4, 'percentage', 5, '2023-10-23 00:00:00', '2023-10-26 00:00:00', '2023-10-23 12:20:06', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(4, 1, 'percentage', 0, '2023-10-23 00:00:00', '2023-10-29 00:00:00', '2023-10-23 12:26:57', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(5, 5, 'percentage', 0, '2023-10-23 00:00:00', '2023-11-01 00:00:00', '2023-10-23 17:32:58', '2023-10-23 17:32:58', NULL),
(6, 8, 'percentage', 3, '2023-10-23 00:00:00', '2023-11-01 00:00:00', '2023-10-23 20:31:54', '2023-10-23 20:31:54', NULL),
(7, 35, 'percentage', 5, '2023-10-26 00:00:00', '2023-10-31 00:00:00', '2023-10-26 08:03:47', '2023-10-26 08:03:47', NULL),
(8, 53, 'percentage', 5, '2023-10-26 00:00:00', '2023-10-31 00:00:00', '2023-10-26 08:04:21', '2023-10-26 08:04:21', NULL),
(9, 56, 'percentage', 5, '2023-10-26 00:00:00', '2023-10-31 00:00:00', '2023-10-26 08:04:54', '2023-10-26 08:04:54', NULL),
(10, 72, 'percentage', 3, '2023-11-12 00:00:00', '2023-12-31 00:00:00', '2023-11-12 18:46:01', '2023-11-12 18:46:01', NULL),
(11, 63, 'percentage', 3, '2023-11-12 00:00:00', '2024-01-01 00:00:00', '2023-11-12 18:47:25', '2023-11-12 18:47:25', NULL),
(12, 67, 'percentage', 3, '2023-11-12 00:00:00', '2024-01-01 00:00:00', '2023-11-12 19:27:44', '2023-11-12 19:27:44', NULL),
(13, 78, 'percentage', 3, '2023-11-12 00:00:00', '2024-01-01 00:00:00', '2023-11-12 19:28:20', '2023-11-12 19:28:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentations`
--

CREATE TABLE `documentations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_ar` longtext DEFAULT NULL,
  `content_en` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documentations`
--

INSERT INTO `documentations` (`id`, `name`, `content_ar`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'privacy_policy', 'Your privacy is important to us. It is Hoska Shopping policy to respect your privacy and comply with any applicable law and regulation regarding any personal information we may collect about you, including via our app.\r\nPersonal information is any information about you which can be used to identify you. This includes information about you as a person (such as name, address and phone number), your devices, payment details, and even information about how you use an app or online service.\r\nThis policy is effective as of 14 November 2023.\r\nLog Data\r\nWhen you access our app, we may automatically log the standard data provided by your device. It may include your device\'s Internet Protocol (IP) address, your device type and version, your activity within the app, time and date, and other details about your usage.\r\nAdditionally, when you encounter certain errors while using the app, we automatically collect data about the error and the circumstances surrounding its occurrence. This data may include technical details about your device, what you were trying to do when the error happened, and other technical information relating to the problem. You may or may not receive notice of such errors, even in the moment they occur, that they have occurred, or what the nature of the error is.\r\nPlease be aware that while this information may not be personally identifying by itself, it may be possible to combine it with other data to personally identify individual persons.\r\nDevice Data\r\nOur app may access and collect data via your device\'s in-built tools, such as:\r\nNotifications\r\nWhen you install the app or use your device\'s tools within the app, we request permission to access this information. The specific data we collect can depend on the individual settings of your device and the permissions you grant when you install and use the app.\r\nIn order to ensure ease and comfort for the user, you can change or add products and also cancel your orders as long as the distributor does not leave the warehouse and you will be notified of this by phone notification, and your orders will also be accepted until the end of your receipt of the goods.\r\n\r\nPersonal Information\r\nWe may ask for personal information — when you contact us — which may include one or more of the following:\r\n-Name\r\n-Email\r\n-Phone/mobile number\r\n-Personal place using Google map \r\nLegitimate Reasons for Processing Your Personal Information\r\nWe only collect and use your personal information when we have a legitimate reason for doing so. In which instance, we only collect personal information that is reasonably necessary to provide our services to you.\r\nSecurity of Your Personal Information\r\nWhen we collect and process personal information, and while we retain this information, we will protect it within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use, or modification.\r\nAlthough we will do our best to protect the personal information you provide to us, we advise that no method of electronic transmission or storage is 100% secure, and no one can guarantee absolute data security.\r\nYou are responsible for selecting any password and its overall security strength, ensuring the security of your own information within the bounds of our services. For example, ensuring you do not make your personal information publicly available via our platform.\r\nHow Long We Keep Your Personal Information\r\nWe keep your personal information only for as long as we need to. This time period may depend on what we are using your information for, in accordance with this privacy policy. For example, if you have provided us with personal information such as an email address when contacting us about a specific enquiry, we may retain this information for the duration of your enquiry remaining open as well as for our own records so we may effectively address similar enquiries in future. If your personal information is no longer required for this purpose, we will delete it or make it anonymous by removing all details that identify you.\r\nHowever, if necessary, we may retain your personal information for our compliance with a legal, accounting, or reporting obligation or for archiving purposes in the public interest, scientific, or historical research purposes or statistical purposes.\r\nPayment method :\r\nThe payment method that we adhere to is upon receipt, in cash, and when you receive all your items. We are not responsible for any damage or shortage after the distributor has gone, so please ensure that all your items are safe and sound.\r\nChildren\'s Privacy\r\nWe do not aim any of our products or services directly at children under the age of 13, and we do not knowingly collect personal information about children under 13.\r\nYour Rights and Controlling Your Personal Information\r\nYour choice: By providing personal information to us, you understand we will collect, hold, use, and disclose your personal information in accordance with this privacy policy. You do not have to provide personal information to us, however, if you do not, it may affect your use of our app or the products and/or services offered on or through it.\r\nMarketing permission: If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by contacting us using the details below.\r\nAccess: You may request details of the personal information that we hold about you.\r\nCorrection: If you believe that any information we hold about you is inaccurate, out of date, incomplete, irrelevant, or misleading, please contact us using the details provided in this privacy policy. We will take reasonable steps to correct any information found to be inaccurate, incomplete, misleading, or out of date.\r\nNon-discrimination: We will not discriminate against you for exercising any of your rights over your personal information. Unless your personal information is required to provide you with a particular service or offer (for example serving particular content to your device), we will not deny you goods or services and/or charge you different prices or rates for goods or services, including through granting discounts or other benefits, or imposing penalties, or provide you with a different level or quality of goods or services.\r\nNotification of data breaches: We will comply with laws applicable to us in respect of any data breach.\r\nComplaints: If you believe that we have breached a relevant data protection law and wish to make a complaint, please contact us using the details below and provide us with full details of the alleged breach. We will promptly investigate your complaint and respond to you, in writing, setting out the outcome of our investigation and the steps we will take to deal with your complaint. You also have the right to contact a regulatory body or data protection authority in relation to your complaint.\r\nLimits of Our Policy\r\nOur app may link to external sites that are not operated by us. Please be aware that we have no control over the content and policies of those sites, and cannot accept responsibility or liability for their respective privacy practices.\r\nChanges to This Policy\r\nAt our discretion, we may change our privacy policy to reflect updates to our business processes, current acceptable practices, or legislative or regulatory changes. If we decide to change this privacy policy, we will post the changes here and on our website.\r\nIf required by law, we will get your permission or give you the opportunity to opt in to or opt out of, as applicable, any new uses of your personal information.\r\nContact Us\r\nFor any questions or concerns regarding your privacy, you may contact us using the following details:\r\nPhone :0672886642\r\nhoskadev@gmail.com\r\nCity Mousaba Al-Gharbia - El Oued - Algeria', NULL, '2023-10-22 18:25:11', '2023-10-22 18:25:11'),
(2, 'about', NULL, NULL, '2023-10-22 18:25:14', '2023-10-22 18:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `firstname`, `lastname`, `phone`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hh', 'gg', '0542288040', NULL, '2023-11-01 09:42:22', '2023-11-01 09:42:22', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `name`, `name_en`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'العائلة', 'family', NULL, '2023-10-21 13:36:32', '2023-10-21 15:12:33', '2023-10-21 15:12:33'),
(2, 'هسكا للتسويق', 'shopping', NULL, '2023-10-21 15:07:29', '2023-10-23 21:17:46', '2023-10-23 21:17:46'),
(3, 'cdscds', 'cecd', NULL, '2023-10-23 12:04:57', '2023-10-23 22:10:35', '2023-10-23 22:10:35'),
(4, 'تسوق معنا', 'shopping', NULL, '2023-10-23 17:29:19', '2023-10-23 20:27:54', NULL),
(5, 'العائلة', 'family', NULL, '2023-10-23 22:13:35', '2023-10-23 22:13:35', NULL),
(6, 'الاناقة والجمال', 'Beauty and Elegance', NULL, '2023-10-25 18:06:51', '2023-10-25 18:06:51', NULL),
(7, 'عمر بيتك', 'Fill your house', NULL, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(8, 'وسائل النقل', 'Transportation', NULL, '2023-10-25 18:23:04', '2023-10-25 18:23:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `is_paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `payment_method` enum('card','cash') DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `order_id`, `purchase_amount`, `tax_amount`, `total_amount`, `file`, `is_paid`, `payment_method`, `paid_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 30, 500, 530, 'uploads/invoices/1-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-21 14:52:18', '2023-10-27 09:14:07', NULL),
(2, 2, 180001300, 500, 180001800, 'uploads/invoices/2-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-22 18:55:23', '2023-10-27 09:13:59', NULL),
(3, 3, 900000650, 100, 900000750, 'uploads/invoices/3-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-23 12:05:49', '2023-10-27 09:13:48', NULL),
(4, 4, 430260, 100, 430360, NULL, 'no', NULL, NULL, '2023-10-23 21:19:57', '2023-10-23 21:19:57', NULL),
(5, 5, 11810, 500, 12310, 'uploads/invoices/5-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-23 23:56:57', '2023-10-27 09:13:24', NULL),
(6, 6, 1112000, 100, 1112100, 'uploads/invoices/6-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-24 09:22:04', '2023-10-27 09:13:20', NULL),
(7, 7, 430000, 500, 430500, 'uploads/invoices/7-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-24 21:04:43', '2023-10-27 09:13:12', NULL),
(8, 8, 90000, 500, 90500, 'uploads/invoices/8-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-24 21:14:53', '2023-10-27 09:12:55', NULL),
(9, 9, 4370, 100, 4470, 'uploads/invoices/9-2023-10-27.pdf', 'no', NULL, NULL, '2023-10-25 12:13:14', '2023-10-27 09:12:49', NULL),
(10, 10, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-10-27 09:06:09', '2023-10-27 09:06:09', NULL),
(11, 11, 9999999999, 500, 10000000499, NULL, 'no', NULL, NULL, '2023-10-27 09:30:25', '2023-10-27 09:30:25', NULL),
(12, 12, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-10-27 09:30:51', '2023-10-27 09:30:51', NULL),
(13, 13, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-10-28 12:37:13', '2023-10-28 12:37:13', NULL),
(14, 14, 133, 100, 233, 'uploads/invoices/14-2023-11-01.pdf', 'no', NULL, NULL, '2023-10-29 09:11:16', '2023-11-01 09:41:23', NULL),
(15, 15, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-01 09:37:20', '2023-11-01 09:37:20', NULL),
(16, 16, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-01 09:45:09', '2023-11-01 09:45:09', NULL),
(17, 17, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-04 16:51:29', '2023-11-04 16:51:29', NULL),
(18, 18, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-04 18:07:13', '2023-11-04 18:07:13', NULL),
(19, 19, 430670, 500, 431170, NULL, 'no', NULL, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(20, 20, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-04 21:28:30', '2023-11-04 21:28:30', NULL),
(21, 21, 430000, 100, 430100, NULL, 'no', NULL, NULL, '2023-11-06 13:24:36', '2023-11-06 13:24:36', NULL),
(22, 22, 1360000, 500, 1360500, 'uploads/invoices/22-2023-11-07.pdf', 'no', NULL, NULL, '2023-11-06 19:04:57', '2023-11-07 14:10:50', NULL),
(23, 23, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-06 19:17:51', '2023-11-06 19:17:51', NULL),
(24, 24, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-06 19:18:13', '2023-11-06 19:18:13', NULL),
(25, 25, 611400, 500, 611900, NULL, 'no', NULL, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(26, 26, 455.9, 100, 555.9, NULL, 'no', NULL, NULL, '2023-11-12 19:09:36', '2023-11-12 19:09:36', NULL),
(27, 27, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-12 19:10:11', '2023-11-12 19:10:11', NULL),
(28, 28, 10088381.9, 500, 10088881.9, NULL, 'no', NULL, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48', NULL),
(29, 29, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-12 19:41:12', '2023-11-12 19:41:12', NULL),
(30, 30, 7566, 100, 7666, NULL, 'no', NULL, NULL, '2023-11-13 18:17:33', '2023-11-13 18:17:33', NULL),
(31, 31, 340000, 100, 340100, NULL, 'no', NULL, NULL, '2023-11-13 18:17:56', '2023-11-13 18:17:56', NULL),
(32, 32, 260, 500, 760, NULL, 'no', NULL, NULL, '2023-11-13 18:22:29', '2023-11-13 18:22:29', NULL),
(33, 33, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:33:54', '2023-11-13 18:33:54', NULL),
(34, 34, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:34:17', '2023-11-13 18:34:17', NULL),
(35, 35, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-13 18:34:31', '2023-11-13 18:34:31', NULL),
(36, 36, 100, 500, 600, NULL, 'no', NULL, NULL, '2023-11-13 18:34:47', '2023-11-13 18:34:47', NULL),
(37, 37, 50, 500, 550, NULL, 'no', NULL, NULL, '2023-11-13 18:35:07', '2023-11-13 18:35:07', NULL),
(38, 38, 7566, 500, 8066, NULL, 'no', NULL, NULL, '2023-11-13 18:36:32', '2023-11-13 18:36:32', NULL),
(39, 39, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:38:32', '2023-11-13 18:38:32', NULL),
(40, 40, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:39:17', '2023-11-13 18:39:17', NULL),
(41, 41, 340000, 100, 340100, NULL, 'no', NULL, NULL, '2023-11-13 18:40:44', '2023-11-13 18:40:44', NULL),
(42, 42, 7566, 100, 7666, NULL, 'no', NULL, NULL, '2023-11-13 18:41:30', '2023-11-13 18:41:30', NULL),
(43, 43, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:45:26', '2023-11-13 18:45:26', NULL),
(44, 44, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:49:20', '2023-11-13 18:49:20', NULL),
(45, 45, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:49:38', '2023-11-13 18:49:38', NULL),
(46, 46, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:50:15', '2023-11-13 18:50:15', NULL),
(47, 47, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-13 18:52:12', '2023-11-13 18:52:12', NULL),
(48, 48, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 18:58:10', '2023-11-13 18:58:10', NULL),
(49, 49, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 18:58:35', '2023-11-13 18:58:35', NULL),
(50, 50, 58.2, 100, 158.2, NULL, 'no', NULL, NULL, '2023-11-13 18:59:11', '2023-11-13 18:59:11', NULL),
(51, 51, 58.2, 100, 158.2, NULL, 'no', NULL, NULL, '2023-11-13 19:01:08', '2023-11-13 19:01:08', NULL),
(52, 52, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 19:15:12', '2023-11-13 19:15:12', NULL),
(53, 53, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 19:18:37', '2023-11-13 19:18:37', NULL),
(54, 54, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 19:18:56', '2023-11-13 19:18:56', NULL),
(55, 55, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 19:25:12', '2023-11-13 19:25:12', NULL),
(56, 56, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-13 19:36:53', '2023-11-13 19:36:53', NULL),
(57, 57, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-13 19:52:39', '2023-11-13 19:52:39', NULL),
(58, 58, 45250, 500, 45750, NULL, 'no', NULL, NULL, '2023-11-14 16:29:21', '2023-11-14 16:29:21', NULL),
(59, 59, 544688.2, 100, 544788.2, NULL, 'no', NULL, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(60, 60, 340000, 100, 340100, NULL, 'no', NULL, NULL, '2023-11-15 10:34:14', '2023-11-15 10:34:14', NULL),
(61, 61, 3400000, 500, 3400500, NULL, 'no', NULL, NULL, '2023-11-15 14:49:25', '2023-11-15 14:49:25', NULL),
(62, 62, 360000, 500, 360500, NULL, 'no', NULL, NULL, '2023-11-16 11:13:50', '2023-11-16 11:13:50', NULL),
(63, 63, 1164, 500, 1664, NULL, 'no', NULL, NULL, '2023-11-16 11:30:10', '2023-11-16 11:30:10', NULL),
(64, 64, 1746, 500, 2246, NULL, 'no', NULL, NULL, '2023-11-16 11:33:42', '2023-11-16 11:33:42', NULL),
(65, 65, 450000, 500, 450500, NULL, 'no', NULL, NULL, '2023-11-16 11:38:21', '2023-11-16 11:38:21', NULL),
(66, 66, 6310500, 500, 6311000, NULL, 'no', NULL, NULL, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(67, 67, 2891, 500, 3391, NULL, 'no', NULL, NULL, '2023-11-16 11:51:18', '2023-11-16 11:51:18', NULL),
(68, 68, 58.2, 500, 558.2, NULL, 'no', NULL, NULL, '2023-11-16 11:52:59', '2023-11-16 11:52:59', NULL),
(69, 69, 291, 500, 791, NULL, 'no', NULL, NULL, '2023-11-16 12:01:27', '2023-11-16 12:01:27', NULL),
(70, 70, 680000, 500, 680500, NULL, 'no', NULL, NULL, '2023-11-16 12:10:58', '2023-11-16 12:10:58', NULL),
(71, 71, 340000, 500, 340500, NULL, 'no', NULL, NULL, '2023-11-16 14:17:08', '2023-11-16 14:17:08', NULL),
(72, 72, 24291, 500, 24791, NULL, 'no', NULL, NULL, '2023-11-16 14:45:11', '2023-11-16 14:45:11', NULL),
(73, 73, 270000, 500, 270500, NULL, 'no', NULL, NULL, '2023-11-16 15:08:29', '2023-11-16 15:08:29', NULL),
(74, 74, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:05:09', '2023-11-16 16:05:09', NULL),
(75, 75, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:08:14', '2023-11-16 16:08:14', NULL),
(76, 76, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:11:39', '2023-11-16 16:11:39', NULL),
(77, 77, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:12:53', '2023-11-16 16:12:53', NULL),
(78, 78, 180000, 500, 180500, NULL, 'no', NULL, NULL, '2023-11-16 16:13:37', '2023-11-16 16:13:37', NULL),
(79, 79, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:15:13', '2023-11-16 16:15:13', NULL),
(80, 80, 180000, 500, 180500, NULL, 'no', NULL, NULL, '2023-11-16 16:18:21', '2023-11-16 16:18:21', NULL),
(81, 81, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-16 16:21:57', '2023-11-16 16:21:57', NULL),
(82, 82, 508936.1, 100, 509036.1, NULL, 'no', NULL, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(83, 83, 90000, 500, 90500, NULL, 'no', NULL, NULL, '2023-11-19 19:58:13', '2023-11-19 19:58:13', NULL),
(84, 84, 544688.2, 500, 545188.2, NULL, 'no', NULL, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `pack_name` varchar(255) DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `pack_price` double DEFAULT NULL,
  `pack_units` int(11) DEFAULT NULL,
  `type` enum('unit','pack') DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `cart_id`, `product_id`, `unit_name`, `pack_name`, `unit_price`, `pack_price`, `pack_units`, `type`, `quantity`, `discount`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 1, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-10-21 14:52:18', '2023-10-21 14:52:18'),
(2, 6, 1, 'ddfdf', NULL, 15, NULL, NULL, 'unit', 2, 0, 30, '2023-10-21 14:52:18', '2023-11-01 09:40:07', '2023-11-01 09:40:07'),
(3, 7, 2, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-22 18:24:05', '2023-10-22 18:24:05'),
(4, 8, 2, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-22 10:18:57', '2023-10-22 10:18:57'),
(5, 8, 1, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-22 10:18:21', '2023-10-22 10:18:21'),
(6, 1, 2, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-22 18:55:23', '2023-10-22 18:55:23'),
(7, 1, 3, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-10-22 18:55:23', '2023-10-22 18:55:23'),
(8, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-10-22 18:54:00', '2023-10-22 18:54:00'),
(9, 9, 2, 'NESTLÉ', '(حزمة) NESTLÉ', 200000000, 200000000, 1, 'pack', 1, 10, 180000000, '2023-10-22 18:55:23', '2023-11-01 09:40:15', '2023-11-01 09:40:15'),
(10, 9, 3, 'معجون اسنان سانسوداين', '(حزمة) معجون اسنان سانسوداين', 650, 650, 1, 'pack', 2, 0, 1300, '2023-10-22 18:55:23', '2023-11-01 09:40:15', '2023-11-01 09:40:15'),
(11, 2, 3, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 12:05:50', '2023-10-23 12:05:50'),
(12, 2, 2, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-10-23 12:05:50', '2023-10-23 12:05:50'),
(13, 10, 3, 'معجون اسنان سانسوداين', '(حزمة) معجون اسنان سانسوداين', 650, 650, 1, 'pack', 1, 0, 650, '2023-10-23 12:05:49', '2023-11-01 09:40:21', '2023-11-01 09:40:21'),
(14, 10, 2, 'NESTLÉ', '(حزمة) NESTLÉ', 200000000, 200000000, 1, 'pack', 5, 10, 900000000, '2023-10-23 12:05:49', '2023-11-01 09:40:21', '2023-11-01 09:40:21'),
(15, 11, 2, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 17:27:16', '2023-10-23 17:27:16'),
(16, 11, 12, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 21:07:30', '2023-10-23 21:07:30'),
(17, 11, 8, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-10-23 21:19:23', '2023-10-23 21:19:23'),
(18, 12, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 21:19:57', '2023-10-23 21:19:57'),
(19, 12, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 21:19:57', '2023-10-23 21:19:57'),
(20, 12, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 21:19:57', '2023-10-23 21:19:57'),
(21, 14, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-10-23 21:19:57', '2023-10-23 21:19:57', NULL),
(22, 14, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-10-23 21:19:57', '2023-10-23 21:19:57', NULL),
(23, 14, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 1, 0, 260, '2023-10-23 21:19:57', '2023-10-23 21:19:57', NULL),
(24, 13, 21, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 23:56:57', '2023-10-23 23:56:57'),
(25, 13, 20, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 23:56:57', '2023-10-23 23:56:57'),
(26, 13, 19, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 23:56:57', '2023-10-23 23:56:57'),
(27, 13, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-23 23:56:57', '2023-10-23 23:56:57'),
(28, 15, 21, 'طقم اطفال', '(حزمة) طقم اطفال', 250, 250, 1, 'pack', 1, 0, 250, '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(29, 15, 20, 'طقم صيفي', '(حزمة) طقم صيفي', 7800, 7800, 1, 'pack', 1, 0, 7800, '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(30, 15, 19, 'طقم من جورجليتر', '(حزمة) طقم من جورجليتر', 3500, 3500, 1, 'pack', 1, 0, 3500, '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(31, 15, 22, 'فستان بنات', '(حزمة) فستان بنات', 260, 260, 1, 'pack', 1, 0, 260, '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(32, 16, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 09:22:04', '2023-10-24 09:22:04'),
(33, 16, 11, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-10-24 09:22:04', '2023-10-24 09:22:04'),
(34, 16, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 09:22:04', '2023-10-24 09:22:04'),
(35, 17, 5, 'ساعة360', '(حزمة) ساعة360', 2000, 3000, 2, 'unit', 1, 0, 2000, '2023-10-24 09:22:04', '2023-11-01 09:40:33', '2023-11-01 09:40:33'),
(36, 17, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 3, 0, 1020000, '2023-10-24 09:22:04', '2023-11-01 09:40:33', '2023-11-01 09:40:33'),
(37, 17, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-10-24 09:22:04', '2023-11-01 09:40:33', '2023-11-01 09:40:33'),
(38, 18, 23, NULL, NULL, 0, NULL, NULL, NULL, 15, 0, 0, NULL, '2023-10-24 09:54:41', '2023-10-24 09:54:41'),
(39, 19, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-06 18:06:17', NULL),
(40, 7, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 21:04:43', '2023-10-24 21:04:43'),
(41, 7, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 21:04:43', '2023-10-24 21:04:43'),
(42, 20, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-10-24 21:04:43', '2023-11-01 09:40:40', '2023-11-01 09:40:40'),
(43, 20, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-10-24 21:04:43', '2023-11-01 09:40:40', '2023-11-01 09:40:40'),
(44, 21, 8, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 21:14:03', '2023-10-24 21:14:03'),
(45, 21, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 21:13:46', '2023-10-24 21:13:46'),
(46, 21, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-24 21:14:53', '2023-10-24 21:14:53'),
(47, 22, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-10-24 21:14:53', '2023-11-01 09:40:46', '2023-11-01 09:40:46'),
(48, 23, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(49, 23, 35, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(50, 23, 30, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(51, 23, 31, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(52, 23, 29, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-25 12:13:14', '2023-10-25 12:13:14'),
(53, 24, 5, 'ساعة360', '(حزمة) ساعة360', 2000, 3000, 2, 'unit', 1, 0, 2000, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(54, 24, 35, 'الاجاص', '(حزمة) الاجاص', 140, 140, 1, 'pack', 1, 0, 140, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(55, 24, 30, 'الكيوي', '(حزمة) الكيوي', 1800, 1800, 1, 'pack', 1, 0, 1800, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(56, 24, 31, 'الدلاع', '(حزمة) الدلاع', 90, 90, 1, 'pack', 1, 0, 90, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(57, 24, 29, 'البنان', '(حزمة) البنان', 340, 340, 1, 'pack', 1, 0, 340, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(58, 25, 28, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:30:25', '2023-10-27 09:30:25'),
(59, 26, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:06:09', '2023-10-27 09:06:09'),
(60, 27, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-10-27 09:06:09', '2023-10-27 09:11:34', '2023-10-27 09:11:34'),
(61, 29, 28, 'بوغاتي شيرون سبورت', '(حزمة) بوغاتي شيرون سبورت', 9999999999, 9999999999, 1, 'pack', 1, 0, 9999999999, '2023-10-27 09:30:25', '2023-11-01 09:40:59', '2023-11-01 09:40:59'),
(62, 30, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:30:51', '2023-10-27 09:30:51'),
(63, 31, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-10-27 09:30:51', '2023-11-01 09:41:06', '2023-11-01 09:41:06'),
(64, 32, 56, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(65, 32, 53, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(66, 32, 35, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(67, 32, 8, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(68, 32, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(69, 32, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(70, 32, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(71, 32, 31, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(72, 32, 29, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(73, 32, 28, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(74, 32, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(75, 32, 21, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(76, 32, 20, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 09:47:43', '2023-10-27 09:47:43'),
(77, 33, 56, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-27 16:39:47', '2023-10-27 16:39:47'),
(78, 34, 56, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-28 09:57:13', '2023-10-28 09:57:13'),
(79, 34, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-28 12:37:13', '2023-10-28 12:37:13'),
(80, 37, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-10-28 12:37:13', '2023-11-01 09:41:28', '2023-11-01 09:41:28'),
(81, 3, 35, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-29 09:11:16', '2023-10-29 09:11:16'),
(82, 39, 35, 'الاجاص', '(حزمة) الاجاص', 140, 140, 1, 'pack', 1, 5, 133, '2023-10-29 09:11:16', '2023-11-01 09:41:34', '2023-11-01 09:41:34'),
(83, 4, 8, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-29 12:38:46', '2023-10-29 12:38:46'),
(84, 38, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-01 09:37:20', '2023-11-01 09:37:20'),
(85, 4, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(86, 38, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-01 08:48:27', '2023-11-01 08:48:27'),
(87, 38, 8, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-31 20:03:42', '2023-10-31 20:03:42'),
(88, 38, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-10-31 20:03:35', '2023-10-31 20:03:35'),
(89, 41, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-01 09:37:20', '2023-11-01 09:39:49', '2023-11-01 09:39:49'),
(90, 42, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-01 09:45:09', '2023-11-01 09:45:09'),
(91, 43, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-01 09:45:09', '2023-11-01 09:45:09', NULL),
(92, 44, 8, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-04 16:25:42', '2023-11-04 16:25:42'),
(93, 44, 5, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-01 09:59:59', '2023-11-01 09:59:59'),
(94, 45, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-02 15:44:57', '2023-11-02 15:44:57'),
(95, 45, 11, NULL, NULL, 0, NULL, NULL, NULL, 10, 0, 0, NULL, '2023-11-15 14:49:25', '2023-11-15 14:49:25'),
(96, 45, 13, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, 0, NULL, '2023-11-15 12:17:25', '2023-11-15 12:17:25'),
(97, 45, 8, NULL, NULL, 0, NULL, NULL, NULL, 7, 0, 0, NULL, '2023-11-03 16:37:19', '2023-11-03 16:37:19'),
(98, 45, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-08 14:06:56', '2023-11-08 14:06:56'),
(99, 45, 72, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-02 15:09:54', '2023-11-02 15:09:54'),
(100, 45, 69, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-02 15:09:52', '2023-11-02 15:09:52'),
(101, 45, 68, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-02 15:09:51', '2023-11-02 15:09:51'),
(102, 46, 11, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, NULL, NULL),
(103, 46, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(104, 45, 44, NULL, NULL, 0, NULL, NULL, NULL, 6, 0, 0, NULL, '2023-11-02 15:44:59', '2023-11-02 15:44:59'),
(105, 45, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-08 14:06:55', '2023-11-08 14:06:55'),
(106, 45, 50, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-11-03 16:38:14', '2023-11-03 16:38:14'),
(107, 45, 51, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-11-03 16:38:15', '2023-11-03 16:38:15'),
(108, 45, 78, NULL, NULL, 0, NULL, NULL, NULL, 7, 0, 0, NULL, '2023-11-15 12:17:24', '2023-11-15 12:17:24'),
(109, 35, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(110, 35, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(111, 35, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(112, 47, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 16:43:49', '2023-11-04 16:43:49'),
(113, 48, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 16:46:22', '2023-11-04 16:46:22'),
(114, 49, 11, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-11-04 16:51:11', '2023-11-04 16:51:11'),
(115, 50, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 16:51:29', '2023-11-04 16:51:29'),
(116, 51, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-04 16:51:29', '2023-11-04 16:51:29', NULL),
(117, 52, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 17:11:03', '2023-11-04 17:11:03'),
(118, 53, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:05:04', '2023-11-04 18:05:04'),
(119, 53, 56, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:04:59', '2023-11-04 18:04:59'),
(120, 53, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:07:13', '2023-11-04 18:07:13'),
(121, 54, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-04 18:07:13', '2023-11-04 18:07:13', NULL),
(122, 55, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 21:28:31', '2023-11-04 21:28:31'),
(123, 4, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(124, 4, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(125, 4, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(126, 4, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(127, 4, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54'),
(128, 56, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(129, 56, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(130, 56, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(131, 56, 22, 'فستان بنات', '(حزمة) فستان بنات', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(132, 56, 44, 'تشينا 2ل', '(حزمة) تشينا 2ل', 100, 580, 6, 'unit', 1, 0, 100, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(133, 56, 43, 'فرحة كانات', '(حزمة) فرحة كانات', 50, 50, 1, 'pack', 1, 0, 50, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(134, 57, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-06 19:17:51', '2023-11-06 19:17:51'),
(135, 58, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-04 21:28:30', '2023-11-04 21:28:30', NULL),
(136, 59, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 10:23:51', '2023-11-05 10:23:51'),
(137, 60, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 10:24:01', '2023-11-05 10:24:01'),
(138, 61, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 11:34:06', '2023-11-05 11:34:06'),
(139, 62, 28, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 11:36:03', '2023-11-05 11:36:03'),
(140, 62, 25, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-05 11:35:55', '2023-11-05 11:35:55'),
(141, 62, 24, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 11:36:02', '2023-11-05 11:36:02'),
(142, 62, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 22:08:11', '2023-11-05 22:08:11'),
(143, 63, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(144, 65, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-05 22:08:34', '2023-11-05 22:08:34'),
(145, 66, 11, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, 0, NULL, '2023-11-06 19:04:57', '2023-11-06 19:04:57'),
(146, 67, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-06 13:24:36', '2023-11-06 13:24:36'),
(147, 67, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-06 13:24:36', '2023-11-06 13:24:36'),
(148, 69, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-06 13:24:36', '2023-11-06 13:24:36', NULL),
(149, 69, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-06 13:24:36', '2023-11-06 13:24:36', NULL),
(150, 70, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 4, 0, 1360000, '2023-11-06 19:04:57', '2023-11-06 19:04:57', NULL),
(151, 72, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-06 19:17:51', '2023-11-06 19:17:51', NULL),
(152, 73, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-06 19:18:13', '2023-11-06 19:18:13'),
(153, 74, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-06 19:18:13', '2023-11-06 19:18:13', NULL),
(154, 75, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(155, 71, 77, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 18:46:54', '2023-11-07 18:46:54'),
(156, 76, 75, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(157, 76, 52, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(158, 76, 76, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(159, 76, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(160, 76, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 14:24:24', '2023-11-07 14:24:24'),
(161, 77, 75, 'Condor ثلاجة', '(حزمة)  Condor ثلاجة', 67500, 67500, 1, 'pack', 1, 0, 67500, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(162, 77, 52, 'مكيف توشيبا 12', '(حزمة) مكيف توشيبا 12', 68900, 68900, 1, 'pack', 1, 0, 68900, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(163, 77, 76, 'تلفاز 43 بوصة IRIS', '(حزمة) تلفاز 43 بوصة IRIS', 45000, 45000, 1, 'pack', 1, 0, 45000, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(164, 77, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(165, 77, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-07 14:24:24', '2023-11-07 14:24:24', NULL),
(166, 8, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-07 17:34:30', '2023-11-07 17:34:30'),
(167, 45, 55, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-08 09:51:08', '2023-11-08 09:51:08'),
(168, 45, 18, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, 0, NULL, '2023-11-08 13:02:10', '2023-11-08 13:02:10'),
(169, 45, 23, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, 0, NULL, '2023-11-08 13:02:10', '2023-11-08 13:02:10'),
(170, 81, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-08 13:37:15', '2023-11-08 13:37:15'),
(171, 45, 75, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-11-08 15:17:29', '2023-11-08 15:17:29'),
(172, 79, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(173, 19, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(174, 81, 72, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:09:36', '2023-11-12 19:09:36'),
(175, 82, 72, 'الدجاج', '(حزمة) الدجاج', 470, 470, 1, 'pack', 1, 3, 455.9, '2023-11-12 19:09:36', '2023-11-13 19:22:43', '2023-11-13 19:22:43'),
(176, 83, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:10:11', '2023-11-12 19:10:11'),
(177, 84, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-12 19:10:11', '2023-11-13 19:22:39', '2023-11-13 19:22:39'),
(178, 85, 72, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(179, 85, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(180, 85, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(181, 85, 75, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(182, 85, 40, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(183, 85, 46, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(184, 85, 47, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(185, 85, 45, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:40:48', '2023-11-12 19:40:48'),
(186, 86, 72, 'الدجاج', '(حزمة) الدجاج', 470, 470, 1, 'pack', 1, 3, 455.9, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(187, 86, 63, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 7800, 7800, 1, 'pack', 1, 3, 7566, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(188, 86, 42, 'فرحة 1ل', '(حزمة) فرحة 1ل', 60, 60, 1, 'pack', 1, 0, 60, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(189, 86, 75, 'Condor ثلاجة', '(حزمة)  Condor ثلاجة', 67500, 67500, 1, 'pack', 1, 0, 67500, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(190, 86, 40, 'شاكمان', '(حزمة) شاكمان', 10000000, 10000000, 1, 'pack', 1, 0, 10000000, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(191, 86, 46, 'احذية رياضية تركية', '(حزمة) احذية رياضية تركية', 2900, 2900, 1, 'pack', 1, 0, 2900, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(192, 86, 47, 'حذاء نسائي تركي', '(حزمة) حذاء نسائي تركي', 3900, 3900, 1, 'pack', 1, 0, 3900, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(193, 86, 45, 'كلاسيك', '(حزمة) كلاسيك', 6000, 6000, 1, 'pack', 1, 0, 6000, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(194, 87, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-12 19:41:12', '2023-11-12 19:41:12'),
(195, 88, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-12 19:41:12', '2023-11-13 19:22:28', '2023-11-13 19:22:28'),
(196, 89, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:17:33', '2023-11-13 18:17:33'),
(197, 90, 63, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 7800, 7800, 1, 'pack', 1, 3, 7566, '2023-11-13 18:17:33', '2023-11-13 19:22:25', '2023-11-13 19:22:25'),
(198, 91, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:17:56', '2023-11-13 18:17:56'),
(199, 92, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:17:56', '2023-11-13 19:22:21', '2023-11-13 19:22:21'),
(200, 93, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:22:09', '2023-11-13 18:22:09'),
(201, 93, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:22:29', '2023-11-13 18:22:29'),
(202, 94, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-13 18:22:29', '2023-11-13 19:22:17', '2023-11-13 19:22:17'),
(203, 95, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:33:54', '2023-11-13 18:33:54'),
(204, 96, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:33:54', '2023-11-13 19:22:12', '2023-11-13 19:22:12'),
(205, 97, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:34:17', '2023-11-13 18:34:17'),
(206, 98, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:34:17', '2023-11-13 19:22:03', '2023-11-13 19:22:03'),
(207, 99, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:34:31', '2023-11-13 18:34:31'),
(208, 100, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-13 18:34:31', '2023-11-13 19:21:57', '2023-11-13 19:21:57'),
(209, 101, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:34:47', '2023-11-13 18:34:47'),
(210, 102, 44, 'تشينا 2ل', '(حزمة) تشينا 2ل', 100, 580, 6, 'unit', 1, 0, 100, '2023-11-13 18:34:47', '2023-11-13 19:21:49', '2023-11-13 19:21:49'),
(211, 103, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:35:07', '2023-11-13 18:35:07'),
(212, 104, 43, 'فرحة كانات', '(حزمة) فرحة كانات', 50, 50, 1, 'pack', 1, 0, 50, '2023-11-13 18:35:07', '2023-11-13 19:21:45', '2023-11-13 19:21:45'),
(213, 105, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:36:32', '2023-11-13 18:36:32'),
(214, 106, 63, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 7800, 7800, 1, 'pack', 1, 3, 7566, '2023-11-13 18:36:32', '2023-11-13 19:21:41', '2023-11-13 19:21:41'),
(215, 107, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:38:32', '2023-11-13 18:38:32'),
(216, 108, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:38:32', '2023-11-13 19:21:37', '2023-11-13 19:21:37'),
(217, 109, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:39:17', '2023-11-13 18:39:17'),
(218, 110, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:39:17', '2023-11-13 19:21:33', '2023-11-13 19:21:33'),
(219, 111, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:40:44', '2023-11-13 18:40:44'),
(220, 112, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:40:44', '2023-11-13 19:21:29', '2023-11-13 19:21:29'),
(221, 113, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:41:30', '2023-11-13 18:41:30'),
(222, 114, 63, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 7800, 7800, 1, 'pack', 1, 3, 7566, '2023-11-13 18:41:30', '2023-11-13 19:21:25', '2023-11-13 19:21:25'),
(223, 115, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:45:26', '2023-11-13 18:45:26'),
(224, 116, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:45:26', '2023-11-13 19:21:20', '2023-11-13 19:21:20'),
(225, 117, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:49:20', '2023-11-13 18:49:20'),
(226, 118, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:49:20', '2023-11-13 19:21:16', '2023-11-13 19:21:16'),
(227, 119, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:49:38', '2023-11-13 18:49:38'),
(228, 120, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:49:38', '2023-11-13 19:21:11', '2023-11-13 19:21:11'),
(229, 121, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:50:15', '2023-11-13 18:50:15'),
(230, 122, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:50:15', '2023-11-13 19:21:06', '2023-11-13 19:21:06'),
(231, 123, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:52:12', '2023-11-13 18:52:12'),
(232, 124, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-13 18:52:12', '2023-11-13 19:21:01', '2023-11-13 19:21:01'),
(233, 125, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:58:10', '2023-11-13 18:58:10'),
(234, 126, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 18:58:10', '2023-11-13 19:20:56', '2023-11-13 19:20:56'),
(235, 127, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:58:35', '2023-11-13 18:58:35'),
(236, 128, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 18:58:35', '2023-11-13 19:20:52', '2023-11-13 19:20:52'),
(237, 129, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 18:59:11', '2023-11-13 18:59:11'),
(238, 130, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 18:59:11', '2023-11-13 19:20:47', '2023-11-13 19:20:47'),
(239, 131, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:01:08', '2023-11-13 19:01:08'),
(240, 132, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:01:08', '2023-11-13 19:20:42', '2023-11-13 19:20:42'),
(241, 133, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:15:12', '2023-11-13 19:15:12'),
(242, 134, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:15:12', '2023-11-13 19:20:30', '2023-11-13 19:20:30'),
(243, 135, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:18:37', '2023-11-13 19:18:37'),
(244, 136, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:18:37', '2023-11-13 19:20:20', '2023-11-13 19:20:20'),
(245, 137, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:18:56', '2023-11-13 19:18:56'),
(246, 138, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:18:56', '2023-11-13 19:18:56', NULL),
(247, 139, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:25:12', '2023-11-13 19:25:12'),
(248, 140, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:25:12', '2023-11-13 19:25:12', NULL),
(249, 141, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:36:53', '2023-11-13 19:36:53'),
(250, 142, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-13 19:36:53', '2023-11-13 19:36:53', NULL),
(251, 80, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-13 19:52:39', '2023-11-13 19:52:39'),
(252, 145, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-13 19:52:39', '2023-11-13 19:52:39', NULL),
(253, 146, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(254, 146, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(255, 146, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(256, 146, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(257, 146, 22, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, NULL, NULL),
(258, 146, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(259, 146, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(260, 146, 76, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(261, 146, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(262, 146, 52, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(263, 143, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(264, 143, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(265, 143, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(266, 143, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(267, 143, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(268, 143, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(269, 143, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(270, 143, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(271, 143, 52, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(272, 143, 76, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:23:30', '2023-11-15 10:23:30'),
(273, 147, 21, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-14 16:29:21', '2023-11-14 16:29:21'),
(274, 147, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-14 16:27:00', '2023-11-14 16:27:00'),
(275, 147, 66, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-14 16:29:21', '2023-11-14 16:29:21'),
(276, 148, 21, 'طقم اطفال', '(حزمة) طقم اطفال', 250, 250, 1, 'pack', 1, 0, 250, '2023-11-14 16:29:21', '2023-11-14 16:29:21', NULL),
(277, 148, 66, 'الة خلط الاسمنت', '(حزمة) الة خلط الاسمنت', 45000, 45000, 1, 'pack', 1, 0, 45000, '2023-11-14 16:29:21', '2023-11-14 16:29:21', NULL),
(278, 150, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(279, 150, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(280, 150, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(281, 150, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(282, 150, 22, 'فستان بنات', '(حزمة) فستان بنات', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(283, 150, 44, 'تشينا 2ل', '(حزمة) تشينا 2ل', 100, 580, 6, 'unit', 1, 0, 100, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(284, 150, 43, 'فرحة كانات', '(حزمة) فرحة كانات', 50, 50, 1, 'pack', 1, 0, 50, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(285, 150, 42, 'فرحة 1ل', '(حزمة) فرحة 1ل', 60, 60, 1, 'pack', 1, 0, 60, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(286, 150, 52, 'مكيف توشيبا 12', '(حزمة) مكيف توشيبا 12', 68900, 68900, 1, 'pack', 1, 0, 68900, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(287, 150, 76, 'تلفاز 43 بوصة IRIS', '(حزمة) تلفاز 43 بوصة IRIS', 45000, 45000, 1, 'pack', 1, 0, 45000, '2023-11-15 10:23:30', '2023-11-15 10:23:30', NULL),
(288, 144, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 10:34:14', '2023-11-15 10:34:14'),
(289, 151, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-15 10:34:14', '2023-11-15 10:34:14', NULL),
(290, 153, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 10, 0, 3400000, '2023-11-15 14:49:25', '2023-11-15 14:49:25', NULL),
(291, 154, 13, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, 0, NULL, '2023-11-16 11:13:50', '2023-11-16 11:13:50'),
(292, 154, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-15 16:36:56', '2023-11-15 16:36:56'),
(293, 155, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 4, 0, 360000, '2023-11-16 11:13:50', '2023-11-16 11:13:50', NULL),
(294, 19, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(295, 19, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(296, 19, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(297, 19, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(298, 19, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(299, 19, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(300, 19, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL),
(301, 156, 78, NULL, NULL, 0, NULL, NULL, NULL, 20, 0, 0, NULL, '2023-11-16 11:30:10', '2023-11-16 11:30:10'),
(302, 157, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 20, 3, 1164, '2023-11-16 11:30:10', '2023-11-16 11:30:10', NULL),
(303, 158, 78, NULL, NULL, 0, NULL, NULL, NULL, 30, 0, 0, NULL, '2023-11-16 11:33:42', '2023-11-16 11:33:42'),
(304, 159, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 30, 3, 1746, '2023-11-16 11:33:42', '2023-11-16 11:33:42', NULL),
(305, 160, 13, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 11:38:21', '2023-11-16 11:38:21'),
(306, 161, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 5, 0, 450000, '2023-11-16 11:38:21', '2023-11-16 11:38:21', NULL),
(307, 162, 62, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 11:47:58', '2023-11-16 11:47:58'),
(308, 162, 5, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 11:47:58', '2023-11-16 11:47:58'),
(309, 162, 64, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 11:47:58', '2023-11-16 11:47:58'),
(310, 163, 62, 'ساعة ذكية IOS', '(حزمة) ساعة ذكية IOS', 10500, 10500, 1, 'pack', 5, 0, 52500, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(311, 163, 5, 'ساعة360', '(حزمة) ساعة360', 2000, 3000, 2, 'pack', 2, 0, 6000, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(312, 163, 5, 'ساعة360', '(حزمة) ساعة360', 2000, 3000, 2, 'unit', 1, 0, 2000, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(313, 163, 64, 'تومي هيلفيغر', '(حزمة) تومي هيلفيغر', 1250000, 1250000, 1, 'pack', 5, 0, 6250000, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(314, 164, 78, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 11:51:18', '2023-11-16 11:51:18'),
(315, 164, 6, NULL, NULL, 0, NULL, NULL, NULL, 10, 0, 0, NULL, '2023-11-16 11:51:18', '2023-11-16 11:51:18'),
(316, 165, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 5, 3, 291, '2023-11-16 11:51:18', '2023-11-16 11:51:18', NULL),
(317, 165, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 10, 0, 2600, '2023-11-16 11:51:18', '2023-11-16 11:51:18', NULL),
(318, 166, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 11:52:59', '2023-11-16 11:52:59'),
(319, 167, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-16 11:52:59', '2023-11-16 11:52:59', NULL),
(320, 168, 78, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 12:01:27', '2023-11-16 12:01:27'),
(321, 169, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 5, 3, 291, '2023-11-16 12:01:27', '2023-11-16 12:01:27', NULL),
(322, 170, 11, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-16 12:10:58', '2023-11-16 12:10:58'),
(323, 171, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 2, 0, 680000, '2023-11-16 12:10:58', '2023-11-16 12:10:58', NULL),
(324, 172, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 13:04:50', '2023-11-16 13:04:50'),
(325, 172, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 14:17:08', '2023-11-16 14:17:08'),
(326, 173, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-16 14:17:08', '2023-11-16 14:17:08', NULL),
(327, 174, 20, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 14:20:12', '2023-11-16 14:20:12'),
(328, 174, 21, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 14:20:14', '2023-11-16 14:20:14'),
(329, 174, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 14:20:14', '2023-11-16 14:20:14'),
(330, 174, 19, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 14:20:14', '2023-11-16 14:20:14'),
(331, 174, 78, NULL, NULL, 0, NULL, NULL, NULL, 5, 0, 0, NULL, '2023-11-16 14:45:11', '2023-11-16 14:45:11'),
(332, 174, 73, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-16 14:45:11', '2023-11-16 14:45:11'),
(333, 175, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 5, 3, 291, '2023-11-16 14:45:11', '2023-11-16 14:45:11', NULL),
(334, 175, 73, 'ألة حلاقة', '(حزمة) ألة حلاقة', 12000, 12000, 1, 'pack', 2, 0, 24000, '2023-11-16 14:45:11', '2023-11-16 14:45:11', NULL),
(335, 176, 13, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, 0, NULL, '2023-11-16 15:08:29', '2023-11-16 15:08:29'),
(336, 177, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 3, 0, 270000, '2023-11-16 15:08:29', '2023-11-16 15:08:29', NULL),
(337, 178, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:05:09', '2023-11-16 16:05:09'),
(338, 179, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:05:09', '2023-11-16 16:05:09', NULL),
(339, 180, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:08:14', '2023-11-16 16:08:14'),
(340, 181, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:08:14', '2023-11-16 16:08:14', NULL),
(341, 182, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:11:39', '2023-11-16 16:11:39'),
(342, 183, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:11:39', '2023-11-16 16:11:39', NULL),
(343, 184, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:12:53', '2023-11-16 16:12:53'),
(344, 185, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:12:53', '2023-11-16 16:12:53', NULL),
(345, 186, 13, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-16 16:13:37', '2023-11-16 16:13:37'),
(346, 187, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 2, 0, 180000, '2023-11-16 16:13:37', '2023-11-16 16:13:37', NULL),
(347, 188, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:15:13', '2023-11-16 16:15:13'),
(348, 189, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:15:13', '2023-11-16 16:15:13', NULL),
(349, 190, 13, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, 0, NULL, '2023-11-16 16:18:21', '2023-11-16 16:18:21'),
(350, 191, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 2, 0, 180000, '2023-11-16 16:18:21', '2023-11-16 16:18:21', NULL),
(351, 192, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-16 16:21:57', '2023-11-16 16:21:57'),
(352, 193, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-16 16:21:57', '2023-11-16 16:21:57', NULL),
(353, 152, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(354, 152, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(355, 152, 67, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(356, 152, 72, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(357, 152, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(358, 152, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(359, 152, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(360, 152, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(361, 152, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(362, 152, 52, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46'),
(363, 195, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(364, 195, 63, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 7800, 7800, 1, 'pack', 1, 3, 7566, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(365, 195, 67, 'لحم الخروف', '(حزمة) لحم الخروف', 1800, 1800, 1, 'pack', 1, 3, 1746, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(366, 195, 72, 'الدجاج', '(حزمة) الدجاج', 470, 470, 1, 'pack', 1, 3, 455.9, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(367, 195, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(368, 195, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(369, 195, 43, 'فرحة كانات', '(حزمة) فرحة كانات', 50, 50, 1, 'pack', 1, 0, 50, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(370, 195, 44, 'تشينا 2ل', '(حزمة) تشينا 2ل', 100, 580, 6, 'unit', 1, 0, 100, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(371, 195, 42, 'فرحة 1ل', '(حزمة) فرحة 1ل', 60, 60, 1, 'pack', 1, 0, 60, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(372, 195, 52, 'مكيف توشيبا 12', '(حزمة) مكيف توشيبا 12', 68900, 68900, 1, 'pack', 1, 0, 68900, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(373, 196, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 19:58:13', '2023-11-19 19:58:13'),
(374, 197, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-19 19:58:13', '2023-11-19 19:58:13', NULL),
(375, 198, 13, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(376, 198, 11, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(377, 198, 78, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(378, 198, 6, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(379, 198, 43, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(380, 198, 44, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(381, 198, 22, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(382, 198, 42, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(383, 198, 52, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(384, 198, 76, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44'),
(385, 199, 13, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 90000, 90000, 1, 'pack', 1, 0, 90000, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(386, 199, 11, 'iPhone 15', '(حزمة) iPhone 15', 340000, 340000, 1, 'pack', 1, 0, 340000, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(387, 199, 78, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 60, 60, 1, 'pack', 1, 3, 58.2, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(388, 199, 6, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(389, 199, 43, 'فرحة كانات', '(حزمة) فرحة كانات', 50, 50, 1, 'pack', 1, 0, 50, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(390, 199, 44, 'تشينا 2ل', '(حزمة) تشينا 2ل', 100, 580, 6, 'unit', 1, 0, 100, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(391, 199, 22, 'فستان بنات', '(حزمة) فستان بنات', 260, 260, 1, 'pack', 1, 0, 260, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(392, 199, 42, 'فرحة 1ل', '(حزمة) فرحة 1ل', 60, 60, 1, 'pack', 1, 0, 60, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(393, 199, 52, 'مكيف توشيبا 12', '(حزمة) مكيف توشيبا 12', 68900, 68900, 1, 'pack', 1, 0, 68900, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(394, 199, 76, 'تلفاز 43 بوصة IRIS', '(حزمة) تلفاز 43 بوصة IRIS', 45000, 45000, 1, 'pack', 1, 0, 45000, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL),
(395, 200, 63, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `category_id`, `family_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-10-21 13:36:32', '2023-10-21 15:12:33', '2023-10-21 15:12:33'),
(2, 2, 1, '2023-10-21 13:36:32', '2023-10-21 15:12:33', '2023-10-21 15:12:33'),
(3, 3, 1, '2023-10-21 13:36:32', '2023-10-21 15:12:33', '2023-10-21 15:12:33'),
(4, 4, 1, '2023-10-21 13:36:32', '2023-10-21 15:12:33', '2023-10-21 15:12:33'),
(13, 1, 2, '2023-10-22 10:31:09', '2023-10-23 21:17:46', '2023-10-23 21:17:46'),
(14, 2, 2, '2023-10-22 10:31:09', '2023-10-23 21:17:46', '2023-10-23 21:17:46'),
(15, 3, 2, '2023-10-22 10:31:09', '2023-10-23 21:17:46', '2023-10-23 21:17:46'),
(16, 4, 2, '2023-10-22 10:31:09', '2023-10-23 21:17:46', '2023-10-23 21:17:46'),
(33, 5, 3, '2023-10-23 21:18:10', '2023-10-23 22:10:35', '2023-10-23 22:10:35'),
(34, 6, 3, '2023-10-23 21:18:10', '2023-10-23 22:10:35', '2023-10-23 22:10:35'),
(35, 7, 3, '2023-10-23 21:18:10', '2023-10-23 22:10:35', '2023-10-23 22:10:35'),
(36, 8, 3, '2023-10-23 21:18:10', '2023-10-23 22:10:35', '2023-10-23 22:10:35'),
(43, 3, 5, '2023-10-23 22:13:35', '2023-10-23 22:13:35', NULL),
(44, 5, 5, '2023-10-23 22:13:35', '2023-10-23 22:13:35', NULL),
(45, 6, 5, '2023-10-23 22:13:35', '2023-10-23 22:13:35', NULL),
(46, 8, 5, '2023-10-23 22:13:35', '2023-10-23 22:13:35', NULL),
(55, 13, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(56, 15, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(57, 16, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(58, 17, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(59, 18, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(60, 22, 7, '2023-10-25 18:13:53', '2023-10-25 18:13:53', NULL),
(61, 10, 8, '2023-10-25 18:23:04', '2023-10-25 18:23:04', NULL),
(62, 11, 8, '2023-10-25 18:23:04', '2023-10-25 18:23:04', NULL),
(63, 12, 8, '2023-10-25 18:23:04', '2023-10-25 18:23:04', NULL),
(64, 27, 8, '2023-10-25 18:23:04', '2023-10-25 18:23:04', NULL),
(65, 9, 6, '2023-10-26 16:59:56', '2023-10-26 16:59:56', NULL),
(66, 25, 6, '2023-10-26 16:59:56', '2023-10-26 16:59:56', NULL),
(67, 28, 6, '2023-10-26 16:59:56', '2023-10-26 16:59:56', NULL),
(68, 29, 6, '2023-10-26 16:59:56', '2023-10-26 16:59:56', NULL),
(69, 3, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL),
(70, 5, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL),
(71, 6, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL),
(72, 7, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL),
(73, 8, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL),
(74, 30, 4, '2023-10-26 17:06:22', '2023-10-26 17:06:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_07_29_185425_create_categories_table', 1),
(6, '2023_07_29_185441_create_subcategories_table', 1),
(7, '2023_07_29_185454_create_families_table', 1),
(8, '2023_07_29_185506_create_members_table', 1),
(9, '2023_07_29_185517_create_products_table', 1),
(10, '2023_07_29_185540_create_drivers_table', 1),
(11, '2023_07_29_185600_create_carts_table', 1),
(12, '2023_07_29_185653_create_items_table', 1),
(13, '2023_07_29_185833_create_ads_table', 1),
(14, '2023_08_01_213628_create_discounts_table', 1),
(15, '2023_08_02_164027_create_offers_table', 1),
(16, '2023_08_02_164039_create_sections_table', 1),
(17, '2023_08_02_182045_create_category_offers_table', 1),
(18, '2023_08_06_185818_create_orders_table', 1),
(19, '2023_08_06_192334_create_deliveries_table', 1),
(20, '2023_08_06_195754_create_invoices_table', 1),
(21, '2023_09_07_115721_create_documentations_table', 1),
(22, '2023_09_10_144413_create_notices_table', 1),
(23, '2023_09_10_144945_create_notifications_table', 1),
(24, '2023_09_13_163148_create_sets_table', 1),
(25, '2023_11_21_124452_create_suppliers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content_ar` varchar(255) NOT NULL,
  `content_en` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `is_read` smallint(6) NOT NULL DEFAULT 0,
  `read_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'كورنفلاكس 1', 'gg', '2023-10-21 12:54:49', '2023-10-22 10:32:07', '2023-10-22 10:32:07'),
(2, 'عيش', 'live', '2023-10-21 13:32:17', '2023-10-23 17:40:59', '2023-10-23 17:40:59'),
(3, 'مرحبا', 'hello', '2023-10-22 10:32:30', '2023-10-23 17:40:50', '2023-10-23 17:40:50'),
(4, 'استمتع', 'enjoy', '2023-10-23 20:26:57', '2023-10-23 20:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `status` enum('pending','accepted','canceled','ongoing','delivered') NOT NULL DEFAULT 'pending',
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart_id`, `phone`, `longitude`, `latitude`, `status`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 6, '0696365741', '33.6027453', '7.0286252', 'accepted', NULL, '2023-10-21 14:52:18', '2023-11-01 09:40:07', '2023-11-01 09:40:07'),
(2, 2, 9, '0542288040', '33.6035655', '7.0275684', 'accepted', NULL, '2023-10-22 18:55:23', '2023-11-01 09:40:15', '2023-11-01 09:40:15'),
(3, 2, 10, '0542288040', '33.3623773', '6.8577624', 'accepted', NULL, '2023-10-23 12:05:49', '2023-11-01 09:40:21', '2023-11-01 09:40:21'),
(4, 2, 14, '0542288040', '33.35608', '6.86319', 'canceled', NULL, '2023-10-23 21:19:57', '2023-10-27 09:11:53', NULL),
(5, 2, 15, '0542288040', '33.6035866', '7.0274411', 'accepted', 'تم الارسال', '2023-10-23 23:56:57', '2023-11-01 09:40:26', '2023-11-01 09:40:26'),
(6, 2, 17, '0542288040', '33.3461941', '6.8596099', 'accepted', NULL, '2023-10-24 09:22:04', '2023-11-01 09:40:33', '2023-11-01 09:40:33'),
(7, 4, 20, '0696365741', '33.603549', '7.0275841', 'accepted', NULL, '2023-10-24 21:04:43', '2023-11-01 09:40:40', '2023-11-01 09:40:40'),
(8, 4, 22, '0696365741', '33.6035495', '7.0275844', 'accepted', NULL, '2023-10-24 21:14:53', '2023-11-01 09:40:46', '2023-11-01 09:40:46'),
(9, 4, 24, '0542288040', '33.3621146', '6.8594784', 'accepted', NULL, '2023-10-25 12:13:14', '2023-11-01 09:40:53', '2023-11-01 09:40:53'),
(10, 6, 27, '0696365741', '33.6035664', '7.0275394', 'accepted', NULL, '2023-10-27 09:06:09', '2023-10-27 09:11:34', '2023-10-27 09:11:34'),
(11, 4, 29, '0542288040', '33.6034899', '7.0274906', 'accepted', NULL, '2023-10-27 09:30:25', '2023-11-01 09:40:59', '2023-11-01 09:40:59'),
(12, 4, 31, '0542288040', '33.6034898', '7.0274908', 'accepted', NULL, '2023-10-27 09:30:51', '2023-11-01 09:41:06', '2023-11-01 09:41:06'),
(13, 4, 37, '0542288040', '33.6038986', '7.0277748', 'accepted', NULL, '2023-10-28 12:37:13', '2023-11-01 09:41:28', '2023-11-01 09:41:28'),
(14, 3, 39, '0542288040', '33.3461329', '6.8594867', 'accepted', NULL, '2023-10-29 09:11:16', '2023-11-01 09:41:34', '2023-11-01 09:41:34'),
(15, 4, 41, '0542288040', '33.6034809', '7.0273293', 'accepted', NULL, '2023-11-01 09:37:20', '2023-11-01 09:39:49', '2023-11-01 09:39:49'),
(16, 4, 43, '0542288040', '33.603531', '7.0276497', 'accepted', NULL, '2023-11-01 09:45:09', '2023-11-01 09:45:23', NULL),
(17, 4, 51, '0542288040', '33.6035911', '7.0275171', 'accepted', NULL, '2023-11-04 16:51:29', '2023-11-04 17:12:28', NULL),
(18, 4, 54, '0542288040', '33.6036208', '7.028373', 'pending', NULL, '2023-11-04 18:07:13', '2023-11-04 18:07:13', NULL),
(19, 3, 56, '0542288040', '33.6035512', '7.0275751', 'pending', NULL, '2023-11-04 18:33:54', '2023-11-04 18:33:54', NULL),
(20, 4, 58, '0542288040', '33.6036898', '7.0275979', 'pending', NULL, '2023-11-04 21:28:30', '2023-11-04 21:28:30', NULL),
(21, 12, 69, '0672886642', '33.35608', '6.86319', 'pending', NULL, '2023-11-06 13:24:36', '2023-11-06 13:24:36', NULL),
(22, 4, 70, '0542288040', '33.6034393', '7.0277392', 'accepted', NULL, '2023-11-06 19:04:57', '2023-11-06 19:05:23', NULL),
(23, 3, 72, '0542288040', '33.6035793', '7.0276523', 'pending', NULL, '2023-11-06 19:17:51', '2023-11-06 19:17:51', NULL),
(24, 3, 74, '0542288040', '33.6035793', '7.0276523', 'pending', NULL, '2023-11-06 19:18:13', '2023-11-06 19:18:13', NULL),
(25, 13, 77, '0790805856', '31.87446400803359', '35.91630834094906', 'accepted', NULL, '2023-11-07 14:24:24', '2023-11-12 18:45:13', NULL),
(26, 4, 82, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-12 19:09:36', '2023-11-13 19:22:43', '2023-11-13 19:22:43'),
(27, 4, 84, '0542288040', '33.6035136', '7.0273839', 'pending', NULL, '2023-11-12 19:10:11', '2023-11-13 19:22:39', '2023-11-13 19:22:39'),
(28, 4, 86, '0542288040', '33.6035335', '7.0274634', 'pending', NULL, '2023-11-12 19:40:48', '2023-11-13 19:22:33', '2023-11-13 19:22:33'),
(29, 4, 88, '0542288040', '33.6035721', '7.0273078', 'pending', NULL, '2023-11-12 19:41:12', '2023-11-13 19:22:28', '2023-11-13 19:22:28'),
(30, 4, 90, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 18:17:33', '2023-11-13 19:22:25', '2023-11-13 19:22:25'),
(31, 4, 92, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 18:17:56', '2023-11-13 19:22:21', '2023-11-13 19:22:21'),
(32, 4, 94, '0542288040', '33.6036327', '7.0275209', 'pending', NULL, '2023-11-13 18:22:29', '2023-11-13 19:22:17', '2023-11-13 19:22:17'),
(33, 4, 96, '0542288040', '33.6036032', '7.0275419', 'pending', NULL, '2023-11-13 18:33:54', '2023-11-13 19:22:12', '2023-11-13 19:22:12'),
(34, 4, 98, '0542288040', '33.6035891', '7.0275486', 'pending', NULL, '2023-11-13 18:34:17', '2023-11-13 19:22:03', '2023-11-13 19:22:03'),
(35, 4, 100, '0542288040', '33.6035887', '7.0275486', 'pending', NULL, '2023-11-13 18:34:31', '2023-11-13 19:21:57', '2023-11-13 19:21:57'),
(36, 4, 102, '0542288040', '33.603585', '7.0275518', 'pending', NULL, '2023-11-13 18:34:47', '2023-11-13 19:21:49', '2023-11-13 19:21:49'),
(37, 4, 104, '0542288040', '33.6035792', '7.0275457', 'pending', NULL, '2023-11-13 18:35:07', '2023-11-13 19:21:45', '2023-11-13 19:21:45'),
(38, 4, 106, '0542288040', '33.6035816', '7.0275477', 'pending', NULL, '2023-11-13 18:36:32', '2023-11-13 19:21:41', '2023-11-13 19:21:41'),
(39, 4, 108, '0542288040', '33.6035818', '7.0275482', 'pending', NULL, '2023-11-13 18:38:32', '2023-11-13 19:21:37', '2023-11-13 19:21:37'),
(40, 4, 110, '0542288040', '33.6035816', '7.0275483', 'pending', NULL, '2023-11-13 18:39:17', '2023-11-13 19:21:32', '2023-11-13 19:21:32'),
(41, 4, 112, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 18:40:44', '2023-11-13 19:21:29', '2023-11-13 19:21:29'),
(42, 4, 114, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 18:41:30', '2023-11-13 19:21:25', '2023-11-13 19:21:25'),
(43, 4, 116, '0542288040', '33.6035865', '7.0275447', 'pending', NULL, '2023-11-13 18:45:26', '2023-11-13 19:21:20', '2023-11-13 19:21:20'),
(44, 4, 118, '0542288040', '33.6035859', '7.0275415', 'pending', NULL, '2023-11-13 18:49:20', '2023-11-13 19:21:16', '2023-11-13 19:21:16'),
(45, 4, 120, '0542288040', '33.6035885', '7.0275403', 'pending', NULL, '2023-11-13 18:49:38', '2023-11-13 19:21:11', '2023-11-13 19:21:11'),
(46, 4, 122, '0542288040', '33.6035886', '7.0275401', 'pending', NULL, '2023-11-13 18:50:15', '2023-11-13 19:21:06', '2023-11-13 19:21:06'),
(47, 4, 124, '0542288040', '33.6035884', '7.02754', 'pending', NULL, '2023-11-13 18:52:12', '2023-11-13 19:21:01', '2023-11-13 19:21:01'),
(48, 4, 126, '0542288040', '33.6035867', '7.0275395', 'pending', NULL, '2023-11-13 18:58:10', '2023-11-13 19:20:56', '2023-11-13 19:20:56'),
(49, 4, 128, '0542288040', '33.6035867', '7.0275395', 'pending', NULL, '2023-11-13 18:58:35', '2023-11-13 19:20:52', '2023-11-13 19:20:52'),
(50, 4, 130, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 18:59:11', '2023-11-13 19:20:47', '2023-11-13 19:20:47'),
(51, 4, 132, '0542288040', '33.35608', '6.86319', 'pending', NULL, '2023-11-13 19:01:08', '2023-11-13 19:20:42', '2023-11-13 19:20:42'),
(52, 4, 134, '0542288040', '33.6035707', '7.027409', 'pending', NULL, '2023-11-13 19:15:12', '2023-11-13 19:20:30', '2023-11-13 19:20:30'),
(53, 4, 136, '0542288040', '33.6035299', '7.0275139', 'pending', NULL, '2023-11-13 19:18:37', '2023-11-13 19:20:20', '2023-11-13 19:20:20'),
(54, 4, 138, '0542288040', '33.60353', '7.0275134', 'canceled', NULL, '2023-11-13 19:18:56', '2023-11-13 19:20:07', NULL),
(55, 4, 140, '0542288040', '33.6035536', '7.0275203', 'pending', NULL, '2023-11-13 19:25:12', '2023-11-13 19:25:12', NULL),
(56, 4, 142, '0542288040', '33.6035629', '7.0274152', 'pending', NULL, '2023-11-13 19:36:53', '2023-11-13 19:36:53', NULL),
(57, 14, 145, '0696365741', '33.6035023', '7.0274661', 'pending', NULL, '2023-11-13 19:52:39', '2023-11-13 19:52:39', NULL),
(58, 15, 148, '0666666666', '35.723706525344674', '4.518156491224961', 'pending', NULL, '2023-11-14 16:29:21', '2023-11-14 16:29:21', NULL),
(59, 4, 150, '0542288040', '33.3461542', '6.8595069', 'canceled', NULL, '2023-11-15 10:23:30', '2023-11-15 10:35:16', NULL),
(60, 4, 151, '0542288040', '33.3461546', '6.8595101', 'accepted', NULL, '2023-11-15 10:34:14', '2023-11-15 10:35:04', NULL),
(61, 9, 153, '0675187880', '6.857719766653316', '33.36245633943475', 'pending', NULL, '2023-11-15 14:49:25', '2023-11-15 14:49:25', NULL),
(62, 9, 155, '0667295778', '6.8577266', '33.3624259', 'pending', NULL, '2023-11-16 11:13:50', '2023-11-16 11:13:50', NULL),
(63, 9, 157, '0667295778', '6.85771145787641', '33.36243937205741', 'pending', NULL, '2023-11-16 11:30:10', '2023-11-16 11:30:10', NULL),
(64, 9, 159, '0667295778', '6.857716189160095', '33.362439424200765', 'pending', NULL, '2023-11-16 11:33:42', '2023-11-16 11:33:42', NULL),
(65, 9, 161, '0667295778', '6.857710526873615', '33.3624462905486', 'pending', NULL, '2023-11-16 11:38:21', '2023-11-16 11:38:21', NULL),
(66, 9, 163, '0667295778', '6.8577167881247725', '33.362439194953744', 'pending', NULL, '2023-11-16 11:47:58', '2023-11-16 11:47:58', NULL),
(67, 9, 165, '0667295778', '6.857707923463567', '33.362433388094985', 'pending', NULL, '2023-11-16 11:51:18', '2023-11-16 11:51:18', NULL),
(68, 9, 167, '0667295778', '6.8577268', '33.3624257', 'pending', NULL, '2023-11-16 11:52:59', '2023-11-16 11:52:59', NULL),
(69, 9, 169, '0667295778', '6.8577142047036554', '33.36243290678592', 'pending', NULL, '2023-11-16 12:01:27', '2023-11-16 12:01:27', NULL),
(70, 9, 171, '0667295778', '6.8577254953918', '33.36243555790669', 'pending', NULL, '2023-11-16 12:10:58', '2023-11-16 12:10:58', NULL),
(71, 9, 173, '0667295778', '6.857722284503165', '33.36242325885519', 'pending', NULL, '2023-11-16 14:17:08', '2023-11-16 14:17:08', NULL),
(72, 9, 175, '0667295778', '6.860356378114956', '33.37534892520055', 'pending', NULL, '2023-11-16 14:45:11', '2023-11-16 14:45:11', NULL),
(73, 9, 177, '0667295778', '6.857695626772182', '33.362302935292895', 'pending', NULL, '2023-11-16 15:08:29', '2023-11-16 15:08:29', NULL),
(74, 9, 179, '0667295778', '6.851634322257638', '33.367557015645374', 'pending', NULL, '2023-11-16 16:05:09', '2023-11-16 16:05:09', NULL),
(75, 9, 181, '0667295778', '6.8516924734825935', '33.367472318296265', 'pending', NULL, '2023-11-16 16:08:14', '2023-11-16 16:08:14', NULL),
(76, 9, 183, '0667295778', '6.851429986513393', '33.3672491727076', 'pending', NULL, '2023-11-16 16:11:39', '2023-11-16 16:11:39', NULL),
(77, 9, 185, '0667295778', '6.863274621523159', '33.3727254361262', 'pending', NULL, '2023-11-16 16:12:53', '2023-11-16 16:12:53', NULL),
(78, 9, 187, '0667295778', '6.852030801332729', '33.36710580746415', 'pending', NULL, '2023-11-16 16:13:37', '2023-11-16 16:13:37', NULL),
(79, 9, 189, '0667295778', '6.8518150891917395', '33.36741813309991', 'pending', NULL, '2023-11-16 16:15:13', '2023-11-16 16:15:13', NULL),
(80, 9, 191, '0667295778', '6.865162896669643', '33.37410886749448', 'pending', NULL, '2023-11-16 16:18:21', '2023-11-16 16:18:21', NULL),
(81, 9, 193, '0667295778', '6.851344155824917', '33.365743825868776', 'pending', NULL, '2023-11-16 16:21:57', '2023-11-16 16:21:57', NULL),
(82, 4, 195, '0542288040', '33.3462119', '6.8594177', 'pending', NULL, '2023-11-19 11:33:46', '2023-11-19 11:33:46', NULL),
(83, 4, 197, '0542288040', '33.6017109', '7.0278343', 'pending', NULL, '2023-11-19 19:58:13', '2023-11-19 19:58:13', NULL),
(84, 4, 199, '0542288040', '33.6036431', '7.0274762', 'pending', NULL, '2023-11-19 20:02:44', '2023-11-19 20:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'App\\Models\\User', 1, 'QjLEvzAq', 'b6d8bb97ac9a09f232a0e7390fa5c3add2a2d03289fb2ddcf61342c152d7e154', '[\"*\"]', NULL, '2023-10-21 12:38:32', '2023-10-21 12:38:32', NULL),
(2, 'App\\Models\\User', 2, 'ZPrP1GEN', 'd06bbd4f275b867d243c1e6ba09493569aefba77873a0d4772e3f0090c49025a', '[\"*\"]', '2023-10-21 13:37:02', '2023-10-21 13:20:25', '2023-10-21 13:37:02', NULL),
(3, 'App\\Models\\User', 3, 'BfvH4O2M', '65b4e5f1aa60420c4df5ffc8dd9de98d3c2926d2f2f693a33ec8f31abbb1cdd8', '[\"*\"]', '2023-10-21 14:51:09', '2023-10-21 13:37:51', '2023-10-21 14:51:09', NULL),
(4, 'App\\Models\\User', 1, '1wZE1Iuy', '8f9404ee1439665ac016ff3a5c6053baef72c857d54828849f1266b9c00b4260', '[\"*\"]', '2023-10-21 14:45:11', '2023-10-21 14:42:27', '2023-10-21 14:45:11', NULL),
(5, 'App\\Models\\User', 4, 'yWavKROW', '0c7c3a466389dd3f288f40af3fa4c572cec5fe0c0ce09b2fa6d25b9ea6ef77f7', '[\"*\"]', '2023-10-21 15:11:00', '2023-10-21 14:51:28', '2023-10-21 15:11:00', NULL),
(6, 'App\\Models\\User', 4, 'nBjTkI4x', 'dfcffa071adc729f027c89d9aa9ece4059beeb36582c65207b6c11932ea58f52', '[\"*\"]', '2023-10-22 07:22:55', '2023-10-22 07:22:16', '2023-10-22 07:22:55', NULL),
(7, 'App\\Models\\User', 5, 'U8uj5rug', '8493c9c2e0f996b7162a2db4ef70b67d8c7c0b5be8556f9251df8d4d352ded7d', '[\"*\"]', '2023-10-22 10:23:45', '2023-10-22 09:45:50', '2023-10-22 10:23:45', NULL),
(8, 'App\\Models\\User', 4, 'ZjV5usTU', 'aabb55424183ca7411f5c08c646df68fbd8477dc2822689d3124b58d25ff8f99', '[\"*\"]', '2023-10-22 11:32:34', '2023-10-22 10:24:11', '2023-10-22 11:32:34', NULL),
(9, 'App\\Models\\User', 4, 'rovQsHrL', '4279a231ec129aed1f6246802d50194e58cc6d0c3bfe964a60ceaf46e8e3bbbd', '[\"*\"]', '2023-10-22 18:24:05', '2023-10-22 18:22:50', '2023-10-22 18:24:05', NULL),
(10, 'App\\Models\\User', 2, 'x7utRXFl', '73d517d2cae88e07c08f11d11092b0915119de579a239df683b5cc5b611b0af2', '[\"*\"]', '2023-10-24 12:53:18', '2023-10-22 18:24:41', '2023-10-24 12:53:18', NULL),
(11, 'App\\Models\\User', 4, 'rwfcdSOx', 'e1e34396e9cb14ed68fc0e3939db0c99bbb80a38f4d1c3f0e3551d35fe21a2fc', '[\"*\"]', '2023-10-24 17:29:12', '2023-10-24 17:12:34', '2023-10-24 17:29:12', NULL),
(12, 'App\\Models\\User', 4, '21dLptF9', '9abbe2a4f024874b1d90da427deaa1add8ec586ae2b0088727be278dd5f1f95f', '[\"*\"]', '2023-10-24 17:38:57', '2023-10-24 17:35:58', '2023-10-24 17:38:57', NULL),
(13, 'App\\Models\\User', 3, 'aYMekZHg', '0cea7ae42517e94008396d0b31ea791db42bd6678df6445521c2e511bdc1ed03', '[\"*\"]', '2023-10-24 17:39:24', '2023-10-24 17:39:21', '2023-10-24 17:39:24', NULL),
(14, 'App\\Models\\User', 5, 'A8UvVmwW', 'cb05e094f0281fc05bf827b9149c7c37333e81609f3544145d9601330e9a480c', '[\"*\"]', '2023-10-24 17:39:46', '2023-10-24 17:39:44', '2023-10-24 17:39:46', NULL),
(15, 'App\\Models\\User', 2, 'gm4XBZdv', '493bdf22b8498298f78e3fb1253772a129e57269850c8e707bac8119c0a92632', '[\"*\"]', '2023-10-24 18:05:37', '2023-10-24 17:40:09', '2023-10-24 18:05:37', NULL),
(16, 'App\\Models\\User', 4, 'u09TEWxK', '8fafcf65ad3a7d86af4b3d3e42f0f002e6828002c1cff3824893fd72d0162ffb', '[\"*\"]', '2023-10-25 08:16:21', '2023-10-24 18:21:33', '2023-10-25 08:16:21', NULL),
(17, 'App\\Models\\User', 4, '18gN0oDy', '71029d36f2d6b7de5f52dd463ccc10552b841f50a021df7a39c4631dc6454b7c', '[\"*\"]', '2023-10-25 21:51:08', '2023-10-25 10:45:05', '2023-10-25 21:51:08', NULL),
(18, 'App\\Models\\User', 4, 'Q876o8wO', '92598807ce08394ed248ad3fdb7876a3f6f55f651604bfa386884e32b5bbbfc9', '[\"*\"]', '2023-10-27 09:18:51', '2023-10-26 08:00:42', '2023-10-27 09:18:51', NULL),
(19, 'App\\Models\\User', 6, 'YnOvCF4r', 'ab9dc11ceeb2f4eda0fb728b7a0d50fb2f4e327e37b256024dcea868bdea026c', '[\"*\"]', '2023-10-27 09:06:10', '2023-10-27 09:04:44', '2023-10-27 09:06:10', NULL),
(20, 'App\\Models\\User', 4, 'UwZoA7id', '618d1ae89caf99bb1a2b3393ac2ce25bdaf0c9c07341eaeacfb000f05b7af9d5', '[\"*\"]', '2023-10-28 12:37:35', '2023-10-27 09:22:44', '2023-10-28 12:37:35', NULL),
(21, 'App\\Models\\User', 7, '4YvsfysN', '32ffc2b65eda3d733a22a0ae4c33a248ab9a85732a2cedd08f9400065b31e465', '[\"*\"]', '2023-10-27 19:41:15', '2023-10-27 19:38:32', '2023-10-27 19:41:15', NULL),
(22, 'App\\Models\\User', 4, 'BCr5Zzoy', '832522827cbe1b578b2a780b3ed466ba155911afdede653622c98b7d4ccc865f', '[\"*\"]', '2023-10-28 21:09:43', '2023-10-28 19:16:08', '2023-10-28 21:09:43', NULL),
(23, 'App\\Models\\User', 3, 'FruyZV3Y', 'b767e26c5a6cc917cd1e35b4b9a8677c1cf32f597d4f39c70c22f438f886aae1', '[\"*\"]', '2023-10-29 12:53:16', '2023-10-28 21:19:51', '2023-10-29 12:53:16', NULL),
(24, 'App\\Models\\User', 4, 'TLR4kzlY', '297c2e0e6ba14763533da7f7060dc8a7deaea5675c8cba0e0ea091a40c5e9f10', '[\"*\"]', '2023-10-29 16:31:15', '2023-10-29 16:28:35', '2023-10-29 16:31:15', NULL),
(25, 'App\\Models\\User', 2, 'xSVOCGzd', 'f3cf19a69f8bdc4464c83d60e6329b84f3f12576e3dcfb4db1d448fc2ec510ed', '[\"*\"]', '2023-10-29 16:50:15', '2023-10-29 16:48:34', '2023-10-29 16:50:15', NULL),
(26, 'App\\Models\\User', 4, '701UEMws', 'a67019889d4272c2279ffaec5c87bd625bdb20c807d34d60840d0f7a0ed5cc8d', '[\"*\"]', '2023-10-29 17:39:19', '2023-10-29 17:39:14', '2023-10-29 17:39:19', NULL),
(27, 'App\\Models\\User', 4, 'JtSSNreX', 'ff6f019210d17b995d09ebbc1a44e1c55e81eb2c0dfe3f6e20fb6ec15b0e82b7', '[\"*\"]', '2023-10-29 17:40:57', '2023-10-29 17:40:32', '2023-10-29 17:40:57', NULL),
(28, 'App\\Models\\User', 3, 'AWLixT3d', '2627d39ae0788145b1817dfd84683cbeb68c7d98ca8a851d90c8822fb258002e', '[\"*\"]', '2023-10-29 17:42:47', '2023-10-29 17:42:34', '2023-10-29 17:42:47', NULL),
(29, 'App\\Models\\User', 4, 'F5QReJ0w', '9be10e0457693042b6d1011351a7ca9ced3abe947bc7271986ac5be63e4860c9', '[\"*\"]', '2023-10-29 17:53:23', '2023-10-29 17:53:20', '2023-10-29 17:53:23', NULL),
(30, 'App\\Models\\User', 2, 'oBLYIISt', '30d778a9f8a7d19e0a956e675747eda3792abc57243ffb007ab78534c9008365', '[\"*\"]', '2023-10-29 18:08:22', '2023-10-29 18:08:16', '2023-10-29 18:08:22', NULL),
(31, 'App\\Models\\User', 5, 'PLyHGJbr', '17ae2c902af0503cdfd4222f2270b0ed98d0befa97b183030fb5470d2e22947f', '[\"*\"]', '2023-10-29 18:13:39', '2023-10-29 18:13:35', '2023-10-29 18:13:39', NULL),
(32, 'App\\Models\\User', 4, 'XF53N8DZ', '80feaef84cbec1925c65081bd725f0161146305fd985e9c2cc45fac312539dac', '[\"*\"]', '2023-10-29 18:20:43', '2023-10-29 18:20:39', '2023-10-29 18:20:43', NULL),
(33, 'App\\Models\\User', 4, 'zv7ADrq3', 'cafffec8e048fc868d180faec36303268c41645b4b9f6f411835703e44a3e21d', '[\"*\"]', '2023-10-29 18:40:28', '2023-10-29 18:40:26', '2023-10-29 18:40:28', NULL),
(34, 'App\\Models\\User', 4, 'UiBrZWzs', '76b6ab6b32d572502559ee915a9fdd0028b47cdc4cb71d6a276cf23ae7afb2c0', '[\"*\"]', '2023-10-29 18:41:11', '2023-10-29 18:41:08', '2023-10-29 18:41:11', NULL),
(35, 'App\\Models\\User', 4, 'vdckDbKC', '92ba14da6b263f8ea618f365814c5a952b9b9f33ddc928b9c549548c43a40ecd', '[\"*\"]', '2023-10-29 18:46:05', '2023-10-29 18:46:01', '2023-10-29 18:46:05', NULL),
(36, 'App\\Models\\User', 4, 'Umhtzse7', 'f306ea239c9d236099a91ef8c055fdd32ae87a5653b1fa4b2d8a5477d7e37d45', '[\"*\"]', '2023-10-29 18:49:47', '2023-10-29 18:49:42', '2023-10-29 18:49:47', NULL),
(37, 'App\\Models\\User', 4, 'd3d96Ef8', '845875dd9d66c1220158922cbb238d9e69d11aa21f9cf9c190d404cf86e64d3f', '[\"*\"]', '2023-10-29 18:51:27', '2023-10-29 18:51:24', '2023-10-29 18:51:27', NULL),
(38, 'App\\Models\\User', 4, 'tAoo6Shl', 'e0690560f7164caa6732982c39ccf2648b28b6ba936eb9b444916fe8f5ca5d0c', '[\"*\"]', '2023-10-29 18:52:38', '2023-10-29 18:52:34', '2023-10-29 18:52:38', NULL),
(39, 'App\\Models\\User', 4, 'GqEr0tXx', 'e798a9f09afeb5e2561a3346dd9ed434a30e9fc13da66c4a60e722fb7db1e2a5', '[\"*\"]', '2023-10-29 19:11:55', '2023-10-29 19:11:50', '2023-10-29 19:11:55', NULL),
(40, 'App\\Models\\User', 4, 'JXqawVx6', '9f06311531eef8c94b1112500e3b3518059cadb321f83516314ff3a65c0d59fe', '[\"*\"]', '2023-10-29 19:52:44', '2023-10-29 19:52:38', '2023-10-29 19:52:44', NULL),
(41, 'App\\Models\\User', 3, 'xJ4bFYKe', 'a866e4ae6bec5965d5b228f6f0b4c56bcf9c9c5c310171346dc24005c297e4ee', '[\"*\"]', '2023-10-29 20:34:24', '2023-10-29 20:34:19', '2023-10-29 20:34:24', NULL),
(42, 'App\\Models\\User', 4, 'fNqdEuVp', '4e40761c4c6433da2997c5649c331c6534992e2023e5bedc7864a57378ec9e70', '[\"*\"]', '2023-10-30 10:52:49', '2023-10-29 20:50:25', '2023-10-30 10:52:49', NULL),
(43, 'App\\Models\\User', 8, 'Wt0qj5bU', 'd3fb97e9ae55e50bf3c6753dca23fa77fd73239235b4529062391cc4f395c117', '[\"*\"]', '2023-10-30 20:59:17', '2023-10-30 16:53:01', '2023-10-30 20:59:17', NULL),
(44, 'App\\Models\\User', 4, 'lQg7aMix', '30aa1b2830d9d8c8e79b4db4c039a17e0160361e9a16293231d65b597af36fb9', '[\"*\"]', '2023-10-31 17:13:55', '2023-10-31 11:31:34', '2023-10-31 17:13:55', NULL),
(45, 'App\\Models\\User', 4, 'WOh2OUvR', 'ac01ef108736d518385dae36e3547c579a8f525726d86543fc5c58e17a0c1e36', '[\"*\"]', '2023-10-31 18:54:07', '2023-10-31 18:00:50', '2023-10-31 18:54:07', NULL),
(46, 'App\\Models\\User', 4, 'iqkjUWpk', '3468ca342aadff78dabcccb0e186218719334705d7a170a59249250553b9dd4b', '[\"*\"]', '2023-10-31 20:03:42', '2023-10-31 19:31:14', '2023-10-31 20:03:42', NULL),
(47, 'App\\Models\\User', 3, 'ji9v9JAA', 'f11f6ef1d5bf3e3f84023c007a0a8e52eeaf956ae61bd1f25cf8f4c6fcaf9c6a', '[\"*\"]', '2023-11-01 08:28:33', '2023-10-31 20:04:28', '2023-11-01 08:28:33', NULL),
(48, 'App\\Models\\User', 4, 'O1IFBRjs', 'dd49d8a2fed12c25cf3884b0e2d5c9fbf2a231cf9b52a56ec64618a5db044be2', '[\"*\"]', '2023-11-01 08:28:53', '2023-11-01 08:28:52', '2023-11-01 08:28:53', NULL),
(49, 'App\\Models\\User', 4, 'vM0pOTgn', '587b45471839543b04a372c3df9dfce3324e20ac98ef24a3f61fa1710afef0ab', '[\"*\"]', '2023-11-01 08:46:44', '2023-11-01 08:46:39', '2023-11-01 08:46:44', NULL),
(50, 'App\\Models\\User', 4, 'OwzX2E4q', '7b8452349f9bf6b732e524e5756648cc5c889c99eb5d343ebe3c793c9727dd78', '[\"*\"]', '2023-11-01 08:57:29', '2023-11-01 08:47:20', '2023-11-01 08:57:29', NULL),
(51, 'App\\Models\\User', 4, 'M43E2FSn', 'baa0c34b37815930ab7a7d2085388c42dbc4e2e08692968dd2bc5169c0301c3d', '[\"*\"]', '2023-11-01 09:01:31', '2023-11-01 09:01:27', '2023-11-01 09:01:31', NULL),
(52, 'App\\Models\\User', 4, 'H7VJrHzU', '97c8960d27dad71a026e4b0b7a514fd093de7c3ef7345a0a6a3ac071756a0c9b', '[\"*\"]', '2023-11-01 09:13:42', '2023-11-01 09:13:39', '2023-11-01 09:13:42', NULL),
(53, 'App\\Models\\User', 4, 'Ckcdd2vY', '463324924a6256f7c3912ec8b784d0dccc6093012fb7494efd41688757f40b19', '[\"*\"]', '2023-11-01 09:22:10', '2023-11-01 09:22:08', '2023-11-01 09:22:10', NULL),
(54, 'App\\Models\\User', 4, 'wJwTFYnl', '16331c2ec0782ac56e7817585a32af2f0dc588856cf9328e54bf141394a0f2bf', '[\"*\"]', '2023-11-01 09:26:07', '2023-11-01 09:26:03', '2023-11-01 09:26:07', NULL),
(55, 'App\\Models\\User', 2, '6hpFdJQZ', 'bdb14ea89c520791b9817344e9250ca91051293125073682d58301988b4871ec', '[\"*\"]', '2023-11-01 09:27:10', '2023-11-01 09:27:05', '2023-11-01 09:27:10', NULL),
(56, 'App\\Models\\User', 4, 'UnftLSZo', '9528a45f3571849240287443fe4fc95dedd88ec648570177d99ff51f6e6299aa', '[\"*\"]', '2023-11-01 09:31:04', '2023-11-01 09:30:59', '2023-11-01 09:31:04', NULL),
(57, 'App\\Models\\User', 4, 'VPtZQSHe', '2b569df1bad045f932196fdc855310c200d98bbc637911b18937faa521dbe3da', '[\"*\"]', '2023-11-01 09:31:28', '2023-11-01 09:31:25', '2023-11-01 09:31:28', NULL),
(58, 'App\\Models\\User', 4, 'obpKPpRt', '70a8eb36a359ebefde22d521368a6007ab2d3d66c7edea262f2ca517e8bcbfca', '[\"*\"]', '2023-11-01 09:36:48', '2023-11-01 09:36:45', '2023-11-01 09:36:48', NULL),
(59, 'App\\Models\\User', 4, 'nuc5dY3w', 'dc9a59672c61f2ea70c4f42a05ac1f8fc6b2428d863c56cfd1aa51429fb77765', '[\"*\"]', '2023-11-01 09:38:40', '2023-11-01 09:37:10', '2023-11-01 09:38:40', NULL),
(60, 'App\\Models\\User', 4, 'LTbOmBIN', 'aa8a245d7fe3475d755dde709a13bc1e9cb8ecbf13934d647a784fac17a95ab5', '[\"*\"]', '2023-11-01 09:59:59', '2023-11-01 09:44:46', '2023-11-01 09:59:59', NULL),
(61, 'App\\Models\\User', 4, '7xbyMAOM', 'e51082a82e9651c9f1b7a9e3d7f6d6290a43fbdfdba7912639361b9fcaa2464a', '[\"*\"]', '2023-11-01 10:00:50', '2023-11-01 10:00:48', '2023-11-01 10:00:50', NULL),
(62, 'App\\Models\\User', 4, 'dJrKI4f0', 'ba2a43b2103e75d7d289be70e5685e62edbca8fe36f942c2c82b14c39114a884', '[\"*\"]', '2023-11-01 10:14:31', '2023-11-01 10:14:28', '2023-11-01 10:14:31', NULL),
(63, 'App\\Models\\User', 4, 'gOZrJwjB', '148de13f5667f2deed6e5f9a8752e3a9302873205b59bf844889bad749ce9230', '[\"*\"]', '2023-11-01 10:44:10', '2023-11-01 10:43:59', '2023-11-01 10:44:10', NULL),
(64, 'App\\Models\\User', 5, 'sdCGhdmy', 'ffd6b529a837736c9f84d0d79609c7f26692b2cc911519f932bc10210d2528b1', '[\"*\"]', '2023-11-01 11:00:35', '2023-11-01 11:00:25', '2023-11-01 11:00:35', NULL),
(65, 'App\\Models\\User', 9, 'czFK6F57', '8443884fb450eaab9b2e3b6b733bfc07465398d439d730692b1eda0bac398d91', '[\"*\"]', '2023-11-01 16:14:30', '2023-11-01 11:33:24', '2023-11-01 16:14:30', NULL),
(66, 'App\\Models\\User', 9, 'Jmd4wD51', '7c6ea06e1438011287793dcf1bf6da0700b746b8664a5b8b7162c376d61dd1c3', '[\"*\"]', NULL, '2023-11-01 11:47:01', '2023-11-01 11:47:01', NULL),
(67, 'App\\Models\\User', 9, 'u5vvBP91', 'd9bcd4d7f42e87c1915b53dbd3e61120f01b5af00c16ad3c7068c46271bc2924', '[\"*\"]', NULL, '2023-11-01 11:48:17', '2023-11-01 11:48:17', NULL),
(68, 'App\\Models\\User', 9, 'RIhdZSCP', 'ed039b9db90f88002b4618a6791e5abb8e2b4bce13a9d51f42e7496da6fd7ac7', '[\"*\"]', NULL, '2023-11-01 11:48:17', '2023-11-01 11:48:17', NULL),
(69, 'App\\Models\\User', 9, 'Gt6o1M7T', 'd79a6975ac6546378b883a0429b44262c32049b3315bf0fe4d477271b713dd2f', '[\"*\"]', NULL, '2023-11-01 11:48:17', '2023-11-01 11:48:17', NULL),
(70, 'App\\Models\\User', 9, 'iG9BSDxE', '866298520b8fade3299c0aa438c0a4817df02f31bf45738d41bc58064e3c6c2c', '[\"*\"]', NULL, '2023-11-01 11:48:17', '2023-11-01 11:48:17', NULL),
(71, 'App\\Models\\User', 9, 'zuOv63BE', '2a101d225343cfee7c689c0a26ff4ec78f196e2299521159087fc2cd3783fe8f', '[\"*\"]', NULL, '2023-11-01 11:48:17', '2023-11-01 11:48:17', NULL),
(72, 'App\\Models\\User', 9, 'mt1escN1', 'a5b8537e37a368766483033ef35b792edb268d3b09d83a413bce690dfdcff2e4', '[\"*\"]', NULL, '2023-11-01 11:49:19', '2023-11-01 11:49:19', NULL),
(73, 'App\\Models\\User', 9, 'TVB2WfGp', 'a124f79cd2914206a9129c793cefb1855d36e29ece2f5bac8f0998a51b2251ce', '[\"*\"]', NULL, '2023-11-01 11:49:19', '2023-11-01 11:49:19', NULL),
(74, 'App\\Models\\User', 9, 'AstYqaih', 'eaee9d7d545e45558d38bc1dc4e1899deb5a95915675a03a5becc94f08f476a9', '[\"*\"]', NULL, '2023-11-01 11:49:19', '2023-11-01 11:49:19', NULL),
(75, 'App\\Models\\User', 9, 'baNZDikM', '5916498f899eb6d6fb1737d528d6af8166729405ffe085f228e11e51b9ec9c41', '[\"*\"]', NULL, '2023-11-01 11:49:19', '2023-11-01 11:49:19', NULL),
(76, 'App\\Models\\User', 9, 'RCnaPRPQ', 'a7268a0df9398961ebd7ff66877f147467ab78592bd77f8a91970ddfec713994', '[\"*\"]', NULL, '2023-11-01 11:49:19', '2023-11-01 11:49:19', NULL),
(77, 'App\\Models\\User', 9, 'kHaQqmB5', '0d2c483316009a57ed59da675fafd615967db55bfdeca209f031be77c069ea8e', '[\"*\"]', '2023-11-01 11:50:39', '2023-11-01 11:50:37', '2023-11-01 11:50:39', NULL),
(78, 'App\\Models\\User', 9, '3nfFlhzA', '620e07faaacd38687dd2017b2a1c0c60941442a5061bb69a9bae1f00a8c48622', '[\"*\"]', '2023-11-01 11:50:38', '2023-11-01 11:50:37', '2023-11-01 11:50:38', NULL),
(79, 'App\\Models\\User', 9, 'RlLIKTJn', '956e1e6b675d8aa4b3dee3896fa258c09eeb0e5b19a3277b1361899ba9617657', '[\"*\"]', '2023-11-01 11:50:38', '2023-11-01 11:50:37', '2023-11-01 11:50:38', NULL),
(80, 'App\\Models\\User', 9, 'Xgu0ovVY', '74f182ccd5068c2f0131d2c6e15eb99491689f94442d40ea3229d975e29ffab2', '[\"*\"]', '2023-11-01 11:50:38', '2023-11-01 11:50:37', '2023-11-01 11:50:38', NULL),
(81, 'App\\Models\\User', 9, 'jhmHuad5', '7661d70fc5730599fc35eda39525cb4a8595e4ecccaffb802bad141eabd5187c', '[\"*\"]', '2023-11-01 11:50:38', '2023-11-01 11:50:37', '2023-11-01 11:50:38', NULL),
(82, 'App\\Models\\User', 9, 'uTiENnmf', '709682c967a1f59eddffa68cf3a205bd213e6cdbc58b884edd7bfa1224adc6c4', '[\"*\"]', NULL, '2023-11-01 11:51:23', '2023-11-01 11:51:23', NULL),
(83, 'App\\Models\\User', 9, 'd1VbryFI', 'a2f8a8ccbf96680f8b342b452180c299bdcd83d5513f287ab93b4629cca9df28', '[\"*\"]', NULL, '2023-11-01 12:02:29', '2023-11-01 12:02:29', NULL),
(84, 'App\\Models\\User', 9, 'jvaXdNA7', '08ef40a6cfa2c43692676ffedbd1b8d824997559abfc928300804eb6373897ad', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(85, 'App\\Models\\User', 9, 'T4H01MbK', 'd769019edbb793ddf54ce20abba3099628be918bc5cd11928137eae0c816bcc1', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(86, 'App\\Models\\User', 9, 'BaP95tw5', '9d10510c470dadae9c9abb2fb81571aeb13b0c6d3f5b88514835a3cbb5580f61', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(87, 'App\\Models\\User', 9, 'GnDebASf', '334c06060328729b9f9b986864fdf5d521ade36e0b7cbdb09d34d6cc0399dc42', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(88, 'App\\Models\\User', 9, 'vFFpXpNi', '4fbeb97611f37c7796a59eec0e34e393a09c19089e8263b15814240b843146e7', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(89, 'App\\Models\\User', 9, 'QGbWxLsI', 'a9c935eca422a00c232ff4f324200002a3d20d14e43b329e47e511b97d66dbfc', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(90, 'App\\Models\\User', 9, 'qotQUtKt', 'abaf1a740bab21b5d75d60d65587df951fa12f445f84a44bf4f727dfbccfb844', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(91, 'App\\Models\\User', 9, 'O175n5cx', 'db6a086b47532494c2737e265d94638c7d520ad241916ab8808c18b58b85a941', '[\"*\"]', NULL, '2023-11-01 12:10:35', '2023-11-01 12:10:35', NULL),
(92, 'App\\Models\\User', 9, 'mP2nzD3B', 'c9d30997965138ff121f8680a6146821d256c846b51ad3d7648c08464e54eef5', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(93, 'App\\Models\\User', 9, 'SdH4KDXV', '489b1f49d12454dbac573adf219cad35497d28d9f4a9e7fc3b9344d398d8f86c', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(94, 'App\\Models\\User', 9, 'ItmKXwyO', '0a4f73a8904d34de273eed7ba37ade4c11e37ce4404e967dd3cc2865c72bacde', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(95, 'App\\Models\\User', 9, 'GDOZrTuE', 'ad3311a90423ac4851e0b8f077e340d965f1a7297f8282164a6b0e831a3ff93b', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(96, 'App\\Models\\User', 9, '88s10Lxl', '513f55ec105f00192c080de2924f082a340b9fcc57a90294eac321a33e0917c3', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(97, 'App\\Models\\User', 9, '3vF52xyF', 'bbb8b0fc4a081503b5763629f159a6991c51617bdc887acb5e9ee1c9439bb662', '[\"*\"]', NULL, '2023-11-01 12:10:36', '2023-11-01 12:10:36', NULL),
(98, 'App\\Models\\User', 9, 'f6qe464G', '39530059eeced54b6ca01538fb9a3b0c49861fdb2bde6b80898e409d6a16308e', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(99, 'App\\Models\\User', 9, 'nC3kdRKQ', '9cd412f513a902aa29c213b07355cebd6cd7ede6bbc7f8e24132d819d756d2ce', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(100, 'App\\Models\\User', 9, 'YTr9VS8W', '4cdd0c9501e515eb47bb1b18b48eae98f17592a356d38ecdc84396cfb09a3e1e', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(101, 'App\\Models\\User', 9, 'k2tuL8Us', '97870a9d71dae6640dfa4d9235d5e53cb10cdd55b4626225e62b6c908960bab9', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(102, 'App\\Models\\User', 9, 'Ot0JPJWY', '41816e1cbdfa7a1288066e4725c6eb591c4575b62112960ee737416b61b33c4c', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(103, 'App\\Models\\User', 9, 'OUoPOe9z', '7f954694ef797536fad076d99a217199276122a40fc7e1a9116601c491e18683', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(104, 'App\\Models\\User', 9, 'HUcS8xY4', '2269e84d7767a64874f199efa55ef0f830ea4a460da81931fb2e831553b9a744', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(105, 'App\\Models\\User', 9, 'Rx22L7Dd', '898150d6b8e9b8bc0f89759ae97f567dd63c770ffd93deb50772a28731d0a425', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(106, 'App\\Models\\User', 9, 'XuAcWDeh', 'ba18e7ee87305374b16fe1dcc735704c5e76b8242265343031603283e1fdc591', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(107, 'App\\Models\\User', 9, 'CEh5XQWk', '02ea6261bc98faa776489e5d5426faf4a4cbac8311b821a8df68e0f822d54f4a', '[\"*\"]', NULL, '2023-11-01 12:10:37', '2023-11-01 12:10:37', NULL),
(108, 'App\\Models\\User', 9, 'XValMdyV', 'fa6cf9f186352e94ef8226b145247be4c6e9293c3534a612fc9ec26366b868d7', '[\"*\"]', NULL, '2023-11-01 12:10:47', '2023-11-01 12:10:47', NULL),
(109, 'App\\Models\\User', 9, 'uj8bZ94m', 'e3ca48465f6fe153f20ff1a96f3943b5616fc2494fad2487ae5ccb9bdea6e650', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(110, 'App\\Models\\User', 9, 'UB9hoorO', '78e6389e3378010fc92c203a1ce947e00dde7ce7cc93302a7d011146c9522554', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(111, 'App\\Models\\User', 9, 'gq5R4on0', '4558a9f6319e61d370c0369ee8e4b5d13bdd888cad98347cfcd8d64e3d285f21', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(112, 'App\\Models\\User', 9, 'OY3fxuhc', 'e623993808c8e2f43707691da8bb1d57e815cf5694ecd739b994068fb1db4cfe', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(113, 'App\\Models\\User', 9, 'jpeOszN3', 'b0900df8d2a7fd9abc04c0dd603051641b32b0bf3e035761d226059f3bce8123', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(114, 'App\\Models\\User', 9, 'StPFD5S5', '46c4c21e393457d6a8ffd56485cb3aaa4fc77cf9ebb51d8e227cf835c81915c7', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(115, 'App\\Models\\User', 9, 'PtFY2dLV', '867a581cfdcdc91458dbbb4961acc3e1a5e089d50230ef2a3b0696e85106ab50', '[\"*\"]', NULL, '2023-11-01 12:10:48', '2023-11-01 12:10:48', NULL),
(116, 'App\\Models\\User', 9, 'Dng3pigy', 'b6f3d6278f3a2522a17b78c6145531e058a697b71b8fc364996778cb971d466e', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(117, 'App\\Models\\User', 9, 'wWK2LVSg', 'be28b3f5212332131f9f2afc7c316400f274c19dc42fac9b9a55756f07c3bf09', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(118, 'App\\Models\\User', 9, 'H7cA0JOr', '4b30606e34467d31d0f9b1cf6a0385cada0b35e617d09272aa4dd35dde93e1aa', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(119, 'App\\Models\\User', 9, 'NY8MHuKs', '0c170a446e1b07c17e91979d851684f9cb91315706e6edaffee536440f6c532a', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(120, 'App\\Models\\User', 9, 'ta3wPT1W', 'f19c159608c53c80dc27c54654ba909d7012049d998798c4cb6e1a1415d020c4', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(121, 'App\\Models\\User', 9, '0O8Vz2Qa', '1087d2e3785f1592bd6dd05bf5871d727e1271021b416ed92904723265cc7a3e', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(122, 'App\\Models\\User', 9, 'J12uKTwr', '253fb00810083acc04cd1a8436fb5758546d948b8bf0b205cd6209d344c7fbbb', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(123, 'App\\Models\\User', 9, 'jHVpQynV', 'aa0021b56ebf0846d854f3cec1fc47c8b1a3182f042bf51045e413e5b32c5d1b', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(124, 'App\\Models\\User', 9, 'zLOGRZnW', '5f468ff10e0c76483c215b829e3e97ee31394246024a0cbf67c24790acf03e6b', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(125, 'App\\Models\\User', 9, 'XKifIJ8h', 'c43ffbc3b4dc71a36d41376cb3dc8c04fab6b3f0bc4a0631291475ded30c1adf', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(126, 'App\\Models\\User', 9, 'BmqJoBWu', '1cbe7674fc375aa4892c5f67820a830e7858d4674bbe4c4f7cec8d8ab193bea6', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(127, 'App\\Models\\User', 9, 'lA3hQWr6', '74adfc8a0d93601af2896edda8541c859daa276a45eee6a7cf94ff8ed239a093', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(128, 'App\\Models\\User', 9, 'QYkbY3m3', '8c4d284f5782ecb3cc8c0e36587e8a94133f1ae9726e55e81d02b3726d08065c', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(129, 'App\\Models\\User', 9, 'xoEiMPLS', '450c2d68ed2ead9c2dfc46ff944251100b88820a08f164b477ea75221de01451', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(130, 'App\\Models\\User', 9, 'FpLKRVXM', 'cde3e503b5d34800375cc578c08d54d48382af20138125eb7c3f08e62655f64f', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(131, 'App\\Models\\User', 9, 'dBi5rjZO', 'e53cd04705e7362f903b56082f2eef01390e84891a587227040123d25033ac30', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(132, 'App\\Models\\User', 9, 'HI8ZQeQU', '78c4802b4eb804e0d4581cff1a4316e12fc533ca3e8cf2a87e3dd0844bd87cc2', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(133, 'App\\Models\\User', 9, 'OegROmBF', '12f60eeb3cee1418fd2eaee4bca7b3a0b212dc796fef2c916194b498f4396e73', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(134, 'App\\Models\\User', 9, 'LTc0go0V', 'f9be881bd3f10eb9ae10ce55568e006862eb8629c83ad60150982152d19f3c95', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(135, 'App\\Models\\User', 9, 'h5u9k1fA', 'c80bec38323d23db419aba12562bbe84471a9f3f1a4ca3680c42106620c6a146', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(136, 'App\\Models\\User', 9, '2aQpHuao', 'cab2042423946933dffeda34d09411cc01519a80df7bbc019b74c486be92ec15', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(137, 'App\\Models\\User', 9, 'yXKt31AI', '962e85399a8f6cac0ba83f3728292d7916789923724e57cf0b3363a0b950a330', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(138, 'App\\Models\\User', 9, 'g23DVSnT', 'f0436498056e649ff64e119cc69f47119b44142de4c298c32d8be6173fce6faf', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(139, 'App\\Models\\User', 9, 'Jhid9m4r', '41744e69c1012590ec541cc38c8f0ea545cb8eeba771f547f9444566d52db484', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(140, 'App\\Models\\User', 9, 'rop9Njr3', '54f73cab5c3281735c9009d74b5ac9bc0628b3fcbeb7d68d49ef9bc144b846b8', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(141, 'App\\Models\\User', 9, 'kjTrtJzE', '2b9d857db8c9af30544fcb3e7c6ff6d9fed24d544b0f24811649f8f10e1fbab4', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(142, 'App\\Models\\User', 9, 'mXSpAHuf', 'b2d643b568c7472e3a02435a8b8f7d84ef8eac6c9edeeaf8aeb6e11cc56f61f8', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(143, 'App\\Models\\User', 9, '6x4IOIki', '1e996944ff2c9beac800b05683e93bee4eaea25fe7bc410d660994eb60d52310', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(144, 'App\\Models\\User', 9, 'uWv2lRiY', '2c3f70f567b8658b6ecfbffcca0c253af33f5e9766c7361a225d88970f83ca56', '[\"*\"]', NULL, '2023-11-01 12:10:49', '2023-11-01 12:10:49', NULL),
(145, 'App\\Models\\User', 9, 'gTxVhXIF', 'b2c357f60b00439cf2846f5949c6423ba4f432818e79d4a02536ecfa31296394', '[\"*\"]', NULL, '2023-11-01 12:10:50', '2023-11-01 12:10:50', NULL),
(146, 'App\\Models\\User', 9, 'TrKxYKyw', '34e4e052115d2bed1973d6f365c471e3782fc61941fda5fc4fa16fccefe01ae5', '[\"*\"]', NULL, '2023-11-01 12:10:50', '2023-11-01 12:10:50', NULL),
(147, 'App\\Models\\User', 9, 'BVuRYg56', 'fe8cb0a5d5f418dfce55016e46b4fdb0a46ac820de5578cac38d3700e8858870', '[\"*\"]', NULL, '2023-11-01 12:10:50', '2023-11-01 12:10:50', NULL),
(148, 'App\\Models\\User', 9, 'qFuInSup', 'e610e5acdc3318b4fe8a614f45a2ec3180659ada4e6a2a9dd41e6cb1516bf49f', '[\"*\"]', NULL, '2023-11-01 12:10:53', '2023-11-01 12:10:53', NULL),
(149, 'App\\Models\\User', 9, 'qG0CcKm9', 'e03ff48af9e190f14c01b8fafb53c727454d49540ca0f26aa0e5bace1c012995', '[\"*\"]', NULL, '2023-11-01 12:10:53', '2023-11-01 12:10:53', NULL),
(150, 'App\\Models\\User', 9, '0DrLiaL2', 'e3962a572ff901aa34f6a5db8199ee570969c327f05e8cd27204f35c26298d3b', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(151, 'App\\Models\\User', 9, 'UFRLDgv7', 'f53461bbd0b23ccbfc950319ff0442f2c096449c5870a58c5d2c29009ea3d695', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(152, 'App\\Models\\User', 9, 'CXWJ2nH2', 'c4adf01b1e4ee9ba24e939adffa6d99cb6381d13ed547a43b7e7f501b9712d5c', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(153, 'App\\Models\\User', 9, '4GhoxtKp', 'b8fdb2ba8556340def3519be2941c44fef2c0ca69770d5a0efdefe684c8cc328', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(154, 'App\\Models\\User', 9, 'wgpX3Qwp', '16a44469cf796d0e62ef8909b4a413804b7aa1e1a2170e6c27960c3dcd0bc7d5', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(155, 'App\\Models\\User', 9, 'IMtdwmXw', '12328447dba2bf52ac3963e124f1a76c41111a2f6c0b7994c99ba327200cfaa0', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(156, 'App\\Models\\User', 9, 'Vjg5QMGx', '793ecb27d195721fee466aaf65bc3c13b7419b9b9afbc519f1c1b1170b9b2967', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(157, 'App\\Models\\User', 9, 'Y3dhKIho', '1c1c45a2597e01ac9745befeaa0f03790addc9eab141352705f1bc79831fb362', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(158, 'App\\Models\\User', 9, 'xJLNqrcv', '64617f878ef8550b627f4042133537588d4263272cfda1721e24eb183e0734f1', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(159, 'App\\Models\\User', 9, 'b7QQy913', '683ac7356f9805f73682754f6c4bc32ac26ebab51955e097c3aa1b274f0111d2', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(160, 'App\\Models\\User', 9, 'Ue6S31MN', '3980cefbc3574b87f97f54683a2712f0ae4c654c8414bfde763620fd7a40b2ab', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(161, 'App\\Models\\User', 9, 'wIOcjP8I', '129925d900c2bb1d7779622032ff8333e29ff04e3dc1331f5fe4b7027b6f9c8a', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(162, 'App\\Models\\User', 9, 'PJuQj1pA', 'a413b9a817b3a1dff12d3d24465d60ebebc0010adcfab913951f007bacc06295', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(163, 'App\\Models\\User', 9, 'mxBMBh8B', 'a80ca336bae3e107f7e82625b21c7be1816026f945a90a658490cc4c331d071e', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(164, 'App\\Models\\User', 9, 'fS5XsMDl', 'a021c7fb73e7f94e268c4b3cdd80d029fb1dbfe733b981b8ec975f505a20a473', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(165, 'App\\Models\\User', 9, '3JFCoauD', '939d46ab6977e1509bbb57c54f0d6a294f04e75e4c6959dab7a02c7378b552f7', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(166, 'App\\Models\\User', 9, '7Ww8fILk', '6107dcf8c587a84f8de369250fcbfb5b1f3b790754c7d46dde4fa6095cf01a38', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(167, 'App\\Models\\User', 9, 'jLDK19AC', '69b1f2f1e74cee6f0a6d32132afd3e90f39131a65ba9f2c7b76bcc9c38ab7275', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(168, 'App\\Models\\User', 9, '5aMgs1HJ', '26d9f5f87bc22c839f7c831b1a2f185ceb27a1510f9b0ad57be8f96799e525c0', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(169, 'App\\Models\\User', 9, 'DiZgWrHJ', 'a6fed187554842b0a911ba8c383efae583c631acd546481003f3f8cf0f9975df', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(170, 'App\\Models\\User', 9, 'EqiFV3CL', '01cff1e49a103934406bc81abe7814b34e106703ca92d6aa105c3cbfe15620c8', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(171, 'App\\Models\\User', 9, 'veUHbms3', 'a5d20f12e9ac40787448d72073906b6290dd714a36059d461c6e8f86d6a03aa2', '[\"*\"]', NULL, '2023-11-01 12:12:13', '2023-11-01 12:12:13', NULL),
(172, 'App\\Models\\User', 9, '0knHl4cW', '9a26cd00be6241c0697eaffb695141c075c01b75329d9e8a147e1a75aae3b628', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(173, 'App\\Models\\User', 9, 'SUQ8rqWs', '00c5ed34f59066fe937b5b347c08764f5538b630480c02d07ad23d4abe73598c', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(174, 'App\\Models\\User', 9, 'Ydkk0BG5', '57c22347637dc90eef40b085ceacfdb4aa03014654c1a17df86246cf9772d9e0', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(175, 'App\\Models\\User', 9, 'DjxaLQd4', 'a04a5f426ad0933840179794d1a7e1d05e92b4f32f790270c1a40e0468bfc2d0', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(176, 'App\\Models\\User', 9, 'QlGsllrP', 'ab1dd2eee2e7998b7e1ad885fdf736f3645823f8705170abbdf488359c281e7f', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(177, 'App\\Models\\User', 9, 'UZ0Mc9pN', 'b1560084e89ec7e527298f906220ca7d7fe8a8c6729a19330b7b49c3f049bbc2', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(178, 'App\\Models\\User', 9, 'p3yKvIO7', 'f20110324ad96b7653369033d84f3fe6e48ffade17389c13c7b768bc06287604', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(179, 'App\\Models\\User', 9, 'gKceoUol', 'a5bef91ff498797411d905fdb0b68db3d623795cb884ffbb809a890614da1710', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(180, 'App\\Models\\User', 9, 'uRSqMCHC', '393d7d17707303997bfc09d1ed406fc045be7e2d066133411a3ba3a6531d34c8', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(181, 'App\\Models\\User', 9, 'OZegHcT3', 'c6b2542c4690b52ba9417d3c57d47a98c2e1dc993fe7ca080ac43d90c311ef74', '[\"*\"]', NULL, '2023-11-01 12:12:14', '2023-11-01 12:12:14', NULL),
(182, 'App\\Models\\User', 9, 'sEUHZreH', 'c02b82c0d5cd095c30c09d882d45b482a6cc33a9eb1638b6a83ec62d9a2ad0f0', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(183, 'App\\Models\\User', 9, 'bfNRAJIC', '62b4f019d6005454b94f0ed69f241344be7721b475d31a2598cb92f6dc5d8b61', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(184, 'App\\Models\\User', 9, 'SxbEp3uC', '2fde63b776a600f6a63fd0c39f157ae6d12b1def6a74726df3aea4bc5ba49be9', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(185, 'App\\Models\\User', 9, 'lKrZGylf', 'f761df36712e606f44628d65ff5604298353727559190aad48ba2beedb1dc0a5', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(186, 'App\\Models\\User', 9, 'l3E2cthp', '1ec6a4b97b2ed7d7a29ab11b2b770a25c5984ea8378c2e467271e879fc055865', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(187, 'App\\Models\\User', 9, 'wz6O7MUC', 'a6e4fa15a8805e1a981f0661580e6fcfd759c7a5769fcdad06457d8668b482a7', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(188, 'App\\Models\\User', 9, '8t2slUkZ', 'e9652a5a242cb7e568a04d726624e7ce3f09e3c78ab6709277a8f89a63403a09', '[\"*\"]', NULL, '2023-11-01 12:12:15', '2023-11-01 12:12:15', NULL),
(189, 'App\\Models\\User', 9, 'vaAyFZ98', 'ad1c4c145df5de883c4b87f55d8c50dd4d9e13e9be36ed028cf2c889c4d84ea5', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(190, 'App\\Models\\User', 9, '3XRnP37E', 'c26f7a7aa768aa2743569f85d137ad492e7f7b99bd9d9c8b89fda74e5afe7128', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(191, 'App\\Models\\User', 9, 'wHmhU9cs', 'f3ea23d9f108ad4b7f2a986cbafc9428d88715891cd0e3b8b7a0c2f4566497c6', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(192, 'App\\Models\\User', 9, 'RAnZKZGh', '0495673eeea4165a34b18552784a6e5eca15e12f1bfd57cf1a16181b7266626a', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(193, 'App\\Models\\User', 9, 'dzgvhzur', '14045deb490f9f471f22dccfb85f7dd057dda0f9235aa6f1b29a58e55382b239', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(194, 'App\\Models\\User', 9, 'jVGgHxn1', '6e6d8f61f5edb5c16c1baa964944c78c183607b4478265abb1fe71bdc30d60f3', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(195, 'App\\Models\\User', 9, 'DBI9CYml', '76a68f6ef12e37d7a200da41dace1e660f60c867be553fa5a4ffce6c9813d0ed', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(196, 'App\\Models\\User', 9, 'aHfSfs2c', '72bce8ce467993b3b63e477e21d1558e039d47a431569cb9940498310da1b4db', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(197, 'App\\Models\\User', 9, 'YMjsZ8vz', '9fb2c25438a3be82e790cb5b634593d77a85580979db3539f0c09851822ab930', '[\"*\"]', NULL, '2023-11-01 12:12:16', '2023-11-01 12:12:16', NULL),
(198, 'App\\Models\\User', 9, '56RjPZpE', '048db7e6f2e454b8476abfdd17226d6c578c184d10d593c66d2475d21edec289', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(199, 'App\\Models\\User', 9, 'XqlqesLS', 'b594935e3935c867353c41e6b98a7e79bdd5b2c98bfc673f97679c433dce4581', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(200, 'App\\Models\\User', 9, 'pw7m4zOb', '84d85e637dce9b03c0a03cbee45674d5ff067d2c2c2fb6ecf2e6b6218b48553d', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(201, 'App\\Models\\User', 9, 'WyzfIvwl', 'ecfb4762a9386242d8203204981109997e7af579f7b35b2ff48597154af799b0', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(202, 'App\\Models\\User', 9, 'qjr0ttMM', '1dc3ac6a748121c3dcf753677ae4ab4b93e74f65e1412a315201fbab36daa231', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(203, 'App\\Models\\User', 9, '6nmHv85m', '045864919026bc1636937ae6719e5e5a04398d8c422b39ffa4d202d4d3dc6af9', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(204, 'App\\Models\\User', 9, 'HlazqY7G', 'e579b89788a031e75e63d8f46a6fdd7532515417b369a6ef64c049544eb69c91', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(205, 'App\\Models\\User', 9, '6VmPQKCg', '44db860f350cd663f1c4fa3cce136e1c20a1221c01fdfe34820032657e45dc54', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(206, 'App\\Models\\User', 9, 'fIdd3O85', '83f79a9488ca091de22136ac72a209d101aeebc2bdaa59cdfd24cd04c40f6dc9', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(207, 'App\\Models\\User', 9, 'sYuXZwMX', '7609cdfef96c5ead0901d5689f76c05d9cc4303da26a156ec0c37418fe96a4a4', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(208, 'App\\Models\\User', 9, 'VcHpmVqL', '54361d42f4f6983002464b5ab53a93a99bbec41d5db42b5eebe070a5842f73f8', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(209, 'App\\Models\\User', 9, 'lmSnFCUX', 'd7c5cf9c30402347199dbf4be773436040efc0c2500f360492b9d3ceb2b0d713', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(210, 'App\\Models\\User', 9, 'rRwYgRkH', '0feaedb242cc853831c158f545f3b8ac80f7a4ea9ebc90be2e788e218416df16', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(211, 'App\\Models\\User', 9, 'Wa6cJElh', '882ac26d1de0dfdcc73b3ade472fa8867b4c9d4251b24616f27c2bbb3efb9106', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(212, 'App\\Models\\User', 9, 'tnvPjtBP', '18fd0474e4e5f7c4e36457690106f7e7bc699520af31fc50c8edbcb39c26b6ed', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(213, 'App\\Models\\User', 9, '4pOYLykm', '31b0f0b5dff950ba53cae273412be9526e6fc91683317e4ae37433e2e77e9608', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(214, 'App\\Models\\User', 9, 'GVIbW9G3', '8fc23f990d76c7ecc3ce9a3c225a42f73379863778726821abdb628595c220ec', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(215, 'App\\Models\\User', 9, 'r73XJ4J9', 'ac28d5fa7267246af0f85560eca7823833f5b914f15064fb69ec0d72e43e36a4', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(216, 'App\\Models\\User', 9, 'saOC6pRR', 'ca4876d4265e6edc8122fb05523ffee19c215a75fc1829a4e8ddc51611d2d136', '[\"*\"]', NULL, '2023-11-01 12:12:18', '2023-11-01 12:12:18', NULL),
(217, 'App\\Models\\User', 9, 'o26OIPFE', 'b3bf2756c315bb793c4918c4aa1baf90fee8d53d7e29f2ff468e458db4eac1c4', '[\"*\"]', NULL, '2023-11-01 12:12:19', '2023-11-01 12:12:19', NULL),
(218, 'App\\Models\\User', 9, 'M1uQmJuA', 'd56ad9da942d4468b06790c715c653ff60c7fa70be7481f075494c50e05065d8', '[\"*\"]', NULL, '2023-11-01 12:12:19', '2023-11-01 12:12:19', NULL),
(219, 'App\\Models\\User', 9, 'R0tC2Apo', '9593096a65e2b692aa20c2f854a0224ece7b8f98fc61956118afece5c5d18949', '[\"*\"]', NULL, '2023-11-01 12:12:19', '2023-11-01 12:12:19', NULL),
(220, 'App\\Models\\User', 9, 'ecdtcANa', 'f35120716a07c7706401456e251779876c030a1d50665a66b3d02e608ab42b9d', '[\"*\"]', NULL, '2023-11-01 12:12:19', '2023-11-01 12:12:19', NULL),
(221, 'App\\Models\\User', 9, 'hGKeEa5k', '653b019260f58026b2c431878a7ff287ca2290289ab7d3731338cfccb188bdfe', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(222, 'App\\Models\\User', 9, 'Xtf6qva9', '6bf9ea964e1db23eb33b61f3d2b9ee5645aa7c8bec8ef3cc4ff0b3082ba1e3e6', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(223, 'App\\Models\\User', 9, 's0H8Ij2M', '16472e124d80daf98256584e1f76bd6f0a3b4d2693374082d0523221af349182', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(224, 'App\\Models\\User', 9, 'hp5B7lCG', '2ecfa417261adc33e33b7cab0bc7582b03d574b0837790eb4db05d49858ccd05', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(225, 'App\\Models\\User', 9, 'YxU7Ncs6', '8603d81edbfd5fd3b8266f0532d4beb7e5eec592a5f21adacca0ff24b49f60e3', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(226, 'App\\Models\\User', 9, 'YQu2ZDSV', 'e80be5581df9d8e30f20f6c2a3bd093b4469fbca65ac05d0b2c1e703f30164c9', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(227, 'App\\Models\\User', 9, 'JzbxKE49', '60408e7c5b205557cbb0d57c784bd18325305ee4a88c20ac6b31c73c12c6668a', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(228, 'App\\Models\\User', 9, 'FcQSsGHU', '1c0866c4dea1051786ab63320b37a3cf936e0ac0c0beae02f94202a46d5264c6', '[\"*\"]', NULL, '2023-11-01 12:15:38', '2023-11-01 12:15:38', NULL),
(229, 'App\\Models\\User', 9, 'DnRLIpKy', 'a47a7049e769bd74d488c843806c178b953c3e8244dfca685af2dd34b6443081', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(230, 'App\\Models\\User', 9, 'PcvsSPqr', 'd0fee0316257082f9deaab3e6eeb886585945bb13c962f26194dae6e73fcf36b', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(231, 'App\\Models\\User', 9, 'ytYsMsYp', '9461eb0c7e11ad65ca68c6e08d0e32f889a27185205cefde0cf291d88e3e0ea0', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(232, 'App\\Models\\User', 9, 'Pi4ou6ll', 'bf50fdbf99dfbbdc66a40d36d08ee0f482570f18af41831e3cbcac173b8c771e', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(233, 'App\\Models\\User', 9, 'TgolbgcU', '22d86ada280cdc4422da9bad9b177edcc047df9864b31bbf24d9f80ca217896a', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(234, 'App\\Models\\User', 9, 'a3DaLYIX', '1216b2e2afecb654076d20be69000f3c331cc1807a46ca42aaf7ad2f52010143', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(235, 'App\\Models\\User', 9, 'hodPq5S8', 'a11c0d5ef6d612030871bc4aa638a6a722ef7d9feda4a75277b564f4815599aa', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(236, 'App\\Models\\User', 9, 'GqXL7xZk', 'f7d289c42c9325ce4c31a21830be34e12e2adbc973217670f96f615b4252d4b9', '[\"*\"]', NULL, '2023-11-01 12:15:39', '2023-11-01 12:15:39', NULL),
(237, 'App\\Models\\User', 9, 'gFh23E1v', 'ec7d0d8d757e05d0dcb9869a9e64ec09191c954cd30aa469fc11cebcd5db4933', '[\"*\"]', NULL, '2023-11-01 12:15:53', '2023-11-01 12:15:53', NULL),
(238, 'App\\Models\\User', 9, 'KfTRIMIu', '92bd7836c100be0bb4bf69ab5b05d114d22d2399a8255c6cf85a17ddfa52d033', '[\"*\"]', NULL, '2023-11-01 12:15:53', '2023-11-01 12:15:53', NULL),
(239, 'App\\Models\\User', 9, 'MQ3oHPX4', 'ffb507884aec63311481d9fac6f9089ef646107abda0531d701a4e48b53b18b0', '[\"*\"]', NULL, '2023-11-01 12:15:53', '2023-11-01 12:15:53', NULL),
(240, 'App\\Models\\User', 9, 'vKuDgrO1', 'e02c1a6f94bca69c3e7058877349beb126420edb166ce182633998e47c3c9e65', '[\"*\"]', NULL, '2023-11-01 12:15:53', '2023-11-01 12:15:53', NULL),
(241, 'App\\Models\\User', 9, '8Mj4VxUn', 'a664e530ed9eaa5f0efe46409855c2a3d4dc73d6d03f84534e11ab2515ef142b', '[\"*\"]', NULL, '2023-11-01 12:16:27', '2023-11-01 12:16:27', NULL),
(242, 'App\\Models\\User', 9, 'guIZwwFX', 'd8f6d9643d4511a05853bb8b7b991790fd5d244aa52273ddc0226b2a69cf5df8', '[\"*\"]', NULL, '2023-11-01 12:16:27', '2023-11-01 12:16:27', NULL),
(243, 'App\\Models\\User', 9, 'NfuxYNRp', '0ec2214e9a7f7702afbf0c76fceff0f4e033a7c1dd79649e082f280d77d71176', '[\"*\"]', NULL, '2023-11-01 12:16:27', '2023-11-01 12:16:27', NULL),
(244, 'App\\Models\\User', 9, 'REGZZOqZ', '951d0fd35783708f47e6d3d53b1d296572ac82b66c119696bf9eb8e78d8150c8', '[\"*\"]', NULL, '2023-11-01 12:16:27', '2023-11-01 12:16:27', NULL),
(245, 'App\\Models\\User', 9, 'kzMDFptm', 'bdb4e57581b246eaddd1227c8a421f492b282fd5579af5574dfd34fbabfd304d', '[\"*\"]', NULL, '2023-11-01 12:16:28', '2023-11-01 12:16:28', NULL),
(246, 'App\\Models\\User', 9, 'oplV5lio', 'a3a13d9a3e10d8168961397a0547bed3bb64cac242b39e7fe6cc2db229ed48a3', '[\"*\"]', NULL, '2023-11-01 12:16:28', '2023-11-01 12:16:28', NULL),
(247, 'App\\Models\\User', 9, 'WSgI7Lwn', '779d7dbdb62f76583ec3f4a2b8d9195e652598133f2ecd07772a0d6d6d677de4', '[\"*\"]', NULL, '2023-11-01 12:16:28', '2023-11-01 12:16:28', NULL),
(248, 'App\\Models\\User', 9, 'PpQEhIkM', 'fcf97ece40bfdf3fa62067c6fb228aedd4ff8db64e6cf4c6a10d302dfd5ad5e7', '[\"*\"]', NULL, '2023-11-01 12:16:28', '2023-11-01 12:16:28', NULL),
(249, 'App\\Models\\User', 9, 'wDVsKWKc', 'ac16e62d4c3958dd65c82b871a875ebd892e7d84c69dc58ced02b636c4cefb62', '[\"*\"]', NULL, '2023-11-01 12:16:30', '2023-11-01 12:16:30', NULL),
(250, 'App\\Models\\User', 9, 'p5sIEI4B', '9cdb25fb8400cef0279b18886fe044501fa8c83c843ef64bdaeaab7d687c3132', '[\"*\"]', NULL, '2023-11-01 12:16:30', '2023-11-01 12:16:30', NULL),
(251, 'App\\Models\\User', 9, 'd8s5n7Or', '14ab396c436a71b4f8c4df000abb2e877be9b4d2aa57811606c803769b9afd7b', '[\"*\"]', NULL, '2023-11-01 12:16:30', '2023-11-01 12:16:30', NULL),
(252, 'App\\Models\\User', 9, 'hjzEH3oE', 'bc138ca92428aa8102ae013b344eef07a60528796d03f06854ebb3091e0ec992', '[\"*\"]', NULL, '2023-11-01 12:16:30', '2023-11-01 12:16:30', NULL),
(253, 'App\\Models\\User', 9, 'sKQ5nxdR', 'ba364f51742288d9b6e2357f7db5616c7cceb7ba28c5e85aab40d5477d1e70d5', '[\"*\"]', NULL, '2023-11-01 12:16:39', '2023-11-01 12:16:39', NULL),
(254, 'App\\Models\\User', 9, '4Nwt0Zcv', '8745dcaea11c30c8be333d3517c8352450f02936f2968fb3b84081340c0384b2', '[\"*\"]', NULL, '2023-11-01 12:16:39', '2023-11-01 12:16:39', NULL),
(255, 'App\\Models\\User', 9, 'eZSfULtD', '9dda1d8d20513dd705082b1bddc9710b6ffcbc6476fa031c7ea7f8642373fec1', '[\"*\"]', NULL, '2023-11-01 12:16:41', '2023-11-01 12:16:41', NULL),
(256, 'App\\Models\\User', 9, '04Qg0R0P', '20e1cbd2f9e1929b9c6384830406540d26dd5d2d47ef0e4f0f7c966e1139a9d7', '[\"*\"]', NULL, '2023-11-01 12:16:41', '2023-11-01 12:16:41', NULL),
(257, 'App\\Models\\User', 9, 'GfmkRcpK', '317aa7a2985cb341fff220423870251b8ec6553fab3314e569d12b81fc75df5f', '[\"*\"]', NULL, '2023-11-01 12:16:51', '2023-11-01 12:16:51', NULL),
(258, 'App\\Models\\User', 9, 'DuyCeYDu', 'f92451ccd26a37b306784099e6bd81f0ded1376239d5ee01d2b4dcd3e6dbb582', '[\"*\"]', NULL, '2023-11-01 12:16:51', '2023-11-01 12:16:51', NULL),
(259, 'App\\Models\\User', 9, 'acFRehz6', '8640db337d256bc21254e76e6d51b905ed82b344b90e790d0c4b5a7a17c35bb8', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(260, 'App\\Models\\User', 9, 'Orh1Ahpl', '56cffc06bdac9a303d4c04ede8f4d0c036616cc86dc53b3fed8fe780cb3fee4d', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(261, 'App\\Models\\User', 9, 'Lmyf8I7K', '843ab6e17ac5228b0027c46bc13585f6949eb8fb11649d615872fb122c16f7bd', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(262, 'App\\Models\\User', 9, 'h1PzDOxg', '9dbd11818035b3406368d987523180eb006a5743f687a686fa145b39e6f84ff3', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(263, 'App\\Models\\User', 9, 's4ew3zLn', '387dde431ff86d3da840c2c753a1aa83cbaa9453ce5dafeaa6e52b6025fa56dc', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(264, 'App\\Models\\User', 9, '5iUAnYJL', 'c1f09c6bd03cac8a4f14b52943f5932b28619ef3f0f992377321ec55f9ac0838', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(265, 'App\\Models\\User', 9, 'XLaK0bd2', '42f178ab36ce59d7ff9c7fa197c383de08cb39136fdc77989c95e4af7202a9ee', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(266, 'App\\Models\\User', 9, 'IvpmdwVN', '8efebac8b41b81e68b18883ae782c156dd235fd2cc89421a95441477868af1f8', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(267, 'App\\Models\\User', 9, 'JGVcwXTV', '84439a7d5ff2f593d0d732a10e50bd06b79ce537d5a8ff8bac0fa5d1070fc63e', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(268, 'App\\Models\\User', 9, 'HCnMJl0l', '55dbdb405b467f3354d7dad4e8bf9c75ddb0010813772d44d34b3cf82ae3efeb', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(269, 'App\\Models\\User', 9, 'ZC0qH7kd', '7c51dcbeec656ab349a3679a54064ef37b5f2cad157105b1f99853e5ba4a67b6', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(270, 'App\\Models\\User', 9, '63dIoNEP', '9de869c563cc6d1dab5f28994a4185f2851f8b7357b2dcceb436979bee7692f3', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(271, 'App\\Models\\User', 9, 'gMhL7uzs', 'db838f448be84c3f4fffd68d36919a686f7bb4a3faaa18d5c7b2f54e1a6502b6', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(272, 'App\\Models\\User', 9, 'vxTjlPxB', '732bc1a648005f2225f2d28b71c51a01d297f3cae3f3d509f00c68a644e2863f', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(273, 'App\\Models\\User', 9, 'EVKiUQPp', 'ab35d2caddcdb4fbd47aa9a1e5293b34a4f0c401be0b222a36451729d9b6c50c', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(274, 'App\\Models\\User', 9, 'aCxRlxL3', 'eb522727e27b6a3dd3913c6ebd0aa3b225133f2bc0b42a11d413d3c54a2cec50', '[\"*\"]', NULL, '2023-11-01 12:17:50', '2023-11-01 12:17:50', NULL),
(275, 'App\\Models\\User', 9, 'qf2pqF4v', '7db264a3fa0499288294390de7bba6db2b3579ed11037e87ee190ae8d1c69624', '[\"*\"]', NULL, '2023-11-01 12:17:51', '2023-11-01 12:17:51', NULL),
(276, 'App\\Models\\User', 9, 'cliqWrfd', 'ed165662d88e89518c72a92ba002ed05f0d1b42721f580323a64d0ae83aa8b9f', '[\"*\"]', NULL, '2023-11-01 12:17:51', '2023-11-01 12:17:51', NULL),
(277, 'App\\Models\\User', 9, '80cZsr8v', 'ee33ac19e43aa6f9e364bdd4a8dcae90d213fd4afbd4eb40766f0ced76193efc', '[\"*\"]', NULL, '2023-11-01 12:17:51', '2023-11-01 12:17:51', NULL),
(278, 'App\\Models\\User', 9, '65TcMv4K', '4f207e83ae97555373fa6ff2bf09559df341dec21642a95f4348d194049e6631', '[\"*\"]', NULL, '2023-11-01 12:17:51', '2023-11-01 12:17:51', NULL),
(279, 'App\\Models\\User', 9, 'w65E4ai4', '53d366c9abcaa066e2003fcad5e0c79d5926804050fc3e02d49380ce8e3996db', '[\"*\"]', NULL, '2023-11-01 12:17:59', '2023-11-01 12:17:59', NULL),
(280, 'App\\Models\\User', 9, 'zR23Dx8F', '6769f9008be2b1e482889051f52c5d2ab6e8392f3264e715752ba4398f887ae0', '[\"*\"]', NULL, '2023-11-01 12:17:59', '2023-11-01 12:17:59', NULL),
(281, 'App\\Models\\User', 9, 'qg28vaEu', 'c8b9098815467fe0b5f3279c382594d5bad6aa34ad6dd768c673a5b1c1ec7aaf', '[\"*\"]', NULL, '2023-11-01 12:17:59', '2023-11-01 12:17:59', NULL),
(282, 'App\\Models\\User', 9, '2wk6YNZy', '1b622ff8bbb0ebf6c03aa2868c267dc863a5e23d9dd1f7bff8809926c89aa4ad', '[\"*\"]', NULL, '2023-11-01 12:17:59', '2023-11-01 12:17:59', NULL),
(283, 'App\\Models\\User', 9, '6sqjoPd6', 'cc8d80327640207fb335ebee18a23715f957d9adce8f7b7ef1d6b7ae5eee0290', '[\"*\"]', NULL, '2023-11-01 12:18:22', '2023-11-01 12:18:22', NULL),
(284, 'App\\Models\\User', 9, 'OW26lUQD', 'cf164c3c02bdc775c49302ba31dfd49571f20d78f3a568c652882596958bf641', '[\"*\"]', NULL, '2023-11-01 12:18:22', '2023-11-01 12:18:22', NULL),
(285, 'App\\Models\\User', 9, 'PpootxSD', '8b72e560991daa1357cd22f4a242b7abef184b342053cfe5d576b326f0cc476a', '[\"*\"]', NULL, '2023-11-01 12:18:22', '2023-11-01 12:18:22', NULL),
(286, 'App\\Models\\User', 9, 'JWDa6y8G', 'f5858cc202d2479974f8fb2ee770bbf8c1fa75d947f3d9ddb3495fe83dc047ba', '[\"*\"]', NULL, '2023-11-01 12:18:22', '2023-11-01 12:18:22', NULL),
(287, 'App\\Models\\User', 9, 'KFVL3izY', 'fe79a25ad4b29e201879edaa200c95eb946f3899586241f2bf1e46709cff579c', '[\"*\"]', NULL, '2023-11-01 12:18:23', '2023-11-01 12:18:23', NULL),
(288, 'App\\Models\\User', 9, 'nQDFDjTs', '21aa1bdeae437f7796a377947767fe06e73c33bb3ae58711581870de229b3f90', '[\"*\"]', NULL, '2023-11-01 12:18:23', '2023-11-01 12:18:23', NULL),
(289, 'App\\Models\\User', 9, 'UjjBrGLw', '5acd8c009b0a3d08118e4738cccbea2ecc62c9d2c09d98553bc39b79cd10e9f2', '[\"*\"]', NULL, '2023-11-01 12:18:23', '2023-11-01 12:18:23', NULL),
(290, 'App\\Models\\User', 9, 'mTjXseGl', '2c969d439decbfb2379e8ebbb3e931bc9b7be71b02ecc4f39c8b89471ac2a822', '[\"*\"]', NULL, '2023-11-01 12:18:23', '2023-11-01 12:18:23', NULL),
(291, 'App\\Models\\User', 9, 'vpJSvPyg', 'f217df26b45ddaca9d10a4a8ca13fc1158393c617977127fd64a62cc0f97c8ce', '[\"*\"]', NULL, '2023-11-01 12:18:40', '2023-11-01 12:18:40', NULL),
(292, 'App\\Models\\User', 9, 'IO3RFEK3', '3f220eb0662c055ec123f7a58461a8ccb094b1e6597d02775d032273da1bb366', '[\"*\"]', NULL, '2023-11-01 12:18:40', '2023-11-01 12:18:40', NULL),
(293, 'App\\Models\\User', 9, 'sH1QUj3K', '0a89e93cde21969c209a7ee197ae1303411b19f7dc7116a5b375124f6afc6be2', '[\"*\"]', NULL, '2023-11-01 12:18:40', '2023-11-01 12:18:40', NULL),
(294, 'App\\Models\\User', 9, 'rWOIquXa', 'a4351fd000db3c61cc12a157fa60476c8386181623e5c19569053bd246d9109c', '[\"*\"]', NULL, '2023-11-01 12:18:40', '2023-11-01 12:18:40', NULL),
(295, 'App\\Models\\User', 9, 'dWgMmvt1', '4dfd940dc8661a85e47a8b640df66878b1fb48b5147f9bbdc3e03ef646b6e1c3', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(296, 'App\\Models\\User', 9, 'sxeAD1Gv', '9ca939ce5c7d34386dfece65c0e11f40ca0e4da9c3ef40abded59c9c10c2d3c7', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(297, 'App\\Models\\User', 9, '6B7jskaE', '3eb3b931fa493fe54173c979c3134f64b5551f6163c73f4081ae3737ba5c015d', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(298, 'App\\Models\\User', 9, 'nc4DeOUJ', '5f8709026330bb7fdd2416816eada57c064a4dca2ea6358801ff144500840e50', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(299, 'App\\Models\\User', 9, 'kpM4QWqh', 'b291bfd384bcc7a4e8be949b014533bee9173724aa12575c835b906464e935b9', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(300, 'App\\Models\\User', 9, 'y8UfLKK6', 'b7ca60c5d6fae8bbf1b6edd37ccf7499c6b62d5e5d7cfb2a05571713f2070c76', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(301, 'App\\Models\\User', 9, 'inIfV9e2', 'b0aa2de4989e1c68dea9584f48ae0b9c47126ebb491b359eea45ba52c393c5dc', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(302, 'App\\Models\\User', 9, 'Jqqicxfj', 'c17c64a97f81fff0b9883c804500eb7919c6de0118ad6f5433a2e3f889279fe5', '[\"*\"]', NULL, '2023-11-01 12:19:22', '2023-11-01 12:19:22', NULL),
(303, 'App\\Models\\User', 9, 'sbqBg3g5', '2d1fd9fbc7c54027e8810b9c543f2777043baf286e81826056c25791a4dc5ac1', '[\"*\"]', NULL, '2023-11-01 12:19:23', '2023-11-01 12:19:23', NULL),
(304, 'App\\Models\\User', 9, 'lX3zjQmT', '3d6fc35b32f4f019c74884abd16971a8f5bd370cf096467c13a7a332263c1512', '[\"*\"]', NULL, '2023-11-01 12:19:23', '2023-11-01 12:19:23', NULL),
(305, 'App\\Models\\User', 9, 'JAGk26t1', '0fd1c59218f4c8428e173d135c51e230099d89aebc0390f81e6ef2915bda6c59', '[\"*\"]', NULL, '2023-11-01 12:21:43', '2023-11-01 12:21:43', NULL),
(306, 'App\\Models\\User', 9, 'ex8HYRuV', 'b7083c7a092ff35abd1810d855ca8376bebe84fc6a04787e5f9d9ef3672388ba', '[\"*\"]', NULL, '2023-11-01 12:21:43', '2023-11-01 12:21:43', NULL),
(307, 'App\\Models\\User', 9, 'tFRbY8sj', 'd11f622188f3a2456df1030cdcaf974057c1cb0642f0f6f2fc3295888ad8ee08', '[\"*\"]', NULL, '2023-11-01 12:21:44', '2023-11-01 12:21:44', NULL),
(308, 'App\\Models\\User', 9, 'UhutkggO', '5b794359f46db85337b93b89c98f02aefc6b5f277d9963f3ef099ee5b4e4b346', '[\"*\"]', NULL, '2023-11-01 12:21:44', '2023-11-01 12:21:44', NULL),
(309, 'App\\Models\\User', 9, 'cAd8q0E4', '644e5d5369f8cd620a724b8abba42a16f7fb8cae705ea0e6ba1b21da5de7b516', '[\"*\"]', NULL, '2023-11-01 12:21:56', '2023-11-01 12:21:56', NULL),
(310, 'App\\Models\\User', 9, 'qGjgVrid', '36a43de3926a6a0642d359d3043d37a3332599e624df5c6a1ca9537a67c399f5', '[\"*\"]', NULL, '2023-11-01 12:21:56', '2023-11-01 12:21:56', NULL),
(311, 'App\\Models\\User', 9, 'f0PIUyhE', '8e76042dc455898d78ba664ec2d49b41299870a6ff941ef7fd0ba1563f97ed12', '[\"*\"]', NULL, '2023-11-01 12:23:08', '2023-11-01 12:23:08', NULL),
(312, 'App\\Models\\User', 9, 'oX6NJi6z', 'b6b9eea096b63bc460097796a5b3e6715d006da056a20a8b6eb17ee522e66743', '[\"*\"]', NULL, '2023-11-01 12:26:31', '2023-11-01 12:26:31', NULL),
(313, 'App\\Models\\User', 9, '3p7OKHC9', '676082faae34432418dc49f3531a8c12f68833185286adc7046b4bce30d76654', '[\"*\"]', NULL, '2023-11-01 12:26:44', '2023-11-01 12:26:44', NULL),
(314, 'App\\Models\\User', 9, 'L7BcqQWb', '6cb7543f664a4dde7271f51a78377938989dbdfe8b8ff84668efaab364bce885', '[\"*\"]', NULL, '2023-11-01 12:34:23', '2023-11-01 12:34:23', NULL),
(315, 'App\\Models\\User', 9, '66IngnJQ', '37f9a2f8ffc9240c33d01dd6a77e540f24996029a2cecc33c39fd26c74fcb36e', '[\"*\"]', NULL, '2023-11-01 12:37:34', '2023-11-01 12:37:34', NULL),
(316, 'App\\Models\\User', 9, 'BVoR8WT8', '67cb2fa1801ee6e7686a08f230d873f9eb18124695d12e466291b070b77beca6', '[\"*\"]', NULL, '2023-11-01 12:38:16', '2023-11-01 12:38:16', NULL),
(317, 'App\\Models\\User', 9, 'pE5Toai7', '45998afac1d2e48a99ac12f74bed4010a0d033fbd41704d1052eca6def17a7cc', '[\"*\"]', NULL, '2023-11-01 12:38:24', '2023-11-01 12:38:24', NULL),
(318, 'App\\Models\\User', 9, 'sqor17Uu', '56f3a9ac8570b00c5b0891cd3f0593ed898a33ebada36508aad5cba0f2ab8ca2', '[\"*\"]', NULL, '2023-11-01 12:40:13', '2023-11-01 12:40:13', NULL),
(319, 'App\\Models\\User', 9, 'agd2KaZi', '4489e13a223b46a8dca56e7557a5a38f904c23ebc4fea6691c29f6142fd9ad07', '[\"*\"]', NULL, '2023-11-01 12:40:50', '2023-11-01 12:40:50', NULL),
(320, 'App\\Models\\User', 9, 'j8T063yM', '39781e0e51ed85d2dab55cfca2305504c27afe37bc2034821738bd5a98241df3', '[\"*\"]', NULL, '2023-11-01 12:41:22', '2023-11-01 12:41:22', NULL),
(321, 'App\\Models\\User', 9, 'zfZEhJwZ', '92c8c89ff5bb7045ff6b61134fb4289b4f63d51264e0580799407de75f5d0625', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(322, 'App\\Models\\User', 9, 'VTCAynFp', '7d2acb98ad66ef8a745418c449b8ef6f2278c27b8da692d87711ad584e78de69', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(323, 'App\\Models\\User', 9, '5jeaZgv9', '2a1b779fa8a8a591fa5db3d3d74106f827d48b5a84dbe1c242b45c897bbbf358', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(324, 'App\\Models\\User', 9, 'Skr1ynpj', '7177403e1601f9faa4490d154923617fc63ba6bc37b9fff36bb9e0c88ca1c208', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(325, 'App\\Models\\User', 9, 'YtgkaQwU', '533c3c2a62b989bbd468bb89095e6e688d0e10c3188dea6a45cdd8e5ee523d96', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(326, 'App\\Models\\User', 9, '4Wigt2AR', '8409b242a9d5c97db0352d8c43d377deb2ace9ac474500cfcf25b032dcd1c135', '[\"*\"]', NULL, '2023-11-01 12:49:39', '2023-11-01 12:49:39', NULL),
(327, 'App\\Models\\User', 9, 'JUwgc3rP', '13b4a6babbba554ef7adef9abd32110f4f34035f86017ce6d7ac66867e1e345a', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(328, 'App\\Models\\User', 9, 'tW2erMbx', '9c02dee5c4825e5d0125d188ec3ed59b5bd636c8121ff8139c51c7dfea820a3f', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(329, 'App\\Models\\User', 9, 'Dqa3dZDm', '6e144257fb2b62886476677ee59a296c1289954351c22bc9c90df5a9e3b93a79', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(330, 'App\\Models\\User', 9, 'kh14WR08', '6aa17ed58da5088f56d417b6d034830b930aa328d1a3e33ddd71f4343a5fccbd', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(331, 'App\\Models\\User', 9, 'IrKdLJ47', '446ec24b72c22c53be741cdfe080a4fd95805cf385f9c4a11e166cbb9fa6643d', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(332, 'App\\Models\\User', 9, 'fUd2OUFO', 'e3a8942122f2059f42916bcb52fcfc5902e578745f66583b8caaf034356689a2', '[\"*\"]', NULL, '2023-11-01 12:50:12', '2023-11-01 12:50:12', NULL),
(333, 'App\\Models\\User', 9, 'Pd24pwry', 'd5d7da2165f61308cc46eb15d5cb06be96bd8da279e87ff5bd672c9244adca69', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(334, 'App\\Models\\User', 9, 'wjRe8E3b', 'cc23b7d97d5ddcc0c568922761a627efe208e0deca3e3e508062265ebb3b782a', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(335, 'App\\Models\\User', 9, 'ZFbMtOVM', 'fe36a020e8d7b15e9965f915d396403cfe8b98995be1fd6b327d04d743895fac', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(336, 'App\\Models\\User', 9, 'WEGzh9ST', 'af6c301dc8df100f170f5ebc92a07058d01a21320efc1ecaa43a82ae64e37ab9', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(337, 'App\\Models\\User', 9, '2KBGYytl', '05c2c6f878ccd54883bbd9b93f7eb81cda65bcee5ce3544b1510d42d9314f622', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(338, 'App\\Models\\User', 9, 'TRIdExvR', '9c6cd0b3494135d46d98c5eecb668351b06a86753922ffe6dc9e067f6d348d4b', '[\"*\"]', NULL, '2023-11-01 12:50:39', '2023-11-01 12:50:39', NULL),
(339, 'App\\Models\\User', 9, 'AUyS2suR', '16fb9560287df3b4166daf418ed9d7e21507c47652e1d9d3efdeea4620f1cc96', '[\"*\"]', NULL, '2023-11-01 12:58:49', '2023-11-01 12:58:49', NULL),
(340, 'App\\Models\\User', 9, 'oWTrU4sv', '04dbd5a3a8dfb4dfacadba4c4e994099c2fddd0b5bf7328cda72063c64adf9ba', '[\"*\"]', NULL, '2023-11-01 13:07:23', '2023-11-01 13:07:23', NULL),
(341, 'App\\Models\\User', 9, 'PF3eqhmf', '15e8d4dc8f7e0ded7dc7d62528983bf9fc93386ce88ea85a1f277def26b5c36b', '[\"*\"]', NULL, '2023-11-01 13:08:40', '2023-11-01 13:08:40', NULL),
(342, 'App\\Models\\User', 9, 'rsWKSFyC', '3f7cffae4c9e52977c1c15add92a543010973b94f055f9afe059915bb3d99318', '[\"*\"]', NULL, '2023-11-01 13:09:20', '2023-11-01 13:09:20', NULL),
(343, 'App\\Models\\User', 9, 'hAAYP1QC', 'ad899d4ee7a2b96c6df9d7fcd2e013aaef9bfbd4b0bf71f3ae346c1a87f227b7', '[\"*\"]', NULL, '2023-11-01 13:09:38', '2023-11-01 13:09:38', NULL),
(344, 'App\\Models\\User', 9, 'Sz39SaK0', '6f20639e5965818f0bb7f3c6f68ce0f6117baaaaf50dc47923e5e8a06e613e1e', '[\"*\"]', NULL, '2023-11-01 13:29:47', '2023-11-01 13:29:47', NULL),
(345, 'App\\Models\\User', 9, 'mrxlej64', '0594afad70ca14d1ffd3072a17f653f4c0d193aeb0400b33970152374be1be87', '[\"*\"]', NULL, '2023-11-01 13:29:47', '2023-11-01 13:29:47', NULL),
(346, 'App\\Models\\User', 9, 'hpAdWoYa', '248cc0a9361b45fae214a1093d5620b83e5bfa426901157546a12013ced3d39d', '[\"*\"]', NULL, '2023-11-01 13:29:47', '2023-11-01 13:29:47', NULL),
(347, 'App\\Models\\User', 9, '191K2C9v', 'fa07891af6eee0de1787180a286aa54f0131ad8a0995349cf3c45fe0e9383474', '[\"*\"]', NULL, '2023-11-01 13:29:47', '2023-11-01 13:29:47', NULL),
(348, 'App\\Models\\User', 9, '6Q2Ag3mJ', 'abfa9799a29bdbbca6435abb15671ddc06de87371e109cdb2bf6e2820e77c561', '[\"*\"]', NULL, '2023-11-01 13:29:47', '2023-11-01 13:29:47', NULL),
(349, 'App\\Models\\User', 9, '2ZKFoa69', '4c2fd63e8dabfca2611a1c6139460f6a7014efd3034e1295da7de623d014d5e4', '[\"*\"]', NULL, '2023-11-01 13:30:27', '2023-11-01 13:30:27', NULL),
(350, 'App\\Models\\User', 9, 'HKcJwUcm', 'b59b412e8c89744728e9a897711c2273c7a65e73849ca0979e6de4666aa4fa98', '[\"*\"]', NULL, '2023-11-01 13:30:27', '2023-11-01 13:30:27', NULL),
(351, 'App\\Models\\User', 9, 'taG4yLaG', '45a11fe21d1ec696d4f5a971199aaf3cb8a572b2005230d846b01d3900b1d621', '[\"*\"]', NULL, '2023-11-01 13:30:27', '2023-11-01 13:30:27', NULL),
(352, 'App\\Models\\User', 9, 'ruIYB1S6', '9be793cfa073675c383f0fc8ba251d5de70d923982a090b6c6613af148dcd28f', '[\"*\"]', NULL, '2023-11-01 13:30:27', '2023-11-01 13:30:27', NULL),
(353, 'App\\Models\\User', 9, 'FvEey1Qb', '9b8c04a2d33776932b4bf00769129630317d3ca6227fd715b121aac85e02d173', '[\"*\"]', NULL, '2023-11-01 13:30:27', '2023-11-01 13:30:27', NULL),
(354, 'App\\Models\\User', 9, 'yVlWHCoz', '44f1d452e80562af192f3a7e2da3d6c2e09dead02c8facacf5510e3a1941ae5d', '[\"*\"]', NULL, '2023-11-01 13:31:15', '2023-11-01 13:31:15', NULL),
(355, 'App\\Models\\User', 9, 'x4cfx1qc', 'ae5e26305d439c13da4a8cb4f46c3c648104f4035d25e74c0d014eb67c43d28e', '[\"*\"]', NULL, '2023-11-01 13:31:15', '2023-11-01 13:31:15', NULL),
(356, 'App\\Models\\User', 9, 'YA2MZWRv', '0e378a1ddd2057b7ca5127aa4fc266b838b25c06da5947246ae049d03099f9fb', '[\"*\"]', NULL, '2023-11-01 13:31:15', '2023-11-01 13:31:15', NULL),
(357, 'App\\Models\\User', 9, 'VoSDXqdj', 'e40bcd1820177c345f6c0b2617cc3a4d9a5ce25e06095ecaa9afa98654d9eab4', '[\"*\"]', NULL, '2023-11-01 13:31:16', '2023-11-01 13:31:16', NULL),
(358, 'App\\Models\\User', 9, 'bQfHmzYT', '42b30cb85b82cdefe82ae874eec9ede4c7aa179fc47114eb21208748f4963061', '[\"*\"]', NULL, '2023-11-01 13:31:16', '2023-11-01 13:31:16', NULL),
(359, 'App\\Models\\User', 9, 'oX2V0Iv0', '808bbe35e7e0bdf7f559e63580043a83e73046544b661c92db5b7a93fadc2c12', '[\"*\"]', NULL, '2023-11-01 13:40:47', '2023-11-01 13:40:47', NULL),
(360, 'App\\Models\\User', 9, 'qaMDQM4W', 'e7f4085641aa70c2e2d3b13d4f336d7ff370b883b8480614ae342ba62bebeb43', '[\"*\"]', NULL, '2023-11-01 13:40:48', '2023-11-01 13:40:48', NULL),
(361, 'App\\Models\\User', 9, 'NZpW83o2', 'ac5aa948c61c15eef9955a6f4974c2e709c4b5600c4dc0e54d984b793f2a86c4', '[\"*\"]', NULL, '2023-11-01 13:40:50', '2023-11-01 13:40:50', NULL),
(362, 'App\\Models\\User', 9, '9cXGAuGR', 'd02ca6b1658cbe6048526ef0ea727251030864ffb0387a75564c7250370e6fc8', '[\"*\"]', NULL, '2023-11-01 13:40:51', '2023-11-01 13:40:51', NULL),
(363, 'App\\Models\\User', 9, 'pRfNwfnm', 'b3a9eb6f2180f9fb6c908cf36e89c35aa0d7ac1df09dd11ab3e66f7725494e86', '[\"*\"]', NULL, '2023-11-01 13:40:54', '2023-11-01 13:40:54', NULL),
(364, 'App\\Models\\User', 9, 'HtObDuuv', '0b7e9f3cbcbec3a170c7001f8bfbbc2c040756f8a17b7204101e2aa7804e834f', '[\"*\"]', NULL, '2023-11-01 13:40:55', '2023-11-01 13:40:55', NULL),
(365, 'App\\Models\\User', 9, 'khFj3Zay', '09a0f541fc63dfe280560289ade78f7ac249af2bad9fdd1909c881d84e6a1637', '[\"*\"]', NULL, '2023-11-01 13:40:55', '2023-11-01 13:40:55', NULL),
(366, 'App\\Models\\User', 9, 'Q2QIsYUO', '24daae178748509bbd2d31b5fcd445679d08187ac4a10257afcec601736cf848', '[\"*\"]', NULL, '2023-11-01 13:40:56', '2023-11-01 13:40:56', NULL),
(367, 'App\\Models\\User', 9, 'Fzve0oFa', '3e22b81c3142d82549db25ceb9a8706a1bb769c6fdb994eb896168d0c54daa43', '[\"*\"]', NULL, '2023-11-01 13:40:57', '2023-11-01 13:40:57', NULL),
(368, 'App\\Models\\User', 9, 'Px8ELg0I', 'fa6ae8d1beb30c6146466aee66ab138e68ccdf10c29a0b264ba642b82c042c89', '[\"*\"]', NULL, '2023-11-01 13:40:58', '2023-11-01 13:40:58', NULL),
(369, 'App\\Models\\User', 9, 'FVsvTkki', '7df96232e8bda09a91ed2eaad69a5a9259b23c2dc110e48253f7e596d8e94aa9', '[\"*\"]', NULL, '2023-11-01 13:41:03', '2023-11-01 13:41:03', NULL),
(370, 'App\\Models\\User', 9, 'M4v4YwfI', '0aae8563417a8bbc91315f95bda27810112631178a322e3a3bef20ea414bd10a', '[\"*\"]', NULL, '2023-11-01 13:41:04', '2023-11-01 13:41:04', NULL),
(371, 'App\\Models\\User', 9, '1c7kjJas', '61c896c44afd788ce645ecae8d724fe979d515af312177069f90f644bd6f2503', '[\"*\"]', NULL, '2023-11-01 13:41:06', '2023-11-01 13:41:06', NULL),
(372, 'App\\Models\\User', 9, 'kFBMGizS', '34b94ffc62ad3d1d5c228687bc9aa76973ba9cbfd5b70fd8bbc7bfca189c7e99', '[\"*\"]', NULL, '2023-11-01 13:41:10', '2023-11-01 13:41:10', NULL),
(373, 'App\\Models\\User', 9, 'mBeokMHi', 'ccb057f74080bc44bbb980f3dae3a41a35978b1bbfe0a69a22ff9a83434ba55f', '[\"*\"]', NULL, '2023-11-01 13:41:11', '2023-11-01 13:41:11', NULL),
(374, 'App\\Models\\User', 9, 'qMggb09m', 'ea7ec5e287360ac42fc9b47204fc085018c81c79b692b340a390fa59387defad', '[\"*\"]', NULL, '2023-11-01 13:41:13', '2023-11-01 13:41:13', NULL),
(375, 'App\\Models\\User', 9, 'nDyKD3Hw', 'c63e7bc1335ef189cd16972d648ef1df21c654c07f68fcf70ce6b4a3dfb0ed69', '[\"*\"]', NULL, '2023-11-01 13:41:14', '2023-11-01 13:41:14', NULL),
(376, 'App\\Models\\User', 9, '9AD5VyaQ', '86e38b796dc3e2cdac8c06c4847bd60289b617a706391689b98d592b50dc4a20', '[\"*\"]', NULL, '2023-11-01 13:41:16', '2023-11-01 13:41:16', NULL),
(377, 'App\\Models\\User', 9, 'Cb9auoKP', '0491da9f6ee400a965add4751522523d4ee400a19506581a39a7e0465e7f94a0', '[\"*\"]', NULL, '2023-11-01 13:41:16', '2023-11-01 13:41:16', NULL),
(378, 'App\\Models\\User', 9, 'VsZI3zfn', '9b8d5762c868c0eb02412f2084dda210cd17a7d4d28edd01ee1b0e520435ee59', '[\"*\"]', NULL, '2023-11-01 13:41:17', '2023-11-01 13:41:17', NULL),
(379, 'App\\Models\\User', 9, 'NUXXMGMx', 'cce3f63ebf41b36a07a95287ec8a48efcb24e8910b9580e6715e24da4120ec59', '[\"*\"]', NULL, '2023-11-01 13:41:18', '2023-11-01 13:41:18', NULL),
(380, 'App\\Models\\User', 9, 'mcwblc3E', '004fc23476e0b6b41f471d4f62262928084465db3498449b6919e5f90e583df5', '[\"*\"]', NULL, '2023-11-01 13:41:18', '2023-11-01 13:41:18', NULL),
(381, 'App\\Models\\User', 9, 'GEceGwYa', '9617b46b5b35b98fe04397cf6dfb86dcc59a6554440ecf2d12ea10a42d4c7c4e', '[\"*\"]', NULL, '2023-11-01 13:41:19', '2023-11-01 13:41:19', NULL),
(382, 'App\\Models\\User', 9, 'nx4jMogH', '61ac7450b3fbadf7e22892f4c8db87bba92ba28c399b9be2450d0f5f690b5a1c', '[\"*\"]', NULL, '2023-11-01 13:41:20', '2023-11-01 13:41:20', NULL),
(383, 'App\\Models\\User', 9, 'O97BQ139', 'dba3a37b8666b3c212cee9f929f661aedfb72db5475ec6eb1caacd22b76e013f', '[\"*\"]', NULL, '2023-11-01 13:41:21', '2023-11-01 13:41:21', NULL),
(384, 'App\\Models\\User', 9, '83nOEiS4', '6e20ee5f5c83d518e83dd31a3d1abc2b241dd9ba7c471a1bdfd1b995a49f867d', '[\"*\"]', NULL, '2023-11-01 13:41:22', '2023-11-01 13:41:22', NULL),
(385, 'App\\Models\\User', 9, 'L2Oxr4Dd', '28221bcc7f18dc0989b071f7873ad6ae1831958c63db96a192606f0a7ca21221', '[\"*\"]', NULL, '2023-11-01 13:41:23', '2023-11-01 13:41:23', NULL),
(386, 'App\\Models\\User', 9, 'n6CN7Zzz', 'fb602ae9ca00391c1f64546ffd74593ed907e759ecf4f365bdfd17f82be60229', '[\"*\"]', NULL, '2023-11-01 13:41:27', '2023-11-01 13:41:27', NULL),
(387, 'App\\Models\\User', 9, '842SzYV1', '210106b7ffd8d3fed010d367c7673dfae4fb3089f1c30fa6e7c8653469aee13a', '[\"*\"]', NULL, '2023-11-01 13:41:27', '2023-11-01 13:41:27', NULL),
(388, 'App\\Models\\User', 9, 'EaSqD3T6', 'dd5d3ca8c50bf6670c60d690471f98cf0ef147ae37b07b9518483b30dfcde1da', '[\"*\"]', NULL, '2023-11-01 13:41:28', '2023-11-01 13:41:28', NULL),
(389, 'App\\Models\\User', 9, 'u61Bya5b', '3d2e225e220c519c09a481d48309d6e63482642c067d811c950e02271e32c2e2', '[\"*\"]', NULL, '2023-11-01 13:41:28', '2023-11-01 13:41:28', NULL),
(390, 'App\\Models\\User', 9, 'if6swueN', '8eb20d6896cf0141c2c50453909a5835cbbc7d5c0a85926a876eab33f7695e09', '[\"*\"]', NULL, '2023-11-01 13:41:29', '2023-11-01 13:41:29', NULL),
(391, 'App\\Models\\User', 9, 'B15NeWcb', 'bbc6824ca7a582e22182bd455f4f74d67e4734cf63b32cd702a01857d917bc54', '[\"*\"]', NULL, '2023-11-01 13:41:29', '2023-11-01 13:41:29', NULL),
(392, 'App\\Models\\User', 9, 'TGN9RO1m', '6d6d7372aaf46f7e6374a5f063e8f9edbd8903fa8ade1354724f67b7b786e462', '[\"*\"]', NULL, '2023-11-01 13:41:31', '2023-11-01 13:41:31', NULL),
(393, 'App\\Models\\User', 9, '5i7IIAyq', 'efc3858a27007460313e092ee08fb5c4480c0f636675d2bd066e1433e99f8cd7', '[\"*\"]', NULL, '2023-11-01 13:41:31', '2023-11-01 13:41:31', NULL),
(394, 'App\\Models\\User', 9, 'ROUimrMl', '0454e924467ae0d7f5c250c181dfeeebbe3c7c8e12761ac4231240a17d31a9ab', '[\"*\"]', NULL, '2023-11-01 13:41:32', '2023-11-01 13:41:32', NULL),
(395, 'App\\Models\\User', 9, 'PIe0N1t5', '8a5a9cb500551d95fcaa00cbf0e03c79eb65eff307845f4f244a66c8c0e3df3d', '[\"*\"]', NULL, '2023-11-01 13:41:32', '2023-11-01 13:41:32', NULL),
(396, 'App\\Models\\User', 9, 'JeKEz2XM', '52deb58ea0ba6f08b015de0b06dd3e8eb40e8a51ab8e13e81fc27aade1d682be', '[\"*\"]', NULL, '2023-11-01 13:41:33', '2023-11-01 13:41:33', NULL),
(397, 'App\\Models\\User', 9, '0eOZBJip', '027e6411f6942d590e4a35dd175adee961d1512468234fcfee1d4a8581390274', '[\"*\"]', NULL, '2023-11-01 13:41:33', '2023-11-01 13:41:33', NULL),
(398, 'App\\Models\\User', 9, 'pEe4pZbC', '78135a04eae33627300115294497a503941bc3808b179d2f1158b6cb37acf194', '[\"*\"]', NULL, '2023-11-01 13:41:33', '2023-11-01 13:41:33', NULL),
(399, 'App\\Models\\User', 9, 'RjPHb0oD', '02e6effc4752ad8c3aa89d9c9d7eb27de747dff338433d6cbcc1c055a8ca0449', '[\"*\"]', NULL, '2023-11-01 13:41:34', '2023-11-01 13:41:34', NULL),
(400, 'App\\Models\\User', 9, 'YygIHcw5', '46856b92ae291d62bf02c0a242899a9044e82f9e04639b9ab34bdfd9e9c4f5cd', '[\"*\"]', NULL, '2023-11-01 13:41:34', '2023-11-01 13:41:34', NULL),
(401, 'App\\Models\\User', 9, 'qzLMa1Zx', '2f8f6f17451a0ed0e1410b6ce8d61834bdcbf643005194c0a0682a3473ab7469', '[\"*\"]', NULL, '2023-11-01 13:41:35', '2023-11-01 13:41:35', NULL),
(402, 'App\\Models\\User', 9, 'edj7zN8l', '0f40d3f3cb415c18c2477f1b7fb8e769eaec4dd8c9253f402b60f1981741e2c4', '[\"*\"]', NULL, '2023-11-01 13:41:35', '2023-11-01 13:41:35', NULL),
(403, 'App\\Models\\User', 9, 'NPSTOda7', '0db43ef6322f6d66feedea8a1dcc14ffad8b71847980066c8c3e7fdaccfef136', '[\"*\"]', NULL, '2023-11-01 13:41:35', '2023-11-01 13:41:35', NULL),
(404, 'App\\Models\\User', 9, 'Y8uqLawh', '3bc154aeb55bcb2843a9204eb652dc22c16784d45cb6855d99719125d7038855', '[\"*\"]', NULL, '2023-11-01 13:41:36', '2023-11-01 13:41:36', NULL),
(405, 'App\\Models\\User', 9, 'mV1x31rk', '03103294604fdb439ed0bf9ac723bddaa97d558127de2443cd6c0a77418646a4', '[\"*\"]', NULL, '2023-11-01 13:41:36', '2023-11-01 13:41:36', NULL),
(406, 'App\\Models\\User', 9, 'm14F7Wzd', '7f0c49c61c10fd7a7f2ddf58042f12d716079ea5ed994226960657d5fb0fe208', '[\"*\"]', NULL, '2023-11-01 13:41:36', '2023-11-01 13:41:36', NULL),
(407, 'App\\Models\\User', 9, 'pbffkcH1', 'bd7c6bc851917b9d5fe74696a3c3311c7f1617e3719299374b03c41bdf840a50', '[\"*\"]', NULL, '2023-11-01 13:41:37', '2023-11-01 13:41:37', NULL),
(408, 'App\\Models\\User', 9, 'jzh8A5mC', 'a2145ffb1f6f8be82cda92323880178107536916f42116a59976d40bea62ab61', '[\"*\"]', NULL, '2023-11-01 13:41:37', '2023-11-01 13:41:37', NULL),
(409, 'App\\Models\\User', 9, 'f10hs6pZ', '96ed50c81313a08a05ce1ab8e4645b19f0539c29b998f404bfbfb81a1d04890c', '[\"*\"]', NULL, '2023-11-01 13:41:37', '2023-11-01 13:41:37', NULL),
(410, 'App\\Models\\User', 9, 'MVidfW2v', '221bc0e3095cbbea779131f6c438e1cc576c218eba2a382b325c7d367310cf3f', '[\"*\"]', NULL, '2023-11-01 13:41:37', '2023-11-01 13:41:37', NULL),
(411, 'App\\Models\\User', 9, 'rEesZIol', 'ca1c6358bfaed4c720e4d07ee303b820705ebbadda76a4011e65b451f7c1650d', '[\"*\"]', NULL, '2023-11-01 13:41:38', '2023-11-01 13:41:38', NULL),
(412, 'App\\Models\\User', 9, 'W5T1bKlc', '993b16cd7e516086f12473dea01f07b79ad013dedf88c224186ca28b7b3bd129', '[\"*\"]', NULL, '2023-11-01 13:41:38', '2023-11-01 13:41:38', NULL),
(413, 'App\\Models\\User', 9, 'euonTtpN', '6181499ce394aa4a5f6e408400cc0330806d7279424de9e5e6fcfb1ec7e91eb4', '[\"*\"]', NULL, '2023-11-01 13:41:39', '2023-11-01 13:41:39', NULL),
(414, 'App\\Models\\User', 9, '3g2ZveSC', '070a60aa508df95ae07c7f6014a1949205add0ad9bf879cf6b230069e2b7ec44', '[\"*\"]', NULL, '2023-11-01 13:41:39', '2023-11-01 13:41:39', NULL),
(415, 'App\\Models\\User', 9, '9OiC04tP', 'a8c530dbfbaf39019218d4004a1208e5d21ea61d30d968ef13b5e87ee8bf1f78', '[\"*\"]', NULL, '2023-11-01 13:41:40', '2023-11-01 13:41:40', NULL),
(416, 'App\\Models\\User', 9, 'CFT4Uyh3', '81a959e40864388f10d8d3fe6929da7b3c39f2c5cf68f391f6d185a00629aa73', '[\"*\"]', NULL, '2023-11-01 13:41:40', '2023-11-01 13:41:40', NULL),
(417, 'App\\Models\\User', 9, 'tTssrkeM', 'dbc8f99d45308132a90a15402becba9c9f6718b69b15d43a264b46b52c96ef6c', '[\"*\"]', NULL, '2023-11-01 13:41:41', '2023-11-01 13:41:41', NULL),
(418, 'App\\Models\\User', 9, 'sLauZYU0', '358363b083806123b9682ea4472ad8da59568a0bfa69e2008171c2f034810a46', '[\"*\"]', NULL, '2023-11-01 13:41:44', '2023-11-01 13:41:44', NULL),
(419, 'App\\Models\\User', 9, 'ZDsFWNvu', '0d161ce7397c6dbf7576709cbfbbacf450a8e10531a131370f4569ad83281f6a', '[\"*\"]', NULL, '2023-11-01 13:41:44', '2023-11-01 13:41:44', NULL),
(420, 'App\\Models\\User', 9, 'TX2wCmWm', '0d1c906871d0d0fe100a31072f33b2a2873c95858137d17280f487963fd88496', '[\"*\"]', NULL, '2023-11-01 13:41:44', '2023-11-01 13:41:44', NULL),
(421, 'App\\Models\\User', 9, 'fXfdHNrN', '9e4b5ac2324a5874c445eaa9f804cbde1ce813a4adbd3729d39d9e437f7dbaff', '[\"*\"]', NULL, '2023-11-01 13:41:45', '2023-11-01 13:41:45', NULL),
(422, 'App\\Models\\User', 9, 'm5aRmLNE', '74a900c4ac0ee2d8d79afffef6e81e50ab05cf5b1ab13c6c8f3c4b8d9ed9419c', '[\"*\"]', NULL, '2023-11-01 13:41:45', '2023-11-01 13:41:45', NULL),
(423, 'App\\Models\\User', 9, 'nvsd6OYO', '35ae6a7a24b702e06c6fdc5b135e28506f62f8b54ef3918a8859ac66c214fea4', '[\"*\"]', NULL, '2023-11-01 13:41:46', '2023-11-01 13:41:46', NULL),
(424, 'App\\Models\\User', 9, 'Y2ZwHpUq', 'ec2538cb9e4d930c88d530385beb2538cb747a69b3e1c19b85d53044179f159a', '[\"*\"]', NULL, '2023-11-01 13:41:48', '2023-11-01 13:41:48', NULL),
(425, 'App\\Models\\User', 9, 'tlX8SooF', '5e4aaf370c1b432fc15952c066de8757e06d6b5ba3226a2b913dfc5286732e42', '[\"*\"]', NULL, '2023-11-01 13:41:48', '2023-11-01 13:41:48', NULL),
(426, 'App\\Models\\User', 9, 'UNHD8Ayb', 'f91f86025c9443275c001736cbda68a264668ddab452c2ed1aeacf663eefdb5b', '[\"*\"]', NULL, '2023-11-01 13:41:48', '2023-11-01 13:41:48', NULL),
(427, 'App\\Models\\User', 9, 'j2A25hJV', '7afb982346fccf9e6033f8fc7e46e3ccf79c1184c76a451ef0ca2c1db88adc9a', '[\"*\"]', NULL, '2023-11-01 13:41:49', '2023-11-01 13:41:49', NULL),
(428, 'App\\Models\\User', 9, '1p1tSGsp', '3c5673099e517d6ad2effdb898f0c862b5d0a80fc521b12485250ea9c93cf49c', '[\"*\"]', NULL, '2023-11-01 13:41:50', '2023-11-01 13:41:50', NULL),
(429, 'App\\Models\\User', 9, 'tCkFQJST', 'fc1dd9d14616484da56dbb27d1bcc914340da411eba2d1ce4ddc0ecbfc9b72a7', '[\"*\"]', NULL, '2023-11-01 13:41:50', '2023-11-01 13:41:50', NULL),
(430, 'App\\Models\\User', 9, '6UwbYxfH', 'd9f5975bbe4bd8442c4ddd9842df3a3a20b231b42e3593ece753a3bcc718df5b', '[\"*\"]', NULL, '2023-11-01 13:41:51', '2023-11-01 13:41:51', NULL),
(431, 'App\\Models\\User', 9, '1AYe9tY8', '8013dc44cb904c7fff3a8d0e7462b14e45da1955f7c7cd1e6c801e397316bb34', '[\"*\"]', NULL, '2023-11-01 13:41:51', '2023-11-01 13:41:51', NULL),
(432, 'App\\Models\\User', 9, 'hocVtimY', '872b19b94456b8255094f238d7c7c3d23c64f4d6b89f5869d09aa0ee02a71cf1', '[\"*\"]', NULL, '2023-11-01 13:41:51', '2023-11-01 13:41:51', NULL),
(433, 'App\\Models\\User', 9, 'LoaCCV3j', '281137155e8965cd03a56bfcee33ed51c5579446e7bc40a19506d3412932fe9c', '[\"*\"]', NULL, '2023-11-01 13:41:53', '2023-11-01 13:41:53', NULL),
(434, 'App\\Models\\User', 9, 'PigP2qGz', '5bed7a3740fe056e61678da667134ae1f8a7cf12caac0678515ab8f261cce5cc', '[\"*\"]', NULL, '2023-11-01 13:41:54', '2023-11-01 13:41:54', NULL),
(435, 'App\\Models\\User', 9, 'ErFC4DQh', 'a5357742f60c7952fd9ed05f734249349d5cd475e6cf1026dfbcadb2860e26ef', '[\"*\"]', NULL, '2023-11-01 13:41:56', '2023-11-01 13:41:56', NULL),
(436, 'App\\Models\\User', 9, 'yNDcDr5n', 'bdc2d5ecd84be5f37181a22660efcf48a79ce602950940d26fa59668b03ab496', '[\"*\"]', NULL, '2023-11-01 13:41:56', '2023-11-01 13:41:56', NULL),
(437, 'App\\Models\\User', 9, 's14W7sAH', '11b8e879c4d8c6c20e5c14d7e31f572e2cc6d08c7de30063b90b4f74aa5326c5', '[\"*\"]', NULL, '2023-11-01 13:41:57', '2023-11-01 13:41:57', NULL),
(438, 'App\\Models\\User', 9, 'gLdOqyoE', '72ecd94ae81a62dc187a68aa6ae7043da6c42d6401a475f5110d4decdf124409', '[\"*\"]', NULL, '2023-11-01 13:41:57', '2023-11-01 13:41:57', NULL),
(439, 'App\\Models\\User', 9, 'h251S51E', 'c06bac4890521b85b0cdf8bf47097d3a60860e1c277c1cb127c05aec933468b6', '[\"*\"]', NULL, '2023-11-01 13:41:57', '2023-11-01 13:41:57', NULL),
(440, 'App\\Models\\User', 9, 'm7jMUOiQ', '66ed62b71a844eef4fd82a2480a1aa61c9fbb98512b17e1ecffcd3895c28c051', '[\"*\"]', NULL, '2023-11-01 13:41:58', '2023-11-01 13:41:58', NULL),
(441, 'App\\Models\\User', 9, '6tOYZrfw', 'eb0369bb9e095320d2af9119b097716c39e0bee423bcf99c37ef209503a44abe', '[\"*\"]', NULL, '2023-11-01 13:41:58', '2023-11-01 13:41:58', NULL),
(442, 'App\\Models\\User', 9, 'XaWZSQ7b', '7925e22d2f015ea8ba11f4c0fe12f697d080add208fe447ff3de0ed127c7ae72', '[\"*\"]', NULL, '2023-11-01 13:42:00', '2023-11-01 13:42:00', NULL),
(443, 'App\\Models\\User', 9, 'zL8L4wFO', '7b5561dcbe5a40742a004f30398855472cbe5fa6794b7d5921fa664913eee19d', '[\"*\"]', NULL, '2023-11-01 13:42:05', '2023-11-01 13:42:05', NULL),
(444, 'App\\Models\\User', 9, 'x8f5ppsu', 'f0b807012edad4f6de9a451a8ae252ad2b03ac3b323a9902b27e23b9bb386c50', '[\"*\"]', NULL, '2023-11-01 13:42:07', '2023-11-01 13:42:07', NULL),
(445, 'App\\Models\\User', 9, '2yPmLVr4', '911aef38d7b6d5d2dae3f1fb805ca79e37678c96c581453d95ffce9a6c260a11', '[\"*\"]', NULL, '2023-11-01 13:42:08', '2023-11-01 13:42:08', NULL),
(446, 'App\\Models\\User', 9, 'PuJN4sQP', 'e8177fbdbb00b3d58912ec6198b9b3140c9b5314f82c05ef493b4af38175a6f2', '[\"*\"]', NULL, '2023-11-01 13:42:08', '2023-11-01 13:42:08', NULL),
(447, 'App\\Models\\User', 9, 'VXumknvB', 'e77463148141d22db3e611cddb24eb642a2387c75e6f483b738419882ffa689d', '[\"*\"]', NULL, '2023-11-01 13:42:10', '2023-11-01 13:42:10', NULL),
(448, 'App\\Models\\User', 9, 'dlvHeSHp', '4881b338428198896a8a88eef86e6d4a7c3759a2d31f9ce41b0cbd8dba42412b', '[\"*\"]', NULL, '2023-11-01 13:42:13', '2023-11-01 13:42:13', NULL),
(449, 'App\\Models\\User', 9, 'eiDxteY4', 'ba3e4cf625dd51fba207361b0b1a60eec28bec942d353319caed2eb2f7392fb5', '[\"*\"]', NULL, '2023-11-01 13:42:13', '2023-11-01 13:42:13', NULL),
(450, 'App\\Models\\User', 9, 'HVR25mE9', 'cec6543e67fc5b4625c4249aca5e52141f359e4cc2349561b5a2475e3e0dc552', '[\"*\"]', NULL, '2023-11-01 13:42:21', '2023-11-01 13:42:21', NULL),
(451, 'App\\Models\\User', 9, 'XsydV8Bv', 'ef6288f2aa9bf15de966281f6e9115576732c3fe5d3736a74b22f36700dec4e1', '[\"*\"]', NULL, '2023-11-01 13:42:23', '2023-11-01 13:42:23', NULL),
(452, 'App\\Models\\User', 9, 'uOHuLy3Z', 'ff93cd4908651208ab5ae9d26294c17ccce3765f15b3ff73ce707884103fd5f1', '[\"*\"]', NULL, '2023-11-01 13:42:24', '2023-11-01 13:42:24', NULL),
(453, 'App\\Models\\User', 9, 'vD2gdGh3', '49a09ef4d41d10beae4618ba438739a4d45923b4ca8e1e7cdc3fef8b73e0c215', '[\"*\"]', NULL, '2023-11-01 13:42:25', '2023-11-01 13:42:25', NULL),
(454, 'App\\Models\\User', 9, 'NcQqo4TX', '8d5682d80f791b9927ada7392bc46955c724a30fa41bcfdbe0847aef96eebe29', '[\"*\"]', NULL, '2023-11-01 13:42:25', '2023-11-01 13:42:25', NULL),
(455, 'App\\Models\\User', 9, 'V6oqJ6wC', 'd71af3688c5961f68550e1dca2516a41e035b48c5306ccc1c14c964b1c59c5ab', '[\"*\"]', NULL, '2023-11-01 13:42:26', '2023-11-01 13:42:26', NULL),
(456, 'App\\Models\\User', 9, '1PnVaSDA', 'bab115b4f539f52f88fed9f84a7c1c96b8dff1e31946eebaa2991f5baaad9369', '[\"*\"]', NULL, '2023-11-01 13:42:27', '2023-11-01 13:42:27', NULL),
(457, 'App\\Models\\User', 9, 'tsSqnbBU', 'b0870cfeeeac9df0d39e239bfc9cb04859a11147a0bb552d6a2c07d49b672a64', '[\"*\"]', NULL, '2023-11-01 13:42:27', '2023-11-01 13:42:27', NULL),
(458, 'App\\Models\\User', 9, 'PyTT2fJS', 'f6880cab3ee766213b95b36d06e86994c955488700ed241af0404d593f295b5c', '[\"*\"]', NULL, '2023-11-01 13:42:28', '2023-11-01 13:42:28', NULL),
(459, 'App\\Models\\User', 9, 'jq59kHyC', '008cd703ad946810e9e3473868ba25e7b16158ac47bc08a56b28e02892e2aee8', '[\"*\"]', NULL, '2023-11-01 13:42:29', '2023-11-01 13:42:29', NULL),
(460, 'App\\Models\\User', 9, 'QkjsKp4Z', '3d4eaca60456c50abeaa5071a02e279eb35a0cd43e8a75e2a5c18ff0e44c5b23', '[\"*\"]', NULL, '2023-11-01 13:42:30', '2023-11-01 13:42:30', NULL),
(461, 'App\\Models\\User', 9, 'Y5pkk3RG', '9d3c5c67044992a159cb213eb5511f60027caa946a074bc7cf4864b485546edc', '[\"*\"]', NULL, '2023-11-01 13:42:31', '2023-11-01 13:42:31', NULL),
(462, 'App\\Models\\User', 9, 'QMblAHNW', 'a51f320611f6d74004cf3459fb53466c922dc5069c43a5c1f501c38e80f6f264', '[\"*\"]', NULL, '2023-11-01 13:42:32', '2023-11-01 13:42:32', NULL),
(463, 'App\\Models\\User', 9, 'u2ACzeKJ', '84eb3cf7638e0f20b7396e36b83e798fc70a74038919dc6b30433e0a859ee158', '[\"*\"]', NULL, '2023-11-01 13:42:34', '2023-11-01 13:42:34', NULL),
(464, 'App\\Models\\User', 9, '4PKlQEY7', '0a50575f664e35c3080ec4e75b40dd5c3d4bb8e8388002b04cb964099771cfe3', '[\"*\"]', NULL, '2023-11-01 13:42:35', '2023-11-01 13:42:35', NULL),
(465, 'App\\Models\\User', 9, 'tR7mWIB4', 'e763911844887067e09a63747b8a284c10f6b8678fe70f9cab72dac69e7e3380', '[\"*\"]', NULL, '2023-11-01 13:42:36', '2023-11-01 13:42:36', NULL),
(466, 'App\\Models\\User', 9, 'cCikiMFF', 'fd536dc1df42eb5f7d4177b044414b89efe781977dd2df4341e1ffff419c1184', '[\"*\"]', NULL, '2023-11-01 13:42:37', '2023-11-01 13:42:37', NULL),
(467, 'App\\Models\\User', 9, 'wubPSHcd', '315e18c5448f776c609f86f66f314c0f343dcdff623a98c53e725579a16076f1', '[\"*\"]', NULL, '2023-11-01 13:42:42', '2023-11-01 13:42:42', NULL),
(468, 'App\\Models\\User', 9, 'sPI2xg0Q', 'd4023173c2d1eeae1f5ca1d782f3fd35f1af84e6a9cc2bbd2bd24c027d49fa52', '[\"*\"]', NULL, '2023-11-01 13:42:43', '2023-11-01 13:42:43', NULL),
(469, 'App\\Models\\User', 9, 'lruBIS8p', '48f28a57148b0fd7ce9a98f8ef1ae3c1baf96e3d0a8f3bad9d0b2b5176b9e918', '[\"*\"]', NULL, '2023-11-01 13:42:44', '2023-11-01 13:42:44', NULL),
(470, 'App\\Models\\User', 9, '74GTGfZ5', 'c18958fadd952bca43f580d3e8275e83b06fcb2536ffe2477831606cfc58e5b1', '[\"*\"]', NULL, '2023-11-01 13:42:45', '2023-11-01 13:42:45', NULL),
(471, 'App\\Models\\User', 9, 'dCjnvSFy', '79f900021691e449c99ea3dff46b5c76512b018c19c2cf9a140705fe28529bb4', '[\"*\"]', NULL, '2023-11-01 13:42:47', '2023-11-01 13:42:47', NULL),
(472, 'App\\Models\\User', 9, 'NfBEGnCO', 'f9e1891dfc981740b2c0dae44dad60534d89fe85d3934ee84abf3a459806be25', '[\"*\"]', NULL, '2023-11-01 13:42:51', '2023-11-01 13:42:51', NULL),
(473, 'App\\Models\\User', 9, 'z4pl3sPp', '76bcf83829d208ff95cb0f7ecd242b081eb122544d8c5f8593317898196aa8d6', '[\"*\"]', NULL, '2023-11-01 13:42:52', '2023-11-01 13:42:52', NULL),
(474, 'App\\Models\\User', 9, 'Kiid4wFG', 'ba2137af8a6d1da9a587e89d50aadf29b6b842118068b9b2257ac6ff86362a68', '[\"*\"]', NULL, '2023-11-01 13:42:53', '2023-11-01 13:42:53', NULL),
(475, 'App\\Models\\User', 9, 'aEtN89Jt', 'cbbd9ac32d65e89f0d0febb0a2c4bc35387bf454af4a51b7a9e67f25a9631288', '[\"*\"]', NULL, '2023-11-01 13:42:55', '2023-11-01 13:42:55', NULL),
(476, 'App\\Models\\User', 9, 'fsihvzEI', '2761e53c302c7a7ec933672d89a9f6977a50ac4ade7bb959542585ad28f41094', '[\"*\"]', NULL, '2023-11-01 13:42:55', '2023-11-01 13:42:55', NULL),
(477, 'App\\Models\\User', 9, 'fywahVF0', '11d0ed9a3a62ccbb8f44799a082a5c8e0bda649ddda28d68bed473b0e101afb1', '[\"*\"]', NULL, '2023-11-01 13:42:56', '2023-11-01 13:42:56', NULL),
(478, 'App\\Models\\User', 9, 'YYbu2p6v', '24808a62d10867549a44205b488b0e982d5f70123a15bd41b1b3b78cf359396c', '[\"*\"]', NULL, '2023-11-01 13:42:58', '2023-11-01 13:42:58', NULL),
(479, 'App\\Models\\User', 9, 'Qp0RbqkH', '1a6668381d90a6fb004863d3f2f61f2f711a5d73005adf0a3b9b11bbebe4e326', '[\"*\"]', NULL, '2023-11-01 13:43:00', '2023-11-01 13:43:00', NULL),
(480, 'App\\Models\\User', 9, 'xjRg1Cdo', '91efff96429c0a58fc288a12491f076d1f433df8ee1dc632f171b6b263d5a67c', '[\"*\"]', NULL, '2023-11-01 13:43:01', '2023-11-01 13:43:01', NULL),
(481, 'App\\Models\\User', 9, 'Ggioco6s', 'daeb77b60031efe2711b57f2ae44a054068098948dddc175e9ae36a6ba1f6c7f', '[\"*\"]', NULL, '2023-11-01 13:43:02', '2023-11-01 13:43:02', NULL),
(482, 'App\\Models\\User', 9, '3FZ3WncQ', '51f3020824668671f27ac44862d0d9dde0dc71ae585eddf4bb46d58587ddfea1', '[\"*\"]', NULL, '2023-11-01 13:43:03', '2023-11-01 13:43:03', NULL),
(483, 'App\\Models\\User', 9, 'MMKb6hSN', '8ec8ea5ad1703177d81843d7f8a2b89cdbc72a55d948db361657070875e8e6ac', '[\"*\"]', NULL, '2023-11-01 13:43:04', '2023-11-01 13:43:04', NULL),
(484, 'App\\Models\\User', 9, 'To0du5Q5', '227b5c18ce07dc30183d7b06fc6e0edbfb67a140df7e88cf387f1c832f855bca', '[\"*\"]', NULL, '2023-11-01 13:43:07', '2023-11-01 13:43:07', NULL),
(485, 'App\\Models\\User', 9, 'DVAOIUXq', '36d62117f3fcde902aa8f8bca814b3a1c41d6e334d5abdf53b9a35be1cae8778', '[\"*\"]', NULL, '2023-11-01 13:43:09', '2023-11-01 13:43:09', NULL),
(486, 'App\\Models\\User', 9, 'cEugVT6z', 'c9e2d7622793caf3e175f95774faddca5884714a93df0a7dc025c06e4283025a', '[\"*\"]', NULL, '2023-11-01 13:43:09', '2023-11-01 13:43:09', NULL),
(487, 'App\\Models\\User', 9, 'EdcUgIyC', 'eedb33cb0ef5b2120d3deb7e6e578447359503ce71e84e90de1b8c8b407a6e23', '[\"*\"]', NULL, '2023-11-01 13:43:10', '2023-11-01 13:43:10', NULL),
(488, 'App\\Models\\User', 9, '1ZGXqHXI', '7b266b126c93af0c9683fbec15b632c477cabd4fcf158ec398fcb292e5cfb652', '[\"*\"]', NULL, '2023-11-01 13:43:11', '2023-11-01 13:43:11', NULL),
(489, 'App\\Models\\User', 9, 'b4iJRvyV', 'ebfaddf48d77eca7d068ad14088c510344016a2c99fb512e30d05df7b8ea49fb', '[\"*\"]', NULL, '2023-11-01 13:43:11', '2023-11-01 13:43:11', NULL),
(490, 'App\\Models\\User', 9, 'qSD8i2XO', 'a74f256f0f4feadcd8850a0da9a8159202a786d3de4011c8d0085ca5a792221b', '[\"*\"]', NULL, '2023-11-01 13:43:11', '2023-11-01 13:43:11', NULL),
(491, 'App\\Models\\User', 9, 'SlVo1tmw', 'a5c25fdd6baef36746025983531ef462139f561125338059a8b15f1ec42768f9', '[\"*\"]', NULL, '2023-11-01 13:43:12', '2023-11-01 13:43:12', NULL),
(492, 'App\\Models\\User', 9, 'V15fvCkn', 'e3cb266f2fd958b5a959da9172662000a79328a3dc75fe6c7defcacaa9e351b3', '[\"*\"]', NULL, '2023-11-01 13:43:13', '2023-11-01 13:43:13', NULL),
(493, 'App\\Models\\User', 9, 'ZmB7vNwZ', '5f74289d8c38036347ea756abf028d66d59d3510cef8175fa5a92ef0da5396bc', '[\"*\"]', NULL, '2023-11-01 13:43:13', '2023-11-01 13:43:13', NULL),
(494, 'App\\Models\\User', 9, 'UEgXZXNN', '06096fef3cee26112f5ab790662e244f23e33b38de3bb393c60073884d7403dc', '[\"*\"]', NULL, '2023-11-01 13:43:14', '2023-11-01 13:43:14', NULL),
(495, 'App\\Models\\User', 9, 'dEHtDUtI', '6fe753ba3f9fd5708583a12a5ba5404efc20063d225208ff89454d6ea797af62', '[\"*\"]', NULL, '2023-11-01 13:43:15', '2023-11-01 13:43:15', NULL),
(496, 'App\\Models\\User', 9, 'xM0Y8Cwi', 'c9461674423606dc178e1f03158fb6ee6dc9cba736a2d2701ce8678fe92b152a', '[\"*\"]', NULL, '2023-11-01 13:43:16', '2023-11-01 13:43:16', NULL),
(497, 'App\\Models\\User', 9, 'atPYAFLS', '9852e0eed2ef5b0904e761627777644fe9193ae92364bb1c4b9cfc2a431c38d3', '[\"*\"]', NULL, '2023-11-01 13:43:16', '2023-11-01 13:43:16', NULL),
(498, 'App\\Models\\User', 9, '56yy3U6N', '5ac7fafb4494765f26d7feabaca5297b87c0062d8bbcdc0f1f64e081c5463f01', '[\"*\"]', NULL, '2023-11-01 13:43:17', '2023-11-01 13:43:17', NULL),
(499, 'App\\Models\\User', 9, 'DVSRKaUL', 'e078ec04a42ecd6c35728abbcea5e9f193a2c26052b638b32d7a3dfd7da1e83b', '[\"*\"]', NULL, '2023-11-01 13:43:18', '2023-11-01 13:43:18', NULL),
(500, 'App\\Models\\User', 9, 'PTzg2z8A', 'a655341ca72dc5500264fd10405edff4952e02c14b33036c92dcb53481cf9da9', '[\"*\"]', NULL, '2023-11-01 13:43:19', '2023-11-01 13:43:19', NULL),
(501, 'App\\Models\\User', 9, 'x62s6Glk', 'eb16e4964d0c154b4d7a9bf155a700fb808fc6ff5350e7fff31f7608f69cca92', '[\"*\"]', NULL, '2023-11-01 13:43:20', '2023-11-01 13:43:20', NULL),
(502, 'App\\Models\\User', 9, 'uieqsCzB', 'e8df3c6bcef4c464b4eedb33acefdb87866d41c3d482bf48786513b2252d9362', '[\"*\"]', NULL, '2023-11-01 13:43:21', '2023-11-01 13:43:21', NULL),
(503, 'App\\Models\\User', 9, 'yJ6ouLH2', '05e053ea6dbdf3aad46284d0e5ee0d7fa09bb7a50d7818eebe5f1608f2ad103b', '[\"*\"]', NULL, '2023-11-01 13:43:23', '2023-11-01 13:43:23', NULL),
(504, 'App\\Models\\User', 9, 'VaPP5Ai8', '1fdcefd7bc5df63c2994b1853aa7a5238969a3b56a4e4658c31461ca3e7a662c', '[\"*\"]', NULL, '2023-11-01 13:43:24', '2023-11-01 13:43:24', NULL),
(505, 'App\\Models\\User', 9, 'aBU6KUSV', '6ce4598046908373ffba6666ec019e8cf487c2e0497f51162f602138b6f4e389', '[\"*\"]', NULL, '2023-11-01 13:43:25', '2023-11-01 13:43:25', NULL),
(506, 'App\\Models\\User', 9, 'C2FQp8yC', '07814ddf7da3491427a849302dc3507d5dc361124df97604f406cb2106d9c32f', '[\"*\"]', NULL, '2023-11-01 13:43:26', '2023-11-01 13:43:26', NULL),
(507, 'App\\Models\\User', 9, 'QILPwS77', 'ea46db7ee6737bac732d862f409683042f86c5bfbed549c4e09714d78a4f5a2b', '[\"*\"]', NULL, '2023-11-01 13:43:26', '2023-11-01 13:43:26', NULL),
(508, 'App\\Models\\User', 9, 'PinexSkw', '996807b0bbf4b4f6536fd4c18bcb3ee634fb990ff7a82da789ad0c32b52291be', '[\"*\"]', NULL, '2023-11-01 13:43:27', '2023-11-01 13:43:27', NULL),
(509, 'App\\Models\\User', 9, 'I77ktClo', 'd34f48ddbb2a6e1b64048f095825b9ffe69a9329f8e91af909eb582ccbdb8d55', '[\"*\"]', NULL, '2023-11-01 13:43:28', '2023-11-01 13:43:28', NULL),
(510, 'App\\Models\\User', 9, 'sVuIGDL5', '471ad20624f2df29c05d4901108062aba26a8b24a61d48aad2be676cb0e8f3d6', '[\"*\"]', NULL, '2023-11-01 13:43:29', '2023-11-01 13:43:29', NULL),
(511, 'App\\Models\\User', 9, 'tungpNFk', 'a6c9ee2eec80839ab678472c3797f70ab81a57fad30bb198b629a5cb0553cd2a', '[\"*\"]', NULL, '2023-11-01 13:43:29', '2023-11-01 13:43:29', NULL),
(512, 'App\\Models\\User', 9, 'IeBJjYMk', '9f9d44689d74f57e58fdb29ab4b1b9b2d59d55c85bde99a48ebedafe8743ca02', '[\"*\"]', NULL, '2023-11-01 13:43:30', '2023-11-01 13:43:30', NULL),
(513, 'App\\Models\\User', 9, 'q8bxRk35', '88e9663f7b4f0c0245e7e7996bbcedf157b37dd6f945f6adc29b087e4e581e6b', '[\"*\"]', NULL, '2023-11-01 13:43:31', '2023-11-01 13:43:31', NULL),
(514, 'App\\Models\\User', 9, 'ryjpKhwW', '6a64a2c14a24f45ee48b3a46c3392b3e42579406eb4fd6e1048d1097e3aa3822', '[\"*\"]', NULL, '2023-11-01 13:43:31', '2023-11-01 13:43:31', NULL),
(515, 'App\\Models\\User', 9, 'vNLN64xN', '4ad9ad59a74c4998d375225609eb38e8223e1581aa270cec2316d319d3ff4339', '[\"*\"]', NULL, '2023-11-01 13:43:32', '2023-11-01 13:43:32', NULL),
(516, 'App\\Models\\User', 9, 'DF35vpxV', '5ec9a4e099c1700a449d8b115cc237070df41f12923ee8d95d0aefc48eae3cd9', '[\"*\"]', NULL, '2023-11-01 13:43:33', '2023-11-01 13:43:33', NULL),
(517, 'App\\Models\\User', 9, 'sRZrY300', '666fe7352c0c131f90d12de24f204b8a38f999e09bd752dc242a08e4d3c9a564', '[\"*\"]', NULL, '2023-11-01 13:43:34', '2023-11-01 13:43:34', NULL),
(518, 'App\\Models\\User', 9, 'JLAfuLJY', '28816049bf048d8da123b0e1d0d5bff1c5a1f000e9bede5fe43a36d000fb4935', '[\"*\"]', NULL, '2023-11-01 13:43:35', '2023-11-01 13:43:35', NULL),
(519, 'App\\Models\\User', 9, 'TcOjexe4', 'd45da18cbd5930d9edd5fe00da1b124a3ddc82b05fe7e47972aee8d775875d8c', '[\"*\"]', NULL, '2023-11-01 13:43:36', '2023-11-01 13:43:36', NULL),
(520, 'App\\Models\\User', 9, 'a3zeC8Rr', '657d1c07779c0eaeeb36f030094ccfd86acee264a8e4a0e26c4b7838ec5f41bd', '[\"*\"]', NULL, '2023-11-01 13:43:36', '2023-11-01 13:43:36', NULL),
(521, 'App\\Models\\User', 9, 'Rb35rR0x', 'd58b990084b9ff04618e026e36b92584018e9b59d3ef4e29acf4375a1ac560a8', '[\"*\"]', NULL, '2023-11-01 13:43:37', '2023-11-01 13:43:37', NULL),
(522, 'App\\Models\\User', 9, '3PqFCJ9M', '5a307c900d947d20e5a0e2e8dbc4cd0ef7234c437d0b5e1ce4ed16b22d0eab5e', '[\"*\"]', NULL, '2023-11-01 13:43:38', '2023-11-01 13:43:38', NULL),
(523, 'App\\Models\\User', 9, '22tTGNYX', '8b9e024232cdc9a6112d014b5be88a5a08c605eda986109c6b77e593606210eb', '[\"*\"]', NULL, '2023-11-01 13:43:39', '2023-11-01 13:43:39', NULL),
(524, 'App\\Models\\User', 9, 'zINrDE2S', '434ad5bc982c2c3f9d23b5ab062cc88622a0580d323060812a2f483cab860ffe', '[\"*\"]', NULL, '2023-11-01 13:45:29', '2023-11-01 13:45:29', NULL),
(525, 'App\\Models\\User', 9, 'HE2UgQkq', 'dadf2bfa3717d975419c528a24cd943a7dfda72ec412e727e5a1ab7739689533', '[\"*\"]', NULL, '2023-11-01 13:45:29', '2023-11-01 13:45:29', NULL),
(526, 'App\\Models\\User', 9, 'CbxmbcfM', '872e128c59e9c5930e4a206235994f8a7f3d342dec2b341bb5e9e43a6c46e488', '[\"*\"]', NULL, '2023-11-01 13:50:00', '2023-11-01 13:50:00', NULL),
(527, 'App\\Models\\User', 9, 'GLcQfdio', '91da32ee597c7d1cf6bf1b1b966676bd2013377390094239b789a2b3b27931f3', '[\"*\"]', NULL, '2023-11-01 13:50:01', '2023-11-01 13:50:01', NULL),
(528, 'App\\Models\\User', 9, 'AL99c1YG', '4165e8ccd3e307f84f4ed6b63e52c54cbc03781202254d65bbbaf855848be986', '[\"*\"]', NULL, '2023-11-01 13:50:02', '2023-11-01 13:50:02', NULL),
(529, 'App\\Models\\User', 9, 'hHeNYXTQ', '2bad441943f1db5cb18177cb25c994c913b621dceeee31b5a1863cae4a000b5e', '[\"*\"]', NULL, '2023-11-01 13:50:02', '2023-11-01 13:50:02', NULL),
(530, 'App\\Models\\User', 9, 'f8V2feo4', 'ef06f4da94391c880c20d72bc3b026008643d30ae120588658dbb83fba2c131f', '[\"*\"]', NULL, '2023-11-01 13:50:03', '2023-11-01 13:50:03', NULL),
(531, 'App\\Models\\User', 9, 'qZNp073C', '6109b279e0598d1e55ce15e8d98357e8e0b2603c664522829fda2e2b91ec4be8', '[\"*\"]', NULL, '2023-11-01 13:50:04', '2023-11-01 13:50:04', NULL),
(532, 'App\\Models\\User', 9, 'NNpPmgID', 'bc6cd2adac9acf91e5c6aa78058a7258c1800d87312e26868d6e2fd443d35321', '[\"*\"]', NULL, '2023-11-01 13:50:04', '2023-11-01 13:50:04', NULL),
(533, 'App\\Models\\User', 9, 'KDzGr3M3', '30f738d39aacfe6b15e0dd037bb7d230b209aff541e3b0db6d670a6a810ea823', '[\"*\"]', NULL, '2023-11-01 13:50:05', '2023-11-01 13:50:05', NULL),
(534, 'App\\Models\\User', 9, 'x9fqSoCN', '52ad141d3dea7d5b0dd2383bae39d7f54ac73e83de51288433709febd034d55d', '[\"*\"]', NULL, '2023-11-01 13:50:06', '2023-11-01 13:50:06', NULL),
(535, 'App\\Models\\User', 9, 'pcz2lLIE', '8fd00d4d2fef70bcfe344278e219de5a42d5445d91109b48f590d0af0cb04066', '[\"*\"]', NULL, '2023-11-01 13:50:06', '2023-11-01 13:50:06', NULL),
(536, 'App\\Models\\User', 9, 'RZZvjDq2', '7816052cfe81c3fc9983df0545fc04713349ead6d83f8ec3f8735673727f5d0a', '[\"*\"]', NULL, '2023-11-01 13:50:07', '2023-11-01 13:50:07', NULL),
(537, 'App\\Models\\User', 9, 'rNFGQYFI', 'b131d1a98bb7365fbf62e172a883186bac8c92c270db95cfaf5fbea0505be1bb', '[\"*\"]', NULL, '2023-11-01 13:50:07', '2023-11-01 13:50:07', NULL),
(538, 'App\\Models\\User', 9, 'USb0Saek', '2fce13a368bf14ee2348f1d8bb5f6d298b22767c65de48f9c180f559e2417952', '[\"*\"]', NULL, '2023-11-01 13:50:08', '2023-11-01 13:50:08', NULL),
(539, 'App\\Models\\User', 9, '0JSShd59', '1d827aca629475f330f670f76617125f17712b4c3add50d0901d65fc572196fd', '[\"*\"]', NULL, '2023-11-01 13:50:09', '2023-11-01 13:50:09', NULL),
(540, 'App\\Models\\User', 9, 'gv39rA3T', '8a121b8e1f20495d5230acfc0f53ad739694e21c4ae5e934f7d947b10a79aedc', '[\"*\"]', NULL, '2023-11-01 13:50:09', '2023-11-01 13:50:09', NULL),
(541, 'App\\Models\\User', 9, 'Bmu4WkhT', 'a8d53e2824ccef7f8d3fc6a330ee1e8385365f98d878cf524d0e173164018a5f', '[\"*\"]', NULL, '2023-11-01 13:50:10', '2023-11-01 13:50:10', NULL),
(542, 'App\\Models\\User', 9, 'VLYdL8sV', 'fd35a4e9c81f861045ec5c9073844f8bb62605cf56e6ed758dfe3501dcc1ecfc', '[\"*\"]', NULL, '2023-11-01 13:50:10', '2023-11-01 13:50:10', NULL),
(543, 'App\\Models\\User', 9, 'aJizYXU9', 'e0e1dec96501f3c91a12fb08e8dcea520384c22778ec91dc78fab3e2f680732c', '[\"*\"]', NULL, '2023-11-01 13:50:11', '2023-11-01 13:50:11', NULL),
(544, 'App\\Models\\User', 9, '9H30J3Tx', 'daa472e7fef344dffa689e26bf8ed6799f06bdb824e3d32d9b52fdf4d7ae79bd', '[\"*\"]', NULL, '2023-11-01 13:50:11', '2023-11-01 13:50:11', NULL),
(545, 'App\\Models\\User', 9, 'HhQFhB1t', '33e76f2337457351b2f3422552fd138b72165cc9f74d2888fb887da196c513ab', '[\"*\"]', NULL, '2023-11-01 13:50:12', '2023-11-01 13:50:12', NULL),
(546, 'App\\Models\\User', 9, 'nxTbzSFh', '131dc278f83223e0e59504b703e71e09221f170fcf54f3a065e20c2f2aa8e03f', '[\"*\"]', NULL, '2023-11-01 13:50:13', '2023-11-01 13:50:13', NULL),
(547, 'App\\Models\\User', 9, 'iZ35t5iP', '925cac4d19e39d98d285ce0be9e9e4cc399d06a67a6f22c69021e43a61c31169', '[\"*\"]', NULL, '2023-11-01 13:50:13', '2023-11-01 13:50:13', NULL),
(548, 'App\\Models\\User', 9, 'ryDwBBjR', '49abc2a905ec0fce88afa7cc2839009ef7cb1a24f767591b7874329f004c7f49', '[\"*\"]', NULL, '2023-11-01 13:50:14', '2023-11-01 13:50:14', NULL),
(549, 'App\\Models\\User', 9, 'gEagJWfo', 'cd6499bd8c85370461449004f2add08bd6e66ce7f8d2a4271275afa8a573bce4', '[\"*\"]', NULL, '2023-11-01 13:50:15', '2023-11-01 13:50:15', NULL),
(550, 'App\\Models\\User', 9, 'PgPYPSw7', '0565f1201f138a2758beee790778264abde15e8862b59366cac702c942eaf938', '[\"*\"]', NULL, '2023-11-01 13:50:15', '2023-11-01 13:50:15', NULL),
(551, 'App\\Models\\User', 9, '0qkrtSCn', '20bbffc3607f7ab845622b0fb1e3b70dffc7f9a8413f017d38322c5312109005', '[\"*\"]', NULL, '2023-11-01 13:50:16', '2023-11-01 13:50:16', NULL),
(552, 'App\\Models\\User', 9, 'Hz8XT3bO', '7507b96c7d4aa36291ada9d3326f58ec7ccca0cbb1cf711da559fb979994c21b', '[\"*\"]', NULL, '2023-11-01 13:50:16', '2023-11-01 13:50:16', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(553, 'App\\Models\\User', 9, 'GZQFy2s8', '2d7739f47273ebb0532dc6ac6892f7529808c6ef7d92356a02d4b18417e0bce6', '[\"*\"]', NULL, '2023-11-01 13:50:17', '2023-11-01 13:50:17', NULL),
(554, 'App\\Models\\User', 9, 'IFxbuUlj', 'f4e68d04c9f136258f19d0e3bb93ee9c711202c3f26089de347a3845c5a3950c', '[\"*\"]', NULL, '2023-11-01 13:50:17', '2023-11-01 13:50:17', NULL),
(555, 'App\\Models\\User', 9, 'xVyC67KK', 'e3434a718482bc663cc630df42314e3981ee54a425bec6e974b1af8f244deff0', '[\"*\"]', NULL, '2023-11-01 13:50:18', '2023-11-01 13:50:18', NULL),
(556, 'App\\Models\\User', 9, 'OXFjcxv2', 'f3055ce1106d634bffe99edec94b3daca2bb30e44e522e13b9c212842536b824', '[\"*\"]', NULL, '2023-11-01 13:50:19', '2023-11-01 13:50:19', NULL),
(557, 'App\\Models\\User', 9, 'yrM54ICH', '17f4f6538b730613892778b25b25858f5019d5f6bce89350ac736c9f6bdc12e0', '[\"*\"]', NULL, '2023-11-01 13:50:19', '2023-11-01 13:50:19', NULL),
(558, 'App\\Models\\User', 9, 'lEqar5jv', '89bb760fd7f05e0228dea4c27b12c6eedcb5c50362c98b46ae08d4fa055b4ed9', '[\"*\"]', NULL, '2023-11-01 13:50:20', '2023-11-01 13:50:20', NULL),
(559, 'App\\Models\\User', 9, 'dKs6V3Di', 'cf419891488c7662c0f7e451db5c7592388649b5a353ad29f61bc4bc1f9cc987', '[\"*\"]', NULL, '2023-11-01 13:50:20', '2023-11-01 13:50:20', NULL),
(560, 'App\\Models\\User', 9, 'vwtPV5P3', '67095882f50785515b8070e68ab48e5ddde3afb21b6163b7f760ddcd870658e0', '[\"*\"]', NULL, '2023-11-01 13:50:21', '2023-11-01 13:50:21', NULL),
(561, 'App\\Models\\User', 9, 'xIJUvrKo', '4673f8ef36bddab0d1e8e7ebddad86de7eb644901f3484389f5edbadb167f0f1', '[\"*\"]', NULL, '2023-11-01 13:50:22', '2023-11-01 13:50:22', NULL),
(562, 'App\\Models\\User', 9, 'Ak1NosrO', '9a6e3fe4eeadd749ac969e017e5fb3bd93f006e2e705852c15f62390e54154d5', '[\"*\"]', NULL, '2023-11-01 13:50:22', '2023-11-01 13:50:22', NULL),
(563, 'App\\Models\\User', 9, 'KFLaMAcA', '90811319c12aaa9496f7b14233a0e8990ebece4f4e9cf1ebd1d62bb4360d041d', '[\"*\"]', NULL, '2023-11-01 13:50:23', '2023-11-01 13:50:23', NULL),
(564, 'App\\Models\\User', 9, '5nDp2Bkf', '44665c6f23956844e6a586c61bae46b5a1222a8bed990b18a8538b4cb9d5bac7', '[\"*\"]', NULL, '2023-11-01 13:50:23', '2023-11-01 13:50:23', NULL),
(565, 'App\\Models\\User', 9, '5MFJXRaf', '7e199bd09f4c6f055226d6a70c35e0bb3bc1b49ede2db8139fa309a35f70777a', '[\"*\"]', NULL, '2023-11-01 13:50:24', '2023-11-01 13:50:24', NULL),
(566, 'App\\Models\\User', 9, 'hcrUlkJ1', '6b9fcde26a25678266310db58bd54d963341750a9966499b0915743ebc93845a', '[\"*\"]', NULL, '2023-11-01 13:50:25', '2023-11-01 13:50:25', NULL),
(567, 'App\\Models\\User', 9, 'WFiqtNs9', 'dc3e54ef27283220609cc89627147398baf335cf9a1a3a7d16c30d3889763b96', '[\"*\"]', NULL, '2023-11-01 13:50:25', '2023-11-01 13:50:25', NULL),
(568, 'App\\Models\\User', 9, 'CcbhAfsm', '80b503e23c416d5cff7a812de9b6e11a0d559e85a57183cddaa3d370ca6caa22', '[\"*\"]', NULL, '2023-11-01 13:50:26', '2023-11-01 13:50:26', NULL),
(569, 'App\\Models\\User', 9, 'DDt0ZUvK', '2449ada145073bb9fed02df52f103f093a8d08fb102117a2e27aea49ac664cc5', '[\"*\"]', NULL, '2023-11-01 13:50:26', '2023-11-01 13:50:26', NULL),
(570, 'App\\Models\\User', 9, 'HTATJkdV', '76cd41bac8ac9af28af9534f112037f4d070bfc12706dbcfa02e55b33fd7365c', '[\"*\"]', NULL, '2023-11-01 13:50:27', '2023-11-01 13:50:27', NULL),
(571, 'App\\Models\\User', 9, 'vo00LXau', 'fb6775d825d7e5d6ed2587226f79ffa6d77bfb602711806c34070287756d8e62', '[\"*\"]', NULL, '2023-11-01 13:50:28', '2023-11-01 13:50:28', NULL),
(572, 'App\\Models\\User', 9, 'zUBfB7TF', '8fb422284a67afaabf5642721cbd7f8e0ff0f4f2a110e5c38d5828d09b1fc3ae', '[\"*\"]', NULL, '2023-11-01 13:50:28', '2023-11-01 13:50:28', NULL),
(573, 'App\\Models\\User', 9, 'N0LxFxDM', 'b08945ba6861bfc7696dfb0467a88e2ddf11b576d5719fcc09af9283aff05a0f', '[\"*\"]', NULL, '2023-11-01 13:50:29', '2023-11-01 13:50:29', NULL),
(574, 'App\\Models\\User', 9, 'BkyskO1r', 'c2e41da95e21c6d63369ee925c132dd1e0f7b9d854e06789a0b3f57021e7539e', '[\"*\"]', NULL, '2023-11-01 13:50:29', '2023-11-01 13:50:29', NULL),
(575, 'App\\Models\\User', 9, '3dOOJ6zQ', '9a333e00b718afeac63df19194c42019ac25ccead64e84c01ac53a0559aa467c', '[\"*\"]', NULL, '2023-11-01 13:50:30', '2023-11-01 13:50:30', NULL),
(576, 'App\\Models\\User', 9, '9yjU8glB', '3f2277965a11e8cefd56640b0b5a7dae92a77f60a25c6c6dd5b2050d3271de6c', '[\"*\"]', NULL, '2023-11-01 13:50:31', '2023-11-01 13:50:31', NULL),
(577, 'App\\Models\\User', 9, 'Ap0BaQX0', 'a762dabfd8366605161e62a9a10828234aff65e6afdb37f2154fb8a84f5bc0fd', '[\"*\"]', NULL, '2023-11-01 13:50:31', '2023-11-01 13:50:31', NULL),
(578, 'App\\Models\\User', 9, 'Ua44Kg3n', '5cabbae2d5ccf6f36384e8ad48dcf79520abc319ad8e7ed8ddd6da00f3c6ed9f', '[\"*\"]', NULL, '2023-11-01 13:50:32', '2023-11-01 13:50:32', NULL),
(579, 'App\\Models\\User', 9, '1FtNadgt', '34fc80fc686ccb31d5a2833856f34f0bf2dc755eca4c9f3a53eade3697a27d8d', '[\"*\"]', NULL, '2023-11-01 13:50:33', '2023-11-01 13:50:33', NULL),
(580, 'App\\Models\\User', 9, 'd3DBFVae', 'fa38e0685ee0feecf3147934c1a7288b1889bf6b7a113201e6c9129bacbad12c', '[\"*\"]', NULL, '2023-11-01 13:50:33', '2023-11-01 13:50:33', NULL),
(581, 'App\\Models\\User', 9, '4CAjUIar', '23bef46251a123a2e9e90314c40aca873f0c102e19e485426349602680591f72', '[\"*\"]', NULL, '2023-11-01 13:50:34', '2023-11-01 13:50:34', NULL),
(582, 'App\\Models\\User', 9, 'RcUduoOR', 'aa2fe392760ad4bc37216af1c019759708ed826953b0a1ca28f7920a9e05bec3', '[\"*\"]', NULL, '2023-11-01 13:50:35', '2023-11-01 13:50:35', NULL),
(583, 'App\\Models\\User', 9, '8NQvS7nk', '2c33e3c577e35c7b76cd3342407ee5c821036d518905c27cdbe50405273d66dc', '[\"*\"]', NULL, '2023-11-01 13:50:35', '2023-11-01 13:50:35', NULL),
(584, 'App\\Models\\User', 9, 'cQ6sddZd', '5677c2f558c7aac3683e3cc6d5ca4cc9fbdb0e077d0a915b0e83e9d0797f0405', '[\"*\"]', NULL, '2023-11-01 13:50:36', '2023-11-01 13:50:36', NULL),
(585, 'App\\Models\\User', 9, 'bSxwKgBZ', '54cbb9553a90a94a6dbae54354a5ea28e269d6a288d8796bc48fa26391e53cd5', '[\"*\"]', NULL, '2023-11-01 13:58:07', '2023-11-01 13:58:07', NULL),
(586, 'App\\Models\\User', 9, 'KHYrwA3c', '8f88f28d1beff5460204333877c344e4957dff0fb843c511d3c56b1a5f3ed181', '[\"*\"]', NULL, '2023-11-01 13:58:09', '2023-11-01 13:58:09', NULL),
(587, 'App\\Models\\User', 9, 'jv99bioV', '5c41fe8d8947df7d0ef1eb8d718055e974ff921f8b0fb2f8d0c8daf4b2e5a3cc', '[\"*\"]', NULL, '2023-11-01 13:58:10', '2023-11-01 13:58:10', NULL),
(588, 'App\\Models\\User', 9, 'MXNlxvhA', '0c31edd2672cb5ab7ff19131b093e02ef831f9e257121afd2f578546afeeb861', '[\"*\"]', NULL, '2023-11-01 13:58:11', '2023-11-01 13:58:11', NULL),
(589, 'App\\Models\\User', 9, '3cZoU8KY', '7fdc9f1e72a0015ad1a031fc726168b9b758232eb46c9c4a0300fff192565d22', '[\"*\"]', NULL, '2023-11-01 13:58:12', '2023-11-01 13:58:12', NULL),
(590, 'App\\Models\\User', 9, '2sQVZvfu', '1fdbe3e5319c57f2630d379b6d7e5eaad7bfeb6de8aafe6c05963c2ac43a109b', '[\"*\"]', NULL, '2023-11-01 13:58:13', '2023-11-01 13:58:13', NULL),
(591, 'App\\Models\\User', 9, 'zYhWeTw2', 'f704b3caa4743cb6b1a792ea35480c789f85e1a1b38b3103e3fc6831e3f1f012', '[\"*\"]', NULL, '2023-11-01 13:58:15', '2023-11-01 13:58:15', NULL),
(592, 'App\\Models\\User', 9, 'rRgjK5y8', '788b6787b8bc8664b93e8d1c563339b5d71347e0518854d317b858fbca177c53', '[\"*\"]', NULL, '2023-11-01 13:58:18', '2023-11-01 13:58:18', NULL),
(593, 'App\\Models\\User', 9, 'up7hZ6ED', '41f318c9317e24593cf97b63af41345d8bda37b5ae648ec150b9f3a435a6b0e7', '[\"*\"]', NULL, '2023-11-01 13:58:19', '2023-11-01 13:58:19', NULL),
(594, 'App\\Models\\User', 9, 'IHPMiSeg', '7d1f12027bc4bd326f96f35942ffdf2f66286f7f2aa007d824c3356555136bcf', '[\"*\"]', NULL, '2023-11-01 13:58:20', '2023-11-01 13:58:20', NULL),
(595, 'App\\Models\\User', 9, '3QQxn0Mf', '4b1e7007cefe6dc39dbb84aefdbac24b93109134ade2d65ef511005d27d282a8', '[\"*\"]', NULL, '2023-11-01 13:58:20', '2023-11-01 13:58:20', NULL),
(596, 'App\\Models\\User', 9, 'JfoBgReG', 'e420b3797a919c1e4ed64e776bcd0274506be6a2a98ffa2620f65945d9f60c8d', '[\"*\"]', NULL, '2023-11-01 13:58:21', '2023-11-01 13:58:21', NULL),
(597, 'App\\Models\\User', 9, 'zZSsXiaB', '2bc107f6c0962c3cdad89751c6fc1fa0189853519eba1d7e2d345b844b77df08', '[\"*\"]', NULL, '2023-11-01 13:58:24', '2023-11-01 13:58:24', NULL),
(598, 'App\\Models\\User', 9, '5SoUbW8h', 'a6ff0e7d2d96290c8069ffa9b60d357c475d530304ee42472b530c8314398b3f', '[\"*\"]', NULL, '2023-11-01 13:58:27', '2023-11-01 13:58:27', NULL),
(599, 'App\\Models\\User', 9, 'iTODvnMJ', '7bd69faa95c8eb6dc2f117166b38bf238f840effd7add95f8b67f7e6c2d9ae02', '[\"*\"]', NULL, '2023-11-01 13:58:29', '2023-11-01 13:58:29', NULL),
(600, 'App\\Models\\User', 9, 'vDsNYapm', 'a45b519fdf0e7f82f8e8b1227dd5f592cd332ef7c4620e57f7b5fa447360a861', '[\"*\"]', NULL, '2023-11-01 13:58:30', '2023-11-01 13:58:30', NULL),
(601, 'App\\Models\\User', 9, '08OjLXfs', '19a0412ca5928935a793b1101f459ae66223df8876be61ca7a48703c5950fc9c', '[\"*\"]', NULL, '2023-11-01 13:58:31', '2023-11-01 13:58:31', NULL),
(602, 'App\\Models\\User', 9, '0bDu0dcf', 'ba3aa949d288f8fd37dddc3f87a197dff1ee732c6a2253b7b8b3717e88e3735c', '[\"*\"]', NULL, '2023-11-01 13:58:33', '2023-11-01 13:58:33', NULL),
(603, 'App\\Models\\User', 9, '2huF8Bup', '5d84074228ce07bcb5db2752f8349e173bac00b62d61e0934590fa822d8647c1', '[\"*\"]', NULL, '2023-11-01 13:58:34', '2023-11-01 13:58:34', NULL),
(604, 'App\\Models\\User', 9, 'VuzdIpNj', 'f19733785f260fddaa0c758ed683b2c324a25251919622aee9075721bbea362d', '[\"*\"]', NULL, '2023-11-01 13:58:37', '2023-11-01 13:58:37', NULL),
(605, 'App\\Models\\User', 9, 'kHWhxSmk', '52e7600eff4cd951c800798ddcb1c9f1fa2a86d62372eac42e05b3e2d8b2677c', '[\"*\"]', NULL, '2023-11-01 13:58:39', '2023-11-01 13:58:39', NULL),
(606, 'App\\Models\\User', 9, 'Yvejfv0b', '3406a65f62e0d2d297cc9e4b884706163ade7f528cca599b9c126c8d7afc6389', '[\"*\"]', NULL, '2023-11-01 13:58:40', '2023-11-01 13:58:40', NULL),
(607, 'App\\Models\\User', 9, 'TIOpGoM0', '5c6ae2600dcd25955f088458ff01a5809deb994e8b21b822a77009949b793755', '[\"*\"]', NULL, '2023-11-01 13:58:40', '2023-11-01 13:58:40', NULL),
(608, 'App\\Models\\User', 9, 'gWO75aLT', 'e298bb04d2dee786e2a501db493b5547b5f56f74f2191150fb17bb0cc4218699', '[\"*\"]', NULL, '2023-11-01 13:58:49', '2023-11-01 13:58:49', NULL),
(609, 'App\\Models\\User', 9, 'nGiq3J5g', '76efc0257e55f48e558945beeaa00447511b277bf2ae699e831ce515797d1968', '[\"*\"]', NULL, '2023-11-01 13:58:50', '2023-11-01 13:58:50', NULL),
(610, 'App\\Models\\User', 9, 'WovoIDoD', '3f322215b7d20f92be6c96307c65dcae606dbfe469c90c0fee6807f93c4c9a87', '[\"*\"]', NULL, '2023-11-01 13:58:50', '2023-11-01 13:58:50', NULL),
(611, 'App\\Models\\User', 9, 'TgFfSzJh', '5d4c2a8990e964b86b9d83712eee4df6fd13fcd7d860d71cea7bae6837371f6d', '[\"*\"]', NULL, '2023-11-01 13:58:50', '2023-11-01 13:58:50', NULL),
(612, 'App\\Models\\User', 9, 'W541tVRv', '0d7c118126a6e8b6bc7051fa799bf3639c11abd1bdba708e0c4ffa04dd5493f6', '[\"*\"]', NULL, '2023-11-01 13:58:50', '2023-11-01 13:58:50', NULL),
(613, 'App\\Models\\User', 9, 'lEfuisxz', '597b1c5610c93cf6ab3b06f5bbfe7474a4f8131f21b9b04d539ceacd3d0f538b', '[\"*\"]', NULL, '2023-11-01 13:58:51', '2023-11-01 13:58:51', NULL),
(614, 'App\\Models\\User', 9, '1ERFAbg1', 'a5d7502f74c9fcafff0788896e9a3e799051c926d18f59b8db05eeeccbc9b6fe', '[\"*\"]', NULL, '2023-11-01 13:58:51', '2023-11-01 13:58:51', NULL),
(615, 'App\\Models\\User', 9, 'CeEPQP32', '7127aa39d1322077fa806595f0e1e6e72f966eca61b33a8f9115a74da0cc01a9', '[\"*\"]', NULL, '2023-11-01 13:58:52', '2023-11-01 13:58:52', NULL),
(616, 'App\\Models\\User', 9, 'fG6rvdkr', 'e8dd7057b46217c436756cbefe16f88e5bfbd066d76dc2c79cb5146323ca131c', '[\"*\"]', NULL, '2023-11-01 13:58:52', '2023-11-01 13:58:52', NULL),
(617, 'App\\Models\\User', 9, 'VEemFrvy', '34dbe53e87a8c4e5de4ec5feb19b3aa80b6508ac312f6cac3c10518506fece32', '[\"*\"]', NULL, '2023-11-01 13:58:52', '2023-11-01 13:58:52', NULL),
(618, 'App\\Models\\User', 9, '15LLD74L', '0785e269b3c87ee99dc4adb5d3a19ce0f6291d8d968ee171dbebecc7101852ca', '[\"*\"]', NULL, '2023-11-01 13:58:52', '2023-11-01 13:58:52', NULL),
(619, 'App\\Models\\User', 9, '3rIu6pZQ', 'dc83b4639ff18838371f38c02d165270c54c6bbb8a7d28ebfe2696d318c0e14b', '[\"*\"]', NULL, '2023-11-01 13:58:53', '2023-11-01 13:58:53', NULL),
(620, 'App\\Models\\User', 9, 'F6yrjOmC', '964d22380f8d76620d0ba2471247505c86898b08dd216792af1a6c25b054309d', '[\"*\"]', NULL, '2023-11-01 13:58:53', '2023-11-01 13:58:53', NULL),
(621, 'App\\Models\\User', 9, 'lkTRpEAw', '4489b640b19f0bcfbcc3d0930a660fa0d422d99ef715a3086fc37e0464bb18a0', '[\"*\"]', NULL, '2023-11-01 13:58:53', '2023-11-01 13:58:53', NULL),
(622, 'App\\Models\\User', 9, 'wYVjUYsv', 'c5f1fd94fbf2f6baeafd95717b418ca146f2b45e078ce01914099df30a332103', '[\"*\"]', NULL, '2023-11-01 13:58:54', '2023-11-01 13:58:54', NULL),
(623, 'App\\Models\\User', 9, '0o8Sscuq', '9aa21327d11d9ee37f6db7b5c28a61c19e65b7c17598d3e3c0d5cbdd91ef89f1', '[\"*\"]', NULL, '2023-11-01 13:58:54', '2023-11-01 13:58:54', NULL),
(624, 'App\\Models\\User', 9, '7PuRY4Ui', '1e05e270309413eb905d80dc1f8ad488ecc808a87c957b0aefa53aa86e7ddaaf', '[\"*\"]', NULL, '2023-11-01 13:58:54', '2023-11-01 13:58:54', NULL),
(625, 'App\\Models\\User', 9, 'ToyGM6Or', '0834c67d97ba7467fea2f710def9c011e6bc8a757829ba810409c8087b641c19', '[\"*\"]', NULL, '2023-11-01 13:58:55', '2023-11-01 13:58:55', NULL),
(626, 'App\\Models\\User', 9, 'axUMACwV', '90e1646b7193e03f5a1eb3280ddd0ba1fd803d91e5214e41d3c0c4d555a28de5', '[\"*\"]', NULL, '2023-11-01 13:58:55', '2023-11-01 13:58:55', NULL),
(627, 'App\\Models\\User', 9, 'qgAXJWhD', 'b98ef59b38cb299b8099b31663b785a53794a4e847c259989ad40b19a2dfb32d', '[\"*\"]', NULL, '2023-11-01 13:58:55', '2023-11-01 13:58:55', NULL),
(628, 'App\\Models\\User', 9, 'G9lFNKzv', '271888b6f5934f49119d8b551e71574f84e0403e56963600b0e28d3746c49a05', '[\"*\"]', NULL, '2023-11-01 13:58:55', '2023-11-01 13:58:55', NULL),
(629, 'App\\Models\\User', 9, 'lu7LvxOh', 'fb93ba571182264c0c1aa345a5b3e4f5c2eb4a35115045d5f3d83c6fc7197ced', '[\"*\"]', NULL, '2023-11-01 13:58:56', '2023-11-01 13:58:56', NULL),
(630, 'App\\Models\\User', 9, 'IzNKUwbN', 'd2e1fa6db85691469f7207958d594ce3c84a9b9a2d0f21f0de5adb28b0ffc5f2', '[\"*\"]', NULL, '2023-11-01 13:58:56', '2023-11-01 13:58:56', NULL),
(631, 'App\\Models\\User', 9, 'mukvJOkd', '304ea617bf0d329ee2b075fb8f55f9c62393b86e96c9e395f5580365386ba63f', '[\"*\"]', NULL, '2023-11-01 13:58:56', '2023-11-01 13:58:56', NULL),
(632, 'App\\Models\\User', 9, 'xJ0t8T4r', '6a9ee25b7ed62bfdf42a91120524a3e3b158e69371d44500da7e3df0150dbdb6', '[\"*\"]', NULL, '2023-11-01 13:58:57', '2023-11-01 13:58:57', NULL),
(633, 'App\\Models\\User', 9, '9BSIsNQO', 'b7450163903135b74436ef5a03d339259437cc67c06e04bdca35b46f771c6c0a', '[\"*\"]', NULL, '2023-11-01 13:58:57', '2023-11-01 13:58:57', NULL),
(634, 'App\\Models\\User', 9, 'YSk4Gjjy', '2187fa567162feebc28a167c9a0a91aca2ddc94e4beb111b21fcd18e4f3a9bfa', '[\"*\"]', NULL, '2023-11-01 13:58:57', '2023-11-01 13:58:57', NULL),
(635, 'App\\Models\\User', 9, 'JWFfQskN', 'db350d1356ad4793848cd72e1c7076fa35b88d39ba2eb9df95055aec89206821', '[\"*\"]', NULL, '2023-11-01 13:58:58', '2023-11-01 13:58:58', NULL),
(636, 'App\\Models\\User', 9, 'Ik5xrSux', 'f1247387b60914576d85ece00df804edcc4aff67e74d363a1929a953da32abfd', '[\"*\"]', NULL, '2023-11-01 13:58:58', '2023-11-01 13:58:58', NULL),
(637, 'App\\Models\\User', 9, 'geH4m91j', '73d1de9ef9fc84456afd345971f48928ffec5a52b6a9c7804f35f5ceac6b02f0', '[\"*\"]', NULL, '2023-11-01 13:58:59', '2023-11-01 13:58:59', NULL),
(638, 'App\\Models\\User', 9, 'wG5kFK6e', 'c68e3443fb527a7b7ba3148f5564ecbdce11bfd8fc76160ae356489fc866a1ef', '[\"*\"]', NULL, '2023-11-01 13:58:59', '2023-11-01 13:58:59', NULL),
(639, 'App\\Models\\User', 9, 'W99EPD2k', '61eccd2fb4855fea3d672fa12e986a92877f7312564c7a0a8cd1070c4b9f5580', '[\"*\"]', NULL, '2023-11-01 13:58:59', '2023-11-01 13:58:59', NULL),
(640, 'App\\Models\\User', 9, 'C9RAh3N2', 'cf2af448f1fb7e82dd69e6e202250f3c8fb29690ceadeadc8d2aed3422ad147b', '[\"*\"]', NULL, '2023-11-01 13:58:59', '2023-11-01 13:58:59', NULL),
(641, 'App\\Models\\User', 9, 'WbUlzvMU', '32976e80a1fed18e512027f6df33c5f1fded9550c9b4a75eb70b22cb7973bb5b', '[\"*\"]', NULL, '2023-11-01 13:59:00', '2023-11-01 13:59:00', NULL),
(642, 'App\\Models\\User', 9, 'W0hCsvM7', '05a2ac12bbb502d979b3d2408b49d2a4d7a8644ffa2391acac225646991f2a5e', '[\"*\"]', NULL, '2023-11-01 13:59:01', '2023-11-01 13:59:01', NULL),
(643, 'App\\Models\\User', 9, 'HyzSHgCB', 'ce672545658c17801680d6aa02bbb2d59909ce43ee4274b1336417bb4eaf6657', '[\"*\"]', NULL, '2023-11-01 13:59:02', '2023-11-01 13:59:02', NULL),
(644, 'App\\Models\\User', 9, 'QtetzRZT', '0c20a8092aacb84cc7102ce015357a14db329a3801e91653475ce78e54ccbd01', '[\"*\"]', NULL, '2023-11-01 13:59:02', '2023-11-01 13:59:02', NULL),
(645, 'App\\Models\\User', 9, 'kzIO0bCS', '4b992e6c8bd02bf513ebb3f9f789f88169c5fdb3e0ca7b379eeed9a5ff9bb4e0', '[\"*\"]', NULL, '2023-11-01 13:59:03', '2023-11-01 13:59:03', NULL),
(646, 'App\\Models\\User', 9, 'PVspDDrF', '0688ff5d384fe5c01c7005db312fefed75325970b169ce1ca67aaf5e57afcf47', '[\"*\"]', NULL, '2023-11-01 13:59:03', '2023-11-01 13:59:03', NULL),
(647, 'App\\Models\\User', 9, 'CuGkUJyi', 'eb6e091e02b68705dc6ea3a334c2b4129d84f6d8936f70f27ec3b98b5e1341a4', '[\"*\"]', NULL, '2023-11-01 13:59:04', '2023-11-01 13:59:04', NULL),
(648, 'App\\Models\\User', 9, 'VS67Gc1p', '1ee506758eae654b502a7e6ba6210d4d6355ed75f08051d365166fdb11d6ef68', '[\"*\"]', NULL, '2023-11-01 13:59:09', '2023-11-01 13:59:09', NULL),
(649, 'App\\Models\\User', 9, 'VQjy6aLM', 'd80412703bac46eef3b968fff1b7b9bcae0aaf57fe9efe01bcffd50714afe79d', '[\"*\"]', NULL, '2023-11-01 13:59:10', '2023-11-01 13:59:10', NULL),
(650, 'App\\Models\\User', 9, 'NSwjcyxD', '22805de54c9869082f16fe0401b781447188617d3588180a4ee8cb4169b3a1dd', '[\"*\"]', NULL, '2023-11-01 13:59:10', '2023-11-01 13:59:10', NULL),
(651, 'App\\Models\\User', 9, 'Xisc4pVw', 'db7f763d70ec203fdaece978b84627003ff3253ac3a81955840812247c5aaf06', '[\"*\"]', NULL, '2023-11-01 13:59:10', '2023-11-01 13:59:10', NULL),
(652, 'App\\Models\\User', 9, 'XILbt5c3', '3042401f7f92f8a97b7bf7e0b58b0f830c8c9a1cf767717103fc387acdb3ce4f', '[\"*\"]', NULL, '2023-11-01 13:59:17', '2023-11-01 13:59:17', NULL),
(653, 'App\\Models\\User', 9, 'zJchAXzT', '8989aca83986197273be408a12c2f7e2bc3b00cc98b51bf917a05b2f22b6a4b2', '[\"*\"]', NULL, '2023-11-01 13:59:18', '2023-11-01 13:59:18', NULL),
(654, 'App\\Models\\User', 9, 'q1gbXk2a', '6c5e19e6bcb37c1a364033ee8719e61c2eb5a5f9157ec200c967b376655800de', '[\"*\"]', NULL, '2023-11-01 14:06:09', '2023-11-01 14:06:09', NULL),
(655, 'App\\Models\\User', 9, 'wq7r5gwN', 'f51b88c7e8a40bc371dc2d13f20adec8f9b988077f4f972f983b302a47189ed3', '[\"*\"]', NULL, '2023-11-01 14:06:10', '2023-11-01 14:06:10', NULL),
(656, 'App\\Models\\User', 9, 'B5qJaoJM', 'c4d6e32e4b4399d4514ffaec342b0922df31a8afb47c74cdb5cd92e0b63a9ac9', '[\"*\"]', NULL, '2023-11-01 14:16:18', '2023-11-01 14:16:18', NULL),
(657, 'App\\Models\\User', 9, '580LQmfu', '9f406a4598f28a9940a09b58108791171d52d72ac4c6e434e9a34adf610cc11e', '[\"*\"]', NULL, '2023-11-01 14:16:19', '2023-11-01 14:16:19', NULL),
(658, 'App\\Models\\User', 9, 'QjI5tqTO', 'bcc13c6ae03ddc84ad59a0334fb5fd761ba5e0451c44ce2020774a8c1ef5cb89', '[\"*\"]', NULL, '2023-11-01 14:16:19', '2023-11-01 14:16:19', NULL),
(659, 'App\\Models\\User', 9, 'HCywstQ2', '21a2075a8bed84d5b436f0c75f911ab3ec90193857a096b0ce068a9de8aa2f02', '[\"*\"]', NULL, '2023-11-01 14:32:27', '2023-11-01 14:32:27', NULL),
(660, 'App\\Models\\User', 9, 'jRotkocF', 'a014e344382a1f97543f2281424cce57f75dc3e15a831af86dfd4920730b9b38', '[\"*\"]', NULL, '2023-11-01 14:34:36', '2023-11-01 14:34:36', NULL),
(661, 'App\\Models\\User', 9, 'OqK7fTRP', '7b40bc9c97c59a58a40bfb4416e9b7a4931f30ba552e1269fafc4d5cac1bf787', '[\"*\"]', '2023-11-01 14:34:47', '2023-11-01 14:34:36', '2023-11-01 14:34:47', NULL),
(662, 'App\\Models\\User', 9, 'xsyzho4e', '878b8cce2f2c9c39483c98319f800661db1a51225c83f96cb700faf79a719f44', '[\"*\"]', NULL, '2023-11-01 14:34:36', '2023-11-01 14:34:36', NULL),
(663, 'App\\Models\\User', 9, 'hs3UNnPq', 'e3391ea95dfb38f52ce7d8bdc2105edf8c030d5386a718083d2c85ed981a666f', '[\"*\"]', NULL, '2023-11-01 14:35:04', '2023-11-01 14:35:04', NULL),
(664, 'App\\Models\\User', 9, '9o6QKnvn', '1e58262e423a4c830cf246c937e59fe93602c1246be63e13e9defb644a0e1384', '[\"*\"]', NULL, '2023-11-01 14:36:35', '2023-11-01 14:36:35', NULL),
(665, 'App\\Models\\User', 9, 'FUYUmTKr', 'd13d0ddc1bd6ed22ce61f6cca40910a764e485d191d7410001227fa2801f83dd', '[\"*\"]', NULL, '2023-11-01 14:36:35', '2023-11-01 14:36:35', NULL),
(666, 'App\\Models\\User', 9, 'QuTkjGFY', '34a9826a53ab4f764d70c6f8d276bda9771a7c71218163ebc552a98f9575a7b9', '[\"*\"]', NULL, '2023-11-01 14:36:35', '2023-11-01 14:36:35', NULL),
(667, 'App\\Models\\User', 9, 'h1G8iBT0', '0202f4499df1f28a0bc4395f5a586b1d020bdbd288e46105df7f1a7f4c86f8ac', '[\"*\"]', NULL, '2023-11-01 14:36:36', '2023-11-01 14:36:36', NULL),
(668, 'App\\Models\\User', 9, 'QSrDP3OZ', 'ea28796122c76afde573c75e82481b5ff26a471e81561725d4db6d16209a36f2', '[\"*\"]', NULL, '2023-11-01 14:36:36', '2023-11-01 14:36:36', NULL),
(669, 'App\\Models\\User', 9, 'XfCqcWnP', 'bb1ef7e5c1e1cddc57ce718c753a073634a20c489b32bb62304d7d95bb25731c', '[\"*\"]', NULL, '2023-11-01 14:36:55', '2023-11-01 14:36:55', NULL),
(670, 'App\\Models\\User', 9, 'g6plZ24N', 'e7d1515b42e1d7206116376e0e11586724bda341bcc09896a4e27414f15f2d99', '[\"*\"]', NULL, '2023-11-01 14:36:56', '2023-11-01 14:36:56', NULL),
(671, 'App\\Models\\User', 9, 'OZj5W87M', '20b8bb7350177b1280d00ab6ad4a2ef3226a22569771af3da4d82964accfc111', '[\"*\"]', NULL, '2023-11-01 14:36:56', '2023-11-01 14:36:56', NULL),
(672, 'App\\Models\\User', 9, 'deKGfTy2', 'c84dff4375bff9a254bef9f10818ab7c741ec2070d91a690768fe87b33bb2dbc', '[\"*\"]', NULL, '2023-11-01 14:37:09', '2023-11-01 14:37:09', NULL),
(673, 'App\\Models\\User', 9, 'G5kjEkMT', '4e30c9294076e481abc80f43d47393e0049b9c4a7fa831439769e54c89e9e871', '[\"*\"]', NULL, '2023-11-01 14:37:09', '2023-11-01 14:37:09', NULL),
(674, 'App\\Models\\User', 9, 'oHDTVxer', 'f8d419bc27920a739052238f14d4e637e28ce57d6a678ddda1f49873826130e3', '[\"*\"]', NULL, '2023-11-01 14:37:09', '2023-11-01 14:37:09', NULL),
(675, 'App\\Models\\User', 9, 'kBGkRVwN', '50a516ee5c41895e93fc1191d7b4eda0252ae328d5d81f1ff8f66e0eba7dc858', '[\"*\"]', NULL, '2023-11-01 14:37:33', '2023-11-01 14:37:33', NULL),
(676, 'App\\Models\\User', 9, 'fFcBcsnO', '8eb14132773b1e8acbed3493c0dacb8c3ba4197c984c611e987f933f0bd4337e', '[\"*\"]', NULL, '2023-11-01 14:37:33', '2023-11-01 14:37:33', NULL),
(677, 'App\\Models\\User', 9, 'dxehjpyZ', 'ad0a2ac6552e68150a4912e563e5beda1e3c1a3c716a2dec4780c453a440a2e2', '[\"*\"]', NULL, '2023-11-01 14:37:33', '2023-11-01 14:37:33', NULL),
(678, 'App\\Models\\User', 9, 'Cc2LCgLo', 'c07b582697b46464a6ace578404b88bb6737a5106bd5bab05a2f7079340c3fba', '[\"*\"]', NULL, '2023-11-01 14:38:28', '2023-11-01 14:38:28', NULL),
(679, 'App\\Models\\User', 9, 'QQhtXOS7', '7e3fcaca86547a603206a2e5ab7c4610e09d4579a0e4e75903a8d765646d84f4', '[\"*\"]', NULL, '2023-11-01 14:38:28', '2023-11-01 14:38:28', NULL),
(680, 'App\\Models\\User', 9, 'yDYLzmVd', 'ae78ada551473542e1c17be32b4ee544c8f60d2e0582429c8a600634bc2faf0c', '[\"*\"]', NULL, '2023-11-01 14:38:28', '2023-11-01 14:38:28', NULL),
(681, 'App\\Models\\User', 9, 'YOCz1rx0', '59e225521307ae00b777b0e385f9cdbcf1947f8dd1711b973faafc189658e632', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(682, 'App\\Models\\User', 9, 'xS2l61lJ', 'cc012a4c2dbff01959f76b5672d1a3ef39bdbb8e034fa83964f6fb9dd5cdd8fc', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(683, 'App\\Models\\User', 9, 'MGNXGIrG', '9e9c07db7ca1bff1ed5529db6f5ce809d59030e3f8ab364a5d344ae46d10ca78', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(684, 'App\\Models\\User', 9, 'on8e3Jzd', '53154efec846f562834794830b56ee7250d894dbf40473d571983d159c7fb399', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(685, 'App\\Models\\User', 9, 'uQsxntEF', 'c7e366141deead0a6f87a77096dd085e35c917973a6a7ce005cc82bc220c055a', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(686, 'App\\Models\\User', 9, 'eRGMphoK', 'e51299b8a2eae7146a8069cb1a04d6faf3205a64e2e4bbf60a40f3b5eb16f2d1', '[\"*\"]', NULL, '2023-11-01 14:41:38', '2023-11-01 14:41:38', NULL),
(687, 'App\\Models\\User', 9, 'ORQEMOzQ', 'ea5e98b66d71d5de1376705bd8e35152064dfea4a87706ba0bb09e9c34815b59', '[\"*\"]', NULL, '2023-11-01 14:41:39', '2023-11-01 14:41:39', NULL),
(688, 'App\\Models\\User', 9, 'ur4zjwau', 'e3f65f731f7fdb0ac0f0d6c15e6ecc3b38aab217362046142b6e847b8c716116', '[\"*\"]', NULL, '2023-11-01 14:41:39', '2023-11-01 14:41:39', NULL),
(689, 'App\\Models\\User', 9, 'ix4qz5u3', 'd1e1fa21a0e21030218f3ebc5cdc8f7424ec9ab76804244ffb5afe23055cde34', '[\"*\"]', NULL, '2023-11-01 14:42:17', '2023-11-01 14:42:17', NULL),
(690, 'App\\Models\\User', 9, '0zXtfrE2', 'df0a34de92d2c8ee14a35056dbdd85df98163a56beba7d7055f4d556f4bcc874', '[\"*\"]', NULL, '2023-11-01 14:42:20', '2023-11-01 14:42:20', NULL),
(691, 'App\\Models\\User', 9, 'EoXHuz30', 'd708a04365e5e3a059a12bf0a6142cdc0bb8b531532b735f1c4ebc518ded71cd', '[\"*\"]', NULL, '2023-11-01 14:42:20', '2023-11-01 14:42:20', NULL),
(692, 'App\\Models\\User', 9, 'i3zfeHW6', '4e18fd75fdda6dc7c30bbf5047458019674fc2f694dc1ea591626f9a65d70e37', '[\"*\"]', NULL, '2023-11-01 14:42:20', '2023-11-01 14:42:20', NULL),
(693, 'App\\Models\\User', 9, 'bzeESAnf', 'ce459dcdf470b4cfe9f25936736c369be47b8693e82dcea314b87ffa44932956', '[\"*\"]', NULL, '2023-11-01 14:42:21', '2023-11-01 14:42:21', NULL),
(694, 'App\\Models\\User', 9, 'iuMGkxSA', '265bb1198275a77d6660c228cf8bb6a59bf46bccfd28bb30a66bb8fbd0a3672f', '[\"*\"]', NULL, '2023-11-01 14:42:21', '2023-11-01 14:42:21', NULL),
(695, 'App\\Models\\User', 9, 'Hw8GZCJg', '3a3189ecfadaa17adf9ca2f686f3e09a6d81ccd36e1522646ceffc13d70e674b', '[\"*\"]', NULL, '2023-11-01 14:43:25', '2023-11-01 14:43:25', NULL),
(696, 'App\\Models\\User', 9, 'ug78E28M', '48fedcc89c49a551d85f861638163f554b49fa60e6b6c1de3b5c66c19316e47a', '[\"*\"]', NULL, '2023-11-01 14:43:25', '2023-11-01 14:43:25', NULL),
(697, 'App\\Models\\User', 9, 'c70aYGIL', '386fc329bdfe5ec4e62e3f0891c6a0f9450f45a4b9363fe63b8f01ba96b2e51a', '[\"*\"]', NULL, '2023-11-01 14:43:25', '2023-11-01 14:43:25', NULL),
(698, 'App\\Models\\User', 9, 'WsHgEwPf', 'f5fa2d8f0b90ad00dc40a56e550b41d5e3942db87ae0691707f92afe2d693235', '[\"*\"]', NULL, '2023-11-01 14:43:25', '2023-11-01 14:43:25', NULL),
(699, 'App\\Models\\User', 9, 'Btb8LKcK', '9fd62b2274da0f4fd9989a1c94333b5dc33b0ac3bbcc8a1a906f413a83479448', '[\"*\"]', NULL, '2023-11-01 14:43:27', '2023-11-01 14:43:27', NULL),
(700, 'App\\Models\\User', 9, 'm2iTu3s6', '4ec6a638016e6030d18985c069888393b6068fb47c82ee8e798e32c1306d596d', '[\"*\"]', NULL, '2023-11-01 14:43:27', '2023-11-01 14:43:27', NULL),
(701, 'App\\Models\\User', 9, 'zQmZG3bA', 'd9c3efa8283bb9c95911a5bffc134ec2d115f3dbbb4effa541b5c82fd97fcd90', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(702, 'App\\Models\\User', 9, '0Dn4LfyC', '023d108a80af4be57d461ac5346dec6e1c3fb40267217a0a28465b38a9526b1b', '[\"*\"]', '2023-11-01 14:43:54', '2023-11-01 14:43:40', '2023-11-01 14:43:54', NULL),
(703, 'App\\Models\\User', 9, 'vcJVIOY4', 'd202c81c0a185276ff90850d7931d8ee89be75a160afbc94bf69800884a698d4', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(704, 'App\\Models\\User', 9, 'v4dDIJg1', '3ad848e90bec25942d5bb64f1c1b1bb703f7d4a33f4b83c77a3c7c670ae3e1c1', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(705, 'App\\Models\\User', 9, 'Tq1kpnmm', '1e482c3b576191d162dee061375b2141568eebab62bd2cde90b19a3baa597ee3', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(706, 'App\\Models\\User', 9, 'jgsgIMky', '1310f2134e3a1b881a61748ce860337512d165410db73c8195e50bea6d4ad329', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(707, 'App\\Models\\User', 9, '6jy6Qo2S', '71ac9254f5a8e06e3da8e7e1a8bd17d32383f76ae10357b4e2964431b8e92286', '[\"*\"]', NULL, '2023-11-01 14:43:40', '2023-11-01 14:43:40', NULL),
(708, 'App\\Models\\User', 9, '9l54R0WC', '85dd7bc1d1fd2f54b6ea04518ac863bf3790f70f162bc5c0e8b0db39ba6eeaca', '[\"*\"]', NULL, '2023-11-01 14:45:30', '2023-11-01 14:45:30', NULL),
(709, 'App\\Models\\User', 9, 'SxrQGjXt', '470b17be9a76d941f0183376fe4831f1f219122e6394673f117d6bc19dfe5427', '[\"*\"]', NULL, '2023-11-01 14:45:30', '2023-11-01 14:45:30', NULL),
(710, 'App\\Models\\User', 9, 'koDGSrSH', '368304e17a3a3c6139bccf43a96f3230cb51d810e3c5e407a60009322bb11a41', '[\"*\"]', NULL, '2023-11-01 14:45:30', '2023-11-01 14:45:30', NULL),
(711, 'App\\Models\\User', 9, 'weLKCuPR', '875412223ff327c5e92cd0e7cdb41ccdf96b59dd7b3f10d755760db92a77cdee', '[\"*\"]', NULL, '2023-11-01 14:45:30', '2023-11-01 14:45:30', NULL),
(712, 'App\\Models\\User', 9, 'F0vvE8hD', 'cc9dca87e377f34948b08ae66b897c69acf3fa49090286f22620d040b31f7900', '[\"*\"]', NULL, '2023-11-01 14:45:30', '2023-11-01 14:45:30', NULL),
(713, 'App\\Models\\User', 9, 'NHKDXbkB', 'ff6e709fbce634b125b421cd5d8decf117c2695e44346f418e075bc8bba6e03d', '[\"*\"]', NULL, '2023-11-01 14:46:55', '2023-11-01 14:46:55', NULL),
(714, 'App\\Models\\User', 9, '79xScfsj', 'a015cd69e90487b9ae4a9094634fb368690fd927ed78528d970ae6f5240bc066', '[\"*\"]', NULL, '2023-11-01 14:46:55', '2023-11-01 14:46:55', NULL),
(715, 'App\\Models\\User', 9, 'OhXv6rk3', '7707f361b40dd3bed9a6a5cbd35c2c3d0b45071010f4f68e4dcac362ebd5b478', '[\"*\"]', NULL, '2023-11-01 14:46:55', '2023-11-01 14:46:55', NULL),
(716, 'App\\Models\\User', 9, 'fvTnVWmq', 'e804797fd7f006f568cff2b534d31af4d6d1909a02a72e96e3b4a06e411011f1', '[\"*\"]', NULL, '2023-11-01 14:47:05', '2023-11-01 14:47:05', NULL),
(717, 'App\\Models\\User', 9, 'prnQsxgE', '01c1644995a88139c47a4054a4252e839a662f6c323c7b8c4c64be0c99bc02fb', '[\"*\"]', '2023-11-01 14:47:12', '2023-11-01 14:47:05', '2023-11-01 14:47:12', NULL),
(718, 'App\\Models\\User', 9, 'prXFVaDO', '0c1c67005382d836433c775dec121fcf7f1e6eb386e85a6bbe7ebdd8b784ac3c', '[\"*\"]', NULL, '2023-11-01 14:47:05', '2023-11-01 14:47:05', NULL),
(719, 'App\\Models\\User', 9, 'ewsD8Hzy', 'cb065e16cc8fceaf6e458565eaab037f6361f23918a5a28b1a08e153a70a3bfa', '[\"*\"]', NULL, '2023-11-01 14:49:15', '2023-11-01 14:49:15', NULL),
(720, 'App\\Models\\User', 9, 'O1kPFfEl', '843e607459e000fc4fdb833ebed8547f98a4f3bc72bef109cc8551c8f5881d97', '[\"*\"]', NULL, '2023-11-01 14:49:15', '2023-11-01 14:49:15', NULL),
(721, 'App\\Models\\User', 9, 'Nab5E7jB', 'a02c73202ba2c2af1b3a4123fa4800c023b0e26a286a4658d330054397763cb8', '[\"*\"]', '2023-11-01 14:49:36', '2023-11-01 14:49:15', '2023-11-01 14:49:36', NULL),
(722, 'App\\Models\\User', 9, 'fUFZEgeL', '7622c2f2bf294172c9b1b30df63d94e510792cc2b304bf2a435bed4d9475117e', '[\"*\"]', NULL, '2023-11-01 14:50:29', '2023-11-01 14:50:29', NULL),
(723, 'App\\Models\\User', 9, 'e0mla67S', 'f89cfc031b459962148d3bd1f8292921604710c620795fbf1b48b8b7cbaf9ee3', '[\"*\"]', NULL, '2023-11-01 14:50:29', '2023-11-01 14:50:29', NULL),
(724, 'App\\Models\\User', 9, 'zEdSadSz', 'de4e4dd151e3763df0fcbd9a2a1439c286bf6819a731d4c1d5376a18412912c3', '[\"*\"]', NULL, '2023-11-01 14:50:29', '2023-11-01 14:50:29', NULL),
(725, 'App\\Models\\User', 9, 'j2zxGFQ0', '5988258f026b186522751ac1f2f0c4516faa3c77aef2efd298febc93c0e8cd6d', '[\"*\"]', NULL, '2023-11-01 14:56:15', '2023-11-01 14:56:15', NULL),
(726, 'App\\Models\\User', 9, 'nHq6owHr', '626989372429d3d8bc028ab44779fc8c83d0cfff90e6906eb14f94ebd1a09427', '[\"*\"]', NULL, '2023-11-01 14:56:15', '2023-11-01 14:56:15', NULL),
(727, 'App\\Models\\User', 9, 'z9AaFtFI', 'ad2d41b0225170c3f47019a84fd2bce2dbb00854656cf9f835cb0fe043ca3451', '[\"*\"]', NULL, '2023-11-01 14:56:15', '2023-11-01 14:56:15', NULL),
(728, 'App\\Models\\User', 9, 'CXyXgMmE', '2f92c92f547dac79e7d33d875e2f81ca08b95ec18d3a64f15bebd730b2f026c7', '[\"*\"]', NULL, '2023-11-01 14:57:23', '2023-11-01 14:57:23', NULL),
(729, 'App\\Models\\User', 9, 'HAUHVy5V', '2760d681bd66690bda960310115e35e6b25bd431e7fb2e7903c891cd3ed2e2e8', '[\"*\"]', NULL, '2023-11-01 14:57:23', '2023-11-01 14:57:23', NULL),
(730, 'App\\Models\\User', 9, '7gTboQ4V', '5add3aea045c4c3db8e4ed8f7a1a8965544c29cfad41dd0abba32f7ad6223cd7', '[\"*\"]', '2023-11-01 14:57:26', '2023-11-01 14:57:23', '2023-11-01 14:57:26', NULL),
(731, 'App\\Models\\User', 9, 'lTZZkHli', '1cfd55f34fced34cfed56971c208cf367ee5784dff1dc814f9093bd3cfab96fb', '[\"*\"]', NULL, '2023-11-01 14:58:46', '2023-11-01 14:58:46', NULL),
(732, 'App\\Models\\User', 9, 'v7R6CUsV', 'b8d1195ec428f70d525b1b74031fa80d0acd0852bfc23a6a6436817cd7c5228e', '[\"*\"]', NULL, '2023-11-01 14:58:47', '2023-11-01 14:58:47', NULL),
(733, 'App\\Models\\User', 9, 'JrRmaEvM', '5d7aa69c4a3b4e316de0045b716a9a97a01897ee50c49cbe00cfffcf83a27374', '[\"*\"]', NULL, '2023-11-01 14:59:20', '2023-11-01 14:59:20', NULL),
(734, 'App\\Models\\User', 9, 'Cm0GRffy', '2c5114256222ceaa44429adffb8153413e1139f1a19c0bad562d55103b42830d', '[\"*\"]', '2023-11-01 14:59:30', '2023-11-01 14:59:20', '2023-11-01 14:59:30', NULL),
(735, 'App\\Models\\User', 9, 'UYmj19V8', '248e9c5de71ab7d70451b1a4da59b986faec42c4e38725b9e82952cf52e57b0f', '[\"*\"]', NULL, '2023-11-01 14:59:20', '2023-11-01 14:59:20', NULL),
(736, 'App\\Models\\User', 9, 'NKQdsnVI', '8671da916cbea294784814d653cd088b0569c9bc88eb5b0ac42cfdc49d7b5eb9', '[\"*\"]', NULL, '2023-11-01 15:00:12', '2023-11-01 15:00:12', NULL),
(737, 'App\\Models\\User', 9, '3HRXCvLy', 'a02b4618d31a0c5c39bd2cb8b8fa74e3aef8e75e383d1f785dfb7ee0ad6e9606', '[\"*\"]', '2023-11-01 15:00:17', '2023-11-01 15:00:12', '2023-11-01 15:00:17', NULL),
(738, 'App\\Models\\User', 9, 'fhNqNjwF', '95f974e970a067ed47ba7dc807904b7d9c8cdf94d458572f7d96f8ff5b278e4c', '[\"*\"]', NULL, '2023-11-01 15:00:12', '2023-11-01 15:00:12', NULL),
(739, 'App\\Models\\User', 9, 'nGetf6ab', '40a090d1e7de769e3a8a8f879e09acfe0626a83bc95fb212c1609340b9e63742', '[\"*\"]', NULL, '2023-11-01 15:00:31', '2023-11-01 15:00:31', NULL),
(740, 'App\\Models\\User', 9, 'Sfsn7AGh', 'a76c93e8ec4b7df53b4fa0e7dffef8e2d957f0053e19545115fad5cf8b442a19', '[\"*\"]', NULL, '2023-11-01 15:00:31', '2023-11-01 15:00:31', NULL),
(741, 'App\\Models\\User', 9, 'tgexf62Z', 'b5ecb0c465db5f543a49056b2fd4333a9372c9ba530cfeee3bee7eb315dba4a5', '[\"*\"]', '2023-11-01 15:00:34', '2023-11-01 15:00:31', '2023-11-01 15:00:34', NULL),
(742, 'App\\Models\\User', 9, 'nTPmkBpQ', 'd525d24f8574cb24997c9b818685db3a23a45df30f44ce512752fcbb715da660', '[\"*\"]', NULL, '2023-11-01 15:00:58', '2023-11-01 15:00:58', NULL),
(743, 'App\\Models\\User', 9, 'XA0msw63', '818d46118dad0670dd524ccd31cac5da605b7ad94147bc7629869f03503303e2', '[\"*\"]', NULL, '2023-11-01 15:00:58', '2023-11-01 15:00:58', NULL),
(744, 'App\\Models\\User', 9, 'xNYL0scL', '0a1e950443c2b8287d85a3913ab5f5139a53cf142202bad06b6acc9d49bb06e6', '[\"*\"]', NULL, '2023-11-01 15:00:58', '2023-11-01 15:00:58', NULL),
(745, 'App\\Models\\User', 9, '5goo322q', '42bc1ebe68324ab067f4266d594ce42d801bfd4cf1ed28600979105f4af06c79', '[\"*\"]', NULL, '2023-11-01 15:01:08', '2023-11-01 15:01:08', NULL),
(746, 'App\\Models\\User', 9, 'ZyjWWp4r', 'c7f386f6cad7808709a53607f54770032a57873a4ec823279f981c8aab0fba3a', '[\"*\"]', '2023-11-01 15:01:15', '2023-11-01 15:01:08', '2023-11-01 15:01:15', NULL),
(747, 'App\\Models\\User', 9, '3Tmw2TTp', '4657cdb8061cf3300477c3c687eb7e0eab126beeea0ef112dec6785f450ddf86', '[\"*\"]', NULL, '2023-11-01 15:01:08', '2023-11-01 15:01:08', NULL),
(748, 'App\\Models\\User', 9, 'xPxoTjvs', 'fefb4325f2950cfee293e32980aea435a774dd8b4cdc88a0d9568c9c0ad7d4bf', '[\"*\"]', NULL, '2023-11-01 15:02:21', '2023-11-01 15:02:21', NULL),
(749, 'App\\Models\\User', 9, 'AVLdo3uu', 'bac9caf843c9329cbf669ed2aa7295a743a2e98bc93d155c61e3401d5ce71d16', '[\"*\"]', NULL, '2023-11-01 15:02:21', '2023-11-01 15:02:21', NULL),
(750, 'App\\Models\\User', 9, 'VOfAASRt', '03de6f498c856c3aa054872e22b3cf4599336030fdc8a9ca516dd8a90692a4ac', '[\"*\"]', '2023-11-01 15:02:25', '2023-11-01 15:02:21', '2023-11-01 15:02:25', NULL),
(751, 'App\\Models\\User', 9, 'HLca0kIF', 'c4278ff5a0bf4e0f60c4f8204c1859b9a0de45c7dc5fff205e150b966c932e1c', '[\"*\"]', NULL, '2023-11-01 15:03:00', '2023-11-01 15:03:00', NULL),
(752, 'App\\Models\\User', 9, 'Ah4jWJWh', 'caafb8df3f01aec1d312b9b53c2c7e7f93f0cdb9786a9d143d3d60fd8b1cb053', '[\"*\"]', NULL, '2023-11-01 15:03:00', '2023-11-01 15:03:00', NULL),
(753, 'App\\Models\\User', 9, 'KwQ1KMO1', '75a0ed22fbe58d818dea52517b6715bb6346af41df61f573e9f3320b2e50383d', '[\"*\"]', '2023-11-01 15:03:24', '2023-11-01 15:03:00', '2023-11-01 15:03:24', NULL),
(754, 'App\\Models\\User', 9, 'AdrFlft7', '27f4bc5e2a53d9cb7a2044d97e58320ab03bd0d702a188245ecbb2b68a5492f2', '[\"*\"]', NULL, '2023-11-01 15:03:10', '2023-11-01 15:03:10', NULL),
(755, 'App\\Models\\User', 9, 'WdpZ3Att', '8594d1238dd37e91b3f371f0358da4f8df857fe9f56a3cb6c1e556bd337aaeb0', '[\"*\"]', NULL, '2023-11-01 15:04:28', '2023-11-01 15:04:28', NULL),
(756, 'App\\Models\\User', 9, 'qeYli5Yg', '6061e11ef6171ec70e92c8342cfcea532913a0370f63d97ea635d5803f971db3', '[\"*\"]', NULL, '2023-11-01 15:04:28', '2023-11-01 15:04:28', NULL),
(757, 'App\\Models\\User', 9, 'BNt0o1Pn', 'bc35dd39b4e9b37fe08fb475fb2436de873dcc259d3de30e838d7613647b315e', '[\"*\"]', NULL, '2023-11-01 15:04:28', '2023-11-01 15:04:28', NULL),
(758, 'App\\Models\\User', 9, 'h0ZoPEm3', '243c6388dfec0f6af41f5f5bf6a0760774a368d0351aa6368f2b6c61f10ffefd', '[\"*\"]', NULL, '2023-11-01 15:04:29', '2023-11-01 15:04:29', NULL),
(759, 'App\\Models\\User', 9, 'Y5IRUdsx', 'a0bf7665b619aed0c757863771bf35c6ae5ac6a92b7e7a12a349fa4cea91a234', '[\"*\"]', NULL, '2023-11-01 15:04:44', '2023-11-01 15:04:44', NULL),
(760, 'App\\Models\\User', 9, 'vXZzKuN6', 'b2a5fe3f2762b31fd9277eb5120f57906a676b1212d09f5e104c2b04c66f73bc', '[\"*\"]', NULL, '2023-11-01 15:04:44', '2023-11-01 15:04:44', NULL),
(761, 'App\\Models\\User', 9, 'joCp8hPq', 'fefb0a79b7c7775baddc71bc90135fe4b24415d3bffb3b8031201573eb72c5b1', '[\"*\"]', NULL, '2023-11-01 15:05:45', '2023-11-01 15:05:45', NULL),
(762, 'App\\Models\\User', 9, 'TqsK9bil', '178fa3017c764466424afdc00515f85cb713dd41c1862e721e8a65b2381b2e6c', '[\"*\"]', NULL, '2023-11-01 15:05:45', '2023-11-01 15:05:45', NULL),
(763, 'App\\Models\\User', 9, '9wW30Ohu', 'da80f2c4b5d718b496c700602e65789627ea6eaa65d67ae1e750f64ca0c3c5f6', '[\"*\"]', '2023-11-01 15:09:23', '2023-11-01 15:05:45', '2023-11-01 15:09:23', NULL),
(764, 'App\\Models\\User', 9, 'bCDaVq48', '391e4905effe39593701d45b87ab26a88884d233088cdd1f78bfa74ca39f1d94', '[\"*\"]', '2023-11-01 15:10:20', '2023-11-01 15:10:13', '2023-11-01 15:10:20', NULL),
(765, 'App\\Models\\User', 9, '8DXLNDfM', '72f5d9bad5f7f37f08f9ae94d450649da989af4b6fbfd25e2fb3d5ed1138081f', '[\"*\"]', NULL, '2023-11-01 15:10:13', '2023-11-01 15:10:13', NULL),
(766, 'App\\Models\\User', 9, 'uxv5Bg8e', 'c88d5c9248d1fcb516b8b2b0ac2dd4e4e60bf5ed0624bc1092e0adff0e00e37a', '[\"*\"]', NULL, '2023-11-01 15:10:13', '2023-11-01 15:10:13', NULL),
(767, 'App\\Models\\User', 9, 'VKF3OnjO', 'c40f56fb3e9a836ea6081225590fda78b7a2b3122de07da8efe34aae07568d87', '[\"*\"]', NULL, '2023-11-01 15:11:47', '2023-11-01 15:11:47', NULL),
(768, 'App\\Models\\User', 9, 'JFxlLY5L', 'cba0433f327d9e209488d94942fe5d95bdb8cd126f5a7d125b52fb670983a357', '[\"*\"]', NULL, '2023-11-01 15:11:47', '2023-11-01 15:11:47', NULL),
(769, 'App\\Models\\User', 9, 'G7wRajZR', '6656eb63b224782033d6c7aaa71c428f2799a6b26754fa5b2e3a15c6ba3060bb', '[\"*\"]', '2023-11-01 15:11:54', '2023-11-01 15:11:47', '2023-11-01 15:11:54', NULL),
(770, 'App\\Models\\User', 9, 'X2mA48i0', '35bda0be8f23ac9953cc5c3dbc7e21afa06f129b026b1fb85cde2bdee8ca19b7', '[\"*\"]', NULL, '2023-11-01 15:12:35', '2023-11-01 15:12:35', NULL),
(771, 'App\\Models\\User', 9, '7q6NBjwc', '216a6ae9faa51899ba1c62d3d617b60f3555cc35aa91fe989ca6b4d1febe681b', '[\"*\"]', NULL, '2023-11-01 15:12:35', '2023-11-01 15:12:35', NULL),
(772, 'App\\Models\\User', 9, 'FyqtZO9G', '5af534192eb71307d6599059cc3c84b1ab40e845649a264bbc0308e9c7eda80b', '[\"*\"]', '2023-11-01 15:12:44', '2023-11-01 15:12:35', '2023-11-01 15:12:44', NULL),
(773, 'App\\Models\\User', 9, '11BWZ4WY', '694a660e2353021d2071c79d5fa26bdacf3b942f8d94b7908848470c551e9f01', '[\"*\"]', NULL, '2023-11-01 15:13:13', '2023-11-01 15:13:13', NULL),
(774, 'App\\Models\\User', 9, 'HZMTYOzE', '43f439dc2fe5215711bc0390d05f0fc1e0ce6f9792880efee92c9a7325500693', '[\"*\"]', NULL, '2023-11-01 15:13:13', '2023-11-01 15:13:13', NULL),
(775, 'App\\Models\\User', 9, 'NSe7fTgC', 'befbf5c72bec3f0fee9e49ce4f5ed7c0eec99437e4a24e6b88857493c5aed80e', '[\"*\"]', NULL, '2023-11-01 15:13:13', '2023-11-01 15:13:13', NULL),
(776, 'App\\Models\\User', 9, '5VOU7pHj', 'b6cd7c4cf0f2362892322e9b9618fe4b6d6ad6cf78f2291f01fe681395d6a5a5', '[\"*\"]', NULL, '2023-11-01 15:13:24', '2023-11-01 15:13:24', NULL),
(777, 'App\\Models\\User', 9, 'ZzCfoBuz', '8bb0f157e52e34582f1bab33250dcb47905c030cd80b56d7c331794dfc2cc66d', '[\"*\"]', NULL, '2023-11-01 15:13:24', '2023-11-01 15:13:24', NULL),
(778, 'App\\Models\\User', 9, 'NKS34QfH', '08f2bdf6bea6d61b44a07d5667cfa60e8a590b38444966ef7f7695dde2b02f8f', '[\"*\"]', '2023-11-01 15:13:28', '2023-11-01 15:13:24', '2023-11-01 15:13:28', NULL),
(779, 'App\\Models\\User', 9, 'LIMAHUx1', '17c56241efc737fe84858bbd84be8547ef80609d75e9d36311f2937ed37a9566', '[\"*\"]', NULL, '2023-11-01 15:15:37', '2023-11-01 15:15:37', NULL),
(780, 'App\\Models\\User', 9, 'kkdNAq0i', 'e992bf7e4e54fb0ae4059a4e6a7a6ddb2b595b371902b958be47fc956217c582', '[\"*\"]', NULL, '2023-11-01 15:15:37', '2023-11-01 15:15:37', NULL),
(781, 'App\\Models\\User', 9, 'Xq1aLLoq', '7242090a3cc4f94c29190ba51e2950f722b77e15cf1d60fcc4d3cc348dcee512', '[\"*\"]', '2023-11-01 15:15:52', '2023-11-01 15:15:37', '2023-11-01 15:15:52', NULL),
(782, 'App\\Models\\User', 9, 'DLok7NcZ', 'eafa84a27d4fe60c9c8c320ee00e84d69212d5f879ebec2f798ef3575365234b', '[\"*\"]', NULL, '2023-11-01 15:16:13', '2023-11-01 15:16:13', NULL),
(783, 'App\\Models\\User', 9, '04sgH9zQ', '09fcc1347c9dfe2220dc22844ca96b43d009d5358bdd5e9ffe05800b0b470110', '[\"*\"]', '2023-11-01 15:16:20', '2023-11-01 15:16:13', '2023-11-01 15:16:20', NULL),
(784, 'App\\Models\\User', 9, 'Q1NlCDzr', '2e927b7d9e13d33998f5253063e7167eb9915be84bf5bee61ab043874a6d6b13', '[\"*\"]', NULL, '2023-11-01 15:16:13', '2023-11-01 15:16:13', NULL),
(785, 'App\\Models\\User', 9, 'xFtMdxJF', '63df22f21069d488373b90ad3b8f2a186bafcb663f866272a45d086f9ea72fc0', '[\"*\"]', NULL, '2023-11-01 15:17:20', '2023-11-01 15:17:20', NULL),
(786, 'App\\Models\\User', 9, '7J5Wgln0', '78e761896f037e4e09ef84e5ff501089817c9f92ad6a2cfa40b38b5e0e529b39', '[\"*\"]', NULL, '2023-11-01 15:17:20', '2023-11-01 15:17:20', NULL),
(787, 'App\\Models\\User', 9, 'gJPukwuu', '084ae82cf5a42cd2ca973e81300890f32f0b74015376fd5c2eae0d95087348c2', '[\"*\"]', NULL, '2023-11-01 15:17:20', '2023-11-01 15:17:20', NULL),
(788, 'App\\Models\\User', 9, 'FOZTc8MJ', 'd82b0d68a07687359f8b9edcecd41194c947bb0216f250063aac7af210d72076', '[\"*\"]', NULL, '2023-11-01 15:17:27', '2023-11-01 15:17:27', NULL),
(789, 'App\\Models\\User', 9, 'nefTe1mi', '7d5392398cc771291c9a4beba189fcca5b69c49854b1f8c67df776f73ce6ab64', '[\"*\"]', '2023-11-01 15:17:31', '2023-11-01 15:17:27', '2023-11-01 15:17:31', NULL),
(790, 'App\\Models\\User', 9, 'lzbne89m', 'cb62c463d30fc3b52e5a8b3b50defc3f5215b877580dcbe5cad72f7b7675cc87', '[\"*\"]', NULL, '2023-11-01 15:17:27', '2023-11-01 15:17:27', NULL),
(791, 'App\\Models\\User', 9, 'JOl12gbk', 'f4721bf75e16becfebaecd4df8b1ec471d494eac8cb21dab9ffc975f44195bbe', '[\"*\"]', NULL, '2023-11-01 15:18:23', '2023-11-01 15:18:23', NULL),
(792, 'App\\Models\\User', 9, 'SjuepVb9', '56b513c8b7f2c8d9b76816d2d1944168e0132adc0fa4cbbad69ef0239fda5cde', '[\"*\"]', NULL, '2023-11-01 15:18:23', '2023-11-01 15:18:23', NULL),
(793, 'App\\Models\\User', 9, 'TfQvFQYC', '0734ce13c8cc5855b054fc39cb59a7c97e9919376bea308115c2da37742ba130', '[\"*\"]', '2023-11-01 15:18:33', '2023-11-01 15:18:23', '2023-11-01 15:18:33', NULL),
(794, 'App\\Models\\User', 9, 'ui5BVevV', 'b7d0f28d0e266047be699613240496c0d1245db64d338ceb0e70d174ea192b9c', '[\"*\"]', NULL, '2023-11-01 15:19:18', '2023-11-01 15:19:18', NULL),
(795, 'App\\Models\\User', 9, 'rnyCo3Ys', '2ce490e96cfe346f34705fe05dcad1564a3052cf86e376ed2e9fd4f0d6df3698', '[\"*\"]', NULL, '2023-11-01 15:19:18', '2023-11-01 15:19:18', NULL),
(796, 'App\\Models\\User', 9, 'VPJBBTt9', '0fb4da02123769f39c2a5cb4f159d490bf127e009ba6c2b69b2286798ae2028f', '[\"*\"]', '2023-11-01 15:19:26', '2023-11-01 15:19:18', '2023-11-01 15:19:26', NULL),
(797, 'App\\Models\\User', 9, 'SP1LeID6', '62dc30313bc6d0c8dfd504884d0840c3b16c79c1ed91fad6286fb7bdfc5500f4', '[\"*\"]', NULL, '2023-11-01 15:20:40', '2023-11-01 15:20:40', NULL),
(798, 'App\\Models\\User', 9, 'F2fDem2V', '399443504bd0de412c6f6690f48f26b811e579a088c4a0e3db7358cfd7de9004', '[\"*\"]', '2023-11-01 15:20:48', '2023-11-01 15:20:40', '2023-11-01 15:20:48', NULL),
(799, 'App\\Models\\User', 9, 'GR56kEOL', '6913670c123d3d5466a41e52fba45d6ae5dcc9343e7722cb17aa2956150d5b9a', '[\"*\"]', NULL, '2023-11-01 15:20:40', '2023-11-01 15:20:40', NULL),
(800, 'App\\Models\\User', 9, 'MSX2Iyvg', '95b6a9a6fe9e9a63dd15ff36401fdd77de1b1e59ca952b69a91e976fa23bc6f8', '[\"*\"]', NULL, '2023-11-01 15:22:16', '2023-11-01 15:22:16', NULL),
(801, 'App\\Models\\User', 9, 'GHpxF0i6', '2c6833d5af83a8596746899a2a0f3a767a35cddd7e413d87041d1f6c042e2f22', '[\"*\"]', NULL, '2023-11-01 15:22:17', '2023-11-01 15:22:17', NULL),
(802, 'App\\Models\\User', 9, 'TC2S2NVL', '010c8d0c925c28c8167897125a58b380ae85f19402e16a0487f460ef55572019', '[\"*\"]', '2023-11-01 15:22:26', '2023-11-01 15:22:17', '2023-11-01 15:22:26', NULL),
(803, 'App\\Models\\User', 9, '7zGzMTTH', '13b7e48a025b63216e9dae5e9656f977a9101ef0b2b94f5d3791ed5c742b1304', '[\"*\"]', NULL, '2023-11-01 15:22:21', '2023-11-01 15:22:21', NULL),
(804, 'App\\Models\\User', 9, 'l4Z1TZrk', '9752406a9635a82919d2a6ceda2f11fe09c3896eca3f7d826daa834a3b5b20e9', '[\"*\"]', NULL, '2023-11-01 15:23:45', '2023-11-01 15:23:45', NULL),
(805, 'App\\Models\\User', 9, 'jo44yMsd', 'f3134d8443bc94262a23afcee9c6f12c818ed3184f367a0d33b9b631a5f1f2f3', '[\"*\"]', NULL, '2023-11-01 15:23:45', '2023-11-01 15:23:45', NULL),
(806, 'App\\Models\\User', 9, 'yxtr55eW', 'caae0f40226a2750807660d8593d32a0f97406784efdecceb40193166c83c2fc', '[\"*\"]', '2023-11-01 15:23:47', '2023-11-01 15:23:45', '2023-11-01 15:23:47', NULL),
(807, 'App\\Models\\User', 9, '5vvzkyvV', 'a86b29a93b4377cb34469fa0fe465ea3febbbd87076528370294121c10f88c17', '[\"*\"]', NULL, '2023-11-01 15:24:11', '2023-11-01 15:24:11', NULL),
(808, 'App\\Models\\User', 9, 'lwDsxp2X', '391fea9d3662a2f2300b8cc200ff9cb05b55447d65f5e29bf5fb3e2402e886af', '[\"*\"]', NULL, '2023-11-01 15:24:11', '2023-11-01 15:24:11', NULL),
(809, 'App\\Models\\User', 9, 'ZFt9qDvJ', '180940892aa7505685a579c9d7d25ed1c7527c40bce1070c0551485a1eae4d76', '[\"*\"]', NULL, '2023-11-01 15:24:12', '2023-11-01 15:24:12', NULL),
(810, 'App\\Models\\User', 9, 'M9yBnqyZ', 'b7e138d86c366143474dffd5877520939ca8d2836d08c86ab2e3f1dc65228b01', '[\"*\"]', NULL, '2023-11-01 15:24:26', '2023-11-01 15:24:26', NULL),
(811, 'App\\Models\\User', 9, 'DdZLKknv', '7aaf8d64ab69a4bc33ed5675af38444d3c9f924bbd99558ef7a2bf59538913a1', '[\"*\"]', NULL, '2023-11-01 15:24:26', '2023-11-01 15:24:26', NULL),
(812, 'App\\Models\\User', 9, 'Bu7itoGF', 'ab4a4eaf1fc82ae29434cb6abcbd524e7846b761025e49c2672c639120dd3966', '[\"*\"]', '2023-11-01 15:24:29', '2023-11-01 15:24:26', '2023-11-01 15:24:29', NULL),
(813, 'App\\Models\\User', 9, 'mbeDguyL', 'b6d0bbc63f3932b2d14cbc8795a09e9bb5ac9332795b8d6bf4d09a3ac4f72d41', '[\"*\"]', NULL, '2023-11-01 15:26:28', '2023-11-01 15:26:28', NULL),
(814, 'App\\Models\\User', 9, 'Xkrz2Qeq', '22572c82e671ad9e3156dc5d97a3f29aee91bc2ae5d03fa48f1bb6c3653ac49a', '[\"*\"]', '2023-11-01 15:26:37', '2023-11-01 15:26:28', '2023-11-01 15:26:37', NULL),
(815, 'App\\Models\\User', 9, 'TpvU0PQn', 'dfc1eb6fd084bef72a251cfaa28e93717d17a9009035b97227d70cac37b8f20b', '[\"*\"]', NULL, '2023-11-01 15:26:28', '2023-11-01 15:26:28', NULL),
(816, 'App\\Models\\User', 9, 'C9HgxYbQ', '9c02b6cb8733d4994b3ce7ec874035efcd8def6a6e353aa52d108d938f59cd49', '[\"*\"]', NULL, '2023-11-01 15:27:32', '2023-11-01 15:27:32', NULL),
(817, 'App\\Models\\User', 9, 'JMsMkCGG', 'eae5344410e4c5095f4cb3de4b8e76b69e9ff67b1898ff7f357de53398a71c49', '[\"*\"]', '2023-11-01 15:27:51', '2023-11-01 15:27:32', '2023-11-01 15:27:51', NULL),
(818, 'App\\Models\\User', 9, 'KEqmvACc', 'ef5cd7498f7e0ba983af2448ca76b63e378082d9be8b4c87e5fd94af80613a9c', '[\"*\"]', NULL, '2023-11-01 15:27:32', '2023-11-01 15:27:32', NULL),
(819, 'App\\Models\\User', 9, '526k3tnZ', 'e53186e44574bcbc1721c847e368267fb4b214bf85515ac4d7aa8426a1545139', '[\"*\"]', NULL, '2023-11-01 15:29:24', '2023-11-01 15:29:24', NULL),
(820, 'App\\Models\\User', 9, 'Q4Qdg7p9', 'e3e2ac8c1af0c42a365ce01af3d1032d044bf2761724b33dc5261752e06b8fcd', '[\"*\"]', NULL, '2023-11-01 15:29:24', '2023-11-01 15:29:24', NULL),
(821, 'App\\Models\\User', 9, 'klkDBgct', 'b37cfc35da65ba5d712d5491a68fb9ca3370113dd30822f3cbed41e88ac70480', '[\"*\"]', NULL, '2023-11-01 15:30:09', '2023-11-01 15:30:09', NULL),
(822, 'App\\Models\\User', 9, 'rN9YFtmN', 'b6ced53c009a454d4832be150d65eaa799d3c98c9f3149fce54519cd3c5c4c27', '[\"*\"]', NULL, '2023-11-01 15:30:09', '2023-11-01 15:30:09', NULL),
(823, 'App\\Models\\User', 9, 'UP3p9oYX', 'e5642d2d2faac1d9f1addc73124fa25f5e803258f37980811a030f2310a79233', '[\"*\"]', '2023-11-01 15:30:23', '2023-11-01 15:30:09', '2023-11-01 15:30:23', NULL),
(824, 'App\\Models\\User', 9, 's347hnlz', 'e331606e05db452ebc9a02fb64f5ba25934e61a1f2437c1c06ba927cbdae4712', '[\"*\"]', NULL, '2023-11-01 15:31:31', '2023-11-01 15:31:31', NULL),
(825, 'App\\Models\\User', 9, '2nSw7V2d', 'a9490974e7ca89da841377bd118aa0c00febc870c8248bf056d07b2a4cdb0144', '[\"*\"]', NULL, '2023-11-01 15:31:31', '2023-11-01 15:31:31', NULL),
(826, 'App\\Models\\User', 9, 'wA92euJg', '5b329e76235767f54a1d5b1346d4fc5b7db84febdcb1b0bb74c223093b7df5fb', '[\"*\"]', '2023-11-01 15:31:34', '2023-11-01 15:31:31', '2023-11-01 15:31:34', NULL),
(827, 'App\\Models\\User', 9, 'FgaQ743x', '13f181f7d69c57cad609906bb999265d4e13801a1be19908cae266da26440867', '[\"*\"]', NULL, '2023-11-01 15:32:18', '2023-11-01 15:32:18', NULL),
(828, 'App\\Models\\User', 9, '9cHabMj3', 'c26ef75d43ba255c3ba8f52cac7456529a213949f5440bae12b65ae2ec43c5c6', '[\"*\"]', NULL, '2023-11-01 15:32:18', '2023-11-01 15:32:18', NULL),
(829, 'App\\Models\\User', 9, 'Iu3kPHH5', '80e5b3048721443d0317598d6a585629476ba223d9032557524c3afc460db11f', '[\"*\"]', NULL, '2023-11-01 15:32:18', '2023-11-01 15:32:18', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(830, 'App\\Models\\User', 9, 'G9gUu7ij', 'f051ab773c1efb7504a1c2b206cde9db510bdfd26b342ee69567bc58086a0cc8', '[\"*\"]', NULL, '2023-11-01 15:32:49', '2023-11-01 15:32:49', NULL),
(831, 'App\\Models\\User', 9, 'PtmrDLxx', '3f6a98b89546c8263a23b4286f8a2f2c96d18d0aee8a52a7910428c9ac52fb74', '[\"*\"]', NULL, '2023-11-01 15:32:49', '2023-11-01 15:32:49', NULL),
(832, 'App\\Models\\User', 9, 'ojx6VjsZ', 'a583ef54ac3bbd08ae2b3b4711851153327624b15fd186ee7609a008dfd1e4f1', '[\"*\"]', '2023-11-01 15:32:54', '2023-11-01 15:32:49', '2023-11-01 15:32:54', NULL),
(833, 'App\\Models\\User', 9, 'sbEX132i', '8e78c08827f31ed6c0ee2dc7c65c8afb1af59469c15ff2e19eeba8036738fe68', '[\"*\"]', NULL, '2023-11-01 15:33:26', '2023-11-01 15:33:26', NULL),
(834, 'App\\Models\\User', 9, 'kjYfEYdP', '514f2d329f590868f36f1215d1b649caf59aed7d3ee1d5ddd33d51f551d4a300', '[\"*\"]', NULL, '2023-11-01 15:33:26', '2023-11-01 15:33:26', NULL),
(835, 'App\\Models\\User', 9, 'lLK0VdXy', 'ed19e1b0f02caf4d7a51a7168c4873074bee5a881e246747fe653934e7200616', '[\"*\"]', NULL, '2023-11-01 15:33:26', '2023-11-01 15:33:26', NULL),
(836, 'App\\Models\\User', 9, 'M2Yu5sn7', '241063f303aea0fbbf7ddf81124c61d98ae49e909f74d3c447e5ee687dffd0c5', '[\"*\"]', NULL, '2023-11-01 15:33:35', '2023-11-01 15:33:35', NULL),
(837, 'App\\Models\\User', 9, '5sEDVX1v', '340159b2253f04d928bd191d014e44153009b15f4f205b0b375ef68c723f7e74', '[\"*\"]', '2023-11-01 15:33:40', '2023-11-01 15:33:35', '2023-11-01 15:33:40', NULL),
(838, 'App\\Models\\User', 9, '03FMohAM', '39fc2e64dd51d610245a1f685778125230fb6a4a2ffd46c6b15b8175997fbd89', '[\"*\"]', NULL, '2023-11-01 15:33:35', '2023-11-01 15:33:35', NULL),
(839, 'App\\Models\\User', 9, 'SkfjFXy0', 'c9201dc73d2c278cc0acc1cc4bc8943d9c30cf3d08987894488c954fd19726a9', '[\"*\"]', NULL, '2023-11-01 15:34:21', '2023-11-01 15:34:21', NULL),
(840, 'App\\Models\\User', 9, 'c74YYcCG', '78fe7dc37d7129233c665a5963e29f604dffaac491a4f0ece1f649a13e7a79b5', '[\"*\"]', NULL, '2023-11-01 15:34:21', '2023-11-01 15:34:21', NULL),
(841, 'App\\Models\\User', 9, '2P29VASh', '9349ac70c7543e80378f21885a3fcaf62e479225a162eb875899f647db1aadc2', '[\"*\"]', '2023-11-01 15:34:24', '2023-11-01 15:34:21', '2023-11-01 15:34:24', NULL),
(842, 'App\\Models\\User', 9, 'xe66qc5A', 'c606c8cb93dca6ee3125a9943d5e60f8f95a605d6eb0e798dc973f84f3ae618c', '[\"*\"]', NULL, '2023-11-01 15:35:06', '2023-11-01 15:35:06', NULL),
(843, 'App\\Models\\User', 9, '46o69xBH', '1122ce29a0ab3b2e77abff884df50369caf8fde1f4712442fce5e19695b2c921', '[\"*\"]', NULL, '2023-11-01 15:35:06', '2023-11-01 15:35:06', NULL),
(844, 'App\\Models\\User', 9, '2vTDNl5r', '4362de3500dcdf1a6892ef61321592d6d32a265ff28a475d77ad33c073265efc', '[\"*\"]', '2023-11-01 15:35:11', '2023-11-01 15:35:06', '2023-11-01 15:35:11', NULL),
(845, 'App\\Models\\User', 9, 'ucxukJAI', '69ba7e8a77777018155b678c6d18faac67437a1a48daa9159cd4ce9fdc6861ac', '[\"*\"]', NULL, '2023-11-01 15:35:39', '2023-11-01 15:35:39', NULL),
(846, 'App\\Models\\User', 9, 'DDRikFld', 'bcd609b8184f3881ee8c5ea3bd502daae0f47cc427d666f6d75a0bb6fd7b71e2', '[\"*\"]', '2023-11-01 15:35:44', '2023-11-01 15:35:39', '2023-11-01 15:35:44', NULL),
(847, 'App\\Models\\User', 9, 'POkPUgdL', '56fdb53179c7a248c04c7f46173fa0f25614222529e8f731a8065c72c127df80', '[\"*\"]', NULL, '2023-11-01 15:35:39', '2023-11-01 15:35:39', NULL),
(848, 'App\\Models\\User', 9, 'vPRIgQV3', '15ad87cbbce631e83fd2c9d52c68ecd9be8ee485a34e0a0115daf60c954e033a', '[\"*\"]', NULL, '2023-11-01 15:36:39', '2023-11-01 15:36:39', NULL),
(849, 'App\\Models\\User', 9, 'O4rEXCxK', 'bd026c88468fd1d3c6dd5d32a511cf666b608a96a543988982677190229dd765', '[\"*\"]', '2023-11-01 15:36:43', '2023-11-01 15:36:39', '2023-11-01 15:36:43', NULL),
(850, 'App\\Models\\User', 9, 'EItq383L', '364f56501c0cd97d40ab16acb77a224cf56acf4c6962a1a0e855ba5bb12c757b', '[\"*\"]', NULL, '2023-11-01 15:36:39', '2023-11-01 15:36:39', NULL),
(851, 'App\\Models\\User', 9, '6eszY8jZ', '739a21fef8ae2854ab05f844e8c4cfc44bce73b0a07ec5a00248bc81f2904769', '[\"*\"]', NULL, '2023-11-01 15:36:39', '2023-11-01 15:36:39', NULL),
(852, 'App\\Models\\User', 9, 'fpStwGGu', '66161d0d78fae1a9f08ffbfe96538f53da7917d2a45451f0d3d4017e9089ad9d', '[\"*\"]', NULL, '2023-11-01 15:37:42', '2023-11-01 15:37:42', NULL),
(853, 'App\\Models\\User', 9, '4Bc7OFTF', 'f828fb67676f60174d01434ae815333db5e4756a494eff0bbf6d7dd9073e7d09', '[\"*\"]', '2023-11-01 15:37:51', '2023-11-01 15:37:42', '2023-11-01 15:37:51', NULL),
(854, 'App\\Models\\User', 9, '6FaU9ZgT', 'c162ad2289f8f81229af86f4a5853e0409c9e512d23cb041f6cb616543192365', '[\"*\"]', NULL, '2023-11-01 15:37:42', '2023-11-01 15:37:42', NULL),
(855, 'App\\Models\\User', 9, 'Zi3akbtm', '355cd89c52ac74b274eb9231744b431e78569882a7070aceeb117e5606527cea', '[\"*\"]', NULL, '2023-11-01 15:37:46', '2023-11-01 15:37:46', NULL),
(856, 'App\\Models\\User', 9, '9HFmJ3Zh', 'e194371aeceb6ec403100dcf57a43413d887019a05a5ad7a4dd67658ed98cc66', '[\"*\"]', NULL, '2023-11-01 15:37:48', '2023-11-01 15:37:48', NULL),
(857, 'App\\Models\\User', 9, 'Z1aNNAz1', '7e560c447e899b02c233479fb6c68eaf088db16f717f0e2a920e77456e221c10', '[\"*\"]', NULL, '2023-11-01 15:38:31', '2023-11-01 15:38:31', NULL),
(858, 'App\\Models\\User', 9, 'QxCZn2Y3', 'fb7148c9291376993f4b37da2ba29eafa855e6f5ab887d9f389fde24d34ab32a', '[\"*\"]', NULL, '2023-11-01 15:38:31', '2023-11-01 15:38:31', NULL),
(859, 'App\\Models\\User', 9, '1lNoYlkm', 'eb070460c1253642d65037af3f4d3b8cd941fdbf3f2c975e0adaeae42f16819d', '[\"*\"]', NULL, '2023-11-01 15:39:28', '2023-11-01 15:39:28', NULL),
(860, 'App\\Models\\User', 9, 'MeFAPuAh', 'a28102f9771d7b5eca240fa650e902ceecc17efd55a836cab70f3d2dd0a4e781', '[\"*\"]', NULL, '2023-11-01 15:39:28', '2023-11-01 15:39:28', NULL),
(861, 'App\\Models\\User', 9, 'LFAqTnJx', 'bce9cb568959a617a6497d821e0575dfc2f908b6a919be86146b79e8b7254ca6', '[\"*\"]', NULL, '2023-11-01 15:39:28', '2023-11-01 15:39:28', NULL),
(862, 'App\\Models\\User', 9, 'SWrSdWiw', '1f20d5a7b1ac308ff807745a93d53d6afd89e6f0572f998d9ea08f32a21e8fef', '[\"*\"]', NULL, '2023-11-01 15:48:57', '2023-11-01 15:48:57', NULL),
(863, 'App\\Models\\User', 9, 'gnVygH2L', 'e660a059caf89744b21f0a55ad6181de3c47d09d0dba74cd49caab7baf387ac2', '[\"*\"]', NULL, '2023-11-01 15:48:57', '2023-11-01 15:48:57', NULL),
(864, 'App\\Models\\User', 9, 'xOYhkvzE', '5644d76e806f9e4397d5a91e262718751c8e6aa7e57e023c512d424c55d242e6', '[\"*\"]', NULL, '2023-11-01 15:49:58', '2023-11-01 15:49:58', NULL),
(865, 'App\\Models\\User', 9, 'wq4rHN8n', '99509fb50916fe2fb74368077bff19b4c640d3970e5ec953b2f79b2d7b9bfb2a', '[\"*\"]', NULL, '2023-11-01 15:49:58', '2023-11-01 15:49:58', NULL),
(866, 'App\\Models\\User', 9, 'xNx4k1fO', '7ff654b538419e7e7c90e33fc565a8546dda03c643c02ab36381e91b92e447b3', '[\"*\"]', NULL, '2023-11-01 15:49:58', '2023-11-01 15:49:58', NULL),
(867, 'App\\Models\\User', 9, 'Cy91MVp5', '8377831e0ab2852d8a3afa787b46fef3bc7338f6f32e9a3c8994f7e700f76c7e', '[\"*\"]', '2023-11-01 15:52:19', '2023-11-01 15:50:15', '2023-11-01 15:52:19', NULL),
(868, 'App\\Models\\User', 9, 'Ezq8i0gv', '577bf98a7da54db9176dbc73e16c9c13fde93d96d5717fd1029a6138ce7b7a1b', '[\"*\"]', NULL, '2023-11-01 15:50:15', '2023-11-01 15:50:15', NULL),
(869, 'App\\Models\\User', 9, 'HcgsyYzo', 'ea7106d431a8dd70123cb66a41b219f5b66744c6fddbb646569087d5453a7dd1', '[\"*\"]', NULL, '2023-11-01 15:50:15', '2023-11-01 15:50:15', NULL),
(870, 'App\\Models\\User', 9, 'NslSPvLV', 'a494ffbf5d2aae9687d60757982afca22c4415e53241b37699571fb22a4e63e7', '[\"*\"]', NULL, '2023-11-01 15:51:25', '2023-11-01 15:51:25', NULL),
(871, 'App\\Models\\User', 9, 'YsAo8tda', '5f99ab1b7c13151e3167dc68db1c814706faacbbf0926120d68bcf18d2135959', '[\"*\"]', NULL, '2023-11-01 15:52:35', '2023-11-01 15:52:35', NULL),
(872, 'App\\Models\\User', 9, 'LAHmGUdc', 'ed3ca3896240afa66c4dba16a97290a91264144d98c68739124c495133a04863', '[\"*\"]', '2023-11-01 15:52:47', '2023-11-01 15:52:35', '2023-11-01 15:52:47', NULL),
(873, 'App\\Models\\User', 9, 'ZjcE2iOs', '726dac3c519132785dd994e680cf1886e77154005b00f35b9e9419f0c72f60d9', '[\"*\"]', NULL, '2023-11-01 15:52:35', '2023-11-01 15:52:35', NULL),
(874, 'App\\Models\\User', 9, 'YHXxGOYB', 'b112866269ffff4d3877b5a328355277f28257920bd9b78452ef6e21f3195bfd', '[\"*\"]', NULL, '2023-11-01 15:53:06', '2023-11-01 15:53:06', NULL),
(875, 'App\\Models\\User', 9, '1Z9SExwz', '36635dc10006090992d4bd48dbe86fe03e45c5aeef6a5a316f8842c31952ee2a', '[\"*\"]', NULL, '2023-11-01 15:53:06', '2023-11-01 15:53:06', NULL),
(876, 'App\\Models\\User', 9, 'gOHBQ2cY', 'd8286343c799f2ebf7ad04b896e1f28b729d71b4fc6467c8c35b3bb71c0cb66c', '[\"*\"]', '2023-11-01 15:56:17', '2023-11-01 15:53:06', '2023-11-01 15:56:17', NULL),
(877, 'App\\Models\\User', 9, 'TWX50OfM', 'd74bde7e807738b3755152bc084c0c82c6e25918c48e830e1e7c3fc1b4abbad2', '[\"*\"]', NULL, '2023-11-01 15:54:37', '2023-11-01 15:54:37', NULL),
(878, 'App\\Models\\User', 9, 'P4D42bzg', '45b612b0b837c4ff63fce5b55b6f15007d15c29087b43acd5562a9da2470985f', '[\"*\"]', NULL, '2023-11-01 15:56:06', '2023-11-01 15:56:06', NULL),
(879, 'App\\Models\\User', 9, 'CI6hc2bu', 'a0003945687d78e4cbb3c425e97486affe5e009c173898e6dca256097a0e9711', '[\"*\"]', NULL, '2023-11-01 15:56:06', '2023-11-01 15:56:06', NULL),
(880, 'App\\Models\\User', 9, 'c4kzba1p', '82ef5eb5cbb72a1f6379e97de69c398541ac1aee842e75a812eae2170679374e', '[\"*\"]', NULL, '2023-11-01 15:56:32', '2023-11-01 15:56:32', NULL),
(881, 'App\\Models\\User', 9, '6ptXjwT8', 'aecb11490c019b1df81e1fbc3d8cb4f99160950cc26d4039308a2778ce9afb51', '[\"*\"]', NULL, '2023-11-01 15:56:32', '2023-11-01 15:56:32', NULL),
(882, 'App\\Models\\User', 9, 'xVAGZ76l', '6f3f8a3f7454a583a20853c5037c65da0f88f5e9a95cbf00f5e691b928b5add6', '[\"*\"]', '2023-11-01 15:56:43', '2023-11-01 15:56:32', '2023-11-01 15:56:43', NULL),
(883, 'App\\Models\\User', 9, '0vVNtkPe', '4e9d5ce03d8ffebbb0951961bc0102e6466db0f77dd94c58c17399602ba9b4c5', '[\"*\"]', NULL, '2023-11-01 16:01:53', '2023-11-01 16:01:53', NULL),
(884, 'App\\Models\\User', 9, 'doDptwig', 'a71e2361d54b2501986363329cc2c6342ffb73aeb866c96f23512dce829437ae', '[\"*\"]', NULL, '2023-11-01 16:04:41', '2023-11-01 16:04:41', NULL),
(885, 'App\\Models\\User', 9, 'GWUjSHT1', 'ef5a4f14ced723f5e5b389bfe70503eade001c25f13185a3e454528c44f7c106', '[\"*\"]', NULL, '2023-11-01 16:04:55', '2023-11-01 16:04:55', NULL),
(886, 'App\\Models\\User', 9, 'Vd8aTbCf', '39f4b9ad01fd9d34936627b39caef8fe5df7d5b065dd8126a08e1539a3da4654', '[\"*\"]', NULL, '2023-11-01 16:04:55', '2023-11-01 16:04:55', NULL),
(887, 'App\\Models\\User', 9, 'cfl4yYy9', '9861fa9699dbc0bb40a1ae66c44be743a7688579694f232d3671a76ebccc4ed4', '[\"*\"]', NULL, '2023-11-01 16:05:56', '2023-11-01 16:05:56', NULL),
(888, 'App\\Models\\User', 9, 'T8O7CGba', '30adad9257ba7751fe5aa47dfff7c8c04a5b5c6fbdc1ca4dfce4fac84887e503', '[\"*\"]', NULL, '2023-11-01 16:05:56', '2023-11-01 16:05:56', NULL),
(889, 'App\\Models\\User', 9, 'zgIKjyyF', 'fe0dc6eaa20b88b17828fe88b2509cea0b305cd3d58686e9691a1e53ec1f4ef7', '[\"*\"]', '2023-11-01 16:06:17', '2023-11-01 16:05:56', '2023-11-01 16:06:17', NULL),
(890, 'App\\Models\\User', 9, 'MkYcTxqH', 'b16c0151ae722457646dde4de4ef157446ed16564e9f191d960d4721bf3b3ceb', '[\"*\"]', NULL, '2023-11-01 16:05:59', '2023-11-01 16:05:59', NULL),
(891, 'App\\Models\\User', 9, '8e48mZBH', '73e3d1e85491ec75f75ebe0fdd33379ce77ff18e67c86f4d6b7aaafa348af65d', '[\"*\"]', NULL, '2023-11-01 16:06:11', '2023-11-01 16:06:11', NULL),
(892, 'App\\Models\\User', 9, 'GfH2jXf6', '755581caccd59e8a162e4689e5a63731c8eec367809a6ad023c0243dd5148cca', '[\"*\"]', NULL, '2023-11-01 16:06:42', '2023-11-01 16:06:42', NULL),
(893, 'App\\Models\\User', 9, 'jxUulZ6K', 'f0a4dfd484480740bacc36a592bddb808c81e65da1807462579566405017bea2', '[\"*\"]', '2023-11-01 16:06:45', '2023-11-01 16:06:42', '2023-11-01 16:06:45', NULL),
(894, 'App\\Models\\User', 9, 'ydhyksGC', '0a08433544d73e7c539068c0a416898ec45feae4a8be958cea7e4b311b6ce07f', '[\"*\"]', NULL, '2023-11-01 16:06:42', '2023-11-01 16:06:42', NULL),
(895, 'App\\Models\\User', 9, 'lkCtFoBa', '41e280de3e0233db94098684e227d66add2689bff441551438d7b34d56e381bc', '[\"*\"]', NULL, '2023-11-01 16:07:21', '2023-11-01 16:07:21', NULL),
(896, 'App\\Models\\User', 9, 'eHPIlT7U', 'f891074d130605cb27707c9a9a489a72c6ea54f0a9220f1ea09743d3a901bea3', '[\"*\"]', NULL, '2023-11-01 16:07:21', '2023-11-01 16:07:21', NULL),
(897, 'App\\Models\\User', 9, 'nvKi4gkq', 'd161ae3e5d1402e2a558765f937ca7b2ddec7ec3757738099aea7197e2407221', '[\"*\"]', NULL, '2023-11-01 16:07:21', '2023-11-01 16:07:21', NULL),
(898, 'App\\Models\\User', 9, '7n5sOklm', 'af7bb70d65a4314b9ef21b270aba36bfb3b70d8a2455ed465235401c05baa272', '[\"*\"]', NULL, '2023-11-01 16:07:49', '2023-11-01 16:07:49', NULL),
(899, 'App\\Models\\User', 9, 'zuHAuqMN', '45225ab7182fe4d53c050f3d41598346d68ec8b9b4ae9c3513f98ff59976879b', '[\"*\"]', '2023-11-01 16:07:54', '2023-11-01 16:07:49', '2023-11-01 16:07:54', NULL),
(900, 'App\\Models\\User', 9, 'yp4W32JL', '6e187edc2e88fa10f8d45c9b5586b0f5b8994a69d3932e617ecb855291f5f133', '[\"*\"]', NULL, '2023-11-01 16:07:50', '2023-11-01 16:07:50', NULL),
(901, 'App\\Models\\User', 9, 'LAKr8bYL', '2dcfa16cc5f44c7d187daae7b1be4b18ea6f415e125a78fc1f32bcf13f3716e1', '[\"*\"]', NULL, '2023-11-01 16:08:24', '2023-11-01 16:08:24', NULL),
(902, 'App\\Models\\User', 9, '9uHbKQbY', '17b91b2fc77d72603a5b8d48c414af4a3f777c8982180ab893152c2d1b132f18', '[\"*\"]', NULL, '2023-11-01 16:08:24', '2023-11-01 16:08:24', NULL),
(903, 'App\\Models\\User', 9, 'KIZEZuta', '011a9b3dd4ceda847266ee5f097cdedab96ac1ac5deab624e5bd29db865f2953', '[\"*\"]', '2023-11-01 16:08:47', '2023-11-01 16:08:24', '2023-11-01 16:08:47', NULL),
(904, 'App\\Models\\User', 9, 'NqFCwhq9', 'cb26126f559814f36436e2091971d235993b0c04644ff7353b240acfa82d7c2b', '[\"*\"]', NULL, '2023-11-01 16:08:25', '2023-11-01 16:08:25', NULL),
(905, 'App\\Models\\User', 9, 'CCYhhPwx', 'e4c7ef421c1203b6e3e504b8ad1d3e68e9f65d25411d6eb64b4639b47b3e75d4', '[\"*\"]', NULL, '2023-11-01 16:08:38', '2023-11-01 16:08:38', NULL),
(906, 'App\\Models\\User', 9, 'VnawmAPw', 'f31010ef7bf07904a13879d2282d90e01746f4d6e38deae10fe7409f642a0713', '[\"*\"]', NULL, '2023-11-01 16:09:26', '2023-11-01 16:09:26', NULL),
(907, 'App\\Models\\User', 9, 'a97spHwU', '356aa9803d31e8cbe78affcf492b1dc4b48826e868ed8553f0cd973a3745e48d', '[\"*\"]', NULL, '2023-11-01 16:09:26', '2023-11-01 16:09:26', NULL),
(908, 'App\\Models\\User', 9, 'P45WpdaR', '59c421bdd849dec7a4992ec51b23579d2df866431d912dcf2b52ac043a981343', '[\"*\"]', NULL, '2023-11-01 16:09:26', '2023-11-01 16:09:26', NULL),
(909, 'App\\Models\\User', 9, 'j5Bdda8x', '94c20e8afcffd6a5bcb07a39b5657212ae1dd0800b0472061cb4459ea9246ec9', '[\"*\"]', NULL, '2023-11-01 16:09:48', '2023-11-01 16:09:48', NULL),
(910, 'App\\Models\\User', 9, 'ZX9PCbs6', '4cb5aadd0111b7a83aa0b4d71706790e72f3a610fde7e34b8a1f5750e08b3e7a', '[\"*\"]', '2023-11-01 16:10:07', '2023-11-01 16:09:48', '2023-11-01 16:10:07', NULL),
(911, 'App\\Models\\User', 9, 'JOY2AdKK', 'afd0cc292be49c5d0cfa5ddb4d101f36003615d73b49b4ead0c860ae8d6a7d09', '[\"*\"]', NULL, '2023-11-01 16:09:48', '2023-11-01 16:09:48', NULL),
(912, 'App\\Models\\User', 9, '8WDB9BE6', '6b2b6d5ba94410e55d0b0b4552c55596568bb8c1b67106856716f031f399b928', '[\"*\"]', NULL, '2023-11-01 16:10:45', '2023-11-01 16:10:45', NULL),
(913, 'App\\Models\\User', 9, 'dYEbGWj4', 'c8eca905bd5c75413b057b7d62a17e499a55cba0c9310fb29b517459c7fe28eb', '[\"*\"]', NULL, '2023-11-01 16:10:45', '2023-11-01 16:10:45', NULL),
(914, 'App\\Models\\User', 9, '3uWcTMQV', '92bca12e812d2769263f4c4bfe7172ff64a423b81edd576d81aaac198d9a754d', '[\"*\"]', NULL, '2023-11-01 16:10:45', '2023-11-01 16:10:45', NULL),
(915, 'App\\Models\\User', 9, 'mem1Ezb2', '1ef2280b5ef9510fc6bb5c63c58b7b309e76242dcec353842f166ac48a00eb04', '[\"*\"]', NULL, '2023-11-01 16:11:06', '2023-11-01 16:11:06', NULL),
(916, 'App\\Models\\User', 9, 'BpuKN3ZV', '98b75147b4da8bf0e02998dfc380204e2512d1bee35b404da601704a63eeb585', '[\"*\"]', '2023-11-01 16:11:15', '2023-11-01 16:11:06', '2023-11-01 16:11:15', NULL),
(917, 'App\\Models\\User', 9, '1R2pFXDn', 'e245952352ee8ca2afddf0bd38631bd16013b0713369dea8a30449277d1b0360', '[\"*\"]', NULL, '2023-11-01 16:11:06', '2023-11-01 16:11:06', NULL),
(918, 'App\\Models\\User', 9, 'k20cMYVS', 'b94a3060d8769c7f881c08534a26da47eed2696a0827892eee657ec562f0029c', '[\"*\"]', '2023-11-01 16:12:44', '2023-11-01 16:12:40', '2023-11-01 16:12:44', NULL),
(919, 'App\\Models\\User', 9, 'slPI82Sk', '63a2829c0aaa3e41c600d5c7217ed33ce244e3bfd39503afccce91eedd514a88', '[\"*\"]', NULL, '2023-11-01 16:12:40', '2023-11-01 16:12:40', NULL),
(920, 'App\\Models\\User', 9, 'J1Zl3PEW', '9c517f7d233e093f275371f7e7a9eccd9c8502ceb56d23229711d5a8545d6cef', '[\"*\"]', '2023-11-01 16:14:12', '2023-11-01 16:13:37', '2023-11-01 16:14:12', NULL),
(921, 'App\\Models\\User', 9, 'NOMzFhwe', '590b5f807e8cc499babfde69920654cd1d5253740abdb5d021104c59bb6f89d8', '[\"*\"]', NULL, '2023-11-01 16:13:37', '2023-11-01 16:13:37', NULL),
(922, 'App\\Models\\User', 9, 'jaPxGrRt', 'cbdba6d76b484f27c1e954bb8f6480d78f03eba121c2b0ac4dd7ff1224e755ed', '[\"*\"]', NULL, '2023-11-01 16:15:46', '2023-11-01 16:15:46', NULL),
(923, 'App\\Models\\User', 9, 'AjtQjqUL', 'aa7c3f69d2ec202f7166c6494e6e9f016b47870f2a1985c25f4d8673605e1960', '[\"*\"]', '2023-11-01 16:15:55', '2023-11-01 16:15:46', '2023-11-01 16:15:55', NULL),
(924, 'App\\Models\\User', 9, 'E6SwbUYv', '117cfab86293f5e2e5093c5b817a6a82ae7a36e717c9a5ec3f68956d3fa2d306', '[\"*\"]', NULL, '2023-11-01 16:16:18', '2023-11-01 16:16:18', NULL),
(925, 'App\\Models\\User', 9, 'x0GGhJwz', 'e4af0af67cdcde8337e85b9c834e1451f0dd4ea2b860f2d65e9d064f754d956c', '[\"*\"]', '2023-11-01 16:16:30', '2023-11-01 16:16:18', '2023-11-01 16:16:30', NULL),
(926, 'App\\Models\\User', 9, 'bpyQDlEJ', '2c4ee0c034a048de90e503a89f76252e9486d637963910dd0b47e4eddbe18e3f', '[\"*\"]', '2023-11-01 16:18:02', '2023-11-01 16:17:40', '2023-11-01 16:18:02', NULL),
(927, 'App\\Models\\User', 9, 'bYGJQo1G', '305af7eab0e83a3587944c30a7e3c6b78b676dd2cedf43a66f9d36224677296f', '[\"*\"]', NULL, '2023-11-01 16:17:40', '2023-11-01 16:17:40', NULL),
(928, 'App\\Models\\User', 9, 'pb07lWPO', 'b7badbdc84db6ea714e31061e509b76bb84655a5d9e041be8511daa891ffe3c3', '[\"*\"]', '2023-11-02 09:20:12', '2023-11-02 09:19:56', '2023-11-02 09:20:12', NULL),
(929, 'App\\Models\\User', 9, 'q5LKAmsM', 'c23819a573b83b969032dae1258753c30895f684309828f8f930ebb4748f084d', '[\"*\"]', NULL, '2023-11-02 09:19:56', '2023-11-02 09:19:56', NULL),
(930, 'App\\Models\\User', 9, 'GYeCxMba', '54e39caf528c00267d04b0b3a8518e571919904a84a67dda587066dca057adf0', '[\"*\"]', NULL, '2023-11-02 09:21:43', '2023-11-02 09:21:43', NULL),
(931, 'App\\Models\\User', 9, 'xgO2is5v', '7594225a3f2255d67f0eae66cfa475bfa3a5d15fd6ecf80b2e92f796304a0498', '[\"*\"]', NULL, '2023-11-02 09:21:43', '2023-11-02 09:21:43', NULL),
(932, 'App\\Models\\User', 9, 'qIB5xfQb', '5c9c1928b076946d8de6d25251e6009ce1e900d7466fcace1137546497513e1e', '[\"*\"]', '2023-11-02 09:24:19', '2023-11-02 09:21:51', '2023-11-02 09:24:19', NULL),
(933, 'App\\Models\\User', 9, 'ag1bA2UM', 'ae9eb05b7991ccf1e60976aec75fca6a14c895ff80d9b097e10ad190ace3ff15', '[\"*\"]', NULL, '2023-11-02 09:21:51', '2023-11-02 09:21:51', NULL),
(934, 'App\\Models\\User', 9, 'EqaH7PvL', '5267ef81012c675d2496c3e9471b7fdf611b55062a3c10f1b8c193f67a0a711a', '[\"*\"]', NULL, '2023-11-02 09:22:32', '2023-11-02 09:22:32', NULL),
(935, 'App\\Models\\User', 9, 'Ujo533n2', '0c6bb781b4b24fd42381a846994274042e828cb5e83c8593d5a5ba12516c2477', '[\"*\"]', '2023-11-02 09:24:31', '2023-11-02 09:24:29', '2023-11-02 09:24:31', NULL),
(936, 'App\\Models\\User', 9, 'cTmpEWLo', 'cd4b14a30751f1edffa9c4ac70c251de146af8b7774e2609949a7900450916b4', '[\"*\"]', NULL, '2023-11-02 09:24:29', '2023-11-02 09:24:29', NULL),
(937, 'App\\Models\\User', 9, 'G1qSMP8m', '9c6ddf49d5ac98e0d5a700a8d419dca6f8c4a63a9304a440a290b3fe69aade92', '[\"*\"]', NULL, '2023-11-02 09:26:09', '2023-11-02 09:26:09', NULL),
(938, 'App\\Models\\User', 9, 'Z0t7sPue', '4ca7fae527fbbd5e9cbb494253c822fa13799ccd94712b6cc8b43c650d2f413d', '[\"*\"]', '2023-11-02 09:26:24', '2023-11-02 09:26:09', '2023-11-02 09:26:24', NULL),
(939, 'App\\Models\\User', 9, 'aoX5UjWk', '6648f75b2d9c6e8f13263aed991bf4f2197d06f256953bef7808f38f96a7c382', '[\"*\"]', '2023-11-02 09:29:38', '2023-11-02 09:27:27', '2023-11-02 09:29:38', NULL),
(940, 'App\\Models\\User', 9, 'uhyow35z', '92069941462f7012c3c5af32e7eb33248f5744c22fa49999ecf4707e1bfc9b5f', '[\"*\"]', NULL, '2023-11-02 09:27:27', '2023-11-02 09:27:27', NULL),
(941, 'App\\Models\\User', 9, 'VyzjtrYj', 'd04af833db4c51915ea1aad3eb83ace4b99586b130b723768f6c02f0781fbbc2', '[\"*\"]', NULL, '2023-11-02 09:28:39', '2023-11-02 09:28:39', NULL),
(942, 'App\\Models\\User', 9, 'YiC3jjMZ', 'dbaec313ef98f5681e3594347eaaab46edaaf4adff1052ea0c420b5a65f0587a', '[\"*\"]', NULL, '2023-11-02 09:28:49', '2023-11-02 09:28:49', NULL),
(943, 'App\\Models\\User', 9, '67jQySOb', 'a9e0e286a68d3ee2e981abf12206eccc6f78afbb856159dee2fa250c81d053dd', '[\"*\"]', NULL, '2023-11-02 09:29:08', '2023-11-02 09:29:08', NULL),
(944, 'App\\Models\\User', 9, 'dvUVpwTD', '80cb9daefc0e878921d221951536af7a9cd714ab24a08d6e366326e8cad84d45', '[\"*\"]', NULL, '2023-11-02 09:29:13', '2023-11-02 09:29:13', NULL),
(945, 'App\\Models\\User', 9, 'i02ePBZM', '0b49f12d56f37d84a6d568c7dc6b8aec34eeb1d0d9e29308bacbec762f17d2c6', '[\"*\"]', NULL, '2023-11-02 09:29:17', '2023-11-02 09:29:17', NULL),
(946, 'App\\Models\\User', 9, 't66ztpZ5', '43903cd69e9d4b03018fc9aa16bbc14a6039ff1bbbd2be3769c4f15ddbe7ac63', '[\"*\"]', NULL, '2023-11-02 09:30:05', '2023-11-02 09:30:05', NULL),
(947, 'App\\Models\\User', 9, 'IdKQFFoz', '8de47dc21fe861a8aa8067655569aeaadf745d30debbd1bbf12b5271e4eeefb2', '[\"*\"]', '2023-11-02 09:30:13', '2023-11-02 09:30:05', '2023-11-02 09:30:13', NULL),
(948, 'App\\Models\\User', 9, '8Ol2tEHY', '0242c143b84f67254a025cadd863e8c56cd90529ac875313924aef4f913bb58e', '[\"*\"]', NULL, '2023-11-02 09:30:35', '2023-11-02 09:30:35', NULL),
(949, 'App\\Models\\User', 9, 'x99d4qLL', '9d0579ff633ddcf63a45900731e135712e4d259b578ca34197d8742354827eca', '[\"*\"]', NULL, '2023-11-02 09:30:35', '2023-11-02 09:30:35', NULL),
(950, 'App\\Models\\User', 9, 'u4P341xd', '7598412e570e9eddcd192529d1da70814d085015f91618b59f152ee01f6a4071', '[\"*\"]', NULL, '2023-11-02 09:31:07', '2023-11-02 09:31:07', NULL),
(951, 'App\\Models\\User', 9, '2rum8rnz', 'd0df2ade71cd9a7ceba04f2415339d1bf50bf56a04c4b5a62e9d13626d61d712', '[\"*\"]', '2023-11-02 09:36:31', '2023-11-02 09:31:07', '2023-11-02 09:36:31', NULL),
(952, 'App\\Models\\User', 9, '8IBh2d4i', 'c7e1ad064bfb227f58ff057e336f5ba34644abc90ce283950bc788470807fc81', '[\"*\"]', NULL, '2023-11-02 09:31:44', '2023-11-02 09:31:44', NULL),
(953, 'App\\Models\\User', 9, 'kIoNwUv0', 'ef6ab9c0ef1b7112022ab7f157168dac8ca62ad5e5c8adf5bcb86c161bb12891', '[\"*\"]', NULL, '2023-11-02 09:32:19', '2023-11-02 09:32:19', NULL),
(954, 'App\\Models\\User', 9, 'yrM3NJ9D', '344a04cddc5d7b8a407fcc519f004a72fea1aff2f19aff9fa64ba09062671b52', '[\"*\"]', NULL, '2023-11-02 09:33:34', '2023-11-02 09:33:34', NULL),
(955, 'App\\Models\\User', 9, 'jRrcm4s2', '215f81e079eddb8e5dc6ca4cb02c3031eea722e958315c713cce4e5ec0c0a0e1', '[\"*\"]', NULL, '2023-11-02 09:33:47', '2023-11-02 09:33:47', NULL),
(956, 'App\\Models\\User', 9, '1eI3yiDY', '9f325a32edfe356e90c18ac9a74262310d18dd5d65824be84ad3f22f32ba2967', '[\"*\"]', NULL, '2023-11-02 09:34:09', '2023-11-02 09:34:09', NULL),
(957, 'App\\Models\\User', 9, 'p6cXKhCs', 'e9c23d168bee39e25ec258ae2a0c55af117032fc374f502c803be9e6c4eb4514', '[\"*\"]', NULL, '2023-11-02 09:35:13', '2023-11-02 09:35:13', NULL),
(958, 'App\\Models\\User', 9, 'xAuKNrbz', 'f447fa712140772ac5c1f90355f08d57dc247dae6f629aa5c0f49d3ae243ff38', '[\"*\"]', NULL, '2023-11-02 09:35:44', '2023-11-02 09:35:44', NULL),
(959, 'App\\Models\\User', 9, '2VebWGd1', '169feecd143d8cd724a31c20e93b70fa97420b4b3a4031a603255a7d098fae0d', '[\"*\"]', NULL, '2023-11-02 09:35:44', '2023-11-02 09:35:44', NULL),
(960, 'App\\Models\\User', 9, 'BhbTCzWI', '5197b02a6a6453844323479ee6af921b222cc3953c2cf270ce89fcc6248a95fe', '[\"*\"]', NULL, '2023-11-02 09:36:12', '2023-11-02 09:36:12', NULL),
(961, 'App\\Models\\User', 9, 'xBDtQKEt', '441bd2ce5c785a6e759598ae4105a6e98e7c0832b016a872052f0f06da066682', '[\"*\"]', NULL, '2023-11-02 09:37:25', '2023-11-02 09:37:25', NULL),
(962, 'App\\Models\\User', 9, 'wM95EsW3', '11b961849122325aab67af31aebd353f0475a271152bbb9f804312dfe27ec717', '[\"*\"]', '2023-11-02 09:43:39', '2023-11-02 09:37:25', '2023-11-02 09:43:39', NULL),
(963, 'App\\Models\\User', 9, 'kjSV6W4c', 'c5d9603e50895540a6c99259401bfd6fed413175b3147c2dfdec8fd906d00f39', '[\"*\"]', NULL, '2023-11-02 09:39:15', '2023-11-02 09:39:15', NULL),
(964, 'App\\Models\\User', 9, 'ndmLmEQQ', '65d5ca643848c181d6e9d330a05d6d998bccc87a7138dd8b7303f7e6a3cb4058', '[\"*\"]', NULL, '2023-11-02 09:39:18', '2023-11-02 09:39:18', NULL),
(965, 'App\\Models\\User', 9, 'TmIqgob4', '31f46966de64096f2e87f51b55109b873ad4c4890971744fdb1ddefeba39772b', '[\"*\"]', NULL, '2023-11-02 09:40:17', '2023-11-02 09:40:17', NULL),
(966, 'App\\Models\\User', 9, 'Xg1s1o3s', '0f52fa418a2a8ccf4e8489a4a91d34cbfbe094db35e8ee8acc3d5dea64aa872c', '[\"*\"]', NULL, '2023-11-02 09:43:37', '2023-11-02 09:43:37', NULL),
(967, 'App\\Models\\User', 9, 'PZb6nktT', '23cda7925384329216367912968c6742bfb3a0e22f5c2b86031d3b4a9baad86d', '[\"*\"]', NULL, '2023-11-02 09:47:31', '2023-11-02 09:47:31', NULL),
(968, 'App\\Models\\User', 9, 'fEjN0bDZ', 'b45703a06ed40e2aba11c9758b52878d4bad0943e2fb7deb5628a4dc272a886e', '[\"*\"]', '2023-11-02 10:01:57', '2023-11-02 09:47:31', '2023-11-02 10:01:57', NULL),
(969, 'App\\Models\\User', 9, 'HIEmtotQ', '621dd649079bc93bc6d50dee6ef911c9609720b24098255b74f4275debd1e419', '[\"*\"]', NULL, '2023-11-02 09:47:51', '2023-11-02 09:47:51', NULL),
(970, 'App\\Models\\User', 9, '6NN1JmHp', '4dbe81ce4bdfba60fca58f441b9ce29792e9470f898356726d6de82a29834c50', '[\"*\"]', '2023-11-02 10:10:18', '2023-11-02 10:02:08', '2023-11-02 10:10:18', NULL),
(971, 'App\\Models\\User', 9, 'ee0lNpix', 'c4ff3d3fbd50421e697b9116c045672733e51e71edb4d911bc3bcb12dc6342a0', '[\"*\"]', NULL, '2023-11-02 10:02:08', '2023-11-02 10:02:08', NULL),
(972, 'App\\Models\\User', 9, 'zf6rlvaL', '70d1f547120854803fae938f58a53bbc246056bdf77478fa956376c63269104c', '[\"*\"]', NULL, '2023-11-02 10:10:18', '2023-11-02 10:10:18', NULL),
(973, 'App\\Models\\User', 9, 'Sp6Duhml', 'cdc932643943e17b28d7d05ad96d29e7a50b56b507ab993e8a2293c5c18abb79', '[\"*\"]', '2023-11-02 10:10:52', '2023-11-02 10:10:34', '2023-11-02 10:10:52', NULL),
(974, 'App\\Models\\User', 9, 'UDvCgZWg', '7ab15a8e8a1896e0da7c0427a712904998a6f8636ad8c842e2df71603dd4e8fe', '[\"*\"]', NULL, '2023-11-02 10:10:34', '2023-11-02 10:10:34', NULL),
(975, 'App\\Models\\User', 9, '2aJ1msiF', 'e238ed3e4515dbddb1d3e1a348c2bff8a0258d46a91dcc8e95dfca5cb423aa29', '[\"*\"]', '2023-11-02 10:12:27', '2023-11-02 10:11:35', '2023-11-02 10:12:27', NULL),
(976, 'App\\Models\\User', 9, 'xXbVaMCd', 'faa8edaf4c3e255fb8d7734aa28f3b9f44c2c97626e47e192d4113127e2fb5d6', '[\"*\"]', NULL, '2023-11-02 10:11:35', '2023-11-02 10:11:35', NULL),
(977, 'App\\Models\\User', 9, '5xie0dyw', '0ecc54f22c1894ddd46330c4ec0cd28f5820b4f6dc39d88e083cd14bb86a856e', '[\"*\"]', NULL, '2023-11-02 10:12:27', '2023-11-02 10:12:27', NULL),
(978, 'App\\Models\\User', 9, '9qIaXN5x', '3a267a0a761aa6615ccca9d09d3d0f1f108b0cccfbc5f309d46ace942b82da25', '[\"*\"]', NULL, '2023-11-02 10:12:43', '2023-11-02 10:12:43', NULL),
(979, 'App\\Models\\User', 9, 'Qh1bzML6', '9c6573fefba0a5cc7ab3afa4df60907fc8b6ffa046028e05433832e20df5ac32', '[\"*\"]', '2023-11-02 10:16:57', '2023-11-02 10:12:43', '2023-11-02 10:16:57', NULL),
(980, 'App\\Models\\User', 9, 'pBv66f9s', '8e584e3247145e9531523093fc5225de6f4a839a96ba6cda697d323f697c5904', '[\"*\"]', NULL, '2023-11-02 10:14:20', '2023-11-02 10:14:20', NULL),
(981, 'App\\Models\\User', 9, 'sXAjOtCF', '3f5c34f059d90f4db17340fa6822e8a58fea7de3e1485b96325a237f88add850', '[\"*\"]', NULL, '2023-11-02 10:16:00', '2023-11-02 10:16:00', NULL),
(982, 'App\\Models\\User', 9, 'IMudnNH4', '3e137fd109e01a4ba05a8bf8925bdccfca628a046e39bed40ce2eabb5b29b491', '[\"*\"]', NULL, '2023-11-02 10:16:57', '2023-11-02 10:16:57', NULL),
(983, 'App\\Models\\User', 9, 'MGvA8W4C', '411a573d45e025ce8311b43ee078a32465d5c22e2ca9ce269f8678ebc7251f8f', '[\"*\"]', NULL, '2023-11-02 10:17:12', '2023-11-02 10:17:12', NULL),
(984, 'App\\Models\\User', 9, '8KWOyL68', '64651485a0e97026440960e498091031596fdfc4a7e6c0ee8a8708049cea8d8a', '[\"*\"]', '2023-11-02 10:22:03', '2023-11-02 10:17:12', '2023-11-02 10:22:03', NULL),
(985, 'App\\Models\\User', 9, 'kkLratIX', 'a2d702228f0ffb723eed9e7837ca1ddb37fb2b56040593fe489f6c2db2260091', '[\"*\"]', NULL, '2023-11-02 10:18:15', '2023-11-02 10:18:15', NULL),
(986, 'App\\Models\\User', 9, 'qRfLqaQG', 'c7f365fe594a8f6322e22537e77fe4dd36dad206800277aa7e044fcd674f79b8', '[\"*\"]', NULL, '2023-11-02 10:18:46', '2023-11-02 10:18:46', NULL),
(987, 'App\\Models\\User', 9, 'ja9bs68Z', '72e250eca6e60692fa52544d04ae4c103a1faf455e7bb94bc21cc84bb540ef9c', '[\"*\"]', '2023-11-02 10:33:23', '2023-11-02 10:19:18', '2023-11-02 10:33:23', NULL),
(988, 'App\\Models\\User', 9, 'pFHPJY7h', 'b2d40a65e50df71044183a63a15304be0a6d766ecf58cc1ea68eda81b56f5641', '[\"*\"]', NULL, '2023-11-02 10:21:49', '2023-11-02 10:21:49', NULL),
(989, 'App\\Models\\User', 9, 'OGrPtIw7', '99d5d50d26d9219d8a7fbce113dc72df4b12d22c2329ecd4816d110c0c59dadf', '[\"*\"]', NULL, '2023-11-02 10:22:21', '2023-11-02 10:22:21', NULL),
(990, 'App\\Models\\User', 9, 'SShE4jEd', 'b018147450e1b2f904069840fc97b1dafd6d8794aef0df98c6efcbc5407a3a42', '[\"*\"]', '2023-11-02 10:22:41', '2023-11-02 10:22:21', '2023-11-02 10:22:41', NULL),
(991, 'App\\Models\\User', 9, 'FT8rF5ix', '688462264c183568e14a772000d84c575faeb270113329b8974340a415c4c5a4', '[\"*\"]', '2023-11-02 10:26:07', '2023-11-02 10:26:05', '2023-11-02 10:26:07', NULL),
(992, 'App\\Models\\User', 9, '7yB3iAHr', 'df9b72128d1dd6f6694f9eba5c1a41bb69c74872510567602275f8a0794de56e', '[\"*\"]', NULL, '2023-11-02 10:26:05', '2023-11-02 10:26:05', NULL),
(993, 'App\\Models\\User', 9, 'RfcaU6lI', '50ff3e2196b5944f9080da7cc270c12e2c54bc08eca89e021b70234a7903dbcf', '[\"*\"]', NULL, '2023-11-02 10:26:34', '2023-11-02 10:26:34', NULL),
(994, 'App\\Models\\User', 9, '6MEJ82PD', 'c5f163d9ac71c5bbce397980c11098469a22128a5bf0fb8a7f2d5ac65f56075f', '[\"*\"]', '2023-11-02 10:26:36', '2023-11-02 10:26:35', '2023-11-02 10:26:36', NULL),
(995, 'App\\Models\\User', 9, 'emj08hu7', '46ca68614e0fcf98fb18d2c43fb34cd052a149a858f5810a9819e859524d0fe1', '[\"*\"]', '2023-11-02 10:27:21', '2023-11-02 10:27:17', '2023-11-02 10:27:21', NULL),
(996, 'App\\Models\\User', 9, 'J4VLRBtg', 'd68539116aab2341e06e5ff42ce489cd52104ea8e9d85d4c7522f93029f94b20', '[\"*\"]', NULL, '2023-11-02 10:27:17', '2023-11-02 10:27:17', NULL),
(997, 'App\\Models\\User', 9, 'TwEk67L3', '37e535f5b4763a2d7f1e1ce1ee265200314ecbeb9c1c25b5c9e0bd75774c4728', '[\"*\"]', NULL, '2023-11-02 10:27:29', '2023-11-02 10:27:29', NULL),
(998, 'App\\Models\\User', 9, 'DYKSQcSR', '21e9102fef059968a6d37ae77331dfb54051ba40ba3201b72e15a91eb1600ca3', '[\"*\"]', '2023-11-02 10:27:31', '2023-11-02 10:27:29', '2023-11-02 10:27:31', NULL),
(999, 'App\\Models\\User', 9, 'Fx0PSg8q', 'f3113a9747b89dd620891b7508d466ad52b827f8be3ce4938d9d53d066c349f7', '[\"*\"]', NULL, '2023-11-02 10:28:40', '2023-11-02 10:28:40', NULL),
(1000, 'App\\Models\\User', 9, 'txrkyxvu', '053af08354032d12c7864911ea5a8813693177b3106d5333f9bde1969786f3eb', '[\"*\"]', '2023-11-02 10:28:42', '2023-11-02 10:28:40', '2023-11-02 10:28:42', NULL),
(1001, 'App\\Models\\User', 9, 'miPDt94O', 'a237f03e34a52341ada98cbf357c303c2f0cd087e6e5e7c1433511aa2205b164', '[\"*\"]', '2023-11-02 10:30:45', '2023-11-02 10:29:11', '2023-11-02 10:30:45', NULL),
(1002, 'App\\Models\\User', 9, '8IqVcEHC', '0b34769dca92a18f615f827a7337aaf2838da94ca1184c3930278fadfdb3ac58', '[\"*\"]', NULL, '2023-11-02 10:29:11', '2023-11-02 10:29:11', NULL),
(1003, 'App\\Models\\User', 9, 'yIhS6FSb', '6fc1d48b82f1387b63686372e0b626c4035cea10727266edbc9ef3b7ba3ce28a', '[\"*\"]', NULL, '2023-11-02 10:30:02', '2023-11-02 10:30:02', NULL),
(1004, 'App\\Models\\User', 9, 'Ab7jd3lX', '1e5dd344636642f11f8225dbe1ea933ceaf4fd949d87b25dec6463f5b4a9de60', '[\"*\"]', NULL, '2023-11-02 10:31:13', '2023-11-02 10:31:13', NULL),
(1005, 'App\\Models\\User', 9, '5MzBaQ8v', 'fac635c8e4646ab69a37b5bf711fd45473dcd23c99c35a8c10fada8c3852a442', '[\"*\"]', '2023-11-02 10:34:47', '2023-11-02 10:31:13', '2023-11-02 10:34:47', NULL),
(1006, 'App\\Models\\User', 9, 'k3IwqKSr', 'bba9d38f6059b1596cb78c079c4317e2e8220bc52c0ab15ea292936adf1aa113', '[\"*\"]', NULL, '2023-11-02 10:33:38', '2023-11-02 10:33:38', NULL),
(1007, 'App\\Models\\User', 9, 'yS5pNV0j', '8307adc1414da6450a6c8ed94e6c56b2d763b64a1c65d9f8a3f54f8622451180', '[\"*\"]', NULL, '2023-11-02 10:34:46', '2023-11-02 10:34:46', NULL),
(1008, 'App\\Models\\User', 9, 'HN7oVqDl', '4753966df95fd8aa54f4685f81be2470bda245a385fa3dd6e25cdfc961636f99', '[\"*\"]', '2023-11-02 10:38:15', '2023-11-02 10:35:57', '2023-11-02 10:38:15', NULL),
(1009, 'App\\Models\\User', 9, 'RkvFpooj', '272d786348e6e683b546b8163e5f23d69d4eca7022e1e2a7f602b229bf0a035e', '[\"*\"]', NULL, '2023-11-02 10:35:57', '2023-11-02 10:35:57', NULL),
(1010, 'App\\Models\\User', 9, 'D7leRMzs', '054d51155130d19a37bd49a01f622073b63083abf896c44af40924469219e836', '[\"*\"]', NULL, '2023-11-02 10:38:14', '2023-11-02 10:38:14', NULL),
(1011, 'App\\Models\\User', 9, 'xPaop0Aa', '97480107d5c17adc039ef2e7c4382567bfe8a064a84fec840675293ad1557eec', '[\"*\"]', '2023-11-02 10:39:18', '2023-11-02 10:39:17', '2023-11-02 10:39:18', NULL),
(1012, 'App\\Models\\User', 9, 'W9aEpUlx', 'ddff60cb90502cdf970f30e6a6ad022837fa26671e3861d18c70ad976ae401c9', '[\"*\"]', NULL, '2023-11-02 10:39:17', '2023-11-02 10:39:17', NULL),
(1013, 'App\\Models\\User', 9, '12dzsREK', '12be7a154c43d3298673f9fe11800c016fecb1d1831f2dcd5eb5a0238ef4f4b1', '[\"*\"]', '2023-11-02 10:39:57', '2023-11-02 10:39:57', '2023-11-02 10:39:57', NULL),
(1014, 'App\\Models\\User', 9, 'oRjKB33L', '3ae61f1f20306b7ba3a67883905b35d290675b3a95ec71213db1d0ae9bf6c06d', '[\"*\"]', NULL, '2023-11-02 10:39:57', '2023-11-02 10:39:57', NULL),
(1015, 'App\\Models\\User', 9, 'ffmZmYtx', '7eaef5962e09ea0c9dfb7b2763175e8638775a1cf69af6c6754ea169f96aeff2', '[\"*\"]', NULL, '2023-11-02 10:45:39', '2023-11-02 10:45:39', NULL),
(1016, 'App\\Models\\User', 9, 'GQUPiPI5', 'cd16b420f76c94b811372d3d2161e714ab2c8752aae0d428faeabc1e7c185794', '[\"*\"]', '2023-11-02 10:47:01', '2023-11-02 10:45:39', '2023-11-02 10:47:01', NULL),
(1017, 'App\\Models\\User', 9, 'AolER94b', 'd808ccb29a26dab176440138424883ec9fe3d4c4605f5955ad15eaf990d65990', '[\"*\"]', NULL, '2023-11-02 10:47:00', '2023-11-02 10:47:00', NULL),
(1018, 'App\\Models\\User', 9, '6xXWoXP0', '3680bc4630c4b235d41d76794a22dbfe2df0768efff287372d37c548e9f13ea8', '[\"*\"]', NULL, '2023-11-02 10:47:21', '2023-11-02 10:47:21', NULL),
(1019, 'App\\Models\\User', 9, 'KTEu2R0j', 'afc1de4c1faacd901e5b5f6f516668c70c7244b6d8104c1354e96ed9d89a3662', '[\"*\"]', '2023-11-02 10:48:27', '2023-11-02 10:47:21', '2023-11-02 10:48:27', NULL),
(1020, 'App\\Models\\User', 9, 'bmbypLpm', '9d9aa79769d03b63e4e81f19c9f566fd057df8afbf854199f328c9b6a63f93ca', '[\"*\"]', NULL, '2023-11-02 10:48:26', '2023-11-02 10:48:26', NULL),
(1021, 'App\\Models\\User', 9, 'c9Q8X0Uh', 'ed4af10527806e384bc8dc0e4dadd00d2a46ee73fc29f9ba17f14558d0a41403', '[\"*\"]', '2023-11-02 10:50:03', '2023-11-02 10:48:40', '2023-11-02 10:50:03', NULL),
(1022, 'App\\Models\\User', 9, 'hVSO5SGn', 'e5936286df40d8c990b11361b43a0678e8cdb486bc19a5ddea1b58df6a10ce7d', '[\"*\"]', NULL, '2023-11-02 10:48:40', '2023-11-02 10:48:40', NULL),
(1023, 'App\\Models\\User', 9, 'PdVSDkXU', 'ed68ed76d02674a6d4e70c6332ab65be55cb69190c14e5bae3dd35d073f9c5e7', '[\"*\"]', NULL, '2023-11-02 10:50:02', '2023-11-02 10:50:02', NULL),
(1024, 'App\\Models\\User', 9, 'wVVMfLKx', '498c5c4ab672251e62a4ce5bb4cb8a9a92f481e4bf004454acba28bb7430da27', '[\"*\"]', NULL, '2023-11-02 10:51:10', '2023-11-02 10:51:10', NULL),
(1025, 'App\\Models\\User', 9, 'EDVCXSAB', '513c4a36fd394b8978f1b483d76008a9b9cfe818746544f3edfb07c15295ee4c', '[\"*\"]', '2023-11-02 10:51:44', '2023-11-02 10:51:10', '2023-11-02 10:51:44', NULL),
(1026, 'App\\Models\\User', 9, '9DTE7fTP', 'c0bdf23f8cfac3a984a48b6d109b9124807f776ead606376d8f19e19ddd4c7d2', '[\"*\"]', NULL, '2023-11-02 10:51:12', '2023-11-02 10:51:12', NULL),
(1027, 'App\\Models\\User', 9, 'NUBrTYDI', '1343dde4ce3a1ae1af310af66ceed18c1d9cf9d53cdb1159eb98d8c4a9412891', '[\"*\"]', NULL, '2023-11-02 10:51:43', '2023-11-02 10:51:43', NULL),
(1028, 'App\\Models\\User', 9, 'Ow9ZYQyn', '0ebf97bf7d2bde396d4a5d61148ee2607614a986619914577e47cb071b1a08c4', '[\"*\"]', '2023-11-02 10:53:15', '2023-11-02 10:53:14', '2023-11-02 10:53:15', NULL),
(1029, 'App\\Models\\User', 9, '89YBp7P4', 'c0b97e815bcbd2f468366c02c3f0eef2d5b98cc058b6a500bc135b91fbd9897c', '[\"*\"]', NULL, '2023-11-02 10:53:14', '2023-11-02 10:53:14', NULL),
(1030, 'App\\Models\\User', 9, '9aYfCycu', 'e3d51bdfa4433bebe83c030ff550ff8636298480bc219808f5350f904ea774d0', '[\"*\"]', NULL, '2023-11-02 10:54:07', '2023-11-02 10:54:07', NULL),
(1031, 'App\\Models\\User', 9, 'VpLp71XI', '983bc4f013be0aef3d90b09e6e3f0d0151c38db1473858a886d8b4844d3a603c', '[\"*\"]', '2023-11-02 11:05:34', '2023-11-02 10:54:07', '2023-11-02 11:05:34', NULL),
(1032, 'App\\Models\\User', 9, 'XFX7COIk', 'ceece1733bba9c8cc8315682ad42501d5293cdfd57f746b2fdba947633197bf2', '[\"*\"]', NULL, '2023-11-02 11:02:28', '2023-11-02 11:02:28', NULL),
(1033, 'App\\Models\\User', 9, 'px9b01Vy', 'd9c9b93248ed75be3adbdc48481ef72d3802b2e02a5126dd864b833bdf0f3ffb', '[\"*\"]', NULL, '2023-11-02 11:02:31', '2023-11-02 11:02:31', NULL),
(1034, 'App\\Models\\User', 9, 'MKILRtXp', 'a9ad7f77479de92b144ab67bc96d8b441d48f3353af39b3937fa6ea60e12c85c', '[\"*\"]', NULL, '2023-11-02 11:03:43', '2023-11-02 11:03:43', NULL),
(1035, 'App\\Models\\User', 9, 'X2PUDalB', '8afcc44c03924777871df6e0174339bc96cb002174a3cfed3b60c2f54172d700', '[\"*\"]', NULL, '2023-11-02 11:04:15', '2023-11-02 11:04:15', NULL),
(1036, 'App\\Models\\User', 9, 'U137QT5w', '24e7dd6b88bf8118fed5e8ca6c55676b4ae946f25841198759c598f74214ad4d', '[\"*\"]', NULL, '2023-11-02 11:05:34', '2023-11-02 11:05:34', NULL),
(1037, 'App\\Models\\User', 9, 'rW2Bjr7g', '2337b576732f27110d61b6d0f160ca39b866a733e2cd5e2369ea37fc688fec43', '[\"*\"]', '2023-11-02 11:06:24', '2023-11-02 11:05:46', '2023-11-02 11:06:24', NULL),
(1038, 'App\\Models\\User', 9, 'qztOpRuo', '7e9131cdc447132bf91fd35dd883baef9eee964a05d183f9a538a31e58c0621e', '[\"*\"]', NULL, '2023-11-02 11:05:46', '2023-11-02 11:05:46', NULL),
(1039, 'App\\Models\\User', 10, 'Y3FpvMNo', '0579b69121afbf0f710b8cdf5a65b7d7c95afec0c285673a1b370133c1036114', '[\"*\"]', '2023-11-02 11:07:01', '2023-11-02 11:06:59', '2023-11-02 11:07:01', NULL),
(1040, 'App\\Models\\User', 10, 'CwBfKtNK', 'fdd87a0e5cb389846e8342b38b8f9e7c04e45cf0dcc7a2ca29f737a6e63499cd', '[\"*\"]', NULL, '2023-11-02 11:06:59', '2023-11-02 11:06:59', NULL),
(1041, 'App\\Models\\User', 10, 'k3uMo208', '74b6db51b2abf204349b335edf850669c6ee2e4400f3fa48c8df266bed30f3fd', '[\"*\"]', '2023-11-02 11:07:18', '2023-11-02 11:07:17', '2023-11-02 11:07:18', NULL),
(1042, 'App\\Models\\User', 10, '0E9Kw55P', 'd50cac9c3a2772730d2d28ce8bd05d32090081e40bbc115f7c1fc13671150821', '[\"*\"]', NULL, '2023-11-02 11:07:17', '2023-11-02 11:07:17', NULL),
(1043, 'App\\Models\\User', 10, 'E607kQgJ', '0d7d7af9b889657781b5cc326228a207172cc95f6d3cd6d6a41a41e42f86264e', '[\"*\"]', '2023-11-02 11:07:55', '2023-11-02 11:07:54', '2023-11-02 11:07:55', NULL),
(1044, 'App\\Models\\User', 10, 'JnKpeHf0', '8843c9b61cddec89579b7e9331e1664b84a952ae73284dfcccac2c84107ba520', '[\"*\"]', '2023-11-02 11:09:45', '2023-11-02 11:07:54', '2023-11-02 11:09:45', NULL),
(1045, 'App\\Models\\User', 10, 'BZqUJxrm', '2017a5b14bf1b37a883cfbd1d146eb77b784a324cef6c5d6f6aabf885106a4a7', '[\"*\"]', NULL, '2023-11-02 11:11:11', '2023-11-02 11:11:11', NULL),
(1046, 'App\\Models\\User', 10, 'O0ffjs6J', '77c4ef341695383c1dcfdb067d47b2dd37f1fbbd1db4d5ef591a18821ae3bb1a', '[\"*\"]', '2023-11-02 11:11:13', '2023-11-02 11:11:11', '2023-11-02 11:11:13', NULL),
(1047, 'App\\Models\\User', 10, '1Y32gRYq', '0dc58933113cb9bab3932991b217c86ec974c3c127e7dee42aff6d04e2fe82b7', '[\"*\"]', '2023-11-02 11:12:14', '2023-11-02 11:12:07', '2023-11-02 11:12:14', NULL),
(1048, 'App\\Models\\User', 10, '2SQ6ZcuQ', '7f7c42dd8056b2a600537b0f7aa67de9367e40ae466ca6b7b67afb32ef522764', '[\"*\"]', NULL, '2023-11-02 11:12:08', '2023-11-02 11:12:08', NULL),
(1049, 'App\\Models\\User', 10, 'uHD0xPJV', '0b566ec300d4d489d5f9b75ea588fad60ff479c2613aebc0ae947380c4bb058e', '[\"*\"]', '2023-11-02 11:14:21', '2023-11-02 11:13:51', '2023-11-02 11:14:21', NULL),
(1050, 'App\\Models\\User', 10, 'cUa8wJwn', '42ee9faf327ff1c6f4f19dd8a9f9bf522ebb2b27e253e63e3e1309587d074f4f', '[\"*\"]', NULL, '2023-11-02 11:13:51', '2023-11-02 11:13:51', NULL),
(1051, 'App\\Models\\User', 9, 'bXLSa2oD', '02d6ca9c66b4022540c6e4044a9a13ce0cd9b66413ca4043e2d1d0a6072a3c4b', '[\"*\"]', NULL, '2023-11-02 11:15:40', '2023-11-02 11:15:40', NULL),
(1052, 'App\\Models\\User', 9, 'IeOnOpGj', '8298836abdbd1a36f383603e3bd1b13ab2658b913cb202a6eeb581065a01949c', '[\"*\"]', '2023-11-02 11:15:41', '2023-11-02 11:15:40', '2023-11-02 11:15:41', NULL),
(1053, 'App\\Models\\User', 9, 'RAXpDXTy', '50fc2adbdcd04884af9039eabd9ec98f7411605d4c4bf4314c8192152c0a1bcf', '[\"*\"]', NULL, '2023-11-02 11:15:52', '2023-11-02 11:15:52', NULL),
(1054, 'App\\Models\\User', 9, 'F5FIrgNf', 'c17553ace8cecec996d21669d88af53be75cd6f9fb623f0e8d5b48f83995bc02', '[\"*\"]', '2023-11-02 11:18:14', '2023-11-02 11:15:52', '2023-11-02 11:18:14', NULL),
(1055, 'App\\Models\\User', 9, 'NQBNFaPL', '679f0f1ca8e49455dc1482b3662942e339d6b71129e7cd2736fc660901336d65', '[\"*\"]', NULL, '2023-11-02 11:17:07', '2023-11-02 11:17:07', NULL),
(1056, 'App\\Models\\User', 9, '4I2BXGVW', '62e0bbc438ac08cf1d7b55c8d58f031d07c3b42821a27ed9465474500321051f', '[\"*\"]', NULL, '2023-11-02 11:17:17', '2023-11-02 11:17:17', NULL),
(1057, 'App\\Models\\User', 9, 'VQf0hvw7', '59d63a31bcfc43023caaeb9f05aebd08d5a1dd4182d18a390738612294c1014b', '[\"*\"]', NULL, '2023-11-02 11:18:14', '2023-11-02 11:18:14', NULL),
(1058, 'App\\Models\\User', 9, 'daCZPmaG', 'cf4a422791edc3b441e2adf90ff82473ff3370d7bcacfc293e0321c17b845d42', '[\"*\"]', '2023-11-02 11:21:12', '2023-11-02 11:18:31', '2023-11-02 11:21:12', NULL),
(1059, 'App\\Models\\User', 9, '83gls8b6', 'be761c97cc1d500086ec4777506550d47f9cbb5355cb7ed7ab36a732f9b02bb1', '[\"*\"]', NULL, '2023-11-02 11:18:32', '2023-11-02 11:18:32', NULL),
(1060, 'App\\Models\\User', 9, 'jV2Iiub9', 'fb4af7dbe75f234ca42a8a59693b20ab237671c3ddc377396857d2ccd228edb4', '[\"*\"]', NULL, '2023-11-02 11:19:31', '2023-11-02 11:19:31', NULL),
(1061, 'App\\Models\\User', 9, 'NxUAQXTN', '9adaa2279ae45cc017554dac339c04f0cb6d910ab6312f89f1ac924942936276', '[\"*\"]', '2023-11-15 15:57:05', '2023-11-02 11:21:12', '2023-11-15 15:57:05', NULL),
(1062, 'App\\Models\\User', 9, '1udM0Asw', 'f7321385b5b0ff9de6f4faebf71d92d8315d731ac256eae3d2ff51f10428ffd8', '[\"*\"]', NULL, '2023-11-02 11:21:12', '2023-11-02 11:21:12', NULL),
(1063, 'App\\Models\\User', 9, 'WUafdaZF', '7a282c60a94215bf515803262ad7db2cc09100e45c3f00726629ee6e83f34d8e', '[\"*\"]', NULL, '2023-11-02 11:24:11', '2023-11-02 11:24:11', NULL),
(1064, 'App\\Models\\User', 9, 'TqBKkcLR', '6fd68b14b66153afd254fdabd95164311ee1ca26b581bdd36121b144ad90fe21', '[\"*\"]', NULL, '2023-11-02 11:33:46', '2023-11-02 11:33:46', NULL),
(1065, 'App\\Models\\User', 9, 'vT2qRBAk', '08c2b8496bab6e37539ab01bafe313abd78818642454fbee48e984f58510f7aa', '[\"*\"]', NULL, '2023-11-02 11:35:05', '2023-11-02 11:35:05', NULL),
(1066, 'App\\Models\\User', 9, 'Q3aIjqyN', '3474f5914165e7e913c1badfed86d884e1511bbeb790f5080a7097e1faa92e0e', '[\"*\"]', NULL, '2023-11-02 11:38:08', '2023-11-02 11:38:08', NULL),
(1067, 'App\\Models\\User', 9, 'hRfdPrVZ', '3273863748a36cb81282ad91f128b7be0b5c3d46c04b77a9d0e45180e307765b', '[\"*\"]', NULL, '2023-11-02 11:39:43', '2023-11-02 11:39:43', NULL),
(1068, 'App\\Models\\User', 9, 'vyfBX0xw', '6d77f69fd1e87204a419dd8744675a5978184d3da311fecd26e3a604c27c6383', '[\"*\"]', NULL, '2023-11-02 11:40:41', '2023-11-02 11:40:41', NULL),
(1069, 'App\\Models\\User', 9, 'tm3GHqqD', 'e64a050151165fa50375a6c0775658f2c4dfeea7644a3337496b24e4bd22a726', '[\"*\"]', NULL, '2023-11-02 11:41:33', '2023-11-02 11:41:33', NULL),
(1070, 'App\\Models\\User', 9, 'C1hXEpFs', '7afc0c1cd0eaf4e94ad5c4f4f903dc63476e2f9935d64373b3d4d9b241b78160', '[\"*\"]', '2023-11-02 11:41:43', '2023-11-02 11:41:33', '2023-11-02 11:41:43', NULL),
(1071, 'App\\Models\\User', 9, 'LPzk84LA', '379ebaef40696e5ecdf0cf96d62c406c3e9f96b128f24b1dc74b133486ea2336', '[\"*\"]', '2023-11-02 11:45:15', '2023-11-02 11:42:10', '2023-11-02 11:45:15', NULL),
(1072, 'App\\Models\\User', 9, 'cqQ8SRps', '2c2f4592a69fbd298e7d4e8d31f446fde18c1821e2375d00be7ce96e64597ed8', '[\"*\"]', NULL, '2023-11-02 11:42:10', '2023-11-02 11:42:10', NULL),
(1073, 'App\\Models\\User', 9, '1VcWW9CR', 'cf680bf70702170467c105f9fdd3829a1e6271d724c9d26b9e5f0fdb33153f9b', '[\"*\"]', '2023-11-02 11:46:45', '2023-11-02 11:45:22', '2023-11-02 11:46:45', NULL),
(1074, 'App\\Models\\User', 9, '4gmGJCrp', '67e092bae9bfad743a80de03742071f9565d7d3dffec84c99859763d7deaac55', '[\"*\"]', NULL, '2023-11-02 11:45:22', '2023-11-02 11:45:22', NULL),
(1075, 'App\\Models\\User', 9, '0TEcAIXK', '2db8a311989869aa7c9be43ae2d236b0aad73d156d4ecb79db5dfc1c56e33c26', '[\"*\"]', '2023-11-02 11:47:58', '2023-11-02 11:47:58', '2023-11-02 11:47:58', NULL),
(1076, 'App\\Models\\User', 9, 'TCfuH7Ad', 'a87be74c4863d2e7216da91afd3cfd08751d1cdfce7854823b36a769c6ae9c1f', '[\"*\"]', NULL, '2023-11-02 11:47:58', '2023-11-02 11:47:58', NULL),
(1077, 'App\\Models\\User', 9, 'fg0h4ghp', '3519922c97c36a0b6e73ac9630704e51fa574a1c2eab01daecb737af4b2f3be7', '[\"*\"]', NULL, '2023-11-02 11:50:07', '2023-11-02 11:50:07', NULL),
(1078, 'App\\Models\\User', 9, 'znlD025C', 'c8485591e5512f747fdfc06ea20cb83b165385b5692ba85e22b326c12647dbde', '[\"*\"]', '2023-11-02 11:50:08', '2023-11-02 11:50:07', '2023-11-02 11:50:08', NULL),
(1079, 'App\\Models\\User', 9, 'EeCU5C6f', '542a0ef9cbe7449ff35f6ed2efec41866dc2060d6745d535b3d5171d9f4a306b', '[\"*\"]', '2023-11-02 11:54:10', '2023-11-02 11:51:07', '2023-11-02 11:54:10', NULL),
(1080, 'App\\Models\\User', 9, 'PveIc8UA', 'cef8cf5811990c661e467ffaf926456f514ac57f00ce316a09edbd796d43f679', '[\"*\"]', NULL, '2023-11-02 11:51:07', '2023-11-02 11:51:07', NULL),
(1081, 'App\\Models\\User', 9, 'k9pVt2gK', '04c348f95ece5834f8f0e6a22f7a6b94d4362e6bef48df3d0f394ec264d95eb0', '[\"*\"]', NULL, '2023-11-02 11:52:22', '2023-11-02 11:52:22', NULL),
(1082, 'App\\Models\\User', 9, 'Lal2nUrh', 'c11969d0371a11778c742e94f123dcba1f2c61550702da1ece048ec1b7bfbfd8', '[\"*\"]', NULL, '2023-11-02 11:54:09', '2023-11-02 11:54:09', NULL),
(1083, 'App\\Models\\User', 9, 'Tb7lZcmZ', '9a018cdbe9ca80914dc4c99abb02fad47e56f8e16576ef7e309af4495da83729', '[\"*\"]', NULL, '2023-11-02 11:56:00', '2023-11-02 11:56:00', NULL),
(1084, 'App\\Models\\User', 9, '7VeHO0x4', '072f9b3de562cd4027d7f5558b80cb822bfd4f401a2c6003a55c618e52dd5dc3', '[\"*\"]', '2023-11-02 11:58:08', '2023-11-02 11:56:00', '2023-11-02 11:58:08', NULL),
(1085, 'App\\Models\\User', 9, 'cmI7wLoK', 'ea2f8174199a02555232d48a30bb65b16e2639adc136dcc5dd6d9eed52f40787', '[\"*\"]', NULL, '2023-11-02 11:58:07', '2023-11-02 11:58:07', NULL),
(1086, 'App\\Models\\User', 9, '8Ir5hYz1', '30437b75dd97dd498010133649ec1a67133f55ed726f1e8283d212a84ea014fe', '[\"*\"]', NULL, '2023-11-02 11:59:39', '2023-11-02 11:59:39', NULL),
(1087, 'App\\Models\\User', 9, '4oof7v9x', '000073bea0b2f620f8fb57d1d06a9b54b29ef08f198a849a923309c869dbfd5c', '[\"*\"]', '2023-11-02 11:59:40', '2023-11-02 11:59:39', '2023-11-02 11:59:40', NULL),
(1088, 'App\\Models\\User', 9, 'b8zANuT7', '0420c5c9648be194cb0c4c60a9e656023989f1284576a3ba86712b6a47148233', '[\"*\"]', NULL, '2023-11-02 12:00:12', '2023-11-02 12:00:12', NULL),
(1089, 'App\\Models\\User', 9, 'ir0klnMF', 'd3715040598c765237272c285e7c2b21295f93fd936eca6307b7fdb6d39c5272', '[\"*\"]', '2023-11-02 12:04:10', '2023-11-02 12:00:12', '2023-11-02 12:04:10', NULL),
(1090, 'App\\Models\\User', 9, 'iBh9NCCO', 'bb4bbc97dc031c6226f4d1f47175425a2f3187addda9dec9e66b29b2cf56b13d', '[\"*\"]', NULL, '2023-11-02 12:02:49', '2023-11-02 12:02:49', NULL),
(1091, 'App\\Models\\User', 9, 'WY40mM2P', 'c1c0e11271adc82bc08cc2ee0a55970d3707cc07979f77d2829a42b2cff96daf', '[\"*\"]', NULL, '2023-11-02 12:02:49', '2023-11-02 12:02:49', NULL),
(1092, 'App\\Models\\User', 9, 'xb3zOvIY', 'bb31e86a9035e6cb64a1e231ab72d22931bf24edf872848e8e7c7a21ff81c00a', '[\"*\"]', NULL, '2023-11-02 12:04:05', '2023-11-02 12:04:05', NULL),
(1093, 'App\\Models\\User', 9, 'WjOoAhim', '4ccf613f84d21ff9da2cd08db118a30e71497a48dca3309dd41277742d3cfaa4', '[\"*\"]', NULL, '2023-11-02 12:04:08', '2023-11-02 12:04:08', NULL),
(1094, 'App\\Models\\User', 9, 'GETaT6SW', 'f1042e13c5c5125ab5f50de19143777258713b45e0b627b907464e3679e68691', '[\"*\"]', NULL, '2023-11-02 12:09:08', '2023-11-02 12:09:08', NULL),
(1095, 'App\\Models\\User', 9, 'VdT1OMpN', '5f15c87456ab5a25aba38f070a67e62a9d3f7a9ee546ea94d8119d6ffb4ae456', '[\"*\"]', '2023-11-02 12:09:09', '2023-11-02 12:09:08', '2023-11-02 12:09:09', NULL),
(1096, 'App\\Models\\User', 9, 'JmVVcaAU', '980f25851ef0694091f6c5c86b64adde30850cde3b5a593a505344a1d27cc014', '[\"*\"]', NULL, '2023-11-02 12:11:48', '2023-11-02 12:11:48', NULL),
(1097, 'App\\Models\\User', 9, 'vbnnt2bN', '6612f2a9aa513de5f39da106ff05debde83a8efec7c814728a474171fccb8045', '[\"*\"]', '2023-11-02 12:19:22', '2023-11-02 12:11:48', '2023-11-02 12:19:22', NULL),
(1098, 'App\\Models\\User', 9, 'an25yK3W', '57ad0e5818b9ae5c7232d4a6a3be62a778f1db16fcf61a9048971660d1b67924', '[\"*\"]', NULL, '2023-11-02 12:13:16', '2023-11-02 12:13:16', NULL),
(1099, 'App\\Models\\User', 9, 'EORknhHE', '22e4f098bf39a040286e81b058a117cf76f5b755600fbbf0ac3184c9c5e4d729', '[\"*\"]', NULL, '2023-11-02 12:15:49', '2023-11-02 12:15:49', NULL),
(1100, 'App\\Models\\User', 9, 'ZLejAgw0', 'ca1ebba65b7353215e607d3a9c66b6a50edf577305ecb21e1affc39fc0fa36a8', '[\"*\"]', '2023-11-02 12:19:48', '2023-11-02 12:19:47', '2023-11-02 12:19:48', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1101, 'App\\Models\\User', 9, 'QwDZ9DCI', 'a667c0689cf13c02c2707639ef88c80857931cf5e26c2855fbfccb5f63323adf', '[\"*\"]', NULL, '2023-11-02 12:19:47', '2023-11-02 12:19:47', NULL),
(1102, 'App\\Models\\User', 9, 'rK74mjRJ', '97ab2b2b217d63f1613886942fac22fbda03995795e2a77bc74498a09c78ca8f', '[\"*\"]', NULL, '2023-11-02 12:19:58', '2023-11-02 12:19:58', NULL),
(1103, 'App\\Models\\User', 9, 'iJt8rl7B', '84c01794d7026f866ada698f8704333f8062bda7108e747e60786a60c89feb2b', '[\"*\"]', '2023-11-02 12:20:32', '2023-11-02 12:19:58', '2023-11-02 12:20:32', NULL),
(1104, 'App\\Models\\User', 9, 'VI5Vff1J', '9e1da367143542e1ba33338299fa5e244bc206f07bcf6d2e9b37a00faefe0109', '[\"*\"]', NULL, '2023-11-02 12:20:54', '2023-11-02 12:20:54', NULL),
(1105, 'App\\Models\\User', 9, 'iXPbcBft', '4a4a9c4e4afe79c3de3b53ed38a7f1d34cbe8cdff76dcfec037ea19557f6a9fd', '[\"*\"]', '2023-11-02 12:31:11', '2023-11-02 12:20:54', '2023-11-02 12:31:11', NULL),
(1106, 'App\\Models\\User', 9, 'Xu2rWaLb', 'e6c3ad2bc309632b868a39fb23ef01e76356b47167826eff0b2e3e642600ca82', '[\"*\"]', NULL, '2023-11-02 12:21:31', '2023-11-02 12:21:31', NULL),
(1107, 'App\\Models\\User', 9, 'KmKAnaqw', '5d1cd5c8a69c7cc6abf42459bf0ea9ce3f932b3fdc70866853f7226665175db4', '[\"*\"]', NULL, '2023-11-02 12:22:03', '2023-11-02 12:22:03', NULL),
(1108, 'App\\Models\\User', 9, 'yDywiT9N', '244b0f12bc3d03310101d9529d09f23e60f04078c9b9c652ca8429f1cb9e0f85', '[\"*\"]', NULL, '2023-11-02 12:25:33', '2023-11-02 12:25:33', NULL),
(1109, 'App\\Models\\User', 9, 'XRcZvRrC', 'ce9d7c148494c8913c2dcbbd8f9d5ee67e4658aabcd09a4c4541d4cd17707d7e', '[\"*\"]', NULL, '2023-11-02 12:28:23', '2023-11-02 12:28:23', NULL),
(1110, 'App\\Models\\User', 9, 'q4kgemfl', '12a41c7cec463c27b985bb43f3428c71088346ffdad0c320bc8c8da3089697cf', '[\"*\"]', NULL, '2023-11-02 12:31:02', '2023-11-02 12:31:02', NULL),
(1111, 'App\\Models\\User', 9, 'Y33IOBOe', 'd60a26fc74c979a4ef83d76a02ce7cb44640ce551fc7fd657845ec4234401ec2', '[\"*\"]', NULL, '2023-11-02 12:31:04', '2023-11-02 12:31:04', NULL),
(1112, 'App\\Models\\User', 9, 'eIcBZJXm', '2aaad2315cb32370b48ec193b88a94a49649a1c6285a9dc47dd994ebdb6d72d8', '[\"*\"]', NULL, '2023-11-02 12:31:19', '2023-11-02 12:31:19', NULL),
(1113, 'App\\Models\\User', 9, 'IIFro7oD', 'ab5227c87ef741e6f8522b366a0246baf039ffe04fa9915e751ca1e0731858e7', '[\"*\"]', '2023-11-02 12:31:37', '2023-11-02 12:31:19', '2023-11-02 12:31:37', NULL),
(1114, 'App\\Models\\User', 9, 'fip8wpm0', '668a889604c5bfb4289f66018d6d93d0c534b84eb5257cdd8d6d3eccf943fbb3', '[\"*\"]', NULL, '2023-11-02 12:32:03', '2023-11-02 12:32:03', NULL),
(1115, 'App\\Models\\User', 9, 'O3Ljog7c', '63444563cb3c58432b0223699422c9ddc1c249c82cbc1c5c4f12fb8e60f88c48', '[\"*\"]', '2023-11-02 12:49:09', '2023-11-02 12:32:03', '2023-11-02 12:49:09', NULL),
(1116, 'App\\Models\\User', 9, 'GTCc0rIo', 'bd8329602d2a507374b75347d3ce5c7d0f666eb3494759971b477405fa6ab3d2', '[\"*\"]', NULL, '2023-11-02 12:47:55', '2023-11-02 12:47:55', NULL),
(1117, 'App\\Models\\User', 9, 'BFQGm9iE', '2a84271ef454f101d84ff7717ee2e4efa54cb7b3127fb5986ffa06b0f1affc34', '[\"*\"]', NULL, '2023-11-02 12:50:44', '2023-11-02 12:50:44', NULL),
(1118, 'App\\Models\\User', 9, 'qJAcVUfb', '271a8bb7792357fe00750ce5d157ed3578d49f128512251048614073f70a5b2e', '[\"*\"]', '2023-11-02 12:50:50', '2023-11-02 12:50:44', '2023-11-02 12:50:50', NULL),
(1119, 'App\\Models\\User', 9, 'zuiCoSIk', '1090feae1c710644af82f812c6e959420f5eb1c5846f4efc225f619ec8c90aeb', '[\"*\"]', NULL, '2023-11-02 12:51:54', '2023-11-02 12:51:54', NULL),
(1120, 'App\\Models\\User', 9, 'qni6FAc5', 'ab47b0fb5ab59861c49589eaf47d3dac90ce9d2e37fe5190c53e565c123ef114', '[\"*\"]', '2023-11-02 12:53:17', '2023-11-02 12:51:54', '2023-11-02 12:53:17', NULL),
(1121, 'App\\Models\\User', 9, 'nIv0ymgB', '479f38c049bba9feb56c5165802a4589cdf5b1b6b9b611fad97d6b0750aef22e', '[\"*\"]', '2023-11-02 12:54:14', '2023-11-02 12:53:59', '2023-11-02 12:54:14', NULL),
(1122, 'App\\Models\\User', 9, 'gux1lHlP', 'c418fb8af4887a3765501aebc5b5ba7bca8429978e2b245f2a3b434a651f93e6', '[\"*\"]', NULL, '2023-11-02 12:53:59', '2023-11-02 12:53:59', NULL),
(1123, 'App\\Models\\User', 9, '0Deq6Pa9', '6ef834405625ad917f519ce810c73ed91273c768a3ece80571e8ff981a0302a0', '[\"*\"]', '2023-11-02 12:59:37', '2023-11-02 12:55:06', '2023-11-02 12:59:37', NULL),
(1124, 'App\\Models\\User', 9, 'V7BYNQXN', 'a7e68f5b875e13c9dcec64a50fc6594b500732a45f7373a603d8a2a0329834ce', '[\"*\"]', NULL, '2023-11-02 12:55:06', '2023-11-02 12:55:06', NULL),
(1125, 'App\\Models\\User', 9, 'hDagC0GS', '925ae68a52253ae37aa225eb60c7a91ef56a941fa5fff20e8aa62e6d7b7cfa3b', '[\"*\"]', NULL, '2023-11-02 12:56:04', '2023-11-02 12:56:04', NULL),
(1126, 'App\\Models\\User', 9, 'a8PuxZLu', 'ae284b9a26db9c243224847abc5effc891f23d0b9d021dc18bd62b94568d6dde', '[\"*\"]', NULL, '2023-11-02 12:59:13', '2023-11-02 12:59:13', NULL),
(1127, 'App\\Models\\User', 9, 'fnD8OyEo', 'bf8698eb0b136fdcbb9b5398a5394ab72105d8786394276a0129b26fa30f611c', '[\"*\"]', NULL, '2023-11-02 13:00:10', '2023-11-02 13:00:10', NULL),
(1128, 'App\\Models\\User', 9, '2czasJMq', 'd43577767ad7fab16bee0db41eb0d4379ffa7a6725638e3ff128cb982e174a70', '[\"*\"]', '2023-11-02 13:00:58', '2023-11-02 13:00:10', '2023-11-02 13:00:58', NULL),
(1129, 'App\\Models\\User', 9, 'UHVcrwvO', 'f4296efaa5bc42b9b845e5610918d3267712746406935ceb91e2e5ae0e213f2c', '[\"*\"]', '2023-11-02 13:02:10', '2023-11-02 13:01:25', '2023-11-02 13:02:10', NULL),
(1130, 'App\\Models\\User', 9, 'YcEO6CYI', '002dda3c19928ab2fdd52bbd539c99ae79ccbdfdec8f5753863906c0b8c23018', '[\"*\"]', NULL, '2023-11-02 13:01:25', '2023-11-02 13:01:25', NULL),
(1131, 'App\\Models\\User', 9, 'K2XOI5Yc', 'e0677156a3b6bbec39532ffeb542c23bb7fd9585116ad8705210c64420f8eaf9', '[\"*\"]', '2023-11-02 13:02:34', '2023-11-02 13:02:24', '2023-11-02 13:02:34', NULL),
(1132, 'App\\Models\\User', 9, 'TJMS9o96', 'd0d6ec5056bb99a246a63f07d7258ecc8d4fa46a894288df0663fa56bc14c32c', '[\"*\"]', NULL, '2023-11-02 13:02:24', '2023-11-02 13:02:24', NULL),
(1133, 'App\\Models\\User', 9, 'bAGhbUDI', 'cc58dd14417e1385e1759234c74ed12a863152acb0ef10788a8a7c43d8a6c9b5', '[\"*\"]', '2023-11-02 13:03:28', '2023-11-02 13:03:05', '2023-11-02 13:03:28', NULL),
(1134, 'App\\Models\\User', 9, 'K4WPDaD2', 'fc255f555e43fdd7a137233e1caeae0a3c59de6eb48d36614e3f01518fa1cefc', '[\"*\"]', NULL, '2023-11-02 13:03:05', '2023-11-02 13:03:05', NULL),
(1135, 'App\\Models\\User', 9, 'C27fGGz9', '7a347cb4ce7cd0e2d57d27981a0ed7e5ce6639369ddbabdef58f8a21d3eca060', '[\"*\"]', NULL, '2023-11-02 13:03:35', '2023-11-02 13:03:35', NULL),
(1136, 'App\\Models\\User', 9, 'FK0Wbq2c', 'ef02a973871714919a656d2e0096c7a05b27a4f669e990811ebed458794721bf', '[\"*\"]', '2023-11-02 13:03:42', '2023-11-02 13:03:35', '2023-11-02 13:03:42', NULL),
(1137, 'App\\Models\\User', 9, 'yC0s4owc', 'ada42f6160c9c45137f5505d13694b83776c81b6693a1f473cf3e948773130b4', '[\"*\"]', NULL, '2023-11-02 13:03:50', '2023-11-02 13:03:50', NULL),
(1138, 'App\\Models\\User', 9, 'PR2bhHME', '756f342a765deebd0ec69298066f9074297f15df41a9c7c0ea18125db603f4d3', '[\"*\"]', '2023-11-02 13:03:59', '2023-11-02 13:03:50', '2023-11-02 13:03:59', NULL),
(1139, 'App\\Models\\User', 9, 'g1iF2KwW', '896aa593fba043ba1c5812786ef90fe34b6381a2ff8288496fb7a071351eeefb', '[\"*\"]', NULL, '2023-11-02 13:04:12', '2023-11-02 13:04:12', NULL),
(1140, 'App\\Models\\User', 9, '6c3iyzvZ', 'a54bf8402184c82e1e0c0c9329155174264a6da23f9fa31f041bdc10880ffdc9', '[\"*\"]', '2023-11-02 13:04:12', '2023-11-02 13:04:12', '2023-11-02 13:04:12', NULL),
(1141, 'App\\Models\\User', 9, 'yE1xlxKF', 'f9e0f0da4b21d23f8810e679b6126b75a8665456f95a416a457d6a60c2895532', '[\"*\"]', '2023-11-02 13:08:51', '2023-11-02 13:07:53', '2023-11-02 13:08:51', NULL),
(1142, 'App\\Models\\User', 9, 'i0iqNJMA', 'e7a0a32db7b4e78956e9d4272a0fdeb20f2e42a27d2a73d3eb869669937abc78', '[\"*\"]', NULL, '2023-11-02 13:07:53', '2023-11-02 13:07:53', NULL),
(1143, 'App\\Models\\User', 9, 'yocXz85R', 'ef40d63b4e7798e0e6fc6725f899180e7ef1441eb1898b5d1e9a10e535f148b6', '[\"*\"]', NULL, '2023-11-02 13:09:00', '2023-11-02 13:09:00', NULL),
(1144, 'App\\Models\\User', 9, 'R9KbZ9Sq', '5aa353865fb320b7a931c0f8f58b6583c0f6c3cd5e145735be903726261dd617', '[\"*\"]', '2023-11-02 13:09:01', '2023-11-02 13:09:00', '2023-11-02 13:09:01', NULL),
(1145, 'App\\Models\\User', 9, 'ylzO8zkz', 'c35b16fb3c007af43804a8b72c6428e8106345e6f34b719dc7d8ffb1ad3ed9a0', '[\"*\"]', '2023-11-02 13:10:59', '2023-11-02 13:09:52', '2023-11-02 13:10:59', NULL),
(1146, 'App\\Models\\User', 9, 'pkTHKmCD', '7bd741d0d1d18ab0f67f53710eae61177e71a0129b56f07f85763ee1ddbdf715', '[\"*\"]', NULL, '2023-11-02 13:09:53', '2023-11-02 13:09:53', NULL),
(1147, 'App\\Models\\User', 9, '73GYnfyQ', 'fb7a42106eb228e0b8ee657640df32cd381822fb97334dcae73e9e6d822c7411', '[\"*\"]', '2023-11-02 13:11:12', '2023-11-02 13:11:10', '2023-11-02 13:11:12', NULL),
(1148, 'App\\Models\\User', 9, 'mN0SNoVb', 'c28d66751111755cb6d62e89efbcb0f93b8449cc2b0b51f69d0db9d6414c2121', '[\"*\"]', NULL, '2023-11-02 13:11:10', '2023-11-02 13:11:10', NULL),
(1149, 'App\\Models\\User', 9, 'Z1ld54XO', '47e74321caaf63d1e3212da99cd2210f7e17b00f9cc1f9fc5846aa239d2b39f7', '[\"*\"]', NULL, '2023-11-02 13:11:23', '2023-11-02 13:11:23', NULL),
(1150, 'App\\Models\\User', 9, 'zUbfqX8s', 'eb50e073080f0802c726e8e4e3bbfd489be806151b5dae35848a75a524d94ab2', '[\"*\"]', '2023-11-02 13:12:13', '2023-11-02 13:11:23', '2023-11-02 13:12:13', NULL),
(1151, 'App\\Models\\User', 9, 'PPieNtC7', 'bd7f73e2a7e38d05322d8a39e94351a77fa064aa192f56957b335ab13782608f', '[\"*\"]', NULL, '2023-11-02 13:12:31', '2023-11-02 13:12:31', NULL),
(1152, 'App\\Models\\User', 9, 'swmJhQ7J', 'ffbbf5a0ecc566fa246339113e2fcb111e2b0047ae68538a190eab00a5941813', '[\"*\"]', '2023-11-02 13:12:35', '2023-11-02 13:12:31', '2023-11-02 13:12:35', NULL),
(1153, 'App\\Models\\User', 9, '1ZAjyDX0', '7a6180e66df65e494d17b34d4e39334ff2665297aaadafc59f932e51c2899e5b', '[\"*\"]', '2023-11-02 13:14:25', '2023-11-02 13:13:52', '2023-11-02 13:14:25', NULL),
(1154, 'App\\Models\\User', 9, 'Kpc7MnTw', '3c348b757e72fa3c4f41df3d41f0fba6f4fe5ddcb7c626cc7defef2cd82e6944', '[\"*\"]', NULL, '2023-11-02 13:13:52', '2023-11-02 13:13:52', NULL),
(1155, 'App\\Models\\User', 9, '0IUYtgTY', '03b0d636d0a0971bea77f72488724e8145004ea9153f27e85044be9e01e9964c', '[\"*\"]', NULL, '2023-11-02 13:14:35', '2023-11-02 13:14:35', NULL),
(1156, 'App\\Models\\User', 9, 'hs8myGrX', 'e6a2fcc4c70d7e34de8f9348ba55381cb5e9b78852454d5e8580abad7a51ede8', '[\"*\"]', '2023-11-02 13:14:36', '2023-11-02 13:14:35', '2023-11-02 13:14:36', NULL),
(1157, 'App\\Models\\User', 9, 'SVuvx0tM', 'e0a2308681b44b633866a1cc2a726ab54d25ab84f2b169b5ba11e0e5b02ac948', '[\"*\"]', '2023-11-02 13:19:20', '2023-11-02 13:19:18', '2023-11-02 13:19:20', NULL),
(1158, 'App\\Models\\User', 9, 'U8pSFFZa', '98ea8a7c4b72e5f3110685e3df206715df3d56006b448615b628614a2bd88784', '[\"*\"]', NULL, '2023-11-02 13:19:18', '2023-11-02 13:19:18', NULL),
(1159, 'App\\Models\\User', 9, 'cHLz1JOz', '3f5fc9f538ff02a974263ac4295f63b15e3c7f1f2e5604101fa0634dbb42616f', '[\"*\"]', '2023-11-02 13:19:57', '2023-11-02 13:19:41', '2023-11-02 13:19:57', NULL),
(1160, 'App\\Models\\User', 9, 'c5otcpFr', '54b90afa9d3dc3c54a7c78f21d84564d6030be35e091a48debf6acc624ac8203', '[\"*\"]', NULL, '2023-11-02 13:19:41', '2023-11-02 13:19:41', NULL),
(1161, 'App\\Models\\User', 9, 'wWwZL09f', '78f1827b3e4b57f816b768c1af3926b0e12c718cec68dbf674e3ace9fb7ae74c', '[\"*\"]', NULL, '2023-11-02 13:19:56', '2023-11-02 13:19:56', NULL),
(1162, 'App\\Models\\User', 9, 'gMLUEKpf', '16621cf10e0c3378bc4aec2fcb575c172650284a8cbcbd9b0f774ea8c7d62e32', '[\"*\"]', '2023-11-02 13:20:32', '2023-11-02 13:20:16', '2023-11-02 13:20:32', NULL),
(1163, 'App\\Models\\User', 9, 'kie2BgVW', '84fbb17b947c130ccdf024822e29a4eda1ccfaeeb9d4932ac4b5ce4a96cb099a', '[\"*\"]', NULL, '2023-11-02 13:20:16', '2023-11-02 13:20:16', NULL),
(1164, 'App\\Models\\User', 9, 'rnbaoBiQ', '395c625ca28fb89f2aa420ea6dcc91c080656bc5fd860fad0f72bb2592d8e457', '[\"*\"]', '2023-11-02 13:21:47', '2023-11-02 13:20:50', '2023-11-02 13:21:47', NULL),
(1165, 'App\\Models\\User', 9, 'Ghs7XNSA', '8b4b9671006cbb0e899b814193530ec82aef7bd932e4b94ff5a8fe098ae73c2b', '[\"*\"]', NULL, '2023-11-02 13:20:50', '2023-11-02 13:20:50', NULL),
(1166, 'App\\Models\\User', 9, 'qjY9Odar', '01ce292a19d30fb1041d7e5730fe0de2a8e09d05a86241aff64769295b857932', '[\"*\"]', '2023-11-02 13:32:00', '2023-11-02 13:31:06', '2023-11-02 13:32:00', NULL),
(1167, 'App\\Models\\User', 9, 'uKr7UBKB', 'fab7cdb225b5111b3228fcdc7c99f7c519bdc1d9049fd495fa15b02a4c875bf6', '[\"*\"]', NULL, '2023-11-02 13:31:06', '2023-11-02 13:31:06', NULL),
(1168, 'App\\Models\\User', 9, 'ywT5mt1m', '5dc391fac90c3565c9b4c1b7a451414adc5b5f283d485db795cc80bd6001741d', '[\"*\"]', '2023-11-02 13:34:04', '2023-11-02 13:32:11', '2023-11-02 13:34:04', NULL),
(1169, 'App\\Models\\User', 9, 'nGbwIVCs', '7782179037b311fac23b29c6dd7684bc5a0d20659b0b764736b87bb1021f9797', '[\"*\"]', NULL, '2023-11-02 13:32:11', '2023-11-02 13:32:11', NULL),
(1170, 'App\\Models\\User', 9, 'MI8iVF44', '4581fa35b9ab08c8e31c9fbbc8ec4c4a2e6bfe833e22e5be386e118086e49bdd', '[\"*\"]', NULL, '2023-11-02 13:34:04', '2023-11-02 13:34:04', NULL),
(1171, 'App\\Models\\User', 9, '175smNKB', '6285a26282e338ad51bf5db1ce904006b047a6b83fc0293959638d9e6b5d03e7', '[\"*\"]', '2023-11-02 13:34:15', '2023-11-02 13:34:13', '2023-11-02 13:34:15', NULL),
(1172, 'App\\Models\\User', 9, 'JmhEST3I', '3ba51830cf61be7bf8fae34c971e3ee1a5705364ac8a54554cd1434078b3543b', '[\"*\"]', NULL, '2023-11-02 13:34:13', '2023-11-02 13:34:13', NULL),
(1173, 'App\\Models\\User', 9, 'u6csGVkG', '90b067e7f268645508e8626211632d6f5be8aad9f1e0ba81b4c2795e46c8308d', '[\"*\"]', NULL, '2023-11-02 13:35:30', '2023-11-02 13:35:30', NULL),
(1174, 'App\\Models\\User', 9, 'SyDL4V7j', 'f77141a9c6c34b2a033f9ff63f8711ab7f657f462038269fec70abcb57cbe553', '[\"*\"]', '2023-11-02 13:38:04', '2023-11-02 13:35:30', '2023-11-02 13:38:04', NULL),
(1175, 'App\\Models\\User', 9, 'uNyWov5P', 'd632c0efa515331fcfa73b3bf684d4949e6ff0769fb596fc4d9b315144cc5b8d', '[\"*\"]', NULL, '2023-11-02 13:36:37', '2023-11-02 13:36:37', NULL),
(1176, 'App\\Models\\User', 9, 'oIxthNk5', '4006c115863c844efb62549575f84a0f59930f5ba46806e68cb7abede0930236', '[\"*\"]', NULL, '2023-11-02 13:38:04', '2023-11-02 13:38:04', NULL),
(1177, 'App\\Models\\User', 9, 'XuHycpDV', 'b8af01bfbcc959710b79cbe8e5cdb6e8e2c12383457169dc1c19789fee74f4ea', '[\"*\"]', NULL, '2023-11-02 13:38:19', '2023-11-02 13:38:19', NULL),
(1178, 'App\\Models\\User', 9, 'MbPdwJny', 'fd897c22f1c884bab40be1ee8ac9b3ee8c78a9418f39ee5d97948f8a60e71c3a', '[\"*\"]', '2023-11-02 13:38:20', '2023-11-02 13:38:19', '2023-11-02 13:38:20', NULL),
(1179, 'App\\Models\\User', 9, 'nL4ZKcXc', '1e848911f41ea85c6030f9e3ff0f5fa96e3c685ded7dea838ecce32497a2f5f8', '[\"*\"]', NULL, '2023-11-02 13:38:55', '2023-11-02 13:38:55', NULL),
(1180, 'App\\Models\\User', 9, 'f1Jstxqd', '865ed598cc345f7d05f1a87b4481689d3dd00512f9b8794bb824157e0b132e5d', '[\"*\"]', '2023-11-02 13:38:55', '2023-11-02 13:38:55', '2023-11-02 13:38:55', NULL),
(1181, 'App\\Models\\User', 9, 'CurUzNHZ', '26d8275f094321b95227630b6970caf44a58f31bce03c86425adee523ef88c5b', '[\"*\"]', NULL, '2023-11-02 13:39:38', '2023-11-02 13:39:38', NULL),
(1182, 'App\\Models\\User', 9, '71yEUD0O', 'd5c4ad4f211f8949206b7831f63fab4339440d79f818604e5777ed196be16899', '[\"*\"]', '2023-11-02 13:41:17', '2023-11-02 13:39:38', '2023-11-02 13:41:17', NULL),
(1183, 'App\\Models\\User', 9, 'RVNnH6gh', 'c9083d290e1ad27acde20c2f88c06b43272338922c451030e39247c3892388f7', '[\"*\"]', NULL, '2023-11-02 13:41:17', '2023-11-02 13:41:17', NULL),
(1184, 'App\\Models\\User', 9, 'eJlvWvgg', 'fd0dd0ad3315f50548d35256a0fa9aa913ac8474985161edb69f4abe8e2420af', '[\"*\"]', NULL, '2023-11-02 13:41:34', '2023-11-02 13:41:34', NULL),
(1185, 'App\\Models\\User', 9, 'A6MKGct7', 'e55749677cda7f1fdebaa2a72474ee52ec6647b379ffc0e2dbc94a87a78ae5c6', '[\"*\"]', '2023-11-02 13:42:23', '2023-11-02 13:41:34', '2023-11-02 13:42:23', NULL),
(1186, 'App\\Models\\User', 9, '0sTIzWjG', '3dd63b9f2c99255ec31980461ff667059f62dbd11513c1e63709c68f371cd383', '[\"*\"]', '2023-11-02 13:46:18', '2023-11-02 13:42:40', '2023-11-02 13:46:18', NULL),
(1187, 'App\\Models\\User', 9, 'GxROVWQA', '04bc4b96a23a7db3ce316d2e2bb90f751719c560e3b88a923246278354130867', '[\"*\"]', NULL, '2023-11-02 13:42:40', '2023-11-02 13:42:40', NULL),
(1188, 'App\\Models\\User', 9, '0fzIg1bg', '8e967052da29f943c338fb0383d33bc3548eee40a8cdd8cfffb7b0c56d4eeae4', '[\"*\"]', NULL, '2023-11-02 13:43:41', '2023-11-02 13:43:41', NULL),
(1189, 'App\\Models\\User', 9, 'IpimKyk6', '8c3fc658d3949364cd6dc287ea8a666fee5ba9de35b36de6662093182a50abc8', '[\"*\"]', NULL, '2023-11-02 13:45:04', '2023-11-02 13:45:04', NULL),
(1190, 'App\\Models\\User', 9, 'WRttpgod', '3fbcfe4096005ca68d60ba1420872c7ce701d8b1690b0507ca352ca311aa454d', '[\"*\"]', '2023-11-02 13:48:07', '2023-11-02 13:46:29', '2023-11-02 13:48:07', NULL),
(1191, 'App\\Models\\User', 9, 'aAWfrlLg', '964652811fce86db189f92cf32a3f724b346319f21e7226f422da515e3c54bd5', '[\"*\"]', NULL, '2023-11-02 13:46:29', '2023-11-02 13:46:29', NULL),
(1192, 'App\\Models\\User', 9, 'cbuzYFDS', '8e3332cb503861edaaafced845c84757e49806b5db99b1af5a87b5c51e871999', '[\"*\"]', NULL, '2023-11-02 13:48:06', '2023-11-02 13:48:06', NULL),
(1193, 'App\\Models\\User', 9, 'd9vEfAwY', 'f45be8d8a5444b92f72faba991150c374679bae8eaaa5177291b66ae69fad99b', '[\"*\"]', NULL, '2023-11-02 13:48:37', '2023-11-02 13:48:37', NULL),
(1194, 'App\\Models\\User', 9, 'aazrb7vF', '71832ae7d1595ebae9f394c17d609f8c6ae787a34d1ab8e28dde86b665c82fa6', '[\"*\"]', '2023-11-02 13:49:08', '2023-11-02 13:48:37', '2023-11-02 13:49:08', NULL),
(1195, 'App\\Models\\User', 9, 'lr6mVoDH', '6e391aea66b6117dba4c46324b2ad62a77a9f7ab913ae03761faed0d6f913718', '[\"*\"]', '2023-11-02 13:54:53', '2023-11-02 13:50:22', '2023-11-02 13:54:53', NULL),
(1196, 'App\\Models\\User', 9, 'yCvKht5M', '26cd5f1ed2e739c3de717be14856c06c216c0080c50b3cf82b9a16fa03762143', '[\"*\"]', NULL, '2023-11-02 13:50:22', '2023-11-02 13:50:22', NULL),
(1197, 'App\\Models\\User', 9, '7T1LU5yC', '9d3dc5ba21a7753360319448885583ae8783084303d0654ff2753c37b0b7cabe', '[\"*\"]', NULL, '2023-11-02 13:52:55', '2023-11-02 13:52:55', NULL),
(1198, 'App\\Models\\User', 9, 'WsrrsfwK', '26a1916f3ccf19ef1f715c01275ca8a80b7f0fdf0a8578fefd356ff1e60a80fe', '[\"*\"]', NULL, '2023-11-02 13:54:03', '2023-11-02 13:54:03', NULL),
(1199, 'App\\Models\\User', 9, 'OmCriSh0', 'ae854f14c15dbd0c12e734133b9bd7df761d8482218be47c9c11c76b69dfaae2', '[\"*\"]', NULL, '2023-11-02 13:54:45', '2023-11-02 13:54:45', NULL),
(1200, 'App\\Models\\User', 9, '9K1IL4hg', '8c0fb51945fce3ca8a23f76992f1231bfea13a50261368eadc1d12279d12b8dc', '[\"*\"]', NULL, '2023-11-02 13:54:52', '2023-11-02 13:54:52', NULL),
(1201, 'App\\Models\\User', 9, 'd0EbMdK9', '6fb50f00af210068094fab799224bc6190ef806d6a1d7b0f3feaa2abaa77d9ae', '[\"*\"]', NULL, '2023-11-02 13:55:00', '2023-11-02 13:55:00', NULL),
(1202, 'App\\Models\\User', 9, 'yRq5GQRI', '4cb55f9623512cec2dbb0f2346d92fa2b6980924a8ab19538e2676110c6f5f8e', '[\"*\"]', '2023-11-02 13:59:50', '2023-11-02 13:55:00', '2023-11-02 13:59:50', NULL),
(1203, 'App\\Models\\User', 9, '1ByOJts6', '21bd0cd8b70bd8ce2e4f50b0753f54625543403d5882b46aa0ddfc853e0c6224', '[\"*\"]', NULL, '2023-11-02 13:55:32', '2023-11-02 13:55:32', NULL),
(1204, 'App\\Models\\User', 9, 'EzxX17rY', '502b67c9c132b3973533b95aca009db6e7e8e35b9b878b61a896f5a8461a7f6c', '[\"*\"]', NULL, '2023-11-02 13:56:00', '2023-11-02 13:56:00', NULL),
(1205, 'App\\Models\\User', 9, 'JSNBGRfR', '3f1eb8009531276d69bc4e4ab34b9aa9be71dd992b44b3bcf860984eda844dae', '[\"*\"]', '2023-11-02 14:01:33', '2023-11-02 14:01:31', '2023-11-02 14:01:33', NULL),
(1206, 'App\\Models\\User', 9, 'jNizcYPq', 'c3cbb91ac5b33a073a3135d3ca740eb6f26e83a0d00835a1de85b326ba77d66e', '[\"*\"]', NULL, '2023-11-02 14:01:31', '2023-11-02 14:01:31', NULL),
(1207, 'App\\Models\\User', 9, 'Qm8jEmQu', '6c3047c2f6d267eacd7f5fbbba819470a31bc509f6b22bd55a183c416640c9c8', '[\"*\"]', '2023-11-02 14:01:59', '2023-11-02 14:01:58', '2023-11-02 14:01:59', NULL),
(1208, 'App\\Models\\User', 9, 'M7an2RAi', '50967490de193be0b105ac810daba0277acb8326bdfd74486e015697c27af327', '[\"*\"]', NULL, '2023-11-02 14:01:58', '2023-11-02 14:01:58', NULL),
(1209, 'App\\Models\\User', 9, 'iYSJNdm5', 'f1b28b662b7d50ade9512c76a5dd71c0ee1ae721f0767df62beb9dc164c64e3b', '[\"*\"]', NULL, '2023-11-02 14:03:16', '2023-11-02 14:03:16', NULL),
(1210, 'App\\Models\\User', 9, 'iXo1bQ8X', '258948d51c0a91c453c6404282871ea7ec6289ec0e9a7e9f8f3cae377b842b4c', '[\"*\"]', '2023-11-02 14:03:50', '2023-11-02 14:03:16', '2023-11-02 14:03:50', NULL),
(1211, 'App\\Models\\User', 9, 'AVF4zblJ', 'cfbc97f8c73215e936fe8d06e58fabb09c76d6e15a64d882aa9005234dd1805a', '[\"*\"]', NULL, '2023-11-02 14:04:05', '2023-11-02 14:04:05', NULL),
(1212, 'App\\Models\\User', 9, '39RiHcvl', 'dc9e42cced39e796190d253b5fbc34d99347ba7fe931f8b07bcd236f495eb50b', '[\"*\"]', '2023-11-02 14:06:47', '2023-11-02 14:04:05', '2023-11-02 14:06:47', NULL),
(1213, 'App\\Models\\User', 9, 'PfrYXHGD', '3556eb731b6559aaa4e872718ac3595a0e7dbe4243bef155111ecc2436d31bba', '[\"*\"]', '2023-11-02 14:18:29', '2023-11-02 14:07:06', '2023-11-02 14:18:29', NULL),
(1214, 'App\\Models\\User', 9, 'HnQl0JhP', '1b2c04694899046717f6adc4e848e74b3da65ef8948d9097f0d6413ffce6bf41', '[\"*\"]', NULL, '2023-11-02 14:07:06', '2023-11-02 14:07:06', NULL),
(1215, 'App\\Models\\User', 9, 'cg1wuiIY', 'e8bebf4810f69a974d2a5cf6f220eba945ec30b18fda070909338ecbcc68b327', '[\"*\"]', '2023-11-02 14:18:51', '2023-11-02 14:18:50', '2023-11-02 14:18:51', NULL),
(1216, 'App\\Models\\User', 9, '0vLQEiZA', '88b2e3ae1c8240a20aa79c0d17352dddfd1a21f4bf3957a9e51364234d7dea73', '[\"*\"]', NULL, '2023-11-02 14:18:50', '2023-11-02 14:18:50', NULL),
(1217, 'App\\Models\\User', 9, 'UQ1gnArm', 'c002012e5c2750b4db6abee88059c562133f20c2fa5de1ccf76811b9d57b7338', '[\"*\"]', NULL, '2023-11-02 14:19:14', '2023-11-02 14:19:14', NULL),
(1218, 'App\\Models\\User', 9, 'SXH9LjKr', 'ecf5086ce776007856770506dd86a22c9c76ae1a6197f5173073dbddfccb634c', '[\"*\"]', '2023-11-02 14:20:45', '2023-11-02 14:19:14', '2023-11-02 14:20:45', NULL),
(1219, 'App\\Models\\User', 9, 'XuWixSfb', '368ba8e44fd7c6a2c8b47fb4fabd110c6fc2b66712cb5b69d95c878d28e3c01f', '[\"*\"]', '2023-11-02 14:21:13', '2023-11-02 14:20:52', '2023-11-02 14:21:13', NULL),
(1220, 'App\\Models\\User', 9, '338Vh5Cb', '321b29d1ee2607bf44fdbfa12edb9e2e6137b1dceaf0fd113a20a15f26d33c8a', '[\"*\"]', NULL, '2023-11-02 14:20:52', '2023-11-02 14:20:52', NULL),
(1221, 'App\\Models\\User', 9, 'LimjxD5q', '6565a76f3cd59d80d4c6a3bd474aa0be10130b4a51e9630f638c0c5aa90aec30', '[\"*\"]', NULL, '2023-11-02 14:21:19', '2023-11-02 14:21:19', NULL),
(1222, 'App\\Models\\User', 9, '7o3cYIhI', '02ab3ca0c72fd6c02c78e7638bfc391c25f43104caf67bfc3cfd33b404d705ab', '[\"*\"]', '2023-11-02 14:21:20', '2023-11-02 14:21:19', '2023-11-02 14:21:20', NULL),
(1223, 'App\\Models\\User', 9, 'XyrMnIgV', '31839e189437d4d907b5bceb2770b42b0a59a20f75fd6ce5cc315aad75af8dc6', '[\"*\"]', '2023-11-02 14:21:33', '2023-11-02 14:21:32', '2023-11-02 14:21:33', NULL),
(1224, 'App\\Models\\User', 9, '56qihKy0', '9dd1c409c2e08242865ed16fcff456187eef4ed7936fea127517254e511766d0', '[\"*\"]', NULL, '2023-11-02 14:21:32', '2023-11-02 14:21:32', NULL),
(1225, 'App\\Models\\User', 9, 'gmCFWN2W', 'c3a3292ca7d64cf756b5ebf2ac686f144d840e5d23d9bda7e07d430254fdd879', '[\"*\"]', NULL, '2023-11-02 14:21:58', '2023-11-02 14:21:58', NULL),
(1226, 'App\\Models\\User', 9, 'X8qL3Ghk', '3e983b926d2b3043fc91561fb1cec8f88cbd04df77d8e05c979075a6031a73c3', '[\"*\"]', '2023-11-02 14:21:59', '2023-11-02 14:21:58', '2023-11-02 14:21:59', NULL),
(1227, 'App\\Models\\User', 9, '5Bz1Aqix', '9b0c7cd6fc47d04d8de069a62e0d081ec915b2288e22387b601674416923f37d', '[\"*\"]', NULL, '2023-11-02 14:22:38', '2023-11-02 14:22:38', NULL),
(1228, 'App\\Models\\User', 9, 'EoVkHOMb', '02c9ebaa979f6ab0d3ab695934385140bab6f0f4f9332f6747d7b4c8b01b3351', '[\"*\"]', '2023-11-02 14:22:46', '2023-11-02 14:22:38', '2023-11-02 14:22:46', NULL),
(1229, 'App\\Models\\User', 9, 'g3DHhbDy', '3a07c3fcaedf71ac79450da1bd385e77d7c8821f2b62bc39b014b50534fe42eb', '[\"*\"]', NULL, '2023-11-02 14:22:53', '2023-11-02 14:22:53', NULL),
(1230, 'App\\Models\\User', 9, 'amXcRHzO', '2a1d58c576965c7f9858add1011f38a0e470f74616409e21d4f09a8694ffe78c', '[\"*\"]', '2023-11-02 14:27:22', '2023-11-02 14:22:53', '2023-11-02 14:27:22', NULL),
(1231, 'App\\Models\\User', 9, 'K4ksojOv', 'caf71c4f81ba0f7ff122d9dbbedce4bfb5c84d5015b1a310bca9aad5a6efd537', '[\"*\"]', NULL, '2023-11-02 14:27:28', '2023-11-02 14:27:28', NULL),
(1232, 'App\\Models\\User', 9, 'zN4JYFmS', '52ef3d17243cf857c6f28a314aba8c299c445bfb9e48c15417ec32a2b82695b7', '[\"*\"]', '2023-11-02 14:27:29', '2023-11-02 14:27:28', '2023-11-02 14:27:29', NULL),
(1233, 'App\\Models\\User', 9, 'p3ZjvELg', '8a6bf0ebc52ccf78c8f0697600caa7fae20ac7d45a8638cc38b8c8ba0ba3814b', '[\"*\"]', NULL, '2023-11-02 14:29:52', '2023-11-02 14:29:52', NULL),
(1234, 'App\\Models\\User', 9, 'gqy8r742', '21e6bb90f6d4e24a8b9ca71fece8d0556dc17870fa55fba6c73453e789e98842', '[\"*\"]', '2023-11-02 14:30:30', '2023-11-02 14:29:52', '2023-11-02 14:30:30', NULL),
(1235, 'App\\Models\\User', 9, 'A9Br77ur', 'a5f84056654e2b0ea437f6199dc34d18697714f138ff5cf952bd2e6314f2bfc0', '[\"*\"]', '2023-11-02 14:30:18', '2023-11-02 14:30:17', '2023-11-02 14:30:18', NULL),
(1236, 'App\\Models\\User', 9, 'LqecdYWb', '200edf37093054e942e18c615f6672f66d3cd62fe4d846e1038c002ad85cffbb', '[\"*\"]', NULL, '2023-11-02 14:30:17', '2023-11-02 14:30:17', NULL),
(1237, 'App\\Models\\User', 9, '2Q5YzNec', 'de0af54e37fafa1c451153181b8d51ae0db51f426bd2d7719ac4e2fb3daf968a', '[\"*\"]', '2023-11-02 14:30:38', '2023-11-02 14:30:30', '2023-11-02 14:30:38', NULL),
(1238, 'App\\Models\\User', 9, 'SXEvRVKW', '89829afb2e2fad0f95be9940bdfe5b37567b73ecb85b537ddafa6f8727cafcad', '[\"*\"]', NULL, '2023-11-02 14:30:30', '2023-11-02 14:30:30', NULL),
(1239, 'App\\Models\\User', 9, 'azU1wC2W', '193a4152700cc036b620d12fa767da4dfb7758381fae9d35782a713cdd880c74', '[\"*\"]', NULL, '2023-11-02 14:30:34', '2023-11-02 14:30:34', NULL),
(1240, 'App\\Models\\User', 9, 'iSGyS7ba', '5921656c589dcf44c7aa27cbe6b1af0008fb6144c2bb3953e6480034bf8274fe', '[\"*\"]', '2023-11-02 14:30:34', '2023-11-02 14:30:34', '2023-11-02 14:30:34', NULL),
(1241, 'App\\Models\\User', 9, 'g6C0Qt9U', '7d0348a0359fce179b29a3fc931d5d21985373b4a130c08f018ddcda024352f8', '[\"*\"]', NULL, '2023-11-02 14:30:38', '2023-11-02 14:30:38', NULL),
(1242, 'App\\Models\\User', 9, 'a5wWS4S5', '30d6eef2dd8a80b9b675214e8da03070b9f1413a540444fc1977f04c9f77fa58', '[\"*\"]', '2023-11-02 14:31:35', '2023-11-02 14:30:38', '2023-11-02 14:31:35', NULL),
(1243, 'App\\Models\\User', 9, 'nhP0QOiO', '4b188c7843249051dbcedd31aac5fa407aa895cf9d47fa390d5f9f4e49903e33', '[\"*\"]', NULL, '2023-11-02 14:30:39', '2023-11-02 14:30:39', NULL),
(1244, 'App\\Models\\User', 9, '2un7wTnc', 'e898cd61ad8aff5f95c36c779be78742c8b8f347f3db3ed4eee18c5eef8af368', '[\"*\"]', '2023-11-02 14:31:51', '2023-11-02 14:30:39', '2023-11-02 14:31:51', NULL),
(1245, 'App\\Models\\User', 9, 'LYLSmmjV', '74e6990a39c9a458dca3f2cbf15f3d3d79f44c5d7f61f62fb86e40bc78f1e580', '[\"*\"]', '2023-11-02 14:33:23', '2023-11-02 14:31:51', '2023-11-02 14:33:23', NULL),
(1246, 'App\\Models\\User', 9, '2WUYWOYf', '6e524a9070b49706e45d5a0d53494848ab8cb9271c7e622c3ecd128dbc17d6d1', '[\"*\"]', NULL, '2023-11-02 14:31:51', '2023-11-02 14:31:51', NULL),
(1247, 'App\\Models\\User', 9, 'hM7H7BVW', '9638c21aacd360eb402c7bc5d0dfa051e64b86abe621e63dd7f87df3492fd927', '[\"*\"]', '2023-11-02 14:53:33', '2023-11-02 14:32:51', '2023-11-02 14:53:33', NULL),
(1248, 'App\\Models\\User', 9, '5dIHQaAU', 'ba94b20185e1b4350b3abd945c6bab22986d8f73f76b48b330a8120bdb7ef144', '[\"*\"]', NULL, '2023-11-02 14:32:51', '2023-11-02 14:32:51', NULL),
(1249, 'App\\Models\\User', 9, 'KAwOZWF7', '2f85326b8d770896a8520cf59b0291f3b15b1acc48956e3a9e542695384f8979', '[\"*\"]', NULL, '2023-11-02 14:33:14', '2023-11-02 14:33:14', NULL),
(1250, 'App\\Models\\User', 9, '015dr0dA', 'e19e0e78648542f7840e2e0e6c82338e74d0840c00c49bcc395acddf761565f9', '[\"*\"]', NULL, '2023-11-02 14:33:17', '2023-11-02 14:33:17', NULL),
(1251, 'App\\Models\\User', 9, 'tqULttuQ', 'dcdffbb546936825f95d0c84c79d5ea2ffdd5b34ee4c66c4d660c7d879f40db5', '[\"*\"]', NULL, '2023-11-02 14:33:20', '2023-11-02 14:33:20', NULL),
(1252, 'App\\Models\\User', 9, '4dvMj5Nk', 'ead0549c748adca6254e2823a82e773e86205664e04ffba85ca9addc702944ad', '[\"*\"]', NULL, '2023-11-02 14:34:42', '2023-11-02 14:34:42', NULL),
(1253, 'App\\Models\\User', 9, '4U3nE5F1', '4ec9d08a528437a0913f046c84e873e708c2a8705c14130c81c6c6be01039c33', '[\"*\"]', NULL, '2023-11-02 14:34:44', '2023-11-02 14:34:44', NULL),
(1254, 'App\\Models\\User', 9, 'K2JU28Xe', 'ed6187457cea8894e8226be1bbc2af7cd1a23cbdbdb0c6a302a64a6f080d8fd7', '[\"*\"]', '2023-11-02 14:38:51', '2023-11-02 14:34:44', '2023-11-02 14:38:51', NULL),
(1255, 'App\\Models\\User', 9, 'yYOlYsWb', '3e4af4db55d29dfdbfe252f8c7cb3dfda9de96175abde81e1e28559108234027', '[\"*\"]', NULL, '2023-11-02 14:36:36', '2023-11-02 14:36:36', NULL),
(1256, 'App\\Models\\User', 9, 'T5GSf2G3', 'f11634bcdc1ad38af6b31cf961fe2d46c0745e4420a5e0f5be313edf6b23464c', '[\"*\"]', NULL, '2023-11-02 14:37:06', '2023-11-02 14:37:06', NULL),
(1257, 'App\\Models\\User', 9, '2oshSeDo', 'e395ee1cded3bab8356b31661284fc4ac2feed4cdbf70bf0b65786fd48dd61d1', '[\"*\"]', NULL, '2023-11-02 14:37:12', '2023-11-02 14:37:12', NULL),
(1258, 'App\\Models\\User', 9, 'RmQe841A', 'a566bfe39b84252006c4b899c0a693485d6c3759acd601483253221c949f8509', '[\"*\"]', NULL, '2023-11-02 14:37:57', '2023-11-02 14:37:57', NULL),
(1259, 'App\\Models\\User', 9, 'wnNkhSzW', '1204d714f6a33e0d7a260c7324a36351a3b758369b29c9e1d842f6339ae3f06e', '[\"*\"]', NULL, '2023-11-02 14:38:34', '2023-11-02 14:38:34', NULL),
(1260, 'App\\Models\\User', 9, '9zgkiRhH', 'd01191b395ec9e507d67776cf01ef2b091fa42353cb004c40e9c62006dc72a69', '[\"*\"]', NULL, '2023-11-02 14:38:34', '2023-11-02 14:38:34', NULL),
(1261, 'App\\Models\\User', 9, 'RP82Ez24', '19627d525f1e62b3bda3bbf22baf5eac79b45055cda85a27e7d08ef08b10739a', '[\"*\"]', NULL, '2023-11-02 14:38:36', '2023-11-02 14:38:36', NULL),
(1262, 'App\\Models\\User', 9, 'OmtwptgX', 'b0a9135a0cdb6571fec6c86b67958317b645fe0bcc5c8e42fd6c143d57c93505', '[\"*\"]', '2023-11-02 14:41:08', '2023-11-02 14:40:18', '2023-11-02 14:41:08', NULL),
(1263, 'App\\Models\\User', 9, 'p86hO79E', '8859ce25c896f45358cff4eb1a28ee5c4fe4a884128ff1dda218f2ebbfebb1a5', '[\"*\"]', NULL, '2023-11-02 14:40:18', '2023-11-02 14:40:18', NULL),
(1264, 'App\\Models\\User', 9, 'IA2b10rX', '63625897373d08a21f9096846544f61ef80749c2a9771e1ab5027b524b01a7d4', '[\"*\"]', '2023-11-02 14:45:54', '2023-11-02 14:41:13', '2023-11-02 14:45:54', NULL),
(1265, 'App\\Models\\User', 9, 'MnvIAgRe', '4f9ebc70a5e8610b3a2a2cd8f896c909e5d6720445b1017e65ac93f0e8da3f76', '[\"*\"]', NULL, '2023-11-02 14:41:13', '2023-11-02 14:41:13', NULL),
(1266, 'App\\Models\\User', 9, '6vKuGbtl', '1ef96b94ec4be92570d21ba01cc362c9eaaede994356e3da79d6a2ff77f5cc1c', '[\"*\"]', NULL, '2023-11-02 14:41:59', '2023-11-02 14:41:59', NULL),
(1267, 'App\\Models\\User', 9, 'RoKIYruf', '443eb0b31ab4b7631fc3425e2e2cfe9b3b1ffb34a7cad121cc71072e05c45877', '[\"*\"]', NULL, '2023-11-02 14:41:59', '2023-11-02 14:41:59', NULL),
(1268, 'App\\Models\\User', 9, 'NIH5tuh8', '6799a420cc6b1c8c7d7dc76f7d4eca32f097a035c26178db635bd1c581a099e2', '[\"*\"]', '2023-11-02 14:46:35', '2023-11-02 14:46:29', '2023-11-02 14:46:35', NULL),
(1269, 'App\\Models\\User', 9, '595kIyrs', 'b2ef319224562168f3a249821d26342c4924aecc80bfb96c136be2278069f8c4', '[\"*\"]', NULL, '2023-11-02 14:46:29', '2023-11-02 14:46:29', NULL),
(1270, 'App\\Models\\User', 9, 'gJNByO4u', '6960f1b82f021401fd5ecff7ed46dc3f0d5a599bc96f0c5a0b24feb0eebdf9e4', '[\"*\"]', NULL, '2023-11-02 14:47:13', '2023-11-02 14:47:13', NULL),
(1271, 'App\\Models\\User', 9, 'qABdUuBd', 'a453c2cfd5ab1dd47ff907586c483d8620f7dec6857ac89dfb29901d692053c6', '[\"*\"]', '2023-11-02 14:48:41', '2023-11-02 14:47:13', '2023-11-02 14:48:41', NULL),
(1272, 'App\\Models\\User', 9, 'KiWmF6zK', '1ecdecc77ee8b248495b7b9d5afbd2d59b351ad12015ae29b85af0346c870b92', '[\"*\"]', NULL, '2023-11-02 14:48:50', '2023-11-02 14:48:50', NULL),
(1273, 'App\\Models\\User', 9, 'GChFZoqV', 'eaaa0c7572c91c8f7d9b291a677aafe54b7f89019fe9496f9e1d2b39c03b9886', '[\"*\"]', '2023-11-02 14:48:51', '2023-11-02 14:48:50', '2023-11-02 14:48:51', NULL),
(1274, 'App\\Models\\User', 9, 'e6Gbwbdv', '4f0d44b97c221ed30f758f2af2370d6ebac2e79b75bf76ea632d89826777042c', '[\"*\"]', '2023-11-02 14:49:54', '2023-11-02 14:49:46', '2023-11-02 14:49:54', NULL),
(1275, 'App\\Models\\User', 9, 'dHz1rBAX', 'e2a7e904df1ee83bc805ef407bbefab5ad8bff29b51a4d6c5be298bb43804954', '[\"*\"]', NULL, '2023-11-02 14:49:46', '2023-11-02 14:49:46', NULL),
(1276, 'App\\Models\\User', 9, 'XOoBGlZB', 'cc0ec39d928123d6f0d283f70689d22ef09d51ebbab7e6b5b3ccdda7c12a959a', '[\"*\"]', '2023-11-02 14:51:46', '2023-11-02 14:50:02', '2023-11-02 14:51:46', NULL),
(1277, 'App\\Models\\User', 9, 'ckT9F7Mf', '01837b5ba4201a9e74a533fa94af2372a0ee996ecd5a9e9fc403e1cf91d86730', '[\"*\"]', NULL, '2023-11-02 14:50:02', '2023-11-02 14:50:02', NULL),
(1278, 'App\\Models\\User', 9, '9vrKA4GV', '016a295b91e46460f787cc830ee8f10da7c4f6a8987e31fdf199867bec9a264a', '[\"*\"]', NULL, '2023-11-02 14:52:25', '2023-11-02 14:52:25', NULL),
(1279, 'App\\Models\\User', 9, 'vTxkaQQ4', 'd12a991b340276c577fcee4717fc1dd3c50a665074acf779da3f5ea834a859b7', '[\"*\"]', '2023-11-02 14:52:26', '2023-11-02 14:52:25', '2023-11-02 14:52:26', NULL),
(1280, 'App\\Models\\User', 9, 'maYm54kR', '35650c49ff3f0370d97801ceb4c1deb2d3e63efbdc98ad1e39b69cfad7ea76e6', '[\"*\"]', '2023-11-02 14:52:44', '2023-11-02 14:52:30', '2023-11-02 14:52:44', NULL),
(1281, 'App\\Models\\User', 9, 'OaxQlQvr', '8f397fc08f942efea145f38b807ed1ad33a46431888a9412e28a76f02ee6bf0a', '[\"*\"]', NULL, '2023-11-02 14:52:30', '2023-11-02 14:52:30', NULL),
(1282, 'App\\Models\\User', 9, 'CEduKMHH', '069e6ba3bf57c6ff7267d64e477af8672960ec3ea2bb0ea22f03cf3e0f9b8ec8', '[\"*\"]', '2023-11-02 14:58:39', '2023-11-02 14:53:33', '2023-11-02 14:58:39', NULL),
(1283, 'App\\Models\\User', 9, 'o6omMofZ', '255dadda0c6e247c9e0c804823ed896acd7f1af222411f5d089c6d89250f4d5f', '[\"*\"]', NULL, '2023-11-02 14:53:33', '2023-11-02 14:53:33', NULL),
(1284, 'App\\Models\\User', 9, 'ZWFFSKYa', '96d4c032c470f7783638ba4e7455a1bf7a52d665b4ca3f7f24de9c742c8cfe19', '[\"*\"]', '2023-11-02 15:18:09', '2023-11-02 14:53:34', '2023-11-02 15:18:09', NULL),
(1285, 'App\\Models\\User', 9, 'pzVsSSG9', '74c37143edb1025b6e52067a108915817a1dfe24f3405d5b09b3cf428971c38b', '[\"*\"]', NULL, '2023-11-02 14:53:34', '2023-11-02 14:53:34', NULL),
(1286, 'App\\Models\\User', 9, 'FMjJjenX', '40c022c1e177f37327aa09583db226f0a74b9005bf1edc4252dd4f731c9c321c', '[\"*\"]', '2023-11-02 15:09:55', '2023-11-02 14:59:14', '2023-11-02 15:09:55', NULL),
(1287, 'App\\Models\\User', 9, 'dqWPltrw', '9a1c08ab439ae261c0530ec2feb18457bcbc6b4d939849e4123c5fd6bd2ea58f', '[\"*\"]', NULL, '2023-11-02 14:59:14', '2023-11-02 14:59:14', NULL),
(1288, 'App\\Models\\User', 9, 'Vy06mNIF', '26d0e378a39def874598c5e256ea25bc98e826f6a2f63b0e1511f093816373d8', '[\"*\"]', '2023-11-02 15:12:33', '2023-11-02 15:10:04', '2023-11-02 15:12:33', NULL),
(1289, 'App\\Models\\User', 9, 'BKb01FEC', '4ee128973aa1a013013172133f01b32a08741be8a75e18a501cc3b227ceb5dbe', '[\"*\"]', NULL, '2023-11-02 15:10:04', '2023-11-02 15:10:04', NULL),
(1290, 'App\\Models\\User', 9, 'fSiZWm85', 'c1a2fc5e3311ad6e985d1d5d03a4cb25e162b0174a0ab0c2c0a4218880f7c115', '[\"*\"]', NULL, '2023-11-02 15:12:40', '2023-11-02 15:12:40', NULL),
(1291, 'App\\Models\\User', 9, 'iXxfTChI', 'c1155e8f2ca46ba83fa0292062af37340de205eb9d7c13c2242f172f0d3810a1', '[\"*\"]', '2023-11-02 15:12:56', '2023-11-02 15:12:40', '2023-11-02 15:12:56', NULL),
(1292, 'App\\Models\\User', 9, '0gW6dikL', '1e58fa27428177f14aebad62a5a8020cdf68719ab258c6f349209b49e747b83c', '[\"*\"]', '2023-11-02 15:13:25', '2023-11-02 15:13:04', '2023-11-02 15:13:25', NULL),
(1293, 'App\\Models\\User', 9, '77OrJLEl', 'd2aaac4f4da049333be4ed16865549b75492d93e52a76c9a7e966c5d5b28cf0f', '[\"*\"]', NULL, '2023-11-02 15:13:04', '2023-11-02 15:13:04', NULL),
(1294, 'App\\Models\\User', 9, 'YM7ZQRtc', '573b81a62bad019ba7ead3d726405bba585cfc18ffe95826552bce374b3d42af', '[\"*\"]', '2023-11-02 15:17:19', '2023-11-02 15:13:34', '2023-11-02 15:17:19', NULL),
(1295, 'App\\Models\\User', 9, 'nwSJoMie', 'd1ad14e6c437feaa20623910a59577abcb934a17587096d005acdd22c3d78e73', '[\"*\"]', NULL, '2023-11-02 15:13:34', '2023-11-02 15:13:34', NULL),
(1296, 'App\\Models\\User', 9, 'NrLDekCS', '60118693498ac81a9a0ae059458628c99ef98431cc8f3eab49103a655712e239', '[\"*\"]', NULL, '2023-11-02 15:17:52', '2023-11-02 15:17:52', NULL),
(1297, 'App\\Models\\User', 9, 'VOyc1RBz', 'fa0e9e10997ed35a6394461605e3672f4b8f2231a0121ab18e5430c691183ec9', '[\"*\"]', '2023-11-02 15:21:20', '2023-11-02 15:17:52', '2023-11-02 15:21:20', NULL),
(1298, 'App\\Models\\User', 9, 'tqCZLM3H', '120c18f5dd5ee2421c94447c58c278c04358324e2cd2e825ca740b423f4390c2', '[\"*\"]', '2023-11-02 15:20:41', '2023-11-02 15:19:09', '2023-11-02 15:20:41', NULL),
(1299, 'App\\Models\\User', 9, 'njXJnvAm', '858a99c1584bfca1d10002f15cdfd6d7412003bec613fdf20566f8cb17236e33', '[\"*\"]', NULL, '2023-11-02 15:19:09', '2023-11-02 15:19:09', NULL),
(1300, 'App\\Models\\User', 9, '3Lzdst3j', 'd465a591dd47ddc2e3ba7202acd5082a9eb4d10851f2dc05b9484f0d1068f2c1', '[\"*\"]', '2023-11-02 15:23:38', '2023-11-02 15:21:21', '2023-11-02 15:23:38', NULL),
(1301, 'App\\Models\\User', 9, '3GmKDkqs', 'dc37009fa491c0d5e6fa5b1bc680f9e98f790f8f33aa401d4131c7505c12c484', '[\"*\"]', NULL, '2023-11-02 15:21:21', '2023-11-02 15:21:21', NULL),
(1302, 'App\\Models\\User', 9, 'Bw0Pk6rj', 'b3f36be91760c50a8b2deab00342ebaa7d3b93a94cff0c4cbd4157fa4029acf9', '[\"*\"]', '2023-11-02 15:21:22', '2023-11-02 15:21:21', '2023-11-02 15:21:22', NULL),
(1303, 'App\\Models\\User', 9, 'fw2q4lh7', '5cb8c688bd9e920b57d605d0824575a3c16f5d36eb8fb21f1f6f3b28379e004d', '[\"*\"]', NULL, '2023-11-02 15:21:21', '2023-11-02 15:21:21', NULL),
(1304, 'App\\Models\\User', 9, 'XieuTqY1', 'ecb7496acfdba360ce910be7093cbc4827491c40b59c89c67e666ed2d5e15471', '[\"*\"]', NULL, '2023-11-02 15:23:38', '2023-11-02 15:23:38', NULL),
(1305, 'App\\Models\\User', 9, 'DCF09Vzb', 'ee2d1a54c2c185f0c2613a5fdd41ff871eb05c1155d30261a6ebe9b7af65fd23', '[\"*\"]', '2023-11-02 15:23:50', '2023-11-02 15:23:38', '2023-11-02 15:23:50', NULL),
(1306, 'App\\Models\\User', 9, 'HwxOWGzi', '66ee8ebb840aeb0631a4c6ebf4bcf26282066903872754006274b731aab55f18', '[\"*\"]', '2023-11-02 15:23:40', '2023-11-02 15:23:39', '2023-11-02 15:23:40', NULL),
(1307, 'App\\Models\\User', 9, 'frobdpO6', 'a7b9b69aba7f42a3178f725c0902eeb72717f32c6939ff896b8c4199c380aeed', '[\"*\"]', NULL, '2023-11-02 15:23:39', '2023-11-02 15:23:39', NULL),
(1308, 'App\\Models\\User', 10, 'PXR022Nx', 'ec92d7f780f026aece27607b3addfd886d1abafefadfda8133df023ac7ed36d4', '[\"*\"]', NULL, '2023-11-02 15:24:34', '2023-11-02 15:24:34', NULL),
(1309, 'App\\Models\\User', 10, 'rCqrBOsn', 'ca254fc07a6f87371138b741e97de579fb77c9acf92680421f7f647e5e88e368', '[\"*\"]', '2023-11-02 15:24:45', '2023-11-02 15:24:34', '2023-11-02 15:24:45', NULL),
(1310, 'App\\Models\\User', 10, 'pO9xmlWP', 'b36e70758736343f2709e1b454ff0ae40fc6694aa9d3c5bccb4b879f1156aa63', '[\"*\"]', NULL, '2023-11-02 15:24:52', '2023-11-02 15:24:52', NULL),
(1311, 'App\\Models\\User', 10, 'v3nF7iln', '255b519135f8b7f4330e5248d1307c39435053765f554df24eeeb9a376566ea2', '[\"*\"]', '2023-11-02 15:25:05', '2023-11-02 15:24:52', '2023-11-02 15:25:05', NULL),
(1312, 'App\\Models\\User', 10, 'lFeJyKLS', 'ef627ed06ec2c56f9b10e354f99462a56aff5b5e849348d525b3873f26f5649f', '[\"*\"]', '2023-11-02 15:25:06', '2023-11-02 15:25:05', '2023-11-02 15:25:06', NULL),
(1313, 'App\\Models\\User', 10, 'KdbroPGv', '76a67b3a8d0e0c5286943279df265345c520f7df06af3c5fa5798b6c54688a8c', '[\"*\"]', NULL, '2023-11-02 15:25:05', '2023-11-02 15:25:05', NULL),
(1314, 'App\\Models\\User', 10, 'MV1YEiIW', 'f7fb000c6b8d58b2fe2c49d98277ba4629c0132dd1970e0ca0ccb83842f984f6', '[\"*\"]', '2023-11-02 15:27:43', '2023-11-02 15:25:06', '2023-11-02 15:27:43', NULL),
(1315, 'App\\Models\\User', 10, 'gUdNhtqS', 'cd811067fae1ad83d18d6d1301c8b8ecca92386bc95647b9396708f1bbab4287', '[\"*\"]', NULL, '2023-11-02 15:25:06', '2023-11-02 15:25:06', NULL),
(1316, 'App\\Models\\User', 10, 'uLuoe8HO', '083cfb5b5ebf4888f3ac64769d8c8e63fd7b32af4bf7b26e2324dc491850d94b', '[\"*\"]', '2023-11-02 15:25:09', '2023-11-02 15:25:09', '2023-11-02 15:25:09', NULL),
(1317, 'App\\Models\\User', 10, 'lDrbVXn8', '7d72f172169dbda3922bbef1b6eb810fc4589531de9e0ee4fe2b835c805932a8', '[\"*\"]', NULL, '2023-11-02 15:25:09', '2023-11-02 15:25:09', NULL),
(1318, 'App\\Models\\User', 10, '9Z93haVW', 'f925f4e712f2c39505e426f6e200e6f844a655193b4d070d4871425cd6e2ee3c', '[\"*\"]', NULL, '2023-11-02 15:25:13', '2023-11-02 15:25:13', NULL),
(1319, 'App\\Models\\User', 10, 'R5NSTqKR', '4db4933017265b8b36c89b1c52bc7684f47c2847485ea0fccf852579b1793327', '[\"*\"]', '2023-11-02 15:25:23', '2023-11-02 15:25:13', '2023-11-02 15:25:23', NULL),
(1320, 'App\\Models\\User', 10, 'uxsd6Alv', '95445bcdbc078bc86f22fc704f871ac3754be00b2560ad2e5006114b9943837e', '[\"*\"]', NULL, '2023-11-02 15:27:44', '2023-11-02 15:27:44', NULL),
(1321, 'App\\Models\\User', 10, 'FjUMDozJ', '99c4d906a87c1b3750ef1dc8b1e813f2bb98382ebff1a232f1b0d02f4c7b0484', '[\"*\"]', '2023-11-02 15:30:59', '2023-11-02 15:27:44', '2023-11-02 15:30:59', NULL),
(1322, 'App\\Models\\User', 10, '5Ojlj5h2', '0dac16f02a3c1eac5be4d47ea8bd9d0e9a67ce038f9b43cb2d3da5af7b5a4cee', '[\"*\"]', '2023-11-02 15:27:45', '2023-11-02 15:27:44', '2023-11-02 15:27:45', NULL),
(1323, 'App\\Models\\User', 10, 'ICg8oWhT', 'acbe8ad11a8af2b0d5edc02ed5f7b70f873e157d3eaa6d3fb98c6c1df5e06ffb', '[\"*\"]', NULL, '2023-11-02 15:27:44', '2023-11-02 15:27:44', NULL),
(1324, 'App\\Models\\User', 10, 'iFwzmgZf', '60fadc31a6420805bf999edddd1e29bcbbc7ba40be91a88c2bbe20c86f08fe4c', '[\"*\"]', '2023-11-02 15:33:53', '2023-11-02 15:31:59', '2023-11-02 15:33:53', NULL),
(1325, 'App\\Models\\User', 10, 'Mnmcci2p', '25311bf4b3305af2afb3d1dc7876d3358b7c42cffa42307370c7ab5d55894347', '[\"*\"]', NULL, '2023-11-02 15:31:59', '2023-11-02 15:31:59', NULL),
(1326, 'App\\Models\\User', 9, 'F0HlO2bk', '271085ea642b4e2c96b9a063e431ee809debd1dc269b5cda5c4984100730a9f6', '[\"*\"]', '2023-11-02 15:34:35', '2023-11-02 15:34:14', '2023-11-02 15:34:35', NULL),
(1327, 'App\\Models\\User', 9, 'kJtKyrUP', 'f1f1900d9898f3ff33997f95f1876b3c23ed3804b87c9966282b74845c130f75', '[\"*\"]', NULL, '2023-11-02 15:34:14', '2023-11-02 15:34:14', NULL),
(1328, 'App\\Models\\User', 9, 'pye5LS0y', '8360e980466c8328eeeb41f9b40104450b8b27a3250bc49667d17c4e0b61a0d5', '[\"*\"]', '2023-11-02 15:34:36', '2023-11-02 15:34:35', '2023-11-02 15:34:36', NULL),
(1329, 'App\\Models\\User', 9, 'wp3zu4At', 'd6e07489e51440702602e2c9c250d36ec1a29f750e287d33d205fe948fcc40e6', '[\"*\"]', NULL, '2023-11-02 15:34:35', '2023-11-02 15:34:35', NULL),
(1330, 'App\\Models\\User', 9, 'z0hUOTm3', 'f016950e0105633ae1494a7f2c5712e73ca29be6d4ce04c6ce494e07d8f4476c', '[\"*\"]', '2023-11-02 15:34:37', '2023-11-02 15:34:36', '2023-11-02 15:34:37', NULL),
(1331, 'App\\Models\\User', 9, '1biYlKdd', '8faca0a30c4dcd6448dbf4baeb6a4fd8ca9761084fa2b15beaa464859c676a09', '[\"*\"]', NULL, '2023-11-02 15:34:36', '2023-11-02 15:34:36', NULL),
(1332, 'App\\Models\\User', 9, 'SE5OzOh2', 'b864bb662174a3c1cf7c5959e0036623bd5f729e4cc652033acbbe6a9ec2136f', '[\"*\"]', NULL, '2023-11-02 15:34:47', '2023-11-02 15:34:47', NULL),
(1333, 'App\\Models\\User', 9, 'ifW604K7', '61bdcd53ebb43d7d27c1a39ec47635b51896f9a4e6cc06880bff65546e35ae6b', '[\"*\"]', '2023-11-02 15:35:30', '2023-11-02 15:34:47', '2023-11-02 15:35:30', NULL),
(1334, 'App\\Models\\User', 9, '2VSRQF24', '76e5a58172e4c8c43ce0d1c41b8bc84b3614e0bfe1dc5e2626d892f035fba9b3', '[\"*\"]', NULL, '2023-11-02 15:35:35', '2023-11-02 15:35:35', NULL),
(1335, 'App\\Models\\User', 9, 'NU73hudN', 'f8b7171eaf81c3f0d57d49f0b2e9c5d6b83fc63890861b60ed9b17a893f6d84e', '[\"*\"]', '2023-11-02 15:36:13', '2023-11-02 15:35:35', '2023-11-02 15:36:13', NULL),
(1336, 'App\\Models\\User', 9, 'wLkt54t9', '52924f8026372e2e050b95f307137a369523812b2cf21d0dd904337af05cd469', '[\"*\"]', NULL, '2023-11-02 15:35:43', '2023-11-02 15:35:43', NULL),
(1337, 'App\\Models\\User', 9, '0bnHbyWE', 'fae487786bede810a4328eb8634a18f7cc8bd1ae3b5e9830a24b574f519f4cdb', '[\"*\"]', '2023-11-02 15:35:43', '2023-11-02 15:35:43', '2023-11-02 15:35:43', NULL),
(1338, 'App\\Models\\User', 9, '7FpdHrTf', '34557d8c8ea9e4fe53e31d345a233d3e83bf066dc294fc30f0d6d713d6d074a9', '[\"*\"]', '2023-11-02 15:36:41', '2023-11-02 15:36:27', '2023-11-02 15:36:41', NULL),
(1339, 'App\\Models\\User', 9, 'qyQqIwln', '667a2d45b5f5794af82f9581d2e7a375d9fefcc8fc0c280a42c0675c98dbbc26', '[\"*\"]', NULL, '2023-11-02 15:36:27', '2023-11-02 15:36:27', NULL),
(1340, 'App\\Models\\User', 9, 'YOYHQQht', 'f5d74aff6311ed4f46b14d17dd8547e6dc3c734eebd6c31cf2eca1c7d350c6c8', '[\"*\"]', '2023-11-02 15:38:21', '2023-11-02 15:36:41', '2023-11-02 15:38:21', NULL),
(1341, 'App\\Models\\User', 9, 'ge4vd2vn', '9c2fbd4f81e3ebcaca3573ee7e76107e9b0ef9c7252025d7b4cb87a67fa48a0a', '[\"*\"]', NULL, '2023-11-02 15:36:41', '2023-11-02 15:36:41', NULL),
(1342, 'App\\Models\\User', 9, '5NmPFK6q', '058759696699a30b2ec253e10d7a759f6d5dccbe4eafe63fac22bffc88fc8d15', '[\"*\"]', '2023-11-02 15:36:43', '2023-11-02 15:36:42', '2023-11-02 15:36:43', NULL),
(1343, 'App\\Models\\User', 9, 'CyxDHgDa', '1edcffb58083388c6f13ae6e2d74f398be19477fe2126724ae4b345215ffffb6', '[\"*\"]', NULL, '2023-11-02 15:36:42', '2023-11-02 15:36:42', NULL),
(1344, 'App\\Models\\User', 9, 'eryG9ChI', '73b981b83fcaeb3330fb5da7d793f2ae8accb884401f1fda149b6847776567f8', '[\"*\"]', NULL, '2023-11-02 15:38:21', '2023-11-02 15:38:21', NULL),
(1345, 'App\\Models\\User', 9, 'kS02unFv', '04a96f580c3cb2a540c9e5bbf18f9d6b3a190f78699b8f0c341254e78c8a730f', '[\"*\"]', '2023-11-02 15:38:22', '2023-11-02 15:38:21', '2023-11-02 15:38:22', NULL),
(1346, 'App\\Models\\User', 9, 'pooAljWG', 'aff748ec7f41b558c49bd94083decea1732d070003f4530166b96938d6ab38cf', '[\"*\"]', NULL, '2023-11-02 15:38:22', '2023-11-02 15:38:22', NULL),
(1347, 'App\\Models\\User', 9, 'n9uhg0wQ', '14f801b7cd00e018e7a06a2331a689347f0d36814a553fa9f76a12e318177617', '[\"*\"]', '2023-11-02 15:39:14', '2023-11-02 15:38:22', '2023-11-02 15:39:14', NULL),
(1348, 'App\\Models\\User', 9, 'UZFGbtiD', '7c8822bed303b1f5faef1c0161909e08461e0d65e1ab630b533236282ea2b3df', '[\"*\"]', '2023-11-02 15:42:26', '2023-11-02 15:39:15', '2023-11-02 15:42:26', NULL),
(1349, 'App\\Models\\User', 9, 'eEy6rIj5', '8f5b7962367a0456681f9ea3ad2306d55f00b0f68086285a670e5cb91fb68124', '[\"*\"]', NULL, '2023-11-02 15:39:15', '2023-11-02 15:39:15', NULL),
(1350, 'App\\Models\\User', 9, 'uiUoyRN1', '99d6ef2c94f2b9a6a87996beec4f42261bbf63dd5060955e1e0f1a7f2fdb601b', '[\"*\"]', '2023-11-02 15:40:16', '2023-11-02 15:39:15', '2023-11-02 15:40:16', NULL),
(1351, 'App\\Models\\User', 9, 'UcD3ewLA', 'e9140604b3a2d2468b308fda9859ed9949ec3aebcec3958638855295c209eb0e', '[\"*\"]', NULL, '2023-11-02 15:39:15', '2023-11-02 15:39:15', NULL),
(1352, 'App\\Models\\User', 9, 'Y0avUoz3', 'e71c720bc56b94880a1c5fe3c7ac245a7e9d1b81fa839053e46ec46b734b2d70', '[\"*\"]', NULL, '2023-11-02 15:40:16', '2023-11-02 15:40:16', NULL),
(1353, 'App\\Models\\User', 9, 'k0oegtwW', '934ede3872c939c6caf9261dd7b231081083c75b28c3a74a9b9c91dc86106f45', '[\"*\"]', NULL, '2023-11-02 15:40:18', '2023-11-02 15:40:18', NULL),
(1354, 'App\\Models\\User', 9, 'iPccxKTf', 'e9b1dc77da00e5ba995ea2013cf0db01db30fe1f994e3b5dc9c001a7f171d888', '[\"*\"]', '2023-11-02 15:40:55', '2023-11-02 15:40:53', '2023-11-02 15:40:55', NULL),
(1355, 'App\\Models\\User', 9, 'UwMrjzVq', '198980aaac88ad2b147223edb2964da668e411027d813c568c3c36140ef3b528', '[\"*\"]', NULL, '2023-11-02 15:40:53', '2023-11-02 15:40:53', NULL),
(1356, 'App\\Models\\User', 9, 'epI9Mwp1', '5701c3d2a66c7d09ea8df6d225e3536e056e04318812d424f25c0e6478f3e7ac', '[\"*\"]', NULL, '2023-11-02 15:40:53', '2023-11-02 15:40:53', NULL),
(1357, 'App\\Models\\User', 9, '4lpr4Ytc', '1c1a3210e4100337d87dd1f07c00c4e626ca4fa3b1c00cdb2f65d226d2dbd4ed', '[\"*\"]', NULL, '2023-11-02 15:41:08', '2023-11-02 15:41:08', NULL),
(1358, 'App\\Models\\User', 9, 'Nvq8eMPB', 'eb2df80b04a299a7a6e8d80144b12a9bd2562d383f1716c033647813db6337b6', '[\"*\"]', NULL, '2023-11-02 15:41:39', '2023-11-02 15:41:39', NULL),
(1359, 'App\\Models\\User', 9, 'rLvRg114', '584e721528a2594fbeb1230616eb43a4f6321a5c3a9aabbf1377ad4af7f0dac2', '[\"*\"]', '2023-11-02 15:42:52', '2023-11-02 15:41:39', '2023-11-02 15:42:52', NULL),
(1360, 'App\\Models\\User', 9, 't3mX1uAr', '9d491b9d9c414c65475e6bc2632f795a3dc92d6473848e03a71245e84d6c0fbe', '[\"*\"]', NULL, '2023-11-02 15:42:03', '2023-11-02 15:42:03', NULL),
(1361, 'App\\Models\\User', 9, 'CebUQssG', 'f82acc00a231a4d98fa5292df82fdd75ec4565001e17f4b65a9a8db1fb9fdc07', '[\"*\"]', NULL, '2023-11-02 15:42:05', '2023-11-02 15:42:05', NULL),
(1362, 'App\\Models\\User', 9, 'nhpslWQI', 'd13a56ebde82fdf6c694dffc53b8e3494a373f01ba57c959fc0b7c2a073891aa', '[\"*\"]', NULL, '2023-11-02 15:42:15', '2023-11-02 15:42:15', NULL),
(1363, 'App\\Models\\User', 9, 'JlAKQ6YO', 'b85e6358fb4bcb6e3b1536e847e10c28e62d126041ba691ee01a60e1b1e68fb3', '[\"*\"]', NULL, '2023-11-02 15:42:16', '2023-11-02 15:42:16', NULL),
(1364, 'App\\Models\\User', 9, '9T8Sa7u2', 'f4d072421cf322e7f4a7516c0a08f6d84eaedd98b7ee0da852ef6aacb1b6ec3c', '[\"*\"]', '2023-11-02 15:42:52', '2023-11-02 15:42:37', '2023-11-02 15:42:52', NULL),
(1365, 'App\\Models\\User', 9, 'T0pVwWg2', 'e933bf52a38548851e69fdb83c50bbda55df54a0f40c6a72b29613235ef8e22d', '[\"*\"]', NULL, '2023-11-02 15:42:37', '2023-11-02 15:42:37', NULL),
(1366, 'App\\Models\\User', 9, 'kQFrZWDQ', 'e13b68b770bd5bb02e96ee88769259a7adc6fa9ac9993dfed83f000159a99614', '[\"*\"]', NULL, '2023-11-02 15:42:53', '2023-11-02 15:42:53', NULL),
(1367, 'App\\Models\\User', 9, 'L94F7ns6', '4608109ff85c7251546817ebe99a41e67ac20061d104b4c68306a2e6c0cf447c', '[\"*\"]', '2023-11-02 15:45:07', '2023-11-02 15:42:53', '2023-11-02 15:45:07', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1368, 'App\\Models\\User', 9, 'vFmAaEz3', 'e58206d3ea6fa53457d451da5dc7cf490882cbb27404db901c9fea68dbf13728', '[\"*\"]', NULL, '2023-11-02 15:42:53', '2023-11-02 15:42:53', NULL),
(1369, 'App\\Models\\User', 9, 'mRrXqFa5', 'd516b1b26b3b63bd47db756267c0febed45f0e6166da618c3ce6552a008a1c3d', '[\"*\"]', '2023-11-02 15:55:08', '2023-11-02 15:42:53', '2023-11-02 15:55:08', NULL),
(1370, 'App\\Models\\User', 9, 'BUDJrU2S', 'e8b9f4736841168cef7b3e3e58b491e822f6ad4cd661b23b7339023426f9580a', '[\"*\"]', '2023-11-02 15:42:54', '2023-11-02 15:42:53', '2023-11-02 15:42:54', NULL),
(1371, 'App\\Models\\User', 9, '2xSZyzZb', 'a72f9fbb2db578041f7d76cddf6dae58c938ec0fbb6fbd47b4faec8056f85b4b', '[\"*\"]', NULL, '2023-11-02 15:42:53', '2023-11-02 15:42:53', NULL),
(1372, 'App\\Models\\User', 9, 'EWCn3myz', '852b36eee50535fb97f12654df4b64de8b716a578855bf79ffb0a353ca2b41f5', '[\"*\"]', NULL, '2023-11-02 15:42:53', '2023-11-02 15:42:53', NULL),
(1373, 'App\\Models\\User', 9, 'f5QE71z1', '33b660178981dddc17912ad7f628123b1d108eef10bff25a0aecdb3fff7b7caa', '[\"*\"]', '2023-11-02 15:43:53', '2023-11-02 15:43:53', '2023-11-02 15:43:53', NULL),
(1374, 'App\\Models\\User', 9, 'JbIykFIB', '7be17087ae939db680ac00f82b66491cc98d2d34d5605f43aec8251e55b6726e', '[\"*\"]', NULL, '2023-11-02 15:43:53', '2023-11-02 15:43:53', NULL),
(1375, 'App\\Models\\User', 9, '6nTXrHEQ', '24c295f2fc271a91edb80411f2b054a99205ee86413e57ee662dc034e4e037ea', '[\"*\"]', '2023-11-02 15:45:14', '2023-11-02 15:44:34', '2023-11-02 15:45:14', NULL),
(1376, 'App\\Models\\User', 9, 'ZzDvUkDb', '86e32acf755be627a1dc539da050f3c703ce0f6b7fc8b1afbe21e12ab4f7d71e', '[\"*\"]', NULL, '2023-11-02 15:44:34', '2023-11-02 15:44:34', NULL),
(1377, 'App\\Models\\User', 9, 'wwrqoBiL', '77ff43066fbe6a4ec6dafeed3b4f7f9f18f4678ba84559036736c161758dc544', '[\"*\"]', '2023-11-02 15:45:15', '2023-11-02 15:45:15', '2023-11-02 15:45:15', NULL),
(1378, 'App\\Models\\User', 9, 'z1eVxXo0', 'ec6a91f9a9e06e9b6eab4c45ff436c4ac5d8062a1fc5e0196b49e09d923e8905', '[\"*\"]', NULL, '2023-11-02 15:45:15', '2023-11-02 15:45:15', NULL),
(1379, 'App\\Models\\User', 9, 'ya7nRAN8', '17b787e4065fe7950ecf5d974e896171005eddd879d78e42ce87aec8d5022721', '[\"*\"]', '2023-11-02 15:45:15', '2023-11-02 15:45:15', '2023-11-02 15:45:15', NULL),
(1380, 'App\\Models\\User', 9, 'nEuKAEyC', 'd81323d55f4754773365e0932fb719fdd516ded52cad4d8c303fda0d326cf449', '[\"*\"]', NULL, '2023-11-02 15:45:15', '2023-11-02 15:45:15', NULL),
(1381, 'App\\Models\\User', 9, 'LU7OZnD8', 'b8d45a3c01d81d9eb9de1917a14949d732a1855eb05c38f6409977a996e198f2', '[\"*\"]', '2023-11-02 15:46:16', '2023-11-02 15:46:16', '2023-11-02 15:46:16', NULL),
(1382, 'App\\Models\\User', 9, 'YzA8S4Kt', '5b2c5fd3693c31a0e36c92166a9a16762723544ba03bc3dd43bcd164678152b1', '[\"*\"]', NULL, '2023-11-02 15:46:16', '2023-11-02 15:46:16', NULL),
(1383, 'App\\Models\\User', 9, 'hlGOixOX', '8b05945147f5157a8395d11c3d96663ea5f17fb074fdd66c2af6bfdae18d4725', '[\"*\"]', NULL, '2023-11-02 15:47:52', '2023-11-02 15:47:52', NULL),
(1384, 'App\\Models\\User', 9, 'nCfoaI5s', '1f69c7d4c9147d1f0640327bdb90c49e7e5364936d897bd54084d788c4b6c733', '[\"*\"]', '2023-11-02 15:47:58', '2023-11-02 15:47:52', '2023-11-02 15:47:58', NULL),
(1385, 'App\\Models\\User', 9, '0t2M6Xy1', 'deeccc874042e75ea40b90f04c8542d662ec94786b33c73e8a2466bd0e9a6744', '[\"*\"]', NULL, '2023-11-02 15:48:27', '2023-11-02 15:48:27', NULL),
(1386, 'App\\Models\\User', 9, 'dkvsUBTn', '6c81450988df7f1799a1797b4b38d052d4c33a9e2d16d6a9a86bd7f0c1c84664', '[\"*\"]', '2023-11-02 15:48:27', '2023-11-02 15:48:27', '2023-11-02 15:48:27', NULL),
(1387, 'App\\Models\\User', 9, '4KzdHj5L', '2f11615d881fa1c2bc077fea28dd1e349698b88a88f3d9f7f6b64f85bf5589e5', '[\"*\"]', '2023-11-02 15:48:32', '2023-11-02 15:48:31', '2023-11-02 15:48:32', NULL),
(1388, 'App\\Models\\User', 9, 'y7g0qwv7', '547c48c019683ef2612780e2ac7dddc4a51d2c5ab13f2a7c7d0e02a72ef66262', '[\"*\"]', NULL, '2023-11-02 15:48:31', '2023-11-02 15:48:31', NULL),
(1389, 'App\\Models\\User', 9, '2iZ5SG0b', '616a2f1095b7e529d4f83748fe11617e76b012bb7a50ef9ae0c21ac04883574f', '[\"*\"]', NULL, '2023-11-02 15:48:57', '2023-11-02 15:48:57', NULL),
(1390, 'App\\Models\\User', 9, 'Qw7IoCuy', '68fcf800aaa07e9e35cef10c61be12cbc1608a4196454ba738f4dea7ac313f6a', '[\"*\"]', '2023-11-02 15:51:15', '2023-11-02 15:48:57', '2023-11-02 15:51:15', NULL),
(1391, 'App\\Models\\User', 9, 'dT7ZQEnH', 'dd804f9776c9f3472932f33f02b0cc112ecd02998f56736dfd149db69fbaa778', '[\"*\"]', NULL, '2023-11-02 15:51:37', '2023-11-02 15:51:37', NULL),
(1392, 'App\\Models\\User', 9, '0UnNxQNM', '86ab8b9068b3c2e7a0517ae5a73c7184dda7f78d107c4fd6ddeb86fa3b40a3d2', '[\"*\"]', '2023-11-02 15:53:19', '2023-11-02 15:51:38', '2023-11-02 15:53:19', NULL),
(1393, 'App\\Models\\User', 9, 'lgcS0V3U', 'f29d5ab21034fe333be642a9baa843a429c23ee25e8c811fe9830106ff02ae61', '[\"*\"]', '2023-11-02 15:58:26', '2023-11-02 15:53:20', '2023-11-02 15:58:26', NULL),
(1394, 'App\\Models\\User', 9, '2c1CuJsc', 'f78a4080543cc34f096f0adea134b3166fc4a948e9c111cd004cee9aed3d46d0', '[\"*\"]', NULL, '2023-11-02 15:53:20', '2023-11-02 15:53:20', NULL),
(1395, 'App\\Models\\User', 9, 'Br8TZi0L', '3faf8fc26e7a10b8adab4f561e019e0c193216c61c19302f31beb7e1229e7f05', '[\"*\"]', NULL, '2023-11-02 15:53:20', '2023-11-02 15:53:20', NULL),
(1396, 'App\\Models\\User', 9, '3iws4Fit', '7a7492bb97f1c4f25464956ab8f10e505e21620a8ba7a5000ae23c1c58699f5e', '[\"*\"]', '2023-11-02 15:53:20', '2023-11-02 15:53:20', '2023-11-02 15:53:20', NULL),
(1397, 'App\\Models\\User', 9, 'tgkkuxQn', '754838da9af1bd0a79126391e90bb21456e31feeb7869e0cbb5608812c20a832', '[\"*\"]', '2023-11-02 15:55:09', '2023-11-02 15:55:08', '2023-11-02 15:55:09', NULL),
(1398, 'App\\Models\\User', 9, 'Jo106Axn', '4e79beb826af0785c53ec7ecb34554b4fbcb916eb24dd5628190500352146941', '[\"*\"]', NULL, '2023-11-02 15:55:08', '2023-11-02 15:55:08', NULL),
(1399, 'App\\Models\\User', 9, 'zY9VQTvP', '8884c570e8a2cc15a82e3bbb51a2a126a721efe83c4bf1e8fab01c6aa738edea', '[\"*\"]', '2023-11-02 15:55:10', '2023-11-02 15:55:10', '2023-11-02 15:55:10', NULL),
(1400, 'App\\Models\\User', 9, 'OAtVFeDn', '799bfecefd0ee6f4382b9fded1d7cd81135b713aa5b4ab45e04773a6699f511b', '[\"*\"]', NULL, '2023-11-02 15:55:10', '2023-11-02 15:55:10', NULL),
(1401, 'App\\Models\\User', 9, 'd3GkbebV', 'e98993e1b3313dc5540a1a0a52c38ec2499d6a97fac17062ffd75aaa91901880', '[\"*\"]', NULL, '2023-11-02 15:55:10', '2023-11-02 15:55:10', NULL),
(1402, 'App\\Models\\User', 9, 'Q6w4SYzO', '9523e93d094bd278f614d4bc6022bc8040fc34fc247be68afac56acde2829abe', '[\"*\"]', NULL, '2023-11-02 15:57:12', '2023-11-02 15:57:12', NULL),
(1403, 'App\\Models\\User', 9, 'dR0tYWTV', 'f89dbbf9a4908937fd5f14d46bc91ac8f02a1300b41d2b1e390c49ffb98d8734', '[\"*\"]', '2023-11-02 15:57:13', '2023-11-02 15:57:12', '2023-11-02 15:57:13', NULL),
(1404, 'App\\Models\\User', 9, 'KoqGN2tJ', '44d8e2bc3f026d980684f4b6b09e9da97efb231d436767e9c1b3bdd332faf24f', '[\"*\"]', NULL, '2023-11-02 15:58:25', '2023-11-02 15:58:25', NULL),
(1405, 'App\\Models\\User', 9, 'DYnGM42F', '212a91caebc84bba1a6579a9d9d226cbae809d03126ec7d7bbf1b23aa4071008', '[\"*\"]', '2023-11-02 15:58:40', '2023-11-02 15:58:25', '2023-11-02 15:58:40', NULL),
(1406, 'App\\Models\\User', 9, '3efkH5Qw', '1e13184719104ddbe583b914da5fbbc6c56fe0d8419fb210cfa6da62c44f2ba4', '[\"*\"]', NULL, '2023-11-02 15:58:26', '2023-11-02 15:58:26', NULL),
(1407, 'App\\Models\\User', 9, 'Ff96L0EN', 'f6228e25e766d2527341e21a6c1393c074579b82e0b431635da50ec57cfa412b', '[\"*\"]', '2023-11-02 15:58:26', '2023-11-02 15:58:26', '2023-11-02 15:58:26', NULL),
(1408, 'App\\Models\\User', 9, 'kDAMafqT', '01fa678b5f285f55b3399c789e8254a8baa25a4a3437f4c77798cc3b697b653a', '[\"*\"]', NULL, '2023-11-02 15:59:24', '2023-11-02 15:59:24', NULL),
(1409, 'App\\Models\\User', 9, 'etN2074N', '40feb77f0273f104cd470d43187d366db0df0e48669fb6869908dabd4c6412c8', '[\"*\"]', '2023-11-02 16:01:26', '2023-11-02 15:59:25', '2023-11-02 16:01:26', NULL),
(1410, 'App\\Models\\User', 9, 'DO5LiB5p', '70d555a85aa8e1a6817bdf308d4a80aaa4c2fc1a047dd356f8c5da35e46d80cd', '[\"*\"]', '2023-11-02 16:01:35', '2023-11-02 16:01:35', '2023-11-02 16:01:35', NULL),
(1411, 'App\\Models\\User', 9, 'yUt0TR1x', 'aa0ae5c7b4ae13bb1424e6f76e350b3736f85603c21217e5b7a61f6e1abafac5', '[\"*\"]', NULL, '2023-11-02 16:01:35', '2023-11-02 16:01:35', NULL),
(1412, 'App\\Models\\User', 9, 'podYILYm', '21a2fbbc57b157a57daae894cd240d3cf602248b1b3fab2e18492b0bfdad0fe4', '[\"*\"]', '2023-11-03 16:18:21', '2023-11-03 16:18:10', '2023-11-03 16:18:21', NULL),
(1413, 'App\\Models\\User', 9, 'wc9rRTwp', '808d37abf884df0c451a296aa52ae5ae24da09f9d0c1a3acc8c58960a37a0229', '[\"*\"]', NULL, '2023-11-03 16:18:10', '2023-11-03 16:18:10', NULL),
(1414, 'App\\Models\\User', 9, 'Fr0GDZTz', '0029ee22931d2a55aed12063e4f6d23be0be566f1ec4f9f17049cbe9188f6aef', '[\"*\"]', '2023-11-03 16:19:04', '2023-11-03 16:19:03', '2023-11-03 16:19:04', NULL),
(1415, 'App\\Models\\User', 9, 'BwGSqWbf', 'ce1e51ea0f96bc6f6e05467262c511eb9dc55497f95e6b2a1c3a69467099f5ae', '[\"*\"]', NULL, '2023-11-03 16:19:03', '2023-11-03 16:19:03', NULL),
(1416, 'App\\Models\\User', 9, 'uSVhnSKM', 'df332586f28d755ba5f3c060269d6c3c4be601f3b7dda8e0da30aa74b84c69f6', '[\"*\"]', '2023-11-03 16:20:29', '2023-11-03 16:20:15', '2023-11-03 16:20:29', NULL),
(1417, 'App\\Models\\User', 9, 'aC2T6w5D', 'ba0f3a24acd85732f4f485a0e0b9797bd4b63776a68c812147a4c4af7e7303b1', '[\"*\"]', NULL, '2023-11-03 16:20:15', '2023-11-03 16:20:15', NULL),
(1418, 'App\\Models\\User', 9, 'jChT8NV4', 'eb1b2efa20c58d914375e3ec6f6f91ae78515f3eb242fe8d8c4aa0a2e0f188fd', '[\"*\"]', NULL, '2023-11-03 16:20:34', '2023-11-03 16:20:34', NULL),
(1419, 'App\\Models\\User', 9, 'OoAy1LQz', '879caf81a9a639981b15ff2c2534a483674a5111ff970109e7a93756b0ad437a', '[\"*\"]', '2023-11-03 16:20:34', '2023-11-03 16:20:34', '2023-11-03 16:20:34', NULL),
(1420, 'App\\Models\\User', 9, 'T28fWTxk', '9e0aca81af8213f7bf9778c18f3845158d03a5c067a4c035e7ac450389fc6e8b', '[\"*\"]', '2023-11-03 16:21:51', '2023-11-03 16:20:42', '2023-11-03 16:21:51', NULL),
(1421, 'App\\Models\\User', 9, 'Hdztiw2C', '7c201ab8e272142e29bc23b9716232ee0fd0f3542ce125f49a6f38fccf083e6b', '[\"*\"]', NULL, '2023-11-03 16:20:42', '2023-11-03 16:20:42', NULL),
(1422, 'App\\Models\\User', 9, 'UP4fMVGg', '64be868994f9fbf629ba36fdc49fe7de8dfd24fb733fddabedeb976054eeeb5f', '[\"*\"]', NULL, '2023-11-03 16:21:52', '2023-11-03 16:21:52', NULL),
(1423, 'App\\Models\\User', 9, 'ibgY7q7I', 'a8803c7602a486ec36a3607e20c9b46e8bbcca547f766cb0caf915874cda32a9', '[\"*\"]', NULL, '2023-11-03 16:22:40', '2023-11-03 16:22:40', NULL),
(1424, 'App\\Models\\User', 9, 'P37425f8', '88e18534fa8d7a68d9abd5b1dd28210b75e59ea05e6834570980a5bcda276dd6', '[\"*\"]', '2023-11-03 16:27:34', '2023-11-03 16:22:40', '2023-11-03 16:27:34', NULL),
(1425, 'App\\Models\\User', 9, 'mByP8zqA', '2c59dc9478b89046ada3dd97ffc65f81295ae340628a6bff1bdb7d0bf03765ba', '[\"*\"]', NULL, '2023-11-03 16:23:46', '2023-11-03 16:23:46', NULL),
(1426, 'App\\Models\\User', 9, 'HKIWlW4C', '1991e08f967f30d329215dab0c11722ffc8ab0ea9e6c40546b484f3d0543c773', '[\"*\"]', NULL, '2023-11-03 16:27:02', '2023-11-03 16:27:02', NULL),
(1427, 'App\\Models\\User', 9, 'Hy3eoM0M', 'f09c5cd1b4aaf6f44dd7aa3680337cbe568f6f3ccce2f5557100f12d7ba04c0d', '[\"*\"]', NULL, '2023-11-03 16:27:02', '2023-11-03 16:27:02', NULL),
(1428, 'App\\Models\\User', 9, '0H1yqTOn', 'c8e8af661c71b68fe8b57e4463bcdbeb12472ca65ed7862b01c88da92fac45cc', '[\"*\"]', NULL, '2023-11-03 16:27:34', '2023-11-03 16:27:34', NULL),
(1429, 'App\\Models\\User', 9, 'cL0G5uBz', 'b09cd5f4fb02f8ebd9fdb3225a0135e930bdd226f838f6a9050ed5c49b3486f2', '[\"*\"]', NULL, '2023-11-03 16:27:48', '2023-11-03 16:27:48', NULL),
(1430, 'App\\Models\\User', 9, 'LXlrC5eg', 'ef78ef638a84aff5b67aec6a10a45788f6259d5e778d7f7a75f9471b56bf73c7', '[\"*\"]', '2023-11-03 16:28:06', '2023-11-03 16:27:48', '2023-11-03 16:28:06', NULL),
(1431, 'App\\Models\\User', 9, 'xZ2VD4a8', '9ecc8da2d74228f662670e71607a81c7dd61d5d1d7831418fdfe33c1998d081b', '[\"*\"]', NULL, '2023-11-03 16:28:06', '2023-11-03 16:28:06', NULL),
(1432, 'App\\Models\\User', 9, 'SbHFcag7', 'dc0195f6e4da36845e5170984aa50934601bdc55e64a49da571e7ea1eeb4abf4', '[\"*\"]', '2023-11-03 16:31:15', '2023-11-03 16:28:16', '2023-11-03 16:31:15', NULL),
(1433, 'App\\Models\\User', 9, 'sMtv2jIB', '7033cdb76b08a5d2f3dbee01f510a6737daf2a28c2fedfcb5181b9520037960f', '[\"*\"]', NULL, '2023-11-03 16:28:16', '2023-11-03 16:28:16', NULL),
(1434, 'App\\Models\\User', 9, 'GmKxH61w', '0658a906c9a5f86ae6a09e35d9ee065201d81378d0738b97736ba5eac509813c', '[\"*\"]', NULL, '2023-11-03 16:29:37', '2023-11-03 16:29:37', NULL),
(1435, 'App\\Models\\User', 9, 'GMK3XQYw', '2c88fff69eb236807c5c8f5cc87a139c947be5bcb9b59d3e3439c57fc314309f', '[\"*\"]', NULL, '2023-11-03 16:30:28', '2023-11-03 16:30:28', NULL),
(1436, 'App\\Models\\User', 9, 'lKakEfh7', 'a65a7b9e9252b6d6cfc498d90ef6340709b5bcee42b6d530376765b4414703ef', '[\"*\"]', '2023-11-03 16:31:16', '2023-11-03 16:31:16', '2023-11-03 16:31:16', NULL),
(1437, 'App\\Models\\User', 9, 'X7m7R3i1', 'dde8d89edfbedab442065b0fee1f86a52b37acd43a37ce2c376c6cbad6b02f28', '[\"*\"]', NULL, '2023-11-03 16:31:16', '2023-11-03 16:31:16', NULL),
(1438, 'App\\Models\\User', 9, '6N6RW3Cr', '7a6a559b3dc40db7a1cf799387c451a721aec3f4460740a246826bc4f5ebf1e5', '[\"*\"]', '2023-11-03 16:31:17', '2023-11-03 16:31:16', '2023-11-03 16:31:17', NULL),
(1439, 'App\\Models\\User', 9, 'NwNhB34O', '3c668e8b0d27b1977da848f9b3263bf716303598902282a594d03f094a30fb11', '[\"*\"]', NULL, '2023-11-03 16:31:16', '2023-11-03 16:31:16', NULL),
(1440, 'App\\Models\\User', 9, 'MDl3DfZT', 'b56f3d7545b3498e966f0d478f4dc13040e17d54ee8b203e1aa1b88ea20e8cd1', '[\"*\"]', '2023-11-03 16:36:18', '2023-11-03 16:31:21', '2023-11-03 16:36:18', NULL),
(1441, 'App\\Models\\User', 9, 'k9LDxOjP', 'bcd6be928bbea5565a46cd361fe2261865b0dc430dffd154594446b6a3f3006d', '[\"*\"]', NULL, '2023-11-03 16:31:21', '2023-11-03 16:31:21', NULL),
(1442, 'App\\Models\\User', 9, 'aq0GJdMI', '372c8e2af2d00ffd6292e33d79351b202902c3c549d62f8c543622ff1003e996', '[\"*\"]', '2023-11-03 16:32:50', '2023-11-03 16:31:32', '2023-11-03 16:32:50', NULL),
(1443, 'App\\Models\\User', 9, 'cC8OCycX', '794ad40e1a0804a41a75e8ab0cdd8d313e3101cb1e23587ea39982017c137c00', '[\"*\"]', NULL, '2023-11-03 16:31:32', '2023-11-03 16:31:32', NULL),
(1444, 'App\\Models\\User', 9, 'HgosoSXe', 'fc045a676b94268b49800afd632c82ed15022d45acb4b1428e6f58a8d0eae223', '[\"*\"]', NULL, '2023-11-03 16:32:17', '2023-11-03 16:32:17', NULL),
(1445, 'App\\Models\\User', 9, 'ZNbZN2m5', '0ad1837b0c33afec93f213846c118bb694db482a16a7e8bda7446183942f68a9', '[\"*\"]', NULL, '2023-11-03 16:32:18', '2023-11-03 16:32:18', NULL),
(1446, 'App\\Models\\User', 9, 'U5XOZFZO', '015e08fdaa15c0c08a2c09c378dba06ff643d9e572650cd1701452370248db78', '[\"*\"]', NULL, '2023-11-03 16:32:43', '2023-11-03 16:32:43', NULL),
(1447, 'App\\Models\\User', 9, '4up8lPeK', '91ed2538dbba5ad21a53ab57662b38c56a766135933d13a781c0233459232f8f', '[\"*\"]', NULL, '2023-11-03 16:32:44', '2023-11-03 16:32:44', NULL),
(1448, 'App\\Models\\User', 9, '4gF1SiAJ', 'dd4bc32752b06e8c14fe7bad1393dafd786d55eb43aa778bd5ced04353fd2c0b', '[\"*\"]', NULL, '2023-11-03 16:32:50', '2023-11-03 16:32:50', NULL),
(1449, 'App\\Models\\User', 9, 'bsExcOH3', '597e9c8e2ca84a333b11ff5dfaef3c2d673dcfd4c1df271a4617414525cc1a37', '[\"*\"]', NULL, '2023-11-03 16:32:51', '2023-11-03 16:32:51', NULL),
(1450, 'App\\Models\\User', 9, '57xmBzN8', '5f0e7684ea75eaef2fb41518594cbe32c0fca3b5c3c55412816456ab99de8749', '[\"*\"]', NULL, '2023-11-03 16:33:00', '2023-11-03 16:33:00', NULL),
(1451, 'App\\Models\\User', 9, 'UGXovvz4', 'fb91668057086930d91405fa7d51f7c29b86fd0c5f14133dcaca2608e46ed30f', '[\"*\"]', '2023-11-03 16:33:01', '2023-11-03 16:33:00', '2023-11-03 16:33:01', NULL),
(1452, 'App\\Models\\User', 9, 'YgNt3u5F', 'e9e6a9f4d4bf62c33795ad8db0d162374a9fdd615b4e1a2d3dcb4d0595614166', '[\"*\"]', NULL, '2023-11-03 16:33:35', '2023-11-03 16:33:35', NULL),
(1453, 'App\\Models\\User', 9, '3yPw9PtA', 'ffa05cd59e06043f5114f88e69125089545004433508e93b863e557034319ff4', '[\"*\"]', '2023-11-03 16:36:24', '2023-11-03 16:33:39', '2023-11-03 16:36:24', NULL),
(1454, 'App\\Models\\User', 9, 'jAPj0iM5', 'ec6870e5d34a4ed08a8d75215862c5987bc774f1eb6b3fb043edb414785f097c', '[\"*\"]', NULL, '2023-11-03 16:33:39', '2023-11-03 16:33:39', NULL),
(1455, 'App\\Models\\User', 9, 'fGsOBuPF', '7bac2af2dbbeaaaa2d23b2d6151e2f49343566b11275a83eb3a2676b33fd6311', '[\"*\"]', NULL, '2023-11-03 16:35:47', '2023-11-03 16:35:47', NULL),
(1456, 'App\\Models\\User', 9, '77lM1qiO', '59e85735323b58ad8acebd99bf7e26280dc94be85bad28beddec887a8c712fb7', '[\"*\"]', NULL, '2023-11-03 16:35:47', '2023-11-03 16:35:47', NULL),
(1457, 'App\\Models\\User', 9, 'lcdWy8WO', '50fae6b7247e45643aebd389afa7bb38571c2930738d92c45cae845f1093f9ab', '[\"*\"]', NULL, '2023-11-03 16:36:16', '2023-11-03 16:36:16', NULL),
(1458, 'App\\Models\\User', 9, 'QaHg0mU3', '5670e4ff0784af152263a55724419dd62958c8d98303b256d59ec4da4b2a45b9', '[\"*\"]', NULL, '2023-11-03 16:36:17', '2023-11-03 16:36:17', NULL),
(1459, 'App\\Models\\User', 9, 'UBRdixj0', '7b8f3f12d478107f74105389b729a78e510f428d9601924d560e0a5dc395da6f', '[\"*\"]', NULL, '2023-11-03 16:36:36', '2023-11-03 16:36:36', NULL),
(1460, 'App\\Models\\User', 9, 'WGe56bHr', 'ac0acbbbb0b9ebc4dcf90605b8d6bc8eb438b281301a39a98f9d676a651a171d', '[\"*\"]', '2023-11-03 16:37:09', '2023-11-03 16:36:36', '2023-11-03 16:37:09', NULL),
(1461, 'App\\Models\\User', 9, 'D3pPcN83', 'b8836c3e9a9d0277d43b9443a6c8e9c7e77a206d833051b11c37d89695e5bbd4', '[\"*\"]', '2023-11-03 16:37:19', '2023-11-03 16:37:09', '2023-11-03 16:37:19', NULL),
(1462, 'App\\Models\\User', 9, '6BeqZ1Q9', 'e07c9136428690fdd3c90e5ab7b92fd735234a7bcb554a15f79da8b8f30cf8bb', '[\"*\"]', NULL, '2023-11-03 16:37:09', '2023-11-03 16:37:09', NULL),
(1463, 'App\\Models\\User', 9, '4MdOKclY', '4d964c558581fe941e8b4610ae35b257f3b7cb1bf360e4f3a13b085124baccae', '[\"*\"]', NULL, '2023-11-03 16:37:10', '2023-11-03 16:37:10', NULL),
(1464, 'App\\Models\\User', 9, 'uVQMwvdH', '9d8053884d52c72112e624bc73897cea4dfdfaceb35c905ca83d4ee84886e88b', '[\"*\"]', '2023-11-03 16:37:27', '2023-11-03 16:37:10', '2023-11-03 16:37:27', NULL),
(1465, 'App\\Models\\User', 9, '0SRuTDhU', 'f96946dde97c1e7592147c68f087aa20a6090378395eadfbfe80c54f2fa4a3f7', '[\"*\"]', '2023-11-03 16:37:29', '2023-11-03 16:37:28', '2023-11-03 16:37:29', NULL),
(1466, 'App\\Models\\User', 9, '0cNVE1nC', '7efc9124e67e0ca944e545ef02605741f17553222222d483b5cd617760899619', '[\"*\"]', NULL, '2023-11-03 16:37:28', '2023-11-03 16:37:28', NULL),
(1467, 'App\\Models\\User', 9, '8PCTTEr8', '8b0d2c9b2b8ced5b161e627da9f07e785cb5f1a6680ae93187965c296c84bab7', '[\"*\"]', '2023-11-03 16:38:01', '2023-11-03 16:37:28', '2023-11-03 16:38:01', NULL),
(1468, 'App\\Models\\User', 9, 'rBuKOguU', '5fcf407b99fbd000bd3b81f54d75baecc4dea8d1324a5259e960fc28ad4f330e', '[\"*\"]', NULL, '2023-11-03 16:37:28', '2023-11-03 16:37:28', NULL),
(1469, 'App\\Models\\User', 9, 's567TaRo', 'd55bf71d0c50959fbaa431eabe0faff585790a7e3128c6b03a168d1d322c37ae', '[\"*\"]', NULL, '2023-11-03 16:38:02', '2023-11-03 16:38:02', NULL),
(1470, 'App\\Models\\User', 9, 'MjZo6ZYB', '6cf17f5b1f07cb9d690ead361a3463295f7f8b5b9c98135ee7143c055d110886', '[\"*\"]', '2023-11-03 16:38:15', '2023-11-03 16:38:02', '2023-11-03 16:38:15', NULL),
(1471, 'App\\Models\\User', 9, 'a98MHkYW', '955467a504d152ab2c55d380991b624a94bff8b79256a839e9f88ebb093f2194', '[\"*\"]', '2023-11-03 16:38:03', '2023-11-03 16:38:02', '2023-11-03 16:38:03', NULL),
(1472, 'App\\Models\\User', 9, 'XXMqyXrv', '9c393976d6c2642f1f9116a80fb2eca9c34afcdf31f32ab05a7b1149f9cdb5fb', '[\"*\"]', NULL, '2023-11-03 16:38:02', '2023-11-03 16:38:02', NULL),
(1473, 'App\\Models\\User', 9, 'NiKt5Djl', '2eb639b7af9161bc8024584e1b295f69bd4bc65b10bd3330de97a7f6f6b3265b', '[\"*\"]', '2023-11-03 16:38:30', '2023-11-03 16:38:07', '2023-11-03 16:38:30', NULL),
(1474, 'App\\Models\\User', 9, '6GA19Igd', 'e12badbbe0720fb527f73c27890eae24ab3c887a8863823f231cd80ffc89ee6e', '[\"*\"]', NULL, '2023-11-03 16:38:07', '2023-11-03 16:38:07', NULL),
(1475, 'App\\Models\\User', 9, 'asKyQWho', '8ce81cd5d1d5cbc57b80be3b95fb4c4a5959691607f9fab9f0f2e7a223982c66', '[\"*\"]', '2023-11-03 16:39:35', '2023-11-03 16:38:31', '2023-11-03 16:39:35', NULL),
(1476, 'App\\Models\\User', 9, 'v1HMBBzl', 'fc59950981224055ebe76e9a397cf27c0e81ab687ae420db90da54c35daff272', '[\"*\"]', NULL, '2023-11-03 16:38:31', '2023-11-03 16:38:31', NULL),
(1477, 'App\\Models\\User', 9, 'BpWy1Oxp', '4b561d018d2043a13e9380ed6be18fd331581b668d9a88a047849142c6e48962', '[\"*\"]', '2023-11-03 16:40:28', '2023-11-03 16:38:31', '2023-11-03 16:40:28', NULL),
(1478, 'App\\Models\\User', 9, '4CembLvK', 'f8c6b27292940b0dcb5652848850bca4eede24ea7efd46c21a5c4c660ba64619', '[\"*\"]', NULL, '2023-11-03 16:38:31', '2023-11-03 16:38:31', NULL),
(1479, 'App\\Models\\User', 9, 'eoD0zTz5', 'b1c909a8f954db5e4f86e3793040f2bd8e0521c7000887177dd2bfe00ff81891', '[\"*\"]', NULL, '2023-11-03 16:39:26', '2023-11-03 16:39:26', NULL),
(1480, 'App\\Models\\User', 9, 'jE8JIq1O', '04d8c09ff908593a4cd2d60cdff4f4503bc55842feb6958e37f036944241c316', '[\"*\"]', NULL, '2023-11-03 16:39:26', '2023-11-03 16:39:26', NULL),
(1481, 'App\\Models\\User', 9, 'NVs4wAIu', '66577f78f5b8e11ba86ce7745339259db6b62941199e955253192f74c9578155', '[\"*\"]', NULL, '2023-11-03 16:39:34', '2023-11-03 16:39:34', NULL),
(1482, 'App\\Models\\User', 9, 'qmYsPM4W', '3890fcad4df19e2e12b3473fcfe3984c715daf1c9ad72736739d130d8696f8e9', '[\"*\"]', NULL, '2023-11-03 16:40:07', '2023-11-03 16:40:07', NULL),
(1483, 'App\\Models\\User', 9, 'h3TwQnEl', 'a0a8bb20cd445e822a45aee62b147241c082508be8809d3a6cf971c5b023ebea', '[\"*\"]', NULL, '2023-11-03 16:40:42', '2023-11-03 16:40:42', NULL),
(1484, 'App\\Models\\User', 9, 'n2Zs2mQr', '3c661ae3e4ee6c420d203ae390adc9f46ebd2bbfe6113d76e133f7ed0b1e4a1c', '[\"*\"]', '2023-11-03 16:41:00', '2023-11-03 16:40:42', '2023-11-03 16:41:00', NULL),
(1485, 'App\\Models\\User', 9, 'EWd9zQkp', '7a7d0b8bd201dde0a12fb0dc8843fde5f8f7173600bb6eb6d74caa0cd0b806a3', '[\"*\"]', NULL, '2023-11-03 16:45:56', '2023-11-03 16:45:56', NULL),
(1486, 'App\\Models\\User', 9, 'JkawaSw3', '06b7e647352e64aa087d359e4fd7d0375c3d8c842a2fcda7827afa192bde2dec', '[\"*\"]', '2023-11-03 16:46:05', '2023-11-03 16:45:56', '2023-11-03 16:46:05', NULL),
(1487, 'App\\Models\\User', 9, 'k0xhLFDf', 'a2ef5e2c39de80b364e08231a62ae9db40afe97f8035f4b000a63d5e2e3a6452', '[\"*\"]', NULL, '2023-11-03 16:53:58', '2023-11-03 16:53:58', NULL),
(1488, 'App\\Models\\User', 9, 'hx6AXUe3', '35a8bea29db2016817cc5767ccaa4475c75e478b61d64e8d16f1edfca2c18574', '[\"*\"]', '2023-11-03 16:54:15', '2023-11-03 16:53:58', '2023-11-03 16:54:15', NULL),
(1489, 'App\\Models\\User', 9, 'a4NGQBU9', 'f32971dc8dae74016b5131b5a17ac2bc0c224f3ed322568c572e6c9f9e22da17', '[\"*\"]', NULL, '2023-11-03 16:55:20', '2023-11-03 16:55:20', NULL),
(1490, 'App\\Models\\User', 9, 'YZsukQ2Q', 'f098f235fb367c0ae41325e16a15715c2236b92e14b00d8fefee3cd3ee52d8e3', '[\"*\"]', '2023-11-03 16:56:05', '2023-11-03 16:55:20', '2023-11-03 16:56:05', NULL),
(1491, 'App\\Models\\User', 9, 'jeBhRcSA', 'abb6ed8c37a95e827dc90143bae2c0d4e07de09a405b52f5793a42beab9c2482', '[\"*\"]', NULL, '2023-11-03 16:56:05', '2023-11-03 16:56:05', NULL),
(1492, 'App\\Models\\User', 9, 'tdlqi2eF', '0def459dd77ec472e806c21e3979588ec71e7f979f61dda74bd73958adfd593e', '[\"*\"]', NULL, '2023-11-03 16:56:20', '2023-11-03 16:56:20', NULL),
(1493, 'App\\Models\\User', 9, 'XzuTztkD', '1ce0a2d0f42c6927d3eaee835d276e6ffc656b49b8f7d5f4769e0a03cb184ad1', '[\"*\"]', '2023-11-03 16:57:50', '2023-11-03 16:56:20', '2023-11-03 16:57:50', NULL),
(1494, 'App\\Models\\User', 9, 'ToywqgYO', 'c068f28f64306504687aad527dd4e0d312e433cbfedb90a4eba7d07a96edfa6a', '[\"*\"]', '2023-11-03 16:59:08', '2023-11-03 16:59:02', '2023-11-03 16:59:08', NULL),
(1495, 'App\\Models\\User', 9, 'yzoDMNl8', 'ceeb2dda808593ae9cdf2e511ac791729e83b4c55d7395ff614a91d4f3a5d305', '[\"*\"]', NULL, '2023-11-03 16:59:02', '2023-11-03 16:59:02', NULL),
(1496, 'App\\Models\\User', 9, 'xmHbFA2a', '301d930374a261c33b1b4709ce63dd983a206326c16ed0c6d57524f106e83cc3', '[\"*\"]', NULL, '2023-11-03 17:11:13', '2023-11-03 17:11:13', NULL),
(1497, 'App\\Models\\User', 9, 'LYD11muo', 'deea54b56899245ea81461411b7a802dc8796bb53c6651f8dfb239545ed542d2', '[\"*\"]', '2023-11-03 17:11:15', '2023-11-03 17:11:13', '2023-11-03 17:11:15', NULL),
(1498, 'App\\Models\\User', 9, '6MsdnLmU', 'e3d6b5b2af9db44d93f93d689f259ea2798d243da73016bee5421c9756d27490', '[\"*\"]', '2023-11-03 17:18:43', '2023-11-03 17:18:41', '2023-11-03 17:18:43', NULL),
(1499, 'App\\Models\\User', 9, 'TYdMNshW', '0109518dab6a8358dff2e6d744d3d5cd992c9ff74b24c39c91f7fa083536e06a', '[\"*\"]', '2023-11-03 17:18:53', '2023-11-03 17:18:50', '2023-11-03 17:18:53', NULL),
(1500, 'App\\Models\\User', 9, 'u9ZF9v1a', 'f869a34e32ebe2b4503531238ca8da8169269020d2e36eb819d95f6c3d17a658', '[\"*\"]', '2023-11-03 17:24:27', '2023-11-03 17:24:26', '2023-11-03 17:24:27', NULL),
(1501, 'App\\Models\\User', 9, 'ap17uJnk', 'cd12d143a139b04a6e505794bc31bbc70265cad37f8919032e2c838051d48f48', '[\"*\"]', '2023-11-03 17:25:19', '2023-11-03 17:24:27', '2023-11-03 17:25:19', NULL),
(1502, 'App\\Models\\User', 9, 'nbD3XHJR', '7505bd3a9044598036b309a82057a619bac23853fd737d75feef1cd3c5df9f1f', '[\"*\"]', '2023-11-03 17:25:20', '2023-11-03 17:25:19', '2023-11-03 17:25:20', NULL),
(1503, 'App\\Models\\User', 9, 'sAO9aaw5', '3b5edafae8e34a8a163bdea2cd234c501b416af66aacfc1b16d169b52c031e45', '[\"*\"]', '2023-11-03 17:26:37', '2023-11-03 17:26:36', '2023-11-03 17:26:37', NULL),
(1504, 'App\\Models\\User', 9, 'L0n3m5hm', '73fc094bf0a949ce13560bd9da77d8c5731574bdf7b0ce349654bbf3a79148a5', '[\"*\"]', '2023-11-03 17:29:26', '2023-11-03 17:26:37', '2023-11-03 17:29:26', NULL),
(1505, 'App\\Models\\User', 9, 'NMyWai1v', '106bb8e00a3f662e90b1529a3f9e69e6a975096d7ad2b0b32f47959e14783093', '[\"*\"]', '2023-11-03 17:29:36', '2023-11-03 17:29:36', '2023-11-03 17:29:36', NULL),
(1506, 'App\\Models\\User', 9, 'LG1tdoFY', '9ec9d50919a57eb9c80d2e175cc9f51deab13551b7a4e012d79a89d77f54e114', '[\"*\"]', '2023-11-03 17:29:37', '2023-11-03 17:29:36', '2023-11-03 17:29:37', NULL),
(1507, 'App\\Models\\User', 9, 'UAORaLIC', '17dd706b8043fd353f03d9a90816b38dd7ec62f9ef7013f0043e2388f8286d10', '[\"*\"]', '2023-11-03 17:32:24', '2023-11-03 17:32:23', '2023-11-03 17:32:24', NULL),
(1508, 'App\\Models\\User', 9, 'MBbbxMlY', '7c74994d1dd18cf4e967d8bc7ab0a91e66e4178257f66664de8bab9da3b62023', '[\"*\"]', NULL, '2023-11-03 17:32:23', '2023-11-03 17:32:23', NULL),
(1509, 'App\\Models\\User', 9, 'hVK92pH8', '5c10c50675f310022279513927760d26930a672f18bfc31fe7be10366f1d45a9', '[\"*\"]', '2023-11-03 17:33:04', '2023-11-03 17:32:24', '2023-11-03 17:33:04', NULL),
(1510, 'App\\Models\\User', 9, '1EysxIPo', '455f20e3ceefa7fd798df1f46134ab862318790151ef84f0d1103b439a4d4255', '[\"*\"]', NULL, '2023-11-03 17:33:32', '2023-11-03 17:33:32', NULL),
(1511, 'App\\Models\\User', 9, 'QEKZQYm4', '33f9ea3d6d6795ed0fadf938bdd44faea3f1ecf5e58d1d2e921a0ae6967a8087', '[\"*\"]', '2023-11-03 17:33:34', '2023-11-03 17:33:32', '2023-11-03 17:33:34', NULL),
(1512, 'App\\Models\\User', 9, 'O9U6uV1i', '5ae1bd6c63022143ceda018e9eb5b1cd38ee1b3113150ccfc41dbb5a2d2545ab', '[\"*\"]', '2023-11-03 17:34:15', '2023-11-03 17:33:34', '2023-11-03 17:34:15', NULL),
(1513, 'App\\Models\\User', 9, '50ViOERM', '1d9e6ea02cbb3539f70b638ce3a19af5df5805daffdcda4ef05fd450934190c3', '[\"*\"]', NULL, '2023-11-03 17:34:15', '2023-11-03 17:34:15', NULL),
(1514, 'App\\Models\\User', 9, '5pQCre2l', '97e436508f046c48007ec6cd9f6a7629c1353f1b80c122ccb616cb0a51909307', '[\"*\"]', '2023-11-03 17:35:59', '2023-11-03 17:35:58', '2023-11-03 17:35:59', NULL),
(1515, 'App\\Models\\User', 9, '5A5vrg0T', 'f9b8b8562dc45708764b39a3501e6969a2ec2dce2a4d4186df7e497389707fc7', '[\"*\"]', NULL, '2023-11-03 17:35:58', '2023-11-03 17:35:58', NULL),
(1516, 'App\\Models\\User', 9, 'jVIl7ggU', 'e3f4bcb4044478ddb1222d2fd4be4a13f5eb4fe794c539dd5be1ffb311e4cb85', '[\"*\"]', '2023-11-03 17:36:06', '2023-11-03 17:35:59', '2023-11-03 17:36:06', NULL),
(1517, 'App\\Models\\User', 9, 'V0O7YFei', 'ec0ab14be7250b2b1dd56a22167d826bc4383025feda291eb55078c23c8b40a8', '[\"*\"]', NULL, '2023-11-03 17:35:59', '2023-11-03 17:35:59', NULL),
(1518, 'App\\Models\\User', 9, 'wQjeCfne', '08397cb438ff97d43b3f659eae83e473a0a7c0cf20bea8896fa53d0fc17631cb', '[\"*\"]', '2023-11-03 17:36:54', '2023-11-03 17:36:52', '2023-11-03 17:36:54', NULL),
(1519, 'App\\Models\\User', 9, '8SjGFlI3', '77a7e24202822c189b472464f2753d9854cbc743f50f9fce9a0b6cf0f304ce41', '[\"*\"]', NULL, '2023-11-03 17:36:52', '2023-11-03 17:36:52', NULL),
(1520, 'App\\Models\\User', 9, 'ZXDlAEdn', '100c0c5bbc93d6367f72e9f54454f5e2ead4f70a9b2049b80f1fec48934fd2a5', '[\"*\"]', '2023-11-03 17:36:54', '2023-11-03 17:36:53', '2023-11-03 17:36:54', NULL),
(1521, 'App\\Models\\User', 9, '8pJquKxR', '261abdf09024f082377584e4e667fd8a089c88a35a9476261ce37eccf89f45dc', '[\"*\"]', NULL, '2023-11-03 17:36:53', '2023-11-03 17:36:53', NULL),
(1522, 'App\\Models\\User', 9, 'UnSqHXNN', 'cb25bb198a4511d5e3c734b7b4c59b7c174bd11f44f296e43ddff37887110e65', '[\"*\"]', NULL, '2023-11-03 17:37:34', '2023-11-03 17:37:34', NULL),
(1523, 'App\\Models\\User', 9, '63pyUjrC', '950f07a2a93f2469d1092353cb3504c7878b9ba89b81dc1ba7efb67d8da23b4f', '[\"*\"]', '2023-11-03 17:37:35', '2023-11-03 17:37:34', '2023-11-03 17:37:35', NULL),
(1524, 'App\\Models\\User', 9, 'zpeALWnH', 'e1ad42c53a84d28153a10bf05f2fdebb843f122bcba6577cf0f753463d9cd0cf', '[\"*\"]', '2023-11-03 17:38:01', '2023-11-03 17:37:35', '2023-11-03 17:38:01', NULL),
(1525, 'App\\Models\\User', 9, 'KGvDlvpP', 'fe61610f1d76a238338d45398bfb2b2312fb2c95b9e23ca474d74d4a2f5251a2', '[\"*\"]', NULL, '2023-11-03 17:37:35', '2023-11-03 17:37:35', NULL),
(1526, 'App\\Models\\User', 9, 'M8qeKTA0', 'a792c3faed5d3d707fbd7eea78582bfbfbfdbb034365031b6b3aa8275b3e216a', '[\"*\"]', NULL, '2023-11-03 17:38:38', '2023-11-03 17:38:38', NULL),
(1527, 'App\\Models\\User', 9, '7PGhkhGR', 'b048a68ecf00ee7ae8185e66087525161590c304155aa5e7c7d2930cff982a33', '[\"*\"]', '2023-11-03 17:38:40', '2023-11-03 17:38:38', '2023-11-03 17:38:40', NULL),
(1528, 'App\\Models\\User', 9, 'skSxUZBc', '9c50eb913d30caca6a3c311abff3401f8c3556380b69d90d4fc7906e5580e9c9', '[\"*\"]', NULL, '2023-11-03 17:38:40', '2023-11-03 17:38:40', NULL),
(1529, 'App\\Models\\User', 9, 'x4ym8MEd', '12e3227558ab7433230bb88353de52ac354c1b4d0c880f175381ac6977c17fdb', '[\"*\"]', '2023-11-03 17:38:41', '2023-11-03 17:38:40', '2023-11-03 17:38:41', NULL),
(1530, 'App\\Models\\User', 9, 'SOfDZmtK', '15ad7b7502e7a71c9085220725bc6e266719423d159dd18d7d29b2e5987c659c', '[\"*\"]', '2023-11-03 18:11:15', '2023-11-03 18:11:13', '2023-11-03 18:11:15', NULL),
(1531, 'App\\Models\\User', 9, 'KG1lj8lC', '8f4330eebded2dc631de29d391dbb4fc15df001ecae62ea63d824ef33a9d293c', '[\"*\"]', '2023-11-03 18:12:32', '2023-11-03 18:12:30', '2023-11-03 18:12:32', NULL),
(1532, 'App\\Models\\User', 9, 'KXv1B8X0', '232e356bb4563b78226734f6f2316ff7b6503979c48dc8e49bd2b8632e36db8d', '[\"*\"]', '2023-11-03 18:12:41', '2023-11-03 18:12:39', '2023-11-03 18:12:41', NULL),
(1533, 'App\\Models\\User', 9, '5Agpn6bM', 'e01af5c8723df476b35ddd1dc2874e93d80379ac8be045b8344b12af6d2dbff2', '[\"*\"]', '2023-11-03 18:16:30', '2023-11-03 18:16:29', '2023-11-03 18:16:30', NULL),
(1534, 'App\\Models\\User', 9, 'GJHcvqcR', '03742f01d07da05cf43f3c476db9fb3a7b2eb8f53eda93469d6d9aafb8db8f7e', '[\"*\"]', '2023-11-03 18:16:35', '2023-11-03 18:16:29', '2023-11-03 18:16:35', NULL),
(1535, 'App\\Models\\User', 9, 'wQpVaHol', 'a69f2f9a1e9ca4c14774ad83d0ce2b730d96a5dd00b8513070e0be8982c29b43', '[\"*\"]', '2023-11-03 18:16:47', '2023-11-03 18:16:46', '2023-11-03 18:16:47', NULL),
(1536, 'App\\Models\\User', 9, 'uu3tGqLM', '1163690c7bd63b228b511600e34a8c6666830c1dc4eb01adcd367a9c4c258b22', '[\"*\"]', '2023-11-03 18:17:05', '2023-11-03 18:17:04', '2023-11-03 18:17:05', NULL),
(1537, 'App\\Models\\User', 9, 'wfyCGMNs', 'a64649938ca89514ebba8c631d7d0cdb3d7f21cc36148d4171d01034dc6727bf', '[\"*\"]', NULL, '2023-11-03 18:20:21', '2023-11-03 18:20:21', NULL),
(1538, 'App\\Models\\User', 9, 'TkPiHH7m', '4c5e1ecbc4e64901eb2fedba798962fd320c1c66fedf38f8a8ed2d04e284e1f0', '[\"*\"]', '2023-11-03 18:20:23', '2023-11-03 18:20:21', '2023-11-03 18:20:23', NULL),
(1539, 'App\\Models\\User', 9, 'AsQ3s0LE', '91c5cefebd8fe41b760ccc96c0d926bcc80c1748f4d84b1f4e523b6fea1ea2bc', '[\"*\"]', NULL, '2023-11-03 18:22:17', '2023-11-03 18:22:17', NULL),
(1540, 'App\\Models\\User', 9, 'CnfkN7Nj', '3cbe0748054779c6575a59dc4416bbb6f4fc610f2ea3a3021b4214f6c64b8112', '[\"*\"]', '2023-11-03 18:22:18', '2023-11-03 18:22:17', '2023-11-03 18:22:18', NULL),
(1541, 'App\\Models\\User', 9, 'Y51DSV7p', 'ac22741913ae09b4ecd3d3bcfdb7939fa8e5e94fb13ecdc7744357f2defa67dd', '[\"*\"]', '2023-11-03 18:25:15', '2023-11-03 18:25:13', '2023-11-03 18:25:15', NULL),
(1542, 'App\\Models\\User', 9, 'rXvzHPB9', 'c1e5635f05729035cc27025e0a308ee4bb6e6b37eca9aa35e7a2b881653e32ed', '[\"*\"]', NULL, '2023-11-03 18:25:13', '2023-11-03 18:25:13', NULL),
(1543, 'App\\Models\\User', 9, 'AVXVJOzq', 'a10078e8ce7854e2b1ba11f46e3ac767c7aef67b8d05f56556c5734db119fdb1', '[\"*\"]', '2023-11-03 18:27:04', '2023-11-03 18:27:03', '2023-11-03 18:27:04', NULL),
(1544, 'App\\Models\\User', 9, 'UVRU6IWs', '8f5d5482c15e58e912f1ba623342bcef67977d6f24544a1fb2335b83561bcbdb', '[\"*\"]', '2023-11-03 18:27:04', '2023-11-03 18:27:03', '2023-11-03 18:27:04', NULL),
(1545, 'App\\Models\\User', 9, 'YkBziR1M', '7bccdbcd8fbff7dac5f9da0776b4e94f5b09362115d38ab3eccb9d97dd7ede3d', '[\"*\"]', '2023-11-03 18:28:24', '2023-11-03 18:28:23', '2023-11-03 18:28:24', NULL),
(1546, 'App\\Models\\User', 9, '7QdoiEIw', 'dfafb8f278179898682edb6a410f92b1f6fcdcca4f91228678bf972709b8c767', '[\"*\"]', '2023-11-03 18:28:25', '2023-11-03 18:28:23', '2023-11-03 18:28:25', NULL),
(1547, 'App\\Models\\User', 9, 'ItI9rVyL', 'e561fc102d3d182fec6c08c145a3502b03997da4c9a11863800e87db531d5929', '[\"*\"]', '2023-11-03 18:33:40', '2023-11-03 18:33:40', '2023-11-03 18:33:40', NULL),
(1548, 'App\\Models\\User', 9, 'yEyoTrLQ', '6c2ab03a73c48dfacd5b90bba6f1b7da5764fc14959d1a1f3b39d13322e43ba7', '[\"*\"]', '2023-11-03 18:33:41', '2023-11-03 18:33:40', '2023-11-03 18:33:41', NULL),
(1549, 'App\\Models\\User', 9, 'YAkw2o4p', '8c7acfa4b20a0f29624b42ffb22d9e9c79e3f52661f0d31fb9935764b00d8449', '[\"*\"]', '2023-11-03 18:34:40', '2023-11-03 18:34:39', '2023-11-03 18:34:40', NULL),
(1550, 'App\\Models\\User', 9, 'gK3lWdkJ', '0411d3ec6e69e3edf6d40c1ec60cec4440eb83b4f5c10f773c4315c7ea6ed0dc', '[\"*\"]', '2023-11-03 18:34:41', '2023-11-03 18:34:39', '2023-11-03 18:34:41', NULL),
(1551, 'App\\Models\\User', 9, 'd8ojv0Bu', '09af23a1beccb68fe54207979b5bdea4cb42c74fc28b24da0388762eaddcc6c5', '[\"*\"]', NULL, '2023-11-03 18:35:43', '2023-11-03 18:35:43', NULL),
(1552, 'App\\Models\\User', 9, 's3d5Ej7V', '274f67a7cd4ba7b0144630858e711281bf3a9896059e522b01f2254aac8bce7f', '[\"*\"]', '2023-11-03 18:35:45', '2023-11-03 18:35:43', '2023-11-03 18:35:45', NULL),
(1553, 'App\\Models\\User', 9, 'qFqOhPQy', 'a6bdd2f0596eb6864448a1f47875b2ec5740a5772f67f52de511d0577cd1cb4a', '[\"*\"]', '2023-11-03 18:37:20', '2023-11-03 18:37:19', '2023-11-03 18:37:20', NULL),
(1554, 'App\\Models\\User', 9, 'jie0JYhN', 'b602fd2b1cda480ce95fb6438c2ad4b9350fc837c01cd9cc0ac0964222b8d41f', '[\"*\"]', '2023-11-03 18:37:20', '2023-11-03 18:37:19', '2023-11-03 18:37:20', NULL),
(1555, 'App\\Models\\User', 9, 'wNlmglqX', '93bf8bfb7f34b01b0e7722f40875de42be5c625b7ba32e2716121f415dcf72ca', '[\"*\"]', '2023-11-03 18:39:37', '2023-11-03 18:39:36', '2023-11-03 18:39:37', NULL),
(1556, 'App\\Models\\User', 9, 'BgREjHe1', 'b251d1eb20d40a2e90e55429a1cb49d90ca20295f3ee5208b2287c417afd89dc', '[\"*\"]', '2023-11-03 18:39:37', '2023-11-03 18:39:36', '2023-11-03 18:39:37', NULL),
(1557, 'App\\Models\\User', 9, 'Lvr5E9tY', '3f6c3dafa61d3028340146825092f4672e140a3165125444ca94fa3979fddef4', '[\"*\"]', '2023-11-03 18:41:21', '2023-11-03 18:41:20', '2023-11-03 18:41:21', NULL),
(1558, 'App\\Models\\User', 9, 'np6pPjKj', '06078bd517e3b305b40c661083e7abc04a8a1aee807ce6f36a4b1c3130c35fc2', '[\"*\"]', NULL, '2023-11-03 18:41:20', '2023-11-03 18:41:20', NULL),
(1559, 'App\\Models\\User', 9, 'jtc9zFLL', '5f7536d920f98899cb4607a5309a3f6ad6b4dcc011ffbe2437e84bbf913abc45', '[\"*\"]', '2023-11-03 18:41:25', '2023-11-03 18:41:25', '2023-11-03 18:41:25', NULL),
(1560, 'App\\Models\\User', 9, 'hgj9a0Pz', '5c036f35d9eddeb1564db398091b81aed7db27c69d9d2f2b3ba6b671f7ae2a6b', '[\"*\"]', '2023-11-03 18:41:26', '2023-11-03 18:41:25', '2023-11-03 18:41:26', NULL),
(1561, 'App\\Models\\User', 9, 'qFlgHGom', '777b6e4712c7a0e6101644940102c6ea89d709d6aa98e8e6de12124793d69056', '[\"*\"]', '2023-11-03 18:42:53', '2023-11-03 18:42:52', '2023-11-03 18:42:53', NULL),
(1562, 'App\\Models\\User', 9, 'JYqaL7nf', 'f1429e2a56843eae8eb41543315c58f4e34ce6d3d582f21d3f92a44c1ebb6a37', '[\"*\"]', '2023-11-03 18:47:23', '2023-11-03 18:42:52', '2023-11-03 18:47:23', NULL),
(1563, 'App\\Models\\User', 9, '4ItsRoEU', 'ab27b4cfc0788ba2b83132ad0a7de359ca56de52f3c1c524032e87e966779d85', '[\"*\"]', '2023-11-03 18:47:31', '2023-11-03 18:47:31', '2023-11-03 18:47:31', NULL),
(1564, 'App\\Models\\User', 9, 'b7mdSIOJ', '4619a5433a6efc40b451d976305f0afd3d151274cbcb9a29044104aca4725216', '[\"*\"]', '2023-11-03 18:47:36', '2023-11-03 18:47:31', '2023-11-03 18:47:36', NULL),
(1565, 'App\\Models\\User', 9, 'mTRMjMcP', '47a0d77fa9becce5a4d8f3160abd2eb03ea86c4d2bef4154669155f3e8f8c0cd', '[\"*\"]', '2023-11-03 18:47:47', '2023-11-03 18:47:47', '2023-11-03 18:47:47', NULL),
(1566, 'App\\Models\\User', 9, 'QE7x6N6B', '733b3a5b37af8ea790bbfc457ca2b53dedbb2c531a0606ecceeff23b574818d0', '[\"*\"]', NULL, '2023-11-03 18:47:47', '2023-11-03 18:47:47', NULL),
(1567, 'App\\Models\\User', 9, '8aXVYDVW', '232e6a4e02c1aac86ea9de4ced67f44542d0128ca007af35bb05962fc3377d7f', '[\"*\"]', '2023-11-03 18:52:07', '2023-11-03 18:52:06', '2023-11-03 18:52:07', NULL),
(1568, 'App\\Models\\User', 9, 'uXkvVDln', '3093c3f8073d687fda79a3bed4d03306b460cf162b2c4faadcfd75320adb7ac7', '[\"*\"]', '2023-11-03 18:52:08', '2023-11-03 18:52:06', '2023-11-03 18:52:08', NULL),
(1569, 'App\\Models\\User', 9, 'iHg9LedK', '126f947b0ed0632b147b86be25127a8327284042a1b36aa4a87fc93608f3bbfb', '[\"*\"]', '2023-11-03 18:52:14', '2023-11-03 18:52:14', '2023-11-03 18:52:14', NULL),
(1570, 'App\\Models\\User', 9, '7gi9t9sI', '687722afc1cc467bda4a437f5362e77c5a004bdbf581d750b1c31a68775c2cf0', '[\"*\"]', '2023-11-03 18:52:14', '2023-11-03 18:52:14', '2023-11-03 18:52:14', NULL),
(1571, 'App\\Models\\User', 9, 'klDHCJl9', '902b532f86a7b0ce19cde8377c24451a46a87079ee6a6677bc9293dd9a5df0fa', '[\"*\"]', NULL, '2023-11-03 18:56:13', '2023-11-03 18:56:13', NULL),
(1572, 'App\\Models\\User', 9, 'Dr4k4WxH', 'b4bf41b599c78aeb584b064fd971b8f8b717dc6df83a06bd798d776f381c5588', '[\"*\"]', '2023-11-03 18:56:14', '2023-11-03 18:56:13', '2023-11-03 18:56:14', NULL),
(1573, 'App\\Models\\User', 7, '6r1JLxWQ', '8f27f7110df0cfdcb80af4543f0d127352f3d1a5ef86e945968ac79a44afc1b1', '[\"*\"]', '2023-11-04 13:17:02', '2023-11-04 10:15:50', '2023-11-04 13:17:02', NULL),
(1574, 'App\\Models\\User', 4, 'rELqUKiU', '35fbc0d53e0cc6ecff6a2e8bf59edc1cfd223da89c7d0c76ce3dc9a2ae11d095', '[\"*\"]', '2023-11-04 16:08:52', '2023-11-04 11:31:15', '2023-11-04 16:08:52', NULL),
(1575, 'App\\Models\\User', 4, '5qdEWjbU', 'acabd1c11a73c93e1494a86859c319877fcfc68982ed6b0cdf413fd6aded27e9', '[\"*\"]', '2023-11-04 17:16:26', '2023-11-04 16:12:00', '2023-11-04 17:16:26', NULL),
(1576, 'App\\Models\\User', 4, 'p5odsNsP', '172549a330ef04a7788b9de4c992353ea90ac345efd1b6e15e071102d0676b03', '[\"*\"]', '2023-11-04 18:07:32', '2023-11-04 17:34:31', '2023-11-04 18:07:32', NULL),
(1577, 'App\\Models\\User', 3, 'myfiRmdF', 'bad786c6c92dbeb0634d5ec285ef2234c47c35d72e337be77a40c97ddfe4ce47', '[\"*\"]', '2023-11-04 18:34:47', '2023-11-04 18:21:55', '2023-11-04 18:34:47', NULL),
(1578, 'App\\Models\\User', 4, 'DXQ9ERMo', '6a4a5a4f66ae29f1f7132ae769fc91a5f67e5d315700a15d092f72a3858b76c6', '[\"*\"]', '2023-11-04 19:40:53', '2023-11-04 19:40:45', '2023-11-04 19:40:53', NULL),
(1579, 'App\\Models\\User', 4, 'pC7zh1wh', '9015ac593d420b7068f4e6b8a4e3b56461d0ac9206ee28562bf78b6047a42785', '[\"*\"]', '2023-11-04 21:28:40', '2023-11-04 19:48:37', '2023-11-04 21:28:40', NULL),
(1580, 'App\\Models\\User', 4, 'pfYoHcqz', 'ce3df5eb194bb09914531cbc2989f3297ab7f097ad6d45a43274132c6c891a31', '[\"*\"]', '2023-11-05 11:34:06', '2023-11-05 10:20:57', '2023-11-05 11:34:06', NULL),
(1581, 'App\\Models\\User', 4, 'M4DrcuNn', '3064d21f1d2c80e6ee5a301c87f3b7fdfb296bf2125f6a4d4b9533bb9ce90d93', '[\"*\"]', '2023-11-05 17:10:47', '2023-11-05 11:34:49', '2023-11-05 17:10:47', NULL),
(1582, 'App\\Models\\User', 11, 'L6tWSlLq', '3a0303bd5708432101238b658743109c5e99234475542dd6b5ad5793aabf79ca', '[\"*\"]', '2023-11-06 12:46:14', '2023-11-05 16:32:30', '2023-11-06 12:46:14', NULL),
(1583, 'App\\Models\\User', 4, '1ZH3UN4m', 'fbffabfe265cb72764888ef785edb5d9d784dc10601c8cd2ca8743ebb015ffd4', '[\"*\"]', '2023-11-05 17:12:41', '2023-11-05 17:12:36', '2023-11-05 17:12:41', NULL),
(1584, 'App\\Models\\User', 4, '1ob3u06R', '86f6213ded802dbc87ec77e268681c8a9871a0c2e65ebea0d4dbffb0e65b66a3', '[\"*\"]', '2023-11-05 21:23:49', '2023-11-05 20:06:39', '2023-11-05 21:23:49', NULL),
(1585, 'App\\Models\\User', 4, 'BI7Do8B6', '9e7777d0d69b9c7cf01c2cb839f9e943f5ab1bd97397b368bc9377282648e1dc', '[\"*\"]', '2023-11-06 09:24:40', '2023-11-05 21:35:04', '2023-11-06 09:24:40', NULL),
(1586, 'App\\Models\\User', 4, 'Ts5xfhGz', 'eb21c5a491099bddfd3998a142e6c070c2b63deae24d8dee10628e426214565b', '[\"*\"]', '2023-11-06 11:12:40', '2023-11-06 09:46:14', '2023-11-06 11:12:40', NULL),
(1587, 'App\\Models\\User', 4, 'IrkJsIOm', '27f508fada13c5dfb558aa202981e64052120205cbbd05e5605217fc1df08094', '[\"*\"]', '2023-11-06 12:50:16', '2023-11-06 12:48:38', '2023-11-06 12:50:16', NULL),
(1588, 'App\\Models\\User', 12, 'JrSk7ysf', '84554d16aaffe527631652858d763f9f9675fcbb81b08ad50c9e01f3ce99e0f0', '[\"*\"]', '2023-11-14 08:18:59', '2023-11-06 13:22:50', '2023-11-14 08:18:59', NULL),
(1589, 'App\\Models\\User', 2, 'WdIf7p7c', 'ad40f34b2dee0a7a4b7802dcd682901d045aa0457811c86f90549496b9f96602', '[\"*\"]', '2023-11-06 18:13:43', '2023-11-06 18:05:37', '2023-11-06 18:13:43', NULL),
(1590, 'App\\Models\\User', 4, 'tDIPG4ho', 'b46d504270837ad901ae85f4cb3642761dfe2aca2c9addb4abb92900bf82e6f5', '[\"*\"]', '2023-11-06 19:07:24', '2023-11-06 19:04:22', '2023-11-06 19:07:24', NULL),
(1591, 'App\\Models\\User', 3, 'WABPzkTZ', '460ab69ff71eef17d97cb3697d839afe84b925125153e0976a88754c8bfd2e7a', '[\"*\"]', '2023-11-06 19:38:05', '2023-11-06 19:10:51', '2023-11-06 19:38:05', NULL),
(1592, 'App\\Models\\User', 4, 'cpZzkrOh', 'ee25ef43c6ef3e49e301cbe615eb9756ad1b2e4319ecff04ab5350afb783c7dd', '[\"*\"]', '2023-11-06 20:09:54', '2023-11-06 19:39:17', '2023-11-06 20:09:54', NULL),
(1593, 'App\\Models\\User', 4, 'TL7a2UOb', '510019a2116f8b841584c507757e46be16d408538b8dff7f4b649afc2986356e', '[\"*\"]', '2023-11-06 20:33:13', '2023-11-06 20:31:27', '2023-11-06 20:33:13', NULL),
(1594, 'App\\Models\\User', 4, 'R27o7eTX', '1599d4589142fbbfbd1500f0e9fdc1fa93f507fd9646271cc56b39079519d99c', '[\"*\"]', '2023-11-07 11:41:51', '2023-11-06 20:38:48', '2023-11-07 11:41:51', NULL),
(1595, 'App\\Models\\User', 13, '2DvFUOJA', '23db98788e66f1efa003ced5db371403aadcbcff15da3da6c871fd036d053b62', '[\"*\"]', '2023-11-07 14:25:05', '2023-11-07 14:22:20', '2023-11-07 14:25:05', NULL),
(1596, 'App\\Models\\User', 4, 'M6omO6tC', '56b6a30a1ed6af391737eab1dd69062bcf1ada2a8dd8d2813ccc32df1b1eeeef', '[\"*\"]', '2023-11-07 16:44:46', '2023-11-07 15:51:03', '2023-11-07 16:44:46', NULL),
(1597, 'App\\Models\\User', 4, 'sfkjV8rR', '6584b275e466398b7f60cc65de530bbfd38dde2a3b3786677fad36b4cdeee414', '[\"*\"]', '2023-11-07 17:15:34', '2023-11-07 16:48:25', '2023-11-07 17:15:34', NULL),
(1598, 'App\\Models\\User', 4, 'd1rypuab', 'af2c02a2227940d1a2336bd2810afb4437a0d7b77d149686d98a658e68f7ccca', '[\"*\"]', '2023-11-07 17:16:16', '2023-11-07 17:16:14', '2023-11-07 17:16:16', NULL),
(1599, 'App\\Models\\User', 5, 'sB7NjtNA', '292095d5a616b518ae7b7b5ec02b75aecd5d2942f424b35ff16bc62294108572', '[\"*\"]', '2023-11-07 18:06:50', '2023-11-07 17:21:01', '2023-11-07 18:06:50', NULL),
(1600, 'App\\Models\\User', 4, '7Ln06GEW', '38b8916181f17468eaadb79c17cd0e67ae1c48a6ccf7298611b75a5553850c2c', '[\"*\"]', '2023-11-07 18:07:14', '2023-11-07 18:07:12', '2023-11-07 18:07:14', NULL),
(1601, 'App\\Models\\User', 4, 'xMY3qN5N', '465f2fb5274fe80ce42536ac88f81e18953b0d158d4ab3151362fee9d75ef0e0', '[\"*\"]', '2023-11-07 18:18:01', '2023-11-07 18:09:56', '2023-11-07 18:18:01', NULL),
(1602, 'App\\Models\\User', 4, 'rPoe2SBy', '017446b06b45b7ca5ca0c7ea2f4c3364baca030840fdd9a37bdc5686163a0dab', '[\"*\"]', '2023-11-07 18:33:13', '2023-11-07 18:33:10', '2023-11-07 18:33:13', NULL),
(1603, 'App\\Models\\User', 14, 'v2FaLxle', '806e4a1e736d5bbb3245f0394cbf313c8649ea83fca184b05d6d8052bc1bbd70', '[\"*\"]', '2023-11-07 18:35:06', '2023-11-07 18:34:14', '2023-11-07 18:35:06', NULL),
(1604, 'App\\Models\\User', 5, 'X8cmSwBx', '1e072d3ca2b9c7b57079872acae80514fd7162a91f5e0d07b6db4d64d4dc0ab0', '[\"*\"]', '2023-11-07 18:36:37', '2023-11-07 18:36:36', '2023-11-07 18:36:37', NULL),
(1605, 'App\\Models\\User', 4, 'BnuyzJPR', '43f44c6ddca60012930d995661f30f4a20fab0a8f513e5bd76cb57f42889ccd6', '[\"*\"]', '2023-11-07 19:20:56', '2023-11-07 18:46:22', '2023-11-07 19:20:56', NULL),
(1606, 'App\\Models\\User', 2, 'WFGJi84N', '956c844bc72939cfcf94207ba82991a5959a6db699038de68e7075fb01a29416', '[\"*\"]', '2023-11-07 19:47:56', '2023-11-07 19:22:06', '2023-11-07 19:47:56', NULL),
(1607, 'App\\Models\\User', 9, 'dI5KtQnR', 'c553fd5670735ca2a5c4374bc449f070d96b380b8bd2f532436a005589246e53', '[\"*\"]', NULL, '2023-11-08 09:24:05', '2023-11-08 09:24:05', NULL),
(1608, 'App\\Models\\User', 9, 'WgCAwOI6', 'c58b0709f2885487fcee6a7171c6a1966877e95b56a392bbdaae0a032a53bc4c', '[\"*\"]', '2023-11-08 09:24:07', '2023-11-08 09:24:05', '2023-11-08 09:24:07', NULL),
(1609, 'App\\Models\\User', 9, 'WGjWgRBx', '1f59739dee43ad08f116064c0d95af8878d0b1ab92de4a263262a907b79ca41f', '[\"*\"]', '2023-11-08 09:25:43', '2023-11-08 09:25:09', '2023-11-08 09:25:43', NULL),
(1610, 'App\\Models\\User', 9, 'fNcfSQ0r', 'f6aed3cabf04cdc3794c8fe54bd4badea464c88b494ddd36ffd2fda48d3f5f22', '[\"*\"]', NULL, '2023-11-08 09:25:09', '2023-11-08 09:25:09', NULL),
(1611, 'App\\Models\\User', 9, 'eKpIjBHc', 'c27ff0c365bda7a5d12e1501b1987361d13ce156071c127302ee387bcee8ef4d', '[\"*\"]', '2023-11-08 09:25:51', '2023-11-08 09:25:50', '2023-11-08 09:25:51', NULL),
(1612, 'App\\Models\\User', 9, 'gWPoK5Pm', '7122288f144e16ba1f87463c44b0c717c269a1c7f3ae12f4e6fed85394553f0c', '[\"*\"]', '2023-11-08 09:26:19', '2023-11-08 09:25:50', '2023-11-08 09:26:19', NULL),
(1613, 'App\\Models\\User', 9, '962R5E2d', '039c22f36536f26245c06f1230ba55da8f011408ba9cb30b9dbdb6a9de52ca0b', '[\"*\"]', '2023-11-08 09:26:24', '2023-11-08 09:26:23', '2023-11-08 09:26:24', NULL),
(1614, 'App\\Models\\User', 9, 'Dey5eE4V', '5bd9667c0b0799fb5d0a17774531404cd696ac96b9d01cfd7a0ecb3df54a5c52', '[\"*\"]', '2023-11-08 09:27:27', '2023-11-08 09:26:23', '2023-11-08 09:27:27', NULL),
(1615, 'App\\Models\\User', 9, 'EFEal2BU', '9a79da2f5dd99da4e1d30f17bdfb991ba7a4095a1bb505d7fb7a81172727a401', '[\"*\"]', '2023-11-08 09:29:59', '2023-11-08 09:29:58', '2023-11-08 09:29:59', NULL),
(1616, 'App\\Models\\User', 9, 'T5VeeyqK', '52b599e2c4d2f1c01ed863d79bd1959bb132eafb32f1d24132db76de5eb20be6', '[\"*\"]', '2023-11-08 09:30:00', '2023-11-08 09:29:58', '2023-11-08 09:30:00', NULL),
(1617, 'App\\Models\\User', 9, 'lbDrgPNK', '36653ba3bc14eee1dcf9c227cd794694c54b4de6de64f320243cfbd1bf11f53f', '[\"*\"]', '2023-11-08 09:30:45', '2023-11-08 09:30:44', '2023-11-08 09:30:45', NULL),
(1618, 'App\\Models\\User', 9, 'FTtxdgVi', 'a3f16d03a423b6bd6252bed9ce9834736899bdedcc13e6153322741cef8e19f5', '[\"*\"]', '2023-11-08 09:30:46', '2023-11-08 09:30:44', '2023-11-08 09:30:46', NULL),
(1619, 'App\\Models\\User', 9, 'aQavUg6b', '3e8d3a606e1365c471d7ada7f1f5c2b06cedaffe3f4e19f226c3b6c8abf678a1', '[\"*\"]', NULL, '2023-11-08 09:31:30', '2023-11-08 09:31:30', NULL),
(1620, 'App\\Models\\User', 9, 'AKDd0zoL', 'ec08964e41228877590eb8d2aa061ad21847c00455de0354b7d5c9e65cf7cf0a', '[\"*\"]', '2023-11-08 09:31:32', '2023-11-08 09:31:30', '2023-11-08 09:31:32', NULL),
(1621, 'App\\Models\\User', 9, 'u46q8THU', '30ca68daede01fbafb5f33d20336d0362849db479f8c47d07b935d530938eab3', '[\"*\"]', NULL, '2023-11-08 09:41:31', '2023-11-08 09:41:31', NULL),
(1622, 'App\\Models\\User', 9, 'xS5NOAti', '3e47a2438f77089e63597173ab5ed2df7032593360f8a3fc8d987a0188da8693', '[\"*\"]', '2023-11-08 09:41:33', '2023-11-08 09:41:31', '2023-11-08 09:41:33', NULL),
(1623, 'App\\Models\\User', 9, 'VCMfe3Zv', 'aed1469ab3de5021b5a92d265c483371dd32903d89435af34772031c68fad139', '[\"*\"]', '2023-11-08 09:42:28', '2023-11-08 09:42:27', '2023-11-08 09:42:28', NULL),
(1624, 'App\\Models\\User', 9, 'ScHzby6y', '93e20117e544e57b917601d75913a35402cfa121f90ddbf42b59ae389d730243', '[\"*\"]', '2023-11-08 09:42:29', '2023-11-08 09:42:27', '2023-11-08 09:42:29', NULL),
(1625, 'App\\Models\\User', 9, 'VifZxTyh', '0bffa5a67b2073af9fb08441040107700d7f97f062b9981938c5ac8ddd5a84c0', '[\"*\"]', '2023-11-08 09:44:00', '2023-11-08 09:44:00', '2023-11-08 09:44:00', NULL),
(1626, 'App\\Models\\User', 9, '0c8VvRNS', '094cb8784e4df92ed38bdcd3fc83ac68018c428da8df49f22ac99fae6e7c1deb', '[\"*\"]', '2023-11-08 09:44:02', '2023-11-08 09:44:00', '2023-11-08 09:44:02', NULL),
(1627, 'App\\Models\\User', 9, 'kDSNkQzp', '97eee47ca7308a62d3b8307d2461390d38d80a6faeca01f21e460bc7534239ec', '[\"*\"]', '2023-11-08 09:44:47', '2023-11-08 09:44:46', '2023-11-08 09:44:47', NULL),
(1628, 'App\\Models\\User', 9, 'qKE2LOuH', 'bfea22d6cefd2562da8e1a48775aaf57a913f1a0cf255cbda74fc7970a743678', '[\"*\"]', NULL, '2023-11-08 09:44:46', '2023-11-08 09:44:46', NULL),
(1629, 'App\\Models\\User', 9, 'EjxjxjyV', '5a9a7a3ccff1876f32b75233c574eeabea0fe6a959eade2b3e3c0ea0300293a2', '[\"*\"]', '2023-11-08 09:45:12', '2023-11-08 09:45:11', '2023-11-08 09:45:12', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1630, 'App\\Models\\User', 9, 'WdGdkDtg', 'a7644de54e939b3bbf0c1672c0ff9f411a063a56481ed7fe203d5aace7f0a396', '[\"*\"]', '2023-11-08 09:45:13', '2023-11-08 09:45:11', '2023-11-08 09:45:13', NULL),
(1631, 'App\\Models\\User', 9, 'XhuUd6Hf', '6f79ae70e5ae61799483ecc8d21bb5d77544bbea3dd6c73c79b6324bd796eaf2', '[\"*\"]', '2023-11-08 09:45:46', '2023-11-08 09:45:46', '2023-11-08 09:45:46', NULL),
(1632, 'App\\Models\\User', 9, 'RFXQAdjw', 'f0991e33ffe6dbd7199a626c5d9ff34302199b2e7a4b18f914310ed6b5832d56', '[\"*\"]', '2023-11-08 09:45:47', '2023-11-08 09:45:46', '2023-11-08 09:45:47', NULL),
(1633, 'App\\Models\\User', 4, '3b3VILfZ', '296babb140acdd91b392039211fa32cf9bcfa86229ce28ba63f9449f347c648f', '[\"*\"]', '2023-11-08 09:46:27', '2023-11-08 09:46:02', '2023-11-08 09:46:27', NULL),
(1634, 'App\\Models\\User', 9, 'OuXVAGFW', '1a01cc0b8bf98b1680f147c79e81b5321066b1a50234cbfff856581b66e738d5', '[\"*\"]', '2023-11-08 09:49:39', '2023-11-08 09:49:38', '2023-11-08 09:49:39', NULL),
(1635, 'App\\Models\\User', 9, 'mjGjRJ3f', '256b9d0677b93f128638b934f3d2a523df83f6978de2a88c9a6172db923f2ad1', '[\"*\"]', '2023-11-08 09:49:40', '2023-11-08 09:49:38', '2023-11-08 09:49:40', NULL),
(1636, 'App\\Models\\User', 9, 'xJYUxfAp', 'fd5e7be13e6d3a65a33db0ee9f4c45904731f83ee671fb8cdecd4bfccbdf3a4c', '[\"*\"]', '2023-11-08 09:49:55', '2023-11-08 09:49:54', '2023-11-08 09:49:55', NULL),
(1637, 'App\\Models\\User', 9, 'PWnePd8a', '9602fe441895def5bb9e041c58f4ef4c9c904175dd0eca6dd1384ba583625654', '[\"*\"]', '2023-11-08 09:49:56', '2023-11-08 09:49:54', '2023-11-08 09:49:56', NULL),
(1638, 'App\\Models\\User', 9, 'rf5Ih2ji', '5b5ea4b7f215c401c65fe0f6b7d18533b378cb1f1a874ba16948cd8500b17216', '[\"*\"]', '2023-11-08 09:50:12', '2023-11-08 09:50:12', '2023-11-08 09:50:12', NULL),
(1639, 'App\\Models\\User', 9, 'qDtyGkw2', 'f2f77336bbc6f52fe4e9d1b6cda4b461ce9f23e0fe9e6ffc2814114164f49506', '[\"*\"]', '2023-11-08 09:50:13', '2023-11-08 09:50:12', '2023-11-08 09:50:13', NULL),
(1640, 'App\\Models\\User', 9, 'Q6JWLnr3', 'eada96981cc10caf6c501c48451cc9df09fcd50f5b914ef2e4c586b3697b7802', '[\"*\"]', NULL, '2023-11-08 09:50:48', '2023-11-08 09:50:48', NULL),
(1641, 'App\\Models\\User', 9, 'Y6MU6UUn', '34958fbc4b2dd92b5604481f4231a5572f940cb948d632dd2a9d098c9412a071', '[\"*\"]', '2023-11-08 09:51:08', '2023-11-08 09:50:48', '2023-11-08 09:51:08', NULL),
(1642, 'App\\Models\\User', 9, 'eblOHTMW', '7c582dbd1b4ff1cd95407f79141e1a0861d9765f91edf1ae6dd3062e939bf69d', '[\"*\"]', '2023-11-08 09:51:19', '2023-11-08 09:51:18', '2023-11-08 09:51:19', NULL),
(1643, 'App\\Models\\User', 9, 'fIgVjF7J', '5ef93b479cdf1f6ee4eae44b251a432589651b53dd9e371f61ace4ab629b21b0', '[\"*\"]', '2023-11-08 09:51:20', '2023-11-08 09:51:18', '2023-11-08 09:51:20', NULL),
(1644, 'App\\Models\\User', 9, 'VU02oqkg', '1ca5a76a99ad232de9447f39b251ab7c1c1c5e2529a70b820b502616d6888134', '[\"*\"]', '2023-11-08 10:01:31', '2023-11-08 10:01:31', '2023-11-08 10:01:31', NULL),
(1645, 'App\\Models\\User', 9, 'QAQ0NoXJ', 'bc8fe6a61b2cb24a2251fe253722dbe0dc18da5b36f9a9d85926ad2adaff6651', '[\"*\"]', '2023-11-08 10:01:33', '2023-11-08 10:01:31', '2023-11-08 10:01:33', NULL),
(1646, 'App\\Models\\User', 9, 'qtSWnsfW', '0a75c9e8e232b19ad25b664b033d34279900b7f713781e39b780a3ee059b6bd1', '[\"*\"]', NULL, '2023-11-08 10:01:38', '2023-11-08 10:01:38', NULL),
(1647, 'App\\Models\\User', 9, 'GJv2yxuY', 'ab8f801c70d98d9b917d1584313601e07d13fa0cc1c4d3fb87886770e3994e45', '[\"*\"]', '2023-11-08 10:01:39', '2023-11-08 10:01:38', '2023-11-08 10:01:39', NULL),
(1648, 'App\\Models\\User', 9, 'sOd5rEbl', '1ab0e1122f3c1a406c9e8c49b9299d2daa9ff6a5ae9d52885bacdeb51d00b0fc', '[\"*\"]', '2023-11-08 10:02:21', '2023-11-08 10:02:20', '2023-11-08 10:02:21', NULL),
(1649, 'App\\Models\\User', 9, 'JLFqIdAd', '4ff22a32107f16a2ac3b370b01dfb9844037d16fa841196c82a70e6920078e9b', '[\"*\"]', NULL, '2023-11-08 10:02:20', '2023-11-08 10:02:20', NULL),
(1650, 'App\\Models\\User', 9, 'N6JirnUz', '14364cecc6732939a2f686b86e52ecdd0c20d5c927f6fa606756f32bf0a3c329', '[\"*\"]', '2023-11-08 10:03:05', '2023-11-08 10:03:05', '2023-11-08 10:03:05', NULL),
(1651, 'App\\Models\\User', 9, 'h7bvMt7r', 'e89ab1c8aa07217c022476e8e5a9e8b033815067b5d88d7597626567cc7e7b6d', '[\"*\"]', '2023-11-08 10:04:04', '2023-11-08 10:03:05', '2023-11-08 10:04:04', NULL),
(1652, 'App\\Models\\User', 9, 'ZLzhuKVj', '1625eeeddb8035c93f49984386ba22ddc9c58d4ebfd89f2487cfd0fe3444ad34', '[\"*\"]', '2023-11-08 10:04:54', '2023-11-08 10:04:10', '2023-11-08 10:04:54', NULL),
(1653, 'App\\Models\\User', 9, 'Z1bTLgMY', '81e467163e97a0618399e148e5009efee61c188ef621a666fcfbf22f2065fb95', '[\"*\"]', '2023-11-08 10:04:54', '2023-11-08 10:04:10', '2023-11-08 10:04:54', NULL),
(1654, 'App\\Models\\User', 9, 'Ztqp5jZx', '0e4fc9d2fe9581ce4581d1ff7c581a8f6a4a55a1931d66aef9165b4597bce564', '[\"*\"]', '2023-11-08 10:05:22', '2023-11-08 10:05:01', '2023-11-08 10:05:22', NULL),
(1655, 'App\\Models\\User', 9, 'SEwXzH0y', '576c2cc62c184157c5296b4a3ca67265cd4741c239bb869adddc75d42c5e3615', '[\"*\"]', '2023-11-08 10:06:44', '2023-11-08 10:05:01', '2023-11-08 10:06:44', NULL),
(1656, 'App\\Models\\User', 9, 'VConER9v', '0f12bca2cd82ccdad90e2ac6ddf659ddb19495b6e30e33e81d67e4bc9575c6ee', '[\"*\"]', '2023-11-08 10:06:51', '2023-11-08 10:06:50', '2023-11-08 10:06:51', NULL),
(1657, 'App\\Models\\User', 9, 'wsZOFeUX', '252d23665061a9dfb2479201806ee957002a8d292b7e86a752088e030697b50f', '[\"*\"]', '2023-11-08 10:07:06', '2023-11-08 10:06:50', '2023-11-08 10:07:06', NULL),
(1658, 'App\\Models\\User', 9, 'bD0oxx9F', '699f0f2d90e5665b60ac27d20bb2e5130d4477bcddbee6b09cec5f1f77067aaa', '[\"*\"]', NULL, '2023-11-08 10:07:18', '2023-11-08 10:07:18', NULL),
(1659, 'App\\Models\\User', 9, '1PDKxDBF', 'eebe0eb2611d6adca1c8e7ba1b0c3122968bed55e79ebeee17bda52037145933', '[\"*\"]', '2023-11-08 10:09:01', '2023-11-08 10:07:18', '2023-11-08 10:09:01', NULL),
(1660, 'App\\Models\\User', 9, 'MFv7V5nB', '8aa909722e69e801657e65abecff504093296b9f8f92ca55bacb83d40be5ff08', '[\"*\"]', '2023-11-08 10:09:09', '2023-11-08 10:09:08', '2023-11-08 10:09:09', NULL),
(1661, 'App\\Models\\User', 9, 'Wcd4vrfR', '778e5e5ff7a6ebedf1cc32ac8a3077c9f0d893303905706a150ae48aa79301bc', '[\"*\"]', '2023-11-08 10:09:29', '2023-11-08 10:09:08', '2023-11-08 10:09:29', NULL),
(1662, 'App\\Models\\User', 9, 'mx7S2ye2', 'bc754a3c7ad8e397ec53728f41bf5bec58121447b89611b6c6a3d76ca174415f', '[\"*\"]', '2023-11-08 10:09:39', '2023-11-08 10:09:39', '2023-11-08 10:09:39', NULL),
(1663, 'App\\Models\\User', 9, 'upnnJnPJ', '4ce0fd1bd0167ede75f0013661d369ab1e5626a323b07f64ae947ddcaf5750b5', '[\"*\"]', '2023-11-08 10:09:42', '2023-11-08 10:09:39', '2023-11-08 10:09:42', NULL),
(1664, 'App\\Models\\User', 9, 'Xsfki16F', 'cc63d020960b95b157ff02abd17e66854fec17b74f28778334dad165e616c2fa', '[\"*\"]', NULL, '2023-11-08 10:09:50', '2023-11-08 10:09:50', NULL),
(1665, 'App\\Models\\User', 9, 'ylzwuC8p', 'bb22f524976b77756bcb6b54b72bbc8517b5d6c9f71966a2415daad79daebf31', '[\"*\"]', '2023-11-08 10:10:19', '2023-11-08 10:09:50', '2023-11-08 10:10:19', NULL),
(1666, 'App\\Models\\User', 9, '3sgBUvgy', '5f3aed2c81d8dbcc24dfc4b2b1cbdda5a866a27f1508c484dda261850ab4cc2b', '[\"*\"]', '2023-11-08 10:10:36', '2023-11-08 10:10:35', '2023-11-08 10:10:36', NULL),
(1667, 'App\\Models\\User', 9, 'ExMf6Nya', '54ce1a4125ca0cc0f87c1cfb8b2749a4cd7731fd4acf001f459ca4cb984688d0', '[\"*\"]', '2023-11-08 10:16:41', '2023-11-08 10:10:35', '2023-11-08 10:16:41', NULL),
(1668, 'App\\Models\\User', 9, 'jK2BXima', '76d114737b96a47c5232501ae06b8b020197ebdb7140dade2ef9f6e520c964e5', '[\"*\"]', NULL, '2023-11-08 10:16:57', '2023-11-08 10:16:57', NULL),
(1669, 'App\\Models\\User', 9, 'J41QiPfi', 'f248e2ab170f4339394ce8653f8144639dfc9de94cae9a7d269245a3ea06e40b', '[\"*\"]', '2023-11-08 10:21:13', '2023-11-08 10:16:57', '2023-11-08 10:21:13', NULL),
(1670, 'App\\Models\\User', 9, 'UJynptC8', '0a72bfe02be6a6432b2e86020912e9b22833969f0ddde50e4ab312d223b46d76', '[\"*\"]', '2023-11-08 10:21:26', '2023-11-08 10:21:25', '2023-11-08 10:21:26', NULL),
(1671, 'App\\Models\\User', 9, 'SlC1YCHj', 'ae117f75af9cbbdba5811d2644f5a90c5dccde7cc79e8cc0537fe961ca3eb7c5', '[\"*\"]', '2023-11-08 10:21:27', '2023-11-08 10:21:25', '2023-11-08 10:21:27', NULL),
(1672, 'App\\Models\\User', 9, '47xDKLNB', '135096f9662ba449f502ac77095edf5564b839dba18dc587f3e089d9e6cc3aa0', '[\"*\"]', '2023-11-08 10:21:42', '2023-11-08 10:21:42', '2023-11-08 10:21:42', NULL),
(1673, 'App\\Models\\User', 9, 'QTMwyWew', '3f16b49a36b6aceaeac289c7a6ab302c0777af80ee4c60e32517833ea0970dd2', '[\"*\"]', '2023-11-08 10:22:03', '2023-11-08 10:21:42', '2023-11-08 10:22:03', NULL),
(1674, 'App\\Models\\User', 9, 'SYnyIqV8', '759cf25b53beed05b36237b6a29cb8d54b0c83b51691edeccb3d3b82739c03f8', '[\"*\"]', '2023-11-08 10:22:10', '2023-11-08 10:22:09', '2023-11-08 10:22:10', NULL),
(1675, 'App\\Models\\User', 9, 'pN3dG5Ds', '9889d3252e4b7561613d21e53640a9f918df0f45837e9c75f19dc04d1e50ee04', '[\"*\"]', '2023-11-08 10:24:58', '2023-11-08 10:22:09', '2023-11-08 10:24:58', NULL),
(1676, 'App\\Models\\User', 9, 'VHQkWdkr', '2afdf9c9fa67918eb26d6ef055b7600009d8668897fb8ea90f09c101d1c42842', '[\"*\"]', '2023-11-08 10:25:09', '2023-11-08 10:25:08', '2023-11-08 10:25:09', NULL),
(1677, 'App\\Models\\User', 9, 'miwhAHJD', 'bb4d6d8bfa7b487017119936b138dd1f38ce920dcbe16e7a85f28f7668ed0b29', '[\"*\"]', '2023-11-08 10:26:52', '2023-11-08 10:25:08', '2023-11-08 10:26:52', NULL),
(1678, 'App\\Models\\User', 9, 'TDkogJKP', 'e33e0050dff817e374e9f7f3926213ccc349247cfce52e02582b691dbcbe67ad', '[\"*\"]', '2023-11-08 10:27:10', '2023-11-08 10:27:09', '2023-11-08 10:27:10', NULL),
(1679, 'App\\Models\\User', 9, 'kitA6S4v', 'b0392cb561390a4034a4bd28fc3812e040afadb52520a9f336cda3b27173530d', '[\"*\"]', '2023-11-08 10:27:52', '2023-11-08 10:27:09', '2023-11-08 10:27:52', NULL),
(1680, 'App\\Models\\User', 9, 'ZadQZzyB', 'a7230b19a2a8e011f421a664661cc67d4445137f8f88cf66b17358efc6095b97', '[\"*\"]', NULL, '2023-11-08 10:27:09', '2023-11-08 10:27:09', NULL),
(1681, 'App\\Models\\User', 9, 'Bxgksx8b', '71ae34c14d85601e2bb96be45757a16c0551dcb1a561022920fc452cde4f76b9', '[\"*\"]', NULL, '2023-11-08 10:27:10', '2023-11-08 10:27:10', NULL),
(1682, 'App\\Models\\User', 9, 'WatsguFc', '974b8507261bba6db24efbaad47f1551169b5df20e919174fdcda687061ed247', '[\"*\"]', NULL, '2023-11-08 10:28:16', '2023-11-08 10:28:16', NULL),
(1683, 'App\\Models\\User', 9, 'XLUuXkua', '2a8b0f45d76b44cc3975d3e0aee7df6fd90cdb69532cc5bc11cce6127267ba75', '[\"*\"]', '2023-11-08 10:29:29', '2023-11-08 10:28:16', '2023-11-08 10:29:29', NULL),
(1684, 'App\\Models\\User', 9, 'jekJchOZ', '71d0289ca1c5f05bec828f0d4ff2a3094f95cc7a09b2e5d6a861f6351188101b', '[\"*\"]', NULL, '2023-11-08 10:28:17', '2023-11-08 10:28:17', NULL),
(1685, 'App\\Models\\User', 9, 'b9Xf79K1', 'ef9ca53b69eb2c5ae83568450c71352a32688a5b65cbc218a6df0ae44de24d52', '[\"*\"]', '2023-11-08 10:29:49', '2023-11-08 10:29:47', '2023-11-08 10:29:49', NULL),
(1686, 'App\\Models\\User', 9, 'TMRSWnXY', 'e21aa0a6c615a6efb126dd3caeeedd1b7523724771e6b01587a80b3e33f326ee', '[\"*\"]', '2023-11-08 10:33:38', '2023-11-08 10:29:48', '2023-11-08 10:33:38', NULL),
(1687, 'App\\Models\\User', 4, 'lLmdasrm', '054423232254bd5fa7eda2b983834d3c1d3d5204d0ef70d87d75fa172cfec674', '[\"*\"]', '2023-11-08 10:32:49', '2023-11-08 10:31:50', '2023-11-08 10:32:49', NULL),
(1688, 'App\\Models\\User', 9, '16d8l3NR', '038468ba049810fd65609a23e0781dc43b1770a6b29a563358ebf11022750d01', '[\"*\"]', '2023-11-08 10:33:51', '2023-11-08 10:33:50', '2023-11-08 10:33:51', NULL),
(1689, 'App\\Models\\User', 9, 'gJR4PxVS', 'c91efe3f59631c8240bbd9eef8f4ae72b3b1774d712d6e9a5750e596c836e806', '[\"*\"]', '2023-11-08 10:46:27', '2023-11-08 10:33:50', '2023-11-08 10:46:27', NULL),
(1690, 'App\\Models\\User', 9, 'Wk9PFVcz', '370c16159c7196e5715577972a0d8943c7cfc83d60f77c0b313d9546b7553693', '[\"*\"]', '2023-11-08 10:46:45', '2023-11-08 10:46:41', '2023-11-08 10:46:45', NULL),
(1691, 'App\\Models\\User', 9, 'lyGLIvx9', '418ea36ba6ebcd20b669d711e5ecb15fca9fcd96f67f808891ce05c4112ec50e', '[\"*\"]', NULL, '2023-11-08 10:46:41', '2023-11-08 10:46:41', NULL),
(1692, 'App\\Models\\User', 9, 'Xa9577q6', 'fe5ed5ae78fa992d045a67a1011d520c89c60d2af0a5083ce6f866ccfc3e3d06', '[\"*\"]', '2023-11-08 10:46:46', '2023-11-08 10:46:45', '2023-11-08 10:46:46', NULL),
(1693, 'App\\Models\\User', 9, 'myMGFn8l', 'e12aab07a15e0269d634b1d1d1234a73c58722eae1ea2c48bdb9de9252dd99e4', '[\"*\"]', '2023-11-08 10:46:50', '2023-11-08 10:46:50', '2023-11-08 10:46:50', NULL),
(1694, 'App\\Models\\User', 9, '4NHr2wqk', 'f1868d94a3e3c97dec15e583ebf6d6f8a455e2d00f1cdaab565f83792aaaf27a', '[\"*\"]', '2023-11-08 10:48:08', '2023-11-08 10:46:50', '2023-11-08 10:48:08', NULL),
(1695, 'App\\Models\\User', 9, 'vbgMyUXM', '4895c0f5b458e396d5a9680b99bd00c9edd509f4c4b79456037d0e9aac6b5f90', '[\"*\"]', '2023-11-08 10:48:57', '2023-11-08 10:48:08', '2023-11-08 10:48:57', NULL),
(1696, 'App\\Models\\User', 9, 'fVqo4tbs', '12fd8e6c5ceea185a33931dd4ac5673db7e49a7d3aeebc95d11f49bd333b9212', '[\"*\"]', '2023-11-08 10:49:29', '2023-11-08 10:48:58', '2023-11-08 10:49:29', NULL),
(1697, 'App\\Models\\User', 9, 'reYbZuXc', '0c907ac85a3a916b80a226aec2658667bf9306cc3aec24d833c7a061616dff67', '[\"*\"]', NULL, '2023-11-08 10:49:59', '2023-11-08 10:49:59', NULL),
(1698, 'App\\Models\\User', 9, 'xGjMZqEN', '6d936e6ab7c1de3522133dba6cfc9cc112da5ca75e20e2b060a13824665c582e', '[\"*\"]', '2023-11-08 10:50:10', '2023-11-08 10:49:59', '2023-11-08 10:50:10', NULL),
(1699, 'App\\Models\\User', 9, 'EfKG3e6i', '1e28716bcc7320d17b29b43faa24e4c64cf0dd74e6097b206daeada51c0cc0e1', '[\"*\"]', '2023-11-08 10:50:19', '2023-11-08 10:50:18', '2023-11-08 10:50:19', NULL),
(1700, 'App\\Models\\User', 9, 'kDauE1yY', 'df1f889d4cc7014df9e1b2ded88d186e2b1b8166c5a45862b843e5ea7a162b4d', '[\"*\"]', '2023-11-08 10:52:19', '2023-11-08 10:50:18', '2023-11-08 10:52:19', NULL),
(1701, 'App\\Models\\User', 9, 'NlfViyJr', '6274bbe3ab6dd72dd58015836fc3795b746b8d3e87ce985b44b7af8f3dbbdcba', '[\"*\"]', NULL, '2023-11-08 10:54:56', '2023-11-08 10:54:56', NULL),
(1702, 'App\\Models\\User', 9, 'ctE055rJ', 'f4cbd77b1928ce4306b2aa7706c26d1e631f1778e2c2695c8fb165ed6f926fe6', '[\"*\"]', '2023-11-08 10:58:22', '2023-11-08 10:54:56', '2023-11-08 10:58:22', NULL),
(1703, 'App\\Models\\User', 9, 'hvoJi3XI', '9caf4b78fd273ae4e3c456c1dab0e5860a27f4149c2290c7a01107546276f559', '[\"*\"]', '2023-11-08 10:58:30', '2023-11-08 10:58:29', '2023-11-08 10:58:30', NULL),
(1704, 'App\\Models\\User', 9, 'VumK5rmd', '22f94f6851be3988ee8e00b06cf41531988885cceed61804039812ae5b794938', '[\"*\"]', '2023-11-08 10:58:50', '2023-11-08 10:58:29', '2023-11-08 10:58:50', NULL),
(1705, 'App\\Models\\User', 9, 'dM2mDBl5', '23817cd3c5752b7f003f60f9299d94807a10152b0626ba577d9e9743d3232de4', '[\"*\"]', '2023-11-08 10:59:04', '2023-11-08 10:59:03', '2023-11-08 10:59:04', NULL),
(1706, 'App\\Models\\User', 9, 'jS5XyXwH', '531580247ae69e3f1fe9977900bd3faf2d2ddc102cca2c0dd557eaa466645b19', '[\"*\"]', '2023-11-08 11:00:31', '2023-11-08 10:59:03', '2023-11-08 11:00:31', NULL),
(1707, 'App\\Models\\User', 9, 'TJWb2mVj', 'a1434d2e84d0e0782251ccf1a904e7622e83e5491100eb0994526a4a83fae1bc', '[\"*\"]', '2023-11-08 11:00:38', '2023-11-08 11:00:37', '2023-11-08 11:00:38', NULL),
(1708, 'App\\Models\\User', 9, 'O5oubzqg', '38ea4c533c1f04bdcf07f843bd19712776b2b8bb44e7317ce044b11d642ae5b0', '[\"*\"]', '2023-11-08 11:01:52', '2023-11-08 11:00:37', '2023-11-08 11:01:52', NULL),
(1709, 'App\\Models\\User', 9, 'gN5tkfm2', '33e7b494deeb2df4baf00e0e521fe73c2a5b7dd1161b09c374ad77f60120ffb9', '[\"*\"]', '2023-11-08 11:02:06', '2023-11-08 11:02:05', '2023-11-08 11:02:06', NULL),
(1710, 'App\\Models\\User', 9, 'sLdkN9md', 'a9369813b2c7c555defc17bb5f68bd2f2e2691833a987ee98ab39cd46dac12be', '[\"*\"]', '2023-11-08 11:02:25', '2023-11-08 11:02:05', '2023-11-08 11:02:25', NULL),
(1711, 'App\\Models\\User', 9, 'mGwRy4yY', 'a23ae3679a3711f7ce9c0995d275577cb4bb495bb51b830a612d796e8c80c9ff', '[\"*\"]', '2023-11-08 11:02:32', '2023-11-08 11:02:32', '2023-11-08 11:02:32', NULL),
(1712, 'App\\Models\\User', 9, '00RAbCR5', '106c6feb36b5c142a37e0a0d6ac56b28c6708e2ec81446fa7a8310e5e46ed277', '[\"*\"]', '2023-11-08 11:03:44', '2023-11-08 11:02:32', '2023-11-08 11:03:44', NULL),
(1713, 'App\\Models\\User', 9, 'aXh4dm0k', '074f97237a46d082074428e217c444c7f9dba1260fd722cbf75cd0c2f38136e8', '[\"*\"]', '2023-11-08 11:03:54', '2023-11-08 11:03:53', '2023-11-08 11:03:54', NULL),
(1714, 'App\\Models\\User', 9, 'TYYNqz80', 'b66b04ddb07fe8a5101f0db33db0341502d9310e192bbda937df8325ed255ae4', '[\"*\"]', '2023-11-08 11:18:36', '2023-11-08 11:03:53', '2023-11-08 11:18:36', NULL),
(1715, 'App\\Models\\User', 9, 'lYpQ3Wy6', '775458b73a45c699f2ecc42d514ed99c1c8c1334b7597ec2c7eb2882cc48f319', '[\"*\"]', NULL, '2023-11-08 11:19:08', '2023-11-08 11:19:08', NULL),
(1716, 'App\\Models\\User', 9, 'YdHmxjXC', 'cb4015ce277bbcf1a3591246b6da099d9871da5eeedab46fcf5e2d150358a792', '[\"*\"]', '2023-11-08 11:19:10', '2023-11-08 11:19:08', '2023-11-08 11:19:10', NULL),
(1717, 'App\\Models\\User', 9, 'RXAyJPlc', '93554fd1260d819e7d4cbe6f9daeb7d2a8b8df2c9c5f683bbdc33a9f1672ed18', '[\"*\"]', '2023-11-08 11:19:19', '2023-11-08 11:19:18', '2023-11-08 11:19:19', NULL),
(1718, 'App\\Models\\User', 9, 'RDOoxaMR', 'd9a79e549e884fd5ce6caa4e28ceb767e25f8e00428b964bf2fe3775c5a5c54d', '[\"*\"]', '2023-11-08 11:22:32', '2023-11-08 11:19:18', '2023-11-08 11:22:32', NULL),
(1719, 'App\\Models\\User', 9, 'uOFj6PwS', 'cfdc8fc21c53d6a7074b3a783d62cc3afe843a889c83b525f7f0e51715ab60eb', '[\"*\"]', '2023-11-08 11:22:44', '2023-11-08 11:22:43', '2023-11-08 11:22:44', NULL),
(1720, 'App\\Models\\User', 9, 'CWsIGRbr', 'dbeef5a012e8373ef4ba80f75dd7170625e05862183a0b82836c0c74eb0c09b1', '[\"*\"]', '2023-11-08 11:26:00', '2023-11-08 11:22:43', '2023-11-08 11:26:00', NULL),
(1721, 'App\\Models\\User', 9, 'XUqCZVzn', '07e21628b73a9cb02094991be7b155d1918ddf825389531c31875b311997b3b6', '[\"*\"]', '2023-11-08 11:26:10', '2023-11-08 11:26:10', '2023-11-08 11:26:10', NULL),
(1722, 'App\\Models\\User', 9, 'qNKoc4LO', 'd1438795ca28f84f96cc9a1c294c95e7f10ea386af3ebd2524fa9626d0c40321', '[\"*\"]', '2023-11-08 11:27:40', '2023-11-08 11:26:10', '2023-11-08 11:27:40', NULL),
(1723, 'App\\Models\\User', 9, 'CtEXAnSd', 'a28bb8c3524f2a2228a6f99867a0df8fdfc060f68ab7cc571cb11888dfa694aa', '[\"*\"]', '2023-11-08 11:29:27', '2023-11-08 11:29:26', '2023-11-08 11:29:27', NULL),
(1724, 'App\\Models\\User', 9, 'cfFTWXM2', '0714c2856a3d15bfc920ec725968ec75888dd56c9ab365f1d6493fb77d0c09db', '[\"*\"]', '2023-11-08 11:35:47', '2023-11-08 11:29:26', '2023-11-08 11:35:47', NULL),
(1725, 'App\\Models\\User', 9, 'iHRZf7Jm', '41ed670c135d15997c8ecab38130bfa8d00b14355ba8fd4215d1dce40bd65204', '[\"*\"]', '2023-11-08 11:35:57', '2023-11-08 11:35:56', '2023-11-08 11:35:57', NULL),
(1726, 'App\\Models\\User', 9, 'acmqiQZO', '64877ef486fd91eb3c46641327aec3c40eb9fe4bfc1de5aa010823b71146ae1c', '[\"*\"]', '2023-11-08 11:38:26', '2023-11-08 11:35:56', '2023-11-08 11:38:26', NULL),
(1727, 'App\\Models\\User', 9, 's5syw2HJ', '42c7a04d648a5d082a45db1c36cb45cc2091b8e6ae004e6a81189dcf8ba42d8f', '[\"*\"]', NULL, '2023-11-08 11:40:47', '2023-11-08 11:40:47', NULL),
(1728, 'App\\Models\\User', 9, 'MY1Mbask', 'a30584b49d8f2d55d9bdd6126bcfe5d912ece134ef3ad9d32c5c3226845a0d60', '[\"*\"]', '2023-11-08 11:41:28', '2023-11-08 11:40:47', '2023-11-08 11:41:28', NULL),
(1729, 'App\\Models\\User', 9, 'kYtGx7ji', 'd9b4ec897a6e848a5a46a76fad8ba91d4fb3c45c4db6f4f3fa0c300ae35f964c', '[\"*\"]', NULL, '2023-11-08 11:41:42', '2023-11-08 11:41:42', NULL),
(1730, 'App\\Models\\User', 9, 'Qxe3ekrU', '4731f6d952be84df8450e443d54733ecc6b275c1ca77cefc3e24c13e181ec2d7', '[\"*\"]', '2023-11-08 11:41:53', '2023-11-08 11:41:42', '2023-11-08 11:41:53', NULL),
(1731, 'App\\Models\\User', 9, 'RPHUeswJ', '510da9c7a72dc9ab114748db4caa880390656a69f347c1792d1dc39ed53607c4', '[\"*\"]', '2023-11-08 11:42:03', '2023-11-08 11:42:02', '2023-11-08 11:42:03', NULL),
(1732, 'App\\Models\\User', 9, 'xX6sa1MU', '7b3b511d36f95421622d6537b7ab0b539676b08ca0c034de4a0aa77658a04ecb', '[\"*\"]', '2023-11-08 11:42:51', '2023-11-08 11:42:02', '2023-11-08 11:42:51', NULL),
(1733, 'App\\Models\\User', 9, 'wFjg5fBv', '958cea849d274524f0737bcc15f55d4f72821657cb4b454a40d092cd5303ac89', '[\"*\"]', '2023-11-08 11:43:01', '2023-11-08 11:43:00', '2023-11-08 11:43:01', NULL),
(1734, 'App\\Models\\User', 9, 'dAkFifAl', 'a76ebdd838a4f2395681c608cddd82b7fb3676642e0db878fb8cc4886c999b1a', '[\"*\"]', '2023-11-08 11:47:27', '2023-11-08 11:43:00', '2023-11-08 11:47:27', NULL),
(1735, 'App\\Models\\User', 4, 'wtFDQ2t2', 'dc0de60871a92de145144ac0a3698e37c25e57214bdce926f847d71a79dbe299', '[\"*\"]', '2023-11-08 13:50:34', '2023-11-08 11:45:52', '2023-11-08 13:50:34', NULL),
(1736, 'App\\Models\\User', 9, 'azfekyst', 'c827a4b74ebad6a7265b887892d2338ce3866afb4eaeb42e29e86a7f1ffa9cc5', '[\"*\"]', NULL, '2023-11-08 11:47:36', '2023-11-08 11:47:36', NULL),
(1737, 'App\\Models\\User', 9, '5wHIUifk', 'a474ab6b9b9bfab7e81dc3924a49e276df48b2a240e6aaa0e7e4f3556d50f683', '[\"*\"]', '2023-11-08 11:48:50', '2023-11-08 11:47:36', '2023-11-08 11:48:50', NULL),
(1738, 'App\\Models\\User', 9, 'wSaurBNX', '6f0eb09bf9687683390da9cb08e5ee70378ccbe4467d7b3d83ac780e23589168', '[\"*\"]', NULL, '2023-11-08 11:49:15', '2023-11-08 11:49:15', NULL),
(1739, 'App\\Models\\User', 9, 'eUvmN2ON', 'edfe17193dc2e2f2adc131a82ab98600d26400a8ad16d7045465be1f2030de15', '[\"*\"]', '2023-11-08 11:53:10', '2023-11-08 11:49:15', '2023-11-08 11:53:10', NULL),
(1740, 'App\\Models\\User', 9, '3tcuL2Wv', 'e4d4ee8115bd3a4375c16353c106ec776184067e01b4b0f3bcec1395d44e9d7a', '[\"*\"]', NULL, '2023-11-08 12:02:05', '2023-11-08 12:02:05', NULL),
(1741, 'App\\Models\\User', 9, 'cpQl17Rn', 'cf8b0da54cec8a2cefe872ff2c67801da62fc55ac872102fc710f99a423cb4ee', '[\"*\"]', '2023-11-08 12:02:07', '2023-11-08 12:02:05', '2023-11-08 12:02:07', NULL),
(1742, 'App\\Models\\User', 9, 'bvfiPmLx', 'd0788ad2074f8a9264448ff23b550cec9d4ab9b6f3346322cfda9403a3b985b4', '[\"*\"]', NULL, '2023-11-08 12:07:15', '2023-11-08 12:07:15', NULL),
(1743, 'App\\Models\\User', 9, '97KDt5GB', '7cc1634237db47d6f20e43c6d9d8f50374ef1accbeceaec4d111e405519755a0', '[\"*\"]', '2023-11-08 12:07:16', '2023-11-08 12:07:15', '2023-11-08 12:07:16', NULL),
(1744, 'App\\Models\\User', 9, 'roJ7tW1y', '9c15821480bb66c120c46b4080e4442205b0f4d786ad3a37b3fc7fd8da21e6de', '[\"*\"]', '2023-11-08 12:16:06', '2023-11-08 12:16:05', '2023-11-08 12:16:06', NULL),
(1745, 'App\\Models\\User', 9, '09JZLhxl', '0f1a1e33af803f1c530039166094683fbaaeb180b638a1bf6fd11cf299ccd444', '[\"*\"]', '2023-11-08 12:17:46', '2023-11-08 12:16:05', '2023-11-08 12:17:46', NULL),
(1746, 'App\\Models\\User', 9, 'X4qjrtM9', 'a1a5b28e6067b6fbbe0e2caf00c59ab76d07ffbac0f7a8d52059175bb9fed136', '[\"*\"]', '2023-11-08 12:18:09', '2023-11-08 12:18:08', '2023-11-08 12:18:09', NULL),
(1747, 'App\\Models\\User', 9, 'cgrkdRRp', 'efe149a90fd8323fa569d760495c80fdcad23ce16f499516aed045a36894bd77', '[\"*\"]', '2023-11-08 12:18:28', '2023-11-08 12:18:08', '2023-11-08 12:18:28', NULL),
(1748, 'App\\Models\\User', 9, 'WYDmCXjx', 'fbe75771d1d951d641215210efaa2a09881d4b15eb651ccaeed18f84a2fa50f6', '[\"*\"]', '2023-11-08 12:18:35', '2023-11-08 12:18:34', '2023-11-08 12:18:35', NULL),
(1749, 'App\\Models\\User', 9, 'Xdn1e0QN', '7060fae8c5f29cb99c3b71ab6f23f3d50bacfa2f0c6c7dff4a487fba43bda580', '[\"*\"]', '2023-11-08 12:29:06', '2023-11-08 12:18:34', '2023-11-08 12:29:06', NULL),
(1750, 'App\\Models\\User', 9, '8BkbQay2', '0c03ec7ea8c769161b632f50b1b8933b356ed1d2f126bfb0b842c6fd79fd797f', '[\"*\"]', '2023-11-08 12:43:15', '2023-11-08 12:43:15', '2023-11-08 12:43:15', NULL),
(1751, 'App\\Models\\User', 9, 'ZD41HSH1', '87849a694325c28b632215110af7fc6bd32fb3e08478f0c4ca0adfc6137b5722', '[\"*\"]', '2023-11-08 12:55:15', '2023-11-08 12:43:15', '2023-11-08 12:55:15', NULL),
(1752, 'App\\Models\\User', 9, 'UqpObrrS', '0772738a49567afcf93f34cd0f0c513f43d417018f342123b19bb58b48a824ea', '[\"*\"]', NULL, '2023-11-08 12:55:32', '2023-11-08 12:55:32', NULL),
(1753, 'App\\Models\\User', 9, 'kLJJJ71o', '6a715c85a3bb642dc331a1d17c184199162e479282114bb8ed5bb7fcd3d6b32e', '[\"*\"]', '2023-11-08 12:55:42', '2023-11-08 12:55:32', '2023-11-08 12:55:42', NULL),
(1754, 'App\\Models\\User', 9, 'TU9IgQVz', '12f45961e03470ee33ff48de300006713cd8990c4cd3c3e0a01515a1edf3edd3', '[\"*\"]', NULL, '2023-11-08 12:55:52', '2023-11-08 12:55:52', NULL),
(1755, 'App\\Models\\User', 9, 'RrDEX1SY', '7ee337f58e64de5ea634d1cb4ff8af8a4d5018102a5e27ad44eda51c70d7f5f0', '[\"*\"]', '2023-11-08 12:57:52', '2023-11-08 12:55:52', '2023-11-08 12:57:52', NULL),
(1756, 'App\\Models\\User', 9, '20J3ZJne', '1edaf74beec89fcc930d11545a5649c68a1515f03182a07097350d1d831c5429', '[\"*\"]', NULL, '2023-11-08 12:58:09', '2023-11-08 12:58:09', NULL),
(1757, 'App\\Models\\User', 9, '8jsl9s4j', 'bc2b91601da09102ad31aef41fdbbba3b0ec1abed48a3b5d67ce644ffd1ba40c', '[\"*\"]', '2023-11-08 12:58:10', '2023-11-08 12:58:09', '2023-11-08 12:58:10', NULL),
(1758, 'App\\Models\\User', 9, 'Q6YCHXMf', '364effd4a312fa8042b21b587b683550f2b0f86aeaa63b5315996cfdafecded2', '[\"*\"]', NULL, '2023-11-08 12:58:50', '2023-11-08 12:58:50', NULL),
(1759, 'App\\Models\\User', 9, 'SWjpNaF5', '1bfa1c319063ba2b7f6629e77671d90c1bc5137c4e9dd7032a44cc55403c75eb', '[\"*\"]', '2023-11-08 12:58:51', '2023-11-08 12:58:50', '2023-11-08 12:58:51', NULL),
(1760, 'App\\Models\\User', 9, '73aw18O9', '94e1c01b66ab839783dae143aba56fa92e14d39cb29ce1ec646b8b6c7e701e47', '[\"*\"]', '2023-11-08 12:59:00', '2023-11-08 12:58:59', '2023-11-08 12:59:00', NULL),
(1761, 'App\\Models\\User', 9, 'b1L7KBLz', 'ef39cbde836e0203755ec8893e9cce8cb10b357aea11628e9d46d9127091ec67', '[\"*\"]', '2023-11-08 12:59:20', '2023-11-08 12:59:00', '2023-11-08 12:59:20', NULL),
(1762, 'App\\Models\\User', 9, '7DSbXAsM', 'd79d55cf96275788dc4df2501cdd43c20a9809d70af40f9f85ecceb8c87c74aa', '[\"*\"]', '2023-11-08 12:59:32', '2023-11-08 12:59:32', '2023-11-08 12:59:32', NULL),
(1763, 'App\\Models\\User', 9, '8ymZKEeV', '204d75739686af914d3026d8be76ba679caea564eee879f3e6b6a5dc1520f7a4', '[\"*\"]', '2023-11-08 12:59:33', '2023-11-08 12:59:32', '2023-11-08 12:59:33', NULL),
(1764, 'App\\Models\\User', 9, 'ieUpLvSE', '0f6b1a3d4c7400522da8a644e5ef51a0340c213f66def9f3173b4c84b51d104b', '[\"*\"]', NULL, '2023-11-08 12:59:41', '2023-11-08 12:59:41', NULL),
(1765, 'App\\Models\\User', 9, 'aLrnPLyF', '7d7e6039ef5e79e1e618f046292b0426079d1636f54aaeb6b4476c5e8a65ef0a', '[\"*\"]', '2023-11-08 13:00:02', '2023-11-08 12:59:41', '2023-11-08 13:00:02', NULL),
(1766, 'App\\Models\\User', 9, 'JgYy6fVS', 'ad4186fc7ede025bfc16c1277c2e869df2132fa77adabf564a0ab0f7c036e475', '[\"*\"]', NULL, '2023-11-08 13:00:09', '2023-11-08 13:00:09', NULL),
(1767, 'App\\Models\\User', 9, 'c7Kofnei', '3251eaa21987400758144952b54a0dce5dd48c900ea77b1efd69d2a3d1675e84', '[\"*\"]', '2023-11-08 13:01:21', '2023-11-08 13:00:09', '2023-11-08 13:01:21', NULL),
(1768, 'App\\Models\\User', 9, 'hJH8JJon', '3b58078698ada6fcf796e09a35d95e4ae83f85811c7d2fc8fafc3e3e35272d25', '[\"*\"]', NULL, '2023-11-08 13:01:33', '2023-11-08 13:01:33', NULL),
(1769, 'App\\Models\\User', 9, 'UFtXesSQ', '81742322e85fb67c95100b7f2e0259eceea6d4ddd3f707a1492b367733d20605', '[\"*\"]', '2023-11-08 13:01:34', '2023-11-08 13:01:33', '2023-11-08 13:01:34', NULL),
(1770, 'App\\Models\\User', 9, 'ps5B86Wu', 'e0304b1e8fb3b34d695df8fd2a219e79635a33ea45621c05cea455a0cdfc6424', '[\"*\"]', '2023-11-08 13:01:41', '2023-11-08 13:01:40', '2023-11-08 13:01:41', NULL),
(1771, 'App\\Models\\User', 9, '5cV5k3gm', '4c8c05d35f525d325df3418b8b35c5c83bc7cc22377a056f8594a6e4ff9a879e', '[\"*\"]', '2023-11-08 13:03:31', '2023-11-08 13:01:40', '2023-11-08 13:03:31', NULL),
(1772, 'App\\Models\\User', 9, 'oei3DI7I', '4aa3e6351e9fa515a34808954b8d7cb16f3d53b76aec7c0afdf53c5dce809ffe', '[\"*\"]', NULL, '2023-11-08 13:05:35', '2023-11-08 13:05:35', NULL),
(1773, 'App\\Models\\User', 9, 'UKwXxudV', 'f8acd3528e183251c6add740e2acea6a6f37884c4e95bbeded9cd2e5a42e7f7a', '[\"*\"]', '2023-11-08 13:05:37', '2023-11-08 13:05:35', '2023-11-08 13:05:37', NULL),
(1774, 'App\\Models\\User', 9, '7aEEyhA6', '0d06e73e592d1dcddb9df30fa74bf556d4ea3126f95c5726c8a5bccf29924be8', '[\"*\"]', NULL, '2023-11-08 13:08:45', '2023-11-08 13:08:45', NULL),
(1775, 'App\\Models\\User', 9, 'eK8Xy6LI', 'c10bdb1c32bb5a04e6d3888fcf2905e6b9113a1775761910bc720b9caf70515a', '[\"*\"]', '2023-11-08 13:14:16', '2023-11-08 13:08:45', '2023-11-08 13:14:16', NULL),
(1776, 'App\\Models\\User', 9, 'j3TiAzJk', 'b87e5932f689fdddf788a5a4a28663813d7ea7eb8bb86631df6a6db3a93b1173', '[\"*\"]', '2023-11-08 13:14:23', '2023-11-08 13:14:22', '2023-11-08 13:14:23', NULL),
(1777, 'App\\Models\\User', 9, 'ZlUNhodA', '395137a6c8889bd371413f8e3d395a36ffdd5ac46b643f8488527bd0d0e6cdf4', '[\"*\"]', '2023-11-08 13:16:33', '2023-11-08 13:14:22', '2023-11-08 13:16:33', NULL),
(1778, 'App\\Models\\User', 9, 'Q6ej8kpq', '19d3a1eb45cdd0bc51bbf9dcd07713cbb63c9cb84815f61a5ac88bc13a6f2a21', '[\"*\"]', NULL, '2023-11-08 13:16:50', '2023-11-08 13:16:50', NULL),
(1779, 'App\\Models\\User', 9, 'yg1DxFGN', '76f3708995e91582493082312229fa9f327ab476b5a00c948255a09ba1e2ec1b', '[\"*\"]', '2023-11-08 13:19:16', '2023-11-08 13:16:50', '2023-11-08 13:19:16', NULL),
(1780, 'App\\Models\\User', 9, 'RR5LciGP', '68b5d43e4c850d64da4a7eae2d24e0ae8d4859f1541aa61c524e5814351f9f5c', '[\"*\"]', NULL, '2023-11-08 13:19:34', '2023-11-08 13:19:34', NULL),
(1781, 'App\\Models\\User', 9, 'cXWUxNj9', 'bf59e2976755741d3d6f2c92e08a2a05a4d9443568d89df634ae1a70340b6726', '[\"*\"]', '2023-11-08 13:30:10', '2023-11-08 13:19:34', '2023-11-08 13:30:10', NULL),
(1782, 'App\\Models\\User', 9, 'qAvg85VT', '4dec92aa37751f22887ae59eaa50f723e04317da202fd9e873cb0d68b8909f6e', '[\"*\"]', NULL, '2023-11-08 13:30:32', '2023-11-08 13:30:32', NULL),
(1783, 'App\\Models\\User', 9, 'IOcOiHty', 'e67f448a2873f4c4a86f47759524f02606519d21234c7f327b2279eb14ae4929', '[\"*\"]', '2023-11-08 13:30:36', '2023-11-08 13:30:32', '2023-11-08 13:30:36', NULL),
(1784, 'App\\Models\\User', 9, 'CpPLDFUG', '41ac747029a4143108260aaf0aa7de61594ae3983acff854073a6e0e524c4c48', '[\"*\"]', NULL, '2023-11-08 13:31:16', '2023-11-08 13:31:16', NULL),
(1785, 'App\\Models\\User', 9, 'Jz30va7V', '9d3a5221440121dfeeb86d7e38a0e9260f80f27be4b592b46b48e59ddf5aaaed', '[\"*\"]', '2023-11-08 13:36:32', '2023-11-08 13:31:16', '2023-11-08 13:36:32', NULL),
(1786, 'App\\Models\\User', 9, 'FjRqdHC1', '2fabdba6d7e2e06c317d77135773b27bbb265988b98d526efbae7a22f895cccd', '[\"*\"]', NULL, '2023-11-08 13:36:50', '2023-11-08 13:36:50', NULL),
(1787, 'App\\Models\\User', 9, 'luwN6Qfm', 'c931cf076549c8a0c52960ae3c3bb8001d6aa94d0e37e42328727bc1dad32e0c', '[\"*\"]', '2023-11-08 13:45:22', '2023-11-08 13:36:50', '2023-11-08 13:45:22', NULL),
(1788, 'App\\Models\\User', 9, 'lZEqZkeG', '3bcff45c4ea6203218575440f22badd95b3bd7a58213670699c727f57115a873', '[\"*\"]', '2023-11-08 13:45:42', '2023-11-08 13:45:40', '2023-11-08 13:45:42', NULL),
(1789, 'App\\Models\\User', 9, '7PUny6MA', 'd686cdd40d774b7ca7369e876a57744704aa8a911ca60b9ba8601e8d03128fe6', '[\"*\"]', '2023-11-08 14:14:26', '2023-11-08 13:45:40', '2023-11-08 14:14:26', NULL),
(1790, 'App\\Models\\User', 9, 'N53PS7Zi', '1584df066471ebe911c61d09292b6c281d45536544ac52f9706ae48cde6c0eda', '[\"*\"]', NULL, '2023-11-08 14:17:31', '2023-11-08 14:17:31', NULL),
(1791, 'App\\Models\\User', 9, 'vsG0Dlwz', '8f32ed232a238777072587c19f222d0b87a0c8b5aeb147fedaca92946450cca5', '[\"*\"]', '2023-11-08 14:18:23', '2023-11-08 14:17:31', '2023-11-08 14:18:23', NULL),
(1792, 'App\\Models\\User', 9, 'aGQQJXuM', '8aad2e829e645fb915ace7ab481fe6b49313d467ecde4d0e48faed68ebc3d209', '[\"*\"]', '2023-11-08 14:18:43', '2023-11-08 14:18:43', '2023-11-08 14:18:43', NULL),
(1793, 'App\\Models\\User', 9, 'L4J5Oyhq', '189bc1f395ad8c93855ab10e59dce2f88d6170b4a2f3813dcc3a00c9af709278', '[\"*\"]', '2023-11-08 14:22:43', '2023-11-08 14:18:43', '2023-11-08 14:22:43', NULL),
(1794, 'App\\Models\\User', 9, 'CrjHYhj7', '723f8f2633f04e859a87bed8bb573f5ae29c5de7868d2548fb4d397a416d2110', '[\"*\"]', NULL, '2023-11-08 14:24:20', '2023-11-08 14:24:20', NULL),
(1795, 'App\\Models\\User', 9, 'eyqdBMnt', 'c481d1f806e6eb05bbc3db6c31574dd98b8a655bdb103c91e3f2d744da239b91', '[\"*\"]', '2023-11-08 14:28:27', '2023-11-08 14:24:20', '2023-11-08 14:28:27', NULL),
(1796, 'App\\Models\\User', 9, 'HhKxQJqs', '024deabec16a552336088be2beb120e9e6c67bdf5edd52314f60944804839928', '[\"*\"]', NULL, '2023-11-08 14:28:29', '2023-11-08 14:28:29', NULL),
(1797, 'App\\Models\\User', 9, 'jFnKuLlb', 'ba70e723c38cd25dc7661ff6590422df9c52d408f56687fbe6d204f2853bc805', '[\"*\"]', '2023-11-08 14:28:51', '2023-11-08 14:28:29', '2023-11-08 14:28:51', NULL),
(1798, 'App\\Models\\User', 9, '8aOEI3WB', '41d5d4a1df64014a5a56a12bd2eb05d9cd65ab6bb1bdde838d50ecbb8e43e12e', '[\"*\"]', NULL, '2023-11-08 14:29:21', '2023-11-08 14:29:21', NULL),
(1799, 'App\\Models\\User', 9, 'YYnWVJx9', 'b1b03f8815ce6bfa6a996941a65e174c91736f20456cac8376e544886fa3be14', '[\"*\"]', '2023-11-08 14:35:43', '2023-11-08 14:29:21', '2023-11-08 14:35:43', NULL),
(1800, 'App\\Models\\User', 9, 'agky7JEL', '6f4e8770908103aed385a4c190a302b06b7af5ae47d9e4805abcf3bf5d42f583', '[\"*\"]', '2023-11-08 14:36:40', '2023-11-08 14:36:05', '2023-11-08 14:36:40', NULL),
(1801, 'App\\Models\\User', 9, '2AQYePZv', '5f685637e0ca85ad7345cbf2f17429e0098b8b830e0fc541ccd4e1542892170a', '[\"*\"]', '2023-11-08 14:37:25', '2023-11-08 14:36:05', '2023-11-08 14:37:25', NULL),
(1802, 'App\\Models\\User', 9, 'GPTRNSm3', 'f30cef90f4f12c2bc8786d05d23fb97947e4e5caeeca5f617570656049ec2cc2', '[\"*\"]', '2023-11-08 14:38:27', '2023-11-08 14:38:26', '2023-11-08 14:38:27', NULL),
(1803, 'App\\Models\\User', 9, 'F0XJib16', '1672ae25c65e99e4c7b18761c6c1cc3b12cafc406f14b1ccf226ac62efcddc86', '[\"*\"]', '2023-11-08 14:40:30', '2023-11-08 14:38:26', '2023-11-08 14:40:30', NULL),
(1804, 'App\\Models\\User', 9, '865EUpDh', '053df787b63819a363624de7bb3b8110c6a3e21b4ce011f2b1a01d13e9a93459', '[\"*\"]', NULL, '2023-11-08 14:40:45', '2023-11-08 14:40:45', NULL),
(1805, 'App\\Models\\User', 9, 'utth8ZZi', '3382fb99a1bea62cba0567c5891a23e86ed4444f00baea3835849b1c40af3028', '[\"*\"]', '2023-11-08 14:47:19', '2023-11-08 14:40:45', '2023-11-08 14:47:19', NULL),
(1806, 'App\\Models\\User', 4, '1Vs839XQ', '8e275c9363b8adb22519db9b43cfc228e1298973524496e0319f6f0af6f99d7d', '[\"*\"]', '2023-11-08 14:41:04', '2023-11-08 14:40:49', '2023-11-08 14:41:04', NULL),
(1807, 'App\\Models\\User', 9, 'Xr5dy6d9', '19b3fd5325e69d5414a93683d3d440864e042a426b5d1b5ae803fdf5da11c59e', '[\"*\"]', NULL, '2023-11-08 14:48:18', '2023-11-08 14:48:18', NULL),
(1808, 'App\\Models\\User', 9, 'AYlF252Z', 'c34245f6c82cd048c06a50588e7f80f42d0b9c7aedd53d8be95453b5dac1222a', '[\"*\"]', '2023-11-08 14:48:40', '2023-11-08 14:48:18', '2023-11-08 14:48:40', NULL),
(1809, 'App\\Models\\User', 9, 'aN5mghWs', '3c0e83db54df286d49dc81663562df60390fb5c17efc52b612fcc1c50bf26c79', '[\"*\"]', '2023-11-08 14:48:49', '2023-11-08 14:48:47', '2023-11-08 14:48:49', NULL),
(1810, 'App\\Models\\User', 9, 'N695VE1P', 'e4c6a2f94c7f86bd766f38b9f18f50d4d18562321ebb79bb0b8aee18cdf6f63e', '[\"*\"]', '2023-11-08 14:51:58', '2023-11-08 14:48:47', '2023-11-08 14:51:58', NULL),
(1811, 'App\\Models\\User', 9, 'uhDn7Vhn', 'e0dab9a742f325e2511b6c6238142e94092faa17ab254fa8a8bea8532fea9ec3', '[\"*\"]', '2023-11-08 14:53:44', '2023-11-08 14:53:43', '2023-11-08 14:53:44', NULL),
(1812, 'App\\Models\\User', 9, 'FHsH2332', '24c471e55d09f1ef341b824fd113b24f59f67c16502707847ce49e374b9bb333', '[\"*\"]', '2023-11-08 14:57:52', '2023-11-08 14:53:43', '2023-11-08 14:57:52', NULL),
(1813, 'App\\Models\\User', 9, '8KdHTPCa', 'c9e1db29b1f771ada56f23bb62386ccd74e981de88f0ebe1f0d38326960a28c3', '[\"*\"]', NULL, '2023-11-08 14:58:01', '2023-11-08 14:58:01', NULL),
(1814, 'App\\Models\\User', 9, 'kpwxSTzG', '94ca7cf7f169709df418320ccddb2eea14b8960759bcd7d8349d342ac8ba4eb6', '[\"*\"]', '2023-11-08 15:17:15', '2023-11-08 14:58:01', '2023-11-08 15:17:15', NULL),
(1815, 'App\\Models\\User', 9, 'lFp91EOk', '6a118e00ba3a44e77e905ed34581c04e7dda51ae632c7e81fa5ecf1a55313021', '[\"*\"]', NULL, '2023-11-08 15:17:25', '2023-11-08 15:17:25', NULL),
(1816, 'App\\Models\\User', 9, 'x42VcEOk', '2f8766edcff15b4c96bee63c08bc137771ef8e4843a3e42725a5da7bae7ff228', '[\"*\"]', '2023-11-08 15:17:35', '2023-11-08 15:17:25', '2023-11-08 15:17:35', NULL),
(1817, 'App\\Models\\User', 9, 'aP5dmQJN', '90fc29d664a513338f8292deffea55a6e0db1ee7ea2972cded8e1b983d5d2e83', '[\"*\"]', NULL, '2023-11-08 15:17:42', '2023-11-08 15:17:42', NULL),
(1818, 'App\\Models\\User', 9, 'RgvXI7id', 'c9f221cb403f36c324f0c8fb6ba8ab01730cb997c3eeb14b339fab0c4a6f0463', '[\"*\"]', '2023-11-08 15:21:56', '2023-11-08 15:17:42', '2023-11-08 15:21:56', NULL),
(1819, 'App\\Models\\User', 4, '8tTvE3hT', 'e0d9a9c723f066c0ef7358edd1f14f588fe0c4b6d400e4d04ca13c69b660cb4e', '[\"*\"]', '2023-11-08 17:43:35', '2023-11-08 17:43:32', '2023-11-08 17:43:35', NULL),
(1820, 'App\\Models\\User', 14, 'NobbgKTb', 'b887d464611b8262de885c1a3b00fc147d27b88b733d63cf3bf90b453eb63950', '[\"*\"]', '2023-11-08 20:36:38', '2023-11-08 20:01:42', '2023-11-08 20:36:38', NULL),
(1821, 'App\\Models\\User', 4, 'INC7aKdK', '76b45622b396c55a45e1d3e79995d50789368679c60e65fb7698cb5e9ed8aead', '[\"*\"]', '2023-11-09 09:41:09', '2023-11-08 22:07:04', '2023-11-09 09:41:09', NULL),
(1822, 'App\\Models\\User', 5, 'D7SsHGCh', '765579d80ec123ef87af8d136ff9a90ab702b0136351e0659dc3af34808e05a1', '[\"*\"]', '2023-11-09 10:36:48', '2023-11-09 10:36:44', '2023-11-09 10:36:48', NULL),
(1823, 'App\\Models\\User', 5, '5tELkgGt', 'a6d625608a55200bcf7ae76ca42fb1a9a1c8fcb96a2008e62cbc4799aa64d56d', '[\"*\"]', '2023-11-09 17:44:39', '2023-11-09 17:44:36', '2023-11-09 17:44:39', NULL),
(1824, 'App\\Models\\User', 5, 'CSwKJqe2', '492af178e9b68a8b50e701fcc69da1ec9513b0b38e10e2d887e949c868a247d7', '[\"*\"]', '2023-11-09 17:45:30', '2023-11-09 17:45:28', '2023-11-09 17:45:30', NULL),
(1825, 'App\\Models\\User', 5, 'tTKAfkEo', 'b72ec535da6f832d3f27e020db186fd0f3256e3d01461a4364cd43c58cd0e583', '[\"*\"]', '2023-11-09 17:51:44', '2023-11-09 17:48:47', '2023-11-09 17:51:44', NULL),
(1826, 'App\\Models\\User', 14, 'tq6uOfi2', '98b63cf93d087757e29b26311c62895f86e31ed8980e973e03d1fcaa73eefcd7', '[\"*\"]', '2023-11-11 09:33:39', '2023-11-09 18:30:37', '2023-11-11 09:33:39', NULL),
(1827, 'App\\Models\\User', 2, 'BMn8XilL', 'deccc5e27e13045a29b843b29681c6f55996b7d5e4ed7b3429b37e02e46da913', '[\"*\"]', '2023-11-12 19:04:46', '2023-11-11 09:34:02', '2023-11-12 19:04:46', NULL),
(1828, 'App\\Models\\User', 4, 'NtFjM5i5', '02b5105c163fa1090f15a9dc3c3c31f233d7e8c0cf9baa9913e1c80f3a8ec772', '[\"*\"]', '2023-11-12 19:56:19', '2023-11-12 19:06:35', '2023-11-12 19:56:19', NULL),
(1829, 'App\\Models\\User', 5, 'l8mSsW4C', '209ede3ff96879ab0356ec597a0d9412c61d7b4c136ac325c499a7ada60ca835', '[\"*\"]', '2023-11-13 07:36:47', '2023-11-12 19:56:44', '2023-11-13 07:36:47', NULL),
(1830, 'App\\Models\\User', 5, 'lBUa2I9V', 'c5d91a6dcdac16f46bd194a710c34e501454e8fb63294d75164f3fabc2aa575a', '[\"*\"]', '2023-11-13 09:32:12', '2023-11-13 09:31:23', '2023-11-13 09:32:12', NULL),
(1831, 'App\\Models\\User', 5, 'eLOYBsDv', 'f36dd67fbfe71c7ed795dcafa8614f74111210531a537ba5d8689fb4350330ea', '[\"*\"]', '2023-11-13 09:39:11', '2023-11-13 09:39:07', '2023-11-13 09:39:11', NULL),
(1832, 'App\\Models\\User', 5, '7Piuz4Lk', '88660a1572b1dcbf13504f4d7832a1944cbd8aa257c6f0ac183137c2104a6958', '[\"*\"]', '2023-11-13 09:43:53', '2023-11-13 09:43:49', '2023-11-13 09:43:53', NULL),
(1833, 'App\\Models\\User', 5, 'svlDgNta', '8d1674c4f1f330f982eba76fb1698776e0a3a6300286559077363aa45bd177ed', '[\"*\"]', '2023-11-13 09:44:40', '2023-11-13 09:44:36', '2023-11-13 09:44:40', NULL),
(1834, 'App\\Models\\User', 5, 'CWXEg1Dq', '08d0fc8fa8efbe339b6f9b656eb3609655c69ff80224080b39d5209a183f1456', '[\"*\"]', '2023-11-13 09:56:59', '2023-11-13 09:56:55', '2023-11-13 09:56:59', NULL),
(1835, 'App\\Models\\User', 14, 'HMvvBGlc', 'a11d8473214728494f5ad63ab2e2e8c0ef625cf79000d3cc37a69ad7befc7bd6', '[\"*\"]', '2023-11-13 10:12:17', '2023-11-13 10:12:05', '2023-11-13 10:12:17', NULL),
(1836, 'App\\Models\\User', 14, 'BytLZyAm', 'fe8ab11a04449f1793a06ab8309929bb714ec1b92191f75dc9bd8b00d01c2b0f', '[\"*\"]', '2023-11-13 10:32:48', '2023-11-13 10:19:52', '2023-11-13 10:32:48', NULL),
(1837, 'App\\Models\\User', 4, 'GnrBveoC', '86244fd59e41e8421596182a413b345429a74aac856efa74a33fd159150fadbd', '[\"*\"]', '2023-11-13 18:23:23', '2023-11-13 18:10:58', '2023-11-13 18:23:23', NULL),
(1838, 'App\\Models\\User', 4, 'ug0y3mnX', '9c5249daf8e65e4e53c7db69e06354aacc940075cb1fa7e3a3b0ee763de20e3e', '[\"*\"]', '2023-11-13 19:37:18', '2023-11-13 18:33:41', '2023-11-13 19:37:18', NULL),
(1839, 'App\\Models\\User', 14, 'FmcaPgXs', '8e53c2fae4b37085b65cdd6ff533218a4bc288f0cbc4b955adf7c16f91aeb0a0', '[\"*\"]', '2023-11-14 08:32:39', '2023-11-13 19:52:01', '2023-11-14 08:32:39', NULL),
(1840, 'App\\Models\\User', 4, '3eSGEFwN', 'e6cd72cb9a6fa995b751869efb069fa1e648b7dba454ca6fb61ac1afacf10d18', '[\"*\"]', '2023-11-14 09:15:04', '2023-11-14 09:14:16', '2023-11-14 09:15:04', NULL),
(1841, 'App\\Models\\User', 3, 'T6dQ6Iiu', '7e1dd194ae6bf7551f78023b5cb76d290af071c6d3a80cfd1a79fab0281f14d0', '[\"*\"]', '2023-11-14 09:27:29', '2023-11-14 09:27:22', '2023-11-14 09:27:29', NULL),
(1842, 'App\\Models\\User', 4, 'h2Kxyh4X', 'c13cfc6097c6175d15ae27185255549c60cd1a9f50a2daff1d33031536c6500d', '[\"*\"]', '2023-11-14 09:51:01', '2023-11-14 09:50:43', '2023-11-14 09:51:01', NULL),
(1843, 'App\\Models\\User', 4, 'MJp90iWo', 'ed6433403c19059f0733f1d0fc7d56a8296c52fa8e51489a2cbd47d9c14d2a13', '[\"*\"]', '2023-11-14 10:17:58', '2023-11-14 10:17:56', '2023-11-14 10:17:58', NULL),
(1844, 'App\\Models\\User', 2, 'k2W19SL7', '12ea605d7d98741c1aaafb38b4023a589d7f3d1749c8afc22f0090ad91180f6a', '[\"*\"]', '2023-11-14 18:25:28', '2023-11-14 10:18:29', '2023-11-14 18:25:28', NULL),
(1845, 'App\\Models\\User', 15, 'mXGJswMF', '0e3a3569084435d6248d1c2fdb3ed9613e91fd7154bccef4f77bd6f0fcd7ff67', '[\"*\"]', '2023-11-18 18:56:14', '2023-11-14 16:26:11', '2023-11-18 18:56:14', NULL),
(1846, 'App\\Models\\User', 4, 'p8IaWtO9', '7a131dbe326749625e4196d9a95e72117cb41495ac8aee69914629c62f7a058d', '[\"*\"]', '2023-11-14 21:47:12', '2023-11-14 21:47:06', '2023-11-14 21:47:12', NULL),
(1847, 'App\\Models\\User', 4, 'NQToXyUs', '6d13d3aa0da98b760ad45297fbb5d0648688a95f9ccebc57ed4d20417ca2f517', '[\"*\"]', '2023-11-15 08:24:13', '2023-11-15 08:24:08', '2023-11-15 08:24:13', NULL),
(1848, 'App\\Models\\User', 9, 'waIkm0h4', 'e518736eb0511c06556463f81ef599c1dbdbc65065c8ae3e9be0339856a821ec', '[\"*\"]', NULL, '2023-11-15 09:11:11', '2023-11-15 09:11:11', NULL),
(1849, 'App\\Models\\User', 9, 'QMDa50Y1', 'c3e106801dbb45fab56bd854455b9e1c35e4051b1400b9afd810df7053952a96', '[\"*\"]', '2023-11-15 09:11:33', '2023-11-15 09:11:11', '2023-11-15 09:11:33', NULL),
(1850, 'App\\Models\\User', 9, 'Z2dLQhog', 'fb9e44ed66aacddd67a03bac6d1f3122593c1de05dcaab85dab5a338a72fd311', '[\"*\"]', '2023-11-15 09:11:54', '2023-11-15 09:11:51', '2023-11-15 09:11:54', NULL),
(1851, 'App\\Models\\User', 9, 'qpmWuNvy', '159d8d625948be9246f7fd91cc0904ed9f61d28a2505d50d8bc013630e0e3dfa', '[\"*\"]', '2023-11-15 09:11:55', '2023-11-15 09:11:51', '2023-11-15 09:11:55', NULL),
(1852, 'App\\Models\\User', 9, 'EeR3TeRX', 'aa00d220df53a7f3c8ad2a75afb658deec74330fb83a0e406d2f05b083f8597c', '[\"*\"]', NULL, '2023-11-15 09:11:58', '2023-11-15 09:11:58', NULL),
(1853, 'App\\Models\\User', 9, 'Ika1rUWw', 'f22d524920e1325569bc7d4b0b3e1fcba19136afc5e6bc7cebea4d83024e27c8', '[\"*\"]', '2023-11-15 09:12:11', '2023-11-15 09:11:58', '2023-11-15 09:12:11', NULL),
(1854, 'App\\Models\\User', 9, '0BVrwmYG', 'de081336ea35b7b3ce5837834b9a3aa49b44f4e9b925a02eaf38ff214a8c8d38', '[\"*\"]', '2023-11-15 09:12:20', '2023-11-15 09:12:18', '2023-11-15 09:12:20', NULL),
(1855, 'App\\Models\\User', 9, 'k0AZbjA3', '110632a773f5c46ddfb49483f13f82d997104c2e90f1873816053f1216e4c850', '[\"*\"]', '2023-11-15 09:13:58', '2023-11-15 09:12:18', '2023-11-15 09:13:58', NULL),
(1856, 'App\\Models\\User', 9, 'rUC1F1nx', '3ccaeb9db7fe6cc74a32fd21f0cd4e1fb31b05edd04189008854326e68c5978f', '[\"*\"]', '2023-11-15 09:14:24', '2023-11-15 09:14:23', '2023-11-15 09:14:24', NULL),
(1857, 'App\\Models\\User', 9, 'sefuriSC', '1783d1276c188fa673df00fb14ea1ebb84cc81cee001429b9828a0ffd03d1801', '[\"*\"]', '2023-11-15 09:21:54', '2023-11-15 09:14:23', '2023-11-15 09:21:54', NULL),
(1858, 'App\\Models\\User', 9, '4L2I75YM', '227970ef845a2455e1cc79a6b25750c4797eebea61c5583c419243a2b78a4fc0', '[\"*\"]', '2023-11-15 09:22:07', '2023-11-15 09:22:05', '2023-11-15 09:22:07', NULL),
(1859, 'App\\Models\\User', 9, 'KGFlW6Pd', '024114839ef74a7ff2e0f1756bbb98dbe3788268bb51d073ca2ea8ff580e418e', '[\"*\"]', '2023-11-15 09:22:48', '2023-11-15 09:22:05', '2023-11-15 09:22:48', NULL),
(1860, 'App\\Models\\User', 9, 'V5Y1HQja', '31aaabfe25c3a0ce1e1402440d30e3b0cf832c4c40940f27223c46198d708a94', '[\"*\"]', '2023-11-15 09:23:00', '2023-11-15 09:23:00', '2023-11-15 09:23:00', NULL),
(1861, 'App\\Models\\User', 9, 'wikGPf1W', 'a2dcca25ddd6c78302c89365f5978ceeb55a99801d63bbf5ee3d746e5646c061', '[\"*\"]', '2023-11-15 09:29:27', '2023-11-15 09:23:00', '2023-11-15 09:29:27', NULL),
(1862, 'App\\Models\\User', 9, 'QKd9wYR4', '302d0dcfbc77e20eb311b8b726661cf14f93172f19aa0e859b35a67bec819df6', '[\"*\"]', '2023-11-15 09:30:49', '2023-11-15 09:29:28', '2023-11-15 09:30:49', NULL),
(1863, 'App\\Models\\User', 9, 'ML4abEgG', '78f81950db0c9d58c894d0599c16d22421a421af626aaef2fc14c0b6c5c97bec', '[\"*\"]', '2023-11-15 09:31:06', '2023-11-15 09:31:05', '2023-11-15 09:31:06', NULL),
(1864, 'App\\Models\\User', 9, '7EF2xFph', 'b42444434682d6b9375f452d7629bbfb4e5b0fcbd4c8011bed2ddfae8ec0da2c', '[\"*\"]', '2023-11-15 09:32:35', '2023-11-15 09:31:05', '2023-11-15 09:32:35', NULL),
(1865, 'App\\Models\\User', 9, 'GGULvZ9N', '9ca741f45635b7cc51f860d44cf2a780189f5765bc8d6e7ff4d680c20dfb2b5e', '[\"*\"]', NULL, '2023-11-15 09:32:50', '2023-11-15 09:32:50', NULL),
(1866, 'App\\Models\\User', 9, 'CkNqPF2b', '5fafe9abc5c3914baefe822972d58877f9bd141dc66bbfc118aa97a53c9985cd', '[\"*\"]', '2023-11-15 09:33:04', '2023-11-15 09:32:50', '2023-11-15 09:33:04', NULL),
(1867, 'App\\Models\\User', 9, 'VPTm5Kfi', '7e70a242c5bb7f25799a11e031ef7c258cb05d3c3f193be77b92dfd7990702f8', '[\"*\"]', '2023-11-15 09:41:11', '2023-11-15 09:33:40', '2023-11-15 09:41:11', NULL),
(1868, 'App\\Models\\User', 9, 'vjrGB1Up', 'ee7f0db17a10fdee5bf0c40134a6fda2af7f65cf5e1a0267f3cfff809e1a518d', '[\"*\"]', NULL, '2023-11-15 09:33:40', '2023-11-15 09:33:40', NULL),
(1869, 'App\\Models\\User', 9, 'dd4AxWvG', '3142273b2c54d25868a02893a8c6e26ca842690c1eea76d2dbc9d494285f7817', '[\"*\"]', '2023-11-15 09:41:26', '2023-11-15 09:41:25', '2023-11-15 09:41:26', NULL),
(1870, 'App\\Models\\User', 9, 'ynJJWziq', '1ec8b21460e302a39829ec5c056994f5e1434414051cfedd4d49bc01d785460e', '[\"*\"]', '2023-11-15 09:45:56', '2023-11-15 09:41:25', '2023-11-15 09:45:56', NULL),
(1871, 'App\\Models\\User', 9, 'yCilhKOc', '04573df94e6bc70e4a1aefdd5b0cc6c5e3a79d246794a58128701477f55de826', '[\"*\"]', '2023-11-15 09:50:29', '2023-11-15 09:46:18', '2023-11-15 09:50:29', NULL),
(1872, 'App\\Models\\User', 9, 'bGAff2eJ', 'fa68bf7d7e0abd6d59be7ad2a93bf907e72c56e408ecba200c51c809e59aedb4', '[\"*\"]', NULL, '2023-11-15 09:46:18', '2023-11-15 09:46:18', NULL),
(1873, 'App\\Models\\User', 9, 'RCNUgwpQ', 'c4a8bfbbc6285a352490ad00018ce372df1be250ec197bfe9088c0fe02d1cac3', '[\"*\"]', '2023-11-15 09:50:47', '2023-11-15 09:50:46', '2023-11-15 09:50:47', NULL),
(1874, 'App\\Models\\User', 9, '7QJK444n', 'd50dd3515aa2e071f8a240c71121c8658bc83a25a2e24c523ef92ca08208caf7', '[\"*\"]', '2023-11-15 09:50:48', '2023-11-15 09:50:47', '2023-11-15 09:50:48', NULL),
(1875, 'App\\Models\\User', 9, 'SxG8bgD8', '04dee515cac7e11a814016d3afda4a51779140021b07023894c65a1a5a57ffd3', '[\"*\"]', '2023-11-15 09:51:01', '2023-11-15 09:51:00', '2023-11-15 09:51:01', NULL),
(1876, 'App\\Models\\User', 9, 'UuoPxoND', 'd61897d13ad1c52f1b9dec138be21993825e7d6d3e49104d784d033adf7d998c', '[\"*\"]', '2023-11-15 09:54:55', '2023-11-15 09:51:00', '2023-11-15 09:54:55', NULL),
(1877, 'App\\Models\\User', 9, '6CsmTwSX', '40517f4a0478a942b5cfe85c1e81099d8ee265cf60e2db3b274d2abd15a6fea4', '[\"*\"]', '2023-11-15 09:55:14', '2023-11-15 09:55:14', '2023-11-15 09:55:14', NULL),
(1878, 'App\\Models\\User', 9, '2dTHAu6k', '8bf810e0a56c00595901da49cd7ac4f0ccd4f6e7b18610fcd1a0ec43182396f4', '[\"*\"]', '2023-11-15 09:55:56', '2023-11-15 09:55:14', '2023-11-15 09:55:56', NULL),
(1879, 'App\\Models\\User', 9, 'bZBHuVBa', 'ebeade2d4973c75b6048fc09ca6d5b56f575638cd2117078b37b9d44e1742945', '[\"*\"]', '2023-11-15 09:56:15', '2023-11-15 09:56:14', '2023-11-15 09:56:15', NULL),
(1880, 'App\\Models\\User', 9, 'SxM0wOw6', '5384e62ea73499f3a110a612be54ef1b0390c04ec0ebf5a6c3d2099672c86091', '[\"*\"]', '2023-11-15 09:57:08', '2023-11-15 09:56:14', '2023-11-15 09:57:08', NULL),
(1881, 'App\\Models\\User', 4, 'teDh9hev', '556ddef67f10318ef3ae4f17320d89dae9b9a2d93a11d613d52fe8df3fda34ef', '[\"*\"]', '2023-11-15 10:03:48', '2023-11-15 09:57:13', '2023-11-15 10:03:48', NULL),
(1882, 'App\\Models\\User', 9, 'G2R4jyPk', '0d106014742c72c9d18055dd3f9ffc7f0a4c3bc60f77b84b2ad461bfad7f2586', '[\"*\"]', NULL, '2023-11-15 09:57:15', '2023-11-15 09:57:15', NULL),
(1883, 'App\\Models\\User', 9, 'dyqlP4dG', 'b163ac38c8cd97a411bbabaad0de058cb3078311cdbe447ba819f28a637f5c20', '[\"*\"]', '2023-11-15 10:00:46', '2023-11-15 09:57:15', '2023-11-15 10:00:46', NULL),
(1884, 'App\\Models\\User', 9, 'yJucOyFd', 'a9ff5d18de71c7967ca7b94a5be80557db74df0ee507fcff7ec747f2a2dcf456', '[\"*\"]', '2023-11-15 10:01:01', '2023-11-15 10:01:00', '2023-11-15 10:01:01', NULL),
(1885, 'App\\Models\\User', 9, 'BmsW9g24', '2cb4e5efafa0d51ad65a84f17bfe3a72471552dd112f325e670ffef5a16241b7', '[\"*\"]', '2023-11-15 10:02:00', '2023-11-15 10:01:00', '2023-11-15 10:02:00', NULL),
(1886, 'App\\Models\\User', 9, 'HXPRnZyf', '62a61509aaad93c1e731d00c7752c4dd891044328436ec82d7938ac98d4f25ff', '[\"*\"]', '2023-11-15 10:02:07', '2023-11-15 10:02:06', '2023-11-15 10:02:07', NULL),
(1887, 'App\\Models\\User', 9, 'kxOTRkxB', '902bf0e727ea12c7ebb60f2c83254e02f0d969da988994c46817f8828cb41c20', '[\"*\"]', '2023-11-15 10:02:08', '2023-11-15 10:02:06', '2023-11-15 10:02:08', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1888, 'App\\Models\\User', 9, 'UXvTuzZB', '9e526b1d65ee85291a89efd78375e97a94f691b712bf5b054c04fdec7b4da0ac', '[\"*\"]', '2023-11-15 10:02:18', '2023-11-15 10:02:16', '2023-11-15 10:02:18', NULL),
(1889, 'App\\Models\\User', 9, '1UurLmU1', '8415a5b394393f1518c2a4e297835fd65ef8499ae7e16870f762665d5ae406d9', '[\"*\"]', '2023-11-15 10:03:37', '2023-11-15 10:02:16', '2023-11-15 10:03:37', NULL),
(1890, 'App\\Models\\User', 9, 'apTDH8D7', '1ffeaf52cf299dce8e57e2e6f041235a7f93c6aba31ab1c7f1614019d33d9069', '[\"*\"]', '2023-11-15 10:04:33', '2023-11-15 10:03:50', '2023-11-15 10:04:33', NULL),
(1891, 'App\\Models\\User', 9, 'NeWhg6VP', 'd7b2bc02f0596f5b5bd0ca7d132591b0311518c603ea90bb9df0d88f69e92e64', '[\"*\"]', NULL, '2023-11-15 10:03:50', '2023-11-15 10:03:50', NULL),
(1892, 'App\\Models\\User', 4, 'qC9ui5tz', '8f0f13dc5f164df4377910b3f3a530130a9d1b286ededd6a319ea2271423061b', '[\"*\"]', '2023-11-15 10:04:12', '2023-11-15 10:04:06', '2023-11-15 10:04:12', NULL),
(1893, 'App\\Models\\User', 9, 'rJ1K3IZq', '7ef7b5da10456597671c5ee7251756a1499a10484030b2b89f6cbbdc89eb3e6f', '[\"*\"]', '2023-11-15 10:04:43', '2023-11-15 10:04:42', '2023-11-15 10:04:43', NULL),
(1894, 'App\\Models\\User', 9, 'A8B8F0jS', '0c308988d6a475ca4b5b6bfc896743b0e2d8b729fdec98f11c1785861a95318d', '[\"*\"]', '2023-11-15 10:05:53', '2023-11-15 10:04:42', '2023-11-15 10:05:53', NULL),
(1895, 'App\\Models\\User', 4, 'mhEohmAn', '7ae0ed264b206f875667639657791abf33e059a9ca8fad8292f67708a8186731', '[\"*\"]', '2023-11-15 10:06:42', '2023-11-15 10:06:01', '2023-11-15 10:06:42', NULL),
(1896, 'App\\Models\\User', 9, 'c5iH6Gub', '635c3840678bfd5ace57246d26695556c1e13191c7c48c3f1bf6bc52b4014c88', '[\"*\"]', '2023-11-15 10:06:04', '2023-11-15 10:06:03', '2023-11-15 10:06:04', NULL),
(1897, 'App\\Models\\User', 9, 'pPPf7NNP', 'a7aac648e9e01d0486a82ad889e27cf814d866854cf5f990285bfe4e5887d672', '[\"*\"]', '2023-11-15 10:07:04', '2023-11-15 10:06:03', '2023-11-15 10:07:04', NULL),
(1898, 'App\\Models\\User', 9, 'Xh2JDUGy', 'fcb66dcd84afaf1a2057a8bccbda3befca93a6395354c3037df835b57cf2f8e8', '[\"*\"]', '2023-11-15 10:07:28', '2023-11-15 10:07:17', '2023-11-15 10:07:28', NULL),
(1899, 'App\\Models\\User', 9, 'dZMogOaa', 'd28b26ab032eb08add84ed3b118e404dc037402e4078e991d5beec988b99d579', '[\"*\"]', '2023-11-15 10:07:17', '2023-11-15 10:07:17', '2023-11-15 10:07:17', NULL),
(1900, 'App\\Models\\User', 9, '0gZ91b0o', '6f8237a5a97902c1324f00e187577b85764e6b76f0c27aeb4815d3bf45bbcb20', '[\"*\"]', '2023-11-15 10:08:17', '2023-11-15 10:07:38', '2023-11-15 10:08:17', NULL),
(1901, 'App\\Models\\User', 9, 'sKmGw9oL', '9406f9ea27288559e384632219e807e94f364ba5c26a3e644317de71b2d7db1e', '[\"*\"]', NULL, '2023-11-15 10:07:38', '2023-11-15 10:07:38', NULL),
(1902, 'App\\Models\\User', 9, 'APLkK7K5', 'd985c0dd74ff894f1b733df1ec2f745f88cff0da5dc79f54deb9ce7b84d56004', '[\"*\"]', NULL, '2023-11-15 10:08:34', '2023-11-15 10:08:34', NULL),
(1903, 'App\\Models\\User', 9, 'DhizIRj9', '46f562206b2440da7f279d36a288e70c2d250e67da188b44a66f4481dade5f57', '[\"*\"]', '2023-11-15 10:10:58', '2023-11-15 10:08:34', '2023-11-15 10:10:58', NULL),
(1904, 'App\\Models\\User', 9, 'Aj13XmDz', '3a7dadbd3fb635d34b0054464ca435b3ae57fbe779895ff0338633237b552d22', '[\"*\"]', NULL, '2023-11-15 10:11:09', '2023-11-15 10:11:09', NULL),
(1905, 'App\\Models\\User', 9, 'bkGobBgJ', 'c4672ad9099db7a3d9ee4155ea8e0740aecff9b0bd76e0a2798b6c47a5c0277c', '[\"*\"]', '2023-11-15 10:11:40', '2023-11-15 10:11:09', '2023-11-15 10:11:40', NULL),
(1906, 'App\\Models\\User', 9, 'JjZU2jig', '1d10d4d4305fb915a5394b4030bc1a7a50a35cbbd29e34025008916d21b666bf', '[\"*\"]', '2023-11-15 10:11:46', '2023-11-15 10:11:46', '2023-11-15 10:11:46', NULL),
(1907, 'App\\Models\\User', 9, '3rWFy7PI', '75b96fe281a3976e6b541b6677fb0e29b9e052f289aa4fcf9676b603a38e5a69', '[\"*\"]', '2023-11-15 10:13:46', '2023-11-15 10:11:46', '2023-11-15 10:13:46', NULL),
(1908, 'App\\Models\\User', 9, '4EsXfRBS', 'a02d1327c12cc6fbe5509659f31591485a7234e98d98e459563d3e271bfa5cf0', '[\"*\"]', '2023-11-15 10:14:04', '2023-11-15 10:14:03', '2023-11-15 10:14:04', NULL),
(1909, 'App\\Models\\User', 9, '0Fm5rBna', 'e9b7e181139cf46d5a58748c4f6edeea41d82f56357e8c757353415e7dcc8176', '[\"*\"]', '2023-11-15 10:15:04', '2023-11-15 10:14:03', '2023-11-15 10:15:04', NULL),
(1910, 'App\\Models\\User', 9, 'B4Z4jmp7', 'f40027fd2bc71a87ede72af0890fe48b1ecd3f4291edf79c05e6c4dad92db938', '[\"*\"]', '2023-11-15 10:15:11', '2023-11-15 10:15:10', '2023-11-15 10:15:11', NULL),
(1911, 'App\\Models\\User', 9, 'XPXQbbrK', '042b67b0c4c0d85f0583ba1f58fbf7a0def102521f57573d9a36dab00e3cc758', '[\"*\"]', '2023-11-15 10:16:11', '2023-11-15 10:15:10', '2023-11-15 10:16:11', NULL),
(1912, 'App\\Models\\User', 9, 'ZO6B9kJy', 'b8904823d9639a0551043e69132534fd819497618f6d9bea6c98eb2ffd7f27b7', '[\"*\"]', '2023-11-15 10:16:18', '2023-11-15 10:16:18', '2023-11-15 10:16:18', NULL),
(1913, 'App\\Models\\User', 9, 'vckS3qHY', 'cf3d853e90fb5f14ffda632325320c4033dc2e83f78cf3230f98a4f53838c361', '[\"*\"]', '2023-11-15 10:19:05', '2023-11-15 10:16:18', '2023-11-15 10:19:05', NULL),
(1914, 'App\\Models\\User', 5, 'M1r9uiOn', 'db96cdd601f9bdf8022a458dc3559c4a9b108b56b81c8dbb20c67cc2e6ea3ccd', '[\"*\"]', '2023-11-15 10:17:06', '2023-11-15 10:17:02', '2023-11-15 10:17:06', NULL),
(1915, 'App\\Models\\User', 4, 'R57Maxb7', '72467b6ef7245c2f6b9d8296a236056767f46176a1b7e11d458ea5cba19c7b69', '[\"*\"]', '2023-11-15 10:17:42', '2023-11-15 10:17:39', '2023-11-15 10:17:42', NULL),
(1916, 'App\\Models\\User', 14, 'JVt4sFaa', 'b190c3d086cb5080ba24487cf5cd3d0c81d18a7fc62456e7beffff2b14b29504', '[\"*\"]', '2023-11-15 10:19:29', '2023-11-15 10:19:18', '2023-11-15 10:19:29', NULL),
(1917, 'App\\Models\\User', 9, 'Yti6Tkuh', '6f8873f2f56cb4ca31f678eff4000e31de57feb71e8f9cd04ed6766715d6cd09', '[\"*\"]', NULL, '2023-11-15 10:19:24', '2023-11-15 10:19:24', NULL),
(1918, 'App\\Models\\User', 9, 'bbIF7hkm', 'f9f03c4d2f15e3202dd0b0ac6e61227663942c40f29e65742e11ea2605c60469', '[\"*\"]', '2023-11-15 10:19:30', '2023-11-15 10:19:24', '2023-11-15 10:19:30', NULL),
(1919, 'App\\Models\\User', 9, 'XBKN0cKi', '89703d1f435622bc50d6ce54a8665a630cd7535c29f98c5eadd34a7d30b74775', '[\"*\"]', '2023-11-15 10:19:42', '2023-11-15 10:19:41', '2023-11-15 10:19:42', NULL),
(1920, 'App\\Models\\User', 9, 'kSbBverp', '36f28dc50c1b532b0c5a625c3bdcb81de47106d028218d3dc3fb0d14957709c2', '[\"*\"]', '2023-11-15 10:20:12', '2023-11-15 10:19:41', '2023-11-15 10:20:12', NULL),
(1921, 'App\\Models\\User', 4, 'nxDXUYzs', '425ff16258a5e4d1fbae3b425872d4dfa00412c460c1cdf12745da3acef344f2', '[\"*\"]', '2023-11-15 10:35:41', '2023-11-15 10:19:48', '2023-11-15 10:35:41', NULL),
(1922, 'App\\Models\\User', 9, 'cIqYE80z', '24093cc01f5bb7e6f6c0ed68781aa3f9237610e8ba9520cb6de6e4cbc256deae', '[\"*\"]', NULL, '2023-11-15 10:20:22', '2023-11-15 10:20:22', NULL),
(1923, 'App\\Models\\User', 9, 'h5Rjh8bs', 'afb0619b71950074a55f16e68cd89faee5d43f14cc1f44033b622abb4799d2de', '[\"*\"]', '2023-11-15 10:22:23', '2023-11-15 10:20:22', '2023-11-15 10:22:23', NULL),
(1924, 'App\\Models\\User', 9, 'Tgxn5p2m', 'dafe555ca782af0b0f95381993ecae0ddc863b00921336e2c7061a2970614fc1', '[\"*\"]', NULL, '2023-11-15 10:22:39', '2023-11-15 10:22:39', NULL),
(1925, 'App\\Models\\User', 9, '7bn6osMd', '8ca0082306403e817f5343f26c40e3d28df24efadd4922e404bff0e87fc30be6', '[\"*\"]', '2023-11-15 10:23:14', '2023-11-15 10:22:39', '2023-11-15 10:23:14', NULL),
(1926, 'App\\Models\\User', 9, 'voNOX6tQ', '12ea9b5721b0f083c0a32ef73efde0f823af6b57ff8cd22e924c5184419053ed', '[\"*\"]', NULL, '2023-11-15 10:23:29', '2023-11-15 10:23:29', NULL),
(1927, 'App\\Models\\User', 9, 'Qz997xQ1', '618b1cac4f7847cedd9088eb25535cda0a5bebe883f71f251cd6c700d2c2aa9a', '[\"*\"]', '2023-11-15 10:23:53', '2023-11-15 10:23:29', '2023-11-15 10:23:53', NULL),
(1928, 'App\\Models\\User', 9, 'phhERNB0', '7cc8335bcd7e12a98a67e9715cb7d39469a6225933476ff20392e2ec146ed839', '[\"*\"]', '2023-11-15 10:24:07', '2023-11-15 10:24:05', '2023-11-15 10:24:07', NULL),
(1929, 'App\\Models\\User', 9, 'k5UGErV0', '33e0f889f28e7d560cd5cca52881649e9613b82aed47a5cca75a228cfe258558', '[\"*\"]', '2023-11-15 10:42:58', '2023-11-15 10:24:05', '2023-11-15 10:42:58', NULL),
(1930, 'App\\Models\\User', 9, 'HsyfmBPQ', '4bed6daceafaf594a6f81ccd5b5de51a0d385035ec67f7178bcbaf115814f08e', '[\"*\"]', NULL, '2023-11-15 10:43:10', '2023-11-15 10:43:10', NULL),
(1931, 'App\\Models\\User', 9, 'PaGBG36H', 'c93a30845d93e83251f3fc49dcf4720311fc2b1b8e2d89771f5a83e4c8067ed5', '[\"*\"]', '2023-11-15 10:53:22', '2023-11-15 10:43:10', '2023-11-15 10:53:22', NULL),
(1932, 'App\\Models\\User', 9, 'ALDR9JyL', 'ef01b81914d429682d31101ff197d37c959652ba1c0a06bc74965150665731ec', '[\"*\"]', '2023-11-15 10:53:39', '2023-11-15 10:53:38', '2023-11-15 10:53:39', NULL),
(1933, 'App\\Models\\User', 9, 'MYzmCsp4', '8d1c5d7b48374565f8b7531fd8365e5fb61610173f06340a6903015ac2c39c24', '[\"*\"]', '2023-11-15 10:56:00', '2023-11-15 10:53:38', '2023-11-15 10:56:00', NULL),
(1934, 'App\\Models\\User', 9, 'KSXSkT7s', '6388b5e48d785747275aa756e814342d2babd2287b008f2ea27617267562c03f', '[\"*\"]', NULL, '2023-11-15 10:56:12', '2023-11-15 10:56:12', NULL),
(1935, 'App\\Models\\User', 9, 'uvTLGv0t', 'db19374280fb24303643e62bc29fa2df4efff1185cb2327e5a0ba720b589f045', '[\"*\"]', '2023-11-15 10:56:44', '2023-11-15 10:56:12', '2023-11-15 10:56:44', NULL),
(1936, 'App\\Models\\User', 9, 'YPPZH0us', '63546a0364a9a8fc40355a28572aad0686aa901a0732c47afea25d14bf1a82ab', '[\"*\"]', NULL, '2023-11-15 10:57:09', '2023-11-15 10:57:09', NULL),
(1937, 'App\\Models\\User', 9, 'vkCxXfQm', 'f7d4f1b4eaa315daf225132c51c01e943abd69cc1964a774a2dbd0fd325b00d5', '[\"*\"]', '2023-11-15 10:58:49', '2023-11-15 10:57:09', '2023-11-15 10:58:49', NULL),
(1938, 'App\\Models\\User', 9, 'Udxo4Zce', '4b0d035194ef19fc0dfd3edcdd70e86849b76445b0a409e751b53df33eb036e1', '[\"*\"]', '2023-11-15 10:59:06', '2023-11-15 10:59:05', '2023-11-15 10:59:06', NULL),
(1939, 'App\\Models\\User', 9, 'jcjIQvX6', '1accf504d126ee9b49ef057d50db37baff515132f1e0697d5b7052cd8210a930', '[\"*\"]', '2023-11-15 11:02:35', '2023-11-15 10:59:05', '2023-11-15 11:02:35', NULL),
(1940, 'App\\Models\\User', 9, 'B8LyTERe', 'c9d60d6e2071da8789f824e343a9d599f7c6229671ac7df693c690f094502558', '[\"*\"]', NULL, '2023-11-15 11:02:43', '2023-11-15 11:02:43', NULL),
(1941, 'App\\Models\\User', 9, 'F40WHEUU', '1f27ea392ca6f8b35bac3f804469a8900ae85e086961781b42bfc4017449e11d', '[\"*\"]', '2023-11-15 11:02:54', '2023-11-15 11:02:43', '2023-11-15 11:02:54', NULL),
(1942, 'App\\Models\\User', 9, '4BMaIuSV', '450de923a5960f8c986615462b822b783ddf4ad6609d2d4caea240f01fc019d9', '[\"*\"]', '2023-11-15 11:02:59', '2023-11-15 11:02:59', '2023-11-15 11:02:59', NULL),
(1943, 'App\\Models\\User', 9, 'xd4NqayY', '6e66994bf9b685a7e4a18a9f11b3331bd9e3794e91a7ec13c628068c966c27ac', '[\"*\"]', '2023-11-15 11:15:49', '2023-11-15 11:02:59', '2023-11-15 11:15:49', NULL),
(1944, 'App\\Models\\User', 4, 'H4YF1l2k', '39e49c006cb747c798ceec2baf6ea3f4b236fbc53fa4430076606eed024266dc', '[\"*\"]', '2023-11-15 11:07:46', '2023-11-15 11:06:10', '2023-11-15 11:07:46', NULL),
(1945, 'App\\Models\\User', 9, 'kqR66Ygx', '3cb23c441711f81712a5340f54de253b622e3aa12806cf32f8b723edf680589b', '[\"*\"]', NULL, '2023-11-15 11:16:01', '2023-11-15 11:16:01', NULL),
(1946, 'App\\Models\\User', 9, 'uQSsH49G', '40cf638137aecc391ef8036e782c21195fa60a22a418f459994cf3a8c8d5478e', '[\"*\"]', '2023-11-15 11:16:12', '2023-11-15 11:16:01', '2023-11-15 11:16:12', NULL),
(1947, 'App\\Models\\User', 9, 'mQT6IGUh', '4253a88ca882ab8718c95a08369c38c892db9e5d35da3794e8495c21cdcd26e3', '[\"*\"]', '2023-11-15 11:16:18', '2023-11-15 11:16:16', '2023-11-15 11:16:18', NULL),
(1948, 'App\\Models\\User', 9, 'hy4H26Ol', 'd87bd77ea48fe2ba9e084147290d6a9327feeee305f9be29ce8fa7c3d2609fc7', '[\"*\"]', '2023-11-15 11:20:20', '2023-11-15 11:16:16', '2023-11-15 11:20:20', NULL),
(1949, 'App\\Models\\User', 9, 'JSZ4bSxf', 'd8b30fcd59a0e798fcf7bbdf893738fb1d1d6cb916fe3796f737ad449d93dbeb', '[\"*\"]', '2023-11-15 11:20:27', '2023-11-15 11:20:26', '2023-11-15 11:20:27', NULL),
(1950, 'App\\Models\\User', 9, 'SWufg4Eq', '44b4f912bb51a7ef744dad100ba5ae29705345e46211ca60200ea63dd21b8fec', '[\"*\"]', '2023-11-15 11:21:30', '2023-11-15 11:20:26', '2023-11-15 11:21:30', NULL),
(1951, 'App\\Models\\User', 9, 'cA4Vsu45', '5f828bba1f613e8452102ea19fcb588ade8bf5e5eb7ca42318c49824cb6dea16', '[\"*\"]', '2023-11-15 11:22:19', '2023-11-15 11:22:15', '2023-11-15 11:22:19', NULL),
(1952, 'App\\Models\\User', 9, 'hpDDGkKZ', 'e9af2ca9ceb4da766f60080892659fc8919eaf9db2f6f15500c490c92d090e39', '[\"*\"]', NULL, '2023-11-15 11:22:15', '2023-11-15 11:22:15', NULL),
(1953, 'App\\Models\\User', 9, '0g5tsuXJ', '2435cdfb6ae0f984a6be254bd17e83f58be5d28cb749f1de7cc0415a6890b3a6', '[\"*\"]', '2023-11-15 11:22:33', '2023-11-15 11:22:31', '2023-11-15 11:22:33', NULL),
(1954, 'App\\Models\\User', 9, 'PTvTyPTQ', '391b279ceb26db412a0955f9a2b32cab9489be3bf40127bf8ed3ee39d2c2a608', '[\"*\"]', '2023-11-15 11:22:35', '2023-11-15 11:22:31', '2023-11-15 11:22:35', NULL),
(1955, 'App\\Models\\User', 9, '3HRYgNG0', 'bbcfe43be6be51811b72a6d0f0d87f3a95e191bc77107801a2691849e91a73bf', '[\"*\"]', '2023-11-15 11:22:54', '2023-11-15 11:22:53', '2023-11-15 11:22:54', NULL),
(1956, 'App\\Models\\User', 9, '41smkJn5', 'f3c846aee268ab398a14e0490af4c1a0ba1bd43cbf71ab124a8c19c5ad1a8ee4', '[\"*\"]', '2023-11-15 11:28:22', '2023-11-15 11:22:53', '2023-11-15 11:28:22', NULL),
(1957, 'App\\Models\\User', 9, 'fkHa9hEF', 'aa505a8af90341a0d7078adee377caea7a086c24d6994c533a0a4fb1088fb8a1', '[\"*\"]', NULL, '2023-11-15 11:28:50', '2023-11-15 11:28:50', NULL),
(1958, 'App\\Models\\User', 9, 'D6nwKpZp', '2dc2d6008f5ffd38de1f74bf1b3ec9e25120e7960ba37afe500cf2e0c67e2cad', '[\"*\"]', '2023-11-15 11:29:44', '2023-11-15 11:28:50', '2023-11-15 11:29:44', NULL),
(1959, 'App\\Models\\User', 9, '2Tip5SCg', '8877e16398d3459479129110118ad0362a6fe5c5c62eb8ff66f32153e97a2240', '[\"*\"]', NULL, '2023-11-15 11:29:59', '2023-11-15 11:29:59', NULL),
(1960, 'App\\Models\\User', 9, 'pV6P7dw5', '9b2ed6bcb75a2a84e1cbfc472d298d237a18320d699365ed5968371b75f3214a', '[\"*\"]', '2023-11-15 11:30:59', '2023-11-15 11:29:59', '2023-11-15 11:30:59', NULL),
(1961, 'App\\Models\\User', 9, 'YlKKDLT5', '92b7594d14d4997550638e197d06587516bf854cc2b566268d97c599640ea1d8', '[\"*\"]', '2023-11-15 11:32:33', '2023-11-15 11:31:47', '2023-11-15 11:32:33', NULL),
(1962, 'App\\Models\\User', 9, 'hU21pP8u', '1206cb026bb0f00bceb8c3b7fef98011beb168035599402b43ccb33e9682dd62', '[\"*\"]', NULL, '2023-11-15 11:31:47', '2023-11-15 11:31:47', NULL),
(1963, 'App\\Models\\User', 9, 'fBqyNk8n', '21a534e42c00553b931afb419da8966b4ffaea1ce69c42b826473c1ca0dd1066', '[\"*\"]', '2023-11-15 11:32:46', '2023-11-15 11:32:46', '2023-11-15 11:32:46', NULL),
(1964, 'App\\Models\\User', 9, 'obzarl3D', 'ff073c363c3d7896f4cbbaac0c9d099582fe2ed08dba2666096b3826b650e051', '[\"*\"]', '2023-11-15 11:36:15', '2023-11-15 11:32:46', '2023-11-15 11:36:15', NULL),
(1965, 'App\\Models\\User', 2, 'NeCvrmec', '5f30eefd74511409c11084e56849edb23db159bc61f2cb8af44b4cec558fc49f', '[\"*\"]', '2023-11-15 12:07:06', '2023-11-15 11:34:40', '2023-11-15 12:07:06', NULL),
(1966, 'App\\Models\\User', 9, '6xfam9G8', '51276130baa8c0bbbba0b43bb0ec1d6edc53fdef0442fc416728d81e3a07ec95', '[\"*\"]', '2023-11-15 11:41:25', '2023-11-15 11:36:50', '2023-11-15 11:41:25', NULL),
(1967, 'App\\Models\\User', 9, '6q6ttdzG', 'f02443b4a75eb44dd965b6a30047243d0e4b92c0d108ffd773b6c41ca0776d39', '[\"*\"]', NULL, '2023-11-15 11:36:50', '2023-11-15 11:36:50', NULL),
(1968, 'App\\Models\\User', 9, 'uYI6V209', '8d92cdc6d855829dc2ef93215030fcb53b7fa246fae045c5207e53071c318a9a', '[\"*\"]', '2023-11-15 11:41:34', '2023-11-15 11:41:33', '2023-11-15 11:41:34', NULL),
(1969, 'App\\Models\\User', 9, 'rrRHwsqo', 'fddb563f4b7b839da112b8f33cb4e7413dafe0db8332da30e94e9a89c38e4f77', '[\"*\"]', '2023-11-15 11:41:44', '2023-11-15 11:41:33', '2023-11-15 11:41:44', NULL),
(1970, 'App\\Models\\User', 9, '9G6xgt0K', '84a4c06703310e61a51cd470d46aca1e389c984d2b545264161cf6ff2aa76764', '[\"*\"]', NULL, '2023-11-15 11:41:54', '2023-11-15 11:41:54', NULL),
(1971, 'App\\Models\\User', 9, 'laOhRiPz', 'b2bf828de864229b5382455952b71117ab9fe870bb3e74dfc9e719cff84727fc', '[\"*\"]', '2023-11-15 11:42:55', '2023-11-15 11:41:55', '2023-11-15 11:42:55', NULL),
(1972, 'App\\Models\\User', 9, 'HDgujIzF', 'a19c94cb56888309cf20729d2f9a108d61903e7151a4df87cd9f3e4c0b27e1db', '[\"*\"]', '2023-11-15 11:43:16', '2023-11-15 11:43:16', '2023-11-15 11:43:16', NULL),
(1973, 'App\\Models\\User', 9, 'CigQzfln', '72c21449333723f664a3c521c55d12056cf13f79703ff5ade75a5cb4a62ad54a', '[\"*\"]', '2023-11-15 11:44:11', '2023-11-15 11:43:16', '2023-11-15 11:44:11', NULL),
(1974, 'App\\Models\\User', 9, 'a1m79Mov', '6d65409b04672a9f87c56998adbf909a7a4402965bb71ab408084158894098ba', '[\"*\"]', '2023-11-15 11:44:52', '2023-11-15 11:44:51', '2023-11-15 11:44:52', NULL),
(1975, 'App\\Models\\User', 9, 'IToY5LdU', 'd829ea2bca7ddc82c1be5ec5aa5fa6940fabf5f5a148a2d0731e06cc0b342d49', '[\"*\"]', '2023-11-15 11:49:28', '2023-11-15 11:44:51', '2023-11-15 11:49:28', NULL),
(1976, 'App\\Models\\User', 9, '9V1aXVHj', '82a2bd16187a5ab15ac6b81a905ec049c86384759a471c59ebbb61c047c3101d', '[\"*\"]', NULL, '2023-11-15 11:54:10', '2023-11-15 11:54:10', NULL),
(1977, 'App\\Models\\User', 9, '7AQ0Hdel', 'a9ae1fef2319eaecb9ad6be3c50c874c689a8c1dd1393a9c6c47a1fd964f7cd6', '[\"*\"]', '2023-11-15 11:55:47', '2023-11-15 11:54:10', '2023-11-15 11:55:47', NULL),
(1978, 'App\\Models\\User', 5, 'z2TGuUCe', 'b9ddd1b5e5b0f44ed24f8844a85c4a6d5d668938a9032005aecced39f2391df9', '[\"*\"]', '2023-11-16 11:26:14', '2023-11-15 12:07:23', '2023-11-16 11:26:14', NULL),
(1979, 'App\\Models\\User', 9, 'dKduPAwa', 'f13a35449e2212f1dca0116a189a203d62f7d59cd61a45ca10d81c9946fdf5c0', '[\"*\"]', '2023-11-15 12:08:52', '2023-11-15 12:08:49', '2023-11-15 12:08:52', NULL),
(1980, 'App\\Models\\User', 9, 'vw3ZpsB0', '8532c2353c908e4cda6a528ae7ee6794978ae24951dfe324625d95e564796cb6', '[\"*\"]', '2023-11-15 12:08:50', '2023-11-15 12:08:49', '2023-11-15 12:08:50', NULL),
(1981, 'App\\Models\\User', 9, 'tmn0fGmr', '564715cb98f1e6d373bef29e22c4f0fd5ba1dcc539fb4f1bb9bd00dc45fbf43b', '[\"*\"]', NULL, '2023-11-15 12:09:21', '2023-11-15 12:09:21', NULL),
(1982, 'App\\Models\\User', 9, 'mtTCAExq', '04d58e045392807d47ee485855720adfc3090cbed0286cc94b62e13c9f5b0caf', '[\"*\"]', '2023-11-15 12:09:24', '2023-11-15 12:09:21', '2023-11-15 12:09:24', NULL),
(1983, 'App\\Models\\User', 9, 'bzd7MUED', 'ecd5ffc3e180852a20758b12027c0ec64c7e09fba9328c473f5d614cb44becb4', '[\"*\"]', NULL, '2023-11-15 12:09:29', '2023-11-15 12:09:29', NULL),
(1984, 'App\\Models\\User', 9, 'QCEB6yBc', '948e69fd6c3a4fd0fa845fea9d60f85270733c7392a269a64673855912613dbf', '[\"*\"]', '2023-11-15 12:09:59', '2023-11-15 12:09:29', '2023-11-15 12:09:59', NULL),
(1985, 'App\\Models\\User', 9, '15IwRoSm', '1678219dfe2398bde8199436716753186ea10dc36e8c0ab1406f52788c99a659', '[\"*\"]', NULL, '2023-11-15 12:17:03', '2023-11-15 12:17:03', NULL),
(1986, 'App\\Models\\User', 9, 'nA3cuFnd', 'e141bef610705e430d4f6ed3facb7eb4292683073438dca305ba91d5708e8990', '[\"*\"]', '2023-11-15 12:17:14', '2023-11-15 12:17:03', '2023-11-15 12:17:14', NULL),
(1987, 'App\\Models\\User', 9, '73NJKGYM', '0f5a172318334c22f7adee14f82192a681139b94e1ae451b158b622a8dec6707', '[\"*\"]', '2023-11-15 12:17:20', '2023-11-15 12:17:19', '2023-11-15 12:17:20', NULL),
(1988, 'App\\Models\\User', 9, 'sVv5qPaA', '6ccce0c7518c22fc73bc39605724d2d87a7f4af55f6dc0e35962dc8e2194fff2', '[\"*\"]', '2023-11-15 13:57:00', '2023-11-15 12:17:19', '2023-11-15 13:57:00', NULL),
(1989, 'App\\Models\\User', 9, 'o3rqJAmG', '73b936187cbd05783fbdb11aca541eae65140e442c94fefe464bd16262a9c10a', '[\"*\"]', NULL, '2023-11-15 14:08:30', '2023-11-15 14:08:30', NULL),
(1990, 'App\\Models\\User', 9, 'QbxZU0iP', 'da5cc983b1efba01154e3b8a90706f5a6e02379ccb3ab432ebe6816d0981bf45', '[\"*\"]', '2023-11-15 14:09:01', '2023-11-15 14:08:30', '2023-11-15 14:09:01', NULL),
(1991, 'App\\Models\\User', 9, 'zzykBqUQ', '4d6cc68206911380d808b2565cac2826762c6996b478ec387fedd0c36d3b156a', '[\"*\"]', '2023-11-15 14:09:11', '2023-11-15 14:09:09', '2023-11-15 14:09:11', NULL),
(1992, 'App\\Models\\User', 9, 'e7y77rEO', 'de1f96b0e5602cd71b4e7d3728e10d3f62530731d647634a23a593e9c8fb1a50', '[\"*\"]', '2023-11-15 14:09:40', '2023-11-15 14:09:10', '2023-11-15 14:09:40', NULL),
(1993, 'App\\Models\\User', 9, 'GAksJSob', 'e472d0510e306b6b7b3bf58160b638cce279a329b091fadf88a1aa7eeb90ae60', '[\"*\"]', '2023-11-15 14:09:45', '2023-11-15 14:09:43', '2023-11-15 14:09:45', NULL),
(1994, 'App\\Models\\User', 9, 'q7PZ9XJZ', '9db081530bf7b449d6a9f91f44acc9a459b470b0d2a58aa884dc88690652f061', '[\"*\"]', '2023-11-15 14:10:55', '2023-11-15 14:09:43', '2023-11-15 14:10:55', NULL),
(1995, 'App\\Models\\User', 9, 'F0Ab6iOw', 'ffdb26a6fbdcd3b33f59242c13167da015fc436eb29a5f4e64e17aee005b3d88', '[\"*\"]', '2023-11-15 14:09:44', '2023-11-15 14:09:43', '2023-11-15 14:09:44', NULL),
(1996, 'App\\Models\\User', 9, 'VO2HaypC', '964ff75c697c4b50ca9ace6a30a587a74f7777a49dfb01e5200a7525919b8b51', '[\"*\"]', '2023-11-15 14:17:56', '2023-11-15 14:09:43', '2023-11-15 14:17:56', NULL),
(1997, 'App\\Models\\User', 9, 'N6GDcRBE', 'b1700a588ae29a0a8ffec9984edf67daf7f13dedd4086a3bd99c376d30f0bb6d', '[\"*\"]', '2023-11-15 14:11:08', '2023-11-15 14:11:08', '2023-11-15 14:11:08', NULL),
(1998, 'App\\Models\\User', 9, 'MxTEcBOz', '38ea3fe8c36d8c7e80698637e1285232d5e979a59da4eb8f41519b5e688d3c50', '[\"*\"]', '2023-11-15 14:11:10', '2023-11-15 14:11:08', '2023-11-15 14:11:10', NULL),
(1999, 'App\\Models\\User', 9, 'UXAAkcFQ', '9db768db49a088f9301ac3343857c3a49c1c7e0dc41b72af2f0352cd0e57ba07', '[\"*\"]', NULL, '2023-11-15 14:11:13', '2023-11-15 14:11:13', NULL),
(2000, 'App\\Models\\User', 9, 'wFo9jjFv', '4ba7dabf0e13a7c3af4696a6ed4850e73ca739bdb479bddcd37b42084bd0f281', '[\"*\"]', '2023-11-15 14:14:54', '2023-11-15 14:11:13', '2023-11-15 14:14:54', NULL),
(2001, 'App\\Models\\User', 9, 'O1dUs9ML', 'be46b38d732a01f55904c2bef0cc1019f31e1bb4badc887b9e576941f8810718', '[\"*\"]', NULL, '2023-11-15 14:15:16', '2023-11-15 14:15:16', NULL),
(2002, 'App\\Models\\User', 9, 'GyIT4UYt', 'fdcad0f38d83cabad95695a7a88cd12fc01a5426ed453d59d4108b3b85f1b610', '[\"*\"]', '2023-11-15 14:19:12', '2023-11-15 14:15:16', '2023-11-15 14:19:12', NULL),
(2003, 'App\\Models\\User', 9, '6K9g4Rmh', '5472550c7d7a31c70e78a704d50e101e72c820f9f2f9cb36d340ff774793549b', '[\"*\"]', '2023-11-15 14:21:26', '2023-11-15 14:19:11', '2023-11-15 14:21:26', NULL),
(2004, 'App\\Models\\User', 9, 'zEq2qsUk', 'c02b127489b1fc5368214305878bb2e72e2d9298eda51ad246a75d1b104cf7f4', '[\"*\"]', '2023-11-15 14:21:50', '2023-11-15 14:21:48', '2023-11-15 14:21:50', NULL),
(2005, 'App\\Models\\User', 9, 'XVeWx5Xc', '98e34e519922c2604b1ff07b3d90a69a1cb44677f1e430652af3b3fb81d955c2', '[\"*\"]', '2023-11-15 14:22:24', '2023-11-15 14:21:48', '2023-11-15 14:22:24', NULL),
(2006, 'App\\Models\\User', 9, '4ROMtNq2', 'e17aa4c816914032125c385e73645cc9c9a26ec6608b9af71e4962b04bcd246f', '[\"*\"]', '2023-11-15 14:22:37', '2023-11-15 14:22:25', '2023-11-15 14:22:37', NULL),
(2007, 'App\\Models\\User', 9, 'oUhxmtGE', '1cd1acc705c58fe2fcd0a1b4c11e00de67f4b71e4b6765a74964a26f1844c284', '[\"*\"]', '2023-11-15 14:27:19', '2023-11-15 14:22:38', '2023-11-15 14:27:19', NULL),
(2008, 'App\\Models\\User', 9, 'vCiVjBfH', '48b6f503619f80b399c447d44b340a55b2745345f8fd1c0482bd21aaa4e1dd15', '[\"*\"]', '2023-11-15 14:27:34', '2023-11-15 14:27:33', '2023-11-15 14:27:34', NULL),
(2009, 'App\\Models\\User', 9, 'vICrpzJ0', '9a0eeb3f7b794082ed47b1095417a751a963c9d45784c2a89f2ccaf0cd0d592d', '[\"*\"]', '2023-11-15 14:30:03', '2023-11-15 14:27:33', '2023-11-15 14:30:03', NULL),
(2010, 'App\\Models\\User', 9, 'rG6etJId', 'e096db5e459af48f77e6ec51ae527c66f61f0099c0f9627d3dbcd5370eb18c3e', '[\"*\"]', '2023-11-15 14:30:12', '2023-11-15 14:30:10', '2023-11-15 14:30:12', NULL),
(2011, 'App\\Models\\User', 9, 'PT5mG82Q', '35cd1028baffedb06ed0d8fe13a8912bc7702b7119655acaf929aeab7e690fea', '[\"*\"]', '2023-11-15 14:30:51', '2023-11-15 14:30:11', '2023-11-15 14:30:51', NULL),
(2012, 'App\\Models\\User', 9, 'od8x32WA', '58d9231772621df9a2de60a45de013880e859128c379299cbfb86031282ffb50', '[\"*\"]', '2023-11-15 14:31:54', '2023-11-15 14:30:59', '2023-11-15 14:31:54', NULL),
(2013, 'App\\Models\\User', 9, 'zMHlYn9C', 'f065ad7ea9f54e8ec6fc9595dd1fc81d4693c3054c7a2b12a578c13e8900ecf0', '[\"*\"]', NULL, '2023-11-15 14:30:59', '2023-11-15 14:30:59', NULL),
(2014, 'App\\Models\\User', 9, 'hqRAe65u', '965825fe7f07903d63d6c9d8ac7830051f2bb018202ac36cd487ca5e3ed45c84', '[\"*\"]', NULL, '2023-11-15 14:32:05', '2023-11-15 14:32:05', NULL),
(2015, 'App\\Models\\User', 9, 'mAyoi6aW', '0da91a2df45c22a65c26078e3ee92dc467c8bdeb12b3622709ceb5f649a3e406', '[\"*\"]', '2023-11-15 14:37:06', '2023-11-15 14:32:05', '2023-11-15 14:37:06', NULL),
(2016, 'App\\Models\\User', 9, 'fqHbg4G6', '540bde8731a9f7b8a00767dbd3cee5afae89d20326a4161d07064e80cab11f5e', '[\"*\"]', '2023-11-15 14:37:46', '2023-11-15 14:37:43', '2023-11-15 14:37:46', NULL),
(2017, 'App\\Models\\User', 9, 'p0qsBHEu', '75dd7487695c98f948f22de15a67d16e5a4015118d1c9072e447981641599574', '[\"*\"]', '2023-11-15 14:38:44', '2023-11-15 14:37:43', '2023-11-15 14:38:44', NULL),
(2018, 'App\\Models\\User', 9, 'BrS3oFiN', 'eb1df3a54fe18e71fe619a6d2171629ebf0c11f803496c9d510c5d2c5ec7d02c', '[\"*\"]', NULL, '2023-11-15 14:38:56', '2023-11-15 14:38:56', NULL),
(2019, 'App\\Models\\User', 9, 'ery1SJhf', '2a8a0b66e6bae8dcd8975e0c3bc8c5d7c8ea13525340462e5d307200ae92004a', '[\"*\"]', '2023-11-15 14:41:57', '2023-11-15 14:38:56', '2023-11-15 14:41:57', NULL),
(2020, 'App\\Models\\User', 9, 'e5qghhtW', '8e74dad53a26d0a1c23a9a603e45b6c264e93ccf85edec116ef8fc8163589d6e', '[\"*\"]', NULL, '2023-11-15 14:42:24', '2023-11-15 14:42:24', NULL),
(2021, 'App\\Models\\User', 9, 'PBJvk035', 'c16c141edba5f477473c1a387b422ccd7c5c0055da073e048a3ac899dea22bd6', '[\"*\"]', '2023-11-15 16:04:11', '2023-11-15 14:42:24', '2023-11-15 16:04:11', NULL),
(2022, 'App\\Models\\User', 9, 'DAz3FePF', 'dc228880fadd035f48b93fb679c5c1e3a3e0237455041ec10b3c5df43f8b663e', '[\"*\"]', '2023-11-15 14:56:36', '2023-11-15 14:56:35', '2023-11-15 14:56:36', NULL),
(2023, 'App\\Models\\User', 9, 'zXVvbSKy', '9e7011df4de7f55eea3af8f34e81a8201d2cc398bb7ab3e5a23e72b9eb0cc773', '[\"*\"]', '2023-11-15 14:59:28', '2023-11-15 14:56:35', '2023-11-15 14:59:28', NULL),
(2024, 'App\\Models\\User', 9, 'sPON86S0', '0d8c059bf7a37dba408aa6d1564d4172d04cff6346ec26e2d82d3467167de9fb', '[\"*\"]', '2023-11-15 14:59:46', '2023-11-15 14:59:43', '2023-11-15 14:59:46', NULL),
(2025, 'App\\Models\\User', 9, 'DxwovDH0', 'cec7d92c47e9ec0790fdadf24af7a6daef38b141312205387308d4e1a647dd41', '[\"*\"]', '2023-11-15 15:11:35', '2023-11-15 14:59:44', '2023-11-15 15:11:35', NULL),
(2026, 'App\\Models\\User', 9, 'CdRTa340', '2c630a08b3a93f0b5dc0ba2cd27ac8d82f24a133d87264afba2722af1fca86b3', '[\"*\"]', NULL, '2023-11-15 15:11:43', '2023-11-15 15:11:43', NULL),
(2027, 'App\\Models\\User', 9, 'FuTTwM7G', '2abbf59922f2f3c3c87a8ecbeda826ba2aa6544226476fffbb308e3d48b2e1b2', '[\"*\"]', '2023-11-15 15:15:34', '2023-11-15 15:11:43', '2023-11-15 15:15:34', NULL),
(2028, 'App\\Models\\User', 9, 'DuSA8vqx', '503d6d6fae2d878aa63b3df45ce4e33b3a66d64d299cfcdab71a98731dc8c3fb', '[\"*\"]', '2023-11-15 15:15:43', '2023-11-15 15:15:41', '2023-11-15 15:15:43', NULL),
(2029, 'App\\Models\\User', 9, 'HZM2qP2N', '4c06a5b4a18ce9a787d871848cbe1d31b78e239c43a21eb5eec04c73f56a630e', '[\"*\"]', '2023-11-15 15:19:15', '2023-11-15 15:15:42', '2023-11-15 15:19:15', NULL),
(2030, 'App\\Models\\User', 9, 'fudZQpze', '9285eb20c06cc4d55e3558100f47e333a799e855e0ef41eba9cdc448b20b4af8', '[\"*\"]', NULL, '2023-11-15 15:19:27', '2023-11-15 15:19:27', NULL),
(2031, 'App\\Models\\User', 9, 'wrmZocHu', '584adccc28b42b3675d97873932a5c5319eca0d4dbcebca2c924097db5e780c8', '[\"*\"]', '2023-11-15 15:23:29', '2023-11-15 15:19:27', '2023-11-15 15:23:29', NULL),
(2032, 'App\\Models\\User', 9, 'z8Heubes', 'c494fc34fdb8cce1f5f53afc38760ce32e4138091f8a8d6cf91a99e0bb8702e4', '[\"*\"]', NULL, '2023-11-15 15:23:40', '2023-11-15 15:23:40', NULL),
(2033, 'App\\Models\\User', 9, 'HBiOYJ7Y', 'e409952b4562495592458aa9bfb14806278cdb81d51285023f81d15917730f18', '[\"*\"]', '2023-11-15 15:25:40', '2023-11-15 15:23:40', '2023-11-15 15:25:40', NULL),
(2034, 'App\\Models\\User', 9, 'O5wCyO3F', '52c080146c4224b861d9b37cb708dd23b20afcaadcf916dca00fa3237491cff8', '[\"*\"]', NULL, '2023-11-15 15:26:15', '2023-11-15 15:26:15', NULL),
(2035, 'App\\Models\\User', 9, 'pCOrf6m3', '5ba65db93348ef707be76a80cbe5adf59114523e22cd0e1979d7b37830c4551b', '[\"*\"]', '2023-11-15 15:31:16', '2023-11-15 15:26:15', '2023-11-15 15:31:16', NULL),
(2036, 'App\\Models\\User', 9, 'ztAtti14', '6733f86da10a5186be8a6b223febf0b445592f5f0f9417b92120e998d8f8c727', '[\"*\"]', NULL, '2023-11-15 15:31:22', '2023-11-15 15:31:22', NULL),
(2037, 'App\\Models\\User', 9, '4jbd1HwP', '1bc7a7899691e49d42a3ea1b5d470dffc54c091a384bb525ed469f21da1ddb00', '[\"*\"]', '2023-11-15 15:38:53', '2023-11-15 15:31:22', '2023-11-15 15:38:53', NULL),
(2038, 'App\\Models\\User', 9, 'dyGN30cc', '6df05817cbc5d678c1be3effd39e0dd46b299808797aea68f3dee4db2d470b00', '[\"*\"]', '2023-11-15 15:39:08', '2023-11-15 15:39:07', '2023-11-15 15:39:08', NULL),
(2039, 'App\\Models\\User', 9, 'KI4YTPMb', 'c248038103561a32616efb13e171c041da3cd500ae8052041ecbcddc2c29d92a', '[\"*\"]', '2023-11-15 15:44:39', '2023-11-15 15:39:08', '2023-11-15 15:44:39', NULL),
(2040, 'App\\Models\\User', 9, 'Qc158oLp', '29c7901a2d416c29174603c748722d082469141a23a0bc6a686afa3bf1bfa2e4', '[\"*\"]', NULL, '2023-11-15 15:45:36', '2023-11-15 15:45:36', NULL),
(2041, 'App\\Models\\User', 9, 's3b4KiQK', '27201b9bdad430283b86a109da88b4d206575477368979a49adc73fab170dbbf', '[\"*\"]', '2023-11-15 15:45:37', '2023-11-15 15:45:36', '2023-11-15 15:45:37', NULL),
(2042, 'App\\Models\\User', 9, '613MxQ5b', '4e2d81ed6a780364252197e33efd63232dbd7d67d1b1dab6a0e49180fed218dd', '[\"*\"]', '2023-11-15 15:46:39', '2023-11-15 15:45:53', '2023-11-15 15:46:39', NULL),
(2043, 'App\\Models\\User', 9, 'sIipABW2', '75b97c3e122801793c3b2966d99f6c863ccc098feaf3d89b0fd486ce0573f876', '[\"*\"]', NULL, '2023-11-15 15:45:53', '2023-11-15 15:45:53', NULL),
(2044, 'App\\Models\\User', 9, 'IuuWHdIj', '09e136dc1ad6821f37d2179904420fb09f73eb384be8f585d900e0ab5d9a6f0d', '[\"*\"]', NULL, '2023-11-15 15:46:52', '2023-11-15 15:46:52', NULL),
(2045, 'App\\Models\\User', 9, 'TyXzE6p9', '16bc0a859db43aa8b53c5bae8f54fe11ebf39772e873bf24569f8afefd64746a', '[\"*\"]', '2023-11-15 15:47:05', '2023-11-15 15:46:52', '2023-11-15 15:47:05', NULL),
(2046, 'App\\Models\\User', 9, 'cGUNwq7l', 'b9b5ff5b177e51a0ebe142e6a9a0dda318d65b635403cb6416baba005c357c21', '[\"*\"]', NULL, '2023-11-15 15:47:15', '2023-11-15 15:47:15', NULL),
(2047, 'App\\Models\\User', 9, 'sRNc9rTO', '0d7f69f14844688bf88d340102eb57dc2ed35b4676181facb9039fe2af08a430', '[\"*\"]', '2023-11-15 15:47:26', '2023-11-15 15:47:15', '2023-11-15 15:47:26', NULL),
(2048, 'App\\Models\\User', 9, 'SoiLFNiN', '4e39e44f5e34d430cc016cf435d07eaeb84092540ab61a9e05e5e3dfb70f8cc0', '[\"*\"]', '2023-11-15 15:47:39', '2023-11-15 15:47:37', '2023-11-15 15:47:39', NULL),
(2049, 'App\\Models\\User', 9, '160EVras', '7dbed0223646e0aeb6b644a1dabcec589270d3da1712c87b16058c3b213a0551', '[\"*\"]', '2023-11-15 15:56:21', '2023-11-15 15:47:37', '2023-11-15 15:56:21', NULL),
(2050, 'App\\Models\\User', 9, 'FH2eAnl2', 'caa3e6065bb8d1ec65842837ca5755aa14dfb185ee2605905d46148437ab175b', '[\"*\"]', NULL, '2023-11-15 16:04:47', '2023-11-15 16:04:47', NULL),
(2051, 'App\\Models\\User', 9, 'Iikb2zcZ', '3c16088c47cf35e81324113182d044ffbd5ea413834b3a190ad2c740fa61aa21', '[\"*\"]', NULL, '2023-11-15 16:04:47', '2023-11-15 16:04:47', NULL),
(2052, 'App\\Models\\User', 9, 'qbDKD3is', '5e12ce148e2e76d8e46999f5090d75e99dc557fb869473fe8242eb7d396b31fb', '[\"*\"]', '2023-11-15 16:06:21', '2023-11-15 16:06:19', '2023-11-15 16:06:21', NULL),
(2053, 'App\\Models\\User', 9, 'WdMZKqnb', '18cf006fec1e7c0ae97dcc014cdaa4a7b0ba26ddc3908742e2612c479c63b1e5', '[\"*\"]', '2023-11-15 16:07:44', '2023-11-15 16:06:19', '2023-11-15 16:07:44', NULL),
(2054, 'App\\Models\\User', 9, '3lHm6N66', '43ff95cee6e8006bca1df329a548fda50f8dc2009d836a42cb3a9ad4cc1fad06', '[\"*\"]', '2023-11-15 16:07:57', '2023-11-15 16:07:56', '2023-11-15 16:07:57', NULL),
(2055, 'App\\Models\\User', 9, 'zmtX7AcA', '04dd9c712867daa83302319de1cc15fa33060ecd43694951ca69e521d86a5ce6', '[\"*\"]', '2023-11-15 16:10:51', '2023-11-15 16:07:56', '2023-11-15 16:10:51', NULL),
(2056, 'App\\Models\\User', 9, 'FNocudam', '01eae8fb59ce57c4d22c74e2245d041890ed55bff46fd20ff2ab07e573ade43a', '[\"*\"]', NULL, '2023-11-15 16:11:02', '2023-11-15 16:11:02', NULL),
(2057, 'App\\Models\\User', 9, 'QuiXRsBS', 'c3436f5d5049f07b4ad32ae724c53655e8c84552df4db2848ca2ec1fd641159d', '[\"*\"]', '2023-11-15 16:11:10', '2023-11-15 16:11:02', '2023-11-15 16:11:10', NULL),
(2058, 'App\\Models\\User', 9, 'sL5LPtV7', '1df4909ad8aa216f01ebbd34e95cda131eca9c17e7f60fc74a6a5562e6a15fde', '[\"*\"]', '2023-11-15 16:11:17', '2023-11-15 16:11:17', '2023-11-15 16:11:17', NULL),
(2059, 'App\\Models\\User', 9, '9OQpFebW', 'e3a7aabfc1d2f281b7bf730a72938ae02f4c21b5e042920a1ff53639e3b8ac2e', '[\"*\"]', '2023-11-15 16:11:58', '2023-11-15 16:11:17', '2023-11-15 16:11:58', NULL),
(2060, 'App\\Models\\User', 9, 'RwVkANsR', '9d2e2608cd60e09577b9d0c572ce90581b065056cc53d67dfaa2b716ab9d38bc', '[\"*\"]', '2023-11-15 16:12:51', '2023-11-15 16:11:59', '2023-11-15 16:12:51', NULL),
(2061, 'App\\Models\\User', 9, 'Vbgk0Aia', '42d77dc030e6ee6edb2989ac79c64eab9b5c03f60e9a2abbdae43821f982c0c5', '[\"*\"]', '2023-11-15 16:15:35', '2023-11-15 16:15:34', '2023-11-15 16:15:35', NULL),
(2062, 'App\\Models\\User', 9, 'UKdLCWah', '01be06530d16fce135dfcd0e4a6a2f88bf857c9073a7fd55c0f6ac3166c330f5', '[\"*\"]', '2023-11-15 16:15:36', '2023-11-15 16:15:34', '2023-11-15 16:15:36', NULL),
(2063, 'App\\Models\\User', 9, '4wjvHdqQ', '74030f8fb9d026135fec6dfc5295e236ce7b790625912724681d443e4d4dbd08', '[\"*\"]', NULL, '2023-11-15 16:17:12', '2023-11-15 16:17:12', NULL),
(2064, 'App\\Models\\User', 9, 'kCt7jbYK', '0a7192874fe2263488ece355bc610543661c5061cfc9d8a76320d8398af234bd', '[\"*\"]', NULL, '2023-11-15 16:17:12', '2023-11-15 16:17:12', NULL),
(2065, 'App\\Models\\User', 9, 'TAWCd4Kc', 'd5992f2b8b31d20f1381ab448cec6bfe5d804ca145227500741f92af4680a5ed', '[\"*\"]', NULL, '2023-11-15 16:18:29', '2023-11-15 16:18:29', NULL),
(2066, 'App\\Models\\User', 9, 'HAoFlKc0', '2d5a40025f8ea0e47286377b234204828c33439910ad648e7b4f7d910fe9d5e6', '[\"*\"]', NULL, '2023-11-15 16:18:29', '2023-11-15 16:18:29', NULL),
(2067, 'App\\Models\\User', 9, 'qNC1RLSL', 'a96a2b8c46167f39bbcd21cb363508ec6e149055a14a33f98b0d523d7348d76d', '[\"*\"]', NULL, '2023-11-15 16:20:07', '2023-11-15 16:20:07', NULL),
(2068, 'App\\Models\\User', 9, '9tvgDypn', '66fd947fb1c4526bd8e0fa7aecaf67afaac0a4d765033e054908b7e4c7772553', '[\"*\"]', NULL, '2023-11-15 16:20:07', '2023-11-15 16:20:07', NULL),
(2069, 'App\\Models\\User', 9, 'J46JltO8', '5c6674b374aad40f958a3bf2dfc970fe8321f93ebd49e69c97f68e9d6d58bb17', '[\"*\"]', NULL, '2023-11-15 16:20:14', '2023-11-15 16:20:14', NULL),
(2070, 'App\\Models\\User', 9, '4uhycXyz', '5c2aee25584f24a51e0c091810120da251ae8011dea566c12391296b7cf32410', '[\"*\"]', '2023-11-15 16:28:29', '2023-11-15 16:20:14', '2023-11-15 16:28:29', NULL),
(2071, 'App\\Models\\User', 9, '3Hp5PCTw', '146bb18a18995adb7d9d4080e1214571aa773731292083c66a4073ab4d6ce8f1', '[\"*\"]', '2023-11-15 16:28:34', '2023-11-15 16:28:32', '2023-11-15 16:28:34', NULL),
(2072, 'App\\Models\\User', 9, 'Sb4fPIzT', 'b6aa975085b3600c184957cba5f4cea9570978df3562f93313fcf6c2b56d657d', '[\"*\"]', '2023-11-15 16:36:27', '2023-11-15 16:28:33', '2023-11-15 16:36:27', NULL),
(2073, 'App\\Models\\User', 9, 'XofEIdRZ', '5687d375154b2b21c917a59b540c566dd33738b18c4fe48764625b4b8ef358d2', '[\"*\"]', NULL, '2023-11-15 16:36:42', '2023-11-15 16:36:42', NULL),
(2074, 'App\\Models\\User', 9, 'D65JX7Rh', '5e0ea84f3c4b15bdb3700f77e4ea7ff8e1ee52b240332c455b5248f646136f13', '[\"*\"]', '2023-11-15 16:36:43', '2023-11-15 16:36:42', '2023-11-15 16:36:43', NULL),
(2075, 'App\\Models\\User', 9, 'ATpy0S7l', 'acfcecbf7a8e4f469d8d41e48e6e031ec6d4a56217f0783c130c3bf44cb20e4f', '[\"*\"]', '2023-11-15 16:36:54', '2023-11-15 16:36:53', '2023-11-15 16:36:54', NULL),
(2076, 'App\\Models\\User', 9, 'O3fUy6pk', 'a257e741a4caced5c09122570b08359293fa756496a242ff3e172c9ce3691086', '[\"*\"]', '2023-11-15 16:37:08', '2023-11-15 16:36:53', '2023-11-15 16:37:08', NULL),
(2077, 'App\\Models\\User', 9, 'Lpq03QkX', '955104371e319113ef9d6a88d32085ef78cdd17097e7d595f9d3ef0dc608f454', '[\"*\"]', NULL, '2023-11-16 09:47:19', '2023-11-16 09:47:19', NULL),
(2078, 'App\\Models\\User', 9, 'GkB14aM3', '20d249af8801f04c2b287315f94dab90c5a994fda4f90e90b5548f5ef5fb8ef5', '[\"*\"]', '2023-11-16 09:47:31', '2023-11-16 09:47:19', '2023-11-16 09:47:31', NULL),
(2079, 'App\\Models\\User', 9, 'ONgrBeWx', 'b0231840948b39703022839ba3491c4d7568e363e93b71d4fcd3f8680b30dd33', '[\"*\"]', NULL, '2023-11-16 09:48:26', '2023-11-16 09:48:26', NULL),
(2080, 'App\\Models\\User', 9, '3MQdQ8Bz', '228d13eb1c3feee69c1a74991744aa5ffc76650afff2fdecc814c758da4b4e32', '[\"*\"]', '2023-11-16 09:48:37', '2023-11-16 09:48:26', '2023-11-16 09:48:37', NULL),
(2081, 'App\\Models\\User', 9, 'vHj7JtZs', '621b5c1480833fb8b06deb3187ee39c84488eca282af6eb6b4dbcb6247a07a0d', '[\"*\"]', '2023-11-16 09:54:44', '2023-11-16 09:48:43', '2023-11-16 09:54:44', NULL),
(2082, 'App\\Models\\User', 9, 'rhTcu5cv', 'b5c9ad63f4a72612993422d53249b0ffa551b0689ed48231cbc0bdde62b9595b', '[\"*\"]', '2023-11-16 09:48:44', '2023-11-16 09:48:43', '2023-11-16 09:48:44', NULL),
(2083, 'App\\Models\\User', 9, 'OQtpVzYx', 'affa5b4d2815765592644427dbf6fe4040d106e0e8a33fc48440d75e4ba42849', '[\"*\"]', '2023-11-16 09:55:27', '2023-11-16 09:55:26', '2023-11-16 09:55:27', NULL),
(2084, 'App\\Models\\User', 9, 'wB8WqLRJ', 'cf087f782b463d340a313340ffedf7b468ac599ece50e79b0843b1f8601c3d37', '[\"*\"]', '2023-11-16 09:59:07', '2023-11-16 09:55:26', '2023-11-16 09:59:07', NULL),
(2085, 'App\\Models\\User', 9, 'pSHETTTv', 'aa3b35570a3b70391529e11d8c999397f237d4bec52a5ef70851f6f120f89ed3', '[\"*\"]', '2023-11-16 10:15:20', '2023-11-16 09:59:27', '2023-11-16 10:15:20', NULL),
(2086, 'App\\Models\\User', 9, 'RxnABshU', '6a712d92971dce6df0231a466bd66a8178555c22ebeb230f50ee3ac35289887c', '[\"*\"]', '2023-11-16 09:59:29', '2023-11-16 09:59:27', '2023-11-16 09:59:29', NULL),
(2087, 'App\\Models\\User', 9, 'nC4LrSjU', 'f80f2c55b63e0647f91280fb6ab407e295dd234bfcca520825d04291273ca16e', '[\"*\"]', NULL, '2023-11-16 10:15:31', '2023-11-16 10:15:31', NULL),
(2088, 'App\\Models\\User', 9, 'kdLs3Fil', 'e055f620f37f7a65ed18878b2d7fa5cdaf426a89fa6d6b9337a76ac1fb452728', '[\"*\"]', '2023-11-16 10:18:30', '2023-11-16 10:15:31', '2023-11-16 10:18:30', NULL),
(2089, 'App\\Models\\User', 9, 'bIH5PSSM', '4bd0c38fa0b19009745451312018220dee10dc1f45da380a1d501dac088a4251', '[\"*\"]', '2023-11-16 10:18:47', '2023-11-16 10:18:46', '2023-11-16 10:18:47', NULL),
(2090, 'App\\Models\\User', 9, 'nZ6Vq5nG', '4ab79ea98559c1f206ced1ef675c571b4121c2132985c0eaac054cb9b356b44c', '[\"*\"]', '2023-11-16 10:23:51', '2023-11-16 10:18:46', '2023-11-16 10:23:51', NULL),
(2091, 'App\\Models\\User', 9, 'AOworytd', '83d1fd04f6cd13f4ac1ca02d7f18664bfc55656ec48378d97da292f381203ca2', '[\"*\"]', '2023-11-16 10:32:05', '2023-11-16 10:23:50', '2023-11-16 10:32:05', NULL),
(2092, 'App\\Models\\User', 9, 'zZEHfjsp', '343f0aa506dbd15da42a0b1ea844ec365f9b2129fb7fa01b271b765d30d52ea4', '[\"*\"]', NULL, '2023-11-16 10:32:43', '2023-11-16 10:32:43', NULL),
(2093, 'App\\Models\\User', 9, 'BbN9Ti5Y', 'dead3b93611d86133a03c64e1289d47d4f3b2668f1f02f8d580e35506dce00e9', '[\"*\"]', NULL, '2023-11-16 10:33:54', '2023-11-16 10:33:54', NULL),
(2094, 'App\\Models\\User', 9, 'tACCPsfK', '1138d49f2cb9ada233b3963125fa326b5c15e305a56e1f8ac0e5331c98fa5c96', '[\"*\"]', NULL, '2023-11-16 10:33:54', '2023-11-16 10:33:54', NULL),
(2095, 'App\\Models\\User', 9, 'elXRw5gq', 'eb3cb8845bc7ce9a5c9e528a1a6832d21b3e4b82b299557def91179529456c72', '[\"*\"]', NULL, '2023-11-16 10:35:08', '2023-11-16 10:35:08', NULL),
(2096, 'App\\Models\\User', 9, 'O2UfB4qk', 'bb402ed7c7e598b6590ffdb671a7e1f149dd497ab5946cd5d0d1e54cc5ab546f', '[\"*\"]', NULL, '2023-11-16 10:35:08', '2023-11-16 10:35:08', NULL),
(2097, 'App\\Models\\User', 9, '5Am6jjBQ', 'a681e6b8075be8e32481fec76f02c080de5f230dfa5917125491bcf392c8de97', '[\"*\"]', NULL, '2023-11-16 10:35:13', '2023-11-16 10:35:13', NULL),
(2098, 'App\\Models\\User', 9, 'E0FJGARH', 'cd8236d80e10b75db1737fca8d1bfd5222e7e6026119eb1d460b696a36819cb2', '[\"*\"]', NULL, '2023-11-16 10:35:13', '2023-11-16 10:35:13', NULL),
(2099, 'App\\Models\\User', 9, '7iswyg0x', 'e2049476cdfbcc8fbdf5389f4562247bc52723ee79e175e9f8a7f736f9d09f82', '[\"*\"]', NULL, '2023-11-16 10:35:38', '2023-11-16 10:35:38', NULL),
(2100, 'App\\Models\\User', 9, 'tfIIFM0j', 'bc99ec6de310408a70f26ea03e7c2252f35a7edb8e2c1d3cce148c1f23d77626', '[\"*\"]', NULL, '2023-11-16 10:36:32', '2023-11-16 10:36:32', NULL),
(2101, 'App\\Models\\User', 9, 'B2DbNxey', 'c2ab144e54e86a413517371f57a64580ff8ce8d4d2fbb82419eab796d70d2eb9', '[\"*\"]', '2023-11-16 10:37:12', '2023-11-16 10:36:32', '2023-11-16 10:37:12', NULL),
(2102, 'App\\Models\\User', 9, '5bYh7cuq', 'e03f6d11cc383b426f583a5bbdf1da0b8dfb8e1a90de567260728e1dc3d100fb', '[\"*\"]', NULL, '2023-11-16 10:37:32', '2023-11-16 10:37:32', NULL),
(2103, 'App\\Models\\User', 9, 'naKCuoY1', '186648cc1aa7362ceef374c12fa33691aa5489a3eb4ab107c95c587b4835796f', '[\"*\"]', '2023-11-16 10:38:14', '2023-11-16 10:37:32', '2023-11-16 10:38:14', NULL),
(2104, 'App\\Models\\User', 9, '3EENmZ0D', '224e001d3ff7052b51e14dd08929bc13aebd35b812ba6a1ea19881291b9e56d2', '[\"*\"]', '2023-11-16 10:38:18', '2023-11-16 10:38:14', '2023-11-16 10:38:18', NULL),
(2105, 'App\\Models\\User', 9, 'I4ze98zl', 'd393d14294d71350dfcd31d0588b1bcad019ff9962ebff140898b32358d28b00', '[\"*\"]', NULL, '2023-11-16 10:38:36', '2023-11-16 10:38:36', NULL),
(2106, 'App\\Models\\User', 9, 'GnrRlGA7', '5f871c80bfee3d67942030012fb31d39d5b9951be6b40508589c3d4e35536a58', '[\"*\"]', NULL, '2023-11-16 10:38:36', '2023-11-16 10:38:36', NULL),
(2107, 'App\\Models\\User', 9, 'jBqQKBD9', '2b0795125dd5a4c786b758c1dfc2ce6cf6513aab40a1813ed9d81f9ac9a6a978', '[\"*\"]', NULL, '2023-11-16 10:39:38', '2023-11-16 10:39:38', NULL),
(2108, 'App\\Models\\User', 9, 'gthCyDC6', 'a9cd9c3e7ea1f53bbae218bf31db3b7b107d512073fa1243731912551bf2b5f5', '[\"*\"]', NULL, '2023-11-16 10:39:38', '2023-11-16 10:39:38', NULL),
(2109, 'App\\Models\\User', 9, 'XmDYvJda', '84082b978a0faa609e66fb8ac869dea7bba36cfb096725e0a0c0d4fd942a23f8', '[\"*\"]', NULL, '2023-11-16 10:39:59', '2023-11-16 10:39:59', NULL),
(2110, 'App\\Models\\User', 9, 'UR9WI5gS', '40470997f80b29ad1d8fa5fe32962126130fd2e8c0b77b93c046fd435906dcc0', '[\"*\"]', NULL, '2023-11-16 10:40:00', '2023-11-16 10:40:00', NULL),
(2111, 'App\\Models\\User', 9, 'm6KwItwQ', '1865a0d5f0194c938a6580084ded008f62d0b890280ecfa9c91573dc4c9e04b6', '[\"*\"]', NULL, '2023-11-16 10:40:28', '2023-11-16 10:40:28', NULL),
(2112, 'App\\Models\\User', 9, '3pbJUtQT', 'f3ea09dcfb4c02b50fa7a245bb98e82d2e76acb570298ad052af88be76d9e758', '[\"*\"]', NULL, '2023-11-16 10:41:22', '2023-11-16 10:41:22', NULL),
(2113, 'App\\Models\\User', 9, 'EmTlSXVD', 'b919b6bd3e47988ae5c849c624f588ed8dbc780f8099d4863459154399dad125', '[\"*\"]', NULL, '2023-11-16 10:41:22', '2023-11-16 10:41:22', NULL),
(2114, 'App\\Models\\User', 9, 'H5IsTVzV', 'dd3f41dba7b2a12bea996ecf1da6de834709e60c910dea1bcb4fd7fc84e53516', '[\"*\"]', NULL, '2023-11-16 10:42:46', '2023-11-16 10:42:46', NULL),
(2115, 'App\\Models\\User', 9, 'k1pR92hh', 'f5a5d0f72713b9815d2441ca2a5f5510d0616b10787fcbd8d7d30663530e48cd', '[\"*\"]', '2023-11-16 10:53:12', '2023-11-16 10:42:46', '2023-11-16 10:53:12', NULL),
(2116, 'App\\Models\\User', 9, 'RDPeIfjs', '0d3709779dc11fd39ef9370f1b354be80a8e270cd2728b00f8dfd9af838589f7', '[\"*\"]', '2023-11-16 10:54:23', '2023-11-16 10:54:21', '2023-11-16 10:54:23', NULL),
(2117, 'App\\Models\\User', 9, 'g4UTrxgk', '4897c8b73961ffe279626b11d4f16c7ac7a69b6e7c9367d496581e6954078b53', '[\"*\"]', '2023-11-16 10:58:43', '2023-11-16 10:54:21', '2023-11-16 10:58:43', NULL),
(2118, 'App\\Models\\User', 9, 'S7LrRwN3', 'fc8c23edb48d3cfd54d6396425cf368728d2a2c9ce60309ca814a9227f911399', '[\"*\"]', NULL, '2023-11-16 10:59:54', '2023-11-16 10:59:54', NULL),
(2119, 'App\\Models\\User', 9, 'k17cw5bA', '32ab40cc783708ffd4225358dcdab11b5ee679f03c2f0336db713f821d73b91c', '[\"*\"]', NULL, '2023-11-16 10:59:54', '2023-11-16 10:59:54', NULL),
(2120, 'App\\Models\\User', 9, 'YaWMTyzE', '819cf23efc4012190c5a1f322315866836ea69b7be1a9b3412aab1b220c725cf', '[\"*\"]', NULL, '2023-11-16 11:02:19', '2023-11-16 11:02:19', NULL),
(2121, 'App\\Models\\User', 9, 'wLNDwJQI', 'ecffced9b26a54a524e2b9536e3b39098badd89cb1d0b44060757043167b3e67', '[\"*\"]', NULL, '2023-11-16 11:02:47', '2023-11-16 11:02:47', NULL),
(2122, 'App\\Models\\User', 9, 'SwSStRJg', '6a0beb6f734975828a6e77aa98d5bba32428c72d0f1d1ef917ca1928fb35515f', '[\"*\"]', '2023-11-16 11:23:50', '2023-11-16 11:02:47', '2023-11-16 11:23:50', NULL),
(2123, 'App\\Models\\User', 9, '7St836oK', '6f5a36a0ef9ceb59c1baddd0487c6a547bc774cef445921b704586488c324930', '[\"*\"]', NULL, '2023-11-16 11:23:59', '2023-11-16 11:23:59', NULL),
(2124, 'App\\Models\\User', 9, '1OZzQGjy', 'dc3a08610eb4941e52efd999826056117fc7b2250d8d9d06ad0a7f9d7296d3f5', '[\"*\"]', NULL, '2023-11-16 11:25:38', '2023-11-16 11:25:38', NULL),
(2125, 'App\\Models\\User', 2, 'wjncMDXv', 'f51d96c8ffbd498528cb7ddb4dacc8cb3030eb3efa00102579068bc8c7e79d58', '[\"*\"]', '2023-11-19 11:29:58', '2023-11-16 11:26:35', '2023-11-19 11:29:58', NULL),
(2126, 'App\\Models\\User', 9, 'ebt5frUw', 'f1787f23c3030234f35c1683de3e1b6201779a24f61f4964d098381c76584347', '[\"*\"]', NULL, '2023-11-16 11:26:57', '2023-11-16 11:26:57', NULL),
(2127, 'App\\Models\\User', 9, 'Wo7dbIOg', '5e6f2c1fdac7d31d90fccbd24d88e3c1951c86e8cb9666c3b7623354cc773c14', '[\"*\"]', '2023-11-16 11:27:18', '2023-11-16 11:26:57', '2023-11-16 11:27:18', NULL),
(2128, 'App\\Models\\User', 9, 'njqS5Go2', 'f9d8af4b20770459a2b16be449b5ada7341957dd66cd85d02b90a23282496690', '[\"*\"]', NULL, '2023-11-16 11:27:24', '2023-11-16 11:27:24', NULL),
(2129, 'App\\Models\\User', 9, 'xJa1t4Uy', 'd8b6325e57c737061cbe4b6d5f70bedd6868e5b89aa1325f7f9473000a41c7fd', '[\"*\"]', '2023-11-16 11:31:43', '2023-11-16 11:27:24', '2023-11-16 11:31:43', NULL),
(2130, 'App\\Models\\User', 9, 'Lfi6PFou', 'b27580cf5af1aa7760c172bcb16ef3ce4284cd3baca502759785b7cabbe46fc5', '[\"*\"]', NULL, '2023-11-16 11:27:27', '2023-11-16 11:27:27', NULL),
(2131, 'App\\Models\\User', 9, 'h8huGBvp', 'c838ec895f195edf33df770cbbb8b7c0435f3e91bfc87a367ca535745607f816', '[\"*\"]', '2023-11-16 11:27:40', '2023-11-16 11:27:27', '2023-11-16 11:27:40', NULL),
(2132, 'App\\Models\\User', 9, 'fTnNsuTi', 'cc9b756e7bf3e40a2f62fa6b03a7e66cbe77f45b213364463dd0984198ec7674', '[\"*\"]', NULL, '2023-11-16 11:28:04', '2023-11-16 11:28:04', NULL),
(2133, 'App\\Models\\User', 9, 'vKD2c4g3', '5803fcc5d16257870ff3993f970b6b677ab7711ead17e462f22772f5d7d760a7', '[\"*\"]', '2023-11-16 11:31:11', '2023-11-16 11:28:04', '2023-11-16 11:31:11', NULL),
(2134, 'App\\Models\\User', 9, 'zLvlVlCu', '6c98d89100ea75dafff7deb7eaeca72766a029cefd979b34d1e6dce500bc9044', '[\"*\"]', NULL, '2023-11-16 11:31:31', '2023-11-16 11:31:31', NULL),
(2135, 'App\\Models\\User', 9, '82AN4b3l', '238118b969877c62f209df2644240de2f95775c9cafc7da67a8168f61864f1d9', '[\"*\"]', '2023-11-16 11:40:18', '2023-11-16 11:31:31', '2023-11-16 11:40:18', NULL),
(2136, 'App\\Models\\User', 9, 'A5yEf4Pe', 'bcfb839e509b442a34fb0391cd50232d4188be46d9b6a6c1c461fb28516bba82', '[\"*\"]', NULL, '2023-11-16 11:31:58', '2023-11-16 11:31:58', NULL),
(2137, 'App\\Models\\User', 9, 'WnpTGSGA', 'fab20f6e82c7f47fe419b6a7ceff43f278bbd50f0448588d8132e2e033a49399', '[\"*\"]', '2023-11-16 11:37:35', '2023-11-16 11:31:58', '2023-11-16 11:37:35', NULL),
(2138, 'App\\Models\\User', 9, 'pqVaooZv', 'd745e53910108135fe5fd0684837057527854caf3265ef18ae76db78c1e2e4b9', '[\"*\"]', '2023-11-16 11:37:47', '2023-11-16 11:37:47', '2023-11-16 11:37:47', NULL),
(2139, 'App\\Models\\User', 9, 'b3AzftaS', '0c79c9b608e8ad073989244e5577eed6e8d394c1e1ced94d1ac0b2b08f79d1a9', '[\"*\"]', '2023-11-16 11:47:16', '2023-11-16 11:37:47', '2023-11-16 11:47:16', NULL),
(2140, 'App\\Models\\User', 9, 'RePtLDZ0', '9436cbe25b294fdc4e65a7684e99a0b359ef347e8b71e0d1175da696d81cdb6b', '[\"*\"]', '2023-11-16 11:40:41', '2023-11-16 11:40:40', '2023-11-16 11:40:41', NULL),
(2141, 'App\\Models\\User', 9, 'rqWtu9gE', '4799bd7acb5a03708659f97967d26956be2005e57a7e49c3b447363dd1cf1607', '[\"*\"]', '2023-11-16 11:42:33', '2023-11-16 11:40:40', '2023-11-16 11:42:33', NULL),
(2142, 'App\\Models\\User', 9, 'NXbInM54', '3d0712f56683e1f811869e77570582e4ec1130e24d154caafec6f94b9ae7c055', '[\"*\"]', '2023-11-16 11:42:55', '2023-11-16 11:42:54', '2023-11-16 11:42:55', NULL),
(2143, 'App\\Models\\User', 9, 'yL2OreeO', 'eda99d1be916e59564a539506b101cf6882a53ea3c6fcec1c67931b3da13301e', '[\"*\"]', '2023-11-16 11:46:17', '2023-11-16 11:42:54', '2023-11-16 11:46:17', NULL),
(2144, 'App\\Models\\User', 9, 'JjBJieB7', 'dac04c7ee2bdbe320d121584179e9d8e0123a6f071a503e7d08b2b7c149794c9', '[\"*\"]', NULL, '2023-11-16 11:46:28', '2023-11-16 11:46:28', NULL),
(2145, 'App\\Models\\User', 9, 'GkbWsXhv', '9a42187ab6dfb7e511221eb31c084641c626adbe646d4c2b8613b3b3cadc21fc', '[\"*\"]', '2023-11-16 11:52:19', '2023-11-16 11:46:28', '2023-11-16 11:52:19', NULL),
(2146, 'App\\Models\\User', 9, '7hz1Aw96', 'e8a50ce2dbda811e32ff28e6708993c3e32cc71cd522c5c60a3468d098d4881d', '[\"*\"]', NULL, '2023-11-16 11:47:17', '2023-11-16 11:47:17', NULL),
(2147, 'App\\Models\\User', 9, '2nh4SFVj', 'd034e5dc8daa322d3a46eb1e45f648a9007095526298223c540766c1a2c905d4', '[\"*\"]', NULL, '2023-11-16 11:47:17', '2023-11-16 11:47:17', NULL),
(2148, 'App\\Models\\User', 9, 'eHJMN3g7', '8b9e8d914b9d05abd474cce546248363b1f761ccc9404a88aaca6fd6492a82ee', '[\"*\"]', NULL, '2023-11-16 11:47:17', '2023-11-16 11:47:17', NULL),
(2149, 'App\\Models\\User', 9, 'WknLPHan', 'ec34d3e8a080e2d6c3b26c178ab2ee8ce60989ce079dc5c11f1e4e42b720761f', '[\"*\"]', NULL, '2023-11-16 11:47:17', '2023-11-16 11:47:17', NULL);
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2150, 'App\\Models\\User', 9, 'p9HkNA9y', '9974a5240676587cc619c1424c7632ccd92ea02cb32d1094007955da135b431b', '[\"*\"]', NULL, '2023-11-16 11:47:18', '2023-11-16 11:47:18', NULL),
(2151, 'App\\Models\\User', 9, 'm2GQ11BX', '262c11d789d30fd32f877e92e4fc4c7d53d4e2b3345078f6eabf3368dbb5ffb0', '[\"*\"]', '2023-11-16 11:47:20', '2023-11-16 11:47:18', '2023-11-16 11:47:20', NULL),
(2152, 'App\\Models\\User', 9, 'Nk5xIAbk', 'ae6bcc3bc901e59f0f2e709bce91697c044fe5b44e1b73c64b9cbd0f97633cba', '[\"*\"]', NULL, '2023-11-16 11:47:40', '2023-11-16 11:47:40', NULL),
(2153, 'App\\Models\\User', 9, '83UkVael', '1fec452f2fa0defa516e4266f418011c854d981f2add54c05b0be039fcc9f181', '[\"*\"]', '2023-11-16 11:50:02', '2023-11-16 11:47:40', '2023-11-16 11:50:02', NULL),
(2154, 'App\\Models\\User', 9, 'JNEBUdi6', '01cf6a4e9af4aa3f94ed5773a26564c48b418de8667b5cc7a59be46f342ca925', '[\"*\"]', NULL, '2023-11-16 11:50:10', '2023-11-16 11:50:10', NULL),
(2155, 'App\\Models\\User', 9, 'sviz0lnh', 'a7e1faefd7b0ec261c8f14af49ea60b94a33e7b8db7b64c4498f3566901f1b04', '[\"*\"]', '2023-11-16 11:59:58', '2023-11-16 11:50:10', '2023-11-16 11:59:58', NULL),
(2156, 'App\\Models\\User', 9, 'skhVpufl', 'c26de31403db3cd9db9f2e85ae19d76986e06b074163c3ad4ede96383efcb0e3', '[\"*\"]', '2023-11-16 11:52:27', '2023-11-16 11:52:26', '2023-11-16 11:52:27', NULL),
(2157, 'App\\Models\\User', 9, 'VjDcb9K7', 'bfd1659cfc97ecbe2031a5a03f85935156235c9239d572212310e89641bd5f72', '[\"*\"]', '2023-11-16 12:09:57', '2023-11-16 11:52:26', '2023-11-16 12:09:57', NULL),
(2158, 'App\\Models\\User', 9, 'eCXbFfTa', '005afeea72f7b847480f1bcfc5157a8a0a5e1eeb35fc98d5b7cc685bc760ceb9', '[\"*\"]', '2023-11-16 12:00:25', '2023-11-16 12:00:24', '2023-11-16 12:00:25', NULL),
(2159, 'App\\Models\\User', 9, 'c5u523cq', '697aa12c529f265a5277c9bd42d0d7eb010cf0ba9419628be8b2c303961fac1e', '[\"*\"]', '2023-11-16 12:08:16', '2023-11-16 12:00:24', '2023-11-16 12:08:16', NULL),
(2160, 'App\\Models\\User', 9, 'xjbeMQJj', 'ecf79cd18405727b2d097ab0cb9f174be938cd5d2d6d225658cc22c7f1b155ab', '[\"*\"]', NULL, '2023-11-16 12:09:20', '2023-11-16 12:09:20', NULL),
(2161, 'App\\Models\\User', 9, '2Kh6Lh07', 'c0d9aaabcd5b3a77365aa0435f6ff89805f1e4b180ec535bb4d9a2fb87914ad6', '[\"*\"]', '2023-11-16 12:13:12', '2023-11-16 12:09:21', '2023-11-16 12:13:12', NULL),
(2162, 'App\\Models\\User', 9, '10jvOOTf', 'f078e6279fc441411adbcafcb1ecfc61977ef5b7c8f62d585d793db84fe3a6ff', '[\"*\"]', '2023-11-16 12:10:07', '2023-11-16 12:10:06', '2023-11-16 12:10:07', NULL),
(2163, 'App\\Models\\User', 9, 'GzkLNTSm', '2f2bb5703010c7e4610b82f1259b9f9178eef0c2f63c831e7dcf42023a948815', '[\"*\"]', '2023-11-16 12:45:13', '2023-11-16 12:10:06', '2023-11-16 12:45:13', NULL),
(2164, 'App\\Models\\User', 9, 'fsRGQ0qb', '521a70a959df4f8f1f5323bc60d470471b8f70d483a5f1b222d5c14647c691c3', '[\"*\"]', '2023-11-16 12:13:40', '2023-11-16 12:13:37', '2023-11-16 12:13:40', NULL),
(2165, 'App\\Models\\User', 9, 'kHRqKebg', 'eeb55e037816a1d8d6ad2a859067d1fa9df6b0edb17df9b0d0bcd0351da67518', '[\"*\"]', '2023-11-16 12:27:13', '2023-11-16 12:13:37', '2023-11-16 12:27:13', NULL),
(2166, 'App\\Models\\User', 9, 'nW3I4hbO', '3b8fd90a28812547c0acad3de2aa2feae89427c960b91353ef369178e978cab4', '[\"*\"]', '2023-11-16 12:27:20', '2023-11-16 12:27:19', '2023-11-16 12:27:20', NULL),
(2167, 'App\\Models\\User', 9, '7UZU798M', 'aec2d0040c08d4c8aabd38cccaef54265e10894d2d8448d071f5267a266c9c29', '[\"*\"]', '2023-11-16 12:47:27', '2023-11-16 12:27:19', '2023-11-16 12:47:27', NULL),
(2168, 'App\\Models\\User', 9, 'MUOQYfen', '97d5a9cbbaa0531eecf0908234991cac22ccef3496ea554e31a07ec6cd15ef9e', '[\"*\"]', '2023-11-16 12:49:27', '2023-11-16 12:49:27', '2023-11-16 12:49:27', NULL),
(2169, 'App\\Models\\User', 9, 'qv8SbfXH', '710a77ccd1ebdc912ce664c6cbb16e0a2ab0d871e877b38347e880468a6b9c47', '[\"*\"]', '2023-11-16 12:49:29', '2023-11-16 12:49:27', '2023-11-16 12:49:29', NULL),
(2170, 'App\\Models\\User', 9, 'VH55Nv6D', '4aa33a7a6b8a5476c42a2d5588c262084a8e25db62452e2db1c2d2d3e51c0b24', '[\"*\"]', NULL, '2023-11-16 12:57:39', '2023-11-16 12:57:39', NULL),
(2171, 'App\\Models\\User', 9, '68H98nCN', 'b68aa8708ed80a565068af7b73a5510d69e09bbbcc444e06257a4f43fff499a5', '[\"*\"]', '2023-11-16 12:57:41', '2023-11-16 12:57:39', '2023-11-16 12:57:41', NULL),
(2172, 'App\\Models\\User', 9, 'xJWeA5lf', '37568ee7ebc5b61b7a12b1bd6eb3f45f0614b27578f7f077bd2b72869df66375', '[\"*\"]', NULL, '2023-11-16 12:58:19', '2023-11-16 12:58:19', NULL),
(2173, 'App\\Models\\User', 9, 'DMIr25hQ', 'b15c63446e9e11fed9abbe3a66e3c332e680c0bcd00c5928e17dc69702c8e30d', '[\"*\"]', '2023-11-16 12:58:51', '2023-11-16 12:58:19', '2023-11-16 12:58:51', NULL),
(2174, 'App\\Models\\User', 9, 'nmQS3Eyc', '856d6625184f68cb904ee0ae3d50efa172739409c1abc94e2897f080b0cb882e', '[\"*\"]', '2023-11-16 12:59:03', '2023-11-16 12:59:02', '2023-11-16 12:59:03', NULL),
(2175, 'App\\Models\\User', 9, 'Ijku5Nwx', 'f65e5540b535727148ecd9f851086ace6c5963b67aca58c9201d9e4caee436df', '[\"*\"]', NULL, '2023-11-16 12:59:02', '2023-11-16 12:59:02', NULL),
(2176, 'App\\Models\\User', 9, 'g8I5V9Gf', '595395b524d2e217f292bcc4b3421c129fb5afce466816658614143c55edb57f', '[\"*\"]', '2023-11-16 13:00:06', '2023-11-16 13:00:05', '2023-11-16 13:00:06', NULL),
(2177, 'App\\Models\\User', 9, 'Wh34JS71', 'e5c6e55805e67f0867bdc3ef8d7233deda5285e04d3010606e5dda3737705a8b', '[\"*\"]', '2023-11-16 13:00:07', '2023-11-16 13:00:05', '2023-11-16 13:00:07', NULL),
(2178, 'App\\Models\\User', 9, 'SCCEJc26', '952a728a29d47eae1fabc13a458e469197d4fcc302512b7c4132883b9a69b394', '[\"*\"]', NULL, '2023-11-16 13:00:14', '2023-11-16 13:00:14', NULL),
(2179, 'App\\Models\\User', 9, 'huGNQHrL', '73aecb612f5d4f3b58922592329857b7466aba33edd52f37cf3408144c1d1af5', '[\"*\"]', '2023-11-16 13:09:53', '2023-11-16 13:00:14', '2023-11-16 13:09:53', NULL),
(2180, 'App\\Models\\User', 9, '9OjZMCId', 'c5dbaeed85f6666895ff4cd5e491120360f16a69f154199a05dff0b66727d357', '[\"*\"]', '2023-11-16 13:10:04', '2023-11-16 13:10:04', '2023-11-16 13:10:04', NULL),
(2181, 'App\\Models\\User', 9, 'lc0Oxnph', 'dc785483a02108b3c84e4f4a68bbd780159cbc40d85bd320a31f72417f5b0ab6', '[\"*\"]', NULL, '2023-11-16 13:10:04', '2023-11-16 13:10:04', NULL),
(2182, 'App\\Models\\User', 9, 'qtsB0q1m', 'f1ca3f8bdb75f1fa7eb90f31be986da13301d8191b49cdc2590e9c60c38c4e2a', '[\"*\"]', NULL, '2023-11-16 13:10:09', '2023-11-16 13:10:09', NULL),
(2183, 'App\\Models\\User', 9, '1kdUwoB4', '91e21d21395f472318059aa40a24da8656687d224a16ca8840b45dc0699ee622', '[\"*\"]', '2023-11-16 13:13:10', '2023-11-16 13:10:09', '2023-11-16 13:13:10', NULL),
(2184, 'App\\Models\\User', 9, 'FoPBXp4T', '22d97d3e388e0ab5b57198b945ed6de4e87d2e3bf937f225fd2c58cd712c1c04', '[\"*\"]', '2023-11-16 13:13:23', '2023-11-16 13:13:21', '2023-11-16 13:13:23', NULL),
(2185, 'App\\Models\\User', 9, 'wA3Uz73A', '0bdad621b087707578b85b927f575c125dd125fa2313fcc7e2f8c8b7743ab131', '[\"*\"]', '2023-11-16 13:16:00', '2023-11-16 13:13:21', '2023-11-16 13:16:00', NULL),
(2186, 'App\\Models\\User', 9, '5M9LyMwC', 'eef9e0ef7e746f6682aa2e6e831ebbee99bbf6eb5de2fa900158c1626830f704', '[\"*\"]', NULL, '2023-11-16 13:16:06', '2023-11-16 13:16:06', NULL),
(2187, 'App\\Models\\User', 9, 'eamNf5bw', '931cf67315877f74ad39660eb9152a76217759b16da3a044ad417aa3c55a503f', '[\"*\"]', '2023-11-16 13:16:06', '2023-11-16 13:16:06', '2023-11-16 13:16:06', NULL),
(2188, 'App\\Models\\User', 9, 'IoYKn5gL', '8f2e63bf81f33e0c1b31886efa556b7dd4de5e4bc4cd9b0e1564ae0481a6e055', '[\"*\"]', '2023-11-16 13:16:13', '2023-11-16 13:16:12', '2023-11-16 13:16:13', NULL),
(2189, 'App\\Models\\User', 9, 'l7tfuVCl', 'ddcf9463f714b2ff317bcb05f72da6602d2d30ef2e855eea1eab93d0958040da', '[\"*\"]', '2023-11-16 13:20:26', '2023-11-16 13:16:12', '2023-11-16 13:20:26', NULL),
(2190, 'App\\Models\\User', 9, '89vjBfdY', 'b5040245432ad4335e09c699f07605b4453ff40eff65c99b79ece3b238d75e64', '[\"*\"]', NULL, '2023-11-16 13:16:14', '2023-11-16 13:16:14', NULL),
(2191, 'App\\Models\\User', 9, 'YyfsIBwE', 'e487c062e53ff1c4a0823d5a32956dd2234ad0ca3f5dfc9ae851df410a7449c6', '[\"*\"]', '2023-11-16 13:16:20', '2023-11-16 13:16:14', '2023-11-16 13:16:20', NULL),
(2192, 'App\\Models\\User', 9, 'oQeYB0r8', '777295ce6516b0b232a60b8c90ab312c67d29829a78f4126c1b892af648a0953', '[\"*\"]', '2023-11-16 13:16:30', '2023-11-16 13:16:29', '2023-11-16 13:16:30', NULL),
(2193, 'App\\Models\\User', 9, 'Wc8sscoi', '7a0c9bb2ada8d1bffa55605ff6b9552081639f79645708163cb089255e900a93', '[\"*\"]', '2023-11-16 13:18:50', '2023-11-16 13:16:29', '2023-11-16 13:18:50', NULL),
(2194, 'App\\Models\\User', 9, 'g8fLJbAK', '88159090508eeacf926cc60d16d50e7506d2da991eb86ad81e71581a306f9025', '[\"*\"]', '2023-11-16 13:19:25', '2023-11-16 13:19:04', '2023-11-16 13:19:25', NULL),
(2195, 'App\\Models\\User', 9, 'LIdowzjw', '499aeda552a15f3a1ccc159eddb304bc8cb160a078622467e85bc94a56e20098', '[\"*\"]', '2023-11-16 13:19:05', '2023-11-16 13:19:04', '2023-11-16 13:19:05', NULL),
(2196, 'App\\Models\\User', 9, 'XP5V0idG', '1adf733f21a8df36b5055bc92c760825c84bd8163ea0938b7e8293b7c12ea801', '[\"*\"]', NULL, '2023-11-16 13:19:31', '2023-11-16 13:19:31', NULL),
(2197, 'App\\Models\\User', 9, 'f5qg5Uu0', 'a0a8ca79ab6c5c66e67cd0f82eeedcc38ccb8bf9d74be9bb050e994cc5d1c66b', '[\"*\"]', '2023-11-16 13:19:51', '2023-11-16 13:19:31', '2023-11-16 13:19:51', NULL),
(2198, 'App\\Models\\User', 9, 'D2oekVup', '8c2c6d80126924cf61ae31046d46c862c8eff3b5e3a6ce62d2d2589ff680909a', '[\"*\"]', '2023-11-16 13:20:08', '2023-11-16 13:20:07', '2023-11-16 13:20:08', NULL),
(2199, 'App\\Models\\User', 9, 'W2qje8ZP', '653367369a964e4767e203020be7b538f12fddcd905ece56d056e90ad58635f3', '[\"*\"]', '2023-11-16 13:20:10', '2023-11-16 13:20:07', '2023-11-16 13:20:10', NULL),
(2200, 'App\\Models\\User', 9, 'IBRxl4mC', 'e5ba48e4ed407db6adebc0e844d3af7956dd00aed54cc0c6414b8c9083fdaa70', '[\"*\"]', '2023-11-16 13:20:21', '2023-11-16 13:20:20', '2023-11-16 13:20:21', NULL),
(2201, 'App\\Models\\User', 9, 'NK4ZyRNa', '743f8cecaadc42c19eabf6710f78a4ea1edef2624e4b7466290e885ae5945b62', '[\"*\"]', '2023-11-16 13:21:01', '2023-11-16 13:20:20', '2023-11-16 13:21:01', NULL),
(2202, 'App\\Models\\User', 9, 'fpv6XP4z', '87cb8f7d584bfe991097519a3a4a90adb4954b33fc2892519220c0615dfb73f8', '[\"*\"]', '2023-11-16 13:20:46', '2023-11-16 13:20:46', '2023-11-16 13:20:46', NULL),
(2203, 'App\\Models\\User', 9, 'BKTXpD7u', '6d63ee929b5b361ab0265cb7798685b60ec8ee8cd29450ba8290fe937429e2bb', '[\"*\"]', '2023-11-16 13:31:28', '2023-11-16 13:20:46', '2023-11-16 13:31:28', NULL),
(2204, 'App\\Models\\User', 9, 'aDSC16xG', 'd283422b4234320c22dfcdf7f7d71c62aeb5f172c37197174f87335a3e19ac64', '[\"*\"]', '2023-11-16 13:32:26', '2023-11-16 13:32:24', '2023-11-16 13:32:26', NULL),
(2205, 'App\\Models\\User', 9, 'X7V51pSd', '5d9fce1f0b504d835c824bc2c10c71a75ddafb11d2bf4f60a44257056049a109', '[\"*\"]', '2023-11-16 13:37:28', '2023-11-16 13:32:35', '2023-11-16 13:37:28', NULL),
(2206, 'App\\Models\\User', 9, 'i792kfzP', '8115d9ade4e16a5f9213b1d47503ad6f89cafefdbf5ba3b96baa7e219427cc2a', '[\"*\"]', '2023-11-16 13:37:28', '2023-11-16 13:32:37', '2023-11-16 13:37:28', NULL),
(2207, 'App\\Models\\User', 9, '8XfcJ89C', 'c25ca0b1e77d96d2cf06fe2f88248e02a084482ca1594382026ae12625eeca15', '[\"*\"]', '2023-11-16 13:38:26', '2023-11-16 13:38:24', '2023-11-16 13:38:26', NULL),
(2208, 'App\\Models\\User', 9, 'BaVqrEU1', '76efe8259fd940643b6846e70573497992d6d73cb473aa91b2a2bc6b7374ff0a', '[\"*\"]', '2023-11-16 13:38:37', '2023-11-16 13:38:36', '2023-11-16 13:38:37', NULL),
(2209, 'App\\Models\\User', 9, 'HMCSEkFM', '372167a050c10320427979005093423e0439706b609912b09347c9daca9c0040', '[\"*\"]', '2023-11-16 13:38:45', '2023-11-16 13:38:43', '2023-11-16 13:38:45', NULL),
(2210, 'App\\Models\\User', 9, '5OxFZwkw', '984cb2f6e3c81bc9c84f2a81f8bc98bd2e1c242b58efb68d210301dbf5f5f949', '[\"*\"]', '2023-11-16 13:38:54', '2023-11-16 13:38:51', '2023-11-16 13:38:54', NULL),
(2211, 'App\\Models\\User', 9, 'pe9Gtfgh', 'd5d595b0d6d92bbf7650c40333ba5bc7b12ed4ebc51bfdb11ede00ab78813cac', '[\"*\"]', '2023-11-16 13:39:01', '2023-11-16 13:38:58', '2023-11-16 13:39:01', NULL),
(2212, 'App\\Models\\User', 9, '0YPMAWMU', '41822dd5e527eabf1eecf0062c62f6948cf35bacde8d372e1b7977d0a95083cd', '[\"*\"]', '2023-11-16 13:39:12', '2023-11-16 13:39:08', '2023-11-16 13:39:12', NULL),
(2213, 'App\\Models\\User', 9, 'jMelYpiG', '996dad9744f6ea6023e47251e732001ff8109994cf099b091e592861ab1bb2a2', '[\"*\"]', '2023-11-16 13:39:41', '2023-11-16 13:39:20', '2023-11-16 13:39:41', NULL),
(2214, 'App\\Models\\User', 9, 'XkDXAXqi', 'cebc730fe59b24991f726794c35142b20aa08770a70adb0f66947b813f117bab', '[\"*\"]', '2023-11-16 14:14:04', '2023-11-16 13:39:23', '2023-11-16 14:14:04', NULL),
(2215, 'App\\Models\\User', 9, 'ojpOJGGy', 'e64a7e1051f30a296d65973d7511d9892e3adad53fae2b7582988581a25be896', '[\"*\"]', '2023-11-16 14:14:46', '2023-11-16 14:14:45', '2023-11-16 14:14:46', NULL),
(2216, 'App\\Models\\User', 9, 'Qa21P7BE', '77894603b0385f2c093801689ea6c5527faf9697d99ecf5f99b67604e60538ed', '[\"*\"]', '2023-11-16 14:14:56', '2023-11-16 14:14:55', '2023-11-16 14:14:56', NULL),
(2217, 'App\\Models\\User', 9, 'dAJyLPKW', '73897765f251c9e853dd51b5a2f2c4bfe627a5b2cb45b43090721c3f667ef03e', '[\"*\"]', '2023-11-16 14:16:12', '2023-11-16 14:15:00', '2023-11-16 14:16:12', NULL),
(2218, 'App\\Models\\User', 9, 'RcM5Usap', 'de2cd609d7d215ce62aaf6673bf36dac58c312dbe9cabd9f0d37fe72f94ae814', '[\"*\"]', NULL, '2023-11-16 14:15:38', '2023-11-16 14:15:38', NULL),
(2219, 'App\\Models\\User', 9, 'hWuzYQeF', '6fa66fb522c9a921af0ada534c9dbe1b605dee26da68018560e78fc8e3b28f2c', '[\"*\"]', '2023-11-16 14:16:11', '2023-11-16 14:15:47', '2023-11-16 14:16:11', NULL),
(2220, 'App\\Models\\User', 9, 'WN9pxZGa', '5df7676b1502677767708ef292de09bb3716f703001ed2304f636cf638fb3b6c', '[\"*\"]', '2023-11-16 14:18:08', '2023-11-16 14:16:24', '2023-11-16 14:18:08', NULL),
(2221, 'App\\Models\\User', 9, 'omiS7y11', 'f4379beb901e990e17598ee8320bc3345b6a1417c8e6aa8cd32252d11f67af47', '[\"*\"]', '2023-11-16 14:18:26', '2023-11-16 14:18:15', '2023-11-16 14:18:26', NULL),
(2222, 'App\\Models\\User', 9, 'X4wArU1O', '1e1b9a33b912727f51e36f81e8bb99fb1e400597622dbcba706cda1d80717364', '[\"*\"]', '2023-11-16 14:19:50', '2023-11-16 14:18:29', '2023-11-16 14:19:50', NULL),
(2223, 'App\\Models\\User', 9, 'jwgKfnSn', '4c84609270a38b6c0d7fe3e1741b8784ebb70c9026e70b39a207b10c9d17b801', '[\"*\"]', '2023-11-16 14:20:19', '2023-11-16 14:19:57', '2023-11-16 14:20:19', NULL),
(2224, 'App\\Models\\User', 9, '6olFeLiI', '169454bebfda702337656072c07b6ecddd9af125bd83540b33dfae106427293c', '[\"*\"]', '2023-11-16 14:20:36', '2023-11-16 14:20:35', '2023-11-16 14:20:36', NULL),
(2225, 'App\\Models\\User', 9, 'tG6RY4v9', '817768bffe17e29ee9c34e280f3ef744278fde4748547e63423cd03eb49a110e', '[\"*\"]', '2023-11-16 14:21:33', '2023-11-16 14:20:42', '2023-11-16 14:21:33', NULL),
(2226, 'App\\Models\\User', 9, 'kcyETfFE', '2f2c59c5214459679cb36973ebfdf9e4a9c424f1a586fde6c046b1c1ad9aa9c6', '[\"*\"]', '2023-11-16 14:25:07', '2023-11-16 14:21:41', '2023-11-16 14:25:07', NULL),
(2227, 'App\\Models\\User', 9, 'EWOkSs3Z', '9816e6626d8c97499dc303fd8f87f209cfce56e8c233aa964d80c922368d074c', '[\"*\"]', '2023-11-16 14:29:31', '2023-11-16 14:25:16', '2023-11-16 14:29:31', NULL),
(2228, 'App\\Models\\User', 9, 'DKCjNsKJ', 'fe7c7e7137870f8bfd029068fffdcb3bae53eea4da1c10f0f5a75edd3c14c0fa', '[\"*\"]', '2023-11-16 14:30:49', '2023-11-16 14:29:43', '2023-11-16 14:30:49', NULL),
(2229, 'App\\Models\\User', 9, 'kDGnnHcg', '1159f7eed020e4416d802142440e8efb38028203eed18086e60605efa093720d', '[\"*\"]', '2023-11-16 14:31:28', '2023-11-16 14:30:57', '2023-11-16 14:31:28', NULL),
(2230, 'App\\Models\\User', 9, '2ksFiGlF', '2641d737cb692f146c9ac501795919727e5493ec10b141df611e32d4ee5e4318', '[\"*\"]', '2023-11-16 14:31:49', '2023-11-16 14:31:38', '2023-11-16 14:31:49', NULL),
(2231, 'App\\Models\\User', 9, 'zrGRLjlo', '7ee8f5da69377747e08285535118ac892fad3aeca69768c1408e4d962c004bf9', '[\"*\"]', '2023-11-16 14:36:34', '2023-11-16 14:32:02', '2023-11-16 14:36:34', NULL),
(2232, 'App\\Models\\User', 9, 'kB3LvvxZ', 'ecbae9b95049228f1b3f234a4f8dde54f0d0397f4292b63f80dfbebf5c8dff90', '[\"*\"]', '2023-11-16 14:37:48', '2023-11-16 14:36:47', '2023-11-16 14:37:48', NULL),
(2233, 'App\\Models\\User', 9, '3SxTAuD8', '90ae94eb01370d35bf42941a94527d1045173172872464ac4268368b20eca410', '[\"*\"]', '2023-11-16 14:38:19', '2023-11-16 14:37:57', '2023-11-16 14:38:19', NULL),
(2234, 'App\\Models\\User', 9, 'zRXHeFMJ', '35f2ee5261e820ab7fa8bf503b290da74d077f93b05b74769940562536325a3d', '[\"*\"]', '2023-11-16 14:42:35', '2023-11-16 14:38:33', '2023-11-16 14:42:35', NULL),
(2235, 'App\\Models\\User', 9, 'Cj8qptr6', '58dbb2be26d0b996439029de1b51783bb5285ae30c325b1a2e22232c68308cad', '[\"*\"]', '2023-11-16 14:52:13', '2023-11-16 14:42:47', '2023-11-16 14:52:13', NULL),
(2236, 'App\\Models\\User', 9, 'OqN4o7mp', '2d8b7c2ef2fc2ddc629584f65d12b666380cdd69d644076851a0ad51954a0024', '[\"*\"]', '2023-11-16 15:01:08', '2023-11-16 14:52:27', '2023-11-16 15:01:08', NULL),
(2237, 'App\\Models\\User', 9, 'PKeybCNL', '932db5c2ddce69b0b10894aacbd8245c45e12d44044115a4ed94c44c56af2a4c', '[\"*\"]', '2023-11-16 15:02:51', '2023-11-16 15:01:19', '2023-11-16 15:02:51', NULL),
(2238, 'App\\Models\\User', 9, 'GtzZa3c8', '024299aa2f9114c8e4266925683a916a5980a18dbbcd3d0257f6086ccaff6c7b', '[\"*\"]', '2023-11-16 15:03:51', '2023-11-16 15:03:20', '2023-11-16 15:03:51', NULL),
(2239, 'App\\Models\\User', 9, 'tN8Yg6hj', '6adfe3a6ec8f343990f96f99431e65da14b50cdfe1c08a37e611cf4cb7d51d6e', '[\"*\"]', '2023-11-16 15:04:20', '2023-11-16 15:04:10', '2023-11-16 15:04:20', NULL),
(2240, 'App\\Models\\User', 9, 'QWXWcHfE', 'c93266357c26b039d8a5fade3ccbfd5deb371ad2b5e110dfdcec997aa2041cdd', '[\"*\"]', '2023-11-16 15:06:06', '2023-11-16 15:04:25', '2023-11-16 15:06:06', NULL),
(2241, 'App\\Models\\User', 9, 'XpHg3DJD', 'daf59e7e30d105171df1a5b98d2766754bf767c14da8ff5cdbff354e4ef87ec7', '[\"*\"]', '2023-11-16 15:06:19', '2023-11-16 15:06:18', '2023-11-16 15:06:19', NULL),
(2242, 'App\\Models\\User', 9, 'pNoBTiKD', 'ef36303caaa644b5e5b6c0dca71366b3b9f4f5cc9eff627cbf8830d7855c202d', '[\"*\"]', '2023-11-16 15:07:13', '2023-11-16 15:06:31', '2023-11-16 15:07:13', NULL),
(2243, 'App\\Models\\User', 9, 'qgVYm13O', '778048df55150924488a70cc9120987c4a9b1cc1ffd0f4dd8b992686db665b9a', '[\"*\"]', '2023-11-16 15:10:40', '2023-11-16 15:07:18', '2023-11-16 15:10:40', NULL),
(2244, 'App\\Models\\User', 9, '7E4kK9jm', '25a2017180f91028d7265e96133f8baae7fb8b088ee2689d8b62074f645a5929', '[\"*\"]', '2023-11-16 15:16:24', '2023-11-16 15:12:11', '2023-11-16 15:16:24', NULL),
(2245, 'App\\Models\\User', 9, 'FmpuDk8C', '35cdd8c8db8fc9deca1169d07336fff970511b658676e84a57fa5a7a4f6286d9', '[\"*\"]', '2023-11-16 15:23:35', '2023-11-16 15:16:30', '2023-11-16 15:23:35', NULL),
(2246, 'App\\Models\\User', 9, 'HrNuRyvY', '78172cabf3feb8cccdb95f8fab015ccd3afe181168767d218c7391b31f8f6f6b', '[\"*\"]', '2023-11-16 15:24:24', '2023-11-16 15:23:43', '2023-11-16 15:24:24', NULL),
(2247, 'App\\Models\\User', 9, 'IKhPAFqs', '11113629ff037f0e0448d6f7c0e12e2ba772c94ee5e501c4bc1b02c4229bb846', '[\"*\"]', '2023-11-16 15:32:34', '2023-11-16 15:32:13', '2023-11-16 15:32:34', NULL),
(2248, 'App\\Models\\User', 9, 'alU8Iut2', '9923044aa044432327036c86e6a2b694b3f3684cc18675ba96d6bdd5d7611c41', '[\"*\"]', '2023-11-16 15:52:00', '2023-11-16 15:48:35', '2023-11-16 15:52:00', NULL),
(2249, 'App\\Models\\User', 9, 'XrbqLGjG', 'ca8e85a16ae671dc5b2fa6f4771ca01e90e5490076d0da928c3777bcf6b60293', '[\"*\"]', '2023-11-16 15:52:36', '2023-11-16 15:52:25', '2023-11-16 15:52:36', NULL),
(2250, 'App\\Models\\User', 9, 'ccRmtslX', '6e7dbc755a7a6f193eb9feaa962e6fdf7e7c7d609c96121ac9ee65bc5fcf3631', '[\"*\"]', '2023-11-16 15:52:52', '2023-11-16 15:52:47', '2023-11-16 15:52:52', NULL),
(2251, 'App\\Models\\User', 9, 'aO3J7slq', '112cf511067cb77245c50b8f34edd7d47852a35d84682e05352334004135895b', '[\"*\"]', '2023-11-16 15:55:33', '2023-11-16 15:54:19', '2023-11-16 15:55:33', NULL),
(2252, 'App\\Models\\User', 9, 'F1PfjNNb', '060a64e7bf00b415f231b71c7c53be723eca54efef0bdd6a4706b08e6475b9e1', '[\"*\"]', '2023-11-16 15:55:48', '2023-11-16 15:55:46', '2023-11-16 15:55:48', NULL),
(2253, 'App\\Models\\User', 9, 'FOfGuSem', '936bddd66601cc0020109eeaa1a5c137b0c7e4972248fda06ab3753fa5452f2f', '[\"*\"]', '2023-11-16 16:01:57', '2023-11-16 15:55:52', '2023-11-16 16:01:57', NULL),
(2254, 'App\\Models\\User', 9, 'wNfJiC2r', '02c3aa94fddd2c6035d36ec94b2c6fad11687eb345ae4ca08cb1119210123906', '[\"*\"]', '2023-11-16 16:04:44', '2023-11-16 16:02:03', '2023-11-16 16:04:44', NULL),
(2255, 'App\\Models\\User', 9, '0eTmN9L8', '9f30c64f5f793e30af1cb15cf5ca596e163519a28706ac00d4a3bdbe9cbff80b', '[\"*\"]', '2023-11-16 16:05:09', '2023-11-16 16:04:55', '2023-11-16 16:05:09', NULL),
(2256, 'App\\Models\\User', 9, 'LwpOVpfG', 'cd47ffaff65b719c87c1b517625adda585da78197b5cf8d22286bcb37e390ef8', '[\"*\"]', '2023-11-16 16:07:20', '2023-11-16 16:05:22', '2023-11-16 16:07:20', NULL),
(2257, 'App\\Models\\User', 9, 'wq81SmDm', 'ebff444bfe8e127e03512b6aa6af5a039623e9b1bbf5629757276a36806b58d3', '[\"*\"]', '2023-11-16 16:11:20', '2023-11-16 16:07:37', '2023-11-16 16:11:20', NULL),
(2258, 'App\\Models\\User', 9, 'sRFdVfSF', '9f855176672204d72b3814868f361810e029ec223a5f86d9e00bc2d8fe68bbb5', '[\"*\"]', '2023-11-16 16:11:24', '2023-11-16 16:11:02', '2023-11-16 16:11:24', NULL),
(2259, 'App\\Models\\User', 9, 'lnVDpHTY', 'e60380c731a50a3f0d15f7324620fe22c3402b8fc8ceba97430330723d56024e', '[\"*\"]', '2023-11-16 16:12:30', '2023-11-16 16:11:29', '2023-11-16 16:12:30', NULL),
(2260, 'App\\Models\\User', 9, 'nuXXDBSS', '62dda96055bd6555867780f28b3c0ca0a780c73051026ca7cbf364ca9cd01e97', '[\"*\"]', '2023-11-16 16:19:06', '2023-11-16 16:11:34', '2023-11-16 16:19:06', NULL),
(2261, 'App\\Models\\User', 9, 'EYrnq8Rp', '7dd81f0f77f5559b7866788772f542b3459496c6996d0c45656182fbd0dc2ac3', '[\"*\"]', '2023-11-16 16:13:17', '2023-11-16 16:12:46', '2023-11-16 16:13:17', NULL),
(2262, 'App\\Models\\User', 9, 'xNK34DnM', 'dc58e981f5612562d0699dc25efb47191ac9350b5674f0a8eecab0233129e2ec', '[\"*\"]', '2023-11-16 16:14:37', '2023-11-16 16:13:26', '2023-11-16 16:14:37', NULL),
(2263, 'App\\Models\\User', 9, 'kLPf12N7', '9796578fb7e4335a04279170c5ad251d074959870b84fcb9c27f5ea431a558d5', '[\"*\"]', '2023-11-16 16:15:17', '2023-11-16 16:14:46', '2023-11-16 16:15:17', NULL),
(2264, 'App\\Models\\User', 9, 'KAd9mdVp', '9f9f8ce4cde467a8c98f3ccdc3694f29d21c3facb3a64208d8a157193884a5ff', '[\"*\"]', '2023-11-16 16:16:14', '2023-11-16 16:15:23', '2023-11-16 16:16:14', NULL),
(2265, 'App\\Models\\User', 9, 'f0FdrmOn', 'eba38d30f0cc90a9cd2ac35946a5fac5088f0bebd0d74ca693430998e76ceb7c', '[\"*\"]', '2023-11-16 16:18:56', '2023-11-16 16:16:23', '2023-11-16 16:18:56', NULL),
(2266, 'App\\Models\\User', 9, 't2JEnn7t', 'a1b67f0000301c5a4fca13e9ee0446aa91de06a9d5772b7b8f66c5cbf8a23276', '[\"*\"]', '2023-11-16 16:22:29', '2023-11-16 16:21:25', '2023-11-16 16:22:29', NULL),
(2267, 'App\\Models\\User', 4, 'Ngd91ZxL', '86d99cfca7dc6259e7f542a782e06fc2102c6bfa454de2757a853e8be82ff0c1', '[\"*\"]', '2023-11-19 11:36:52', '2023-11-19 11:30:26', '2023-11-19 11:36:52', NULL),
(2268, 'App\\Models\\User', 5, 'tHo0V1uW', '76c0cbc19d5bc86744807f0db59560bac66bb47c535fdd452142e09568810ee3', '[\"*\"]', '2023-11-19 19:25:16', '2023-11-19 19:25:08', '2023-11-19 19:25:16', NULL),
(2269, 'App\\Models\\User', 4, 'mBmpxu5B', '89aeadf61df91861b39fbb2572460b90d8f62e3711453ffcd6e7fca0793de1d4', '[\"*\"]', '2023-11-19 19:58:15', '2023-11-19 19:56:55', '2023-11-19 19:58:15', NULL),
(2270, 'App\\Models\\User', 4, 'NBNBFr2t', '5ab53f37748e6aadba983f6e7affb41e84d574d0a92518e23d3aff0551961b6a', '[\"*\"]', '2023-11-19 20:07:31', '2023-11-19 20:02:10', '2023-11-19 20:07:31', NULL),
(2271, 'App\\Models\\User', 8, 'GiUTCV1d', '5604d17c5f3be587a8ca80a285d9f549908b99192a9b3f002b35b98d45d8acb5', '[\"*\"]', '2023-11-20 06:40:01', '2023-11-19 20:08:23', '2023-11-20 06:40:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `pack_name` varchar(255) DEFAULT NULL,
  `purchasing_price` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `pack_price` double DEFAULT NULL,
  `pack_units` int(11) DEFAULT NULL,
  `unit_type` int(11) NOT NULL DEFAULT 1,
  `status` enum('available','unavailable') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `subcategory_id`, `supplier_id`, `unit_name`, `pack_name`, `purchasing_price`, `unit_price`, `pack_price`, `pack_units`, `unit_type`, `status`, `image`, `videos`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'قهوة', '(حزمة) قهوة', 0, 1500, 2000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/1/b83e7b4a64fda97c9461ca4e63e3d60b.png', '', NULL, '2023-10-21 14:44:28', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(2, 4, 1, 'NESTLÉ', '(حزمة) NESTLÉ', 0, 200000000, 200000000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/2/2e1b3501602c1886955cffdb89196d0c.png', '', NULL, '2023-10-21 15:01:42', '2023-10-23 17:18:19', '2023-10-23 17:18:19'),
(3, 1, 1, 'معجون اسنان سانسوداين', '(حزمة) معجون اسنان سانسوداين', 0, 650, 650, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/3/9b6e1fc73f240d50886b41b8fe3fc48a.png', '', NULL, '2023-10-22 18:30:34', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(4, 1, 1, 'gfdg', '(حزمة) gfdg', 0, 20, 40, 6, 3, 'available', NULL, '', NULL, '2023-10-23 12:19:45', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(5, 7, 1, 'ساعة360', '(حزمة) ساعة360', 0, 2000, 3000, 2, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/5/f522a477074ab72987b6f687b506400a.png', '', NULL, '2023-10-23 17:32:41', '2023-10-23 17:32:42', NULL),
(6, 5, 1, 'خاتم عيار 92', '(حزمة) خاتم عيار 92', 0, 260, 260, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/6/1d5e836447b81e08a52731a157f02995.png', '', NULL, '2023-10-23 17:35:02', '2023-10-23 17:35:03', NULL),
(7, 6, 1, 'خاتم عيار 24', '(حزمة) خاتم عيار 24', 0, 25000, 25000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/7/2224e6b9417ddd78a5a25036da3f2be4.png', '', NULL, '2023-10-23 17:36:20', '2023-10-23 17:36:21', NULL),
(8, 15, 1, 'ردمي 12', '(حزمة) ردمي 12', 0, 40000, 40000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/8/d54e198bf99208ae15ccec386d93d96a.png', '', NULL, '2023-10-23 17:40:09', '2023-10-23 17:40:09', NULL),
(9, 12, 1, 'Samsung Galaxy M33 G5', '(حزمة) Samsung Galaxy M33 G5', 0, 70000, 70000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/9/9f5950c216c1255c957aa05a9b688619.png', '', NULL, '2023-10-23 20:41:40', '2023-10-23 20:41:43', NULL),
(10, 14, 1, 'OPPO A92s', '(حزمة) OPPO A92s', 0, 67000, 67000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/10/028943bb03198812e556a0120d86bee3.png', '', NULL, '2023-10-23 20:43:49', '2023-10-23 20:44:00', NULL),
(11, 13, 1, 'iPhone 15', '(حزمة) iPhone 15', 0, 340000, 340000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/11/1851cc13a86439eebfff429b7949c6c4.png', '', NULL, '2023-10-23 20:51:23', '2023-10-23 20:51:24', NULL),
(12, 9, 1, 'Lenovo ThinkPad E14', '(حزمة)  Lenovo ThinkPad E14', 0, 95000, 95000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/12/5bdf4d8cb2411cb6ad5b6208da32a8a6.png', '', NULL, '2023-10-23 20:53:11', '2023-10-23 20:53:11', NULL),
(13, 9, 1, 'Laptop 15s-fq5035ne | HP', '(حزمة)  Laptop 15s-fq5035ne | HP', 0, 90000, 90000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/13/e01a1d0c1f84e48f66ab1db4d3a4bf25.png', '', NULL, '2023-10-23 20:55:58', '2023-10-23 20:55:58', NULL),
(14, 10, 1, 'DELL', '(حزمة) DELL', 0, 35000, 35000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/14/db84bcf4635a3bfe36fcd79a2c6a0cf4.png', '', NULL, '2023-10-23 20:59:53', '2023-10-23 20:59:54', NULL),
(15, 11, 1, 'فأرة لاسلكية', '(حزمة) فأرة لاسلكية', 0, 1200, 1200, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/15/60d275b889b0e4760ed32a23f8d345fe.png', '', NULL, '2023-10-23 21:04:01', '2023-10-23 21:04:01', NULL),
(16, 8, 1, 'ساعة فيرزاتشي', '(حزمة) ساعة فيرزاتشي', 0, 14000, 14000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/16/58a38a41111de740f043e7ee0c12a407.png', '', NULL, '2023-10-23 21:10:29', '2023-10-23 21:10:30', NULL),
(17, 16, 1, 'جيلين سلسلة ذهب عيار 14', '(حزمة) جيلين سلسلة ذهب عيار 14', 0, 70000, 70000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/17/ed71c3dcdf8a39d0d4266533e192815d.png', '', NULL, '2023-10-23 21:16:31', '2023-10-23 21:16:32', NULL),
(18, 17, 1, 'ليز شيبس', '(حزمة) ليز شيبس', 0, 90, 800, 10, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/18/2340afc957b4247d0da1435dd0bdf311.png', '', NULL, '2023-10-23 21:30:06', '2023-10-23 21:30:21', NULL),
(19, 18, 1, 'طقم من جورجليتر', '(حزمة) طقم من جورجليتر', 0, 3500, 3500, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/19/3359f7dd23a1a396a86841596e5c840c.png', '', NULL, '2023-10-23 21:38:56', '2023-10-23 21:38:56', NULL),
(20, 19, 1, 'طقم صيفي', '(حزمة) طقم صيفي', 0, 7800, 7800, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/20/9ac6ce655e4e914ae1f2e74c6577b9f7.jpg', '', NULL, '2023-10-23 21:45:08', '2023-10-23 21:49:19', NULL),
(21, 20, 1, 'طقم اطفال', '(حزمة) طقم اطفال', 0, 250, 250, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/21/6fb500485307bf0f2988e99a3917f776.png', '', NULL, '2023-10-23 21:51:46', '2023-10-23 21:51:47', NULL),
(22, 21, 1, 'فستان بنات', '(حزمة) فستان بنات', 0, 260, 260, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/22/54c5c61657b709b9c579adc4b2357870.png', '', NULL, '2023-10-23 21:53:20', '2023-10-24 09:47:29', NULL),
(23, 22, 1, 'لوز', '(حزمة) لوز', 0, 350, 3200, 10, 2, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/23/35cec3e94fccb953bb17bf75073ecaef.png', '', NULL, '2023-10-24 09:53:54', '2023-10-24 09:53:55', NULL),
(24, 23, 1, 'DFSK GONOW', '(حزمة) DFSK GONOW', 0, 1250000, 1250000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/24/88ac20d072e34ce41fd585e0cc95b4f2.png', '', NULL, '2023-10-25 10:34:32', '2023-10-25 10:34:35', NULL),
(25, 24, 1, 'بنز أس 580', '(حزمة) بنز أس 580', 0, 7000000, 7000000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/25/a37b3cdee75ff2cde0e2bd01976c0c70.png', '', NULL, '2023-10-25 10:39:00', '2023-10-25 10:39:01', NULL),
(26, 24, 1, 'مرسيدس AMG', '(حزمة) مرسيدس AMG', 0, 6890000, 6890000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/26/98ace82c68342a0c5d0d9a44739ac2c6.png', '', NULL, '2023-10-25 10:41:20', '2023-10-25 10:41:21', NULL),
(27, 27, 1, 'التفاح', '(حزمة) التفاح', 0, 450, 450, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/27/bec1cfa8c1f833eef71812db05e1d21e.png', '', NULL, '2023-10-25 11:18:01', '2023-10-25 11:18:02', NULL),
(28, 25, 1, 'بوغاتي شيرون سبورت', '(حزمة) بوغاتي شيرون سبورت', 0, 9999999999, 9999999999, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/28/c85220521ec70549cb05685c6ed22438.png', '', NULL, '2023-10-25 11:19:00', '2023-10-25 11:19:01', NULL),
(29, 27, 1, 'البنان', '(حزمة) البنان', 0, 340, 340, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/29/d589c5ffe70ec3416e4a335daf83a5af.png', '', NULL, '2023-10-25 11:20:12', '2023-10-25 11:20:13', NULL),
(30, 27, 1, 'الكيوي', '(حزمة) الكيوي', 0, 1800, 1800, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/30/16e9b5bc1ed3e1f4d588cc4cb2a91eec.png', '', NULL, '2023-10-25 11:21:23', '2023-10-25 11:21:32', NULL),
(31, 27, 1, 'الدلاع', '(حزمة) الدلاع', 0, 90, 90, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/31/89e13b99fbf26d9eab0eb0fdd42962fa.png', '', NULL, '2023-10-25 11:22:57', '2023-10-25 11:22:58', NULL),
(32, 26, 1, 'الطماطم', '(حزمة) الطماطم', 0, 60, 200, 4, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/32/0dee7c5f10888a7d253b94263bd69dc0.png', '', NULL, '2023-10-25 11:25:48', '2023-10-25 11:25:49', NULL),
(33, 26, 1, 'الفلفل', '(حزمة) الفلفل', 0, 120, 120, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/33/ff66cc73788011963a5bffe6ce1df501.png', '', NULL, '2023-10-25 11:28:31', '2023-10-25 11:28:32', NULL),
(34, 26, 1, 'الليمون', '(حزمة) الليمون', 0, 300, 300, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/34/b16f9dc72ea0772369722330d00a45dd.png', '', NULL, '2023-10-25 11:31:14', '2023-10-25 11:31:14', NULL),
(35, 27, 1, 'الاجاص', '(حزمة) الاجاص', 0, 140, 140, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/35/ea5a559df74c87fb656085214abe0453.png', '', NULL, '2023-10-25 11:33:03', '2023-10-25 11:33:05', NULL),
(36, 28, 1, 'كنديا 1ل', '(حزمة) كنديا 1ل', 0, 140, 800, 6, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/36/b6fd0812ccf2d7b4793e4fb6801647d1.png', '', NULL, '2023-10-25 18:46:46', '2023-10-25 18:46:47', NULL),
(37, 28, 1, 'كنديا 500مل', '(حزمة) كنديا 500مل', 0, 70, 400, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/37/e3628ed381c7f492ef5fe738bebdf64b.png', '', NULL, '2023-10-25 18:56:42', '2023-10-25 18:56:43', NULL),
(38, 29, 1, 'سوزوكي باريان', '(حزمة) سوزوكي باريان', 0, 230000, 230000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/38/516e7267577c92fc37e8142508716173.png', '', NULL, '2023-10-25 19:03:43', '2023-10-25 19:03:44', NULL),
(39, 30, 1, 'Moto‎', '(حزمة) Moto‎', 0, 21000, 21000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/39/4d7250842f862f79acf4f913f669154e.png', '', NULL, '2023-10-25 19:05:38', '2023-10-25 19:05:39', NULL),
(40, 31, 1, 'شاكمان', '(حزمة) شاكمان', 0, 10000000, 10000000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/40/fe99be61eeda32c62c50fa0a5e2d7d4d.png', '', NULL, '2023-10-25 19:07:28', '2023-10-25 19:07:29', NULL),
(41, 32, 1, 'شامل', '(حزمة) شامل', 0, 380, 380, 1, 2, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/41/81ef872d2be8b8ece9dcbb37f4321cb9.png', '', NULL, '2023-10-25 19:10:08', '2023-10-25 19:10:09', NULL),
(42, 33, 1, 'فرحة 1ل', '(حزمة) فرحة 1ل', 0, 60, 60, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/42/96f767b67cc93d012e8236e60b06c05b.png', '', NULL, '2023-10-25 21:02:41', '2023-10-25 21:06:19', NULL),
(43, 33, 1, 'فرحة كانات', '(حزمة) فرحة كانات', 0, 50, 50, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/43/3bc6c97cee3510d3c5014f739c7b3f9c.png', '', NULL, '2023-10-25 21:07:36', '2023-10-25 21:07:36', NULL),
(44, 34, 1, 'تشينا 2ل', '(حزمة) تشينا 2ل', 0, 100, 580, 6, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/44/ffab9d3b54baca1611d20ea1d3b2a10a.png', '', NULL, '2023-10-25 21:09:22', '2023-10-25 21:09:33', NULL),
(45, 35, 1, 'كلاسيك', '(حزمة) كلاسيك', 0, 6000, 6000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/45/c30ce0b437a556de895becb582dc345b.png', '', NULL, '2023-10-25 21:12:11', '2023-10-25 21:12:12', NULL),
(46, 35, 1, 'احذية رياضية تركية', '(حزمة) احذية رياضية تركية', 0, 2900, 2900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/46/a8f88e4945deaa838ab5e0acdfec4d55.png', '', NULL, '2023-10-25 21:13:30', '2023-10-25 21:13:31', NULL),
(47, 36, 1, 'حذاء نسائي تركي', '(حزمة) حذاء نسائي تركي', 0, 3900, 3900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/47/6889b820afcc90a20017a13c6da2e60a.png', '', NULL, '2023-10-25 21:17:57', '2023-10-25 21:17:57', NULL),
(48, 38, 1, 'لعبة مطبخ', '(حزمة) لعبة مطبخ', 0, 1200, 1200, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/48/9f6ef13d8c75fb9485510e9325e05475.png', '', NULL, '2023-10-25 21:21:26', '2023-10-25 21:24:17', NULL),
(49, 37, 1, 'لعبة سيارة لاسلكية', '(حزمة) لعبة سيارة لاسلكية', 0, 550, 550, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/49/fe7e420d7bfaa8fe7e7ed8788065fe9a.png', '', NULL, '2023-10-25 21:23:36', '2023-10-25 21:24:07', NULL),
(50, 39, 1, 'طماطم CAB', '(حزمة) طماطم CAB', 0, 180, 180, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/50/c082c145de4aa789934367d4e0fe9c74.png', '', NULL, '2023-10-25 21:28:08', '2023-10-25 21:29:50', NULL),
(51, 39, 1, 'جلبانة 500غ', '(حزمة) جلبانة 500غ', 2551, 130, 130, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/51/980d34400a27c4494d9e7295ff9d39eb.png', '', NULL, '2023-10-25 21:32:35', '2023-11-21 09:56:59', NULL),
(52, 40, 1, 'مكيف توشيبا 12', '(حزمة) مكيف توشيبا 12', 0, 68900, 68900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/52/9a6479bc6a4aef8f34ab503ece7bfd67.png', '', NULL, '2023-10-25 21:39:20', '2023-10-25 21:39:36', NULL),
(53, 41, 1, 'غسالة ملابس ميديا 10كغ', '(حزمة) غسالة ملابس ميديا 10كغ', 0, 67900, 67900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/53/b5c89f6ae50d2723268ad75e73f06e0f.png', '', NULL, '2023-10-25 21:42:28', '2023-10-25 21:42:29', NULL),
(54, 41, 1, 'غسالة صحون اكسترا', '(حزمة) غسالة صحون اكسترا', 0, 55900, 55900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/54/ad2acdc1548ad23a847cb46e8fa7b64d.png', '', NULL, '2023-10-25 21:43:51', '2023-10-25 21:43:52', NULL),
(55, 42, 1, 'جافيل جودي 1ل', '(حزمة) جافيل جودي 1ل', 0, 900, 900, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/55/b17bab7f84fa9e00ed8493e302577fd3.png', '', NULL, '2023-10-25 21:47:04', '2023-10-25 21:47:04', NULL),
(56, 42, 1, 'جافيل جودي 5ل', '(حزمة) جافيل جودي 5ل', 0, 400, 400, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/56/0affc493c7c1063b6b0f151bc073ce4a.png', '', NULL, '2023-10-25 21:48:16', '2023-10-25 21:48:17', NULL),
(57, 43, 1, 'بالته ايشادو ريلوديد', '(حزمة) بالته ايشادو ريلوديد', 0, 950, 950, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/57/4dd5c38fd37bd54ddb046597001cef2e.png', '', NULL, '2023-10-26 16:15:39', '2023-10-26 16:15:50', NULL),
(58, 43, 1, 'كريم اساس سيلك تاتش', '(حزمة)  كريم اساس سيلك تاتش', 0, 650, 650, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/58/c2561823ccd0bbdd95f7ff5fbf45db52.png', '', NULL, '2023-10-26 16:16:56', '2023-10-26 16:16:56', NULL),
(59, 43, 1, 'ملمع شفاه', '(حزمة) ملمع شفاه', 0, 1100, 1100, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/59/52b215d03cd45a8481ca029bb0db0bb3.png', '', NULL, '2023-10-26 16:17:59', '2023-10-26 16:18:00', NULL),
(60, 43, 1, 'لاصق رموش مع فرشاة', '(حزمة)  لاصق رموش مع فرشاة', 0, 800, 800, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/60/8f8cc895184eefa7034f6d7a9d9f5271.png', '', NULL, '2023-10-26 16:19:55', '2023-10-26 16:19:56', NULL),
(61, 7, 1, 'ساعة ذكية', '(حزمة) ساعة ذكية', 0, 3400, 3400, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/61/8ffc1dd6e8b4915beb54f51ec662a31c.png', '', NULL, '2023-10-26 16:21:27', '2023-10-26 16:21:27', NULL),
(62, 7, 1, 'ساعة ذكية IOS', '(حزمة) ساعة ذكية IOS', 0, 10500, 10500, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/62/8b33837de2074d6b5c96dabdedb02994.png', '', NULL, '2023-10-26 16:22:53', '2023-10-26 16:22:53', NULL),
(63, 8, 1, 'ساعة ذكية HD LCD', '(حزمة) ساعة ذكية HD LCD', 0, 7800, 7800, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/63/374e3fc3bd5cb11312280dfcdaf44125.png', '', NULL, '2023-10-26 16:27:28', '2023-10-26 16:27:28', NULL),
(64, 7, 1, 'تومي هيلفيغر', '(حزمة) تومي هيلفيغر', 0, 1250000, 1250000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/64/85e93dd4684552aa7d5a4b41b9085675.png', '', NULL, '2023-10-26 16:30:16', '2023-10-26 16:30:16', NULL),
(65, 44, 1, 'الة قص الحديد', '(حزمة) الة قص الحديد', 0, 14500, 14500, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/65/22aeeec2950f50b76aa1a82d88e85bbb.png', '', NULL, '2023-10-26 16:35:12', '2023-10-26 16:35:12', NULL),
(66, 44, 1, 'الة خلط الاسمنت', '(حزمة) الة خلط الاسمنت', 0, 45000, 45000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/66/8a8f0182d1e4293b0c38c1dbb22b16d8.png', '', NULL, '2023-10-26 16:36:30', '2023-10-26 16:36:31', NULL),
(67, 45, 1, 'لحم الخروف', '(حزمة) لحم الخروف', 0, 1800, 1800, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/67/0d00d3c9a2bed0f2838f256a56166613.jpg', '', NULL, '2023-10-26 16:39:47', '2023-10-26 16:39:48', NULL),
(68, 46, 1, 'افخاذ الدجاج', '(حزمة) افخاذ الدجاج', 0, 450, 450, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/68/11ba60a45d3bd53ff0270ba8ea4f796d.png', '', NULL, '2023-10-26 16:42:06', '2023-10-26 16:42:07', NULL),
(69, 46, 1, 'صدر الدجاج', '(حزمة) صدر الدجاج', 0, 550, 550, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/69/900189a65617c9e5e428abe37cfb9793.png', '', NULL, '2023-10-26 16:43:12', '2023-10-26 16:44:13', NULL),
(70, 46, 1, 'قلوب الدجاج', '(حزمة) قلوب الدجاج', 0, 400, 400, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/70/71108534d8110f315ba6c8e2a2fe700b.png', '', NULL, '2023-10-26 16:45:35', '2023-10-26 16:45:44', NULL),
(71, 45, 1, 'كبدة الخروف', '(حزمة) كبدة الخروف', 0, 2500, 2500, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/71/98b29b1499fc4ce1145b41449b261ac4.png', '', NULL, '2023-10-26 16:46:53', '2023-10-26 16:46:54', NULL),
(72, 46, 1, 'الدجاج', '(حزمة) الدجاج', 0, 470, 470, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/72/639f6d2d3975408543ee122058ae2f85.png', '', NULL, '2023-10-26 16:51:32', '2023-10-26 16:51:33', NULL),
(73, 48, 1, 'ألة حلاقة', '(حزمة) ألة حلاقة', 0, 12000, 12000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/73/9a7332bae7f5caf28cb5d052a9feef96.png', '', NULL, '2023-10-26 16:58:34', '2023-10-26 17:01:29', NULL),
(74, 26, 1, 'اليقطين', '(حزمة) اليقطين', 0, 60, 60, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/74/f0089370015d060cae8856837e599a92.png', '', NULL, '2023-10-26 17:09:21', '2023-10-26 17:09:22', NULL),
(75, 52, 1, 'Condor ثلاجة', '(حزمة)  Condor ثلاجة', 0, 67500, 67500, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/75/a139e3f7803fd8b3de37ad448b70e0fb.png', '', NULL, '2023-10-26 17:13:43', '2023-10-26 17:13:43', NULL),
(76, 53, 1, 'تلفاز 43 بوصة IRIS', '(حزمة) تلفاز 43 بوصة IRIS', 0, 45000, 45000, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/76/599cbaea9bb6c67b2539aa85ae782155.png', '', NULL, '2023-10-26 17:16:58', '2023-10-26 17:20:42', NULL),
(77, 54, 1, 'سميد صابة 10كغ', '(حزمة) سميد صابة 10كغ', 0, 620, 620, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/77/7e81ae26fd55e69138324814885cec01.png', '', NULL, '2023-10-26 17:24:09', '2023-10-26 17:24:10', NULL),
(78, 54, 1, 'فرينة 1كغ', '(حزمة) فرينة 1كغ', 0, 60, 60, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/78/69f6ceb7bc86de9fda9c36feef6a9bc7.png', '', NULL, '2023-10-26 17:27:32', '2023-10-26 17:27:45', NULL),
(79, 54, 1, 'فرينة 5كغ', '(حزمة) فرينة 5كغ', 250, 300, 300, 1, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/79/e7f4dd93aac2c7714c840c6422a84f5e.png', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/79/7f3b22c418b550e973c8746c9cbbec72.mp4', NULL, '2023-10-26 17:28:28', '2023-11-21 10:04:15', NULL),
(80, 54, 1, 'فرينة الدار 1كغ', '(حزمة) فرينة الدار 1كغ', 50, 70, 70, 1, 3, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/80/f0519aebc0ec85617ef760670de975ca.png', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/80/59449e0a10e21d40832811000e31ece3.mp4', NULL, '2023-10-26 17:29:29', '2023-11-21 10:00:47', NULL),
(81, 13, 1, 'iphone', '(حزمة) iphone', 12000, 14500, 15000, 20, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/81/8a139e1afa9b405f87bf0d8cfc92b546.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/81/97fe5c93c9425bb2c74209125310de47.mp4', NULL, '2023-11-20 13:37:52', '2023-11-21 10:14:27', '2023-11-21 10:14:27'),
(83, 13, 1, 'iphone 12', '(حزمة) iphone 12', 12000, 14500, 15000, 26, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/83/a56330a8ec7598148e448614d80275d7.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/83/098605dba3104c62b590433f886ed8c9.mp4', NULL, '2023-11-21 08:47:55', '2023-11-21 11:28:32', '2023-11-21 11:28:32'),
(84, 13, 1, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 14, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/84/1aba7ada208f3404e829c0706aafc242.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/84/47c0275091989a3b020d6a0b0c7c5e72.mp4', NULL, '2023-11-21 18:02:11', '2023-11-21 18:02:30', NULL),
(85, 13, 1, 'iphone 13 pro', '(حزمة) iphone 13 pro', 10000, 12000, 20000, 152, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/85/494976e06385386f992df0a04a352814.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/85/8396ee8f779a1668a69864565505d72b.mp4', NULL, '2023-11-21 18:04:29', '2023-11-21 18:04:49', NULL),
(86, 13, 1, 'iphone 12 pro', '(حزمة) iphone 12 pro', 10000, 12000, 20000, 15, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/86/0314500429a06b34d6a2834120ccd64d.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/86/186ec86f5613658c85e76bad10ab13f4.mp4', NULL, '2023-11-21 18:41:55', '2023-11-21 18:42:14', NULL),
(87, 13, 2, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 20, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/87/1a11e275839a39dd373361513b410f36.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/87/98749335d0c35dee63c339618c7803ac.mp4', NULL, '2023-11-21 20:42:26', '2023-11-21 20:42:48', NULL),
(88, 13, 2, 'iphone 13 pro max', '(حزمة) iphone 13 pro max', 10000, 12000, 20000, 20, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/88/ffb4ceb015992bdfb4d489617be9c9ef.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/88/1915226c73f73f53752f1420d34bb765.mp4', NULL, '2023-11-21 20:44:48', '2023-11-21 20:45:06', NULL),
(89, 14, 9, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 47, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/89/240955d98a3d15a0307c6e7d05bcaf9a.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/89/66936b6a49a6aa10d71534fa9cb540ef.mp4', NULL, '2023-11-21 21:13:59', '2023-11-21 21:14:15', NULL),
(90, 15, 10, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 45, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/90/9cc648a46a7fbc5baefecc18bd0e24cf.jpg', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/90/22bc37d5d262ea029c2f7534c64e6265.mp4', NULL, '2023-11-21 21:16:16', '2023-11-21 21:16:35', NULL),
(91, 15, 2, 'iphone 12', '(حزمة) iphone 12', 10000, 12000, 20000, 15, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/91/1ef468a5628678acb3bc3ec57b8b44f6.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/91/faa0de4f10a921f11ad6dadb9cd3dd49.mp4', NULL, '2023-11-21 21:46:50', '2023-11-21 22:12:24', NULL),
(92, 14, 6, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 8, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/92/eefb175068b4e88b3d03e5bcb60477d9.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/92/43841ed6ae536bb12e1a3a8e267bd649.mp4', NULL, '2023-11-21 21:51:31', '2023-11-21 22:09:19', NULL),
(93, 14, 6, 'iphone 12', '(حزمة) iphone 12', 10000, 12000, 20000, 45, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/93/79dbb11dd9ed26156191d3ffa298514b.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/93/c396a95bcab841ac5a509960d293010a.mp4', NULL, '2023-11-22 08:27:56', '2023-11-22 08:28:14', NULL),
(94, 14, 4, 'iphone 13 pro', '(حزمة) iphone 13 pro', 255100, 30000, 13000, 780, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/94/acce1a944f2530cd722bb00534a4e1e9.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/94/65273419a1ab332a2e8e4f3f8577105e.mp4', NULL, '2023-11-22 08:29:03', '2023-11-22 08:30:05', NULL),
(95, 13, 12, 'iphone 12 pro', '(حزمة) iphone 12 pro', 145, 458, 480, 2, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/95/84eec9327ab438a4f4151ff0f328c34a.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/95/91e9bf6bc6939fd3b4fdf891390af85b.mp4', NULL, '2023-11-22 08:31:41', '2023-11-25 09:09:57', NULL),
(96, 14, 4, 'iphone 12 pro', '(حزمة) iphone 12 pro', 50, 154, 154, 4, 1, 'available', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/74f25a62e9a29d1b9e64e587e102b887.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/96/fee33432039585bd59484c2695e1462b.mp4', NULL, '2023-11-22 09:05:24', '2023-11-22 10:55:11', '2023-11-22 10:55:11'),
(99, 13, 4, 'iphone 12 pro', '(حزمة) iphone 12 pro', 10000, 12000, 20000, 14, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 22:33:40', '2023-11-26 22:33:40', NULL),
(100, 13, 1, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 15000, 14, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 22:36:02', '2023-11-26 22:36:02', NULL),
(101, 13, 6, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 15, 1, 'available', NULL, NULL, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/100/4112d0be82ad03ea71753a8723c15ad2.PNG', '2023-11-26 22:51:27', '2023-11-26 22:51:27', NULL),
(102, 13, 4, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 15, 1, 'available', NULL, NULL, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/101/4362080edba2d34b95efdffa270d1454.jpeg', '2023-11-26 22:57:58', '2023-11-26 22:57:58', NULL),
(103, 15, 5, 'iphone 13 pro', '(حزمة) iphone 13 pro', 10000, 12000, 20000, 14, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:01:05', '2023-11-26 23:01:05', NULL),
(104, 14, 4, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 4, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:09:23', '2023-11-26 23:09:23', NULL),
(105, 15, 4, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 14, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:19:44', '2023-11-26 23:19:44', NULL),
(106, 28, 1, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 11, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:21:41', '2023-11-26 23:21:41', NULL),
(107, 15, 5, 'iphone 13', '(حزمة) iphone 13', 250, 12000, 20000, 45, 1, 'available', NULL, NULL, '$datavideos = [];', '2023-11-26 23:23:26', '2023-11-26 23:23:26', NULL),
(108, 13, 4, 'iphone 13', '(حزمة) iphone 13', 250, 12000, 20000, 12, 1, 'available', NULL, NULL, '$datavideos = [];', '2023-11-26 23:24:50', '2023-11-26 23:24:50', NULL),
(109, 15, 4, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 45, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:30:16', '2023-11-26 23:30:16', NULL),
(110, 11, 4, 'iphone 13', '(حزمة) iphone 13', 12000, 12000, 20000, 15, 1, 'available', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lorem massa, hendrerit at velit nec,', '2023-11-26 23:44:11', '2023-11-26 23:44:11', NULL),
(111, 14, 4, 'iphone 13', '(حزمة) iphone 13', 10000, 12000, 20000, 14, 1, 'available', NULL, NULL, 'datadatadatadata', '2023-11-26 23:47:43', '2023-11-26 23:47:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_media`
--

CREATE TABLE `products_media` (
  `id` bigint(20) NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_media`
--

INSERT INTO `products_media` (`id`, `products_id`, `images`, `videos`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 96, 'afc1c.appspot.com/products/96/74f25a62e9a29d1b9e64e587e102b887.PNG', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/videos/96/fee33432039585bd59484c2695e1462b.mp4', '2023-11-26 08:37:12', '2023-11-26 08:37:12', NULL),
(2, 96, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/9ad6d92d1ff76b96dcd75dc906b58114.png', NULL, '2023-11-26 22:21:28', '2023-11-26 22:21:28', NULL),
(3, 96, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/a472af582af3f5a538bd2413d3cc70b9.png', NULL, '2023-11-26 22:23:26', '2023-11-26 22:23:26', NULL),
(4, 96, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/3bb97b78d824fcacf2791582f2924e8b.jpeg', NULL, '2023-11-26 22:23:53', '2023-11-26 22:23:53', NULL),
(5, 96, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/9bff1502134b7fe272cb46b9d47ed59e.png', NULL, '2023-11-26 22:24:13', '2023-11-26 22:24:13', NULL),
(6, 96, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/96/9bb2d67851a064947f614cc073a5891c.png', NULL, '2023-11-26 22:24:20', '2023-11-26 22:24:20', NULL),
(7, 99, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/99/ad3c7abbe134d34c5d417336c3969e07.png', NULL, '2023-11-26 22:33:51', '2023-11-26 22:33:51', NULL),
(8, 100, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/100/4112d0be82ad03ea71753a8723c15ad2.PNG', NULL, '2023-11-26 22:36:04', '2023-11-26 22:36:04', NULL),
(9, 101, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/101/4362080edba2d34b95efdffa270d1454.jpeg', NULL, '2023-11-26 22:51:30', '2023-11-26 22:51:30', NULL),
(10, 102, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/102/03e7cdd71794fa665181774183a936a3.png', NULL, '2023-11-26 22:58:05', '2023-11-26 22:58:05', NULL),
(11, 103, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/103/8efefb3783c2f1cdd238146fa5914008.png', NULL, '2023-11-26 23:01:13', '2023-11-26 23:01:13', NULL),
(12, 104, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/104/46b7ab15618bf77eed851d5d3c591ff8.jpeg', NULL, '2023-11-26 23:09:25', '2023-11-26 23:09:25', NULL),
(13, 104, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/104/1a45b6bf496b4396309961c018e47d1b.png', NULL, '2023-11-26 23:09:32', '2023-11-26 23:09:32', NULL),
(14, 104, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/104/9fdd769f655f420f09ea2e74983eb646.png', NULL, '2023-11-26 23:09:37', '2023-11-26 23:09:37', NULL),
(15, 105, 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/products/105/8394afd5836562586760b9eb7d3f4408.PNG', NULL, '2023-11-26 23:19:48', '2023-11-26 23:19:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('ad','offer','family','solo') DEFAULT NULL,
  `element` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `deleteable` tinyint(4) NOT NULL DEFAULT 1,
  `moveable` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `type`, `element`, `rank`, `deleteable`, `moveable`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ad', NULL, 1, 0, 0, '2023-08-01 23:00:00', '2023-08-01 23:00:00', NULL),
(2, 'solo', NULL, 6, 0, 1, '2023-08-01 23:00:00', '2023-10-24 18:14:45', NULL),
(3, 'offer', 'popular', 3, 0, 1, '2023-08-01 23:00:00', '2023-10-25 18:23:46', NULL),
(59, 'offer', '4', 7, 1, 1, '2023-10-23 20:27:01', '2023-10-25 18:24:37', NULL),
(60, 'family', '4', 5, 1, 1, '2023-10-23 20:27:58', '2023-10-25 18:25:04', NULL),
(61, 'family', '5', 8, 1, 1, '2023-10-23 22:13:40', '2023-10-25 18:25:04', NULL),
(62, 'family', '6', 4, 1, 1, '2023-10-25 18:06:55', '2023-10-25 18:24:37', NULL),
(63, 'family', '7', 2, 1, 1, '2023-10-25 18:13:58', '2023-10-25 18:23:31', NULL),
(64, 'family', '8', 9, 1, 1, '2023-10-25 18:23:10', '2023-10-25 18:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sets`
--

CREATE TABLE `sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sets`
--

INSERT INTO `sets` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'shipping', 0, NULL, '2023-11-01 09:40:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'كورنفلاكس 1', '2023-10-21 12:52:30', '2023-10-23 17:18:25', '2023-10-23 17:18:25'),
(2, 1, 'كك', '2023-10-21 12:53:35', '2023-10-23 17:18:08', '2023-10-23 17:18:08'),
(3, 1, 'فف', '2023-10-21 12:53:42', '2023-10-23 17:18:15', '2023-10-23 17:18:15'),
(4, 1, 'فغغ', '2023-10-21 12:53:48', '2023-10-23 17:18:19', '2023-10-23 17:18:19'),
(5, 5, 'خواتم فضة', '2023-10-23 17:14:17', '2023-10-23 17:14:17', NULL),
(6, 5, 'خواتم ذهب', '2023-10-23 17:14:30', '2023-10-23 17:14:30', NULL),
(7, 6, 'ساعات رجالية', '2023-10-23 17:17:45', '2023-10-23 17:17:45', NULL),
(8, 6, 'ساعات نسائية', '2023-10-23 17:18:02', '2023-10-23 17:18:02', NULL),
(9, 7, 'الحواسيب المحمولة', '2023-10-23 17:21:12', '2023-10-23 17:21:12', NULL),
(10, 7, 'حاسوب مكتب', '2023-10-23 17:21:32', '2023-10-23 17:21:32', NULL),
(11, 7, 'ادوات الحاسوب', '2023-10-23 17:21:57', '2023-10-23 17:21:57', NULL),
(12, 8, 'سامسونغ', '2023-10-23 17:24:24', '2023-10-23 17:24:24', NULL),
(13, 8, 'iPhone', '2023-10-23 17:25:06', '2023-10-23 17:25:06', NULL),
(14, 8, 'OPPO', '2023-10-23 17:26:15', '2023-10-23 17:26:15', NULL),
(15, 8, 'Redmi', '2023-10-23 17:26:48', '2023-10-23 17:26:48', NULL),
(16, 5, 'سلاسل ذهب', '2023-10-23 21:15:55', '2023-10-23 21:15:55', NULL),
(17, 3, 'شيبس', '2023-10-23 21:27:35', '2023-10-23 21:27:35', NULL),
(18, 9, 'ملابس رجال', '2023-10-23 21:35:04', '2023-10-23 21:35:04', NULL),
(19, 9, 'ملابس نساء', '2023-10-23 21:35:14', '2023-10-23 21:35:14', NULL),
(20, 9, 'ملابس اولاد', '2023-10-23 21:35:30', '2023-10-23 21:35:30', NULL),
(21, 9, 'ملابس بنات', '2023-10-23 21:35:44', '2023-10-23 21:35:44', NULL),
(22, 3, 'لوز', '2023-10-24 09:51:51', '2023-10-24 09:51:51', NULL),
(23, 10, 'DFM', '2023-10-25 10:32:46', '2023-10-25 10:32:46', NULL),
(24, 10, 'مرسيدس', '2023-10-25 10:37:34', '2023-10-25 10:37:34', NULL),
(25, 10, 'بوغاتي', '2023-10-25 10:48:31', '2023-10-25 10:48:31', NULL),
(26, 13, 'الخضروات', '2023-10-25 11:12:55', '2023-10-25 11:12:55', NULL),
(27, 13, 'الفواكه', '2023-10-25 11:13:07', '2023-10-25 11:13:07', NULL),
(28, 19, 'كنديا', '2023-10-25 18:44:51', '2023-10-25 18:44:51', NULL),
(29, 11, 'سوزوكي', '2023-10-25 19:02:55', '2023-10-25 19:02:55', NULL),
(30, 12, 'تايوان', '2023-10-25 19:04:22', '2023-10-25 19:04:22', NULL),
(31, 27, 'شاكمان', '2023-10-25 19:06:42', '2023-10-25 19:06:42', NULL),
(32, 24, 'الاسمنت', '2023-10-25 19:08:27', '2023-10-25 19:08:27', NULL),
(33, 16, 'مشروبات غازية', '2023-10-25 21:00:42', '2023-10-25 21:00:42', NULL),
(34, 16, 'عصائر', '2023-10-25 21:08:33', '2023-10-25 21:08:33', NULL),
(35, 25, 'احذية رجالية', '2023-10-25 21:11:28', '2023-10-25 21:11:28', NULL),
(36, 25, 'احذية نسائية', '2023-10-25 21:16:03', '2023-10-25 21:16:03', NULL),
(37, 21, 'العاب اولاد', '2023-10-25 21:20:11', '2023-10-25 21:20:11', NULL),
(38, 21, 'العاب بنات', '2023-10-25 21:20:22', '2023-10-25 21:20:22', NULL),
(39, 18, 'المعلبات', '2023-10-25 21:26:32', '2023-10-25 21:26:32', NULL),
(40, 15, 'المكييفات الهوائية', '2023-10-25 21:38:25', '2023-10-25 21:38:25', NULL),
(41, 15, 'آلات الغسيل', '2023-10-25 21:40:17', '2023-10-25 21:40:17', NULL),
(42, 17, 'جافيل', '2023-10-25 21:45:35', '2023-10-25 21:45:35', NULL),
(43, 28, 'ميكاب', '2023-10-26 16:12:52', '2023-10-26 16:12:52', NULL),
(44, 24, 'ألات البناء', '2023-10-26 16:34:36', '2023-10-26 16:34:36', NULL),
(45, 22, 'لحم الخروف', '2023-10-26 16:38:47', '2023-10-26 16:38:47', NULL),
(46, 22, 'الدجاج', '2023-10-26 16:38:59', '2023-10-26 16:38:59', NULL),
(47, 22, 'الاسماك', '2023-10-26 16:39:09', '2023-10-26 16:39:09', NULL),
(48, 29, 'ألآت الحلاقة', '2023-10-26 16:57:37', '2023-10-26 16:57:37', NULL),
(49, 29, 'ملحقات الحلاقة', '2023-10-26 16:57:51', '2023-10-26 16:57:51', NULL),
(50, 30, 'الادوات المدرسية', '2023-10-26 17:03:38', '2023-10-26 17:03:38', NULL),
(51, 30, 'الكراريس', '2023-10-26 17:04:28', '2023-10-26 17:04:28', NULL),
(52, 15, 'ثلاجات', '2023-10-26 17:13:30', '2023-10-26 17:13:30', NULL),
(53, 15, 'شاشات تلفاز', '2023-10-26 17:14:32', '2023-10-26 17:14:32', NULL),
(54, 18, 'السميد والفرينة', '2023-10-26 17:22:58', '2023-10-26 17:22:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'محمد عدة', NULL, NULL),
(2, 'خالد ', NULL, NULL),
(4, 'جمال الشلف', NULL, NULL),
(5, 'علي واد السوف', NULL, NULL),
(6, 'Abdelkader 02', '2023-11-21 20:51:43', '2023-11-21 20:51:43'),
(7, 'krokale 31', '2023-11-21 20:56:03', '2023-11-21 20:56:03'),
(8, 'lokame 16', '2023-11-21 21:11:31', '2023-11-21 21:11:31'),
(9, 'loukame 16', '2023-11-21 21:13:59', '2023-11-21 21:13:59'),
(10, 'karime 02', '2023-11-21 21:16:16', '2023-11-21 21:16:16'),
(11, 'oussama', '2023-11-22 08:31:41', '2023-11-22 08:31:41'),
(12, 'khaled', '2023-11-25 09:09:57', '2023-11-25 09:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `fcm_token`, `role`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user#1', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$ZYX6YZqI2gLjj6B2QrKzIOzLjkpsw/PCfkf/d4EMDyA2ufaRbO7l6', NULL, NULL, 1, 1, '2023-10-21 12:38:32', '2023-10-21 12:38:32', NULL),
(2, 'ghrissi yacine', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/users/2/2b16bd4079525bccbc4127faf44a9b25.jpg', '0542288040', 'ghrissi.yacine94@gmail.com', NULL, NULL, NULL, 'di4TMoZTQL2R4h_wjCqAiI:APA91bGI-R2NmCmQNbKqxA-p8lHC2-BiGqQde7OgChPuUDOavBmuH4xR51Hjsax1_KGIrwS6D8XE1Z0xUCdYQgHDMnY4xZc1miZ2l7KU__Duz8y1tJHZcmjeYt0b2s_3Ejz8T-Yd0ayd', 1, 1, '2023-10-21 13:20:25', '2023-11-15 11:34:40', NULL),
(3, 'السوفي', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/users/3/87f8390309351af7b44fc4efbd40b33e.jpg', '0542288040', 'yacine.nouni@gmail.com', NULL, NULL, NULL, 'ftsdCP_mQ_atGcZ8pzb7tt:APA91bHf-ESmLKHw1ZShyU0d3GcqYr7pVvN8LJ9W3mvHcDmX77EuLWmG05eustR7SoKT0Jmx4DZ9T-rIT6l-bYSjWa3GD7kSty9oWKq7r8o3gqx8LzN6WAEf83IZPFHO-GVGIiDeR7p2', 1, 1, '2023-10-21 13:37:51', '2023-11-14 09:27:22', NULL),
(4, 'ABCDEFGH', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/users/4/f183723f21eaca22c980403d304a7505.jpg', '0542288040', 'yacine.ghrissi@gmail.com', NULL, NULL, NULL, 'ckbilXB6TwautwrY3f27Zh:APA91bFr7nwya1ROJA2A6zhm3WNARO6Zo8Cocg2ns23VGa_r5DjVetTo3gXwE1IsPZ7-xGQQg9YhD7XSPFTuN8xAEYXKQxvQ3pzJyl0X7g-Pe7aVN-2kvc1tRuRBCZJlCiCbokKV4njl', 1, 1, '2023-10-21 14:51:28', '2023-11-19 20:02:10', NULL),
(5, 'yacine yacine', 'https://storage.googleapis.com/hoskashopping-afc1c.appspot.com/users/5/0aebda4fc7f307cef4b835f3e75daee9.jpg', NULL, 'yy990095@gmail.com', NULL, NULL, NULL, 'fX4rLLVLQMGDea6nHHE6ly:APA91bEhXyqwOQfPiz1gssEf2jFcWJfPK7N7zeRvFIgnOdzBPj1OVdRaJEz2ET7tixbfeBi6Y02eOrthjR6VU0EYWNxrN0xOHEzmI_Vqtwp35u0ODq24-u4qzYUqARcSTA_Lp4gua2tv', 1, 1, '2023-10-22 09:45:50', '2023-11-19 19:25:08', NULL),
(6, 'Amina Amouna', 'https://lh3.googleusercontent.com/a/ACg8ocInvJDKd68vURFA53Da2zha9xeGW6o6m96PNRgCjVuy5w=s96-c', '0696365741', 'aghrissi75@gmail.com', NULL, NULL, NULL, 'dD_UZrWKTgaq1C5Gz-Uc9n:APA91bE_S9o-dz7mHv_mGSC-Z6SLuhxyqKKxlSnbqnBon2SN7mCtoPEqPmFNVvbx0JGK0Am52h8JnQS_MKY1elzvlssIF5sDIn6G2bN57qoNTnVddG8r6NnY0XzyvpQU6-Ue7E6unBJZ', 1, 1, '2023-10-27 09:04:44', '2023-11-12 18:39:06', NULL),
(7, 'Sedira Sedira', 'https://lh3.googleusercontent.com/a/ACg8ocIbx3A55RUpf-T1wx2_oEWkW6sD-I-0LtYKT14lu3N6R3c=s96-c', NULL, 'sedirasedia39@gmail.com', NULL, NULL, NULL, 'ekEJrpAMRdKM0EeW4YGJ6D:APA91bGk19WxkN6WG_7DYTxqsHtzF6azZRkv1oCxox9eJ2VRUet9xcoKpGDcbuBGursY9JX0kzX_xs52NYsmMDDx_JpINTFQOjqPoIr60AxdS0h8jiEoEt7cB-xfSMMwg2vs6bSrks_d', 1, 1, '2023-10-27 19:38:32', '2023-11-04 10:15:50', NULL),
(8, 'djs djs', 'https://lh3.googleusercontent.com/a/ACg8ocJg7T1wtLP4ZvPNifywBLQ82wHTPGw4tf2lwOTonSkk=s96-c', NULL, 'djsdjs202194@gmail.com', NULL, NULL, NULL, 'ckbilXB6TwautwrY3f27Zh:APA91bFr7nwya1ROJA2A6zhm3WNARO6Zo8Cocg2ns23VGa_r5DjVetTo3gXwE1IsPZ7-xGQQg9YhD7XSPFTuN8xAEYXKQxvQ3pzJyl0X7g-Pe7aVN-2kvc1tRuRBCZJlCiCbokKV4njl', 1, 1, '2023-10-30 16:53:01', '2023-11-19 20:08:23', NULL),
(9, 'Amara Necib', 'https://lh3.googleusercontent.com/a/ACg8ocLYGWnaZIQHosW-x9wh2BVjNrwkEFOhdvZhb2PEigjdOzQ=s96-c', NULL, 'amaracoder39@gmail.com', NULL, NULL, NULL, NULL, 1, 1, '2023-11-01 11:33:24', '2023-11-01 11:33:24', NULL),
(10, 'Amara Necib', 'https://lh3.googleusercontent.com/a/ACg8ocL34ZeJJNC4H_89r8-hxl8GhE1E3HSfgkAniyoO69dMpA=s96-c', NULL, 'necib-amara@univ-eloued.dz', NULL, NULL, NULL, NULL, 1, 1, '2023-11-02 11:06:59', '2023-11-02 11:06:59', NULL),
(11, 'khaled zaid', 'https://lh3.googleusercontent.com/a/ACg8ocLPMFnEVknedanBPgKhlEdF5H5SwoSTdSJpjnVQg_E8eA=s96-c', NULL, 'khaledzzzz1992@gmail.com', NULL, NULL, NULL, 'ekEJrpAMRdKM0EeW4YGJ6D:APA91bGk19WxkN6WG_7DYTxqsHtzF6azZRkv1oCxox9eJ2VRUet9xcoKpGDcbuBGursY9JX0kzX_xs52NYsmMDDx_JpINTFQOjqPoIr60AxdS0h8jiEoEt7cB-xfSMMwg2vs6bSrks_d', 1, 1, '2023-11-05 16:32:30', '2023-11-05 16:32:30', NULL),
(12, 'Hoska Dev', 'https://lh3.googleusercontent.com/a/ACg8ocKHw0tG8hho9NEBcte-1CNi2s36dUrdWc-MuxR3yWo8PQ=s96-c', '0672886642', 'hoskadev@gmail.com', NULL, NULL, NULL, 'ekEJrpAMRdKM0EeW4YGJ6D:APA91bGk19WxkN6WG_7DYTxqsHtzF6azZRkv1oCxox9eJ2VRUet9xcoKpGDcbuBGursY9JX0kzX_xs52NYsmMDDx_JpINTFQOjqPoIr60AxdS0h8jiEoEt7cB-xfSMMwg2vs6bSrks_d', 1, 1, '2023-11-06 13:22:50', '2023-11-06 13:24:12', NULL),
(13, 'Mustafa Shahateet', 'https://lh3.googleusercontent.com/a/ACg8ocKDU17MDfWeTCN10uoR2osZJZvCnygGHTQOj_kyO47ETgo=s96-c', NULL, 'shahateet@gmail.com', NULL, NULL, NULL, 'frbiNp0eQO-a7p6GGXrKAO:APA91bEgGbgqvrpmUg1Jrem2f9wkGz204ouwY0oebyum4s8Rsmz5LrEesd8AQexq7b7nYl9lG3OsJvx_LQCIc6gJZyikwz6ruW2Z7L7t6288T3DOWzanIATymaW7QyMNEo3_yEkhDdli', 1, 1, '2023-11-07 14:22:20', '2023-11-07 14:22:20', NULL),
(14, 'info info', 'https://lh3.googleusercontent.com/a/ACg8ocLMQ-FRMD_aVywKQRoTnCVpPmvHcjOUihfZ-c-0ZSM3=s96-c', NULL, 'info41256@gmail.com', NULL, NULL, NULL, 'e0tpksazRt-sM7_9F35qLw:APA91bFjDUIrzfMa9BhAZ2-oEBPcpxu_zI1SAxJVytAiWFeNsv-ixDe8iCzAJf_znCXGogjYPNybKVwPyzBi2WvMSpXzXvMabebjqk1oCohHnJpawRwMatY-P8WZ_5_ic3q1LkxKrm8U', 1, 1, '2023-11-07 18:34:14', '2023-11-15 10:19:18', NULL),
(15, 'Sa khalifa', 'https://lh3.googleusercontent.com/a/ACg8ocLAhPyPH3UY_S6Ok3dfSOy9Y56DBd3pCRXhi31F_NUreLw=s96-c', NULL, 'khalifasalem901@gmail.com', NULL, NULL, NULL, 'dwOObKt5R1-xphEYkwYqmu:APA91bEYFRAa1gybiUCGky2qptBe6jX8pMCgAddFdA9-bCaawfvP1Gtod2jyJJiZAvDrnecL-9Bqq2dTkQhdP7gTJyn2r9dEVJ1DC-EOoS1AvErFoCWEEOJmPZhLts6xfc-vVZRMUMH2', 1, 1, '2023-11-14 16:26:11', '2023-11-14 16:26:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` enum('android','ios') NOT NULL,
  `version_number` varchar(255) DEFAULT NULL,
  `build_number` varchar(255) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `platform`, `version_number`, `build_number`, `priority`, `link`, `created_at`, `updated_at`) VALUES
(1, 'android', '1.0.0', '3', 1, 'google play link', '2023-07-16 13:16:30', '2023-07-25 15:33:14'),
(2, 'ios', '1.0.0', '1', 0, 'apple store link', '2023-07-20 11:17:18', '2023-07-26 07:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_offers`
--
ALTER TABLE `category_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_offers_category_id_foreign` (`category_id`),
  ADD KEY `category_offers_offer_id_foreign` (`offer_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_driver_id_foreign` (`driver_id`),
  ADD KEY `deliveries_order_id_foreign` (`order_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `documentations`
--
ALTER TABLE `documentations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_cart_id_foreign` (`cart_id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_category_id_foreign` (`category_id`),
  ADD KEY `members_family_id_foreign` (`family_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_notice_id_foreign` (`notice_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `products_media`
--
ALTER TABLE `products_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prdouct_media_id` (`products_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_rank_unique` (`rank`);

--
-- Indexes for table `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category_offers`
--
ALTER TABLE `category_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `documentations`
--
ALTER TABLE `documentations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2272;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `products_media`
--
ALTER TABLE `products_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sets`
--
ALTER TABLE `sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_offers`
--
ALTER TABLE `category_offers`
  ADD CONSTRAINT `category_offers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_offers_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `deliveries_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `members_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `products_media`
--
ALTER TABLE `products_media`
  ADD CONSTRAINT `prdouct_media_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
