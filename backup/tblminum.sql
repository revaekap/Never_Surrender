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
-- Struktur dari tabel `tblminum`
--

CREATE TABLE `tblminum` (
  `Kode` varchar(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblminum`
--

INSERT INTO `tblminum` (`Kode`, `Nama`, `Harga`) VALUES
('MN01', 'Jus Naga', 5000),
('MN02', 'Jus Tomat', 5000),
('MN03', 'Jus Wortel', 5000),
('MN04', 'Jus Jambu', 5000),
('MN05', 'Jus Jeruk', 5000),
('MN06', 'Jus Apel', 5000),
('MN07', 'Jus Lemon', 5000),
('MN08', 'Jus Alpukat', 5000),
('MN09', 'Rostea Milo', 7000),
('MN10', 'Rostea Choco Oreo', 7000),
('MN11', 'Rostea Bubble', 7000),
('MN12', 'Rostea Greentea', 7000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblminum`
--
ALTER TABLE `tblminum`
  ADD PRIMARY KEY (`Kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
