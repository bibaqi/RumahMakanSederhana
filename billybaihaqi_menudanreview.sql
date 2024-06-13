-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Des 2021 pada 21.43
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `billybaihaqi_menudanreview`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `password`) VALUES
('admin', 'admin'),
('billy01', 'member1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(10) NOT NULL,
  `makanan` varchar(20) NOT NULL,
  `minuman` varchar(20) NOT NULL,
  `total_harga` int(10) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `makanan`, `minuman`, `total_harga`) VALUES
(111, 'ayam bakar', 'es teh', 28000),
(112, 'ayam bakar', 'jus alpukat', 32000),
(121, 'nasi goreng', 'es teh', 25000),
(122, 'nasi goreng', 'jus alpukat', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id_menu` int(10) NOT NULL,
  `makanan` varchar(20) NOT NULL,
  `minuman` varchar(20) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `review` varchar(250) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_menu`, `makanan`, `minuman`, `total_harga`, `nama`, `review`) VALUES
(111, 'ayam bakar', 'es teh', 28000, 'billy baihaqi', 'rasa makanan sesuai dengan harga'),
(112, 'ayam bakar', 'jus alpukat', 32000, '', ''),
(121, 'nasi goreng', 'es teh', 25000, '', ''),
(122, 'nasi goreng', 'jus alpukat', 30000, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_bank` varchar(10) NOT NULL,
  `nama_bank` varchar(20) NOT NULL,
  `no_rekening` varchar(20) NOT NULL,
  `atas_nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_bank`, `nama_bank`, `no_rekening`, `atas_nama`) VALUES
('01', 'BCA', ' 0740078123', 'Billy Baihaqi'),
('02', 'BNI', '0097927223', 'Budi Setiawan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
