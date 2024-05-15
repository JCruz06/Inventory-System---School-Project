-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 04:40 PM
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
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'RSPEC', 'Available'),
(3, 'KOYO', 'Available'),
(5, 'Bando', 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `username`, `password`, `status`) VALUES
(1, 'JCruz', 'qwe', 'Unavailable'),
(3, 'Jiro', 'qwe', 'Available'),
(4, 'Bryce', 'bmbriones', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'BrakeDrum', 'Unavailable'),
(3, 'BrakeFluid', 'Unavailable'),
(4, 'Timing Belt', 'Available'),
(6, 'Bearing', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `gross_price` int(11) NOT NULL,
  `net_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `description`, `gross_price`, `net_price`, `quantity`, `product_code`, `status`, `make`, `model`, `year`) VALUES
(2, 1, 1, '---', 850, 930, 62, 'R-HUB101', 'Available', 'Nissan ', 'Sentra', '91-99'),
(3, 1, 1, '---', 550, 635, 79, 'R-HUB102', 'Available', 'Nissan', 'Sentra', '91-99'),
(6, 4, 3, '---', 650, 800, 30, 'R-HUB103', 'Available', 'Toyota', 'Toyota', '91-99'),
(7, 6, 5, '---', 650, 800, 30, 'R-HUB104', 'Available', 'Toyota', 'Vios', '91-99');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `cashier` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(1, '2023/05/12', '', 3765, 4000, 235),
(2, '2023/05/12', '', 4400, 5000, 600),
(3, '2023/05/12', '', 5035, 5500, 465),
(4, '2023/05/12', '', 930, 1000, 70),
(5, '2023/05/12', '', 930, 1000, 70),
(6, '2023/05/12', '', 3765, 4000, 235),
(7, '2023/05/12', '', 3765, 4000, 235),
(8, '2023/05/12', '', 4400, 5000, 600),
(9, '2023/05/12', '', 1860, 2000, 140),
(10, '2023/05/12', '', 1860, 2000, 140),
(11, '2023/05/12', '', 1860, 2000, 140),
(12, '2023/05/12', '', 3765, 4000, 235),
(13, '2023/05/12', '', 3765, 4000, 235),
(14, '2023/05/12', '', 2790, 3000, 210),
(15, '2023/05/12', '', 1905, 2500, 595),
(16, '2023/05/12', '', 7530, 8000, 470),
(17, '2023/05/12', '', 5965, 6000, 35),
(18, '2023/05/12', '', 14880, 15000, 120),
(19, '2023/05/14', '', 1860, 2500, 640),
(20, '2023/05/14', 'JCruz', 3720, 5000, 1280),
(21, '2023/05/29', 'JCruz', 930, 1000, 70),
(22, '2023/05/30', '', 4105, 4500, 395),
(23, '2023/05/30', 'JCruz', 635, 1000, 365),
(24, '2023/05/30', 'Jiro', 930, 950, 20),
(25, '2023/05/30', 'JCruz', 930, 1000, 70),
(26, '2023/05/30', 'JCruz', 930, 1000, 70),
(27, '2023/05/30', '', 1565, 2000, 435);

-- --------------------------------------------------------

--
-- Table structure for table `sales_pro`
--

CREATE TABLE `sales_pro` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_pro`
--

INSERT INTO `sales_pro` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, 10, 'R-HUB101', 930, 2, 1860),
(2, 11, 'R-HUB101', 930, 2, 1860),
(3, 12, 'R-HUB102', 635, 3, 1905),
(4, 12, 'R-HUB101', 930, 2, 1860),
(5, 13, 'R-HUB102', 635, 3, 1905),
(6, 13, 'R-HUB101', 930, 2, 1860),
(7, 14, 'R-HUB101', 930, 3, 2790),
(8, 15, 'R-HUB102', 635, 3, 1905),
(9, 16, 'R-HUB101', 930, 4, 3720),
(10, 16, 'R-HUB102', 635, 6, 3810),
(11, 17, 'R-HUB102', 635, 5, 3175),
(12, 17, 'R-HUB101', 930, 3, 2790),
(13, 18, 'R-HUB101', 930, 16, 14880),
(14, 19, 'R-HUB101', 930, 2, 1860),
(15, 20, 'R-HUB101', 930, 4, 3720),
(16, 21, 'R-HUB101', 930, 1, 930),
(17, 22, 'R-HUB101', 930, 1, 930),
(18, 22, 'R-HUB102', 635, 5, 3175),
(19, 23, 'R-HUB102', 635, 1, 635),
(20, 24, 'R-HUB101', 930, 1, 930),
(21, 25, 'R-HUB101', 930, 1, 930),
(22, 26, 'R-HUB101', 930, 1, 930),
(23, 27, 'R-HUB101', 930, 1, 930),
(24, 27, 'R-HUB102', 635, 1, 635);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_pro`
--
ALTER TABLE `sales_pro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales_pro`
--
ALTER TABLE `sales_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
