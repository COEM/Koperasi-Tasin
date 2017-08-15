-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Agu 2017 pada 21.48
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `NoAnggota` varchar(20) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Alamat` varchar(35) NOT NULL,
  `Tgl_Masuk` date NOT NULL,
  `SimpananPokok` varchar(30) NOT NULL,
  `TempatLahir` varchar(30) NOT NULL,
  `TglLahir` date NOT NULL,
  `JenisKelamin` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`NoAnggota`, `Nama`, `Alamat`, `Tgl_Masuk`, `SimpananPokok`, `TempatLahir`, `TglLahir`, `JenisKelamin`) VALUES
('AG5', 'Rendi', 'asasass', '2017-07-03', '1000000', 'Singkawang', '2017-07-06', 'Laki-Laki'),
('AG4', 'Roni', 'Jalan jalan', '2017-07-17', '5000000', 'Putusibau', '1996-07-18', 'Laki-Laki'),
('AG3', 'Mita', 'SAmbas', '2017-07-03', '250000', 'Sambas', '2017-04-18', 'Laki-Laki'),
('AG2', 'Eldi', 'Singkawang', '2017-07-06', '3000000', 'Jawai', '2017-07-06', 'Laki-Laki'),
('AG1', 'Tasin', 'Jalana', '2017-07-04', '300000', 'Singkawang', '2017-07-02', 'Laki-Laki'),
('AG6', 'Ariansah', 'Tanray Jos No 49', '2017-07-05', '3000000', 'TanraySehe', '2017-07-13', 'Laki-Laki'),
('AG7', 'f', 'xx', '2017-07-06', '12345', 'xa', '2017-07-12', 'Laki-Laki'),
('AG8', 'Bandi', 'Griya', '2017-08-01', '1200000', 'Serdam', '2017-08-02', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `angsuran`
--

CREATE TABLE IF NOT EXISTS `angsuran` (
  `NoBukti` varchar(20) NOT NULL,
  `TglBukti` date NOT NULL,
  `NoPinjam` varchar(20) NOT NULL,
  `Jasa` int(30) NOT NULL,
  `Angsuran` int(30) NOT NULL,
  `Total_Angsuran` int(30) NOT NULL,
  `Sisa` int(30) NOT NULL,
  `Ke` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `angsuran`
--

INSERT INTO `angsuran` (`NoBukti`, `TglBukti`, `NoPinjam`, `Jasa`, `Angsuran`, `Total_Angsuran`, `Sisa`, `Ke`) VALUES
('BA7', '2017-08-16', 'PJ7', 30600, 85000, 115600, 425000, 7),
('BA6', '2017-08-16', 'PJ7', 35700, 85000, 120700, 510000, 6),
('BA5', '2017-08-16', 'PJ7', 40800, 85000, 125800, 595000, 5),
('BA4', '2017-08-16', 'PJ7', 45900, 85000, 130900, 680000, 4),
('BA3', '2017-08-16', 'PJ7', 51000, 85000, 136000, 765000, 3),
('BA2', '2017-08-16', 'PJ7', 56100, 85000, 141100, 850000, 2),
('BA1', '2017-08-16', 'PJ7', 61200, 85000, 146200, 935000, 1),
('BA8', '2017-08-16', 'PJ7', 25500, 85000, 110500, 340000, 8),
('BA9', '2017-08-16', 'PJ7', 20400, 85000, 105400, 255000, 9),
('BA11', '2017-08-18', 'PJ7', 10200, 85000, 95200, 85000, 11),
('BA10', '2017-08-17', 'PJ7', 15300, 85000, 100300, 170000, 10),
('BA12', '2017-08-18', 'PJ7', 5100, 85000, 90100, 0, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE IF NOT EXISTS `pinjaman` (
  `NoPinjam` varchar(20) NOT NULL,
  `NoAnggota` varchar(20) NOT NULL,
  `Lama` varchar(30) NOT NULL,
  `Bunga` varchar(30) NOT NULL,
  `Jumlah` varchar(30) NOT NULL,
  `Jasa` varchar(30) NOT NULL,
  `Angsuran` varchar(30) NOT NULL,
  `Sisa` varchar(30) NOT NULL DEFAULT '0',
  `TglPinjam` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pinjaman`
--

INSERT INTO `pinjaman` (`NoPinjam`, `NoAnggota`, `Lama`, `Bunga`, `Jumlah`, `Jasa`, `Angsuran`, `Sisa`, `TglPinjam`) VALUES
('PJ4', 'AG5', '12', '6', '1020000', '61200.0', '85000.0', '935000.0', '2017-07-30'),
('PJ2', 'AG2', '5', '6', '1000000', '60000.0', '200000.0', '540000', '2017-07-20'),
('PJ6', 'AG8', '12', '6', '1200000', '72000.0', '100000.0', '1100000.0', '2017-08-10'),
('PJ5', 'AG1', '12', '6', '1500000', '90000.0', '125000.0', '1375000.0', '2017-08-02'),
('PJ3', 'AG6', '12', '6', '1500000', '90000.0', '125000.0', '927600', '2017-07-29'),
('PJ7', 'AG1', '12', '6', '1020000', '61200.0', '85000.0', '1020000.0', '2017-08-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `simpanan`
--

CREATE TABLE IF NOT EXISTS `simpanan` (
  `NoTrans` varchar(20) NOT NULL,
  `TglTrans` date NOT NULL,
  `NoAnggota` varchar(30) NOT NULL,
  `Wajib` varchar(30) NOT NULL,
  `Sukarela` varchar(30) NOT NULL,
  `TotalSimpanan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `simpanan`
--

INSERT INTO `simpanan` (`NoTrans`, `TglTrans`, `NoAnggota`, `Wajib`, `Sukarela`, `TotalSimpanan`) VALUES
('SP3', '2017-07-02', 'AG4', '100000', '200000', '5300000'),
('SP2', '2016-07-03', 'AG3', '1000', '3999', '254999'),
('SP1', '2017-07-05', 'AG1', '10000', '20000', '330000'),
('SP4', '2017-07-03', 'AG5', '10000', '10000', '1020000'),
('SP5', '2017-07-11', 'AG6', '10000', '10000', '3020000'),
('SP6', '2017-08-01', 'AG1', '10000', '20000', '330000'),
('SP7', '2017-08-01', 'AG8', '10000', '10000', '1220000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL COMMENT '`',
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `status`) VALUES
('admin', '12345', 'admin'),
('user', '12345', 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`NoAnggota`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
 ADD PRIMARY KEY (`NoPinjam`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
 ADD PRIMARY KEY (`NoTrans`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
