-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2017 at 04:12 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DB_10513907`
--

-- --------------------------------------------------------

--
-- Table structure for table `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `NamaMhs` text NOT NULL,
  `kelas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Mahasiswa`
--

INSERT INTO `Mahasiswa` (`NIM`, `NamaMhs`, `kelas`) VALUES
('10507260', 'Rauf', 'IS-6'),
('10507658', 'Juned', 'IS-9'),
('10508927', 'Aceng', 'IS-8');

-- --------------------------------------------------------

--
-- Table structure for table `MataKuliah`
--

CREATE TABLE `MataKuliah` (
  `KodeMK` varchar(7) NOT NULL,
  `NamaMK` text NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MataKuliah`
--

INSERT INTO `MataKuliah` (`KodeMK`, `NamaMK`, `sks`) VALUES
('MK-001', 'RPL', 3),
('MK-002', 'PEMROGRAMAN WEB', 3),
('MK-003', 'PEMROGRAMAN III', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Nilai`
--

CREATE TABLE `Nilai` (
  `id` int(11) NOT NULL,
  `NIM` varchar(9) NOT NULL,
  `KodeMK` varchar(7) NOT NULL,
  `Nilai` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `MataKuliah`
--
ALTER TABLE `MataKuliah`
  ADD PRIMARY KEY (`KodeMK`);

--
-- Indexes for table `Nilai`
--
ALTER TABLE `Nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIM` (`NIM`),
  ADD KEY `KodeMK` (`KodeMK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Nilai`
--
ALTER TABLE `Nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Nilai`
--
ALTER TABLE `Nilai`
  ADD CONSTRAINT `KodeMK_fk` FOREIGN KEY (`KodeMK`) REFERENCES `MataKuliah` (`KodeMK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `NIM_fk` FOREIGN KEY (`NIM`) REFERENCES `Mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
