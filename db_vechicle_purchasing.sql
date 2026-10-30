-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 17.15
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pnjlan_mbl_bks`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_bakar`
--

CREATE TABLE `bahan_bakar` (
  `ID_bahan_bakar` char(4) NOT NULL,
  `nm_bahan_bakar` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bahan_bakar`
--

INSERT INTO `bahan_bakar` (`ID_bahan_bakar`, `nm_bahan_bakar`) VALUES
('BB01', 'Bensin'),
('BB02', 'Hybrid'),
('BB03', 'Diesel'),
('BB04', 'Listrik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `garansi`
--

CREATE TABLE `garansi` (
  `ID_garansi` char(4) NOT NULL,
  `lama_garansi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `garansi`
--

INSERT INTO `garansi` (`ID_garansi`, `lama_garansi`) VALUES
('GR00', ' 0 Bulan'),
('GR01', ' 1 Bulan'),
('GR02', ' 2 Bulan'),
('GR03', ' 3 Bulan'),
('GR04', ' 4 Bulan'),
('GR05', ' 5 Bulan'),
('GR06', ' 6 Bulan'),
('GR07', ' 7 Bulan'),
('GR08', ' 8 Bulan'),
('GR09', ' 9 Bulan'),
('GR10', ' 10 Bulan'),
('GR11', ' 11 Bulan'),
('GR12', ' 12 Bulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `ID_jns_kelamin` char(1) NOT NULL,
  `Jns_kelamin` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`ID_jns_kelamin`, `Jns_kelamin`) VALUES
('0', 'P'),
('1', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_mobil`
--

CREATE TABLE `jenis_mobil` (
  `ID_jenis_mobil` char(3) NOT NULL,
  `jenis_mobil` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_mobil`
--

INSERT INTO `jenis_mobil` (`ID_jenis_mobil`, `jenis_mobil`) VALUES
('JM1', 'MPV'),
('JM2', 'SUV'),
('JM3', 'Crossover'),
('JM4', 'Hatchback'),
('JM5', 'Minivan'),
('JM6', 'Coupe'),
('JM7', 'Van');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kilometer`
--

CREATE TABLE `kilometer` (
  `ID_kilometer` char(4) NOT NULL,
  `kilometer` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kilometer`
--

INSERT INTO `kilometer` (`ID_kilometer`, `kilometer`) VALUES
('KM01', '1.000'),
('KM02', '2.000'),
('KM03', '3.000'),
('KM04', '4.000'),
('KM05', '5.000'),
('KM06', '6.000'),
('KM07', '7.000'),
('KM08', '8.000'),
('KM09', '9.000'),
('KM10', '10.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `ID_merek` char(4) NOT NULL,
  `nm_merek` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`ID_merek`, `nm_merek`) VALUES
('MR01', 'Toyota'),
('MR02', 'Daihatsu'),
('MR03', 'Honda'),
('MR04', 'Mitsubishi'),
('MR05', 'Suzuki'),
('MR06', 'Nissan'),
('MR07', 'Datsun'),
('MR08', 'BMW'),
('MR09', 'Isuzu'),
('MR10', 'Mercedes Benz'),
('MR11', 'Hyundai'),
('MR12', 'Maserati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `ID_mobil` char(4) NOT NULL,
  `ID_merek` char(4) DEFAULT NULL,
  `ID_model` char(4) DEFAULT NULL,
  `ID_warna` char(3) DEFAULT NULL,
  `ID_varian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`ID_mobil`, `ID_merek`, `ID_model`, `ID_warna`, `ID_varian`) VALUES
('MB01', 'MR01', 'MD01', 'C01', 1),
('MB02', 'MR01', 'MD02', 'C04', 2),
('MB03', 'MR02', 'MD03', 'C01', 3),
('MB04', 'MR02', 'MD04', 'C01', 4),
('MB05', 'MR05', 'MD10', 'C00', 5),
('MB06', 'MR03', 'MD06', 'C04', 6),
('MB07', 'MR03', 'MD07', 'C02', 7),
('MB08', 'MR03', 'MD05', 'C05', 8),
('MB09', 'MR03', 'MD06', 'C07', 9),
('MB10', 'MR03', 'MD07', 'C07', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model`
--

CREATE TABLE `model` (
  `ID_model` char(4) NOT NULL,
  `nm_model` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `model`
--

INSERT INTO `model` (`ID_model`, `nm_model`) VALUES
('MD01', 'Alphard'),
('MD02', 'Agya'),
('MD03', 'Ayla'),
('MD04', 'Sigra'),
('MD05', 'Jazz'),
('MD06', 'Brio'),
('MD07', 'CR-V'),
('MD08', 'Pajero'),
('MD09', 'Pick-Up'),
('MD10', 'Carry'),
('MD11', 'Oddysey'),
('MD12', 'Tucson');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `ID_pembeli` int(5) UNSIGNED ZEROFILL NOT NULL,
  `Nm_pembeli` varchar(30) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `Jns_kelamin` char(1) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_Hp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`ID_pembeli`, `Nm_pembeli`, `Tgl_lahir`, `Jns_kelamin`, `Alamat`, `No_Hp`) VALUES
(00001, 'Rini Armiyati', '1968-04-11', 'P', 'Jambi', 81111111111),
(00002, 'Azli', '1968-06-10', 'L', 'Jambi', 82222222222),
(00003, ' Muhammad Hadori', '1999-06-01', 'L', 'Jambi', 83333333333),
(00004, 'Meylani Karlina ', '2002-05-15', 'P', 'Jambi', 84444444444),
(00005, 'Annisa Salshabila', '1990-04-17', 'P', 'Riau', 85555555555),
(00006, 'Noval Azzam', '1994-12-12', 'L', 'Padang', 86666666666),
(00007, 'Mughni Jayadi', '1979-11-28', 'L', 'Bengkulu', 87777777777),
(00008, 'Ibnu Haryadi', '1959-09-18', 'L', 'Aceh', 88888888888),
(00009, 'Soleh Tri', '1983-01-22', 'L', 'Medan', 89999999999),
(00010, 'Lato Kato', '1972-07-20', 'L', 'Papua', 81010101010),
(00011, 'Ryu', '2000-08-17', 'L', 'Lampung', 81212121212);

-- --------------------------------------------------------

--
-- Struktur dari tabel `plat_mobil`
--

CREATE TABLE `plat_mobil` (
  `ID_plat_mobil` int(2) NOT NULL,
  `kode_plat_mobil` char(3) DEFAULT NULL,
  `wilayah` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `plat_mobil`
--

INSERT INTO `plat_mobil` (`ID_plat_mobil`, `kode_plat_mobil`, `wilayah`) VALUES
(1, 'BA', 'Sumatera Barat'),
(2, 'BB', 'Sumatera Utara'),
(3, 'BD', 'Bengkulu'),
(4, 'BE', 'Lampung'),
(5, 'BG', 'Sumatera Selatan'),
(6, 'BH', 'Jambi'),
(7, 'BK', 'Sumatera Utara'),
(8, 'BL', 'Aceh'),
(9, 'BM', 'Riau'),
(10, 'BN', 'Bangka Belitung'),
(11, 'BP', 'Kepulauan Riau');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesifikasi_mobil`
--

CREATE TABLE `spesifikasi_mobil` (
  `ID_speksifikasi_mobil` char(4) DEFAULT NULL,
  `ID_mobil` char(4) NOT NULL,
  `ID_jenis_mobil` char(3) DEFAULT NULL,
  `ID_tahun` year(4) DEFAULT NULL,
  `ID_transmisi` char(4) DEFAULT NULL,
  `ID_kilometer` char(4) DEFAULT NULL,
  `ID_bahan_bakar` char(4) DEFAULT NULL,
  `ID_plat_mobil` int(11) DEFAULT NULL,
  `ID_status_pajak` int(11) DEFAULT NULL,
  `Masa_pajak` date DEFAULT NULL,
  `ID_garansi` char(4) DEFAULT NULL,
  `Kapasitas_kursi` int(11) DEFAULT NULL,
  `Kondisi` text DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spesifikasi_mobil`
--

INSERT INTO `spesifikasi_mobil` (`ID_speksifikasi_mobil`, `ID_mobil`, `ID_jenis_mobil`, `ID_tahun`, `ID_transmisi`, `ID_kilometer`, `ID_bahan_bakar`, `ID_plat_mobil`, `ID_status_pajak`, `Masa_pajak`, `ID_garansi`, `Kapasitas_kursi`, `Kondisi`, `Harga`) VALUES
('SM01', 'MB01', 'JM1', 0000, 'Auto', 'KM10', 'BB04', 1, 2, '0000-00-00', 'GR06', 7, 'Baik', 334000000),
('SM02', 'MB02', 'JM2', 0000, 'Manu', 'KM01', 'BB01', 2, 2, '0000-00-00', 'GR06', 5, 'Baik', 135000000),
('SM03', 'MB03', 'JM1', 0000, 'Manu', 'KM07', 'BB01', 4, 2, '0000-00-00', 'GR08', 5, 'Kaca Depan Gores', 60000000),
('SM04', 'MB04', 'JM2', 0000, 'Manu', 'KM08', 'BB04', 4, 2, '0000-00-00', 'GR10', 7, 'Kaca Depan Gores', 117000000),
('SM05', 'MB05', 'JM3', 0000, 'Auto', 'KM01', 'BB01', 1, 2, '0000-00-00', 'GR03', 2, 'Baik', 110000000),
('SM06', 'MB06', 'JM4', 0000, 'Manu', 'KM05', 'BB01', 1, 2, '0000-00-00', 'GR05', 5, 'AC Rusak', 60000000),
('SM07', 'MB07', 'JM5', 0000, 'Auto', 'KM09', 'BB01', 7, 2, '0000-00-00', 'GR05', 7, 'Baik', 200000000),
('SM08', 'MB08', 'JM6', 0000, 'Auto', 'KM03', 'BB03', 3, 2, '0000-00-00', 'GR06', 6, 'Baik', 218000000),
('SM09', 'MB09', 'JM7', 0000, 'Manu', 'KM05', 'BB01', 3, 1, '0000-00-00', 'GR00', 5, 'Baik', 47000000),
('SM10', 'MB10', 'JM7', 0000, 'Auto', 'KM09', 'BB02', 4, 1, '0000-00-00', 'GR01', 7, 'Baik', 100000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pajak`
--

CREATE TABLE `status_pajak` (
  `ID_status_pajak` int(1) NOT NULL,
  `status_pajak` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pajak`
--

INSERT INTO `status_pajak` (`ID_status_pajak`, `status_pajak`) VALUES
(1, 'Mati'),
(2, 'Hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_produksi`
--

CREATE TABLE `tahun_produksi` (
  `ID_tahun_produksi` char(4) NOT NULL,
  `tahun_produksi` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_produksi`
--

INSERT INTO `tahun_produksi` (`ID_tahun_produksi`, `tahun_produksi`) VALUES
('TH10', 2010),
('TH11', 2011),
('TH12', 2012),
('TH13', 2013),
('TH14', 2014),
('TH15', 2015),
('TH16', 2016),
('TH17', 2017),
('TH18', 2018),
('TH19', 2019),
('TH20', 2020),
('TH21', 2021),
('TH22', 2022);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembeli`
--

CREATE TABLE `transaksi_pembeli` (
  `ID_transaksi_pembeli` int(5) NOT NULL,
  `ID_pembeli` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `ID_mobil` char(4) DEFAULT NULL,
  `Tgl_beli` date DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_pembeli`
--

INSERT INTO `transaksi_pembeli` (`ID_transaksi_pembeli`, `ID_pembeli`, `ID_mobil`, `Tgl_beli`, `Jumlah`) VALUES
(1, 00001, 'MB01', '2015-01-08', 1),
(2, 00003, 'MB02', '2016-07-28', 2),
(3, 00007, 'MB01', '2016-07-28', 2),
(4, 00005, 'MB07', '2016-09-12', 1),
(5, 00008, 'MB10', '2017-10-11', 1),
(6, 00004, 'MB10', '2017-10-23', 2),
(7, 00002, 'MB05', '2018-02-18', 1),
(8, 00006, 'MB03', '2018-06-17', 1),
(9, 00009, 'MB01', '2019-01-01', 1),
(10, 00010, 'MB09', '2023-01-10', 1),
(11, 00002, 'MB01', '2023-01-12', 1),
(12, 00001, 'MB04', '2023-01-15', 1),
(13, 00011, 'MB08', '2023-01-15', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transmisi`
--

CREATE TABLE `transmisi` (
  `ID_transmisi` varchar(4) NOT NULL,
  `nm_ransmisi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transmisi`
--

INSERT INTO `transmisi` (`ID_transmisi`, `nm_ransmisi`) VALUES
('Auto', 'Otomatis'),
('Manu', 'Manual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `varian`
--

CREATE TABLE `varian` (
  `ID_varian` int(11) NOT NULL,
  `nm_varian` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `varian`
--

INSERT INTO `varian` (`ID_varian`, `nm_varian`) VALUES
(1, '2.5 G A/T'),
(2, '1.2L G M/T'),
(3, '1.0 X'),
(4, '1.2 R Deluxe'),
(5, '1.5L PU FLAT DECK'),
(6, '2.4 Prestige'),
(7, '1.5 RS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warna`
--

CREATE TABLE `warna` (
  `ID_warna` char(3) NOT NULL,
  `warna` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `warna`
--

INSERT INTO `warna` (`ID_warna`, `warna`) VALUES
('C00', 'Putih'),
('C01', 'Hitam'),
('C02', 'Silver'),
('C03', 'Abu-Abu'),
('C04', 'Merah'),
('C05', 'Kuning');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan_bakar`
--
ALTER TABLE `bahan_bakar`
  ADD PRIMARY KEY (`ID_bahan_bakar`);

--
-- Indeks untuk tabel `garansi`
--
ALTER TABLE `garansi`
  ADD PRIMARY KEY (`ID_garansi`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`ID_jns_kelamin`);

--
-- Indeks untuk tabel `jenis_mobil`
--
ALTER TABLE `jenis_mobil`
  ADD PRIMARY KEY (`ID_jenis_mobil`);

--
-- Indeks untuk tabel `kilometer`
--
ALTER TABLE `kilometer`
  ADD PRIMARY KEY (`ID_kilometer`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`ID_merek`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`ID_mobil`);

--
-- Indeks untuk tabel `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ID_model`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`ID_pembeli`);

--
-- Indeks untuk tabel `plat_mobil`
--
ALTER TABLE `plat_mobil`
  ADD PRIMARY KEY (`ID_plat_mobil`);

--
-- Indeks untuk tabel `spesifikasi_mobil`
--
ALTER TABLE `spesifikasi_mobil`
  ADD PRIMARY KEY (`ID_mobil`);

--
-- Indeks untuk tabel `status_pajak`
--
ALTER TABLE `status_pajak`
  ADD PRIMARY KEY (`ID_status_pajak`);

--
-- Indeks untuk tabel `tahun_produksi`
--
ALTER TABLE `tahun_produksi`
  ADD PRIMARY KEY (`ID_tahun_produksi`);

--
-- Indeks untuk tabel `transaksi_pembeli`
--
ALTER TABLE `transaksi_pembeli`
  ADD PRIMARY KEY (`ID_transaksi_pembeli`);

--
-- Indeks untuk tabel `transmisi`
--
ALTER TABLE `transmisi`
  ADD PRIMARY KEY (`ID_transmisi`);

--
-- Indeks untuk tabel `varian`
--
ALTER TABLE `varian`
  ADD PRIMARY KEY (`ID_varian`);

--
-- Indeks untuk tabel `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`ID_warna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `ID_pembeli` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `plat_mobil`
--
ALTER TABLE `plat_mobil`
  MODIFY `ID_plat_mobil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `status_pajak`
--
ALTER TABLE `status_pajak`
  MODIFY `ID_status_pajak` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pembeli`
--
ALTER TABLE `transaksi_pembeli`
  MODIFY `ID_transaksi_pembeli` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `varian`
--
ALTER TABLE `varian`
  MODIFY `ID_varian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
