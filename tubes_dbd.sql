-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 02:19 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_dbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus_gaji`
--

CREATE TABLE `bonus_gaji` (
  `id` int(11) NOT NULL,
  `bonus` varchar(50) NOT NULL,
  `jml_bonus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bonus_gaji`
--

INSERT INTO `bonus_gaji` (`id`, `bonus`, `jml_bonus`) VALUES
(1, 'Hadir', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tunjangan_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tunjangan_transport`, `uang_makan`) VALUES
(1, 'Staff Marketing', '4100000', '500000', '500000'),
(2, 'Programmer', '5000000', '500000', '650000'),
(4, 'Staff Finance', '4300000', '500000', '500000'),
(5, 'Admin', '4500000', '500000', '600000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(3, '012021', '5129034455', 'Garok', 'Laki-laki', 'Administrator', 15, 5, 2),
(4, '012021', '5129034454', 'Tukiman', 'Laki-laki', 'Staff Marketing', 20, 1, 1),
(5, '012021', '5039482930', 'Anto', 'Laki-Laki', 'Programmer', 19, 3, 0),
(6, '012021', '5302847548', 'Gisel', 'Perempuan', 'Staff Marketing', 22, 0, 0),
(7, '012021', '5349584737', 'Joni', 'Laki-Laki', 'Staff Marketing', 21, 1, 0),
(8, '012021', '1010101010', 'Sugiono', 'Laki-Laki', 'Staff Marketing', 18, 1, 3),
(9, '022021', '5039482930', 'Anto', 'Laki-Laki', 'Programmer', 22, 0, 0),
(10, '022021', '5129034455', 'Garok', 'Laki-laki', 'Administrator', 21, 0, 1),
(11, '022021', '5302847548', 'Gisel', 'Perempuan', 'Staff Marketing', 18, 2, 2),
(12, '022021', '5349584737', 'Joni', 'Laki-Laki', 'Staff Marketing', 20, 1, 1),
(13, '022021', '1010101010', 'Sugiono', 'Laki-Laki', 'Staff Marketing', 17, 0, 5),
(14, '022021', '5129034454', 'Tukiman', 'Laki-laki', 'Staff Finance', 22, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '5129034454', 'Tukiman', 'manjek', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-laki', 'Staff Finance', '2020-05-04', 'Karyawan Tetap', '1.jpg', 2),
(2, '5129034455', 'Garok', 'adminabcd', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-laki', 'Admin', '2020-10-28', 'Karyawan Tetap', '2.png', 1),
(4, '5039482930', 'Anto', 'anto2000', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-Laki', 'Programmer', '2020-12-17', 'Pegawai Tetap', '3ff5aa52bbff0631b8bcc5a09b9b3719.jpg', 2),
(5, '5302847548', 'Gisel', '19second', 'e10adc3949ba59abbe56e057f20f883e', 'Perempuan', 'Staff Marketing', '2021-01-04', 'Pegawai Tidak Tetap', '52580865a704520klnopi.jpg', 2),
(6, '5349584737', 'Joni', 'jhoncena', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-Laki', 'Staff Marketing', '2021-01-07', 'Pegawai Tetap', '39881746_1962379443783706_3946719858602803200_n.jpg', 2),
(7, '1010101010', 'Sugiono', 'legend', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-Laki', 'Staff Marketing', '2021-01-06', 'Pegawai Tidak Tetap', '39881746_1962379443783706_3946719858602803200_n.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(100) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus_gaji`
--
ALTER TABLE `bonus_gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bonus_gaji`
--
ALTER TABLE `bonus_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
