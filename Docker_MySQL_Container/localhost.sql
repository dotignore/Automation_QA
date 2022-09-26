-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2022 at 05:47 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base`
--
CREATE DATABASE IF NOT EXISTS `base` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `base`;

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id_catalog` int(11) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id_catalog`, `name`) VALUES
(1, 'Процессоры'),
(2, 'Материнские платы'),
(3, 'Видеоадаптеры'),
(4, 'Жёсткие диски'),
(5, 'Оперативная память');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `ordertime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `number` int(11) NOT NULL DEFAULT 0,
  `id_product` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `id_user`, `ordertime`, `number`, `id_product`) VALUES
(1, 3, '2005-01-04 10:39:38', 1, 8),
(2, 6, '2005-02-10 09:40:29', 2, 10),
(3, 1, '2005-02-18 13:41:05', 4, 20),
(4, 3, '2005-03-10 18:20:00', 1, 20),
(5, 3, '2005-03-17 19:15:36', 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `price` decimal(7,2) DEFAULT 0.00,
  `count` int(11) DEFAULT 0,
  `mark` float(4,1) NOT NULL DEFAULT 0.0,
  `description` text DEFAULT NULL,
  `id_catalog` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name`, `price`, `count`, `mark`, `description`, `id_catalog`) VALUES
(1, 'Celeron 1.8', '1595.00', 10, 3.6, 'Процессор CeleronR 1.8GHz, 128kb, 478-PGA, 400Mhz, OEM 0.18', 1),
(2, 'Celeron 2.0GHz', '1969.00', 2, 3.7, 'Процессор CeleronR 2.0GHz, 128KB, 478-PGA, 400MHz, OEM ', 1),
(3, 'Celeron 2.4GHz', '2109.00', 4, 3.9, 'Процессор CeleronR 2.4GHz, 128kb, 478-PGA, 400Mhz, OEM ', 1),
(4, 'Celeron D 320 2.4GHz', '1962.00', 1, 4.1, 'Процессор CeleronR D 320 2.4GHz, 256kb, 478-PGA, 533Mhz, OEM', 1),
(5, 'Celeron D 325 2.53GHz', '2747.00', 6, 4.1, 'Процессор CeleronR D 325 2.53GHz, 256kb, 478-PGA, 533Mhz, OEM ', 1),
(6, 'Celeron D 315 2.26GHz', '1880.00', 6, 4.1, 'Процессор CeleronR D 315 2.26GHz, 256kb, 478-PGA, 533Mhz, OEM ', 1),
(7, 'Intel Pentium 4 3.2GHz', '7259.00', 5, 4.5, 'Процессор IntelR PentiumR4 3.2GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Threading, OEM ', 1),
(8, 'Intel Pentium 4 3.0GHz', '6147.00', 1, 4.6, 'Процессор IntelR PentiumR4 3.0GHz, 512Kb, 478-PGA, 800Mhz, Hyper-Threading, OEM ', 1),
(9, 'Intel Pentium 4 3.0GHz', '5673.00', 12, 4.5, 'Процессор IntelR PentiumR4 3.0GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Treading, OEM ', 1),
(10, 'Gigabyte GA-8I848P-RS', '1896.00', 4, 3.9, 'Материнская плата SOCKET-478 Gigabyte GA-8I848P-RS i848, (800Mhz), DDR, AGP 8x, ATA100, SATA , Sound 6ch, USB2.0, ATX', 2),
(11, 'Gigabyte GA-8IG1000', '2420.00', 2, 3.8, 'Материнская плата SOCKET-478 Gigabyte GA-8IG1000 i865g,FSB800/533/400,2chDDR400/333/266(4слота),Video,AGP,5PCI,ATA-100,S-ATA', 2),
(12, 'Gigabyte GA-8IPE1000G', '2289.00', 6, 3.7, 'Материнская плата Socket-478 Gigabyte GA-8IPE1000G i865PE(800/533/400Mhz),2ch400/333/266DDR,PCI/AGP,U-100,AC`97,Lan(1Gb),S-ATA,USB 2.0, ATX', 2),
(13, 'Asustek P4C800-E Delux', '5395.00', 4, 4.1, 'Материнская плата Socket-478 Asustek P4C800-E Delux i875P,FSB800/533Mhz,2chDDR400/333,AGP,6PCI,iEEE1394, Raid, U-133,S-ATA, AC`97, Lan(1000), ATX', 2),
(14, 'Asustek P4P800-VM\\L i865G', '2518.00', 6, 4.0, 'Материнская плата Socket-478 Asustek P4P800-VM\\L i865G FSB800/533/400, 2chDDR400/333/266(4слота),AGP,video,3PCI,ATA-100,S-ATA,lan ,M-ATX', 2),
(15, 'Epox EP-4PDA3I', '2289.00', 5, 4.0, 'Материнская плата Socket-478 Epox EP-4PDA3I i865PE(800Mhz), 2chDDR, PCI/AGP, SATA, Lan, U-100, RAID, AC`97, LAN, ATX', 2),
(16, 'ASUSTEK A9600XT/TD', '5156.00', 2, 4.7, 'Видеоадаптер ASUSTEK A9600XT/TD 128Mb DDR SDRAM, 2x400MHz DAC, AGP8x, ATI Radeon 9600XT, DVI, TV- out, BOX ', 3),
(17, 'ASUSTEK V9520X', '1602.00', 6, 4.0, 'Видеоадаптер ASUSTEK V9520X 128Mb DDR SDRAM, 400MHz DAC, AGP 8x, GeForce FX 5200, TV- out, BOX ', 3),
(18, 'SAPPHIRE 256MB RADEON 9550', '2730.00', 3, 3.8, 'ВИДЕОКАРТА SAPPHIRE 256MB RADEON 9550, TV-out, DVI, OEM ', 3),
(19, 'GIGABYTE AGP GV-N59X128D', '5886.00', 6, 3.6, 'ВИДЕОКАРТА GIGABYTE AGP GV-N59X128D FX5900XT OEM ', 3),
(20, 'Maxtor 6Y120P0', '2456.00', 6, 4.5, 'Винчестер 120 GB Maxtor 6Y120P0, UDMA-133, 7200rpm, 8MB ', 4),
(21, 'Maxtor 6B200P0', '3589.00', 4, 4.0, 'Винчестер 200 GB Maxtor 6B200P0, UDMA-133, 7200rpm, 8Mb ', 4),
(22, 'Samsung SP0812C', '2093.00', 5, 4.0, 'Винчестер 80 GB Samsung SP0812C, SATA, 7200rpm SpinPoint P80 SerialATA Буферная кэш-память 8 MB  7200об/мин  Интерфейс Serial ATA 1.0', 4),
(23, 'Seagate Barracuda ST3160023A', '3139.00', 3, 4.1, 'Винчестер 160 GB Seagate Barracuda ST3160023A, UDMA-100, 7200rpm, 8Mb ', 4),
(24, 'Seagate ST3120026A', '2468.00', 8, 4.2, 'Винчестер 120 GB Seagate ST3120026A, UDMA-100, 7200rpm, 8MB ', 4),
(25, 'DDR-400 256MB Kingston', '1085.00', 20, 4.8, 'Оперативная память DDR-400 256MB Kingston ', 5),
(26, 'DDR-400 256MB Hynix Original ', '1179.00', 15, 4.6, 'Оперативная память DDR-400 256MB Hynix Original ', 5),
(27, 'DDR-400 256MB PQI', '899.00', 10, 4.2, 'Оперативная память DDR-400 256MB PQI ', 5),
(28, 'DDR-400 512MB Kingston', '1932.00', 20, 4.8, 'Оперативная память DDR-400 512MB Kingston ', 5),
(29, 'DDR-400 512MB PQI', '1690.00', 12, 4.2, 'Оперативная память DDR-400 512MB PQI ', 5),
(30, 'DDR-400 512MB Hynix', '1717.00', 8, 4.5, 'Оперативная память DDR-400 512MB Hynix ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `surname` tinytext DEFAULT NULL,
  `patronymic` tinytext DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `url` tinytext DEFAULT NULL,
  `status` enum('active','passive','lock','gold') DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `surname`, `patronymic`, `name`, `phone`, `email`, `url`, `status`) VALUES
(1, 'Иванов', 'Валерьевич', 'Александр', '58-98-78', 'ivanov@email.ru', NULL, 'active'),
(2, 'Лосев', 'Иванович', 'Сергей', '9057777777', 'losev@email.ru', NULL, 'passive'),
(3, 'Симдянов', 'Вячеславович', 'Игорь', '9056666100', 'simdyanov@softtime.ru', 'http://www.softtime.ru/', 'active'),
(4, 'Кузнецов', 'Валерьевич', 'Максим', NULL, 'kuznetsov@softtime.ru', 'http://www.softtime.ru', 'active'),
(5, 'Нехорошев', 'Юрьевич', 'Анатолий', NULL, NULL, NULL, 'lock'),
(6, 'Корнеев', 'Александрович', 'Александр', '89-78-36', 'korneev@domen.ru', NULL, 'gold');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id_catalog`);
ALTER TABLE `catalogs` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_catalog` (`id_catalog`);
ALTER TABLE `products` ADD FULLTEXT KEY `search` (`name`,`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id_catalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `litecart`
--
CREATE DATABASE IF NOT EXISTS `litecart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `litecart`;

-- --------------------------------------------------------

--
-- Table structure for table `lc_addresses`
--

CREATE TABLE `lc_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `postcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_cart_items`
--

CREATE TABLE `lc_cart_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` varchar(2048) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_categories`
--

CREATE TABLE `lc_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `google_taxonomy_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `list_style` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `dock` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_categories`
--

INSERT INTO `lc_categories` (`id`, `parent_id`, `google_taxonomy_id`, `status`, `code`, `list_style`, `dock`, `keywords`, `image`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 1, '', 'columns', 'menu,tree', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 0, 1, '', 'rows', '', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_categories_info`
--

CREATE TABLE `lc_categories_info` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_categories_info`
--

INSERT INTO `lc_categories_info` (`id`, `category_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `h1_title`, `meta_description`) VALUES
(1, 1, 'en', 'Rubber Ducks', '', '', '', '', ''),
(2, 2, 'en', 'Subcategory', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_countries`
--

CREATE TABLE `lc_countries` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `domestic_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `iso_code_1` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id_format` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address_format` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_format` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `language_code` varchar(2) CHARACTER SET utf8 NOT NULL,
  `currency_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `phone_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_countries`
--

INSERT INTO `lc_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'Afghanistan', '', '004', 'AF', 'AFG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'AFN', '93', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 'Albania', '', '008', 'AL', 'ALB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sq', 'ALL', '355', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, 'Algeria', '', '012', 'DZ', 'DZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'DZD', '213', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 1, 'American Samoa', '', '016', 'AS', 'ASM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96799', 0, 'en', 'USD', '168', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(5, 1, 'Andorra', '', '020', 'AD', 'AND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'AD\\d{3}', 0, 'ca', 'EUR', '376', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(6, 1, 'Angola', '', '024', 'AO', 'AGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'AOA', '244', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(7, 1, 'Anguilla', '', '660', 'AI', 'AIA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(8, 1, 'Antarctica', '', '010', 'AQ', 'ATA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'XCD', '672', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(9, 1, 'Antigua and Barbuda', '', '028', 'AG', 'ATG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(10, 1, 'Argentina', '', '032', 'AR', 'ARG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-HJ-NP-Z])?\\d{4}([A-Z]{3})?', 0, 'es', 'ARS', '54', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(11, 1, 'Armenia', '', '051', 'AM', 'ARM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(37)?\\d{4}', 0, 'hy', 'AMD', '374', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(12, 1, 'Aruba', '', '533', 'AW', 'ABW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'AWG', '297', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(13, 1, 'Australia', '', '036', 'AU', 'AUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'en', 'AUD', '61', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(14, 1, 'Austria', '', '040', 'AT', 'AUT', '^(AT)?(U[A-Zd]{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'de', 'EUR', '43', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(15, 1, 'Azerbaijan', '', '031', 'AZ', 'AZE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'az', 'AZN', '994', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(16, 1, 'Bahamas', '', '044', 'BS', 'BHS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BSD', '124', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(17, 1, 'Bahrain', '', '048', 'BH', 'BHR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '((1[0-2]|[2-9])\\d{2})?', 0, 'ar', 'BHD', '973', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(18, 1, 'Bangladesh', '', '050', 'BD', 'BGD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'bn', 'BDT', '880', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(19, 1, 'Barbados', '', '052', 'BB', 'BRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(BB\\d{5})?', 0, 'en', 'BBD', '124', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(20, 1, 'Belarus', '', '112', 'BY', 'BLR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'be', 'BYR', '375', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(21, 1, 'Belgium', '', '056', 'BE', 'BEL', '^(BE)?(0)?(d{9})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'nl', 'EUR', '32', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(22, 1, 'Belize', '', '084', 'BZ', 'BLZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BZD', '501', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(23, 1, 'Benin', '', '204', 'BJ', 'BEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '229', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(24, 1, 'Bermuda', '', '060', 'BM', 'BMU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?[A-Z0-9]{2}', 0, 'en', 'BMD', '144', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(25, 1, 'Bhutan', '', '064', 'BT', 'BTN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'dz', 'BTN', '975', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(26, 1, 'Bolivia', '', '068', 'BO', 'BOL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'BOB', '591', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(27, 1, 'Bosnia and Herzegowina', '', '070', 'BA', 'BIH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'bs', 'BAM', '387', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(28, 1, 'Botswana', '', '072', 'BW', 'BWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BWP', '267', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(29, 1, 'Bouvet Island', '', '074', 'BV', 'BVT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'NOK', '47', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(30, 1, 'Brazil', '', '076', 'BR', 'BRA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}[\\-]?\\d{3}', 0, 'pt', 'BRL', '55', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(31, 1, 'British Indian Ocean Territory', '', '086', 'IO', 'IOT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'BBND 1ZZ', 0, 'en', 'USD', '246', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(32, 1, 'Brunei Darussalam', '', '096', 'BN', 'BRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?\\d{4}', 0, 'ms', 'BND', '673', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(33, 1, 'Bulgaria', '', '100', 'BG', 'BGR', '^(BG)?(d{9,10})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'bg', 'BGN', '359', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(34, 1, 'Burkina Faso', '', '854', 'BF', 'BFA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '226', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(35, 1, 'Burundi', '', '108', 'BI', 'BDI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'BIF', '257', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(36, 1, 'Cambodia', '', '116', 'KH', 'KHM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'km', 'KHR', '855', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(37, 1, 'Cameroon', '', '120', 'CM', 'CMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XAF', '237', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(38, 1, 'Canada', '', '124', 'CA', 'CAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[ABCEGHJKLMNPRSTVXY]\\d[ABCEGHJ-NPRSTV-Z][ ]?\\d[ABCEGHJ-NPRSTV-Z]\\d', 0, 'en', 'CAD', '1', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(39, 1, 'Cape Verde', '', '132', 'CV', 'CPV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'pt', 'CVE', '238', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(40, 1, 'Cayman Islands', '', '136', 'KY', 'CYM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'KYD', '134', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(41, 1, 'Central African Republic', '', '140', 'CF', 'CAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '236', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(42, 1, 'Chad', '', '148', 'TD', 'TCD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '235', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(43, 1, 'Chile', '', '152', 'CL', 'CHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CLP', '56', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(44, 1, 'China', '', '156', 'CN', 'CHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'zh', 'CNY', '86', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(45, 1, 'Christmas Island', '', '162', 'CX', 'CXR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6798', 0, 'en', 'AUD', '61', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(46, 1, 'Cocos (Keeling) Islands', '', '166', 'CC', 'CCK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6799', 0, 'ms', 'AUD', '61', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(47, 1, 'Colombia', '', '170', 'CO', 'COL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'COP', '57', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(48, 1, 'Comoros', '', '174', 'KM', 'COM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'KMF', '269', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(49, 1, 'Congo', '', '178', 'CG', 'COG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '242', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(50, 1, 'Cook Islands', '', '184', 'CK', 'COK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'en', 'NZD', '682', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(51, 1, 'Costa Rica', '', '188', 'CR', 'CRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4,5}|\\d{3}-\\d{4}', 0, 'es', 'CRC', '506', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(52, 1, 'Cote D\'Ivoire', '', '384', 'CI', 'CIV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '225', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(53, 1, 'Croatia', '', '191', 'HR', 'HRV', '^(HR)?(d{11})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'hr', 'HRK', '385', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(54, 1, 'Cuba', '', '192', 'CU', 'CUB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CUP', '53', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(55, 1, 'Cyprus', '', '196', 'CY', 'CYP', '^(CY)?(d{8}[A-Z]{1})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'el', 'EUR', '357', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(56, 1, 'Czech Republic', '', '203', 'CZ', 'CZE', '^(CZ)?(d{8,10})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}[ ]?\\d{2}', 0, 'cs', 'CZK', '420', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(57, 1, 'Denmark', '', '208', 'DK', 'DNK', '^(DK)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'da', 'DKK', '45', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(58, 1, 'Djibouti', '', '262', 'DJ', 'DJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'DJF', '253', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(59, 1, 'Dominica', '', '212', 'DM', 'DMA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '176', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(60, 1, 'Dominican Republic', '', '214', 'DO', 'DOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'es', 'DOP', '180', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(61, 1, 'East Timor', '', '626', 'TP', 'TMP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'USD', '670', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(62, 1, 'Ecuador', '', '218', 'EC', 'ECU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-Z]\\d{4}[A-Z]|(?:[A-Z]{2})?\\d{6})?', 0, 'es', 'ECS', '593', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(63, 1, 'Egypt', '', '818', 'EG', 'EGY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'EGP', '20', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(64, 1, 'El Salvador', '', '222', 'SV', 'SLV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'SVC', '503', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(65, 1, 'Equatorial Guinea', '', '226', 'GQ', 'GNQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'XAF', '240', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(66, 1, 'Eritrea', '', '232', 'ER', 'ERI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'aa', 'ERN', '291', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(67, 1, 'Estonia', '', '233', 'EE', 'EST', '^(EE)?(d{9})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'et', 'EUR', '372', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(68, 1, 'Ethiopia', '', '231', 'ET', 'ETH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'am', 'ETB', '251', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(69, 1, 'Falkland Islands (Malvinas)', '', '238', 'FK', 'FLK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'FIQQ 1ZZ', 0, 'en', 'FKP', '500', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(70, 1, 'Faroe Islands', '', '234', 'FO', 'FRO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'fo', 'DKK', '298', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(71, 1, 'Fiji', '', '242', 'FJ', 'FJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'FJD', '679', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(72, 1, 'Finland', '', '246', 'FI', 'FIN', '^(FI)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'fi', 'EUR', '358', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(73, 1, 'France', '', '250', 'FR', 'FRA', '^(FR)?(([A-Z]{2}|d{2})d{9})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{2}[ ]?\\d{3}', 0, 'fr', 'EUR', '33', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(75, 1, 'French Guiana', '', '254', 'GF', 'GUF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]3\\d{2}', 0, 'fr', 'EUR', '594', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(76, 1, 'French Polynesia', '', '258', 'PF', 'PYF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '987\\d{2}', 0, 'fr', 'XPF', '689', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(77, 1, 'French Southern Territories', '', '260', 'TF', 'ATF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'EUR', '262', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(78, 1, 'Gabon', '', '266', 'GA', 'GAB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '241', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(79, 1, 'Gambia', '', '270', 'GM', 'GMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GMD', '220', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(80, 1, 'Georgia', '', '268', 'GE', 'GEO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'ka', 'GEL', '995', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(81, 1, 'Germany', '', '276', 'DE', 'DEU', '^(DE)?(d{9})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'de', 'EUR', '49', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(82, 1, 'Ghana', '', '288', 'GH', 'GHA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GHS', '233', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(83, 1, 'Gibraltar', '', '292', 'GI', 'GIB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GIP', '350', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(84, 1, 'Greece', '', '300', 'GR', 'GRC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}[ ]?\\d{2}', 0, 'el', 'EUR', '30', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(85, 1, 'Greenland', '', '304', 'GL', 'GRL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '39\\d{2}', 0, 'kl', 'DKK', '299', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(86, 1, 'Grenada', '', '308', 'GD', 'GRD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '147', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(87, 1, 'Guadeloupe', '', '312', 'GP', 'GLP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78][01]\\d{2}', 0, 'fr', 'EUR', '590', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(88, 1, 'Guam', '', '316', 'GU', 'GUM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[123]\\d([ \\-]\\d{4})?', 0, 'en', 'USD', '167', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(89, 1, 'Guatemala', '', '320', 'GT', 'GTM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'es', 'QTQ', '502', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(90, 1, 'Guinea', '', '324', 'GN', 'GIN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'fr', 'GNF', '224', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(91, 1, 'Guinea-bissau', '', '624', 'GW', 'GNB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'pt', 'GWP', '245', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(92, 1, 'Guyana', '', '328', 'GY', 'GUY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GYD', '592', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(93, 1, 'Haiti', '', '332', 'HT', 'HTI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'ht', 'HTG', '509', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(94, 1, 'Heard and McDonald Islands', '', '334', 'HM', 'HMD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, '', 'AUD', '0', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(95, 1, 'Honduras', '', '340', 'HN', 'HND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(?:\\d{5})?', 0, 'es', 'HNL', '504', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(96, 1, 'Hong Kong', '', '344', 'HK', 'HKG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'HKD', '852', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(97, 1, 'Hungary', '', '348', 'HU', 'HUN', '^(HU)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'hu', 'HUF', '36', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(98, 1, 'Iceland', '', '352', 'IS', 'ISL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'is', 'ISK', '354', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(99, 1, 'India', '', '356', 'IN', 'IND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'en', 'INR', '91', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(100, 1, 'Indonesia', '', '360', 'ID', 'IDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'id', 'IDR', '62', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(101, 1, 'Iran, Islamic Republic of', '', '364', 'IR', 'IRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'IRR', '98', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(102, 1, 'Iraq', '', '368', 'IQ', 'IRQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'IQD', '964', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(103, 1, 'Ireland', '', '372', 'IE', 'IRL', '^(IE)?(d{7}[A-Z]{2})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'EUR', '353', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(104, 1, 'Israel', '', '376', 'IL', 'ISR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'he', 'ILS', '972', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(105, 1, 'Italy', '', '380', 'IT', 'ITA', '^(IT)?(d{11})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'it', 'EUR', '39', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(106, 1, 'Jamaica', '', '388', 'JM', 'JAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'JMD', '187', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(107, 1, 'Japan', '', '392', 'JP', 'JPN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}-\\d{4}', 0, 'ja', 'JPY', '81', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(108, 1, 'Jordan', '', '400', 'JO', 'JOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'JOD', '962', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(109, 1, 'Kazakhstan', '', '398', 'KZ', 'KAZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'kk', 'KZT', '7', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(110, 1, 'Kenya', '', '404', 'KE', 'KEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'en', 'KES', '254', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(111, 1, 'Kiribati', '', '296', 'KI', 'KIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '686', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(112, 1, 'North Korea', '', '408', 'KP', 'PRK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ko', 'KPW', '850', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(113, 1, 'Korea, Republic of', '', '410', 'KR', 'KOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}[\\-]\\d{3}', 0, 'ko', 'KRW', '82', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(114, 1, 'Kuwait', '', '414', 'KW', 'KWT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'KWD', '965', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(115, 1, 'Kyrgyzstan', '', '417', 'KG', 'KGZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'ky', 'KGS', '996', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(116, 1, 'Lao People\'s Democratic Republic', '', '418', 'LA', 'LAO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'lo', 'LAK', '856', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(117, 1, 'Latvia', '', '428', 'LV', 'LVA', '^(LV)?(d{11})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'lv', 'LVL', '371', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(118, 1, 'Lebanon', '', '422', 'LB', 'LBN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(\\d{4}([ ]?\\d{4})?)?', 0, 'ar', 'LBP', '961', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(119, 1, 'Lesotho', '', '426', 'LS', 'LSO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'en', 'LSL', '266', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(120, 1, 'Liberia', '', '430', 'LR', 'LBR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'en', 'LRD', '231', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(121, 1, 'Libyan Arab Jamahiriya', '', '434', 'LY', 'LBY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'LYD', '218', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(122, 1, 'Liechtenstein', '', '438', 'LI', 'LIE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(948[5-9])|(949[0-7])', 0, 'de', 'CHF', '423', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(123, 1, 'Lithuania', '', '440', 'LT', 'LTU', '^(LT)?((d{9}|d{12}))$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'lt', 'LTL', '370', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(124, 1, 'Luxembourg', '', '442', 'LU', 'LUX', '^(LU)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'lb', 'EUR', '352', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(125, 1, 'Macau', '', '446', 'MO', 'MAC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'MOP', '853', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(126, 1, 'Macedonia', '', '807', 'MK', 'MKD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'mk', 'MKD', '389', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(127, 1, 'Madagascar', '', '450', 'MG', 'MDG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'fr', 'MGF', '261', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(128, 1, 'Malawi', '', '454', 'MW', 'MWI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ny', 'MWK', '265', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(129, 1, 'Malaysia', '', '458', 'MY', 'MYS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ms', 'MYR', '60', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(130, 1, 'Maldives', '', '462', 'MV', 'MDV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'dv', 'MVR', '960', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(131, 1, 'Mali', '', '466', 'ML', 'MLI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '223', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(132, 1, 'Malta', '', '470', 'MT', 'MLT', '^(MT)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'mt', 'EUR', '356', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(133, 1, 'Marshall Islands', '', '584', 'MH', 'MHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[67]\\d([ \\-]\\d{4})?', 0, 'mh', 'USD', '692', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(134, 1, 'Martinique', '', '474', 'MQ', 'MTQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]2\\d{2}', 0, 'fr', 'EUR', '596', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(135, 1, 'Mauritania', '', '478', 'MR', 'MRT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MRO', '222', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(136, 1, 'Mauritius', '', '480', 'MU', 'MUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(\\d{3}[A-Z]{2}\\d{3})?', 0, 'en', 'MUR', '230', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(137, 1, 'Mayotte', '', '175', 'YT', 'MYT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '976\\d{2}', 0, 'fr', 'EUR', '262', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(138, 1, 'Mexico', '', '484', 'MX', 'MEX', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'es', 'MXN', '52', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(139, 1, 'Micronesia, Federated States of', '', '583', 'FM', 'FSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(9694[1-4])([ \\-]\\d{4})?', 0, 'en', 'USD', '691', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(140, 1, 'Moldova, Republic of', '', '498', 'MD', 'MDA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'ro', 'MDL', '373', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(141, 1, 'Monaco', '', '492', 'MC', 'MCO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '980\\d{2}', 0, 'fr', 'EUR', '377', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(142, 1, 'Mongolia', '', '496', 'MN', 'MNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'mn', 'MNT', '976', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(143, 1, 'Montserrat', '', '500', 'MS', 'MSR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '166', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(144, 1, 'Morocco', '', '504', 'MA', 'MAR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'MAD', '212', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(145, 1, 'Mozambique', '', '508', 'MZ', 'MOZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'MZN', '258', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(146, 1, 'Myanmar', '', '104', 'MM', 'MMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'my', 'MMK', '95', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(147, 1, 'Namibia', '', '516', 'NA', 'NAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NAD', '264', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(148, 1, 'Nauru', '', '520', 'NR', 'NRU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'na', 'AUD', '674', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(149, 1, 'Nepal', '', '524', 'NP', 'NPL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ne', 'NPR', '977', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(150, 1, 'Netherlands', '', '528', 'NL', 'NLD', '^(NL)?(d{9}Bd{2})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'nl', 'EUR', '31', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(151, 1, 'Netherlands Antilles', '', '530', 'AN', 'ANT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'ANG', '599', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(152, 1, 'New Caledonia', '', '540', 'NC', 'NCL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '988\\d{2}', 0, 'fr', 'XPF', '687', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(153, 1, 'New Zealand', '', '554', 'NZ', 'NZL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'en', 'NZD', '64', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(154, 1, 'Nicaragua', '', '558', 'NI', 'NIC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '((\\d{4}-)?\\d{3}-\\d{3}(-\\d{1})?)?', 0, 'es', 'NIO', '505', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(155, 1, 'Niger', '', '562', 'NE', 'NER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'fr', 'XOF', '227', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(156, 1, 'Nigeria', '', '566', 'NG', 'NGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(\\d{6})?', 0, 'en', 'NGN', '234', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(157, 1, 'Niue', '', '570', 'NU', 'NIU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '683', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(158, 1, 'Norfolk Island', '', '574', 'NF', 'NFK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '2899', 0, 'en', 'AUD', '672', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(159, 1, 'Northern Mariana Islands', '', '580', 'MP', 'MNP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9695[012]([ \\-]\\d{4})?', 0, 'tl', 'USD', '167', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(160, 1, 'Norway', '', '578', 'NO', 'NOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'no', 'NOK', '47', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(161, 1, 'Oman', '', '512', 'OM', 'OMN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(PC )?\\d{3}', 0, 'ar', 'OMR', '968', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(162, 1, 'Pakistan', '', '586', 'PK', 'PAK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ur', 'PKR', '92', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(163, 1, 'Palau', '', '585', 'PW', 'PLW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96940', 0, 'en', 'USD', '680', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(164, 1, 'Panama', '', '591', 'PA', 'PAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PAB', '507', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(165, 1, 'Papua New Guinea', '', '598', 'PG', 'PNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}', 0, 'en', 'PGK', '675', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(166, 1, 'Paraguay', '', '600', 'PY', 'PRY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'es', 'PYG', '595', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(167, 1, 'Peru', '', '604', 'PE', 'PER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PEN', '51', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(168, 1, 'Philippines', '', '608', 'PH', 'PHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'tl', 'PHP', '63', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(169, 1, 'Pitcairn', '', '612', 'PN', 'PCN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'PCRN 1ZZ', 0, 'en', 'NZD', '870', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(170, 1, 'Poland', '', '616', 'PL', 'POL', '^(PL)?(d{10})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{2}-\\d{3}', 0, 'pl', 'PLN', '48', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(171, 1, 'Portugal', '', '620', 'PT', 'PRT', '^(PT)?(d{9})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}([\\-]\\d{3})?', 0, 'pt', 'EUR', '351', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(172, 1, 'Puerto Rico', '', '630', 'PR', 'PRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00[679]\\d{2}([ \\-]\\d{4})?', 0, 'en', 'USD', '1', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(173, 1, 'Qatar', '', '634', 'QA', 'QAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'QAR', '974', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(174, 1, 'Reunion', '', '638', 'RE', 'REU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]4\\d{2}', 0, 'fr', 'EUR', '262', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(175, 1, 'Romania', '', '642', 'RO', 'ROM', '^(RO)?(d{2,10})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'ro', 'RON', '40', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(176, 1, 'Russian Federation', '', '643', 'RU', 'RUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'ru', 'RUB', '7', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(177, 1, 'Rwanda', '', '646', 'RW', 'RWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'rw', 'RWF', '250', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(178, 1, 'Saint Kitts and Nevis', '', '659', 'KN', 'KNA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '186', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(179, 1, 'Saint Lucia', '', '662', 'LC', 'LCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '175', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(180, 1, 'Saint Vincent and the Grenadines', '', '670', 'VC', 'VCT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '178', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(181, 1, 'Samoa', '', '882', 'WS', 'WSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sm', 'WST', '685', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(182, 1, 'San Marino', '', '674', 'SM', 'SMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '4789\\d', 0, 'it', 'EUR', '378', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(183, 1, 'Sao Tome and Principe', '', '678', 'ST', 'STP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'STD', '239', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(184, 1, 'Saudi Arabia', '', '682', 'SA', 'SAU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'ar', 'SAR', '966', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(185, 1, 'Senegal', '', '686', 'SN', 'SEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'fr', 'XOF', '221', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(186, 1, 'Seychelles', '', '690', 'SC', 'SYC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SCR', '248', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(187, 1, 'Sierra Leone', '', '694', 'SL', 'SLE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SLL', '232', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(188, 1, 'Singapore', '', '702', 'SG', 'SGP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'en', 'SGD', '65', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(189, 1, 'Slovak Republic', '', '703', 'SK', 'SVK', '^(SK)?(d{10})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}[ ]?\\d{2}', 0, 'sk', 'EUR', '421', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(190, 1, 'Slovenia', '', '705', 'SI', 'SVN', '^(SI)?(d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'sl', 'EUR', '386', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(191, 1, 'Solomon Islands', '', '090', 'SB', 'SLB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SBD', '677', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(192, 1, 'Somalia', '', '706', 'SO', 'SOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'so', 'SOS', '252', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(193, 1, 'South Africa', '', '710', 'ZA', 'ZAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'zu', 'ZAR', '27', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(194, 1, 'South Georgia and South Sandwich Islands', '', '239', 'GS', 'SGS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'SIQQ 1ZZ', 0, 'en', 'GBP', '500', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(195, 1, 'Spain', '', '724', 'ES', 'ESP', '^(ES)?([A-Z]d{7}[A-Z]|d{8}[A-Z]|[A-Z]d{8})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'es', 'EUR', '34', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(196, 1, 'Sri Lanka', '', '144', 'LK', 'LKA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'si', 'LKR', '94', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(197, 1, 'St. Helena', '', '654', 'SH', 'SHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(ASCN|STHL) 1ZZ', 0, 'en', 'SHP', '290', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(198, 1, 'St. Pierre and Miquelon', '', '666', 'PM', 'SPM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]5\\d{2}', 0, 'fr', 'EUR', '508', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(199, 1, 'Sudan', '', '729', 'SD', 'SDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SDG', '249', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(200, 1, 'Suriname', '', '740', 'SR', 'SUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'SRD', '597', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(201, 1, 'Svalbard and Jan Mayen Islands', '', '744', 'SJ', 'SJM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'no', 'NOK', '47', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(202, 1, 'Swaziland', '', '748', 'SZ', 'SWZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[HLMS]\\d{3}', 0, 'en', 'SZL', '268', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(203, 1, 'Sweden', '', '752', 'SE', 'SWE', '^(SE)?(16|19|20)?([0-9]{6})(?:-)?([0-9]{4})?(01)?$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}[ ]?\\d{2}', 0, 'sv', 'SEK', '46', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(204, 1, 'Switzerland', '', '756', 'CH', 'CHE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'de', 'CHF', '41', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(205, 1, 'Syrian Arab Republic', '', '760', 'SY', 'SYR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SYP', '963', '2021-08-29 21:52:35', '2021-08-29 21:52:35');
INSERT INTO `lc_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(206, 1, 'Taiwan', '', '158', 'TW', 'TWN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{3}(\\d{2})?', 0, 'zh', 'TWD', '886', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(207, 1, 'Tajikistan', '', '762', 'TJ', 'TJK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'tg', 'TJS', '992', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(208, 1, 'Tanzania, United Republic of', '', '834', 'TZ', 'TZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sw', 'TZS', '255', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(209, 1, 'Thailand', '', '764', 'TH', 'THA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'th', 'THB', '66', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(210, 1, 'Togo', '', '768', 'TG', 'TGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '228', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(211, 1, 'Tokelau', '', '772', 'TK', 'TKL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '690', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(212, 1, 'Tonga', '', '776', 'TO', 'TON', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'to', 'TOP', '676', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(213, 1, 'Trinidad and Tobago', '', '780', 'TT', 'TTO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'TTD', '186', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(214, 1, 'Tunisia', '', '788', 'TN', 'TUN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'ar', 'TND', '216', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(215, 1, 'Turkey', '', '792', 'TR', 'TUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'tr', 'TRY', '90', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(216, 1, 'Turkmenistan', '', '795', 'TM', 'TKM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'tk', 'TMT', '993', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(217, 1, 'Turks and Caicos Islands', '', '796', 'TC', 'TCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'TKCA 1ZZ', 0, 'en', 'USD', '164', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(218, 1, 'Tuvalu', '', '798', 'TV', 'TUV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '688', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(219, 1, 'Uganda', '', '800', 'UG', 'UGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'UGX', '256', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(220, 1, 'Ukraine', '', '804', 'UA', 'UKR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'uk', 'UAH', '380', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(221, 1, 'United Arab Emirates', '', '784', 'AE', 'ARE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'AED', '971', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(222, 1, 'United Kingdom', '', '826', 'GB', 'GBR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'GIR[ ]?0AA|((AB|AL|B|BA|BB|BD|BH|BL|BN|BR|BS|BT|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(\\d[\\dA-Z]?[ ]?\\d[ABD-HJLN-UW-Z]{2}))|BFPO[ ]?\\d{1,4}', 1, 'en', 'GBP', '44', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(223, 1, 'United States', '', '840', 'US', 'USA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}([ \\-]\\d{4})?', 0, 'en', 'USD', '1', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(224, 1, 'United States Minor Outlying Islands', '', '581', 'UM', 'UMI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '1', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(225, 1, 'Uruguay', '', '858', 'UY', 'URY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'es', 'UYU', '598', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(226, 1, 'Uzbekistan', '', '860', 'UZ', 'UZB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{6}', 0, 'uz', 'UZS', '998', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(227, 1, 'Vanuatu', '', '548', 'VU', 'VUT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'bi', 'VUV', '678', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(228, 1, 'Vatican City State (Holy See)', '', '336', 'VA', 'VAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00120', 0, 'la', 'EUR', '39', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(229, 1, 'Venezuela', '', '862', 'VE', 'VEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{4}', 0, 'es', 'VEF', '58', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(230, 1, 'Viet Nam', '', '704', 'VN', 'VNM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'vi', 'VND', '84', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(231, 1, 'Virgin Islands (British)', '', '092', 'VG', 'VGB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '128', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(232, 1, 'Virgin Islands (U.S.)', '', '850', 'VI', 'VIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '008(([0-4]\\d)|(5[01]))([ \\-]\\d{4})?', 0, 'en', 'USD', '134', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(233, 1, 'Wallis and Futuna Islands', '', '876', 'WF', 'WLF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '986\\d{2}', 0, 'fr', 'XPF', '681', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(234, 1, 'Western Sahara', '', '732', 'EH', 'ESH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MAD', '212', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(235, 1, 'Yemen', '', '887', 'YE', 'YEM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'YER', '967', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(236, 1, 'Serbia', '', '381', 'RS', 'SRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sr', 'RSD', '381', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(237, 1, 'Democratic Republic of Congo', '', '180', 'CD', 'COD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '243', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(238, 1, 'Zambia', '', '894', 'ZM', 'ZMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '\\d{5}', 0, 'en', 'ZMW', '260', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(239, 1, 'Zimbabwe', '', '716', 'ZW', 'ZWE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'ZWD', '263', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_currencies`
--

CREATE TABLE `lc_currencies` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `number` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `value` decimal(10,4) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `prefix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `suffix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_currencies`
--

INSERT INTO `lc_currencies` (`id`, `status`, `code`, `number`, `name`, `value`, `decimals`, `prefix`, `suffix`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'USD', '840', 'US Dollars', '1.0000', 2, '$', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 'EUR', '978', 'Euros', '0.7260', 2, '', ' €', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_customers`
--

CREATE TABLE `lc_customers` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `postcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `mobile` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `different_shipping_address` tinyint(1) NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 1,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_customers`
--

INSERT INTO `lc_customers` (`id`, `code`, `status`, `email`, `password`, `tax_id`, `company`, `firstname`, `lastname`, `address1`, `address2`, `postcode`, `city`, `country_code`, `zone_code`, `phone`, `mobile`, `different_shipping_address`, `shipping_company`, `shipping_firstname`, `shipping_lastname`, `shipping_address1`, `shipping_address2`, `shipping_city`, `shipping_postcode`, `shipping_country_code`, `shipping_zone_code`, `newsletter`, `date_updated`, `date_created`) VALUES
(1, '', 1, 'user@email.com', '000000000000000000000000000000000000000000000000', '0000000000', 'ACME Corp.', 'John', 'Doe', 'Longway Street 1', '', 'XX1 X1', 'London', 'GB', '', '1-555-123-4567', '', 0, '', '', '', '', '', '', '', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_delivery_statuses`
--

CREATE TABLE `lc_delivery_statuses` (
  `id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_delivery_statuses`
--

INSERT INTO `lc_delivery_statuses` (`id`, `date_updated`, `date_created`) VALUES
(1, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_delivery_statuses_info`
--

CREATE TABLE `lc_delivery_statuses_info` (
  `id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_delivery_statuses_info`
--

INSERT INTO `lc_delivery_statuses_info` (`id`, `delivery_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', '3-5 days', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_geo_zones`
--

CREATE TABLE `lc_geo_zones` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_geo_zones`
--

INSERT INTO `lc_geo_zones` (`id`, `name`, `description`, `date_updated`, `date_created`) VALUES
(1, 'Canada', 'All states in Canada', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 'United States of America', 'All states in USA', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_languages`
--

CREATE TABLE `lc_languages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `code2` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `locale` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `charset` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `raw_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `decimal_point` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `thousands_sep` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_languages`
--

INSERT INTO `lc_languages` (`id`, `status`, `code`, `code2`, `name`, `locale`, `charset`, `raw_date`, `raw_time`, `raw_datetime`, `format_date`, `format_time`, `format_datetime`, `decimal_point`, `thousands_sep`, `currency_code`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'en', 'eng', 'English', 'en_US.utf8,en_US.UTF-8,english', 'UTF-8', 'm/d/y', 'h:i:s A', 'm/d/y h:i:s A', '%b %e %Y', '%I:%M %p', '%b %e %Y %I:%M %p', '.', ',', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_manufacturers`
--

CREATE TABLE `lc_manufacturers` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_manufacturers`
--

INSERT INTO `lc_manufacturers` (`id`, `status`, `code`, `name`, `keywords`, `image`, `date_updated`, `date_created`) VALUES
(1, 1, 'acme', 'ACME Corp.', '', 'manufacturers/1-acme-corp.png', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_manufacturers_info`
--

CREATE TABLE `lc_manufacturers_info` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_manufacturers_info`
--

INSERT INTO `lc_manufacturers_info` (`id`, `manufacturer_id`, `language_code`, `short_description`, `description`, `h1_title`, `head_title`, `meta_description`, `link`) VALUES
(1, 1, 'en', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_groups`
--

CREATE TABLE `lc_option_groups` (
  `id` int(11) NOT NULL,
  `function` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `sort` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_option_groups`
--

INSERT INTO `lc_option_groups` (`id`, `function`, `required`, `sort`, `date_updated`, `date_created`) VALUES
(1, 'select', 1, 'priority', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_groups_info`
--

CREATE TABLE `lc_option_groups_info` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_option_groups_info`
--

INSERT INTO `lc_option_groups_info` (`id`, `group_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'Size', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_values`
--

CREATE TABLE `lc_option_values` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_option_values`
--

INSERT INTO `lc_option_values` (`id`, `group_id`, `value`, `priority`) VALUES
(1, 1, '', 1),
(2, 1, '', 2),
(3, 1, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_values_info`
--

CREATE TABLE `lc_option_values_info` (
  `id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_option_values_info`
--

INSERT INTO `lc_option_values_info` (`id`, `value_id`, `language_code`, `name`) VALUES
(1, 1, 'en', 'Small'),
(2, 2, 'en', 'Medium'),
(3, 3, 'en', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders`
--

CREATE TABLE `lc_orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `customer_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `customer_mobile` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `customer_tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_postcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `customer_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `customer_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_tracking_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `payment_transaction_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `weight_total` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `currency_value` decimal(11,4) NOT NULL,
  `payment_due` decimal(11,4) NOT NULL,
  `tax_total` decimal(11,4) NOT NULL,
  `client_ip` varchar(39) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_comments`
--

CREATE TABLE `lc_orders_comments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `author` enum('system','staff','customer') COLLATE utf8_swedish_ci NOT NULL,
  `text` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `hidden` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_items`
--

CREATE TABLE `lc_orders_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_stock_combination` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `options` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `price` decimal(11,4) NOT NULL,
  `tax` decimal(11,4) NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_totals`
--

CREATE TABLE `lc_orders_totals` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `module_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `value` float NOT NULL,
  `tax` float NOT NULL,
  `calculate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_order_statuses`
--

CREATE TABLE `lc_order_statuses` (
  `id` int(11) NOT NULL,
  `icon` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_swedish_ci NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_order_statuses`
--

INSERT INTO `lc_order_statuses` (`id`, `icon`, `color`, `is_sale`, `is_archived`, `notify`, `priority`, `date_updated`, `date_created`) VALUES
(1, 'fa-money', '#c0c0c0', 0, 0, 0, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 'fa-clock-o', '#d7d96f', 1, 0, 0, 2, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 'fa-cog', '#ffa851', 1, 0, 0, 3, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 'fa-truck', '#99cc66', 1, 1, 0, 4, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(5, 'fa-times', '#ff6666', 0, 1, 0, 5, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_order_statuses_info`
--

CREATE TABLE `lc_order_statuses_info` (
  `id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `email_message` varchar(2048) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_order_statuses_info`
--

INSERT INTO `lc_order_statuses_info` (`id`, `order_status_id`, `language_code`, `name`, `description`, `email_message`) VALUES
(1, 1, 'en', 'Awaiting payment', '', ''),
(2, 2, 'en', 'Pending', '', ''),
(3, 3, 'en', 'Processing', '', ''),
(4, 4, 'en', 'Dispatched', '', ''),
(5, 5, 'en', 'Cancelled', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_pages`
--

CREATE TABLE `lc_pages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dock` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_pages`
--

INSERT INTO `lc_pages` (`id`, `status`, `dock`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'customer_service,information', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 'customer_service,information', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, 'customer_service,information', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 1, 'customer_service,information', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_pages_info`
--

CREATE TABLE `lc_pages_info` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `content` mediumtext COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_pages_info`
--

INSERT INTO `lc_pages_info` (`id`, `page_id`, `language_code`, `title`, `content`, `head_title`, `meta_description`) VALUES
(1, 1, 'en', 'About Us', '<h1>About Us</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum quam eget molestie lacinia. Suspendisse consectetur velit vitae tellus commodo pharetra. Curabitur lobortis turpis tortor, id blandit metus pellentesque sit amet. Etiam cursus dolor purus, sit amet vestibulum ipsum aliquet nec. Nunc sed aliquet eros. Sed at vehicula urna. Aliquam euismod nisl a felis adipiscing tincidunt. Etiam vestibulum arcu sed massa ornare, vitae venenatis odio convallis.\r\n</p>\r\n \r\n<h2>\r\n	Subheading 2\r\n</h2>\r\n \r\n<p>\r\n	 Aliquam eget suscipit urna. Fusce sed lorem enim. Praesent dictum sagittis tellus, vel imperdiet urna tristique eu. Morbi sed orci eu odio varius tempor consequat ut lectus. Aliquam sagittis sapien vitae nulla porta adipiscing. Nullam pulvinar interdum malesuada. Ut blandit ligula quam, id luctus risus ultrices eget. Donec mattis turpis vel purus hendrerit, id ornare dui viverra. Donec at aliquet purus. Maecenas ut commodo lorem. Vivamus ornare sem eu convallis ullamcorper. \r\n</p>\r\n \r\n<h3>\r\n	Subheading 3\r\n</h3>\r\n \r\n<p>\r\n	 In in massa accumsan augue accumsan facilisis non eget dui. Ut volutpat nisl urna, ac dapibus ipsum fermentum iaculis. Donec sed lorem metus. Donec gravida et risus et consectetur. Proin aliquet, ipsum in faucibus condimentum, orci sapien sollicitudin mi, vitae molestie nunc odio vitae libero. Nullam pretium velit in sem sagittis, et facilisis mi fermentum. Aenean varius sed est et tincidunt. Praesent non imperdiet ligula. \r\n</p>', '', ''),
(2, 2, 'en', 'Delivery Information', '<h1>Delivery Information</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum quam eget molestie lacinia. Suspendisse consectetur velit vitae tellus commodo pharetra. Curabitur lobortis turpis tortor, id blandit metus pellentesque sit amet. Etiam cursus dolor purus, sit amet vestibulum ipsum aliquet nec. Nunc sed aliquet eros. Sed at vehicula urna. Aliquam euismod nisl a felis adipiscing tincidunt. Etiam vestibulum arcu sed massa ornare, vitae venenatis odio convallis.\r\n</p>\r\n \r\n<h2>\r\n	 Subheading 2 \r\n</h2>\r\n \r\n<p>\r\n	 Aliquam eget suscipit urna. Fusce sed lorem enim. Praesent dictum sagittis tellus, vel imperdiet urna tristique eu. Morbi sed orci eu odio varius tempor consequat ut lectus. Aliquam sagittis sapien vitae nulla porta adipiscing. Nullam pulvinar interdum malesuada. Ut blandit ligula quam, id luctus risus ultrices eget. Donec mattis turpis vel purus hendrerit, id ornare dui viverra. Donec at aliquet purus. Maecenas ut commodo lorem. Vivamus ornare sem eu convallis ullamcorper. \r\n</p>\r\n \r\n<h3>\r\n	 Subheading 3 \r\n</h3>\r\n \r\n<p>\r\n	 In in massa accumsan augue accumsan facilisis non eget dui. Ut volutpat nisl urna, ac dapibus ipsum fermentum iaculis. Donec sed lorem metus. Donec gravida et risus et consectetur. Proin aliquet, ipsum in faucibus condimentum, orci sapien sollicitudin mi, vitae molestie nunc odio vitae libero. Nullam pretium velit in sem sagittis, et facilisis mi fermentum. Aenean varius sed est et tincidunt. Praesent non imperdiet ligula. \r\n</p>', '', ''),
(3, 3, 'en', 'Privacy Policy', '<h1>Privacy Policy</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum quam eget molestie lacinia. Suspendisse consectetur velit vitae tellus commodo pharetra. Curabitur lobortis turpis tortor, id blandit metus pellentesque sit amet. Etiam cursus dolor purus, sit amet vestibulum ipsum aliquet nec. Nunc sed aliquet eros. Sed at vehicula urna. Aliquam euismod nisl a felis adipiscing tincidunt. Etiam vestibulum arcu sed massa ornare, vitae venenatis odio convallis.\r\n</p>\r\n \r\n<h2>\r\n	 Subheading 2 \r\n</h2>\r\n \r\n<p>\r\n	 Aliquam eget suscipit urna. Fusce sed lorem enim. Praesent dictum sagittis tellus, vel imperdiet urna tristique eu. Morbi sed orci eu odio varius tempor consequat ut lectus. Aliquam sagittis sapien vitae nulla porta adipiscing. Nullam pulvinar interdum malesuada. Ut blandit ligula quam, id luctus risus ultrices eget. Donec mattis turpis vel purus hendrerit, id ornare dui viverra. Donec at aliquet purus. Maecenas ut commodo lorem. Vivamus ornare sem eu convallis ullamcorper. \r\n</p>\r\n \r\n<h3>\r\n	 Subheading 3 \r\n</h3>\r\n \r\n<p>\r\n	 In in massa accumsan augue accumsan facilisis non eget dui. Ut volutpat nisl urna, ac dapibus ipsum fermentum iaculis. Donec sed lorem metus. Donec gravida et risus et consectetur. Proin aliquet, ipsum in faucibus condimentum, orci sapien sollicitudin mi, vitae molestie nunc odio vitae libero. Nullam pretium velit in sem sagittis, et facilisis mi fermentum. Aenean varius sed est et tincidunt. Praesent non imperdiet ligula. \r\n</p>', '', ''),
(4, 4, 'en', 'Terms & Conditions', '<h1>Terms &amp; Conditions</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum quam eget molestie lacinia. Suspendisse consectetur velit vitae tellus commodo pharetra. Curabitur lobortis turpis tortor, id blandit metus pellentesque sit amet. Etiam cursus dolor purus, sit amet vestibulum ipsum aliquet nec. Nunc sed aliquet eros. Sed at vehicula urna. Aliquam euismod nisl a felis adipiscing tincidunt. Etiam vestibulum arcu sed massa ornare, vitae venenatis odio convallis.\r\n</p>\r\n \r\n<h2>\r\n	 Subheading 2 \r\n</h2>\r\n \r\n<p>\r\n	 Aliquam eget suscipit urna. Fusce sed lorem enim. Praesent dictum sagittis tellus, vel imperdiet urna tristique eu. Morbi sed orci eu odio varius tempor consequat ut lectus. Aliquam sagittis sapien vitae nulla porta adipiscing. Nullam pulvinar interdum malesuada. Ut blandit ligula quam, id luctus risus ultrices eget. Donec mattis turpis vel purus hendrerit, id ornare dui viverra. Donec at aliquet purus. Maecenas ut commodo lorem. Vivamus ornare sem eu convallis ullamcorper. \r\n</p>\r\n \r\n<h3>\r\n	 Subheading 3 \r\n</h3>\r\n \r\n<p>\r\n	 In in massa accumsan augue accumsan facilisis non eget dui. Ut volutpat nisl urna, ac dapibus ipsum fermentum iaculis. Donec sed lorem metus. Donec gravida et risus et consectetur. Proin aliquet, ipsum in faucibus condimentum, orci sapien sollicitudin mi, vitae molestie nunc odio vitae libero. Nullam pretium velit in sem sagittis, et facilisis mi fermentum. Aenean varius sed est et tincidunt. Praesent non imperdiet ligula. \r\n</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products`
--

CREATE TABLE `lc_products` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `default_category_id` int(11) NOT NULL,
  `product_groups` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `upc` varchar(24) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Deprecated',
  `gtin` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `taric` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `quantity_unit_id` int(1) NOT NULL,
  `weight` decimal(10,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(10,4) NOT NULL,
  `dim_y` decimal(10,4) NOT NULL,
  `dim_z` decimal(10,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `purchase_price` decimal(10,4) NOT NULL,
  `purchase_price_currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `views` int(11) NOT NULL,
  `purchases` int(11) NOT NULL,
  `date_valid_from` date NOT NULL,
  `date_valid_to` date NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products`
--

INSERT INTO `lc_products` (`id`, `status`, `manufacturer_id`, `supplier_id`, `delivery_status_id`, `sold_out_status_id`, `default_category_id`, `product_groups`, `keywords`, `code`, `sku`, `upc`, `gtin`, `taric`, `quantity`, `quantity_unit_id`, `weight`, `weight_class`, `dim_x`, `dim_y`, `dim_z`, `dim_class`, `purchase_price`, `purchase_price_currency_code`, `tax_class_id`, `image`, `views`, `purchases`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(1, 1, 1, 0, 1, 2, 2, '', '', 'rd001', 'RD001', '', '', '', '30.0000', 1, '0.5000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', '', 1, 'products/1-yellow-duck-1.png', 1, 0, '0000-00-00', '0000-00-00', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 1, 0, 1, 2, 2, '', '', 'rd002', 'RD002', '', '', '', '30.0000', 1, '0.5000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', '', 1, 'products/2-green-duck-1.png', 1, 0, '0000-00-00', '0000-00-00', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, 1, 0, 1, 2, 1, '', '', 'rd003', 'RD003', '', '', '', '30.0000', 1, '0.5000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', '', 1, 'products/3-red-duck-1.png', 1, 0, '0000-00-00', '0000-00-00', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 1, 1, 0, 1, 2, 1, '', '', 'rd004', 'RD004', '', '', '', '30.0000', 1, '0.5000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', '', 1, 'products/4-blue-duck-1.png', 1, 0, '0000-00-00', '0000-00-00', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(5, 1, 1, 0, 1, 2, 1, '', '', 'rd005', 'RD005', '', '', '', '30.0000', 1, '0.5000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', '', 1, 'products/5-purple-duck-1.png', 1, 0, '0000-00-00', '0000-00-00', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_campaigns`
--

CREATE TABLE `lc_products_campaigns` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_campaigns`
--

INSERT INTO `lc_products_campaigns` (`id`, `product_id`, `start_date`, `end_date`, `USD`, `EUR`) VALUES
(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_images`
--

CREATE TABLE `lc_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filename` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `checksum` char(32) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_images`
--

INSERT INTO `lc_products_images` (`id`, `product_id`, `filename`, `checksum`, `priority`) VALUES
(1, 1, 'products/1-yellow-duck-1.png', '', 1),
(2, 2, 'products/2-green-duck-1.png', '', 1),
(3, 3, 'products/3-red-duck-1.png', '', 1),
(4, 4, 'products/4-blue-duck-1.png', '', 1),
(5, 5, 'products/5-purple-duck-1.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_info`
--

CREATE TABLE `lc_products_info` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `attributes` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_info`
--

INSERT INTO `lc_products_info` (`id`, `product_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `meta_description`, `attributes`) VALUES
(1, 1, 'en', 'Yellow Duck', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue.', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue. Cras scelerisque dui non consequat sollicitudin. Sed pretium tortor ac auctor molestie. Nulla facilisi. Maecenas pulvinar nibh vitae lectus vehicula semper. Donec et aliquet velit. Curabitur non ullamcorper mauris. In hac habitasse platea dictumst. Phasellus ut pretium justo, sit amet bibendum urna. Maecenas sit amet arcu pulvinar, facilisis quam at, viverra nisi. Morbi sit amet adipiscing ante. Integer imperdiet volutpat ante, sed venenatis urna volutpat a. Proin justo massa, convallis vitae consectetur sit amet, facilisis id libero. \r\n</p>', '', '', 'Colors\r\nBody: Yellow\r\nEyes: Black\r\nBeak: Orange\r\n\r\nOther\r\nMaterial: Plastic'),
(2, 2, 'en', 'Green Duck', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue.', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue. Cras scelerisque dui non consequat sollicitudin. Sed pretium tortor ac auctor molestie. Nulla facilisi. Maecenas pulvinar nibh vitae lectus vehicula semper. Donec et aliquet velit. Curabitur non ullamcorper mauris. In hac habitasse platea dictumst. Phasellus ut pretium justo, sit amet bibendum urna. Maecenas sit amet arcu pulvinar, facilisis quam at, viverra nisi. Morbi sit amet adipiscing ante. Integer imperdiet volutpat ante, sed venenatis urna volutpat a. Proin justo massa, convallis vitae consectetur sit amet, facilisis id libero. \r\n</p>', '', '', ''),
(3, 3, 'en', 'Red Duck', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue.', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue. Cras scelerisque dui non consequat sollicitudin. Sed pretium tortor ac auctor molestie. Nulla facilisi. Maecenas pulvinar nibh vitae lectus vehicula semper. Donec et aliquet velit. Curabitur non ullamcorper mauris. In hac habitasse platea dictumst. Phasellus ut pretium justo, sit amet bibendum urna. Maecenas sit amet arcu pulvinar, facilisis quam at, viverra nisi. Morbi sit amet adipiscing ante. Integer imperdiet volutpat ante, sed venenatis urna volutpat a. Proin justo massa, convallis vitae consectetur sit amet, facilisis id libero. \r\n</p>', '', '', ''),
(4, 4, 'en', 'Blue Duck', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue.', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue. Cras scelerisque dui non consequat sollicitudin. Sed pretium tortor ac auctor molestie. Nulla facilisi. Maecenas pulvinar nibh vitae lectus vehicula semper. Donec et aliquet velit. Curabitur non ullamcorper mauris. In hac habitasse platea dictumst. Phasellus ut pretium justo, sit amet bibendum urna. Maecenas sit amet arcu pulvinar, facilisis quam at, viverra nisi. Morbi sit amet adipiscing ante. Integer imperdiet volutpat ante, sed venenatis urna volutpat a. Proin justo massa, convallis vitae consectetur sit amet, facilisis id libero. \r\n</p>', '', '', ''),
(5, 5, 'en', 'Purple Duck', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue.', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin ante massa, eget ornare libero porta congue. Cras scelerisque dui non consequat sollicitudin. Sed pretium tortor ac auctor molestie. Nulla facilisi. Maecenas pulvinar nibh vitae lectus vehicula semper. Donec et aliquet velit. Curabitur non ullamcorper mauris. In hac habitasse platea dictumst. Phasellus ut pretium justo, sit amet bibendum urna. Maecenas sit amet arcu pulvinar, facilisis quam at, viverra nisi. Morbi sit amet adipiscing ante. Integer imperdiet volutpat ante, sed venenatis urna volutpat a. Proin justo massa, convallis vitae consectetur sit amet, facilisis id libero. \r\n</p>', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_options`
--

CREATE TABLE `lc_products_options` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `price_operator` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_options`
--

INSERT INTO `lc_products_options` (`id`, `product_id`, `group_id`, `value_id`, `price_operator`, `USD`, `EUR`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 1, 1, '+', '0.0000', '0.0000', 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 1, 2, '+', '2.5000', '0.0000', 2, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, 1, 3, '+', '5.0000', '0.0000', 3, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_options_stock`
--

CREATE TABLE `lc_products_options_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `combination` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(11,4) NOT NULL,
  `dim_y` decimal(11,4) NOT NULL,
  `dim_z` decimal(11,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_options_stock`
--

INSERT INTO `lc_products_options_stock` (`id`, `product_id`, `combination`, `sku`, `weight`, `weight_class`, `dim_x`, `dim_y`, `dim_z`, `dim_class`, `quantity`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, '1-1', 'RD001-S', '1.0000', 'kg', '6.0000', '10.0000', '10.0000', 'cm', '10.0000', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, '1-2', 'RD001-M', '1.1000', 'kg', '8.0000', '12.5000', '12.5000', 'cm', '10.0000', 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, '1-3', 'RD001-L', '1.2000', 'kg', '10.0000', '15.0000', '15.0000', 'cm', '10.0000', 2, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_prices`
--

CREATE TABLE `lc_products_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_prices`
--

INSERT INTO `lc_products_prices` (`id`, `product_id`, `USD`, `EUR`) VALUES
(1, 1, '20.0000', '0.0000'),
(2, 2, '20.0000', '0.0000'),
(3, 3, '20.0000', '0.0000'),
(4, 4, '20.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_to_categories`
--

CREATE TABLE `lc_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_to_categories`
--

INSERT INTO `lc_products_to_categories` (`product_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups`
--

CREATE TABLE `lc_product_groups` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_product_groups`
--

INSERT INTO `lc_product_groups` (`id`, `status`, `date_updated`, `date_created`) VALUES
(1, 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_info`
--

CREATE TABLE `lc_product_groups_info` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_product_groups_info`
--

INSERT INTO `lc_product_groups_info` (`id`, `product_group_id`, `language_code`, `name`) VALUES
(1, 1, 'en', 'Gender');

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_values`
--

CREATE TABLE `lc_product_groups_values` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_product_groups_values`
--

INSERT INTO `lc_product_groups_values` (`id`, `product_group_id`, `date_updated`, `date_created`) VALUES
(1, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_values_info`
--

CREATE TABLE `lc_product_groups_values_info` (
  `id` int(11) NOT NULL,
  `product_group_value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_product_groups_values_info`
--

INSERT INTO `lc_product_groups_values_info` (`id`, `product_group_value_id`, `language_code`, `name`) VALUES
(1, 1, 'en', 'Male'),
(2, 2, 'en', 'Female'),
(3, 3, 'en', 'Unisex');

-- --------------------------------------------------------

--
-- Table structure for table `lc_quantity_units`
--

CREATE TABLE `lc_quantity_units` (
  `id` int(11) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `separate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_quantity_units`
--

INSERT INTO `lc_quantity_units` (`id`, `decimals`, `separate`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_quantity_units_info`
--

CREATE TABLE `lc_quantity_units_info` (
  `id` int(11) NOT NULL,
  `quantity_unit_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_quantity_units_info`
--

INSERT INTO `lc_quantity_units_info` (`id`, `quantity_unit_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'pcs', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_settings`
--

CREATE TABLE `lc_settings` (
  `id` int(11) NOT NULL,
  `setting_group_key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `type` enum('global','local') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'local',
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `value` varchar(2048) COLLATE utf8_swedish_ci NOT NULL,
  `function` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_settings`
--

INSERT INTO `lc_settings` (`id`, `setting_group_key`, `type`, `title`, `description`, `key`, `value`, `function`, `priority`, `date_updated`, `date_created`) VALUES
(1, 'store_info', 'global', 'Store Name', 'The name of your store.', 'store_name', 'My Store', 'input()', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 'store_info', 'global', 'Store Email', 'The store e-mail address.', 'store_email', 'store@email.com', 'input()', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 'store_info', 'local', 'Store Tax ID', 'The store tax ID or VATIN.', 'store_tax_id', 'XX000000000000', 'input()', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 'store_info', 'local', 'Store Postal Address', 'The store postal address.', 'store_postal_address', 'My Store\r\nStreet\r\nPostcode City\r\nCountry', 'bigtext()', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(5, 'store_info', 'local', 'Store Visiting Address', 'The store visiting address if applicable.', 'store_visiting_address', '', 'bigtext()', 14, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(6, 'store_info', 'local', 'Store Phone Number', 'The store phone number.', 'store_phone', '+1-212-555-DUCK', 'input()', 15, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(7, 'store_info', 'global', 'Store Country', 'The country of your store.', 'store_country_code', 'UA', 'countries()', 16, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(8, 'store_info', 'global', 'Store Time Zone', 'The store time zone.', 'store_timezone', 'Europe/Kiev', 'timezones()', 17, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(9, 'store_info', 'local', 'Store Language', 'The spoken language of your organization.', 'store_language_code', 'en', 'languages()', 18, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(10, 'store_info', 'global', 'Store Currency', 'The currency of which all prices conform to.', 'store_currency_code', 'USD', 'currencies()', 19, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(11, 'store_info', 'global', 'Store Zone', 'The zone of your store.', 'store_zone_code', '', 'zones()', 20, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(12, 'store_info', 'global', 'Store Weight Class', 'The prefered weight class.', 'store_weight_class', 'kg', 'weight_classes()', 21, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(13, 'store_info', 'global', 'Store Length Class', 'The prefered length class.', 'store_length_class', 'cm', 'length_classes()', 22, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(14, 'defaults', 'global', 'Default Language', 'The default language selected, if failed to identify.', 'default_language_code', 'en', 'languages()', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(15, 'defaults', 'global', 'Default Currency', 'The default currency selected, if failed to identify.', 'default_currency_code', 'USD', 'currencies()', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(16, 'defaults', 'global', 'Default Country', 'The default country selected if not set otherwise.', 'default_country_code', 'UA', 'countries()', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(17, 'defaults', 'global', 'Default Zone', 'The default zone selected if not set otherwise.', 'default_zone_code', '', 'zones()', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(18, 'defaults', 'local', 'Default Tax Class', 'Default tax class that will be preset when creating new products.', 'default_tax_class_id', '1', 'tax_classes()', 14, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(19, 'defaults', 'global', 'Default Display Prices Including Tax', 'Displays prices including tax by default.', 'default_display_prices_including_tax', '1', 'toggle()', 15, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(20, 'defaults', 'global', 'Default Quantity Unit', 'Default quantity unit that will be preset when creating new products.', 'default_quantity_unit_id', '1', 'quantity_units()', 16, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(21, 'defaults', 'global', 'Default Sold Out Status', 'Default sold out status that will be preset when creating new products.', 'default_sold_out_status_id', '1', 'sold_out_statuses()', 17, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(22, 'defaults', 'global', 'Default Delivery Status', 'Default delivery status that will be preset when creating new products.', 'default_delivery_status_id', '1', 'delivery_statuses()', 18, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(23, 'listings', 'global', 'Catalog Only Mode', 'Disables the cart and checkout features leaving only a browsable catalog.', 'catalog_only_mode', '0', 'toggle(\"t/f\")', 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(24, 'listings', 'local', 'Items Per Page', 'The number of items to be displayed per page.', 'items_per_page', '20', 'int()', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(25, 'listings', 'local', 'Data Table Rows', 'The number of data table rows per page.', 'data_table_rows_per_page', '25', 'input()', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(26, 'listings', 'local', 'Display Stock Count', 'Show the available amounts of products in stock.', 'display_stock_count', '1', 'toggle()', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(27, 'listings', 'local', 'Cheapest Shipping', 'Display the cheapest shipping cost on product page.', 'display_cheapest_shipping', '1', 'toggle()', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(28, 'listings', 'local', 'Max Age for New Products', 'Display the new sticker for products younger than the give age. E.g. 1 month or 14 days', 'new_products_max_age', '1 month', 'input()', 14, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(29, 'listings', 'local', 'Similar Products Box: Number of Items', 'The maximum amount of items to be display in the box.', 'box_similar_products_num_items', '10', 'int()', 15, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(30, 'listings', 'local', 'Recently Viewed Products Box: Number of Items', 'The maximum amount of items to be display in the box.', 'box_recently_viewed_products_num_items', '4', 'int()', 16, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(31, 'listings', 'local', 'Latest Products Box: Number of Items', 'The maximum amount of items to be display in the box.', 'box_latest_products_num_items', '10', 'int()', 17, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(32, 'listings', 'local', 'Most Popular Products Box: Number of Items', 'The maximum amount of items to be display in the box.', 'box_most_popular_products_num_items', '10', 'int()', 18, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(33, 'listings', 'local', 'Campaign Products Box: Number of Items', 'The maximum amount of items to be display in the box.', 'box_campaign_products_num_items', '5', 'int()', 19, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(34, 'listings', 'local', 'Auto Decimals', 'Show only decimals if there are any to display.', 'auto_decimals', '1', 'toggle(\"e/d\")', 20, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(35, 'images', 'local', 'Category Images: Aspect Ratio', 'The aspect ratio of the category thumbnails', 'category_image_ratio', '16:9', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(36, 'images', 'local', 'Product Images: Aspect Ratio', 'The aspect ratio of the product thumbnails', 'product_image_ratio', '1:1', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 30, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(37, 'images', 'local', 'Product Images: Clipping Method', 'The clipping method used for scaled product thumbnails.', 'product_image_clipping', 'FIT_USE_WHITESPACING', 'select(\"CROP\",\"FIT\",\"FIT_USE_WHITESPACING\")', 31, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(38, 'images', 'local', 'Product Images: Watermark', 'Watermark product images with the store logo.', 'product_image_watermark', '0', 'toggle(\"y/n\")', 33, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(39, 'images', 'local', 'Downsample', 'Downsample large uploaded images to best fit within the given dimensions of \"width,height\" or leave empty. Default: 2048,2048', 'image_downsample_size', '2048,2048', 'smallinput()', 34, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(40, 'images', 'local', 'Image Quality', 'The JPEG quality for uploaded images (0-100). Default: 90', 'image_quality', '90', 'int()', 40, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(41, 'images', 'local', 'Thumbnail Quality', 'The JPEG quality for thumbnail images (0-100). Default: 65', 'image_thumbnail_quality', '65', 'int()', 41, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(42, 'images', 'local', 'Whitespace Color', 'Set the color of any generated whitespace to the given RGB value. Default: 255,255,255', 'image_whitespace_color', '255,255,255', 'smallinput()', 42, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(43, 'checkout', 'local', 'Register Guests', 'Automatically create accounts for all guests.', 'register_guests', '0', 'toggle()', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(44, 'checkout', 'local', 'Password Field', 'If Register Guests is enabled, show the password field letting customers set their own password. Otherwise randomly generated.', 'fields_customer_password', '0', 'toggle()', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(45, 'checkout', 'local', 'Order Copy Receipients', 'Send order copies to the following e-mail addresses. Separate by semi-colons.', 'email_order_copy', 'store@email.com', 'mediumtext()', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(46, 'checkout', 'global', 'Round Amounts', 'Round currency amounts to prevent hidden decimals.', 'round_amounts', '1', 'toggle()', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(47, 'advanced', 'global', 'System Cache Enabled', 'Enables the system cache module which caches frequently used data.', 'cache_enabled', '0', 'toggle()', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(48, 'advanced', 'global', 'Clear System Cache', 'Remove all cached system information.', 'cache_clear', '0', 'toggle()', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(49, 'advanced', 'global', 'Clear Thumbnails Cache', 'Remove all cached image thumbnails from disk.', 'cache_clear_thumbnails', '0', 'toggle()', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(50, 'advanced', 'global', 'SEO Links Language Prefix', 'Precede links with language code e.g. /en/....', 'seo_links_language_prefix', '1', 'toggle()', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(51, 'advanced', 'global', 'Regional Settings Screen', 'Enables the regional settings screen upon first visit.', 'regional_settings_screen_enabled', '0', 'toggle()', 14, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(52, 'advanced', 'global', 'Jobs Last Run', 'Time when background jobs where last executed.', 'jobs_last_run', '2021-08-29 21:52:35', 'input()', 15, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(53, 'advanced', 'global', 'GZIP Enabled', 'Compresses browser data. Increases the load on the server but decreases the bandwidth.', 'gzip_enabled', '1', 'toggle()', 16, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(54, 'advanced', 'local', 'Jobs Interval', 'The amount of minutes between each execution of jobs.', 'jobs_interval', '60', 'int()', 17, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(55, 'advanced', 'local', 'Database Admin Link', 'The URL to your database manager e.g. phpMyAdmin.', 'database_admin_link', '?app=settings&doc=advanced&action=edit&key=database_admin_link', 'input()', 18, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(56, 'advanced', 'local', 'Webmail Link', 'The URL to your webmail client.', 'webmail_link', '?app=settings&doc=advanced&action=edit&key=webmail_link', 'input()', 19, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(57, 'advanced', 'global', 'SEO Links Enabled', 'Enabling this requires .htaccess and mod_rewrite rules.', 'seo_links_enabled', '1', 'toggle()', 20, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(58, 'security', 'global', 'Blacklist', 'Deny blacklisted clients access to the site.', 'security_blacklist', '0', 'toggle(\"e/d\")', 10, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(59, 'security', 'global', 'Session Hijacking Protection', 'Destroy sessions that were signed for a different IP address and user agent.', 'security_session_hijacking', '0', 'toggle(\"e/d\")', 11, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(60, 'security', 'global', 'HTTP POST Protection', 'Deny incoming HTTP POST data from external sites by checking for valid form tickets.', 'security_http_post', '0', 'toggle(\"e/d\")', 12, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(61, 'security', 'global', 'Bad Bot Trap', 'Catch bad behaving bots from crawling your website by setting up a trap.', 'security_bot_trap', '0', 'toggle(\"e/d\")', 13, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(62, 'security', 'global', 'Cross-site Scripting (XSS) Detection', 'Detect common XSS attacks and deny access to the site.', 'security_xss', '1', 'toggle(\"e/d\")', 14, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(63, 'security', 'local', 'CAPTCHA', 'Prevent robots from posting form data by enabling CAPTCHA security.', 'captcha_enabled', '1', 'toggle()', 15, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(64, '', 'local', 'Platform Database Version', 'The platform version of the database', 'platform_database_version', '1.3.6', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(65, '', 'global', 'Catalog Template', '', 'store_template_catalog', 'default.catalog', 'templates(\"catalog\")', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(66, '', 'global', 'Admin Template', '', 'store_template_admin', 'default.admin', 'templates(\"admin\")', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(67, '', 'global', 'Catalog Template Settings', '', 'store_template_catalog_settings', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(68, '', 'global', 'Jobs Last Push', 'Time when background jobs where last pushed for execution.', 'jobs_last_push', '2021-08-31 21:49:32', 'input()', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(69, '', 'local', 'Installed Job Modules', '', 'jobs_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(70, '', 'local', 'Installed Shipping Modules', '', 'shipping_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(71, '', 'local', 'Installed Payment Modules', '', 'payment_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(72, '', 'local', 'Installed Order Action Modules', '', 'order_action_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(73, '', 'local', 'Installed Order Total Modules', '', 'order_total_modules', 'ot_subtotal;ot_payment_fee;ot_shipping_fee', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(74, '', 'local', 'Installed Customer Modules', '', 'customer_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(75, '', 'local', 'Installed Order Success Modules', '', 'order_success_modules', '', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(76, '', 'local', '', '', 'ot_payment_fee', 'a:1:{s:10:\"sort_order\";s:2:\"10\";}', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(77, '', 'local', '', '', 'ot_shipping_fee', 'a:1:{s:10:\"sort_order\";s:2:\"10\";}', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(78, '', 'local', '', '', 'ot_subtotal', 'a:1:{s:10:\"sort_order\";s:1:\"1\";}', '', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(79, '', 'local', 'Date Cache Cleared', 'Do not use system cache older than breakpoint.', 'cache_system_breakpoint', '2021-08-29 21:52:35', 'input()', 0, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_settings_groups`
--

CREATE TABLE `lc_settings_groups` (
  `id` int(11) NOT NULL,
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_settings_groups`
--

INSERT INTO `lc_settings_groups` (`id`, `key`, `name`, `description`, `priority`) VALUES
(1, 'store_info', 'Store Info', 'Store information', 10),
(2, 'defaults', 'Defaults', 'Store default settings', 20),
(3, 'general', 'General', 'Store default settings', 30),
(4, 'listings', 'Listings', 'Settings for the catalog listing', 40),
(5, 'images', 'Images', 'Settings for graphical elements', 50),
(6, 'checkout', 'Checkout', 'Checkout settings', 60),
(7, 'advanced', 'Advanced', 'Advanced settings', 70),
(8, 'security', 'Security', 'Site security and protection against threats', 80);

-- --------------------------------------------------------

--
-- Table structure for table `lc_slides`
--

CREATE TABLE `lc_slides` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `language_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `caption` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_valid_from` datetime NOT NULL,
  `date_valid_to` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_slides`
--

INSERT INTO `lc_slides` (`id`, `status`, `language_code`, `name`, `caption`, `link`, `image`, `priority`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(1, 1, 'en', 'Lonely Duck', '', 'http://www.canstockphoto.com/?r=282295', 'slides/1-lonely-duck.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_sold_out_statuses`
--

CREATE TABLE `lc_sold_out_statuses` (
  `id` int(11) NOT NULL,
  `orderable` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_sold_out_statuses`
--

INSERT INTO `lc_sold_out_statuses` (`id`, `orderable`, `date_updated`, `date_created`) VALUES
(1, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_sold_out_statuses_info`
--

CREATE TABLE `lc_sold_out_statuses_info` (
  `id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_sold_out_statuses_info`
--

INSERT INTO `lc_sold_out_statuses_info` (`id`, `sold_out_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'Sold out', ''),
(2, 2, 'en', 'Temporary sold out', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_suppliers`
--

CREATE TABLE `lc_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_tax_classes`
--

CREATE TABLE `lc_tax_classes` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_tax_rates`
--

CREATE TABLE `lc_tax_rates` (
  `id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `rate` decimal(10,4) NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'percent',
  `customer_type` enum('individuals','companies','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `tax_id_rule` enum('with','without','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_translations`
--

CREATE TABLE `lc_translations` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `text_en` text COLLATE utf8_swedish_ci NOT NULL,
  `html` tinyint(1) NOT NULL,
  `pages` text COLLATE utf8_swedish_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_accessed` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_translations`
--

INSERT INTO `lc_translations` (`id`, `code`, `text_en`, `html`, `pages`, `date_created`, `date_updated`, `date_accessed`) VALUES
(1, 'title_home', 'Home', 0, 'includes/library/lib_breadcrumbs.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-09-03 22:57:16'),
(2, 'title_admin_panel', 'Admin Panel', 0, 'admin/index.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(3, 'title_appearence', 'Appearence', 0, 'admin/appearance.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(4, 'title_template', 'Template', 0, 'admin/appearance.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(5, 'title_logotype', 'Logotype', 0, 'admin/appearance.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(6, 'title_catalog', 'Catalog', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(7, 'title_product_groups', 'Product Groups', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(8, 'title_option_groups', 'Option Groups', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(9, 'title_manufacturers', 'Manufacturers', 0, 'admin/catalog.app/config.inc.php,includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(10, 'title_suppliers', 'Suppliers', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(11, 'title_delivery_statuses', 'Delivery Statuses', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(12, 'title_sold_out_statuses', 'Sold Out Statuses', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(13, 'title_quantity_units', 'Quantity Units', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(14, 'title_csv_import_export', 'CSV Import/Export', 0, 'admin/catalog.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(15, 'title_countries', 'Countries', 0, 'admin/countries.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(16, 'title_currencies', 'Currencies', 0, 'admin/currencies.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(17, 'title_customers', 'Customers', 0, 'admin/customers.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(18, 'title_newsletter', 'Newsletter', 0, 'admin/customers.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(19, 'title_geo_zones', 'Geo Zones', 0, 'admin/geo_zones.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(20, 'title_languages', 'Languages', 0, 'admin/languages.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(21, 'title_storage_encoding', 'Storage Encoding', 0, 'admin/languages.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(22, 'title_modules', 'Modules', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(23, 'title_background_jobs', 'Background Jobs', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(24, 'title_customer', 'Customer', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(25, 'title_shipping', 'Shipping', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(26, 'title_payment', 'Payment', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(27, 'title_order_total', 'Order Total', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(28, 'title_order_success', 'Order Success', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(29, 'title_order_action', 'Order Action', 0, 'admin/modules.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(30, 'title_orders', 'Orders', 0, 'admin/orders.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(31, 'title_order_statuses', 'Order Statuses', 0, 'admin/orders.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(32, 'title_pages', 'Pages', 0, 'admin/pages.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(33, 'title_reports', 'Reports', 0, 'admin/reports.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(34, 'title_monthly_sales', 'Monthly Sales', 0, 'admin/reports.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(35, 'title_most_sold_products', 'Most Sold Products', 0, 'admin/reports.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(36, 'title_most_shopping_customers', 'Most Shopping Customers', 0, 'admin/reports.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(37, 'title_settings', 'Settings', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(38, 'settings_group:title_store_info', 'Store Info', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(39, 'settings_group:title_defaults', 'Defaults', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(40, 'settings_group:title_general', 'General', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(41, 'settings_group:title_listings', 'Listings', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(42, 'settings_group:title_images', 'Images', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(43, 'settings_group:title_checkout', 'Checkout', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(44, 'settings_group:title_advanced', 'Advanced', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(45, 'settings_group:title_security', 'Security', 0, 'admin/settings.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(46, 'title_slides', 'Slides', 0, 'admin/slides.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(47, 'title_tax', 'Tax', 0, 'admin/tax.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(48, 'title_tax_classes', 'Tax Classes', 0, 'admin/tax.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(49, 'title_tax_rates', 'Tax Rates', 0, 'admin/tax.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(50, 'title_translations', 'Translations', 0, 'admin/translations.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(51, 'title_search_translations', 'Search Translations', 0, 'admin/translations.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(52, 'title_scan_files', 'Scan Files', 0, 'admin/translations.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(53, 'title_users', 'Users', 0, 'admin/users.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(54, 'title_vqmods', 'vQmods', 0, 'admin/vqmods.app/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(55, 'warning_install_folder_exists', 'Warning: The installation directory is still available and should be deleted.', 0, 'admin/index.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(56, 'title_addons', 'Add-ons', 0, 'admin/addons.widget/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(57, 'title_discussions', 'Discussions', 0, 'admin/discussions.widget/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(58, 'title_sales', 'Sales', 0, 'admin/sales.widget/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(59, 'title_statistics', 'Statistics', 0, 'admin/stats.widget/config.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(60, 'title_s_months', '%s months', 0, 'admin/sales.widget/sales.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(61, 'title_s_days', '%s days', 0, 'admin/sales.widget/sales.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(62, 'title_total_sales', 'Total Sales', 0, 'admin/stats.widget/stats.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(63, 'title_average_order_amount', 'Average Order Amount', 0, 'admin/stats.widget/stats.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(64, 'title_number_of_customers', 'Number of Customers', 0, 'admin/stats.widget/stats.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(65, 'title_number_of_products', 'Number of Products', 0, 'admin/stats.widget/stats.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(66, 'title_id', 'ID', 0, 'admin/orders.widget/orders.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(67, 'title_customer_name', 'Customer Name', 0, 'admin/orders.widget/orders.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(68, 'title_order_status', 'Order Status', 0, 'admin/orders.widget/orders.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(69, 'title_amount', 'Amount', 0, 'admin/orders.widget/orders.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(70, 'title_date', 'Date', 0, 'admin/orders.widget/orders.inc.php', '2021-08-29 21:52:39', '2021-08-29 21:52:39', '2021-08-31 21:49:32'),
(71, 'title_webmail', 'Webmail', 0, 'includes/templates/default.admin/layouts/default.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(72, 'title_database_manager', 'Database Manager', 0, 'includes/templates/default.admin/layouts/default.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(73, 'text_logout', 'Logout', 0, 'includes/templates/default.admin/layouts/default.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(74, 'title_page_parse_time', 'Page Parse Time', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(75, 'title_page_capture_time', 'Page Capture Time', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(76, 'title_included_files', 'Included Files', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(77, 'title_memory_peak', 'Memory Peak', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(78, 'title_memory_limit', 'Memory Limit', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(79, 'title_database_queries', 'Database Queries', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(80, 'title_database_parse_time', 'Database Parse Time', 0, 'includes/library/lib_stats.inc.php', '2021-08-29 21:52:40', '2021-08-29 21:52:40', '2021-08-31 21:49:35'),
(81, 'title_catalog_template', 'Catalog Template', 0, 'admin/appearance.app/template.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:45'),
(82, 'title_select', 'Select', 0, 'includes/functions/func_form.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:46'),
(83, 'title_admin_template', 'Admin Template', 0, 'admin/appearance.app/template.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:45'),
(84, 'title_save', 'Save', 0, 'admin/appearance.app/template.inc.php,admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:50'),
(85, 'title_cancel', 'Cancel', 0, 'admin/appearance.app/template.inc.php,admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:50'),
(86, 'title_help', 'Help', 0, 'includes/templates/default.admin/views/doc.inc.php', '2021-08-29 21:52:43', '2021-08-29 21:52:43', '2021-08-29 21:52:50'),
(87, 'title_add_new_category', 'Add New Category', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(88, 'title_add_new_product', 'Add New Product', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(89, 'text_search_phrase_or_keyword', 'Search phrase or keyword', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(90, 'title_name', 'Name', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/manufacturers.inc.php,admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:50'),
(91, 'title_root', 'Root', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(92, 'title_edit', 'Edit', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/manufacturers.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:48'),
(93, 'title_categories', 'Categories', 0, 'admin/catalog.app/catalog.inc.php,includes/templates/default.catalog/views/box_category_tree.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-31 21:49:32'),
(94, 'title_products', 'Products', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/manufacturers.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:48'),
(95, 'text_with_selected', 'With selected', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(96, 'title_enable', 'Enable', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/manufacturers.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:48'),
(97, 'title_disable', 'Disable', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/manufacturers.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:48'),
(98, 'title_move', 'Move', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(99, 'warning_mounting_points_will_be_replaced', 'Warning: All current mounting points will be replaced.', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(100, 'title_copy', 'Copy', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(101, 'title_duplicate', 'Duplicate', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(102, 'title_unmount', 'Unmount', 0, 'admin/catalog.app/catalog.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:46'),
(103, 'title_delete', 'Delete', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:50'),
(104, 'text_are_you_sure', 'Are you sure?', 0, 'admin/catalog.app/catalog.inc.php,admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:46', '2021-08-29 21:52:46', '2021-08-29 21:52:50'),
(105, 'title_add_new_manufacturer', 'Add New Manufacturer', 0, 'admin/catalog.app/manufacturers.inc.php', '2021-08-29 21:52:48', '2021-08-29 21:52:48', '2021-08-29 21:52:48'),
(106, 'title_edit_manufacturer', 'Edit Manufacturer', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(107, 'title_general', 'General', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(108, 'title_information', 'Information', 0, 'admin/catalog.app/edit_manufacturer.inc.php,includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-31 21:49:32'),
(109, 'title_status', 'Status', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(110, 'title_enabled', 'Enabled', 0, 'includes/functions/func_form.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(111, 'title_disabled', 'Disabled', 0, 'includes/functions/func_form.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(112, 'title_code', 'Code', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(113, 'title_new_image', 'New Image', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(114, 'text_remove_image', 'Remove image', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(115, 'title_keywords', 'Keywords', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(116, 'title_short_description', 'Short Description', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(117, 'title_description', 'Description', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(118, 'title_head_title', 'Head Title', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(119, 'title_h1_title', 'H1 Title', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(120, 'title_meta_description', 'Meta Description', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(121, 'title_link', 'Link', 0, 'admin/catalog.app/edit_manufacturer.inc.php', '2021-08-29 21:52:50', '2021-08-29 21:52:50', '2021-08-29 21:52:50'),
(122, 'warning_admin_folder_not_protected', 'Warning: Your admin folder is not .htaccess protected', 0, 'admin/index.php', '2021-08-29 21:57:15', '2021-08-29 21:57:15', '2021-08-31 21:49:32'),
(123, 'index:head_title', 'Online Store', 0, 'pages/index.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(124, 'index:meta_description', '', 0, 'pages/index.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(125, 'text_search', 'Search', 0, 'includes/templates/default.catalog/views/box_search.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(126, 'title_login', 'Login', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(127, 'title_email_address', 'Email Address', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(128, 'title_password', 'Password', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(129, 'title_remember_me', 'Remember Me', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(130, 'title_lost_password', 'Lost Password', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(131, 'text_new_customers_click_here', 'New customers click here', 0, 'includes/templates/default.catalog/views/box_account_login.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(132, 'title_campaigns', 'Campaigns', 0, 'includes/templates/default.catalog/views/box_campaign_products.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(133, 'title_on_sale', 'On Sale', 0, 'includes/functions/func_draw.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(134, 'sticker_sale', 'Sale', 0, 'includes/functions/func_draw.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(135, 'title_most_popular', 'Most Popular', 0, 'includes/templates/default.catalog/views/box_most_popular_products.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(136, 'title_new', 'New', 0, 'includes/functions/func_draw.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(137, 'sticker_new', 'New', 0, 'includes/functions/func_draw.inc.php', '2021-08-29 21:57:59', '2021-08-29 21:57:59', '2021-08-31 21:49:32'),
(138, 'title_latest_products', 'Latest Products', 0, 'includes/templates/default.catalog/views/box_latest_products.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(139, 'terms_cookies_acceptance', 'We rely on cookies to provide our services. By using our services, you agree to our use of cookies.', 0, 'includes/templates/default.catalog/layouts/default.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(140, 'title_ok', 'OK', 0, 'includes/templates/default.catalog/layouts/default.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(141, 'title_change', 'Change', 0, 'includes/templates/default.catalog/views/box_region.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(142, 'title_cart', 'Cart', 0, 'includes/templates/default.catalog/views/box_cart.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(143, 'text_items', 'item(s)', 0, 'includes/templates/default.catalog/views/box_cart.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(144, 'title_checkout', 'Checkout', 0, 'includes/templates/default.catalog/views/box_cart.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(145, 'title_account', 'Account', 0, 'includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(146, 'title_customer_service', 'Customer Service', 0, 'includes/routes/url_customer_service.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(147, 'title_regional_settings', 'Regional Settings', 0, 'includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(148, 'title_create_account', 'Create Account', 0, 'includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32'),
(149, 'title_contact', 'Contact', 0, 'includes/templates/default.catalog/views/box_site_footer.inc.php', '2021-08-29 21:58:01', '2021-08-29 21:58:01', '2021-08-31 21:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `lc_users`
--

CREATE TABLE `lc_users` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `last_ip` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `last_host` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `total_logins` int(11) NOT NULL,
  `date_blocked` datetime NOT NULL,
  `date_expires` datetime NOT NULL,
  `date_active` datetime NOT NULL,
  `date_login` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_users`
--

INSERT INTO `lc_users` (`id`, `status`, `username`, `password`, `last_ip`, `last_host`, `login_attempts`, `total_logins`, `date_blocked`, `date_expires`, `date_active`, `date_login`, `date_created`, `date_updated`) VALUES
(1, 1, 'admin', '4141d4c657958be18b7b890ca63583436207c5cac277bca13450526b4f8b4f5b', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-09-03 22:57:16', '0000-00-00 00:00:00', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `lc_zones`
--

CREATE TABLE `lc_zones` (
  `id` int(11) NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_zones`
--

INSERT INTO `lc_zones` (`id`, `country_code`, `code`, `name`, `date_updated`, `date_created`) VALUES
(1, 'CA', 'AB', 'Alberta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CA', 'BC', 'British Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'CA', 'MB', 'Manitoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'CA', 'NB', 'New Brunswick', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CA', 'NL', 'Newfoundland and Labrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'CA', 'NT', 'Northwest Territories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'CA', 'NS', 'Nova Scotia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'CA', 'NU', 'Nunavut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'CA', 'ON', 'Ontario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'CA', 'PE', 'Prince Edward Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CA', 'QC', 'Québec', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CA', 'SK', 'Saskatchewan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CA', 'YT', 'Yukon Territory', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'US', 'AL', 'Alabama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'US', 'AK', 'Alaska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'US', 'AS', 'American Samoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'US', 'AZ', 'Arizona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'US', 'AR', 'Arkansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'US', 'AF', 'Armed Forces Africa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'US', 'AA', 'Armed Forces Americas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'US', 'AC', 'Armed Forces Canada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'US', 'AE', 'Armed Forces Europe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'US', 'AM', 'Armed Forces Middle East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'US', 'AP', 'Armed Forces Pacific', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'US', 'CA', 'California', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'US', 'CO', 'Colorado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'US', 'CT', 'Connecticut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'US', 'DE', 'Delaware', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'US', 'DC', 'District of Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'US', 'FM', 'Federated States Of Micronesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'US', 'FL', 'Florida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'US', 'GA', 'Georgia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'US', 'GU', 'Guam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'US', 'HI', 'Hawaii', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'US', 'ID', 'Idaho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'US', 'IL', 'Illinois', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'US', 'IN', 'Indiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'US', 'IA', 'Iowa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'US', 'KS', 'Kansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'US', 'KY', 'Kentucky', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'US', 'LA', 'Louisiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'US', 'ME', 'Maine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'US', 'MH', 'Marshall Islands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'US', 'MD', 'Maryland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'US', 'MA', 'Massachusetts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'US', 'MI', 'Michigan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'US', 'MN', 'Minnesota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'US', 'MS', 'Mississippi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'US', 'MO', 'Missouri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'US', 'MT', 'Montana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'US', 'NE', 'Nebraska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'US', 'NV', 'Nevada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'US', 'NH', 'New Hampshire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'US', 'NJ', 'New Jersey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'US', 'NM', 'New Mexico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'US', 'NY', 'New York', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'US', 'NC', 'North Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'US', 'ND', 'North Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'US', 'MP', 'Northern Mariana Islands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'US', 'OH', 'Ohio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'US', 'OK', 'Oklahoma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'US', 'OR', 'Oregon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'US', 'PW', 'Palau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'US', 'PA', 'Pennsylvania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'US', 'PR', 'Puerto Rico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'US', 'RI', 'Rhode Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'US', 'SC', 'South Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'US', 'SD', 'South Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'US', 'TN', 'Tennessee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'US', 'TX', 'Texas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'US', 'UT', 'Utah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'US', 'VT', 'Vermont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'US', 'VI', 'Virgin Islands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'US', 'VA', 'Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'US', 'WA', 'Washington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'US', 'WV', 'West Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'US', 'WI', 'Wisconsin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'US', 'WY', 'Wyoming', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lc_zones_to_geo_zones`
--

CREATE TABLE `lc_zones_to_geo_zones` (
  `id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_zones_to_geo_zones`
--

INSERT INTO `lc_zones_to_geo_zones` (`id`, `geo_zone_id`, `country_code`, `zone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'CA', 'AB', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(2, 1, 'CA', 'BC', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(3, 1, 'CA', 'ON', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(4, 1, 'CA', 'QC', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(5, 1, 'CA', 'NS', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(6, 1, 'CA', 'NB', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(7, 1, 'CA', 'MB', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(8, 1, 'CA', 'PE', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(9, 1, 'CA', 'SK', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(10, 1, 'CA', 'NL', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(11, 2, 'US', 'AL', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(12, 2, 'US', 'AK', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(13, 2, 'US', 'AZ', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(14, 2, 'US', 'AR', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(15, 2, 'US', 'CA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(16, 2, 'US', 'CO', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(17, 2, 'US', 'CT', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(18, 2, 'US', 'DE', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(19, 2, 'US', 'FL', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(20, 2, 'US', 'GA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(21, 2, 'US', 'HI', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(22, 2, 'US', 'ID', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(23, 2, 'US', 'IL', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(24, 2, 'US', 'IN', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(25, 2, 'US', 'IA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(26, 2, 'US', 'KS', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(27, 2, 'US', 'KY', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(28, 2, 'US', 'LA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(29, 2, 'US', 'ME', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(30, 2, 'US', 'MD', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(31, 2, 'US', 'MA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(32, 2, 'US', 'MI', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(33, 2, 'US', 'MN', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(34, 2, 'US', 'MS', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(35, 2, 'US', 'MO', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(36, 2, 'US', 'MT', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(37, 2, 'US', 'NE', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(38, 2, 'US', 'NV', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(39, 2, 'US', 'NH', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(40, 2, 'US', 'NJ', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(41, 2, 'US', 'NM', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(42, 2, 'US', 'NY', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(43, 2, 'US', 'NC', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(44, 2, 'US', 'ND', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(45, 2, 'US', 'OH', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(46, 2, 'US', 'OK', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(47, 2, 'US', 'OR', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(48, 2, 'US', 'PA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(49, 2, 'US', 'RI', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(50, 2, 'US', 'SC', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(51, 2, 'US', 'SD', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(52, 2, 'US', 'TN', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(53, 2, 'US', 'TX', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(54, 2, 'US', 'UT', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(55, 2, 'US', 'VT', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(56, 2, 'US', 'VA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(57, 2, 'US', 'WA', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(58, 2, 'US', 'WV', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(59, 2, 'US', 'WI', '2021-08-29 21:52:35', '2021-08-29 21:52:35'),
(60, 2, 'US', 'WY', '2021-08-29 21:52:35', '2021-08-29 21:52:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lc_addresses`
--
ALTER TABLE `lc_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `lc_cart_items`
--
ALTER TABLE `lc_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cart_uid` (`cart_uid`);

--
-- Indexes for table `lc_categories`
--
ALTER TABLE `lc_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `lc_categories_info`
--
ALTER TABLE `lc_categories_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_countries`
--
ALTER TABLE `lc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso_code_2` (`iso_code_2`),
  ADD UNIQUE KEY `iso_code_3` (`iso_code_3`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_currencies`
--
ALTER TABLE `lc_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_customers`
--
ALTER TABLE `lc_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lc_delivery_statuses`
--
ALTER TABLE `lc_delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_delivery_statuses_info`
--
ALTER TABLE `lc_delivery_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_status_id` (`delivery_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_geo_zones`
--
ALTER TABLE `lc_geo_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_languages`
--
ALTER TABLE `lc_languages`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_manufacturers`
--
ALTER TABLE `lc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_manufacturers_info`
--
ALTER TABLE `lc_manufacturers_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_option_groups`
--
ALTER TABLE `lc_option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_option_groups_info`
--
ALTER TABLE `lc_option_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_option_values`
--
ALTER TABLE `lc_option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lc_option_values_info`
--
ALTER TABLE `lc_option_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value_id` (`value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_orders`
--
ALTER TABLE `lc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Indexes for table `lc_orders_comments`
--
ALTER TABLE `lc_orders_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_orders_items`
--
ALTER TABLE `lc_orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_orders_totals`
--
ALTER TABLE `lc_orders_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_order_statuses`
--
ALTER TABLE `lc_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_order_statuses_info`
--
ALTER TABLE `lc_order_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_pages`
--
ALTER TABLE `lc_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `lc_pages_info`
--
ALTER TABLE `lc_pages_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_products`
--
ALTER TABLE `lc_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `default_category_id` (`default_category_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `keywords` (`keywords`),
  ADD KEY `code` (`code`),
  ADD KEY `date_valid_from` (`date_valid_from`),
  ADD KEY `date_valid_to` (`date_valid_to`),
  ADD KEY `purchases` (`purchases`),
  ADD KEY `views` (`views`),
  ADD KEY `product_groups` (`product_groups`);

--
-- Indexes for table `lc_products_campaigns`
--
ALTER TABLE `lc_products_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_images`
--
ALTER TABLE `lc_products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_info`
--
ALTER TABLE `lc_products_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_products_options`
--
ALTER TABLE `lc_products_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_options_stock`
--
ALTER TABLE `lc_products_options_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_prices`
--
ALTER TABLE `lc_products_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_to_categories`
--
ALTER TABLE `lc_products_to_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `lc_product_groups`
--
ALTER TABLE `lc_product_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_product_groups_info`
--
ALTER TABLE `lc_product_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_product_groups_values`
--
ALTER TABLE `lc_product_groups_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`);

--
-- Indexes for table `lc_product_groups_values_info`
--
ALTER TABLE `lc_product_groups_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_value_id` (`product_group_value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_quantity_units`
--
ALTER TABLE `lc_quantity_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_quantity_units_info`
--
ALTER TABLE `lc_quantity_units_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quantity_unit_id` (`quantity_unit_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_settings`
--
ALTER TABLE `lc_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `setting_group_key` (`setting_group_key`);

--
-- Indexes for table `lc_settings_groups`
--
ALTER TABLE `lc_settings_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `lc_slides`
--
ALTER TABLE `lc_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_sold_out_statuses`
--
ALTER TABLE `lc_sold_out_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_sold_out_statuses_info`
--
ALTER TABLE `lc_sold_out_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_out_status_id` (`sold_out_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_suppliers`
--
ALTER TABLE `lc_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_tax_classes`
--
ALTER TABLE `lc_tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_tax_rates`
--
ALTER TABLE `lc_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_class_id` (`tax_class_id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`);

--
-- Indexes for table `lc_translations`
--
ALTER TABLE `lc_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `lc_users`
--
ALTER TABLE `lc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_zones`
--
ALTER TABLE `lc_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `lc_zones_to_geo_zones`
--
ALTER TABLE `lc_zones_to_geo_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `zone_code` (`zone_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lc_addresses`
--
ALTER TABLE `lc_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_cart_items`
--
ALTER TABLE `lc_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_categories`
--
ALTER TABLE `lc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_categories_info`
--
ALTER TABLE `lc_categories_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_countries`
--
ALTER TABLE `lc_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `lc_currencies`
--
ALTER TABLE `lc_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_customers`
--
ALTER TABLE `lc_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_delivery_statuses`
--
ALTER TABLE `lc_delivery_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_delivery_statuses_info`
--
ALTER TABLE `lc_delivery_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_geo_zones`
--
ALTER TABLE `lc_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_languages`
--
ALTER TABLE `lc_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_manufacturers`
--
ALTER TABLE `lc_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_manufacturers_info`
--
ALTER TABLE `lc_manufacturers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_option_groups`
--
ALTER TABLE `lc_option_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_option_groups_info`
--
ALTER TABLE `lc_option_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_option_values`
--
ALTER TABLE `lc_option_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_option_values_info`
--
ALTER TABLE `lc_option_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_orders`
--
ALTER TABLE `lc_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_orders_comments`
--
ALTER TABLE `lc_orders_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_orders_items`
--
ALTER TABLE `lc_orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_orders_totals`
--
ALTER TABLE `lc_orders_totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_order_statuses`
--
ALTER TABLE `lc_order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_order_statuses_info`
--
ALTER TABLE `lc_order_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_pages`
--
ALTER TABLE `lc_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_pages_info`
--
ALTER TABLE `lc_pages_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_products`
--
ALTER TABLE `lc_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_products_campaigns`
--
ALTER TABLE `lc_products_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_products_images`
--
ALTER TABLE `lc_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_products_info`
--
ALTER TABLE `lc_products_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_products_options`
--
ALTER TABLE `lc_products_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_products_options_stock`
--
ALTER TABLE `lc_products_options_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_products_prices`
--
ALTER TABLE `lc_products_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_product_groups`
--
ALTER TABLE `lc_product_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_product_groups_info`
--
ALTER TABLE `lc_product_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_product_groups_values`
--
ALTER TABLE `lc_product_groups_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_product_groups_values_info`
--
ALTER TABLE `lc_product_groups_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_quantity_units`
--
ALTER TABLE `lc_quantity_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_quantity_units_info`
--
ALTER TABLE `lc_quantity_units_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_settings`
--
ALTER TABLE `lc_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `lc_settings_groups`
--
ALTER TABLE `lc_settings_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lc_slides`
--
ALTER TABLE `lc_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_sold_out_statuses`
--
ALTER TABLE `lc_sold_out_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_sold_out_statuses_info`
--
ALTER TABLE `lc_sold_out_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_suppliers`
--
ALTER TABLE `lc_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_tax_classes`
--
ALTER TABLE `lc_tax_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_tax_rates`
--
ALTER TABLE `lc_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_translations`
--
ALTER TABLE `lc_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `lc_users`
--
ALTER TABLE `lc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_zones`
--
ALTER TABLE `lc_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `lc_zones_to_geo_zones`
--
ALTER TABLE `lc_zones_to_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-07-13 19:26:55', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
