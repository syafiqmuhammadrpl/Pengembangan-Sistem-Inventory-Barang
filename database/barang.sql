-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2024 pada 17.11
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmbarang`
--

CREATE TABLE `tmbarang` (
  `id` int(11) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_model` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `spesifikasi` varchar(50) NOT NULL,
  `peruntukan` varchar(20) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tmbarang`
--

INSERT INTO `tmbarang` (`id`, `merk`, `nama`, `id_model`, `unit`, `spesifikasi`, `peruntukan`, `id_client`) VALUES
(1, 'Dell', 'Dell Inspiron 15', 1, 4, 'Charger', 'RF', 1),
(2, 'Lenovo', 'Lenovo ThinkPad X220', 2, 5, 'Charger', 'AOVA', 2),
(3, 'Canon', 'Canon EOS 90D', 3, 6, 'Charger', 'AOVA', 3),
(4, 'Samsung', 'Samsung QLED 65\"', 4, 12, 'Remote', 'RF', 4),
(5, 'Mohu', 'Mohu Leaf 50', 5, 20, '-', 'RF', 5),
(9, 'DJI', 'DJI Mavic Air 2', 9, 5, 'Charger', 'RF', 6),
(10, 'Epson', 'Epson EB-S41', 10, 8, 'Remote', 'AOVA', 7),
(11, 'HP', 'HP LaserJet Pro MFP', 11, 10, 'Cartridge', 'RF', 8),
(12, 'Apple', 'iPad Pro 12.9', 12, 12, 'Charger', 'AOVA', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmclient`
--

CREATE TABLE `tmclient` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tmclient`
--

INSERT INTO `tmclient` (`id`, `kode`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'C001', 'Sharp Nyata', 'Bekasi', '081312345675'),
(2, 'C002', 'Shinkansen', 'Cianjur', '08826578833'),
(3, 'C003', 'Luxemburg Andi', 'Bogor', '081276678889'),
(4, 'C004', 'Guine Lexus', 'Tegal', '085866673344'),
(5, 'C005', 'Hensen Lawliet', 'Bekasi', '081244446464'),
(6, 'C006', 'Olivia Asmarini', 'Jakarta', '081298765432 '),
(7, 'C007 ', 'Dewa Mahendra', 'Surabaya', '082134567890'),
(8, 'C008', 'Rizka Wardani', 'Bandung', '081334455667'),
(9, 'C009', 'Anton Wijaya', 'Semarang', '083245678912'),
(10, 'C010', 'Sari Indah', 'Malang', '082167889900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmmodel`
--

