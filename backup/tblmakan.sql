-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2020 pada 11.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmakan`
--

CREATE TABLE `tblmakan` (
  `Kode` varchar(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblmakan`
--

INSERT INTO `tblmakan` (`Kode`, `Nama`, `Harga`) VALUES
('MK01', 'Jasuke Besar', 5000),
('MK02', 'Jasuke Kecil', 2500),
('MK03', 'Sosis Paketan', 5000),
('MK04', 'Sosis Bijian', 500),
('MK05', 'Sosis Bakar', 5000),
('MK06', 'Krupuk Pecel', 5000),
('MK07', 'Salad Buah', 10000),
('MK08', 'Pentol Pedas', 5000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblmakan`
--
ALTER TABLE `tblmakan`
  ADD PRIMARY KEY (`Kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
