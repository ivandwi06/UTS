-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2023 pada 05.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allocate`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `project_case` varchar(255) COLLATE utf8_bin NOT NULL,
  `project_level` varchar(50) COLLATE utf8_bin NOT NULL,
  `allocation` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id`, `project_name`, `project_case`, `project_level`, `allocation`) VALUES
(1, 'Design and Implementation of Loan disbursement system', 'A case study of GT Bank Plc', 'HND', 1),
(5, 'Loan saving system', 'Guiness Nigeria', 'HND', 1),
(7, 'Bank ATM System', 'Diamond Bank', 'HND', 1),
(6, 'Login Registration System', 'Guiness Nigeria', 'ND', 1),
(8, 'Student Project Allocation and Management System', 'A case study of The Polytechnic,Ibadan', 'HND', 1),
(9, 'Inventory System', 'XYZ limited', 'ND', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `department` varchar(50) COLLATE utf8_bin NOT NULL,
  `level` varchar(50) COLLATE utf8_bin NOT NULL,
  `matric` varchar(50) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`id`, `name`, `department`, `level`, `matric`, `date`, `project_id`) VALUES
(3, 'Omolewa Stephen', 'Computer Studies', 'ND 2', '2014235020038', '2023-05-03', 7),
(2, 'Ayub Lekan', 'Computer Studies', 'HND 2', '2014235020036', '2023-05-03', 5),
(4, 'Ade', 'Mechanical Eng', 'HND 1', '2014235020050', '2023-05-03', 1),
(5, 'Demo', 'Civil Engineering', 'ND', '2014235020039', '2023-05-03', 8),
(6, 'Ayobami', 'Slt', 'ND 3', '2014235020031', '2023-05-03', 6),
(7, 'Omolewa ', 'Slt', 'ND 2', '2014235020033', '2023-05-03', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
