-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2022 at 01:07 AM

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` int(1) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'administrator', '$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu');

-- --------------------------------------------------------

--
-- Table structure for table `t_kandidat`
--

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT '0',
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kandidat`
--

INSERT INTO `t_kandidat` (`id_kandidat`, `nama_calon`, `foto`, `visi`, `misi`, `suara`, `periode`) VALUES
(4, 'Anies Baswedan', 'anies baswedan.jpg', 'Maju Bersama Indonesia Muda', 'Kita Bangkitkan Kembali Negri Indonesia Jaya', 1, '2024/2029'),
(5, 'Ganjar Pranowo', 'ganjar pranowo.jpg', 'Meningkatkan Kemajuan Ekonomi dalam Segala Aspek', 'Menghidupkan Semangat Juang Putra dan Putri Indonesia',2, '2024/2029'),
(6, 'Prabowo Subianto', 'prabowo subianto.jpg', 'Ayo Indonesia Maju Bersama', 'Kita Bangkit dan Berjuang', 3, '2024/2029');

-- --------------------------------------------------------

--
-- Table structure for table `t_wilayah`
--

CREATE TABLE `t_wilayah` (
  `id_wilayah` varchar(3) NOT NULL,
  `nama_wilayah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_wilayah`
--

INSERT INTO `t_wilayah` (`id_wilayah`, `nama_wilayah`) VALUES
('W01', 'RT - 001'),
('W02', 'RT - 002');

-- --------------------------------------------------------

--
-- Table structure for table `t_pemilih`
--

CREATE TABLE `t_pemilih` (
  `nik` varchar(10) NOT NULL,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pemilih`
--

INSERT INTO `t_pemilih` (`nik`, `periode`) VALUES
('2155', '2024/2029');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_wilayah` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `fullname`, `id_wilayah`, `jk`, `pemilih`) VALUES
('2155', 'Anies Baswedan', 'W01', 'L', 'Y'),
('2156', 'Ganjar Pranowo', 'W01', 'L', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `t_wilayah`
--
ALTER TABLE `t_wilayah`
  ADD PRIMARY KEY (`id_wilayah`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
