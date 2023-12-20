-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 08:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `kode_desa` varchar(255) NOT NULL,
  `nama_desa` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`kode_desa`, `nama_desa`, `jumlah`) VALUES
('', 'TOTAL', 37),
('6112092001', 'SUNGAI KAKAP', 4),
('6112092002', 'SUNGAI ITIK', 1),
('6112092003', 'JERUJU BESAR', 2),
('6112092004', 'SUNGAI KUPAH', 1),
('6112092005', 'SUNGAI RENGAS', 6),
('6112092006', 'PAL SEMBILAN', 7),
('6112092007', 'SUNGAI BELIDAK', 1),
('6112092008', 'KALIMAS', 2),
('6112092009', 'PUNGUR KECIL', 4),
('6112092010', 'PUNGUR BESAR', 2),
('6112092011', 'TANJUNG SALEH', 1),
('6112092012', 'SEPUK LAUT', 723),
('6112092013', 'PUNGGUR KAPUAS', 774),
('Sumber : Dinas Kependudukan dan Pencatatan Sipil Kabupaten Kubu Raya Tahun 2022 Semester 1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `jurusan`, `nim`) VALUES
(7, 'John Doe', 'Teknik Informatika', '123456'),
(8, 'Jane Smith', 'Sistem Informasi', '789012'),
(9, 'Alice Johnson', 'Manajemen', '345678'),
(10, 'John Doe', 'Teknik Informatika', '123456'),
(11, 'Jane Smith', 'Sistem Informasi', '789012'),
(12, 'Alice Johnson', 'Manajemen', '345678');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_phone` varchar(255) DEFAULT NULL,
  `website_company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `address_phone`, `website_company`) VALUES
(1, 'Leanne Graham', 'Bret', 'Sincere@april.biz', NULL, NULL),
(2, 'Ervin Howell', 'Antonette', 'Shanna@melissa.tv', NULL, NULL),
(3, 'Clementine Bauch', 'Samantha', 'Nathan@yesenia.net', NULL, NULL),
(4, 'Patricia Lebsack', 'Karianne', 'Julianne.OConner@kory.org', NULL, NULL),
(5, 'Chelsey Dietrich', 'Kamren', 'Lucio_Hettinger@annie.ca', NULL, NULL),
(6, 'Mrs. Dennis Schulist', 'Leopoldo_Corkery', 'Karley_Dach@jasper.info', NULL, NULL),
(7, 'Kurtis Weissnat', 'Elwyn.Skiles', 'Telly.Hoeger@billy.biz', NULL, NULL),
(8, 'Nicholas Runolfsdottir V', 'Maxime_Nienow', 'Sherwood@rosamond.me', NULL, NULL),
(9, 'Glenna Reichert', 'Delphine', 'Chaim_McDermott@dana.io', NULL, NULL),
(10, 'Clementina DuBuque', 'Moriah.Stanton', 'Rey.Padberg@karina.biz', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`kode_desa`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
