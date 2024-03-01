-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 02:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Bangun Parikesit, S.Pd.', 'bangun', '12345'),
(2, 'Ratna Widyaningsih, S.Psi.', 'ratna', '12345'),
(3, 'Risma Indah Larasati, S.Pd.', 'risma', '12345'),
(4, 'Sri Yuniati, S.Pd.', 'sri', '12345'),
(5, 'Rismiyanti, S.Pd.', 'rismi', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `nip`, `foto`) VALUES
(1, 'Fera Ratnasari, S.Pd.', 'Seni Budaya', 'fera', '12345', '20245445', 'fera.jpeg'),
(2, 'Fajariyanti, S.Pd.T.', 'Kejuruan Bangunan', 'riyanti', '12345', '20245445', 'riyanti.jpeg'),
(3, 'Ady Purnama, S.Pd.T.', 'Kejuruan Mesin', 'ady', '12345', '20245445', 'ady.jpeg'),
(4, 'Drs. Sukijo, M.Eng.', 'Kejuruan Elektronika', 'sukijo', '12345', '20245445', 'sukijo.jpeg'),
(5, 'Eka Nur Romadhoni, S.Pd.', 'Kejuruan SIJA', 'ekanur', '12345', '20245445', 'ekanur.jpeg'),
(6, 'Heni Ekawati, MT.', 'Kejuruan Kimia', 'heni', '12345', '20245445', 'heni.jpeg'),
(7, 'Ratri Budiwati, S.Pd.', 'Bahasa Inggris', 'ratri', '12345', '20245445', 'ratri.jpeg'),
(8, 'Muharor, S.Pd.I.', 'Agama Islam', 'muharor', '12345', '20245445', 'muharor.jpeg'),
(9, 'Dwi Wahyudi, S.Pd.', 'PPKn', 'yudi', '12345', '20245445', 'yudi.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `kode` int(5) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `file_pendukung` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`) VALUES
(1, 2, 3, 1, 'Ikut menjenguk guru yang sakit', 1, '7-8', '2024-02-07 08:33:26', 1, NULL),
(2, 2, 2, 1, 'Sakit', 0, '5-10', '2024-02-05 08:57:55', 2, NULL),
(3, 2, 1, 1, 'Kepentingan keluarga', 2, '6-10', '2024-02-05 08:57:55', 2, NULL),
(4, 4, 1, 2, 'Membeli makan', 3, '6-7', '2024-02-02 09:00:22', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Michelle Zyar', '11 ', '2001', 'KA', 'michell', '12345', 'michell.jpeg'),
(2, 'Nasyifa Keyla', '11', '2002', 'TEK', 'syifa', '12345', 'syifa.jpeg'),
(3, 'Janeta Zie', '11', '2003', 'DPIB ', 'zie', '12345', 'zie.jpeg'),
(4, 'Haura Qiya', '12', '2004', 'TOI', 'haura', '12345', 'haura.jpeg'),
(5, 'Arbifa Pratama', '11', '2005', 'SIJA ', 'bifa', '12345', 'bifa.jpeg'),
(6, 'Farhan Darendra', '10', '2006', 'SIJA ', 'farhan', '12345', 'farhan.jpeg'),
(7, 'Syeila Nindya', '11', '2007', 'KI', 'syeila', '12345', 'syeila.jpeg'),
(8, 'Salma Faraya', '10', '2008', 'KI', 'salma', '12345', 'salma.jpeg'),
(9, 'Regina Vista', '12', '2009', 'TEK', 'gina', '12345', 'gina.jpeg'),
(10, 'Hanan Rendra', '10', '2010', 'TP', 'hanan', '12345', 'hanan.jpeg'),
(11, 'Abian Putra', '12', '2011', 'TFLM', 'bian', '12345', 'bian.jpeg'),
(12, 'Joshua Aditama', '10', '2012', 'TKR', 'josh', '12345', 'josh.jpeg'),
(13, 'Gabriel Zio', '10', '2013', 'TGP', 'iel', '12345', 'iel.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
