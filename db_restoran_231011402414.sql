-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2026 at 10:46 AM
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
-- Database: `db_restoran_231011402414`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_restoran`
--

CREATE TABLE `menu_restoran` (
  `kode_menu` varchar(10) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status_menu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_restoran`
--

INSERT INTO `menu_restoran` (`kode_menu`, `nama_menu`, `kategori`, `harga`, `jumlah`, `status_menu`) VALUES
('M001', 'Nasi Goreng', 'Makanan', 20000, 10, 'Habis'),
('M002', 'Mie Ayam', 'Makanan', 15000, 20, 'Tersedia'),
('M003', 'Bakso', 'Makanan', 18000, 15, 'Tersedia'),
('M004', 'Sate Ayam', 'Makanan', 25000, 12, 'Tersedia'),
('M005', 'Ayam Bakar', 'Makanan', 30000, 8, 'Tersedia'),
('M006', 'Es Teh', 'Minuman', 5000, 50, 'Tersedia'),
('M007', 'Jus Alpukat', 'Minuman', 12000, 20, 'Tersedia'),
('M008', 'Kopi Hitam', 'Minuman', 8000, 30, 'Tersedia'),
('M009', 'Cappuccino', 'Minuman', 15000, 15, 'Tersedia'),
('M010', 'Paket Ardiansyah 231011402414', 'Makanan', 35000, 5, 'Tersedia'),
('M011', 'Nasi Rendang', 'Makanan', 15000, 10, 'Habis'),
('M012', 'Seblak Ceker', 'Makanan', 20000, 10, 'Habis'),
('M013', 'Es Campur', 'Minuman', 10000, 10, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_restoran`
--
ALTER TABLE `menu_restoran`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
