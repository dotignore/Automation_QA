-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2022 at 07:01 PM
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
(1, 'CPU'),
(2, 'Motherboard'),
(3, 'Video card'),
(4, 'HDD'),
(5, 'RAM');

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
(1, 'Celeron 1.8', '1595.00', 10, 3.6, 'CPU Celeron 1.8GHz, 128kb, 478-PGA, 400Mhz, OEM 0.18', 1),
(2, 'Celeron 2.0GHz', '1969.00', 2, 3.7, 'CPU Celeron 2.0GHz, 128KB, 478-PGA, 400MHz, OEM ', 1),
(3, 'Celeron 2.4GHz', '2109.00', 4, 3.9, 'CPU CeleronR 2.4GHz, 128kb, 478-PGA, 400Mhz, OEM ', 1),
(4, 'Celeron D 320 2.4GHz', '1962.00', 1, 4.1, 'CPU CeleronR D 320 2.4GHz, 256kb, 478-PGA, 533Mhz, OEM', 1),
(5, 'Celeron D 325 2.53GHz', '2747.00', 6, 4.1, 'CPU CeleronR D 325 2.53GHz, 256kb, 478-PGA, 533Mhz, OEM ', 1),
(6, 'Celeron D 315 2.26GHz', '1880.00', 6, 4.1, 'CPU CeleronR D 315 2.26GHz, 256kb, 478-PGA, 533Mhz, OEM ', 1),
(7, 'Intel Pentium 4 3.2GHz', '7259.00', 5, 4.5, 'CPU IntelR Pentium P4 3.2GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Threading, OEM ', 1),
(8, 'Intel Pentium 4 3.0GHz', '6147.00', 1, 4.6, 'CPU IntelR Pentium P4 3.0GHz, 512Kb, 478-PGA, 800Mhz, Hyper-Threading, OEM ', 1),
(9, 'Intel Pentium 4 3.0GHz', '5673.00', 12, 4.5, 'CPU IntelR PentiumR4 3.0GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Treading, OEM ', 1),
(10, 'Gigabyte GA-8I848P-RS', '1896.00', 4, 3.9, 'Motherboard SOCKET-478 Gigabyte GA-8I848P-RS i848, (800Mhz), DDR, AGP 8x, ATA100, SATA, Sound 6ch, USB2.0, ATX', 2),
(11, 'Gigabyte GA-8IG1000', '2420.00', 2, 3.8, 'Motherboard SOCKET-478 Gigabyte GA-8IG1000 i865g,FSB800/533/400,2chDDR400/333/266(4слота),Video,AGP,5PCI,ATA-100,S-ATA', 2),
(12, 'Gigabyte GA-8IPE1000G', '2289.00', 6, 3.7, 'Motherboard Socket-478 Gigabyte GA-8IPE1000G i865PE(800/533/400Mhz), 2ch400/333/266DDR,PCI/AGP,U-100,AC`97,Lan(1Gb), S-ATA, USB 2.0, ATX', 2),
(13, 'Asustek P4C800-E Delux', '5395.00', 4, 4.1, 'Motherboard Socket-478 Asustek P4C800-E Delux i875P, FSB800/533Mhz, 2chDDR400/333, AGP, 6PCI, iEEE1394, Raid, U-133, S-ATA, AC`97, Lan(1000), ATX', 2),
(14, 'Asustek P4P800-VM\\L i865G', '2518.00', 6, 4.0, 'Motherboard Socket-478 Asustek P4P800-VM\\L i865G FSB800/533/400, 2chDDR400/333/266(4слота), AGP, video, 3PCI, ATA-100, S-ATA, lan, M-ATX', 2),
(15, 'Epox EP-4PDA3I', '2289.00', 5, 4.0, 'Motherboard Socket-478 Epox EP-4PDA3I i865PE(800Mhz), 2chDDR, PCI/AGP, SATA, Lan, U-100, RAID, AC`97, LAN, ATX', 2),
(16, 'ASUSTEK A9600XT/TD', '5156.00', 2, 4.7, 'Video card ASUSTEK A9600XT/TD 128Mb DDR SDRAM, 2x400MHz DAC, AGP8x, ATI Radeon 9600XT, DVI, TV- out, BOX ', 3),
(17, 'ASUSTEK V9520X', '1602.00', 6, 4.0, 'Video card ASUSTEK V9520X 128Mb DDR SDRAM, 400MHz DAC, AGP 8x, GeForce FX 5200, TV- out, BOX ', 3),
(18, 'SAPPHIRE 256MB RADEON 9550', '2730.00', 3, 3.8, 'Video card SAPPHIRE 256MB RADEON 9550, TV-out, DVI, OEM ', 3),
(19, 'GIGABYTE AGP GV-N59X128D', '5886.00', 6, 3.6, 'Video card GIGABYTE AGP GV-N59X128D FX5900XT OEM ', 3),
(20, 'Maxtor 6Y120P0', '2456.00', 6, 4.5, 'HDD 120 GB Maxtor 6Y120P0, UDMA-133, 7200rpm, 8MB ', 4),
(21, 'Maxtor 6B200P0', '3589.00', 4, 4.0, 'HDD 200 GB Maxtor 6B200P0, UDMA-133, 7200rpm, 8Mb ', 4),
(22, 'Samsung SP0812C', '2093.00', 5, 4.0, 'HDD 80 GB Samsung SP0812C, SATA, 7200rpm SpinPoint P80 SerialATA, Cash 8 MB  7200rpm, Serial ATA 1.0', 4),
(23, 'Seagate Barracuda ST3160023A', '3139.00', 3, 4.1, 'HDD 160 GB Seagate Barracuda ST3160023A, UDMA-100, 7200rpm, 8Mb ', 4),
(24, 'Seagate ST3120026A', '2468.00', 8, 4.2, 'HDD 120 GB Seagate ST3120026A, UDMA-100, 7200rpm, 8MB ', 4),
(25, 'DDR-400 256MB Kingston', '1085.00', 20, 4.8, 'RAM DDR-400 256MB Kingston ', 5),
(26, 'DDR-400 256MB Hynix Original ', '1179.00', 15, 4.6, 'RAM DDR-400 256MB Hynix Original ', 5),
(27, 'DDR-400 256MB PQI', '899.00', 10, 4.2, 'RAM DDR-400 256MB PQI ', 5),
(28, 'DDR-400 512MB Kingston', '1932.00', 20, 4.8, 'RAM DDR-400 512MB Kingston ', 5),
(29, 'DDR-400 512MB PQI', '1690.00', 12, 4.2, 'RAM DDR-400 512MB PQI ', 5),
(30, 'DDR-400 512MB Hynix', '1717.00', 8, 4.5, 'RAM DDR-400 512MB Hynix ', 5);

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
(1, 'Shevchenko', 'Valeriiovych', 'Oleksandr', '58-98-78', 'shevchenko@meta.ua', NULL, 'active'),
(2, 'Ostapenko', 'Yvanovych', 'Serhii', '3267777777', 'ostapenko@bigmir.net', NULL, 'passive'),
(3, 'Panko', 'Viacheslavovych', 'Yhor', '6936666100', 'panko@dou.ua', 'https://www.dou.ua/', 'active'),
(4, 'Ishchuk', 'Valeriiovych', 'Maksym', NULL, 'ishchuk@djinni.co', 'https://www.djinni.co/', 'active'),
(5, 'Zakharchuk', 'Yuriiovych', 'Anatolii', NULL, NULL, NULL, 'lock'),
(6, 'Tereshchenko', 'Oleksandrovych', 'Oleksandr', '89-78-36', 'tereshchenko@olx.ua', NULL, 'gold');

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
