-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 03:45 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fourthsem`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `m_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`m_id`, `name`, `email`, `message`) VALUES
(1, 'Nishant Chaudhary', 'nishantchy1234@gmail', 'Hello this message is from Nishant'),
(2, 'Oham Shakya', 'ohamshakya2@gmail.co', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `productImage` varbinary(50) NOT NULL,
  `times_sold` int(100) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `productName`, `price`, `details`, `productImage`, `times_sold`) VALUES
(1, 'RED Nike Sneakers', 5000, 'Sneakers comes with great default red variant and is available for all sizes.', 0x6267696d67322e706e67, 1),
(2, 'White Nike Sneakers', 4000, 'Sneakers comes with great default white variant and is available for all sizes.', 0x73686f65696d67352e706e67, NULL),
(3, 'Air Jordan 3', 6000, 'Air jordan 3 is a great shoe for sneakers lovers.', 0x6267696d6772696768742e706e67, NULL),
(4, 'Dark Blue Sneaker', 6000, 'Comes with great comfortability and lovely coloring. Available for all sizes', 0x73686f65696d67392e706e67, NULL),
(5, 'Black Nike Jordan', 4000, 'Black Nike Jordans are great fit for all dress codes and available for all sizes', 0x73686f65696d67362e706e67, NULL),
(6, 'Converse White', 2500, 'White converse is a great fit for men in all dress codes.', 0x636f6e7665727365202831292e706e67, NULL),
(7, 'Converse RED', 3000, 'Red converse is a great fit for men in all dress codes.', 0x636f6e7665727365202833292e706e67, NULL),
(8, 'Converse Black', 2500, 'Black converse is a great fit for men in all dress codes.', 0x636f6e7665727365202834292e706e67, NULL),
(9, 'White Addidas Sneakers', 2500, 'This is a great sneaker for your outfit. Matches with every outfit. Available at all sizes.', 0x61646469646173202834292e706e67, NULL),
(10, 'Black snekaers', 2000, 'sdfdsfdsfdsf', 0x61646469646173202831292e706e67, NULL),
(11, 'Brown leather shoes', 5000, 'Comes with great color texture and mostly welcoming for a suit get up.', 0x6c656174686572202834292e706e67, NULL),
(12, ' Boot ', 7000, 'Comes with great color texture and works for all  the outfits', 0x6c656174686572202837292e706e67, NULL),
(13, 'Dark brown Leather', 4000, 'This one is darker in color and matches most of the outfits.', 0x6c656174686572202838292e706e67, NULL),
(14, 'Black Leather shoe', 4000, 'Black looks awesome in the suit and is available for all the sizes.', 0x6c656174686572202839292e706e67, NULL),
(15, 'Puma shoe', 5000, 'This is the best edition of puma shoe you can get at this price. Available for all sizes.', 0x70756d61202832292e706e67, NULL),
(16, 'Puma Sport Shoe', 6000, 'Great comfortability and great for sports. Comes with all sizes', 0x70756d61202836292e706e67, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `password` varchar(40) NOT NULL,
  `profilePic` varbinary(100) NOT NULL,
  `isAdmin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstName`, `lastName`, `email`, `phone`, `password`, `profilePic`, `isAdmin`) VALUES
(22, 'Sameer', 'Thapa', 'sameerth@gmail.com', 9868211546, 'e63369168cfc494f8f14841445b97f8f', 0x70726f66696c65312e6a7067, 1),
(23, 'Nishant', 'Chaudhary', 'nishantchy1234@gmail.com', 9868211546, '796a46dd889ad62ed714992321e6dbdc', 0x70726f66696c652e4a5047, 1),
(29, 'Ganesh', 'Gautam', 'ganesh123@gmail.com', 9803378350, '277a094bea5311135bd7abd73d28a01d', 0x67616e65736870726f66696c652e6a7067, 1),
(30, 'Yogesh', 'Rawal', 'yogesh123@gmail.com', 9878675645, '12c04508f5ba285e8f7f8cb661eee006', 0x32303232303532393032323533335f494d475f313238382e4a5047, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
