-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 sep 2021 om 13:15
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelplaneet`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `planets`
--

CREATE TABLE `planets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `planets`
--

INSERT INTO `planets` (`id`, `name`, `description`) VALUES
(1, 'mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury'),
(2, 'venus', 'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty'),
(3, 'earth', 'Our home planet is the third planet from the Sun, and the only place we know of so far thats inhabited by living things.');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `planets`
--
ALTER TABLE `planets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `planets`
--
ALTER TABLE `planets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
