-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2020 at 04:50 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_barang`
--

CREATE TABLE `db_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stock_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_barang`
--

INSERT INTO `db_barang` (`id_barang`, `nama_barang`, `harga_barang`, `stock_barang`) VALUES
(1, 'Gayung', 5000, 5),
(2, 'Gelas', 10000, 10),
(3, 'Handuk', 7500, 2),
(4, 'Piring', 20000, 20),
(6, 'Jaket', 150000, 100),
(9, 'Sikat', 10000, 1),
(10, 'Sendok', 1000, 97);

-- --------------------------------------------------------

--
-- Table structure for table `db_keranjang`
--

CREATE TABLE `db_keranjang` (
  `id_keranjang` int(99) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty_barang` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_keranjang`
--

INSERT INTO `db_keranjang` (`id_keranjang`, `id_barang`, `qty_barang`, `total`) VALUES
(1, 1, 2, 10000),
(1, 3, 2, 15000),
(201503518, 3, 1, 7500),
(2015035227, 3, 10, 75000),
(2015035259, 4, 10, 200000),
(201503547, 2, 10, 100000),
(2015035919, 4, 10, 200000),
(2015035919, 1, 30, 150000),
(2015035919, 2, 1, 10000),
(2015040752, 3, 10, 75000),
(2015040752, 2, 10, 100000),
(2015042141, 2, 10, 100000),
(201504226, 2, 1, 10000),
(201504226, 3, 10, 75000),
(201504226, 4, 1, 20000),
(2016212945, 3, 10, 75000),
(2016212945, 1, 10, 50000),
(2016212945, 2, 10, 100000),
(201621550, 8, 9, 899991),
(201621550, 2, 10, 100000),
(201913115, 1, 10, 50000),
(201913115, 2, 10, 100000),
(2019161716, 10, 10, 10000),
(2019161716, 3, 100, 750000),
(2019163953, 1, 10, 50000),
(2019164233, 10, 10, 10000),
(2019164233, 1, 2, 10000),
(2019164233, 1, 1, 5000),
(2019164233, 10, 1, 1000),
(2019164233, 1, 10, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `db_transaksi`
--

CREATE TABLE `db_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_transaksi`
--

INSERT INTO `db_transaksi` (`id_transaksi`, `id_keranjang`, `tanggal`, `total`, `pembayaran`, `kembalian`) VALUES
(1, 1, 'Raqael', 25000, 0, 0),
(2, 201503518, 'Raqael', 1000, 0, 0),
(3, 2015035227, 'Raqael', 1000, 0, 0),
(4, 2015035259, 'Raqael', 1000, 0, 0),
(5, 201503547, 'Raqael', 1000, 0, 0),
(6, 2015035545, 'Raqael', 1000, 0, 0),
(7, 2015035919, 'Raqael', 1000, 0, 0),
(8, 2015040752, 'Raqael', 175000, 0, 0),
(9, 201504226, 'Raqael', 105000, 0, 0),
(10, 2016212945, 'Raqael', 225000, 0, 0),
(11, 201621550, 'Raqael', 999991, 0, 0),
(12, 2019164233, '2020-01-09 16:42:33', 20000, 100000, 80000),
(13, 2019164233, '2020-01-09 16:42:33', 5000, 1000, -4000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_barang`
--
ALTER TABLE `db_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_barang`
--
ALTER TABLE `db_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
