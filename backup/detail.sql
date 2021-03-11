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
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `kodetr` varchar(6) NOT NULL,
  `kodemenu` varchar(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`kodetr`, `kodemenu`, `nama`, `jumlah`, `total`) VALUES
('TR0001', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0001', 'MN01', 'Jus Naga', 1, 5000),
('TR0002', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0002', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0003', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0003', 'MN01', 'Jus Naga', 2, 10000),
('TR0003', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0004', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0004', 'MN01', 'Jus Naga', 1, 5000),
('TR0005', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0005', 'MK04', 'Sosis Bijian', 10, 5000),
('TR0006', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0006', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0006', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0007', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0008', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0009', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0010', 'MK02', 'Jasuke Kecil', 4, 10000),
('TR0011', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0011', 'MK07', 'Salad Buah', 1, 10000),
('TR0012', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0012', 'MN03', 'Jus Wortel', 1, 5000),
('TR0013', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0013', 'MK07', 'Salad Buah', 1, 10000),
('TR0014', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0015', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0015', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0016', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0017', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0017', 'MK04', 'Sosis Bijian', 7, 3500),
('TR0018', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0018', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0019', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0019', 'MK07', 'Salad Buah', 1, 10000),
('TR0019', 'MN03', 'Jus Wortel', 1, 5000),
('TR0020', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0020', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0021', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0021', 'MK04', 'Sosis Bijian', 3, 1500),
('TR0022', 'MK07', 'Salad Buah', 1, 10000),
('TR0022', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0023', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0024', 'MK04', 'Sosis Bijian', 3, 1500),
('TR0024', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0025', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0025', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0026', 'MK05', 'Sosis Bakar', 3, 15000),
('TR0026', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0027', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0027', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0028', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0028', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0029', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0029', 'MN04', 'Jus Jambu', 1, 5000),
('TR0030', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0030', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0031', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0032', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0032', 'MK04', 'Sosis Bijian', 3, 1500),
('TR0033', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0034', 'MK04', 'Sosis Bijian', 10, 5000),
('TR0034', 'MN04', 'Jus Jambu', 2, 10000),
('TR0035', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0035', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0036', 'MK02', 'Jasuke Kecil', 4, 10000),
('TR0036', 'MN04', 'Jus Jambu', 1, 5000),
('TR0037', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0037', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0038', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0038', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0039', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0039', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0040', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0040', 'MN06', 'Jus Apel', 1, 5000),
('TR0040', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0041', 'MK04', 'Sosis Bijian', 10, 5000),
('TR0041', 'MN06', 'Jus Apel', 1, 5000),
('TR0042', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0042', 'MK04', 'Sosis Bijian', 7, 3500),
('TR0043', 'MK04', 'Sosis Bijian', 9, 4500),
('TR0043', 'MN04', 'Jus Jambu', 2, 10000),
('TR0044', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0044', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0045', 'MK03', 'Sosis Paketan', 3, 15000),
('TR0045', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0046', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0046', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0047', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0047', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0047', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0048', 'MK04', 'Sosis Bijian', 3, 1500),
('TR0048', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0049', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0049', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0050', 'MK02', 'Jasuke Kecil', 4, 10000),
('TR0050', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0051', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0052', 'MK04', 'Sosis bijian', 4, 2000),
('TR0052', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0053', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0053', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0054', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0054', 'MN04', 'Jus Jambu', 1, 5000),
('TR0055', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0055', 'MK07', 'Salad Buah', 1, 10000),
('TR0056', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0056', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0057', 'MK06', 'Krupuk Pecel', 3, 15000),
('TR0057', 'MK07', 'Salad Buah', 1, 10000),
('TR0058', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0058', 'MN03', 'Jus Wortel', 1, 5000),
('TR0059', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0059', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0060', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0060', 'MN04', 'Jus Jambu', 2, 10000),
('TR0061', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0061', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0062', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0062', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0062', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0063', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0063', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0064', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0064', 'MN09', 'Rostea Milo', 1, 7000),
('TR0065', 'MK04', 'Jasuke Besar', 2, 2500),
('TR0065', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0066', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0066', 'MN11', 'Rostea Bubble', 2, 14000),
('TR0067', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0067', 'MN09', 'Rostea Milo', 1, 7000),
('TR0068', 'MK08', 'Pentol Pedas', 3, 15000),
('TR0068', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0069', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0069', 'MN06', 'Jus Apel', 1, 5000),
('TR0070', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0070', 'MN06', 'Jus Apel', 1, 5000),
('TR0071', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0071', 'MK07', 'Salad Buah', 1, 10000),
('TR0071', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0072', 'MN01', 'Jus Naga', 1, 5000),
('TR0073', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0073', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0074', 'MK04', 'Sosis bijian', 4, 2000),
('TR0074', 'MN03', 'Jus Wortel', 1, 5000),
('TR0075', 'MK08', 'Pentol pedas', 1, 5000),
('TR0075', 'MK07', 'Salad Buah', 1, 10000),
('TR0076', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0076', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0077', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0077', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0078', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0079', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0080', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0080', 'MK07', 'Salad Buah', 1, 10000),
('TR0080', 'MN12', 'Rostea Green Tea', 2, 14000),
('TR0081', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0081', 'MN04', 'Jus Jambu', 2, 10000),
('TR0082', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0083', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0084', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0084', 'MN02', 'Jus Tomat', 1, 5000),
('TR0085', 'MN11', 'Rostea Bubble', 2, 14000),
('TR0086', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0086', 'MN04', 'Jus Jambu', 2, 10000),
('TR0086', 'MN05', 'Jus Jeruk', 3, 15000),
('TR0087', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0087', 'MN09', 'Rostea Milo', 2, 14000),
('TR0088', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0089', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0089', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0089', 'MN07', 'Jus Lemon', 1, 5000),
('TR0090', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0091', 'MN10', 'Rostea Choco Oreo', 2, 14000),
('TR0092', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0092', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0093', 'MK05', 'Sosis Bakar', 1, 5000),
('TR0094', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0094', 'MN05', 'Jus jeruk', 1, 5000),
('TR0095', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0095', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0096', 'MK03', 'Sosis Paketan', 4, 20000),
('TR0096', 'MN01', 'Jus Naga', 1, 5000),
('TR0097', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0098', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0099', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0099', 'MN01', 'Jus Naga', 1, 5000),
('TR0100', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0100', 'MK03', 'Jasuke Besar', 3, 15000),
('TR0101', 'MK03', 'Sosis Paketan', 3, 15000),
('TR0102', 'MK03', 'Sosis Paketan', 3, 15000),
('TR0103', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0104', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0104', 'MN04', 'Jus Jambu', 1, 5000),
('TR0105', 'MK08', 'Pentol Pedas', 5, 25000),
('TR0105', 'MN02', 'Jus Tomat', 2, 10000),
('TR0106', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0107', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0107', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0108', 'MK08', 'Pentol Pedas', 3, 15000),
('TR0108', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0109', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0109', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0110', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0111', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0111', 'MK06', 'Krupuk Pecel', 2, 10000),
('TR0112', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0112', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0113', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0113', 'MN06', 'Jus Apel', 1, 5000),
('TR0113', 'MN04', 'Jus Jambu', 1, 5000),
('TR0114', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0114', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0115', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0115', 'MN04', 'Jus Jambu', 1, 5000),
('TR0116', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0116', 'MN04', 'Jus Jambu', 1, 5000),
('TR0117', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0117', 'MN09', 'Rostea Milo', 1, 7000),
('TR0118', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0118', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0119', 'MK04', 'Sosis Bijian', 9, 4500),
('TR0120', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0120', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0121', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0121', 'MN02', 'Jus Tomat', 1, 5000),
('TR0122', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0122', 'MN04', 'Jus Jambu', 2, 10000),
('TR0123', 'MN02', 'Jus Tomat', 1, 5000),
('TR0123', 'MN04', 'Jus Jambu', 1, 5000),
('TR0124', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0124', 'MN04', 'Jus Jambu', 1, 5000),
('TR0125', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0125', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0126', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0126', 'MN02', 'Jus Tomat', 1, 5000),
('TR0127', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0127', 'MK07', 'Salad Buah', 1, 10000),
('TR0128', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0128', 'MN04', 'Jus Jambu', 2, 10000),
('TR0129', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0130', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0130', 'MK07', 'Salad Buah', 1, 10000),
('TR0131', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0132', 'MK07', 'Salad Buah', 1, 10000),
('TR0133', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0133', 'MN01', 'Jus Naga', 1, 5000),
('TR0134', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0135', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0135', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0136', 'MK05', 'Sosis Bakar', 1, 5000),
('TR0136', 'MN03', 'Jus Wortel', 1, 5000),
('TR0137', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0137', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0138', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0138', 'MK06', 'Krupuk Pecel', 1, 5000),
('TR0139', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0139', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0140', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0140', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0141', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0142', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0143', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0144', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0145', 'MK03', 'Sosis Paketan', 4, 20000),
('TR0145', 'MK05', 'Sosis Bakar', 1, 5000),
('TR0145', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0146', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0146', 'MK04', 'Sosis Bijian', 14, 7000),
('TR0147', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0148', 'MK07', 'Salad Buah', 4, 40000),
('TR0149', 'MK04', 'Sosis Bijian', 10, 5000),
('TR0149', 'MN02', 'Jus Tomat', 1, 5000),
('TR0149', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0149', 'MN04', 'Jus Jambu', 1, 5000),
('TR0150', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0150', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0151', 'MK08', 'Pentol Pedas', 4, 20000),
('TR0152', 'MN08', 'Jus Alpukat', 4, 20000),
('TR0153', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0153', 'MK07', 'Salad Buah', 1, 10000),
('TR0154', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0155', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0155', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0156', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0156', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0157', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0157', 'MK05', 'Sosis Bakar', 1, 5000),
('TR0158', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0158', 'MK06', 'krupuk pecel', 1, 5000),
('TR0159', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0159', 'MK04', 'Sosis Bijian', 12, 6000),
('TR0160', 'MN02', 'Jus Tomat', 1, 5000),
('TR0161', 'MN04', 'Jus Jambu', 2, 10000),
('TR0162', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0163', 'MN02', 'Jus Tomat', 1, 5000),
('TR0164', 'MN05', 'Jus Jeruk', 2, 10000),
('TR0164', 'MN04', 'Jus Jambu', 1, 5000),
('TR0164', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0165', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0165', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0166', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0167', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0167', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0168', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0168', 'MN11', 'Rostea Bubble', 2, 14000),
('TR0168', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0168', 'MN04', 'Jus Jambu', 1, 5000),
('TR0169', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0170', 'MN04', 'Jus Jambu', 1, 5000),
('TR0170', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0170', 'MN06', 'Jus Apel', 1, 5000),
('TR0171', 'MK04', 'Sosis Bijian', 7, 3500),
('TR0171', 'MK06', 'krupuk pecel', 1, 5000),
('TR0171', 'MK04', 'Sosis Bijian', 3, 1500),
('TR0172', 'MK08', 'Pentol Pedas', 3, 15000),
('TR0173', 'MK06', 'krupuk pecel', 1, 5000),
('TR0174', 'MN04', 'Jus Jambu', 1, 5000),
('TR0174', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0175', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0175', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0175', 'MK06', 'krupuk pecel', 4, 20000),
('TR0176', 'MK06', 'krupuk pecel', 2, 10000),
('TR0176', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0177', 'MN04', 'Jus Jambu', 1, 5000),
('TR0177', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0178', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0179', 'MN04', 'jus jambu', 1, 5000),
('TR0180', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0180', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0181', 'MN04', 'Jus Jambu', 3, 15000),
('TR0182', 'MK05', 'Sosis Bakar', 11, 55000),
('TR0182', 'MN04', 'Jus Jambu', 1, 5000),
('TR0183', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0183', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0183', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0184', 'MK06', 'krupuk pecel', 2, 10000),
('TR0184', 'MK06', 'krupuk pecel', 1, 5000),
('TR0185', 'MK08', 'Pentol Pedas', 3, 15000),
('TR0185', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0186', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0187', 'MK05', 'Sosis Bakar', 8, 40000),
('TR0188', 'MN06', 'Jus Apel', 2, 10000),
('TR0189', 'MK05', 'Sosis Bakar', 4, 20000),
('TR0190', 'MN07', 'Jus Lemon', 2, 10000),
('TR0191', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0192', 'MN10', 'Rostea Choco Oreo', 2, 14000),
('TR0192', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0192', 'MN09', 'Rostea Milo', 1, 7000),
('TR0193', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0193', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0194', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0195', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0196', 'MK05', 'Sosis Bakar', 2, 10000),
('TR0197', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0197', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0198', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0199', 'MN05', 'Jus Jeruk', 2, 10000),
('TR0199', 'MN07', 'Jus Lemon', 3, 15000),
('TR0200', 'MK06', 'krupuk pecel', 2, 10000),
('TR0200', 'MN07', 'Jus Lemon', 1, 5000),
('TR0201', 'MK07', 'Salad Buah', 1, 10000),
('TR0201', 'MN03', 'Jus Wortel', 1, 5000),
('TR0202', 'MN02', 'Jus Tomat', 2, 10000),
('TR0203', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0203', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0204', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0205', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0205', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0205', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0206', 'MN08', 'Jus Alpukat', 3, 15000),
('TR0207', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0208', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0208', 'MN08', 'Jus Alpukat', 2, 10000),
('TR0209', 'MK06', 'krupuk pecel', 1, 5000),
('TR0210', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0211', 'MK06', 'krupuk pecel', 2, 10000),
('TR0212', 'MN01', 'Jus Naga', 1, 5000),
('TR0213', 'MK04', 'sosis bijian', 5, 2500),
('TR0213', 'MN02', 'Jus Tomat', 3, 15000),
('TR0213', 'MN04', 'Jus Jambu', 4, 20000),
('TR0214', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0214', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0215', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0215', 'MN03', 'Jus Wortel', 1, 5000),
('TR0216', 'MK05', 'Sosis Bakar', 3, 15000),
('TR0217', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0218', 'MN04', 'Jus Jambu', 1, 5000),
('TR0219', 'MK04', 'Sosis Bijian', 12, 6000),
('TR0220', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0221', 'MK04', 'Sosis Bijian', 11, 5500),
('TR0221', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0221', 'MN08', 'Jus Alpukat', 2, 10000),
('TR0222', 'MK05', 'Sosis Bakar', 2, 10000),
('TR0223', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0223', 'MK06', 'krupuk pecel', 2, 10000),
('TR0224', 'MN03', 'Jus Wortel', 1, 5000),
('TR0225', 'MK04', 'Sosis Bijian', 9, 4500),
('TR0226', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0226', 'MK07', 'Salad Buah', 1, 10000),
('TR0226', 'MK06', 'krupuk pecel', 1, 5000),
('TR0226', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0227', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0227', 'MN01', 'Jus Naga', 2, 10000),
('TR0228', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0228', 'MK07', 'Salad Buah', 2, 20000),
('TR0229', 'MN04', 'Jus Jambu', 2, 10000),
('TR0230', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0231', 'MK04', 'Sosis Bijian', 6, 3000),
('TR0231', 'MN06', 'Jus Apel', 1, 5000),
('TR0232', 'MN02', 'jus tomat', 1, 5000),
('TR0232', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0232', 'MN07', 'Jus Lemon', 1, 5000),
('TR0233', 'MN01', 'jus naga', 1, 5000),
('TR0234', 'MN04', 'jus jambu', 1, 5000),
('TR0235', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0236', 'MK04', 'sosis bijian', 6, 3000),
('TR0237', 'MK07', 'Salad Buah', 1, 10000),
('TR0238', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0239', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0239', 'MN07', 'Jus Lemon', 1, 5000),
('TR0239', 'MK05', 'sosis bakar', 1, 5000),
('TR0239', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0239', 'MK05', 'Sosis Bakar', 1, 5000),
('TR0240', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0241', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0241', 'MN08', 'Jus Alpukat', 3, 15000),
('TR0242', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0243', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0243', 'MN07', 'Jus Lemon', 1, 5000),
('TR0244', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0245', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0245', 'MN03', 'Jus Wortel', 1, 5000),
('TR0246', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0247', 'MN04', 'Jus Jambu', 1, 5000),
('TR0247', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0248', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0249', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0249', 'MK06', 'krupuk pecel', 1, 5000),
('TR0249', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0250', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0251', 'MK04', 'Sosis Bijian', 5, 2500),
('TR0251', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0252', 'MK05', 'sosis bakar', 2, 10000),
('TR0252', 'MK05', 'sosis bakar', 3, 15000),
('TR0253', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0254', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0255', 'MK05', 'sosis bakar', 1, 5000),
('TR0256', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0256', 'MK04', 'Sosis Bijian', 1, 500),
('TR0257', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0258', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0258', 'MN02', 'jus tomat', 1, 5000),
('TR0258', 'MK01', 'Jasuke Besar', 4, 20000),
('TR0259', 'MK06', 'krupuk pecel', 1, 5000),
('TR0259', 'MK04', 'sosis bijian', 6, 3000),
('TR0260', 'MN04', 'Jus Jambu', 1, 5000),
('TR0260', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0261', 'MN06', 'Jus Apel', 1, 5000),
('TR0262', 'MK03', 'Sosis Paketan', 2, 10000),
('TR0263', 'MN09', 'Rostea Milo', 1, 7000),
('TR0264', 'MN06', 'Jus Apel', 1, 5000),
('TR0264', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0265', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0266', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0267', 'MK06', 'krupuk pecel', 1, 5000),
('TR0268', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0268', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0269', 'MN06', 'Jus Apel', 1, 5000),
('TR0269', 'MK04', 'Sosis Bijian', 8, 4000),
('TR0270', 'MN02', 'jus tomat', 1, 5000),
('TR0270', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0270', 'MK02', 'Jasuke Kecil', 4, 10000),
('TR0271', 'MK05', 'sosis bakar', 1, 5000),
('TR0272', 'MK04', 'Sosis Bijian', 2, 1000),
('TR0272', 'MN04', 'jus jambu', 1, 5000),
('TR0273', 'MK06', 'krupuk pecel', 1, 5000),
('TR0273', 'MN05', 'jus jeruk', 1, 5000),
('TR0274', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0274', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0274', 'MN09', 'Rostea Milo', 1, 7000),
('TR0275', 'MK04', 'Sosis Bijian', 4, 2000),
('TR0275', 'MN10', 'Rostea Choco Oreo', 1, 7000),
('TR0276', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0277', 'MK01', 'Jasuke Besar', 2, 10000),
('TR0278', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0278', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0279', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0280', 'MN12', 'Rostea Green Tea', 1, 7000),
('TR0281', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0282', 'MK08', 'Pentol Pedas', 2, 10000),
('TR0282', 'MK02', 'Jasuke Kecil', 6, 15000),
('TR0282', 'MN03', 'Jus Wortel', 1, 5000),
('TR0283', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0283', 'MN06', 'Jus Apel', 1, 5000),
('TR0283', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0283', 'MK02', 'Jasuke Kecil', 3, 7500),
('TR0283', 'MN05', 'Jus Jeruk', 1, 5000),
('TR0284', 'MK05', 'sosis bakar', 1, 5000),
('TR0284', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0285', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0285', 'MK08', 'Pentol Pedas', 1, 5000),
('TR0286', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0286', 'MK05', 'sosis bakar', 1, 5000),
('TR0287', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0288', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0289', 'MN03', 'Jus Wortel', 1, 5000),
('TR0290', 'MK02', 'Jasuke Kecil', 2, 5000),
('TR0291', 'MK03', 'Sosis Paketan', 1, 5000),
('TR0291', 'MK01', 'Jasuke Besar', 3, 15000),
('TR0291', 'MN04', 'Jus Jambu', 2, 10000),
('TR0292', 'MK06', 'krupuk pecel', 1, 5000),
('TR0292', 'MK02', 'Jasuke Kecil', 1, 2500),
('TR0292', 'MN08', 'Jus Alpukat', 1, 5000),
('TR0293', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0293', 'MN09', 'Rostea Milo', 1, 7000),
('TR0294', 'MK06', 'krupuk pecel', 2, 10000),
('TR0295', 'MK01', 'Jasuke Besar', 1, 5000),
('TR0295', 'MN04', 'Jus Jambu', 1, 5000),
('TR0296', 'MN11', 'Rostea Bubble', 1, 7000),
('TR0296', 'MK06', 'krupuk pecel', 1, 5000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
