-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2020 a las 03:48:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `esp2019`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'imgs/noimage.png',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `image`, `description`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Luigi Mansion 3', 'imgs/luigui3.png', 'Nuevo juego de la nintendo Switch', 1, 1, '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(2, 'Pokemon Espada', 'imgs/pespada.png', 'Nuevo juego de la nintendo Switch', 1, 1, '2020-03-10 07:45:29', '2020-03-10 07:45:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'imgs/noimage.png',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nintendo Switch', 'imgs/noimage.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, accusamus.	', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(2, 'Play Station 4', 'imgs/noimage.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, accusamus.	', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(3, 'Xbox One', 'imgs/noimage.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, accusamus.	', '2020-03-10 07:45:29', '2020-03-10 07:45:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_27_003453_create_categories_table', 1),
(4, '2019_11_27_003908_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'imgs/nophoto.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `birthdate`, `gender`, `address`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Oscar Fernando Aristizabal', 'ofac@misena.edu.co', 8824512, '2018-08-04', 'Male', '1586 Freddie Flats\nEast Lewis, ME 95534-5949', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$ydtZIKPgzCaFnerXPlBui.G2tu05ksnRal5rtL2ZByDx0bG0fgRpC', 'JeaWDvffuF', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(2, 'Gonzalo Lind', 'ezboncak@example.com', 8842621, '1979-02-10', 'Female', '22050 Tod Lake Suite 091\nBellchester, AK 20162', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$28NbBZfXS1UO6uVuD.OIqejM9r.6GDD5ATX54jwnVhZBa6R8JA7A.', 'bT1vCnFgwO', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(3, 'Dr. Johnnie Sauer Jr.', 'alan.weimann@example.net', 8823992, '1990-01-18', 'Female', '7233 Halvorson Court\nDurganborough, OR 23273-9671', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$oC.jmb0MOCH6jfdOauDojuGsTVBilkGZbf40uO/mLjJRUoy4J9jqe', 'RjdSIUywUr', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(4, 'Dr. Aidan Purdy DDS', 'wzboncak@example.org', 8878810, '2004-09-26', 'Male', '8829 McGlynn Orchard\nRodrickchester, KS 01922-2655', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$tSb1hojWXfv3H4tH2n1S1.XYqoLCQuRvetB1CV9t1D7E17BMHoKDm', 'uKBnUuJkAt', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(5, 'Eveline Nader', 'predovic.henry@example.net', 8838694, '1971-04-17', 'Male', '2218 Austyn Land\nMurphyborough, VA 28363', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$DEuPUk8KdBgm7NH3rsXKVO1yT.nJPRVvlnfAHN93PZCc5HDCqYnDC', 'pMOvKnHDvV', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(6, 'Dr. Kristin Feil DVM', 'erich.crist@example.com', 8854889, '2001-07-17', 'Female', '31566 Dudley Creek Apt. 285\nBaileychester, MO 77100', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$R01gi6XIL7hFHrcEO3PlL.FBDWdtk2AvJTjOI0O6YqbgsFXGgll.q', 'xv0uwUgdcv', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(7, 'Jacky Johns', 'kunde.edward@example.org', 8812759, '2010-11-22', 'Male', '1041 Reichel Junction\nBufordmouth, OK 53875', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$7MK84cCojkUCPTJHqw.83.opuqpucktQDuLJKm153yKy6.0JBeZEq', 'LDkD2PGwwf', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(8, 'Dr. Grady Collier', 'ruth.eichmann@example.net', 8837298, '2006-01-23', 'Male', '30619 Marlene Rapid\nArneshire, RI 96070', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$6Ke6c2VFIQcQPM84zAJuw.y5mJnkZyeeUP6qeNNfM51C8VIWelz.S', 'm9kF5smU4A', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(9, 'Elda Breitenberg', 'titus.white@example.net', 8811957, '1970-01-08', 'Female', '2451 Gleason Summit Suite 267\nNew Kaiabury, CA 53313', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$FLctQFAIuQupTaOknbMXWeXKOQs0mpBMXfU080q8RBPXyRHcPswfy', '97wczUulM9', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(10, 'Samson Torphy', 'ulittle@example.org', 8871414, '2001-10-25', 'Male', '124 Gerhold Greens\nNorth Veda, TX 63838-7298', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$hNzRPA3t29POtsgp73P.t.5zrt3.LZuSV0S4m60jVaHZoT8HtB3kW', 'Znfp7OFXeD', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(11, 'Tara Pouros', 'pacocha.tressa@example.com', 8843825, '1993-03-31', 'Male', '870 Koch Dam\nLake Elton, MO 24863', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$EBV5zdBzMJbXqM2jUjI2Hupw3hEFZl.iOk65NKoicX5nUXdk0U69e', 'QkLUnY3mvK', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(12, 'Pearl Waters', 'hackett.einar@example.org', 8821152, '2019-04-12', 'Female', '2339 Deshaun Underpass\nWest Roxanneburgh, IL 64576-7179', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$ZojPbl9y0ZOqTgyOy1lgP.pASImxhTc0bEuRRMY.Q4BhFYH3WKGe6', 'tqvCvD8iPG', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(13, 'Miss Angelica Kautzer', 'tweber@example.com', 8878604, '1998-12-13', 'Female', '197 Glover Spur\nSiennamouth, LA 79292', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$l0Lty5oCMBLUXNDMoBXydeTbB7THC1gsWV5H.PbAF68FTCR68T9da', 'QDLIpaGfOh', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(14, 'Mr. Dedrick Kuhlman III', 'qschneider@example.com', 8857553, '2009-10-19', 'Male', '6395 Ashlynn Mission\nDoyleberg, GA 35169', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$rVGxebklOPmIu4GZC4YJDuKodIo40ekTYvuds1pve0aUUWJW7l3bq', 'xIiGCoKPz7', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(15, 'Eloisa Becker', 'ifeeney@example.org', 8840734, '1999-07-03', 'Male', '91296 Treutel Landing\nLake Itzelburgh, MS 42775', 'imgs/nophoto.png', '2020-03-10 07:45:28', '$2y$10$oZPdCG4oa0skqhXDKuHZEudRwm2n6P9LQU7v1Gr9rjpHzXJ/uim5y', 'wfxOxjb7KK', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(16, 'Skyla Ledner', 'maud.walsh@example.org', 8832260, '2008-08-12', 'Female', '9159 Lindgren Mount Suite 127\nLake Trentonborough, GA 65585', 'imgs/nophoto.png', '2020-03-10 07:45:29', '$2y$10$xhDSDCeJrHh5QV/amfyYPuj4bjMq.q.TMPcJFUK189BJtbUHl.AV6', 'VnBI6vZZdS', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(17, 'Prof. Jerrell Brekke', 'adella.blick@example.com', 8876626, '2004-08-19', 'Female', '687 Rutherford Inlet\nEast Nashmouth, IL 48413', 'imgs/nophoto.png', '2020-03-10 07:45:29', '$2y$10$HZeFoLL5LeCyak3V3Snou.DXLwZrgntbntinsD8GRL2XOmelzN0z2', 'XJmcw86DVw', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(18, 'Miss Beth Kris II', 'idare@example.com', 8862449, '2000-08-30', 'Female', '25131 Delpha Mall Suite 719\nTiannafort, TN 66678', 'imgs/nophoto.png', '2020-03-10 07:45:29', '$2y$10$mk7N4VkJKuemvmHIs6aHa.oqQw6TLse9qTiRxPwgE0PBc5G/ss8iW', 'NEWtntACjP', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(19, 'Marge Fay V', 'deborah91@example.net', 8845128, '2014-06-21', 'Male', '4140 Fidel Streets Apt. 905\nKuhlmanport, WA 89564', 'imgs/nophoto.png', '2020-03-10 07:45:29', '$2y$10$PD8hPKNcE1SyDxvLzjx2juQFuCD0ya5VURXjwwzQU.tWvSZ9CZeSi', '58GXC0wEji', '2020-03-10 07:45:29', '2020-03-10 07:45:29'),
(20, 'Noble Nolan', 'americo08@example.com', 8837019, '2019-09-19', 'Male', '1002 Pearline Field\nMurrayport, CT 19105', 'imgs/nophoto.png', '2020-03-10 07:45:29', '$2y$10$PFydzkawKIZen/v0nXc1Q.NUErOv3b21Hh8iUBPJ5DTr/j.cwMkIW', 'ZjlnH5bKq4', '2020-03-10 07:45:29', '2020-03-10 07:45:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_name_unique` (`name`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
