-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2021 at 06:43 PM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lesson08`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZIP` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContactName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Id`, `Name`, `Address`, `Phone`, `ZIP`, `ContactName`) VALUES
(2, 'Atelier graphique', '54, rue Royale|Nantes|France', '40.32.2555', '44000', 'Carine  Schmitt'),
(3, 'Signal Gift Stores', '8489 Strong St.|Las Vegas|USA', '7025551838', '83030', 'Jean King'),
(4, 'Australian Collectors, Co.', '636 St Kilda Road|Melbourne|Australia', '03 9520 4555', '3004', 'Peter Ferguson'),
(5, 'La Rochelle Gifts', '67, rue des Cinquante Otages|Nantes|France', '40.67.8555', '44000', 'Janine  Labrune'),
(6, 'Baane Mini Imports', 'Erling Skakkes gate 78|Stavern|Norway', '07-98 9555', '4110', 'Jonas  Bergulfsen'),
(7, 'Mini Gifts Distributors Ltd.', '5677 Strong St.|San Rafael|USA', '4155551450', '97562', 'Susan Nelson'),
(8, 'Havel & Zbyszek Co', 'ul. Filtrowa 68|Warszawa|Poland', '(26) 642-7555', '01-012', 'Zbyszek  Piestrzeniewicz'),
(9, 'Blauer See Auto, Co.', 'Lyonerstr. 34|Frankfurt|Germany', '+49 69 66 90 2555', '60528', 'Roland Keitel'),
(10, 'Mini Wheels Co.', '5557 North Pendale Street|San Francisco|USA', '6505555787', '94217', 'Julie Murphy'),
(11, 'Land of Toys Inc.', '897 Long Airport Avenue|NYC|USA', '2125557818', '10022', 'Kwai Lee'),
(12, 'Euro+ Shopping Channel', 'C/ Moralzarzal, 86|Madrid|Spain', '(91) 555 94 44', '28034', 'Diego  Freyre'),
(13, 'Volvo Model Replicas, Co', 'Berguvsvägen  8|Luleå|Sweden', '0921-12 3555', 'S-958 22', 'Christina  Berglund'),
(14, 'Danish Wholesale Imports', 'Vinbæltet 34|Kobenhavn|Denmark', '31 12 3555', '1734', 'Jytte  Petersen'),
(15, 'Saveley & Henriot, Co.', '2, rue du Commerce|Lyon|France', '78.32.5555', '69004', 'Mary  Saveley'),
(16, 'Dragon Souveniers, Ltd.', 'Bronz Sok.|Singapore|Singapore', '+65 221 7555', '79903', 'Eric Natividad'),
(17, 'Muscle Machine Inc', '4092 Furth Circle|NYC|USA', '2125557413', '10022', 'Jeff Young'),
(18, 'Diecast Classics Inc.', '7586 Pompton St.|Allentown|USA', '2155551555', '70267', 'Kelvin Leong'),
(19, 'Technics Stores Inc.', '9408 Furth Circle|Burlingame|USA', '6505556809', '94217', 'Juri Hashimoto'),
(20, 'Handji Gifts& Co', '106 Linden Road Sandown|Singapore|Singapore', '+65 224 1555', '69045', 'Wendy Victorino'),
(21, 'Herkku Gifts', 'Brehmen St. 121|Bergen|Norway  ', '+47 2267 3215', 'N 5804', 'Veysel Oeztan'),
(22, 'Land of Toys Inc.', '897 Long Airport Avenue|NYC|USA', '2125557818', '10022', 'Kwai Lee'),
(23, 'La Rochelle Gifts', '67, rue des Cinquante Otages|Nantes|France', '40.67.8555', '44000', 'Janine Labrune');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `shippedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerId` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `productId`, `quantity`, `createdAt`, `updatedAt`, `shippedAt`, `status`, `comments`, `customerId`) VALUES
(1, 31, 5, '2021-03-31 13:27:08', '2021-03-31 13:35:24', '0000-00-00 00:00:00', 0, '', 13),
(2, 90, 1, '2021-03-20 21:28:08', '2021-03-20 22:31:44', '2021-03-21 09:38:24', 1, '', 15),
(3, 30, 1, '2021-03-05 10:31:08', '2021-03-05 11:06:56', '2021-03-05 22:13:36', 1, '', 18),
(4, 83, 2, '2021-03-20 23:15:08', '2021-03-21 00:50:27', '2021-03-21 11:57:07', 1, '', 9),
(5, 82, 3, '2021-03-12 02:57:08', '2021-03-12 04:51:29', '0000-00-00 00:00:00', 0, '', 21),
(6, 91, 2, '2021-03-03 09:47:08', '2021-03-03 10:33:55', '2021-03-03 21:40:35', 1, '', 12),
(7, 39, 5, '2021-03-26 01:12:08', '2021-03-26 02:04:18', '0000-00-00 00:00:00', 0, '', 4),
(8, 64, 2, '2021-03-10 07:34:08', '2021-03-10 07:53:32', '2021-03-10 19:00:12', 1, '', 13),
(9, 74, 3, '2021-03-08 20:47:08', '2021-03-08 22:10:14', '2021-03-09 09:16:54', 2, '', 17),
(10, 32, 4, '2021-03-03 15:53:08', '2021-03-03 17:03:44', '2021-03-04 04:10:24', 2, '', 9),
(11, 73, 3, '2021-03-05 15:13:08', '2021-03-05 15:37:03', '0000-00-00 00:00:00', 0, '', 14),
(12, 60, 5, '2021-03-12 15:37:08', '2021-03-12 17:11:46', '0000-00-00 00:00:00', 0, '', 7),
(13, 74, 3, '2021-03-16 23:11:08', '2021-03-17 01:05:02', '2021-03-17 12:11:42', 1, '', 18),
(14, 85, 4, '2021-03-16 16:24:08', '2021-03-16 17:01:51', '2021-03-17 04:08:31', 1, '', 2),
(15, 77, 2, '2021-03-27 07:29:08', '2021-03-27 08:55:11', '2021-03-27 20:01:51', 1, '', 19),
(16, 92, 3, '2021-03-26 18:42:08', '2021-03-26 20:07:36', '0000-00-00 00:00:00', 0, '', 17),
(17, 52, 1, '2021-03-09 01:38:08', '2021-03-09 02:42:02', '2021-03-09 13:48:42', 1, '', 20),
(18, 32, 4, '2021-03-27 20:23:08', '2021-03-27 20:51:42', '2021-03-28 06:58:22', 1, '', 10),
(19, 98, 3, '2021-03-11 09:20:08', '2021-03-11 09:54:43', '2021-03-11 21:01:23', 1, '', 11),
(20, 33, 4, '2021-03-12 07:16:08', '2021-03-12 08:01:03', '0000-00-00 00:00:00', 0, '', 4),
(21, 86, 4, '2021-03-05 01:37:08', '2021-03-05 02:00:04', '2021-03-05 13:06:44', 1, '', 10),
(22, 18, 1, '2021-03-18 08:18:08', '2021-03-18 08:29:06', '0000-00-00 00:00:00', 0, '', 4),
(23, 13, 4, '2021-03-04 02:39:08', '2021-03-04 03:22:10', '0000-00-00 00:00:00', 0, '', 3),
(24, 1, 2, '2021-04-03 04:20:08', '2021-04-03 05:16:40', '0000-00-00 00:00:00', 0, '', 12),
(25, 28, 4, '2021-03-26 22:44:08', '2021-03-27 00:19:48', '2021-03-27 11:26:28', 1, '', 12),
(26, 83, 2, '2021-03-11 09:09:08', '2021-03-11 10:17:34', '2021-03-11 21:24:14', 2, '', 7),
(27, 36, 5, '2021-03-05 19:45:08', '2021-03-05 21:36:09', '2021-03-06 08:42:49', 2, '', 20),
(28, 30, 5, '2021-03-24 08:54:08', '2021-03-24 09:51:45', '0000-00-00 00:00:00', 0, '', 14),
(29, 55, 5, '2021-03-13 22:33:08', '2021-03-14 00:07:44', '2021-03-14 11:14:24', 1, '', 7),
(30, 69, 3, '2021-03-04 01:04:08', '2021-03-04 02:39:29', '2021-03-04 13:46:09', 1, '', 12),
(31, 68, 2, '2021-03-09 12:35:08', '2021-03-09 13:15:23', '2021-03-10 00:22:03', 1, '', 6),
(32, 43, 4, '2021-03-12 22:44:08', '2021-03-12 23:37:13', '0000-00-00 00:00:00', 0, '', 6),
(33, 4, 4, '2021-03-12 01:43:08', '2021-03-12 01:53:07', '2021-03-12 12:59:47', 1, '', 13),
(34, 89, 4, '2021-03-31 00:36:08', '2021-03-31 01:14:53', '2021-03-31 12:21:33', 1, '', 17),
(35, 96, 3, '2021-03-05 13:55:08', '2021-03-05 15:01:31', '2021-03-06 02:08:11', 1, '', 18),
(36, 13, 2, '2021-03-19 10:25:08', '2021-03-19 11:00:15', '0000-00-00 00:00:00', 0, '', 20),
(37, 85, 3, '2021-03-02 14:18:08', '2021-03-02 14:33:07', '2021-03-03 01:39:47', 1, '', 9),
(38, 73, 4, '2021-03-22 14:23:08', '2021-03-22 15:34:48', '2021-03-23 02:41:28', 1, '', 13),
(39, 51, 2, '2021-03-03 18:48:08', '2021-03-03 20:19:32', '2021-03-04 07:26:12', 1, '', 2),
(40, 14, 2, '2021-03-10 08:24:08', '2021-03-10 09:39:42', '2021-03-10 20:46:22', 2, '', 2),
(41, 59, 2, '2021-03-12 03:12:08', '2021-03-12 03:45:29', '2021-03-12 14:52:09', 1, '', 9),
(42, 68, 1, '2021-04-01 08:44:08', '2021-04-01 10:37:16', '2021-04-01 21:43:56', 1, '', 13),
(43, 12, 5, '2021-03-25 08:20:08', '2021-03-25 09:52:10', '2021-03-25 20:58:50', 1, '', 19),
(44, 12, 1, '2021-03-23 08:20:08', '2021-03-23 08:32:29', '2021-03-23 19:39:09', 1, '', 16),
(45, 67, 2, '2021-03-14 00:46:08', '2021-03-14 02:34:26', '2021-03-14 13:41:06', 1, '', 15),
(46, 93, 1, '2021-03-04 06:20:08', '2021-03-04 08:01:43', '2021-03-04 19:08:23', 2, '', 19),
(47, 59, 1, '2021-03-06 20:30:08', '2021-03-06 21:26:59', '2021-03-07 08:33:39', 2, '', 4),
(48, 80, 4, '2021-03-19 18:18:08', '2021-03-19 18:51:55', '0000-00-00 00:00:00', 0, '', 12),
(49, 61, 5, '2021-03-06 03:29:08', '2021-03-06 04:33:11', '2021-03-06 15:39:51', 2, '', 6),
(50, 98, 3, '2021-04-03 18:54:08', '2021-04-03 19:27:06', '2021-04-04 06:33:46', 1, '', 16),
(51, 54, 1, '2021-03-05 02:57:08', '2021-03-05 03:38:53', '0000-00-00 00:00:00', 0, '', 14),
(52, 5, 4, '2021-03-18 01:12:08', '2021-03-18 01:54:12', '2021-03-18 13:00:52', 1, '', 3),
(53, 3, 5, '2021-03-17 13:48:08', '2021-03-17 14:19:42', '2021-03-18 01:26:22', 1, '', 17),
(54, 71, 2, '2021-03-19 01:22:08', '2021-03-19 01:55:48', '2021-03-19 13:02:28', 1, '', 18),
(55, 71, 5, '2021-03-20 09:14:08', '2021-03-20 10:59:21', '2021-03-20 22:06:01', 1, '', 18),
(56, 54, 4, '2021-03-12 21:25:08', '2021-03-12 22:16:03', '2021-03-13 09:22:43', 1, '', 8),
(57, 73, 4, '2021-03-04 18:54:08', '2021-03-04 20:07:47', '2021-03-05 07:14:27', 1, '', 19),
(58, 60, 1, '2021-03-20 00:20:08', '2021-03-20 01:11:01', '2021-03-20 12:17:41', 1, '', 1),
(59, 7, 1, '2021-03-19 20:05:08', '2021-03-19 21:56:39', '2021-03-20 09:03:19', 1, '', 4),
(60, 34, 3, '2021-03-25 18:09:08', '2021-03-25 18:25:49', '2021-03-26 05:32:29', 1, '', 2),
(61, 83, 5, '2021-03-22 16:52:08', '2021-03-22 17:00:58', '2021-03-23 04:07:38', 1, '', 5),
(62, 34, 4, '2021-03-26 05:20:08', '2021-03-26 06:59:26', '2021-03-26 18:06:06', 1, '', 3),
(63, 29, 4, '2021-03-30 17:14:08', '2021-03-30 17:39:02', '2021-03-31 04:45:42', 1, '', 12),
(64, 32, 3, '2021-03-30 05:38:08', '2021-03-30 06:48:34', '2021-03-30 17:55:14', 1, '', 15),
(65, 30, 2, '2021-03-06 09:47:08', '2021-03-06 11:14:05', '2021-03-06 22:20:45', 1, '', 10),
(66, 46, 1, '2021-04-02 06:10:08', '2021-04-02 06:52:25', '2021-04-02 17:59:05', 1, '', 5),
(67, 57, 2, '2021-04-03 16:15:08', '2021-04-03 17:07:20', '2021-04-04 04:14:00', 1, '', 4),
(68, 88, 4, '2021-03-19 04:30:08', '2021-03-19 05:29:32', '2021-03-19 16:36:12', 1, '', 9),
(69, 18, 3, '2021-03-26 09:46:08', '2021-03-26 10:33:12', '2021-03-26 21:39:52', 1, '', 6),
(70, 61, 5, '2021-03-07 11:38:08', '2021-03-07 12:31:01', '2021-03-07 23:37:41', 1, '', 14),
(71, 53, 4, '2021-03-05 05:48:08', '2021-03-05 06:15:27', '2021-03-05 17:22:07', 1, '', 1),
(72, 42, 3, '2021-03-27 02:28:08', '2021-03-27 02:32:52', '2021-03-27 13:39:32', 1, '', 14),
(73, 6, 5, '2021-03-13 11:18:08', '2021-03-13 12:13:27', '2021-03-13 23:20:07', 1, '', 14),
(74, 47, 1, '2021-04-02 05:46:08', '2021-04-02 07:40:07', '2021-04-02 18:46:47', 1, '', 14),
(75, 47, 3, '2021-03-12 23:40:08', '2021-03-13 00:05:08', '2021-03-13 11:11:48', 1, '', 13),
(76, 93, 2, '2021-03-25 13:14:08', '2021-03-25 13:16:04', '0000-00-00 00:00:00', 0, '', 4),
(77, 69, 2, '2021-04-01 06:32:08', '2021-04-01 07:53:19', '0000-00-00 00:00:00', 0, '', 20),
(78, 76, 1, '2021-03-14 08:03:08', '2021-03-14 08:28:09', '2021-03-14 19:34:49', 1, '', 7),
(79, 94, 3, '2021-03-07 05:54:08', '2021-03-07 07:45:39', '0000-00-00 00:00:00', 0, '', 1),
(80, 69, 5, '2021-03-18 06:05:08', '2021-03-18 07:18:33', '2021-03-18 18:25:13', 1, '', 7),
(81, 94, 3, '2021-03-20 23:29:08', '2021-03-20 23:42:57', '0000-00-00 00:00:00', 0, '', 12),
(82, 26, 4, '2021-03-06 09:09:08', '2021-03-06 10:17:41', '2021-03-06 21:24:21', 1, '', 10),
(83, 28, 3, '2021-03-18 15:35:08', '2021-03-18 17:02:02', '2021-03-19 04:08:42', 1, '', 6),
(84, 67, 1, '2021-03-31 05:09:08', '2021-03-31 06:22:14', '2021-03-31 17:28:54', 1, '', 15),
(85, 94, 4, '2021-03-08 14:54:08', '2021-03-08 15:47:03', '2021-03-09 02:53:43', 1, '', 11),
(86, 39, 2, '2021-03-13 05:09:08', '2021-03-13 05:25:00', '2021-03-13 16:31:40', 1, '', 20),
(87, 67, 2, '2021-04-01 08:53:08', '2021-04-01 09:06:59', '0000-00-00 00:00:00', 0, '', 7),
(88, 69, 2, '2021-03-06 00:58:08', '2021-03-06 01:23:06', '2021-03-06 12:29:46', 1, '', 10),
(89, 56, 2, '2021-04-04 02:15:08', '2021-04-04 03:35:43', '2021-04-04 14:42:23', 1, '', 10),
(90, 5, 1, '2021-03-06 09:54:08', '2021-03-06 11:00:38', '0000-00-00 00:00:00', 0, '', 9),
(91, 34, 3, '2021-03-25 15:35:08', '2021-03-25 16:24:45', '2021-03-26 03:31:25', 1, '', 9),
(92, 52, 2, '2021-03-11 04:39:08', '2021-03-11 05:55:17', '2021-03-11 17:01:57', 1, '', 6),
(93, 40, 1, '2021-03-11 10:28:08', '2021-03-11 12:06:12', '2021-03-11 23:12:52', 1, '', 11),
(94, 36, 2, '2021-03-27 06:36:08', '2021-03-27 07:40:19', '2021-03-27 18:46:59', 1, '', 3),
(95, 20, 4, '2021-03-10 04:40:08', '2021-03-10 05:07:48', '2021-03-10 16:14:28', 1, '', 15),
(96, 23, 1, '2021-03-04 15:16:08', '2021-03-04 16:48:25', '2021-03-05 03:55:05', 1, '', 9),
(97, 77, 2, '2021-03-12 06:12:08', '2021-03-12 07:33:37', '2021-03-12 18:40:17', 1, '', 5),
(98, 67, 3, '2021-03-18 10:19:08', '2021-03-18 10:35:39', '2021-03-18 21:42:19', 1, '', 5),
(99, 57, 1, '2021-03-12 17:18:08', '2021-03-12 18:06:42', '0000-00-00 00:00:00', 0, '', 6),
(100, 31, 2, '2021-03-11 13:53:08', '2021-03-11 15:45:50', '2021-03-12 02:52:30', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Id` int(10) UNSIGNED NOT NULL,
  `receivedAt` timestamp NULL DEFAULT NULL,
  `orderId` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`Id`, `receivedAt`, `orderId`, `type`, `comments`) VALUES