CREATE TABLE `tmmodel` (
  `id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `no_rak` varchar(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tmmodel`
--

INSERT INTO `tmmodel` (`id`, `model`, `no_rak`, `lokasi`) VALUES
(1, 'Laptop', 'A12', 'Gudang A'),
(2, 'Notebook', 'B07', 'Gudang B'),
(3, 'Camera', 'C03', 'Gudang C'),
(4, 'Smart TV', 'A09', 'Gudang A'),
(5, 'Antenna', 'D14', 'Gudang D'),
(6, 'Smart Watch', 'C09', 'Gudang C'),
(9, 'Drone', 'E01', 'Gudang E'),
(10, 'Projector', 'F02', 'Gudang F'),
(11, 'Printer', 'G03', 'Gudang G'),
(12, 'Tablet', 'H04', 'Gudang H');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmpetugas`
--

CREATE TABLE `tmpetugas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tmpetugas`
--

INSERT INTO `tmpetugas` (`id`, `nama`, `username`, `password`, `status`) VALUES
(2, 'Syafiq Muhammad', 'syafiq', '$2a$10$YvIBHOMoQ4oD9ru582zCc.NHBarLLB1i/nfGqKsRJ7zgerr/LMQXm', 'aktif'),
(9, 'khusnia', 'khusniadwi', '$2a$10$/BZeM.SWtRWSiBlFjl8nCepG.ovwql30Ee668G1gSNVt/WM6rh3jm', 'aktif'),
(11, 'Rio Ananda', 'rionakgaul', '1234', 'aktif'),
(12, 'Vira Maryam', 'vira822', '1234', 'aktif'),
(13, 'Luqman Nurhakim Al Azziz', 'luqmangaming', '1234', 'aktif'),
(14, 'Muhammad Imam Fardiansyah', 'mamm', '1234', 'aktif'),
(15, 'Boy Adilkan Zai', 'siBoy', '1234', 'aktif'),
(16, 'Zaidul Sudin', 'Zaidin', '1234', 'nonaktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trbarang_keluar`
--

CREATE TABLE `trbarang_keluar` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `status_barang_keluar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `trbarang_keluar`
--

INSERT INTO `trbarang_keluar` (`id`, `tgl`, `id_client`, `status_barang_keluar`) VALUES
(42, '2024-07-25', 5, 'Lab'),
(43, '2024-07-25', 4, 'Gudang'),
(44, '2024-07-29', 1, 'Ke Lab'),
(45, '2024-07-29', 2, 'Ke Kantor'),
(46, '2024-07-29', 3, 'Ke Kantor'),
(47, '2024-07-29', 9, 'Ke Lab'),
(48, '2024-07-29', 10, 'Ke Lab'),
(49, '2024-07-29', 11, 'Ke Lab'),
(50, '2024-07-29', 12, 'Ke Lab'),
(51, '2024-07-29', 13, 'Kembali ke Client'),
(52, '2024-07-29', 13, 'Kembali ke Client'),
(53, '2024-07-29', 5, 'Kembali ke Client'),
(54, '2024-07-29', 13, 'Kembali Ke Client');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trbarang_keluar_detail`
--

CREATE TABLE `trbarang_keluar_detail` (
  `id` int(11) NOT NULL,
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `trbarang_keluar_detail`
--

INSERT INTO `trbarang_keluar_detail` (`id`, `id_barang_keluar`, `id_barang`, `jumlah`) VALUES
(48, 42, 5, 4),
(49, 43, 4, 2),
(50, 44, 1, 2),
(51, 45, 2, 2),
(52, 46, 3, 1),
(53, 47, 9, 1),
(54, 48, 10, 2),
(55, 49, 11, 1),
(56, 50, 12, 1),
(57, 51, 13, 2),
(58, 52, 13, 1),
(59, 53, 5, 2),
(60, 54, 13, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trbarang_masuk`
--

CREATE TABLE `trbarang_masuk` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `status_barang_masuk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `trbarang_masuk`
--

INSERT INTO `trbarang_masuk` (`id`, `tgl`, `id_client`, `status_barang_masuk`) VALUES
(46, '2024-07-24', 5, 'Ke Gudang'),
(47, '2024-07-24', 4, 'Kembali dari Lab'),
(48, '2024-07-29', 1, 'Ke Gudang'),
(49, '2024-07-29', 2, 'Kembali dari Lab'),
(50, '2024-07-29', 3, 'Kembali dari Lab'),
(51, '2024-07-29', 9, 'Ke Gudang'),
(52, '2024-07-29', 10, 'Kembali dari Lab'),
(53, '2024-07-29', 11, 'Ke Gudang'),
(54, '2024-07-29', 13, 'Ke Gudang'),
(55, '2024-07-29', 12, 'Kembali dari Lab'),
(56, '2024-07-29', 3, 'Ke Gudang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trbarang_masuk_detail`
--

CREATE TABLE `trbarang_masuk_detail` (
  `id` int(11) NOT NULL,
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `trbarang_masuk_detail`
--

INSERT INTO `trbarang_masuk_detail` (`id`, `id_barang_masuk`, `id_barang`, `jumlah`) VALUES
(65, 46, 5, 4),
(66, 47, 4, 2),
(67, 48, 1, 2),
(68, 49, 2, 4),
(69, 50, 3, 4),
(70, 51, 9, 1),
(71, 52, 10, 2),
(72, 53, 11, 1),
(73, 54, 13, 2),
(74, 55, 12, 1),
(75, 56, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myKey` (`id_model`),
  ADD KEY `id_client` (`id_client`);

--
-- Indeks untuk tabel `tmclient`
--
ALTER TABLE `tmclient`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tmmodel`
--
ALTER TABLE `tmmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tmpetugas`
--
ALTER TABLE `tmpetugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tmbarang`
--
ALTER TABLE `tmbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tmclient`
--
ALTER TABLE `tmclient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tmmodel`
--
ALTER TABLE `tmmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tmpetugas`
--
ALTER TABLE `tmpetugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD CONSTRAINT `myKey` FOREIGN KEY (`id_model`) REFERENCES `tmmodel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmbarang_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `tmclient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
