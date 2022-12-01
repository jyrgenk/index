-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2022 at 04:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helmes`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sectors` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `terms` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `name`, `sectors`, `terms`) VALUES
(19, 'test', '2', 1),
(20, 'jyrgen', '6,7,8', 1),
(21, 'jürgen', '67,69', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int UNSIGNED NOT NULL,
  `sectorValue` int DEFAULT NULL,
  `sectorName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `sectorValue`, `sectorName`) VALUES
(1, 0, 'Manufacturing'),
(2, 1, '    Construction materials'),
(3, 2, '    Electronics and Optics'),
(4, 3, '    Food and Beverage'),
(5, 4, '        Bakery & confectionery products'),
(6, 5, '        Beverages'),
(7, 6, '        Fish & fish products '),
(8, 7, '        Meat & meat products'),
(9, 8, '        Milk & dairy products '),
(10, 9, '        Other'),
(11, 10, '        Sweets & snack food'),
(12, 11, '    Furniture'),
(13, 12, '        Bathroom/sauna '),
(14, 13, '        Bedroom'),
(15, 14, '        Children’s room '),
(16, 15, '        Kitchen '),
(17, 16, '        Living room '),
(18, 17, '        Office'),
(19, 18, '        Other (Furniture)'),
(20, 19, '        Outdoor '),
(21, 20, '        Project furniture'),
(22, 21, '    Machinery'),
(23, 22, '        Machinery components'),
(24, 23, '        Machinery equipment/tools'),
(25, 24, '        Manufacture of machinery '),
(26, 25, '        Maritime'),
(27, 26, '            Aluminium and steel workboats '),
(28, 27, '            Boat/Yacht building'),
(29, 28, '            Ship repair and conversion'),
(30, 29, '        Metal structures'),
(31, 30, '        Other'),
(32, 31, '        Repair and maintenance service'),
(33, 32, '    Metalworking'),
(34, 33, '        Construction of metal structures'),
(35, 34, '        Houses and buildings'),
(36, 35, '        Metal products'),
(37, 36, '        Metal works'),
(38, 37, '            CNC-machining'),
(39, 38, '            Forgings, Fasteners '),
(40, 39, '            Gas, Plasma, Laser cutting'),
(41, 40, '            MIG, TIG, Aluminum welding'),
(42, 41, '    Plastic and Rubber'),
(43, 42, '        Packaging'),
(44, 43, '        Plastic goods'),
(45, 44, '        Plastic processing technology'),
(46, 45, '            Blowing'),
(47, 46, '            Moulding'),
(48, 47, '            Plastics welding and processing'),
(49, 48, '        Plastic profiles'),
(50, 49, '    Printing '),
(51, 50, '        Advertising'),
(52, 51, '        Book/Periodicals printing'),
(53, 52, '        Labelling and packaging printing'),
(54, 53, '    Textile and Clothing'),
(55, 54, '        Clothing'),
(56, 55, '        Textile'),
(57, 56, '    Wood'),
(58, 57, '        Other (Wood)'),
(59, 58, '        Wooden building materials'),
(60, 59, '        Wooden houses'),
(61, 60, 'Other'),
(62, 61, '    Creative industries'),
(63, 62, '    Energy technology'),
(64, 63, '    Environment'),
(65, 64, 'Service'),
(66, 65, '    Business services'),
(67, 66, '    Engineering'),
(68, 67, '    Information Technology and Telecommunications'),
(69, 68, '        Data processing, Web portals, E-marketing'),
(70, 69, '        Programming, Consultancy'),
(71, 70, '        Software, Hardware'),
(72, 71, '        Telecommunications'),
(73, 72, '    Tourism'),
(74, 73, '    Translation services'),
(75, 74, '    Transport and Logistics'),
(76, 75, '        Air'),
(77, 76, '        Rail'),
(78, 77, '        Road'),
(79, 78, '        Water');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
