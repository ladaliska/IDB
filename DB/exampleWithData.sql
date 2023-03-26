-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 26. bře 2023, 20:01
-- Verze serveru: 10.4.27-MariaDB
-- Verze PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `example`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `interpret`
--

CREATE TABLE `interpret` (
  `id` int(10) UNSIGNED NOT NULL,
  `Username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `interpret`
--

INSERT INTO `interpret` (`id`, `Username`) VALUES
(3, 'Different Heaven'),
(2, 'Rick Astley'),
(1, 'The Plot In You');

-- --------------------------------------------------------

--
-- Struktura tabulky `song`
--

CREATE TABLE `song` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Interpret_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `song`
--

INSERT INTO `song` (`id`, `Name`, `Interpret_id`) VALUES
(1, 'FEEL NOTHING', 1),
(2, 'Never Gonna Give You Up', 2),
(3, 'Feel Like Horrible', 3),
(5, 'My Heart', 3);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `interpret`
--
ALTER TABLE `interpret`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `Username_UNIQUE` (`Username`);

--
-- Indexy pro tabulku `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idSong_UNIQUE` (`id`),
  ADD KEY `fk_Song_Interpret_idx` (`Interpret_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `interpret`
--
ALTER TABLE `interpret`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `song`
--
ALTER TABLE `song`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk_Song_Interpret` FOREIGN KEY (`Interpret_id`) REFERENCES `interpret` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
