-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 01:13 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tonsillitis_ds`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `idadmin` int(3) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbpasien`
--

CREATE TABLE `tbpasien` (
  `idpasien` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noip` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpasien`
--

INSERT INTO `tbpasien` (`idpasien`, `nama`, `kelamin`, `umur`, `alamat`, `noip`, `tanggal`, `pekerjaan`, `email`) VALUES
(1, 'Mala', 'Wanita', '33', 'Lhokseumawe', '127.0.0.1', '2017-09-12', '', 'malawai@gmail.com'),
(2, 'Mala', 'Wanita', '33', 'Lhokseumawe', '127.0.0.1', '2017-09-12', '', 'malawai@gmail.com'),
(3, 'Junaya', 'Wanita', '33', 'Mulieng', '::1', '2018-01-10', '', 'yunaa@gmail.com'),
(4, 'Rudi Anjani', 'Laki-laki', '15', 'Matang', '::1', '2018-01-11', '', 'rudi@gmail.com'),
(5, 'Rusli', 'Laki-laki', '33', 'Matang', '::1', '2018-01-14', '', 'ruslia@gmail.com'),
(6, 'Arun', 'Laki-laki', '33', 'Lhokseumawe', '::1', '2018-01-15', '', 'arun@gmail.com'),
(7, 'Fauzan', 'Laki-laki', '22', 'Matangkuli', '::1', '2018-01-16', '', 'zoelfathi@gmail.com'),
(8, 'Juanda', 'Laki-laki', '19', 'Lhokseumawe', '::1', '2018-02-09', '', 'juanda@gmail.com'),
(9, 'Uji', 'Laki-laki', '9', '9', '::1', '2018-02-09', '', '9'),
(10, 'Husani', 'Laki-laki', '5', 'Cunda', '::1', '2018-02-09', '', 'Husaini@gmail.com'),
(11, 'Jamilah', 'Wanita', '3', 'Binjei', '::1', '2018-02-10', '', 'jamilah@gmail.com'),
(12, 'Zainal', 'Laki-laki', '33', 'Kandang', '::1', '2018-02-16', '', 'zainalabidin@gmail.c'),
(13, 'eeee', 'Laki-laki', '45', 'we', '::1', '2022-10-31', '', 'we'),
(14, 'dicsr', 'Laki-laki', '12', 'Jabar', '::1', '2022-10-31', '', 'najib.azfa@gmail.com'),
(15, 'test', 'Laki-laki', '45', 'Jawa Barat', '::1', '2022-10-31', '', 'erer'),
(16, 'test', 'Laki-laki', '45', 'Jawa Barat', '::1', '2022-10-31', '', 'erer'),
(17, 'test', 'Laki-laki', '45', 'Jawa Barat', '::1', '2022-10-31', '', '3434'),
(18, 'test', 'Laki-laki', '45', 'Jawa Barat', '::1', '2022-10-31', '', '3434');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kdgejala` varchar(3) NOT NULL,
  `gejala` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kdgejala`, `gejala`) VALUES
(1, 'G1', 'Sakit Radang Amandel dalam Kurun Waktu < 10 Hari'),
(2, 'G2', 'Sakit Radang Amandel dalam Kurun Waktu > 10 Hari'),
(3, 'G3', 'Demam Disertai Menggigil'),
(4, 'G4', 'Sakit Tenggorokan'),
(5, 'G5', 'Kesulitan atau Sakit Saat Menelan'),
(6, 'G6', 'Sulit Membuka Mulut'),
(7, 'G7', 'Radang Tenggorokan Kronis'),
(8, 'G8', 'Susah Tidur'),
(9, 'G9', 'Nyeri Membuka Rahang'),
(10, 'G10', 'Muncul Batu di Amandel'),
(11, 'G11', 'Nafas Bau'),
(12, 'G12', 'Merasa Lelah & Pegal-pegal'),
(13, 'G13', 'Kelenjar Membengkak'),
(14, 'G14', 'Kelenjar Getah Bening'),
(15, 'G15', 'Batuk Berdahak'),
(16, 'G16', 'Batuk Tidak Berdahak'),
(17, 'G17', 'Radang Tenggorokan Terjadi Sekitar 5-7 kali dalam 1 tahun'),
(18, 'G18', 'Radang Tenggorokan Terjadi 5 kali dalam 2 tahun berturut-turut');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(4) NOT NULL,
  `idpasien` int(10) NOT NULL,
  `kdpenyakit` char(4) NOT NULL,
  `persentase` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `idpasien`, `kdpenyakit`, `persentase`, `tanggal`) VALUES
(1, 18, 'P2', '13.04', '2022-10-31 21:09:15'),
(2, 18, 'P3', '56.52', '2022-10-31 21:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(11) NOT NULL,
  `kdpenyakit` varchar(3) DEFAULT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `definisi` text,
  `solusi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `kdpenyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
(1, 'P01', 'Tonsilitis Akut', 'tonsilitis akut merupakan radang tonsil yang disebabkan oleh virus dan juga bakteri', '- Untuk penanganan awal diberikan obat antibiotik dengan resep dokter'),
(2, 'P02', 'Tonsilitis Kronis', 'Tonsilitis Kronis secara umum diartikan sebagai infeksi atau inflamasi pada tonsila palatina yang menetap.', '- Untuk meredakan rasa nyeri, dokter mungkin akan memberikan obat antinyeri, seperti paracetamol atau ibuprofen. Namun, untuk beberapa kondisi, dokter akan menyarankan untuk menjalani tonsilektomi atau operasi pengangkatan amandel.'),
(3, 'P03', 'Tonsilitis Berulang', 'Tonsilitis berulang merupakan tonsilitis yang kambuh setelah sembuh berulang.', '- Disarankan untuk dilakukan tonsilektomi atau operasi pengangkatan amandel.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rules`
--

CREATE TABLE `tb_rules` (
  `id_problem` int(11) DEFAULT NULL,
  `id_evidence` int(11) DEFAULT NULL,
  `cf` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_rules`
--

INSERT INTO `tb_rules` (`id_problem`, `id_evidence`, `cf`) VALUES
(1, 1, 0.9),
(1, 2, 0.9),
(1, 3, 0.3),
(2, 3, 0.3),
(3, 3, 0.3),
(1, 4, 0.4),
(3, 4, 0.4),

(1, 5, 0.6),
(2, 5, 0.6),
(3, 5, 0.6),
(2, 6, 0.8),
(3, 6, 0.8),
(2, 7, 0.8),
(3, 7, 0.8),
(1, 8, 0.2),
(2, 8, 0.2),
(3, 8, 0.2),
(2, 9, 0.7),
(3, 9, 0.7),
(2, 10, 0.8),
(3, 10, 0.8),
(1, 11, 0.4),
(2, 11, 0.4),
(3, 11, 0.4),
(1, 12, 0.4),
(2, 12, 0.4),
(3, 12, 0.4),
(1, 13, 0.4),
(3, 13, 0.4),
(2, 14, 0.6),
(3, 14, 0.6),
(2, 15, 0.7),
(3, 15, 0.5),
(1, 16, 0.5),
(3, 17, 0.9),
(3, 18, 0.9);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `tbpasien`
--
ALTER TABLE `tbpasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbpasien`
--
ALTER TABLE `tbpasien`
  MODIFY `idpasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
