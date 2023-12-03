-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 05.53
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata_violin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata_agama`
--

CREATE TABLE `biodata_agama` (
  `id` int(10) NOT NULL,
  `nm_agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biodata_agama`
--

INSERT INTO `biodata_agama` (`id`, `nm_agama`) VALUES
(1, 'kristen'),
(3, 'cina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata_kelas`
--

CREATE TABLE `biodata_kelas` (
  `id` int(10) NOT NULL,
  `kelas` int(10) NOT NULL,
  `kompetensi` varchar(100) NOT NULL,
  `tahun_pelajaran` int(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biodata_kelas`
--

INSERT INTO `biodata_kelas` (`id`, `kelas`, `kompetensi`, `tahun_pelajaran`, `keterangan`) VALUES
(1, 11, 'Rekayasa Perangkat Lunak', 2020, 'kelas 11 rpl tahun 2023'),
(3, 11, 'rpl', 2030, 'smk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata_siswa`
--

CREATE TABLE `biodata_siswa` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tplahir` varchar(50) NOT NULL,
  `tglahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hobi` varchar(255) NOT NULL,
  `cita_cita` varchar(100) NOT NULL,
  `jm_saudara` int(10) NOT NULL,
  `idkelas` int(10) NOT NULL,
  `idagama` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biodata_siswa`
--

INSERT INTO `biodata_siswa` (`id`, `nama`, `tplahir`, `tglahir`, `alamat`, `hobi`, `cita_cita`, `jm_saudara`, `idkelas`, `idagama`) VALUES
(1, 'violin', 'malang', '2007-03-21', 'perum niwen', 'berenang', 'pegawai perusahaan', 4, 1, 1),
(9, 'mirna', 'kediri', '2007-03-26', 'wagir', 'membaca', 'guru', 3, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata_agama`
--
ALTER TABLE `biodata_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `biodata_kelas`
--
ALTER TABLE `biodata_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata_agama`
--
ALTER TABLE `biodata_agama`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `biodata_kelas`
--
ALTER TABLE `biodata_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
