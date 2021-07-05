-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 12:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `member`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`) VALUES
(1, 'shereen', '123'),
(2, 'beatrix', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `log_data`
--

CREATE TABLE `log_data` (
  `id_log` int(11) NOT NULL,
  `nidn` varchar(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `total` text NOT NULL,
  `waktu` datetime NOT NULL,
  `pengedit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_data`
--

INSERT INTO `log_data` (`id_log`, `nidn`, `nama`, `total`, `waktu`, `pengedit`) VALUES
(1, '1232144DA', 'Betty Cooper', '21750000', '2021-06-07 18:25:38', 'shereen'),
(2, '12432JD', 'Jughead Jones', '54000000', '2021-06-07 18:25:57', 'shereen'),
(3, '1234LD', 'Veronica Lodge', '4500000', '2021-06-07 18:27:03', 'beatrix'),
(4, '123HDSH', 'Archie Andrews', '2875000', '2021-06-07 18:27:25', 'beatrix'),
(5, '1861022SB', 'Shereen Beatrix', '5500000', '2021-06-07 18:34:10', 'beatrix');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_member`
--

CREATE TABLE `tabel_member` (
  `nidn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `lahir` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `pendidikan` enum('S2','S3') NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `keahlian` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `tunjangan_golongan` text NOT NULL,
  `tunjangan_pangkat` text NOT NULL,
  `pengalaman` text NOT NULL,
  `gaji_pokok` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_member`
--

INSERT INTO `tabel_member` (`nidn`, `nama`, `tempat`, `lahir`, `telepon`, `pendidikan`, `jenis_kelamin`, `keahlian`, `username`, `password`, `tunjangan_golongan`, `tunjangan_pangkat`, `pengalaman`, `gaji_pokok`, `total`) VALUES
('1232144DA', 'Betty Cooper', 'Riverdale', '2021-06-07', '0823406268692', 'S3', 'Wanita', 'Networking, ', 'bettycooper@gmail.com', '123', '4A', 'L', 'jurnalistik\r\n                            \r\n                            \r\n                            \r\n                            ', '20000000', '21750000'),
('1234LD', 'Veronica Lodge', 'Riverdale', '2021-06-05', '08234062685643', 'S2', 'Wanita', 'Programming, ', 'vlodge@gmail.com', 'asd', '3B', 'LK', 'ada\r\n                            \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            ', '2500000', '4500000'),
('123HDSH', 'Archie Andrews', 'Riverdale', '2021-06-05', '0812345699', 'S3', 'Pria', 'System, ', 'archieandrews@gmail.com', 'asd', '3A', 'AA', 'ada\r\n                            \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            ', '2000000', '2875000'),
('12432JD', 'Jughead Jones', 'Riverdale', '2021-06-07', '082340685643', 'S3', 'Pria', 'Database, ', 'jugheadjones@gmail.com', '123', '4A', 'GB', 'penulis\r\n                            \r\n                            \r\n                            ', '45500000', '54000000'),
('1861022SB', 'Shereen Beatrix', 'Ujung Pandang', '1999-08-18', '082340626869', 'S2', 'Wanita', 'Programming, Networking, Database, System, ', 'shereenbeatrix7@gmail.com', 'asd', '4B', 'LK', 'kuliah\r\n                            ', '3000000', '5500000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `log_data`
--
ALTER TABLE `log_data`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tabel_member`
--
ALTER TABLE `tabel_member`
  ADD PRIMARY KEY (`nidn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_data`
--
ALTER TABLE `log_data`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
