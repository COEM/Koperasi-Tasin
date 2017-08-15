-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 27, 2012 at 06:56 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `koperasi`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `anggota`
-- 

CREATE TABLE `anggota` (
  `NoAnggota` varchar(20) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Alamat` varchar(35) NOT NULL,
  `Tgl_Masuk` date NOT NULL,
  `simp` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tglLahir` date NOT NULL,
  `status_pegawai` varchar(30) NOT NULL,
  PRIMARY KEY  (`NoAnggota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `anggota`
-- 

INSERT INTO `anggota` VALUES ('AG2', 'Heru', 'Siteba', '2012-06-26', '300000', 'jambi', '1987-01-31', 'Pegawai');

-- --------------------------------------------------------

-- 
-- Table structure for table `angsuran`
-- 

CREATE TABLE `angsuran` (
  `NoBukti` varchar(20) NOT NULL,
  `TglBukti` date NOT NULL,
  `NoPinjam` varchar(20) NOT NULL,
  `Jml_angs` varchar(30) NOT NULL default '0',
  `ke` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `angsuran`
-- 

INSERT INTO `angsuran` VALUES ('BA1', '2012-07-04', 'PJ1', '825000', '1');
INSERT INTO `angsuran` VALUES ('BA2', '2012-08-02', 'PJ1', '825000', '2');

-- --------------------------------------------------------

-- 
-- Table structure for table `pinjaman`
-- 

CREATE TABLE `pinjaman` (
  `NoPinjam` varchar(20) NOT NULL,
  `TglPinjam` date NOT NULL,
  `NoAnggota` varchar(20) NOT NULL,
  `Lama` varchar(30) NOT NULL,
  `Bunga` varchar(30) NOT NULL,
  `Jumlah` varchar(30) NOT NULL,
  `Angsuran` varchar(30) NOT NULL,
  `total_angsuran` varchar(30) NOT NULL default '0',
  `sisa` varchar(30) NOT NULL default '0',
  PRIMARY KEY  (`NoPinjam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `pinjaman`
-- 

INSERT INTO `pinjaman` VALUES ('PJ1', '2012-06-06', 'AG2', '4', '10', '3000000', '825000', '1650000', '1350000');
INSERT INTO `pinjaman` VALUES ('PJ2', '2012-06-21', 'AG2', '12', '0.1', '1000000', '83416,67', '0', '1000000');

-- --------------------------------------------------------

-- 
-- Table structure for table `simpanan`
-- 

CREATE TABLE `simpanan` (
  `NoTrans` varchar(20) NOT NULL,
  `TglTrans` date NOT NULL,
  `NoAnggota` varchar(30) NOT NULL,
  `Wajib` varchar(30) NOT NULL,
  `Sukarela` varchar(30) NOT NULL,
  PRIMARY KEY  (`NoTrans`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `simpanan`
-- 

INSERT INTO `simpanan` VALUES ('SP1', '2012-06-26', 'AG2', '90000', '10000');
