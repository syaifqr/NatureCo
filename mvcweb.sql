-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2021 pada 16.46
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
-- Database: `mvcweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `uploader` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `url_address`, `title`, `image`, `description`, `uploader`, `date`) VALUES
(4, 'k7HDZ3so2BSBc', 'title', 'uploads/fabian-quintero-UWQP2mh5YJI-unsplash.jpg', 'so nice', 'Syaiful', '2021-06-16 08:10:36'),
(5, 'EPIARIDJtmVw', 'title2', 'uploads/rizknas-tqvF1JXzOxs-unsplash.jpg', 'Pulau Kelapa', 'Syaiful', '2021-06-16 10:34:12'),
(6, 'LFX45rX2tmyJfmZtekuYgN8pp1w66ZAMDSOXJiYLz9G29ng', 'title3', 'uploads/kitera-dent-ABBblFwicU8-unsplash.jpg', 'Enjoy the travel', 'Syaiful', '2021-06-16 10:35:02'),
(7, 'ZPzMGKR', 'Mount Everest', 'uploads/fernando-meloni-j_gnGCDQRew-unsplash.jpg', 'Mount Everest is the highest mount in the world.', 'Syaiful', '2021-06-16 10:57:32'),
(8, 'IbLLT4fAj', 'Kuta beach', 'uploads/vlad-dyshlivenko-Q-zBBEorK2A-unsplash.jpg', 'Kuta beach is a famous beach in Bali island.', 'Syaiful', '2021-06-16 11:03:28'),
(9, 'FQHxRKovmavDqpyh649zcu7xLSQhgAxHb4UNouqRdIRdFvHTiTrWmPx5sFm1', 'Wano Kuni', 'uploads/kyrylo-kholopkin-BrYFDKBJrjE-unsplash.jpg', 'This is the best place.', 'Aris', '2021-06-16 11:56:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `email`, `name`, `subject`, `message`, `date`) VALUES
(1, 'syaifqr@gmail.com', 'Syaiful Qomaruddin', 'aaaa', 'this is good', '2021-06-16 12:57:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `userid` bigint(20) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`userid`, `url_address`, `username`, `password`, `email`, `date`) VALUES
(2, '8p5ZAXgexlcGkvwp5dopxAEt3NMx1QsRKGrQuIFFOFn0', 'Syaiful', 'syaif', 'syaifqr@gmail.com', '2021-06-15 21:47:45'),
(3, 'eMQnoVZgjCL1kEtKJPDLhfBbsekO1lfHuLJ', 'pherdiiy', '123', 'alexqomar2@gmail.com', '2021-06-15 22:30:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `title` (`title`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `userid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
