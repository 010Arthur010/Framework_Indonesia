-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2023 pada 01.55
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu Merk All Star', 'Pakaian Pria', 300000, 9, 'sepatu.jpg\r\n'),
(2, 'Kamera', 'Kamera Canon eos 700d', 'Elektronik', 5900000, 9, 'kamera.jpg'),
(3, 'Redmi 10 2022', 'Redmi 10 2022', 'Elektronik', 2000000, 30, 'hp.jpg'),
(4, 'Laptop Asus', 'Laptop Asus', 'Elektronik', 4700000, 39, 'laptop.jpg'),
(11, 'Sepatu', 'Sepatu', 'Pakaian Pria', 250000, 50, 'sepatu2.jpg'),
(12, 'Jaket Wanita', 'YTTA', 'Pakaian Wanita', 300000, 5, 'rgb3.jpg'),
(13, 'RGB FOR KIDS', 'SIPPP', 'Pakaian Anak-anak', 1000000, 30, 'rgb2.jpg'),
(14, 'GYM', 'DDD', 'Peralatan Olahraga', 4000000, 7, 'rgb31.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(6, 'Denny', 'JL.Simpang Gajayana', '2023-11-16 07:38:47', '2029-11-13 07:38:47'),
(7, 'Denny', 'jalan jalan', '2023-11-16 07:50:24', '2023-11-17 07:50:24'),
(8, 'Denny', 'jalan jalan', '2023-11-16 07:51:13', '2023-11-17 07:51:13'),
(9, '', '', '2023-11-16 11:54:46', '2023-11-17 11:54:46'),
(10, '', '', '2023-11-16 11:55:12', '2023-11-17 11:55:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu', 1, 300000, ''),
(2, 1, 2, 'Kamera', 1, 5900000, ''),
(3, 1, 3, 'Redmi 10 2022', 1, 2000000, ''),
(4, 1, 4, 'Laptop Asus', 1, 4700000, ''),
(5, 2, 1, 'Sepatu', 1, 300000, ''),
(6, 2, 2, 'Kamera', 2, 5900000, ''),
(7, 2, 4, 'Laptop Asus', 2, 4700000, ''),
(8, 2, 3, 'Redmi 10 2022', 1, 2000000, ''),
(9, 3, 1, 'Sepatu', 1, 300000, ''),
(10, 3, 2, 'Kamera', 1, 5900000, ''),
(11, 3, 3, 'Redmi 10 2022', 1, 2000000, ''),
(12, 3, 4, 'Laptop Asus', 1, 4700000, ''),
(13, 4, 1, 'Sepatu', 1, 300000, ''),
(14, 4, 2, 'Kamera', 2, 5900000, ''),
(15, 5, 1, 'Sepatu', 3, 300000, ''),
(16, 6, 1, 'Sepatu', 2, 300000, ''),
(17, 6, 2, 'Kamera', 1, 5900000, ''),
(18, 7, 1, 'Sepatu', 1, 300000, ''),
(19, 7, 2, 'Kamera', 1, 5900000, ''),
(20, 7, 3, 'Redmi 10 2022', 1, 2000000, ''),
(21, 7, 4, 'Laptop Asus', 1, 4700000, ''),
(22, 8, 1, 'Sepatu', 2, 300000, ''),
(23, 8, 4, 'Laptop Asus', 2, 4700000, ''),
(24, 9, 1, 'Sepatu', 1, 300000, ''),
(25, 10, 4, 'Laptop Asus', 1, 4700000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Den', 'Den', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
