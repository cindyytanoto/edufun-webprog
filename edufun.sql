-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 05:05 PM
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
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `article_content` text NOT NULL,
  `article_cover` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `writer_id`, `course_id`, `article_content`, `article_cover`, `created_date`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Aliquid rerum cum et enim odio. Quia aperiam illo perspiciatis aut iste ratione commodi. Natus facilis ea sed quos minima.', 'https://via.placeholder.com/640x480.png/006666?text=et', '2024-07-21', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(2, 1, 2, 'Nobis corporis recusandae aspernatur laudantium quo nihil accusamus. Molestiae necessitatibus quasi impedit qui est similique odio. Nisi neque aut nesciunt officia.', 'https://via.placeholder.com/640x480.png/005511?text=et', '2024-08-11', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(3, 5, 6, 'Excepturi eos et dolorum quia tempora. Nemo non sunt minima. Impedit quisquam aperiam eum consequatur veritatis doloremque voluptate.', 'https://via.placeholder.com/640x480.png/0011ff?text=autem', '2024-09-16', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(4, 3, 2, 'Doloribus molestias neque quidem consequatur illum dolorem illum et. Expedita est porro id. Cum est recusandae nesciunt.', 'https://via.placeholder.com/640x480.png/005544?text=quis', '2024-04-28', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(5, 10, 4, 'Ullam ut sed illum saepe ducimus delectus. Nisi voluptatem laborum quis in ut non. Doloremque aut voluptas consequuntur quidem. Reiciendis ducimus sequi itaque veritatis.', 'https://via.placeholder.com/640x480.png/008888?text=delectus', '2024-07-29', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(6, 1, 6, 'Maxime vel hic eius aut minus. Quos fugiat repellendus saepe nobis. Fugiat veniam excepturi nulla fugiat id voluptas. Quaerat officiis quis quia error debitis.', 'https://via.placeholder.com/640x480.png/006666?text=itaque', '2024-01-01', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(7, 7, 4, 'Corrupti et mollitia fugit sed. Eius odio delectus sint magnam. Perspiciatis sit ipsum tempora veniam. Similique recusandae qui impedit ratione autem sapiente ut.', 'https://via.placeholder.com/640x480.png/0055ee?text=velit', '2024-02-27', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(8, 5, 2, 'Perferendis vitae molestiae ipsam pariatur. Vel sapiente aut fugit non est nesciunt. Nesciunt et sequi ullam aut.', 'https://via.placeholder.com/640x480.png/005588?text=eligendi', '2024-02-02', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(9, 6, 6, 'Autem ex praesentium molestias molestias. Ut eos asperiores non ab. Rerum molestiae magnam voluptatibus aliquid natus eligendi. Assumenda ea non voluptatibus et est quae rerum.', 'https://via.placeholder.com/640x480.png/00aa55?text=ratione', '2024-09-15', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(10, 5, 2, 'Architecto est non sed dolor velit. Officiis error est et nihil cumque. Quo eos qui earum veritatis rem ipsam dignissimos mollitia.', 'https://via.placeholder.com/640x480.png/0033cc?text=reiciendis', '2024-10-23', '2024-11-10 11:18:01', '2024-11-10 11:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(2, 'Software Engineering', '2024-11-10 11:18:01', '2024-11-10 11:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Human and Computer Interaction', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(2, 1, 'User Experience', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(3, 1, 'User Experience for Digital Immersive Technology', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(4, 2, 'Pattern Software Design', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(5, 2, 'Agile Software Development', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(6, 2, 'Code Reengineering', '2024-11-10 11:18:01', '2024-11-10 11:18:01');

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
(1, '2024_11_07_124622_create_categories_table', 1),
(2, '2024_11_07_124631_create_writers_table', 1),
(3, '2024_11_07_124639_create_courses_table', 1),
(4, '2024_11_07_124641_create_articles_table', 1),
(5, '2024_11_07_141048_create_sessions_table', 1);

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
('HZiXJ3HqvNmpyBN9ZlL21mxvl7FQWW0T0nj3fc3f', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1FDQWZqR29ZUzNZSG1oZlV4TFdtQk1aNGhNME1kTFpVMms5N3d3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731340360),
('ZPX9V9lXToV7KEjdCAd68W9fl0mTQWbGK9ioq051', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFIyb2s2SmVwdDRCbzVCWThocDJscnRaSnd2STh3UDJBdzNFVjRjVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731268754);

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `writer_name` varchar(255) NOT NULL,
  `writer_specialist` varchar(255) NOT NULL,
  `writer_profile_picture` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `writer_name`, `writer_specialist`, `writer_profile_picture`, `created_at`, `updated_at`) VALUES
(1, 'Rhoda McLaughlin III', 'Radar Technician', 'https://via.placeholder.com/300x300.png/0099dd?text=ut', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(2, 'Kathlyn Lesch', 'Financial Examiner', 'https://via.placeholder.com/300x300.png/0044ee?text=non', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(3, 'Alfonzo VonRueden', 'Creative Writer', 'https://via.placeholder.com/300x300.png/00dd44?text=quia', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(4, 'Mitchell Effertz', 'Loan Counselor', 'https://via.placeholder.com/300x300.png/0011cc?text=qui', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(5, 'Jairo Kuhn', 'Electronic Masking System Operator', 'https://via.placeholder.com/300x300.png/004400?text=esse', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(6, 'Jaiden Jacobson', 'Food Service Manager', 'https://via.placeholder.com/300x300.png/008844?text=ut', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(7, 'Addison Bradtke', 'Computer Operator', 'https://via.placeholder.com/300x300.png/002244?text=soluta', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(8, 'Meta Rath', 'Lawn Service Manager', 'https://via.placeholder.com/300x300.png/0000bb?text=at', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(9, 'Prof. Shaniya Nicolas', 'Psychology Teacher', 'https://via.placeholder.com/300x300.png/0088bb?text=maxime', '2024-11-10 11:18:01', '2024-11-10 11:18:01'),
(10, 'Tyrell Hamill', 'Fraud Investigator', 'https://via.placeholder.com/300x300.png/00dd11?text=a', '2024-11-10 11:18:01', '2024-11-10 11:18:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_writer_id_foreign` (`writer_id`),
  ADD KEY `articles_course_id_foreign` (`course_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `articles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
