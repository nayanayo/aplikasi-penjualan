-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2026 at 11:25 AM
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(20) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `h_beli` int(20) NOT NULL,
  `h_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenis`, `h_beli`, `h_jual`) VALUES
('001', 'bakso', 'Makanan', 25000, 20000),
('002', 'teh manis', 'Minuman', 7000, 5000),
('003', 'jahe', 'Minuman', 10000, 7000),
('004', 'roti', 'Makanan', 18000, 12000),
('005', 'nasi goreng', 'Makanan', 35000, 20000),
('006', 'es jeruk', 'Minuman', 12000, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `idnota` varchar(10) NOT NULL,
  `kd_brg` varchar(10) NOT NULL,
  `h_beli` int(20) NOT NULL,
  `h_jual` int(20) NOT NULL,
  `qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`idnota`, `kd_brg`, `h_beli`, `h_jual`, `qty`) VALUES
('IN0001', '003', 10000, 7000, 3),
('IN0002', '003', 10000, 7000, 3),
('IN0003', '001', 25000, 20000, 5),
('IN0004', '003', 10000, 7000, 5),
('IN0005', '003', 10000, 7000, 2),
('IN0006', '003', 10000, 7000, 5),
('IN0006', '001', 25000, 20000, 5),
('IN0007', '001', 25000, 20000, 5),
('IN0007', '003', 10000, 7000, 5),
('IN0008', '002', 7000, 5000, 5),
('IN0008', '001', 25000, 20000, 5),
('IN0009', '001', 25000, 20000, 1),
('IN0009', '003', 10000, 7000, 2),
('IN0010', '001', 25000, 20000, 5),
('IN0010', '001', 25000, 20000, 6),
('IN0011', '003', 10000, 7000, 5),
('IN0011', '003', 10000, 7000, 5),
('IN0012', '003', 10000, 7000, 5),
('IN0013', '003', 10000, 7000, 5),
('IN0014', '001', 25000, 20000, 5),
('IN0014', '002', 7000, 5000, 6),
('IN0014', '003', 10000, 7000, 8),
('IN0015', '001', 25000, 20000, 8),
('IN0015', '002', 7000, 5000, 4),
('IN0015', '003', 10000, 7000, 9),
('IN0015', '004', 18000, 12000, 6),
('IN0015', '005', 35000, 20000, 7),
('IN0015', '006', 12000, 8000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `nm_kasir` varchar(30) NOT NULL,
  `jkel` varchar(15) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nm_kasir`, `jkel`, `no_telp`, `agama`, `alamat`, `password`) VALUES
('111', 'noya', 'Laki-Laki', '12345432', 'Kristen', 'ehedhkhabnw2', '123421'),
('222', 'ainaya', 'Perempuan', '092835362', 'Islam', 'jl.dalam diam', '0987'),
('k002', 'dede', 'Perempuan', '08277', 'Islam', 'jalannnn', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `idnota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `id` varchar(10) NOT NULL,
  `id_kasir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`idnota`, `tgl`, `id`, `id_kasir`) VALUES
('IN0001', '2026-06-11', '001', '111'),
('IN0002', '2026-06-11', '001', '111'),
('IN0003', '2026-06-24', '001', '111'),
('IN0004', '2026-06-24', '001', '111'),
('IN0005', '2026-06-24', '001', '111'),
('IN0006', '2026-06-24', '001', '111'),
('IN0007', '2026-06-24', '001', '111'),
('IN0008', '2026-06-24', '001', '111'),
('IN0009', '2026-06-24', '001', '111'),
('IN0010', '2026-06-25', '001', '111'),
('IN0011', '2026-07-02', '001', '111'),
('IN0012', '2026-07-02', '001', '111'),
('IN0013', '2026-07-02', '001', '111'),
('IN0014', '2026-07-04', '001', '111'),
('IN0015', '2026-07-04', '002', 'k002');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('001', 'AINAYA Aulia', 'Perempuan', '085889765510', 'Jl. warga, gang salan, rt 09/rw06'),
('002', 'Rusdy', 'Laki-Laki', '09374655374', 'jalan jalan'),
('003', 'awam', 'Perempuan', '0837647284', 'jinijana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `isi`
--
ALTER TABLE `isi`
  ADD KEY `idnt` (`idnota`),
  ADD KEY `idbg` (`kd_brg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`idnota`),
  ADD KEY `idpl` (`id`),
  ADD KEY `idks` (`id_kasir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `isi`
--
ALTER TABLE `isi`
  ADD CONSTRAINT `idbg` FOREIGN KEY (`kd_brg`) REFERENCES `barang` (`kd_brg`),
  ADD CONSTRAINT `idnt` FOREIGN KEY (`idnota`) REFERENCES `nota` (`idnota`);

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `idks` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`),
  ADD CONSTRAINT `idpl` FOREIGN KEY (`id`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
