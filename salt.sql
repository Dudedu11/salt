-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 02:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salt`
--

-- --------------------------------------------------------

--
-- Table structure for table `contoh_konsumen`
--

CREATE TABLE `contoh_konsumen` (
  `nik` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `pulau` varchar(255) DEFAULT NULL,
  `total_pembelian_2017` decimal(10,2) DEFAULT NULL,
  `total_pembelian_2018` decimal(10,2) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `tgl_regis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contoh_konsumen`
--

INSERT INTO `contoh_konsumen` (`nik`, `nama`, `alamat`, `kota`, `provinsi`, `pulau`, `total_pembelian_2017`, `total_pembelian_2018`, `point`, `tgl_regis`) VALUES
(3276001, 'Ahmad', 'Jl. Telaga No 3', 'Bandar Lampung', 'Lampung', 'Sumatra', '984000.00', '430000.00', 7070, '2017-11-14'),
(3276002, 'Saiful Ahmad', 'Jl. Cendrawasih', 'Batam', 'Kepulauan Riau', 'Batam', '265000.00', '684000.00', 4745, '2017-04-12'),
(3276003, 'Lina', 'Jl. Mawar', 'Makassar', 'Sulawesi Selatan', 'Sulawesi', '902000.00', '883000.00', 8925, '2017-09-22'),
(3276004, 'Erni', 'Jl. Cut Nyak Dien', 'Pontianak', 'Kalimantan Barat', 'Kalimantan', '384000.00', '377000.00', 3805, '2016-10-30'),
(3276005, 'Anto', 'Jl. Kamboja', 'Jakarta Barat', 'DKI Jakarta', 'Jawa', '561000.00', '293000.00', 4270, '2017-04-20'),
(3276007, 'Maya', 'Jl. Anoa', 'Batam', 'Kepulauan Riau', 'Batam', '679000.00', '746000.00', 7125, '2016-08-09'),
(3276008, 'Hadi', 'Jl. Hiu', 'Jakarta Barat', 'DKI Jakarta', 'Jawa', '239000.00', '987000.00', 6130, '2016-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id` int(11) NOT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `kota` char(1) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `provinsi` char(1) NOT NULL,
  `status` char(1) NOT NULL,
  `tgl_registrasi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `alamat`, `kota`, `nama`, `provinsi`, `status`, `tgl_registrasi`) VALUES
(2, 'iop', 'p', 'John', 'p', '1', '2023-10-29 07:00:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contoh_konsumen`
--
ALTER TABLE `contoh_konsumen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