(1, '2021-03-31 14:11:27', 1, 2, NULL),
(2, '2021-03-21 02:01:57', 4, 1, NULL),
(3, '2021-03-03 11:30:55', 6, 1, NULL),
(4, '2021-03-10 08:48:59', 8, 2, NULL),
(5, '2021-03-03 18:21:43', 10, 1, NULL),
(6, '2021-03-05 16:44:00', 11, 4, NULL),
(7, '2021-03-17 01:17:37', 13, 1, NULL),
(8, '2021-03-16 17:21:08', 14, 2, NULL),
(9, '2021-03-26 20:45:34', 16, 3, NULL),
(10, '2021-04-03 06:22:11', 24, 1, NULL),
(11, '2021-03-27 01:06:51', 25, 3, NULL),
(12, '2021-03-11 11:12:48', 26, 1, NULL),
(13, '2021-03-05 22:39:52', 27, 1, NULL),
(14, '2021-03-09 13:27:02', 31, 1, NULL),
(15, '2021-03-12 02:11:09', 33, 1, NULL),
(16, '2021-03-31 02:13:56', 34, 1, NULL),
(17, '2021-03-05 15:43:55', 35, 3, NULL),
(18, '2021-03-19 11:25:43', 36, 3, NULL),
(19, '2021-03-22 15:50:41', 38, 4, NULL),
(20, '2021-03-12 04:03:46', 41, 1, NULL),
(21, '2021-04-01 11:35:48', 42, 2, NULL),
(22, '2021-03-25 11:05:41', 43, 1, NULL),
(23, '2021-03-06 22:23:45', 47, 3, NULL),
(24, '2021-03-06 04:43:30', 49, 3, NULL),
(25, '2021-04-03 19:40:39', 50, 3, NULL),
(26, '2021-03-05 03:52:50', 51, 1, NULL),
(27, '2021-03-19 22:53:44', 59, 3, NULL),
(28, '2021-03-26 07:50:48', 62, 1, NULL),
(29, '2021-03-19 06:17:00', 68, 2, NULL),
(30, '2021-03-26 10:47:45', 69, 1, NULL),
(31, '2021-03-27 03:02:26', 72, 2, NULL),
(32, '2021-03-13 13:00:26', 73, 3, NULL),
(33, '2021-04-02 08:23:08', 74, 3, NULL),
(34, '2021-04-01 08:01:51', 77, 4, NULL),
(35, '2021-03-14 08:50:30', 78, 2, NULL),
(36, '2021-03-07 07:57:23', 79, 3, NULL),
(37, '2021-03-18 07:35:07', 80, 1, NULL),
(38, '2021-03-06 11:33:58', 82, 2, NULL),
(39, '2021-04-01 09:23:17', 87, 3, NULL),
(40, '2021-03-10 06:00:45', 95, 2, NULL),
(41, '2021-03-18 11:17:36', 98, 2, NULL),
(42, '2021-03-11 15:58:07', 100, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) UNSIGNED NOT NULL,
  `SKU` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableQuantity` int(11) UNSIGNED DEFAULT NULL,
  `Price` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `SKU`, `Title`, `Description`, `AvailableQuantity`, `Price`) VALUES
(1, 'S10_1678', '1969 Harley Davidson Ultimate Chopper', 'This replica features working ...', 7933, 4881),
(2, 'S10_1949', '1952 Alpine Renault 1300', 'Turnable front wheels; steerin...', 7305, 9858),
(3, 'S10_2016', '1996 Moto Guzzi 1100i', 'Official Moto Guzzi logos and ...', 6625, 6899),
(4, 'S10_4757', '1972 Alfa Romeo GTA', 'Features include: Turnable fro...', 3252, 8568),
(5, 'S10_4962', '1962 LanciaA Delta 16V', 'Features include: Turnable fro...', 6791, 10342),
(6, 'S12_1099', '1968 Ford Mustang', 'Hood, doors and trunk all open...', 68, 9534),
(7, 'S12_1108', '2001 Ferrari Enzo', 'Turnable front wheels; steerin...', 3619, 9559),
(8, 'S12_1666', '1958 Setra Bus', 'Model features 30 windows, sky...', 1579, 7790),
(9, 'S12_2823', '2002 Suzuki XREO', 'Official logos and insignias, ...', 9997, 6627),
(10, 'S12_3380', '1968 Dodge Charger', '1:12 scale model of a 1968 Dod...', 9123, 7516),
(11, 'S12_3891', '1969 Ford Falcon', 'Turnable front wheels; steerin...', 1049, 8305),
(12, 'S12_3990', '1970 Plymouth Hemi Cuda', 'Very detailed 1970 Plymouth Cu...', 5663, 3192),
(13, 'S12_4675', '1969 Dodge Charger', 'Detailed model of the 1969 Dod...', 7323, 5873),
(14, 'S18_1097', '1940 Ford Pickup Truck', 'This model features soft rubbe...', 2613, 5833),
(15, 'S18_1129', '1993 Mazda RX-7', 'This model features, opening h...', 3975, 8351),
(16, 'S18_1342', '1937 Lincoln Berline', 'Features opening engine cover,...', 8693, 6062),
(17, 'S18_1367', '1936 Mercedes-Benz 500K Special Roadster', 'This 1:18 scale replica is con...', 8635, 2426),
(18, 'S18_1589', '1965 Aston Martin DB5', 'Die-cast model of the silver 1...', 9042, 6596),
(19, 'S18_1662', '1980s Black Hawk Helicopter', '1:18 scale replica of actual A...', 5330, 7727),
(20, 'S18_1749', '1917 Grand Touring Sedan', 'This 1:18 scale replica of the...', 2724, 8670),
(21, 'S18_1889', '1948 Porsche 356-A Roadster', 'This precision die-cast replic...', 8826, 5390),
(22, 'S18_1984', '1995 Honda Civic', 'This model features, opening h...', 9772, 9389),
(23, 'S18_2238', '1998 Chrysler Plymouth Prowler', 'Turnable front wheels; steerin...', 4724, 10151),
(24, 'S18_2248', '1911 Ford Town Car', 'Features opening hood, opening...', 540, 3330),
(25, 'S18_2319', '1964 Mercedes Tour Bus', 'Exact replica. 100+ parts. wor...', 8258, 7486),
(26, 'S18_2325', '1932 Model A Ford J-Coupe', 'This model features grille-mou...', 9354, 5848),
(27, 'S18_2432', '1926 Ford Fire Engine', 'Gleaming red handsome appearan...', 2018, 2492),
(28, 'S18_2581', 'P-51-D Mustang', 'Has retractable wheels and com...', 992, 4900),
(29, 'S18_2625', '1936 Harley Davidson El Knucklehead', 'Intricately detailed with chro...', 4357, 2423),
(30, 'S18_2795', '1928 Mercedes-Benz SSK', 'This 1:18 replica features gri...', 548, 7256),
(31, 'S18_2870', '1999 Indy 500 Monte Carlo SS', 'Features include opening and c...', 8164, 5676),
(32, 'S18_2949', '1913 Ford Model T Speedster', 'This 250 part reproduction inc...', 4189, 6078),
(33, 'S18_2957', '1934 Ford V8 Coupe', 'Chrome Trim, Chrome Grille, Op...', 5649, 3435),
(34, 'S18_3029', '1999 Yamaha Speed Boat', 'Exact replica. Wood and Metal....', 4259, 5161),
(35, 'S18_3140', '1903 Ford Model A', 'Features opening trunk,  worki...', 3913, 6830),
(36, 'S18_3232', '1992 Ferrari 360 Spider red', 'his replica features opening d...', 8347, 7790),
(37, 'S18_3233', '1985 Toyota Supra', 'This model features soft rubbe...', 7733, 5701),
(38, 'S18_3259', 'Collectable Wooden Train', 'Hand crafted wooden toy train ...', 6450, 6756),
(39, 'S18_3278', '1969 Dodge Super Bee', 'This replica features opening ...', 1917, 4905),
(40, 'S18_3320', '1917 Maxwell Touring Car', 'Features Gold Trim, Full Size ...', 7913, 5754),
(41, 'S18_3482', '1976 Ford Gran Torino', 'Highly detailed 1976 Ford Gran...', 9127, 7349),
(42, 'S18_3685', '1948 Porsche Type 356 Roadster', 'This model features working fr...', 8990, 6216),
(43, 'S18_3782', '1957 Vespa GS150', 'Features rotating wheels , wor...', 7689, 3295),
(44, 'S18_3856', '1941 Chevrolet Special Deluxe Cabriolet', 'Features opening hood, opening...', 2378, 6458),
(45, 'S18_4027', '1970 Triumph Spitfire', 'Features include opening and c...', 5545, 9192),
(46, 'S18_4409', '1932 Alfa Romeo 8C2300 Spider Sport', 'This 1:18 scale precision die ...', 6553, 4326),
(47, 'S18_4522', '1904 Buick Runabout', 'Features opening trunk,  worki...', 8290, 5266),
(48, 'S18_4600', '1940s Ford truck', 'This 1940s Ford Pick-Up truck ...', 3128, 8476),
(49, 'S18_4668', '1939 Cadillac Limousine', 'Features completely detailed i...', 6645, 2314),
(50, 'S18_4721', '1957 Corvette Convertible', '1957 die cast Corvette Convert...', 1249, 6993),
(51, 'S18_4933', '1957 Ford Thunderbird', 'This 1:18 scale precision die-...', 3209, 3421),
(52, 'S24_1046', '1970 Chevy Chevelle SS 454', 'This model features rotating w...', 1005, 4924),
(53, 'S24_1578', '1997 BMW R 1100 S', 'Detailed scale replica with wo...', 7003, 6086),
(54, 'S24_1628', '1966 Shelby Cobra 427 S/C', 'This diecast model of the 1966...', 8197, 2918),
(55, 'S24_1785', '1928 British Royal Navy Airplane', 'Official logos and insignias...', 3627, 6674),
(56, 'S24_1937', '1939 Chevrolet Deluxe Coupe', 'This 1:24 scale die-cast repli...', 7332, 2257),
(57, 'S24_2000', '1960 BSA Gold Star DBD34', 'Detailed scale replica with wo...', 15, 3732),
(58, 'S24_2011', '18th century schooner', 'All wood with canvas sails. Ma...', 1898, 8234),
(59, 'S24_2022', '1938 Cadillac V-16 Presidential Limousine', 'This 1:24 scale precision die ...', 2847, 2061),
(60, 'S24_2300', '1962 Volkswagen Microbus', 'This 1:18 scale die cast repli...', 2327, 6134),
(61, 'S24_2360', '1982 Ducati 900 Monster', 'Features two-tone paint with c...', 6840, 4710),
(62, 'S24_2766', '1949 Jaguar XK 120', 'Precision-engineered from orig...', 2350, 4725),
(63, 'S24_2840', '1958 Chevy Corvette Limited Edition', 'The operating parts of this 19...', 2542, 1591),
(64, 'S24_2841', '1900s Vintage Bi-Plane', 'Hand crafted diecast-like meta...', 5942, 3425),
(65, 'S24_2887', '1952 Citroen-15CV', 'Precision crafted hand-assembl...', 1452, 7282),
(66, 'S24_2972', '1982 Lamborghini Diablo', 'This replica features opening ...', 7723, 1624),
(67, 'S24_3151', '1912 Ford Model T Delivery Wagon', 'This model features chrome tri...', 9173, 4691),
(68, 'S24_3191', '1969 Chevrolet Camaro Z28', '1969 Z/28 Chevy Camaro 1:24 sc...', 4695, 5051),
(69, 'S24_3371', '1971 Alpine Renault 1600s', 'This 1971 Alpine Renault 1600s...', 7995, 3858),
(70, 'S24_3420', '1937 Horch 930V Limousine', 'Features opening hood, opening...', 2902, 2630),
(71, 'S24_3432', '2002 Chevy Corvette', 'The operating parts of this li...', 9446, 6211),
(72, 'S24_3816', '1940 Ford Delivery Sedan', 'Chrome Trim, Chrome Grille, Op...', 6621, 4864),
(73, 'S24_3856', '1956 Porsche 356A Coupe', 'Features include: Turnable fro...', 6600, 9830),
(74, 'S24_3949', 'Corsair F4U ( Bird Cage)', 'Has retractable wheels and com...', 6812, 2934),
(75, 'S24_3969', '1936 Mercedes Benz 500k Roadster', 'This model features grille-mou...', 2081, 2175),
(76, 'S24_4048', '1992 Porsche Cayenne Turbo Silver', 'This replica features opening ...', 6582, 6978),
(77, 'S24_4258', '1936 Chrysler Airflow', 'Features opening trunk,  worki...', 4710, 5746),
(78, 'S24_4278', '1900s Vintage Tri-Plane', 'Hand crafted diecast-like meta...', 2756, 3623),
(79, 'S24_4620', '1961 Chevrolet Impala', 'This 1:18 scale precision die-...', 7869, 3233),
(80, 'S32_1268', '1980’s GM Manhattan Express', 'This 1980’s era new look Man...', 5099, 5393),
(81, 'S32_1374', '1997 BMW F650 ST', 'Features official die-struck l...', 178, 6692),
(82, 'S32_2206', '1982 Ducati 996 R', 'Features rotating wheels , wor...', 9241, 2414),
(83, 'S32_2509', '1954 Greyhound Scenicruiser', 'Model features bi-level seatin...', 2874, 2598),
(84, 'S32_3207', '1950\'s Chicago Surface Lines Streetcar', 'This streetcar is a joy to see...', 8601, 2672),
(85, 'S32_3522', '1996 Peterbilt 379 Stake Bed with Outrigger', 'This model features, opening d...', 814, 3361),
(86, 'S32_4289', '1928 Ford Phaeton Deluxe', 'This model features grille-mou...', 136, 3302),
(87, 'S32_4485', '1974 Ducati 350 Mk3 Desmo', 'This model features two-tone p...', 3341, 5613),
(88, 'S50_1341', '1930 Buick Marquette Phaeton', 'Features opening trunk,  worki...', 7062, 2706),
(89, 'S50_1392', 'Diamond T620 Semi-Skirted Tanker', 'This limited edition model is ...', 1016, 6829),
(90, 'S50_1514', '1962 City of Detroit Streetcar', 'This streetcar is a joy to see...', 1645, 3749),
(91, 'S50_4713', '2002 Yamaha YZR M1', 'Features rotating wheels , wor...', 600, 3417),
(92, 'S700_1691', 'American Airlines: B767-300', 'Exact replia with official log...', 5841, 5115),
(93, 'S700_2466', 'America West Airlines B757-200', 'Official logos and insignias. ...', 9653, 6880),
(94, 'S700_2610', 'The USS Constitution Ship', 'All wood with canvas sails. Me...', 7083, 3397),
(95, 'S700_2834', 'ATA: B757-300', 'Exact replia with official log...', 7106, 5933),
(96, 'S700_3505', 'The Titanic', 'Completed model measures 19 1/...', 1956, 5109),
(97, 'S700_3962', 'The Queen Mary', 'Exact replica. Wood and Metal....', 5088, 5363),
(98, 'S700_4002', 'American Airlines: MD-11S', 'Polished finish. Exact replia ...', 8820, 3627);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
