-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2025 at 04:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epoch_story`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_id`, `name`, `email`, `email_verified_at`, `password`, `password_changed_at`, `created_at`, `updated_at`) VALUES
(1, 'adm_6766b96cc1f78', 'Super Admin', 'admin@gmail.com', '2024-12-21 12:49:48', '$2y$12$A4tn.P9OsHrhmzWh7BTybeqRujSdFacp5Ux130G7Q2i4eDwFYZHoi', '2025-12-09 15:49:06', '2024-12-21 12:49:49', '2025-12-09 15:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1765295624),
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1765295624;', 1765295624);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(5, 'cust_6936fa1a599c9', 'prod_6936fc1352c1a', 1, 169.00, '2025-12-09 03:44:23', '2025-12-09 03:44:23'),
(6, 'cust_6936fa1a599c9', 'prod_6937d54c7888e', 1, 189.00, '2025-12-09 08:12:04', '2025-12-09 08:12:04'),
(7, 'cust_6936fa1a599c9', 'prod_69382b248ea4b', 1, 99.00, '2025-12-09 14:40:10', '2025-12-09 14:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `customer_id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'cust_6936fa1a599c9', 'tan', 'tanbojan0720@gmail.com', 'Inquiry about Anime Figure availability', 'Hi, I’m interested in purchasing the Naruto Uzumaki Figma.\r\nMay I know if this item is currently available or if you will restock it soon?', '2025-12-09 02:51:03', '2025-12-09 02:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verify_at` timestamp NULL DEFAULT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `first_name`, `last_name`, `email`, `email_verify_at`, `phonenumber`, `address`, `postal_code`, `city`, `state`, `country`, `password`, `created_at`, `updated_at`) VALUES
(1, 'cust_6936fa1a599c9', 'txx', 'bj', 'tanbojan0720@gmail.com', '2025-12-09 14:20:20', '01120312341', 'NO 1,JALAN RAMBUTAN 1/11,', 83000, 'batu pahat', 'johor', 'malaysia', '$2y$12$rS6gdWuiLHaLfyVlhErhY.wstaQ2V7CcEW16MG3Whd2IfXRkh.RCS', '2025-12-08 16:17:30', '2025-12-09 14:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`context`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `level`, `message`, `context`, `created_at`, `updated_at`) VALUES
(1, 'INFO', 'User successfully registered', '{\"customer_id\":\"cust_6936fa1a599c9\",\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:17:30', '2025-12-08 16:17:30'),
(2, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:17:43', '2025-12-08 16:17:43'),
(3, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:17:53', '2025-12-08 16:17:53'),
(4, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:18:06', '2025-12-08 16:18:06'),
(5, 'INFO', 'Customer logged out', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:18:44', '2025-12-08 16:18:44'),
(6, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:18:53', '2025-12-08 16:18:53'),
(7, 'INFO', 'Report generation completed', '{\"total_orders\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:19:15', '2025-12-08 16:19:15'),
(8, 'INFO', 'Report generation completed', '{\"total_orders\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:19:54', '2025-12-08 16:19:54'),
(9, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6936fc1352c1a\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:25:55', '2025-12-08 16:25:55'),
(10, 'INFO', 'Admin logged out', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:26:19', '2025-12-08 16:26:19'),
(11, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:26:38', '2025-12-08 16:26:38'),
(12, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:27:03', '2025-12-08 16:27:03'),
(13, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:27:13', '2025-12-08 16:27:13'),
(14, 'INFO', 'Customer logged out', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:27:55', '2025-12-08 16:27:55'),
(15, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:28:08', '2025-12-08 16:28:08'),
(16, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6936fd83316ce\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:32:03', '2025-12-08 16:32:03'),
(17, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6936ffd386d6d\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:41:55', '2025-12-08 16:41:55'),
(18, 'WARNING', 'Failed login attempt', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:42:34', '2025-12-08 16:42:34'),
(19, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:42:52', '2025-12-08 16:42:52'),
(20, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:43:02', '2025-12-08 16:43:02'),
(21, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-08 16:43:15', '2025-12-08 16:43:15'),
(22, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:32:19', '2025-12-09 02:32:19'),
(23, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:32:28', '2025-12-09 02:32:28'),
(24, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:32:44', '2025-12-09 02:32:44'),
(25, 'ERROR', 'SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it (Connection: mysql, SQL: select * from `sessions` where `id` = ja6Bznzvf5w15UEeDhVlVaUJ0NVM2DP2RMLAT0fI limit 1)', '{\"exception\":{\"errorInfo\":[\"HY000\",2002,\"No connection could be made because the target machine actively refused it\"],\"connectionName\":\"mysql\"}}', '2025-12-09 02:47:28', '2025-12-09 02:47:28'),
(26, 'INFO', 'Contact form submitted successfully', '{\"user_id\":1,\"customer_id\":\"cust_6936fa1a599c9\",\"message\":\"Your message has been sent successfully!\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:03', '2025-12-09 02:51:03'),
(27, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:10', '2025-12-09 02:51:10'),
(28, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6Im1MYU5XUDg2cldRVHFBd29JdHdmZ0E9PSIsInZhbHVlIjoiSGxmcXUyTWpHbTFmdTJxODZMb2lscjE3aHhSTDVMLzBRTzZXMXdLN2NyaGJOUzJ0cWVLUFkyVEIzTnpyNkxOUGUvb3craHVrbVE4OE1nZ0VSQXFYQWlaVXpLRG42d1hQNEtrd0E5WjkvNHM9IiwibWFjIjoiNTUwMTdlYTdlZWQ0ZmFiMTBmNDM4MmNhODMyOWFjMTE5OTg4ZGFlMjllNWE4YzBhNmY1M2EyOTdkYWEwYjRjMSIsInRhZyI6IiJ9\"}', '2025-12-09 02:51:15', '2025-12-09 02:51:15'),
(29, 'WARNING', 'No products found for search term', '{\"search_term\":\"\\u2018 UNION SELECT 1, name, 3 FROM sqlite_master WHERE type=\\u2019table\\u2019 --\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:15', '2025-12-09 02:51:15'),
(30, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:15', '2025-12-09 02:51:15'),
(31, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkZnaE94YlpHdzNDTkFraC92dWJvOUE9PSIsInZhbHVlIjoiaTlpanFaeE5EaGFkVHNEVGxaN25Ldz09IiwibWFjIjoiOThmMmRmOGVlYjY2NWFkNGNkYTA0NGQ4OTgzY2RmZWJkMDg3OTRjOWRhZTBmMWM2YjEzYWM0ZDYyZDcyYTYyOSIsInRhZyI6IiJ9\"}', '2025-12-09 02:51:18', '2025-12-09 02:51:18'),
(32, 'WARNING', 'No products found for search term', '{\"search_term\":\"1=1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:18', '2025-12-09 02:51:18'),
(33, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:51:19', '2025-12-09 02:51:19'),
(34, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkNDOTAzdjRMMERIOXNTZU5ROVFYb2c9PSIsInZhbHVlIjoiaHkvVnlIeWNJbWRleTF1TG1YeTBmZz09IiwibWFjIjoiNmI5YTU5ODU4NDgzNGJhNzFjNjNiNGU2OGI0MTYyNTRkYTcxYjYwMjFjYzc4OTEyMTBjOTBlMmMwNzdlNmE1YSIsInRhZyI6IiJ9\"}', '2025-12-09 02:52:32', '2025-12-09 02:52:32'),
(35, 'WARNING', 'No products found for search term', '{\"search_term\":\"OR 1=1--\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:52:32', '2025-12-09 02:52:32'),
(36, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:52:32', '2025-12-09 02:52:32'),
(37, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6InFWTmNOUW1kM3lvdmQwd3k4Vnp1ZWc9PSIsInZhbHVlIjoic0ZodGNUY2tTNWdJcWc1UzdjdGhQdz09IiwibWFjIjoiMGE0MjZhYWQ4MjQxZTI0MGZmYjUxYjc4YzA3Njc1OWFhMjlhYThiYjkzM2ZlN2IwMjIwOTZlMGI2YTAzMTIyMCIsInRhZyI6IiJ9\"}', '2025-12-09 02:52:50', '2025-12-09 02:52:50'),
(38, 'WARNING', 'No products found for search term', '{\"search_term\":\"admin\' --\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:52:50', '2025-12-09 02:52:50'),
(39, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:52:50', '2025-12-09 02:52:50'),
(40, 'INFO', 'User successfully updated profile', '{\"customer_id\":1,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:08', '2025-12-09 02:53:08'),
(41, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:24', '2025-12-09 02:53:24'),
(42, 'WARNING', 'Requested quantity exceeds available stock', '{\"product_id\":\"prod_6936fc1352c1a\",\"requested_quantity\":\"8\",\"available_stock\":5,\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:33', '2025-12-09 02:53:33'),
(43, 'INFO', 'Cart updated', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"updated_quantity\":\"2\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:42', '2025-12-09 02:53:42'),
(44, 'INFO', 'Cart updated', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"updated_quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:45', '2025-12-09 02:53:45'),
(45, 'INFO', 'Cart item removed', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:53:59', '2025-12-09 02:53:59'),
(46, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fd83316ce\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:54:07', '2025-12-09 02:54:07'),
(47, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:54:14', '2025-12-09 02:54:14'),
(48, 'INFO', 'Cart updated', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fd83316ce\",\"updated_quantity\":\"2\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:54:27', '2025-12-09 02:54:27'),
(49, 'INFO', 'Cart updated', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fd83316ce\",\"updated_quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 02:54:30', '2025-12-09 02:54:30'),
(50, 'INFO', 'Payment successfully processed', '{\"customer_id\":\"cust_6936fa1a599c9\",\"payment_id\":1,\"payment_method\":\"Online Banking\",\"total\":324,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(51, 'INFO', 'Order created successfully', '{\"order_id\":1,\"customer_id\":\"cust_6936fa1a599c9\",\"total\":324,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(52, 'INFO', 'Product quantity updated', '{\"product_id\":11,\"new_quantity\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(53, 'INFO', 'Removed cart item after successful payment', '{\"cart_item_id\":2,\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(54, 'INFO', 'Product quantity updated', '{\"product_id\":10,\"new_quantity\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(55, 'INFO', 'Removed cart item after successful payment', '{\"cart_item_id\":3,\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(56, 'INFO', 'Payment process completed', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(57, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936ffd386d6d\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:03:28', '2025-12-09 03:03:28'),
(58, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:01', '2025-12-09 03:04:01'),
(59, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IjZVa2VMRnpmVnV6ZVpBTnRtYUV4RWc9PSIsInZhbHVlIjoibm1vNkhqNWpuT3YvbjRqdzdXYUZaUT09IiwibWFjIjoiMTNhMzg3YjM4NmIyOTZlOTJjZjc1NGNjZjI3YWEzNWYwMTZiOGExOWRiOTQ1ZTM3N2U3NTM4ZDFjYmE0ZGE0MiIsInRhZyI6IiJ9\"}', '2025-12-09 03:04:05', '2025-12-09 03:04:05'),
(60, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:05', '2025-12-09 03:04:05'),
(61, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkRxbGIrdTh1OFdPV1ZLeGpRY3NFNlE9PSIsInZhbHVlIjoia05mVGlaRXRRZWdOSFFNUVN4TlZqZz09IiwibWFjIjoiZTBkZGZjN2RlYjRhMjhhMDBjY2QxM2E1ZjNlYzAxMDg0ZmJhODcxZDQwZTI1MjBmMjZlNDcwYTY4YTYyYzhmZiIsInRhZyI6IiJ9\"}', '2025-12-09 03:04:21', '2025-12-09 03:04:21'),
(62, 'INFO', 'Search results returned', '{\"products_count\":1,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:21', '2025-12-09 03:04:21'),
(63, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6Illib2RwZGNEWFk5TW1ib1hLa0EvY1E9PSIsInZhbHVlIjoieE9LdDRSa0x6b21EVmpDTkE4NkxoQT09IiwibWFjIjoiZTFiNzA5MGZlNTk2NDhhZTEzMzljYWQ0MjU0YWU4YzEwNzMxNTU5MWEzMGE3MTE5Nzc1Y2MzN2E1NDIzNTg0NCIsInRhZyI6IiJ9\"}', '2025-12-09 03:04:27', '2025-12-09 03:04:27'),
(64, 'WARNING', 'No products found for search term', '{\"search_term\":\"pre order\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:27', '2025-12-09 03:04:27'),
(65, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:27', '2025-12-09 03:04:27'),
(66, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6InFkUzhNM1ZFcFNzbDkwTjVYQWhJQXc9PSIsInZhbHVlIjoiMUk1bkc1c3BNV1dZNVpucmRqMmtldz09IiwibWFjIjoiOGM5N2I1YTljYWQ4N2JiZTZkNmZlNGFlMTM3ZWE0ZmQ0NTNlYWI3MTZkZTAwNDJkNzQ0ZGY3NzZjYTU3ZjNjMiIsInRhZyI6IiJ9\"}', '2025-12-09 03:04:30', '2025-12-09 03:04:30'),
(67, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:04:30', '2025-12-09 03:04:30'),
(68, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:05:34', '2025-12-09 03:05:34'),
(69, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:06:29', '2025-12-09 03:06:29'),
(70, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IjlQR3haK1FXRm5EU3Y0WlhmaDNPTEE9PSIsInZhbHVlIjoiZ0dXQkM4UXlXSGtKTVZ0eEFIVmpJUT09IiwibWFjIjoiZTJkZmM4ODBkNDQxMzBiNjVmNzQxYTg2YTU2MTczZDE3YTU1NzU0YTY5YjBkMzM4YmQwYTAyMjY4NDI0NTFkMyIsInRhZyI6IiJ9\"}', '2025-12-09 03:06:32', '2025-12-09 03:06:32'),
(71, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:06:32', '2025-12-09 03:06:32'),
(72, 'ERROR', 'Undefined variable $orders (View: C:\\Users\\tanbo\\Herd\\Epoch_Story\\resources\\views\\order_details.blade.php)', '{\"userId\":1,\"exception\":{}}', '2025-12-09 03:26:24', '2025-12-09 03:26:24'),
(73, 'ERROR', 'Undefined variable $product (View: C:\\Users\\tanbo\\Herd\\Epoch_Story\\resources\\views\\payments.blade.php)', '{\"userId\":1,\"exception\":{}}', '2025-12-09 03:28:29', '2025-12-09 03:28:29'),
(74, 'INFO', 'Payment successfully processed', '{\"customer_id\":\"cust_6936fa1a599c9\",\"payment_id\":2,\"payment_method\":\"Credit \\/ Direct Card\",\"total\":299,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(75, 'INFO', 'Order created successfully', '{\"order_id\":2,\"customer_id\":\"cust_6936fa1a599c9\",\"total\":299,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(76, 'INFO', 'Product quantity updated', '{\"product_id\":12,\"new_quantity\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(77, 'INFO', 'Removed cart item after successful payment', '{\"cart_item_id\":4,\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(78, 'INFO', 'Payment process completed', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(79, 'ERROR', 'Undefined variable $product (View: C:\\Users\\tanbo\\Herd\\Epoch_Story\\resources\\views\\payments.blade.php)', '{\"userId\":1,\"exception\":{}}', '2025-12-09 03:29:19', '2025-12-09 03:29:19'),
(80, 'ERROR', 'Undefined variable $product (View: C:\\Users\\tanbo\\Herd\\Epoch_Story\\resources\\views\\payments.blade.php)', '{\"userId\":1,\"exception\":{}}', '2025-12-09 03:30:22', '2025-12-09 03:30:22'),
(81, 'ERROR', 'Undefined variable $product (View: C:\\Users\\tanbo\\Herd\\Epoch_Story\\resources\\views\\payments.blade.php)', '{\"userId\":1,\"exception\":{}}', '2025-12-09 03:41:33', '2025-12-09 03:41:33'),
(82, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6936fc1352c1a\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:44:23', '2025-12-09 03:44:23'),
(83, 'INFO', 'Payment successfully saved', '{\"user_id\":1,\"payment_id\":3,\"total\":179,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:45:10', '2025-12-09 03:45:10'),
(84, 'INFO', 'Order successfully saved', '{\"user_id\":1,\"order_id\":3,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:45:10', '2025-12-09 03:45:10'),
(85, 'INFO', 'Payment successfully saved', '{\"user_id\":1,\"payment_id\":4,\"total\":155,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:45:28', '2025-12-09 03:45:28'),
(86, 'INFO', 'Order successfully saved', '{\"user_id\":1,\"order_id\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:45:28', '2025-12-09 03:45:28'),
(87, 'INFO', 'Customer logged out', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:46:23', '2025-12-09 03:46:23'),
(88, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:46:47', '2025-12-09 03:46:47'),
(89, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:47:43', '2025-12-09 03:47:43'),
(90, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:48:34', '2025-12-09 03:48:34'),
(91, 'INFO', 'Product updated successfully', '{\"product_id\":10,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:49:00', '2025-12-09 03:49:00'),
(92, 'INFO', 'Product updated successfully', '{\"product_id\":11,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:49:10', '2025-12-09 03:49:10'),
(93, 'INFO', 'Order cancelled and status saved successfully', '{\"order_id\":2,\"new_status\":\"cancelled\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:53:37', '2025-12-09 03:53:37'),
(94, 'INFO', 'Order status saved successfully', '{\"order_id\":3,\"new_status\":\"shipped\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:53:44', '2025-12-09 03:53:44'),
(95, 'INFO', 'Order status saved successfully', '{\"order_id\":4,\"new_status\":\"shipped\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:53:50', '2025-12-09 03:53:50'),
(96, 'INFO', 'Order status saved successfully', '{\"order_id\":4,\"new_status\":\"completed\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:53:53', '2025-12-09 03:53:53'),
(97, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:54:08', '2025-12-09 03:54:08'),
(98, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:55:33', '2025-12-09 03:55:33'),
(99, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:56:14', '2025-12-09 03:56:14'),
(100, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 03:56:34', '2025-12-09 03:56:34'),
(101, 'INFO', 'Product updated successfully', '{\"product_id\":10,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 04:20:11', '2025-12-09 04:20:11'),
(102, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937ab0821eaf\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 04:52:24', '2025-12-09 04:52:24'),
(103, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937aba8c968d\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 04:55:04', '2025-12-09 04:55:04'),
(104, 'INFO', 'Uploaded new main image', '{\"main_image\":\"\\/assets\\/img\\/fate_grand_order_anastasia_viy_main.jpg\"}', '2025-12-09 04:55:30', '2025-12-09 04:55:30'),
(105, 'INFO', 'Product updated successfully', '{\"product_id\":14,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 04:55:30', '2025-12-09 04:55:30'),
(106, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937abeb289d1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 04:56:11', '2025-12-09 04:56:11'),
(107, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 05:01:47', '2025-12-09 05:01:47'),
(108, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 05:02:00', '2025-12-09 05:02:00'),
(109, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 05:02:15', '2025-12-09 05:02:15'),
(110, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 07:39:08', '2025-12-09 07:39:08'),
(111, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937d54c7888e\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 07:52:44', '2025-12-09 07:52:44'),
(112, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937d6dda7906\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 07:59:25', '2025-12-09 07:59:25'),
(113, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:05:56', '2025-12-09 08:05:56'),
(114, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:06:06', '2025-12-09 08:06:06'),
(115, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:08:08', '2025-12-09 08:08:08'),
(116, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6937d90b40d4f\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:08:43', '2025-12-09 08:08:43'),
(117, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:11:44', '2025-12-09 08:11:44'),
(118, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IlNHcHYyS1k2LzRpOEZNQXpXcmlRMnc9PSIsInZhbHVlIjoiM3FBWEUxU1ZwcTVDb0lERHVJOGo3QT09IiwibWFjIjoiNzY4N2M2YmNmNzFjZDU3YzhjMDE0ZjRhMTRmY2ZkNWMwOTFjZWY5MTRjZGU3NDJhNjZlMmEyZWIxMjk4YzMwYiIsInRhZyI6IiJ9\"}', '2025-12-09 08:11:47', '2025-12-09 08:11:47'),
(119, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:11:47', '2025-12-09 08:11:47'),
(120, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_6937d54c7888e\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:12:04', '2025-12-09 08:12:04'),
(121, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:13:18', '2025-12-09 08:13:18'),
(122, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkxhS1JFQ2JUVUFsa2hTYnk3M0JUUXc9PSIsInZhbHVlIjoiQ0VpOUtEWnBwcE9TR0xnWnorM0hhZz09IiwibWFjIjoiMDUxZTRlNjYwZTE3OTZhMDVlMDRlOTRkNGIwMzlmMTM3NzkxZGNhYmJhNTBlZmIzZWQzZTNiNmFmMzlhMjE2ZCIsInRhZyI6IiJ9\"}', '2025-12-09 08:13:20', '2025-12-09 08:13:20'),
(123, 'INFO', 'Search results returned', '{\"products_count\":2,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:13:21', '2025-12-09 08:13:21'),
(124, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:13:48', '2025-12-09 08:13:48'),
(125, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IjNrNTlFZEFXSEJSSmRjNmtza0lJbGc9PSIsInZhbHVlIjoidUJOZGRYcnpMNDlnSEk1Qk10S3Q2QT09IiwibWFjIjoiNmUxNzc2N2JjMWQ2ZThhMGNhOThkNTc4MGQ3NTlmYTIwNTM5YzI2YjI1ZmMwODY2YjU0MDM1MmUzNjQ0MTdiMSIsInRhZyI6IiJ9\"}', '2025-12-09 08:13:51', '2025-12-09 08:13:51'),
(126, 'INFO', 'Search results returned', '{\"products_count\":8,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 08:13:51', '2025-12-09 08:13:51'),
(127, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:00:24', '2025-12-09 13:00:24'),
(128, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:00:36', '2025-12-09 13:00:36'),
(129, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:00:48', '2025-12-09 13:00:48'),
(130, 'INFO', 'Customer logged out', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:01:21', '2025-12-09 13:01:21'),
(131, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:01:31', '2025-12-09 13:01:31'),
(132, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_69381fa6e3571\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:09:58', '2025-12-09 13:09:58'),
(133, 'INFO', 'Uploaded new main image', '{\"main_image\":\"\\/assets\\/img\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_c_main.jpg\"}', '2025-12-09 13:10:17', '2025-12-09 13:10:17'),
(134, 'INFO', 'Product updated successfully', '{\"product_id\":19,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:10:17', '2025-12-09 13:10:17'),
(135, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_6938206e030b4\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:13:18', '2025-12-09 13:13:18'),
(136, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_693820c4dd441\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:14:44', '2025-12-09 13:14:44'),
(137, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_69382b248ea4b\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 13:59:00', '2025-12-09 13:59:00'),
(138, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_69382b7eec9d2\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:00:30', '2025-12-09 14:00:30'),
(139, 'INFO', 'Product created successfully', '{\"product_id\":\"prod_69382e449a3b8\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:12:20', '2025-12-09 14:12:20'),
(140, 'INFO', 'Customer logged in', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:19:56', '2025-12-09 14:19:56'),
(141, 'INFO', 'OTP email sent successfully', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:20:07', '2025-12-09 14:20:07'),
(142, 'INFO', 'OTP verified successfully', '{\"customer_id\":\"cust_6936fa1a599c9\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:20:20', '2025-12-09 14:20:20'),
(143, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:24:19', '2025-12-09 14:24:19'),
(144, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6ImdNQTFaWjdIaE9hTVpvVGN3a05HbkE9PSIsInZhbHVlIjoiTmVhLzY0Z05hUUVRV3N6SHpPaU1EZz09IiwibWFjIjoiMzQwYjA1NzNlZmQ5YWFhMTg0MjQ5YTExNjgwZDRjNmNiOGJhNjI1M2ZkN2Q5MmI1ZWRhM2E2YTQyZjRhZjBkYSIsInRhZyI6IiJ9\"}', '2025-12-09 14:24:22', '2025-12-09 14:24:22'),
(145, 'INFO', 'Search results returned', '{\"products_count\":14,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:24:22', '2025-12-09 14:24:22'),
(146, 'INFO', 'Product added to cart', '{\"customer_id\":\"cust_6936fa1a599c9\",\"product_id\":\"prod_69382b248ea4b\",\"quantity\":\"1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:11', '2025-12-09 14:40:11'),
(147, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:19', '2025-12-09 14:40:19'),
(148, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkNua3RIUjRuNW5CTVBPWVhqdmRtUVE9PSIsInZhbHVlIjoiczRhNUJBeG5wWHh6Ly9ITDdaNzRIdz09IiwibWFjIjoiODQ0YWE5Mjc2MzNjMDFhMzEyOGE5NjdmNzE5N2RlMTBjOWY5ZTE1M2E0ZjQyMDUwZDIyODQ2NzJkNzUyNDBiMyIsInRhZyI6IiJ9\"}', '2025-12-09 14:40:24', '2025-12-09 14:40:24'),
(149, 'WARNING', 'No products found for search term', '{\"search_term\":\"1=1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:24', '2025-12-09 14:40:24'),
(150, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:24', '2025-12-09 14:40:24'),
(151, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:51', '2025-12-09 14:40:51'),
(152, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkR4T3lGWGkwS0krem1aWkFwbVBscWc9PSIsInZhbHVlIjoiNmdCQ0RXWXh2U3pFMzJMMHJQcGU1dz09IiwibWFjIjoiODAwMzFmM2M0MDU5MzNmYWI3NzY0YmQ2MmJmMDU0ZmY1MTdjNmI5ZTRkZDNjNjA2NDJmMDdlMmI2NzhlN2JiMiIsInRhZyI6IiJ9\"}', '2025-12-09 14:40:56', '2025-12-09 14:40:56'),
(153, 'WARNING', 'No products found for search term', '{\"search_term\":\"\'or\'1\'=\'1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:56', '2025-12-09 14:40:56'),
(154, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:40:56', '2025-12-09 14:40:56'),
(155, 'INFO', 'Redirecting to search URL', '{\"search_url\":\"https:\\/\\/epoch_story.test\\/search?search=eyJpdiI6IkJWS1JBSHhSWWZHOEpQVytBWVplZFE9PSIsInZhbHVlIjoiOUt3dnlyMXpnbUsrQ09rNXA0a01Qdz09IiwibWFjIjoiYjYxMDZlMWI5ZGMzMDRmMWZhZGMzOTlkM2I0ZWFhMDg3MzNkY2FlY2JiZDlhZjE5ZTAyMGJlZmM2ZWQxZGFmMCIsInRhZyI6IiJ9\"}', '2025-12-09 14:41:05', '2025-12-09 14:41:05'),
(156, 'WARNING', 'No products found for search term', '{\"search_term\":\"\'OR1\'=\'1\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:41:05', '2025-12-09 14:41:05'),
(157, 'INFO', 'Search results returned', '{\"products_count\":0,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:41:05', '2025-12-09 14:41:05'),
(158, 'INFO', 'Customer logged out', '{\"email\":\"tanbojan0720@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:43:34', '2025-12-09 14:43:34'),
(159, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:43:43', '2025-12-09 14:43:43'),
(160, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 14:44:08', '2025-12-09 14:44:08'),
(161, 'INFO', 'Admin logged in', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 15:48:45', '2025-12-09 15:48:45'),
(162, 'INFO', 'Admin updated profile', '{\"email\":\"admin@gmail.com\",\"ip_address\":\"127.0.0.1\"}', '2025-12-09 15:49:06', '2025-12-09 15:49:06'),
(163, 'INFO', 'Report generation completed', '{\"total_orders\":4,\"ip_address\":\"127.0.0.1\"}', '2025-12-09 15:49:35', '2025-12-09 15:49:35');

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
(1, '2024_12_07_065944_create_customers_table', 1),
(2, '2024_12_09_143230_create_otps_table', 1),
(3, '2024_12_11_175842_create_password_resets_table', 1),
(4, '2024_12_13_152709_create_contacts_table', 1),
(5, '2024_12_13_232836_create_products_table', 1),
(6, '2024_12_14_135948_create_carts_table', 1),
(7, '2024_12_17_174610_create_payments_table', 1),
(8, '2024_12_17_223018_create_orders_table', 1),
(9, '2024_12_22_211655_create_cache_table', 1),
(10, '2024_12_22_231235_create_logs_table', 1),
(11, '2024_12_31_125423_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_id`)),
  `product_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_name`)),
  `product_price` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_price`)),
  `quantity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`quantity`)),
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('in progress','shipped','completed','cancelled') NOT NULL DEFAULT 'in progress',
  `order_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `first_name`, `last_name`, `email`, `phonenumber`, `address`, `postal_code`, `city`, `state`, `country`, `product_id`, `product_name`, `product_price`, `quantity`, `payment_id`, `status`, `order_at`, `shipped_at`, `completed_at`, `cancelled_at`, `created_at`, `updated_at`) VALUES
(1, 'cust_6936fa1a599c9', 'txx', 'bj', 'tanbojan0720@gmail.com', '01120312341', 'NO 1,JALAN RAMBUTAN 1/11,', 83000, 'batu pahat', 'johor', 'malaysia', '[\"prod_6936fd83316ce\",\"prod_6936fc1352c1a\"]', '[\"Fragrant Flower Blooms with Dignity Kaoruko\",\"Demon Slayer Kimetsu no Yaiba Giyu Tomioka\"]', '[\"145.00\",\"169.00\"]', '[1,1]', 1, 'cancelled', '2025-12-09 03:03:14', NULL, NULL, '2025-12-09 03:07:53', '2025-12-09 03:03:14', '2025-12-09 03:07:53'),
(2, 'cust_6936fa1a599c9', 'txx', 'bj', 'tanbojan0720@gmail.com', '01120312341', 'NO 1,JALAN RAMBUTAN 1/11,', 83000, 'batu pahat', 'johor', 'malaysia', '[\"prod_6936ffd386d6d\"]', '[\"Nendoroid Shirakami Fubuki Parade Dress \"]', '[\"289.00\"]', '[1]', 2, 'cancelled', '2025-12-09 03:28:50', NULL, NULL, '2025-12-09 03:53:37', '2025-12-09 03:28:50', '2025-12-09 03:53:37'),
(3, 'cust_6936fa1a599c9', 'txx', 'bj', 'tanbojan0720@gmail.com', '01120312341', 'NO 1,JALAN RAMBUTAN 1/11,', 83000, 'batu pahat', 'johor', 'malaysia', '[\"prod_6936fc1352c1a\"]', '[\"Demon Slayer Kimetsu no Yaiba Giyu Tomioka\"]', '[\"169.00\"]', '[\"1\"]', 3, 'shipped', '2025-12-09 03:45:10', '2025-12-10 03:53:44', NULL, NULL, '2025-12-09 03:45:10', '2025-12-09 03:53:44'),
(4, 'cust_6936fa1a599c9', 'txx', 'bj', 'tanbojan0720@gmail.com', '01120312341', 'NO 1,JALAN RAMBUTAN 1/11,', 83000, 'batu pahat', 'johor', 'malaysia', '[\"prod_6936fd83316ce\"]', '[\"Fragrant Flower Blooms with Dignity Kaoruko\"]', '[\"145.00\"]', '[\"1\"]', 4, 'completed', '2025-12-09 03:45:28', '2025-12-10 03:53:50', '2025-12-12 03:53:53', NULL, '2025-12-09 03:45:28', '2025-12-09 03:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `customer_id`, `otp`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'cust_6936fa1a599c9', 383789, '2025-12-08 16:22:49', '2025-12-08 16:17:49', '2025-12-08 16:17:49'),
(2, 'cust_6936fa1a599c9', 468242, '2025-12-08 16:31:59', '2025-12-08 16:26:59', '2025-12-08 16:26:59'),
(3, 'cust_6936fa1a599c9', 626956, '2025-12-08 16:47:58', '2025-12-08 16:42:58', '2025-12-08 16:42:58'),
(4, 'cust_6936fa1a599c9', 489536, '2025-12-09 02:37:25', '2025-12-09 02:32:25', '2025-12-09 02:32:25'),
(5, 'cust_6936fa1a599c9', 436796, '2025-12-09 05:06:56', '2025-12-09 05:01:56', '2025-12-09 05:01:56'),
(6, 'cust_6936fa1a599c9', 206562, '2025-12-09 08:11:02', '2025-12-09 08:06:02', '2025-12-09 08:06:02'),
(7, 'cust_6936fa1a599c9', 584184, '2025-12-09 13:05:32', '2025-12-09 13:00:32', '2025-12-09 13:00:32'),
(8, 'cust_6936fa1a599c9', 263053, '2025-12-09 14:25:02', '2025-12-09 14:20:02', '2025-12-09 14:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `otp_id` bigint(20) UNSIGNED NOT NULL,
  `password_updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `shipping` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_id`, `subtotal`, `shipping`, `total`, `status`, `payment_method`, `payment_at`, `created_at`, `updated_at`) VALUES
(1, 'cust_6936fa1a599c9', 314.00, 10.00, 324.00, 'success', 'Online Banking', '2025-12-09 03:03:14', '2025-12-09 03:03:14', '2025-12-09 03:03:14'),
(2, 'cust_6936fa1a599c9', 289.00, 10.00, 299.00, 'success', 'Credit / Direct Card', '2025-12-09 03:28:50', '2025-12-09 03:28:50', '2025-12-09 03:28:50'),
(3, 'cust_6936fa1a599c9', 169.00, 10.00, 179.00, 'success', 'eWallet', '2025-12-09 03:45:10', '2025-12-09 03:45:10', '2025-12-09 03:45:10'),
(4, 'cust_6936fa1a599c9', 145.00, 10.00, 155.00, 'success', 'Online Banking', '2025-12-09 03:45:28', '2025-12-09 03:45:28', '2025-12-09 03:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_detail`)),
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `comments_count` int(11) NOT NULL DEFAULT 0,
  `main_image` varchar(255) DEFAULT NULL,
  `gallery_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery_images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `category`, `product_detail`, `price`, `quantity`, `rating`, `comments_count`, `main_image`, `gallery_images`, `created_at`, `updated_at`) VALUES
(10, 'prod_6936fc1352c1a', 'Demon Slayer Kimetsu no Yaiba Giyu Tomioka', 'Figure(Pre-Order)', '[\"Giyu\",\"MEGAHOUSE\",\"110mm\",\"Pre Order\"]', 169.00, 10, 5, 3, '/assets/img/demon_slayer_kimetsu_no_yaiba_giyu_tomioka_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/demon_slayer_kimetsu_no_yaiba_giyu_tomioka_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/demon_slayer_kimetsu_no_yaiba_giyu_tomioka_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/demon_slayer_kimetsu_no_yaiba_giyu_tomioka_3.jpg\\\"]\"', '2025-12-08 16:25:55', '2025-12-09 04:20:11'),
(11, 'prod_6936fd83316ce', 'Fragrant Flower Blooms with Dignity Kaoruko', 'Figure(Pre-Order)', '[\"Kaoruko\",\"SUNRISEPOP\",\"140mm\",\"Pre Order\"]', 145.00, 5, 5, 4, '/assets/img/the_fragrant_flower_blooms_with_dignity_kaoruko_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/the_fragrant_flower_blooms_with_dignity_kaoruko_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/the_fragrant_flower_blooms_with_dignity_kaoruko_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/the_fragrant_flower_blooms_with_dignity_kaoruko_3.jpg\\\"]\"', '2025-12-08 16:32:03', '2025-12-09 03:49:10'),
(12, 'prod_6936ffd386d6d', 'Nendoroid Shirakami Fubuki Parade Dress ', 'Figure(Pre-Order)', '[\"Shirakami Fubuki\",\"hololive\",\"100mm\",\"Pre Order\"]', 289.00, 4, 5, 2, '/assets/img/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_3.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_4.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_5.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_shirakami_fubuki_parade_dress_outfit_ver_6.jpg\\\"]\"', '2025-12-08 16:41:55', '2025-12-09 03:28:50'),
(13, 'prod_6937ab0821eaf', 'Is the Order a Rabbit Chino ', 'Figure(Pre-Order)', '[\"Chino\",\"PRE-ORDER\",\"230mm\"]', 915.00, 5, 0, 0, '/assets/img/is_the_order_a_rabbit_chino_dress_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/is_the_order_a_rabbit_chino_dress_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/is_the_order_a_rabbit_chino_dress_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/is_the_order_a_rabbit_chino_dress_3.jpg\\\"]\"', '2025-12-09 04:52:24', '2025-12-09 04:52:24'),
(14, 'prod_6937aba8c968d', 'Fate Grand Order Anastasia Viy', 'Figure(Pre-Order)', '[\"Anastasia & Viy\",\"PRE-ORDER\",\"235mm\"]', 1149.00, 5, 0, 0, '/assets/img/fate_grand_order_anastasia_viy_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/fate_grand_order_anastasia_viy_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/fate_grand_order_anastasia_viy_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/fate_grand_order_anastasia_viy_3.jpg\\\"]\"', '2025-12-09 04:55:04', '2025-12-09 04:55:04'),
(15, 'prod_6937abeb289d1', 'Nendoroid Miyabi Hoshimi', 'Figure(Pre-Order)', '[\"Miyabi Hoshimi\",\"PRE-ORDER\",\"100mm\"]', 325.00, 10, 0, 0, '/assets/img/nendoroid_miyabi_hoshimi_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_3.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_4.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_5.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/nendoroid_miyabi_hoshimi_6.jpg\\\"]\"', '2025-12-09 04:56:11', '2025-12-09 04:56:11'),
(16, 'prod_6937d54c7888e', 'Frieren Beyond Journey End', 'Figure(Ready Stock)', '[\"Frieren\",\"READY STOCK\",\"165mm\"]', 189.00, 5, 0, 0, '/assets/img/frieren_beyond_journey_end_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_3.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_4.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_5.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/frieren_beyond_journey_end_6.jpg\\\"]\"', '2025-12-09 07:52:44', '2025-12-09 07:52:44'),
(17, 'prod_6937d6dda7906', 'PARADE SP Hoshimachi Suisei', 'Figure(Ready Stock)', '[\"Hololive\",\"READY STROCK\",\"170mm\"]', 269.00, 5, 0, 0, '/assets/img/pop_up_parade_sp_hoshimachi_suisei_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_3.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_4.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_5.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_hoshimachi_suisei_6.jpg\\\"]\"', '2025-12-09 07:59:25', '2025-12-09 07:59:25'),
(18, 'prod_6937d90b40d4f', 'PARADE SP Tokoyami Towa', 'Figure(Ready Stock)', '[\"Tokoyami Towa\",\"READY STOCK\",\"170mm\"]', 295.00, 5, 0, 0, '/assets/img/pop_up_parade_sp_tokoyami_towa_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_3.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_4.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_5.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/pop_up_parade_sp_tokoyami_towa_6.jpg\\\"]\"', '2025-12-09 08:08:43', '2025-12-09 08:08:43'),
(19, 'prod_6938206e030b4', 'Cardcaptor Sakura Clear Card Ready to Assemble Acrylic Stand A', 'Assembly Series(Ready Stock)', '[\"Material: Acrylic\",\"Size: Approx. 10.5cm x 10.5cm x 16cm\"]', 109.00, 10, 0, 0, '/assets/img/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_a_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_a_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_a_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_a_3.jpg\\\"]\"', '2025-12-09 13:13:18', '2025-12-09 13:13:18'),
(20, 'prod_693820c4dd441', 'Cardcaptor Sakura Clear Card Ready to Assemble Acrylic Stand B', 'Assembly Series(Ready Stock)', '[\"Material: Acrylic\",\"Size: Approx. 10.5cm x 10.5cm x 16cm\"]', 109.00, 10, 0, 0, '/assets/img/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_b_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_b_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_b_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_b_3.jpg\\\"]\"', '2025-12-09 13:14:44', '2025-12-09 13:14:44'),
(21, 'prod_69381fa6e3571', 'Cardcaptor Sakura Clear Card Ready to Assemble Acrylic Stand C', 'Assembly Series(Ready Stock)', '[\"Material: Acrylic\",\"Size: Approx. 10.5cm x 10.5cm x 16cm\"]', 109.00, 5, 0, 0, '/assets/img/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_c_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_c_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_c_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/cardcaptor_sakura_clear_card_ready_to_assemble_acrylic_stand_c_3.jpg\\\"]\"', '2025-12-09 13:09:58', '2025-12-09 13:09:58'),
(22, 'prod_69382b248ea4b', 'SPY X FAMILY BAG ANYA', 'Anime Peripheral', '[\"W34\\u00d7H39\\u00d7D10cm\"]', 99.00, 5, 0, 0, '/assets/img/spy_x_family_bag_anya_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_anya_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_anya_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_anya_3.jpg\\\"]\"', '2025-12-09 13:59:00', '2025-12-09 13:59:00'),
(23, 'prod_69382b7eec9d2', 'SPY X FAMILY BAG YOR', 'Anime Peripheral', '[\"W34\\u00d7H39\\u00d7D10cm\"]', 99.00, 10, 0, 0, '/assets/img/spy_x_family_bag_yor_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_yor_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_yor_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_yor_3.jpg\\\"]\"', '2025-12-09 14:00:30', '2025-12-09 14:00:30'),
(24, 'prod_69382e449a3b8', 'SPY X FAMILY BAG LOID', 'Anime Peripheral', '[\"W34\\u00d7H39\\u00d7D10cm\"]', 99.00, 10, 0, 0, '/assets/img/spy_x_family_bag_loid_main.jpg', '\"[\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_loid_1.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_loid_2.jpg\\\",\\\"\\\\\\/assets\\\\\\/img\\\\\\/spy_x_family_bag_loid_3.jpg\\\"]\"', '2025-12-09 14:12:20', '2025-12-09 14:12:20');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hZJDJPuK9RIGVfgBJmBGODiCZHIwfAHGim1I6dzl', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJalZrZEN0Q01rNU5abFJ0TUVoeVEyMHhhV2xIVDNjOVBTSXNJblpoYkhWbElqb2lVVmRxYTBvME0xSnlPR1Z5YmpBeWVsVTBOVEptZVRReloxUXhObHBqVHpabGNYSTNRamx1TUU5S05sSXZRMlpOYmtaaWVsUlhlQ3RGTkRKbmJFVlpVREU0T1hoTlRDOUZXRk5RVVVoWU9TdHJTWFZ0ZFZWdVkzQlRRVWhTZWxKSmFqaHNWblpTUTBZclFUQm9hbkpEYW1OMGVYaHRMMWx3ZG5adVVpdGFUWFJZZW1kd1YzVlNlV0pQUTJSb2VsTk9lVU13VERaeU1WbGFaQzl6Y201TVdXeFdUelZ6T0hveVkyaE5ia1E0YUVWT1VGUkpRMk5pT1dWdU5XaEpVR0pCVHpBMmRIVlFZak5wYmtOWVNtOU9jamRaWjJkU1NIUm1PVEpNYlhBNU1HdFhUVGxxU0VFNVMwUTFhVUUxZW0wMFQzRlFlaXRWVFZNcllXY3dRMGwzT1RJNGVtSTFhRkJWZDFkWE1tZEpkbFpQZG1SVU1XODNPVmd4TVUxdGRtOUxaR2g1VDNsVk5XczJWa2N6VlVNMlFWRnBZbkphVjNJMmJ6UnlTVE15YjNKWVIyMDBkbUkyUTI0eFdISnNVMEo2YVV0amNtb3hZelZUTDNWcVVWRnViR2haY1RGMFJWWTVhWHB2UFNJc0ltMWhZeUk2SW1VeE1UWXpNREEzWkRaalkyUXlabVU0TXprMFlUWm1ZalUzT0RNM1pUYzRZMlEwWkRBd1l6RTBNV0kxTldabE5qa3hZMlF5TlRJd1lqa3laVGsxT0RBaUxDSjBZV2NpT2lJaWZRPT0=', 1765291523),
('oi7SgljlIfwLTOuWqNVp1bo9YNm8jTmvO2zoh2aF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJa0ZyYlhZMVZWWkpVelpSY201cU1GVktXbE5LWjBFOVBTSXNJblpoYkhWbElqb2lXVk16V1c1SWNYaHpMMGgxYmpsblVrUk9jbGxYTVRaU2IwVTVVRmRMUVhkSWRqVnZaa2RSVWtjeU9FVlpieXMwTkZWc2NUQldlVzByYlZGek1YQnFUVFp2TVRWcmJXWkRZbnAxV0VaRGJrTnZTMFpzY3k5dmRVcFZUbWQ2VVdKeWJESk5PWGcyVGs5UFJHdHVieTlhYXl0SWJHWlFZMVZxTkhjMldtSXhUSEF6Y0hOSE9GcDVUMnhXY21GMlVFOUxkUzlaYWpCVk9XSmpjMEZNYkV0RmFrZG5LemxvTlhOc2VrRkhhMk0wYmtKaGJqRTNUbEZ2TVVWUFMxTjZNRlZhVlZwTmJrRjRNM0EyYUU1WFVFMXRMMGhrY3pGTlltVjRhWFE1VTFNMWVVNVhXSFJvWTNkb2JXTXJVbmRzTmtsU1kyeFVVa1ZWVlRoQ1kxWmlXRXh2VDJsNUwwOWxNekozVVhsQ1JFdFhheXR3WkdabVZVRktWVFJGV2xSYUt6YzNWVVJLYlZwNGRFMUVSR1lyWmtJeFNXeEpNelJXZWtOaVZHOUZlRUZ0VlhSWmJqWjZVeTlzTWtKNFIyaEJNMjkxWkhrdlJFVkVPVkJ5VlM5UmNsUjBRMkpoWTNwNWVucHVkbGRqT1dwbVRFMW5UbUZOT1drek1XcFRPVVV2YlhOQlZtVXdNRmhIV0hsTU1EQkdTSE01V0RoT2MyRlhiVGhxVmpCblpqbExXalJhZVRSeWFGQTRRVWRXVG5kblMyTkdlRXRpY1RoS1VWWjNTeTlXTlhoT01TSXNJbTFoWXlJNkltSmxaVEZsT1RZMU9EZ3pOR001TVRKa1pqQXlOakV6WmpZeFkySmlZMkppWW1GbU5qUmtPVFV4TXpZeFpETTFZemd6TURSbFlqa3daRFUyWlRoaE9UTWlMQ0owWVdjaU9pSWlmUT09', 1765295383);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_admin_id_unique` (`admin_id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_customer_id_unique` (`customer_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_customer_id_foreign` (`customer_id`),
  ADD KEY `password_resets_otp_id_foreign` (`otp_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `otps`
--
ALTER TABLE `otps`
  ADD CONSTRAINT `otps_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `password_resets_otp_id_foreign` FOREIGN KEY (`otp_id`) REFERENCES `otps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
