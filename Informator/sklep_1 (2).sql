-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Gru 2020, 18:14
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `value` float DEFAULT NULL,
  `link` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `telephone`
--

INSERT INTO `telephone` (`id`, `name`, `value`, `link`) VALUES
(1, 'myPhone 3330 czarny', 49, 'https://images-ext-2.discordapp.net/external/37pdeBA5-VYX7HG4MMgRW5a5zZ5c4Q1IQxQy26j0Hgk/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2019/9/pr_2019_9_26_13_29_36_795_00.jpg?width=542&height=466'),
(2, 'Alcatel 2003 szary', 79, 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2018/8/pr_2018_8_9_11_45_0_157_02.jpg'),
(3, 'myPhone Halo 2 czarny', 117, 'https://images-ext-2.discordapp.net/external/HcVGGS7THPwM42Fp15Rlq9Sb4tZ_sYmO1ElT911Rbko/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2017/7/pr_2017_7_10_11_7_58_996.jpg?width=542&height=466'),
(4, 'Alcatel 30.25 niebieski', 199, 'https://images-ext-1.discordapp.net/external/qNg4KLbjaDkh2mI2tj1lEsXAwUmUbuyAsNXeu9TRZts/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2018/10/pr_2018_10_16_14_31_34_692_06.jpg?width=542&height=466'),
(5, 'Nokia 2720 Flip Dual SIM Czarny', 398, 'https://images-ext-1.discordapp.net/external/iHiJxYixrGG-jIrenLOPQXNL3pPw8o9JGQwFz9jBNWc/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2019/9/pr_2019_9_26_11_59_18_957_00.jpg?width=542&height=466'),
(6, 'Kruger&Matz Flow 7S 3/32GB Czarny', 399, 'https://images-ext-1.discordapp.net/external/1euBk6kDT3r7aSAaOsdIgd7ZcTmmf0ALcq_EVu7NVNg/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2019/12/pr_2019_12_11_11_29_7_14_05.jpg?width=542&height=466'),
(7, 'OUKITEL C17 Pro 4/64GB czerwony', 499, 'https://images-ext-1.discordapp.net/external/q7ocuIGXU6ufRSvVDoKxrpOh3m3s3WXPpOA0Jot6AEk/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2020/10/pr_2020_10_7_13_10_33_886_00.jpg?width=542&height=466'),
(8, 'Nokia 800 Tough Dual SIM Pustynny Szary', 449, 'https://images-ext-2.discordapp.net/external/cVf6LTPTQeVBi-xt6zqV6hBqIg3MIcVZATGglmygeS8/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2019/9/pr_2019_9_26_10_31_58_679_02.jpg?width=542&height=466'),
(9, 'Motorola Moto E7 Plus 4/64GB Twilight Orange', 598, 'https://images-ext-2.discordapp.net/external/4MK81fOQ4umhTAzRSXSN4sxNyLOvsvj8OP64J0nMuzs/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2020/9/pr_2020_9_14_13_38_57_285_00.jpg?width=542&height=466'),
(10, 'Samsung Galaxy M11 SM-M115F czarny', 699, 'https://images-ext-2.discordapp.net/external/IVLyvdDqx_HkeWoiR97dLRnPxFL2iptWRISpu9lBH40/https/cdn.x-kom.pl/i/setup/images/prod/big/product-new-big%2C%2C2020/9/pr_2020_9_30_11_21_1_373_06.jpg?width=542&height=466'),
(12, 'Samsung Galaxy Z Fold2 5G SM-F916B czarny', 8500, 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-large,,2020/8/pr_2020_8_27_10_55_1_618_00.jpg'),
(13, 'Kruger&Matz Move 9 2/16GB Dual SIM Czarny', 299, 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-large,,2020/1/pr_2020_1_7_12_25_19_262_02.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8_polish_ci DEFAULT NULL,
  `pass` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'kolek', '$2y$10$s9GRcJtYGNwunN.uwHA8a.smnS55Ux8VFc7JNUBkdsbFk1xU.b88S'),
(2, 'wuja', '$2y$10$fNANZay4QAAo97hV696Nz.wWjA7VZ2Dqhfni6npBw8IXk49QdMk8S'),
(3, 'gajlo', '$2y$10$pK4mj3cod7CE4oy.0BdFp.FQIBkII2gIwQsZZUGWP4/.wT/5fH13.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `telephone`
--
ALTER TABLE `telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
