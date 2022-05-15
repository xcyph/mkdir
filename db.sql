-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 mei 2022 om 21:24
-- Serverversie: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- PHP-versie: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `84648_database`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `booking`
--

CREATE TABLE `booking` (
                           `id` int(11) NOT NULL,
                           `customer_id` int(11) NOT NULL,
                           `name` varchar(40) NOT NULL,
                           `email` varchar(40) NOT NULL,
                           `date` date NOT NULL,
                           `timeslot` varchar(255) NOT NULL,
                           `employeeName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `booking`
--

INSERT INTO `booking` (`id`, `customer_id`, `name`, `email`, `date`, `timeslot`, `employeeName`) VALUES
                                                                                                     (50, 20, 'sarah', 'sitb@gmail.com', '2022-04-20', '13:00 - 13:30 ', 6),
                                                                                                     (51, 21, 'Je_Oma', 'jeomanietjemoeder@gmail.com', '2022-04-21', '09:00 - 09:30 ', 3),
                                                                                                     (52, 22, 'Je_Opa', 'jeopanietjevader@gmail.com', '2022-04-21', '09:30 - 10:00 ', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
--

CREATE TABLE `customer` (
                            `id` int(11) NOT NULL,
                            `username` varchar(350) NOT NULL,
                            `lastname` varchar(350) NOT NULL,
                            `email` varchar(350) NOT NULL,
                            `password` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`id`, `username`, `lastname`, `email`, `password`) VALUES
                                                                               (20, 'Sarah', 'Teixeira', 'sitb@gmail.es', '$2y$10$UJagQAYLb0T3Dvp2ksJtvuECLeIkbOQmrIwP6LDrKv.U.IATGsoXq'),
                                                                               (21, 'Je_Oma', 'Niet Je Moeder', 'jeomanietjemoeder@gmail.com', '$2y$10$LIMPWwK7G2z17FwDGtkoyu.0NX7ggCYO6vfYOSx/usH8S53cxz1D6'),
                                                                               (22, 'Je_Opa', 'Niet je vader', 'jeopanietjevader@gmail.com', '$2y$10$t7BF7.i/B8kQpDXoWc0nO.PINfFIr4Twp/GJB1nGlUg4UM9BP6vua'),
                                                                               (24, 'xcyph', 'teixeira', '84648@glr.nl', '$2y$10$VWFQWHx2AWv9zhmq2qzwguA9WRPfOs9wgqtwtEwztTgvjx798qM8S'),
                                                                               (25, 'Hoelle', 'Loke Lim', 'LokeLim@gmail.com', '$2y$10$KfXL.AvnxTqWdNFUUf/DFOqf7bllvNKI4QWK8Zio9hDhsrCgDz9T6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
                             `id` int(11) NOT NULL,
                             `name` varchar(40) NOT NULL,
                             `email` varchar(40) NOT NULL,
                             `date` date NOT NULL,
                             `timeslot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `employee`
--

CREATE TABLE `employee` (
                            `id` int(11) NOT NULL,
                            `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `employee`
--

INSERT INTO `employee` (`id`, `name`) VALUES
                                          (1, 'Samatha'),
                                          (2, 'Coen'),
                                          (3, 'Sarah'),
                                          (4, 'Damian'),
                                          (6, 'Claudia');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `employees`
--

CREATE TABLE `employees` (
                             `id` int(11) NOT NULL,
                             `name` varchar(100) NOT NULL,
                             `address` varchar(255) NOT NULL,
                             `salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`) VALUES
                                                                (1, 'Sarah', 'Nieuwe binnenweg', 52000),
                                                                (3, 'Ingrid', 'No where but here', 100),
                                                                (4, 'Xcyph', 'Somewhere in the Netherlands', 19000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Employees`
--

CREATE TABLE `Employees` (
                             `id` int(6) NOT NULL,
                             `Name` varchar(30) NOT NULL,
                             `Surname` varchar(80) NOT NULL,
                             `email` varchar(50) DEFAULT NULL,
                             `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `Employees`
--

INSERT INTO `Employees` (`id`, `Name`, `Surname`, `email`, `phone`) VALUES
    (1, 'Xcyph', 'xcyph', 'xcyph@email.com', '0130456985');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
                              `id` int(11) NOT NULL,
                              `name` varchar(255) NOT NULL,
                              `email` varchar(255) NOT NULL,
                              `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `name`, `email`, `password`) VALUES
                                                                 (1, 'Sarah', 'sarah@thedarecompany.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
                                                                 (2, 'Ingrid', 'ingrid@glr.nl', '906072001efddf3e11e6d2b5782f4777fe038739'),
                                                                 (3, 'Admin', 'admin@glr.nl', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
                                                                 (4, 'Anoniem', 'noreply@glr.nl', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
                                                                 (5, 'League', 'lol@glr.nl', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
                                                                 (6, '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_enquete_antwoord`
--

CREATE TABLE `glr_enquete_antwoord` (
                                        `id` int(11) NOT NULL,
                                        `student_id` int(11) NOT NULL,
                                        `vraag_id` int(11) NOT NULL,
                                        `antwoord` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_enquete_antwoord`
--

INSERT INTO `glr_enquete_antwoord` (`id`, `student_id`, `vraag_id`, `antwoord`) VALUES
                                                                                    (1, 1, 1, '5km'),
                                                                                    (2, 1, 2, '15min'),
                                                                                    (3, 1, 6, 'Nee'),
                                                                                    (4, 2, 1, '15'),
                                                                                    (5, 2, 2, '30'),
                                                                                    (6, 2, 6, 'Ja, school is kut'),
                                                                                    (7, 4, 1, '15km'),
                                                                                    (8, 4, 2, '30'),
                                                                                    (9, 4, 3, 'Trein'),
                                                                                    (10, 4, 4, 'Te'),
                                                                                    (11, 4, 5, 'Te'),
                                                                                    (12, 4, 6, 'nee'),
                                                                                    (13, 4, 1, '15'),
                                                                                    (14, 4, 2, '30'),
                                                                                    (15, 4, 3, 'Trein'),
                                                                                    (16, 4, 4, 'Te vroeg'),
                                                                                    (17, 4, 5, 'Te laat'),
                                                                                    (18, 4, 6, 'mop'),
                                                                                    (19, 5, 1, '12'),
                                                                                    (20, 5, 2, '12'),
                                                                                    (21, 5, 3, ''),
                                                                                    (22, 5, 6, 'nee'),
                                                                                    (23, 7, 1, '10'),
                                                                                    (24, 7, 2, '60'),
                                                                                    (25, 7, 3, 'Lopend'),
                                                                                    (26, 7, 4, 'Te vroeg'),
                                                                                    (27, 7, 5, 'Te laat'),
                                                                                    (28, 7, 6, 'begintijd makes me depressed'),
                                                                                    (29, 9, 1, '3'),
                                                                                    (30, 9, 2, '20'),
                                                                                    (31, 9, 3, 'Lopend'),
                                                                                    (32, 9, 4, 'Te vroeg'),
                                                                                    (33, 9, 5, 'Te laat'),
                                                                                    (34, 9, 6, 'De reis is het niet, het is de bestemming.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_enquete_keus`
--

CREATE TABLE `glr_enquete_keus` (
                                    `id` int(11) NOT NULL,
                                    `option` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_enquete_keus`
--

INSERT INTO `glr_enquete_keus` (`id`, `option`) VALUES
                                                    (1, 'Te vroeg'),
                                                    (2, 'Goed'),
                                                    (3, 'Te laat');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_enquete_keuze`
--

CREATE TABLE `glr_enquete_keuze` (
                                     `id` int(11) NOT NULL,
                                     `vervoer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_enquete_keuze`
--

INSERT INTO `glr_enquete_keuze` (`id`, `vervoer`) VALUES
                                                      (1, 'Trein'),
                                                      (2, 'Tram'),
                                                      (3, 'Metro'),
                                                      (4, 'Bus'),
                                                      (5, 'Auto'),
                                                      (6, 'Fiets'),
                                                      (7, 'Lopend');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_enquete_vraag`
--

CREATE TABLE `glr_enquete_vraag` (
                                     `vraag_id` int(11) NOT NULL,
                                     `vraag` varchar(255) NOT NULL,
                                     `input_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_enquete_vraag`
--

INSERT INTO `glr_enquete_vraag` (`vraag_id`, `vraag`, `input_type`) VALUES
                                                                        (1, 'Hoeveel kilometer woon je van het GLR?', 'number'),
                                                                        (2, 'Hoe lang doe je er over om van huis naar GLR te reizen?', 'number'),
                                                                        (3, 'Welke voermiddel(en) gebruik je om naar het GLR te reizen?', 'multiple'),
                                                                        (4, 'Wat vind je van de begintijd van de lessen (8:15 uur)?', 'choice'),
                                                                        (5, 'Wat vind je van de eindtijd van de lessen (17:15 uur)?', 'choice'),
                                                                        (6, 'Heb je verder nog opmerkingen over het reizen naar het GLR?', 'text');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_student`
--

CREATE TABLE `glr_student` (
                               `id` int(11) NOT NULL,
                               `studentnr` int(5) NOT NULL,
                               `klas` varchar(255) NOT NULL,
                               `naam` varchar(255) NOT NULL,
                               `achternaam` varchar(255) NOT NULL,
                               `leeftijd` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_student`
--

INSERT INTO `glr_student` (`id`, `studentnr`, `klas`, `naam`, `achternaam`, `leeftijd`) VALUES
                                                                                            (1, 84648, 'D3B', 'Sarah', 'Teixeira Barroso', 21),
                                                                                            (2, 84219, 'D3C', 'Damian', 'Hollardt', 19),
                                                                                            (3, 84652, 'D3D', 'Pablo', 'Escobar', 70),
                                                                                            (4, 85231, 'd1a', 'Roberta', 'Ribeiro', 19),
                                                                                            (7, 85693, 'D3A', 'Luis', 'Bros', 25),
                                                                                            (9, 84859, 'D3B', 'Ant', 'Raz', 18),
                                                                                            (10, 84860, 'D3C', 'Ben', 'Rietveld', 18);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_student_adress`
--

CREATE TABLE `glr_student_adress` (
                                      `id` int(11) NOT NULL,
                                      `student_id` int(11) NOT NULL,
                                      `adress` varchar(255) NOT NULL,
                                      `postcode` varchar(255) NOT NULL,
                                      `woonplaats` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_student_klas`
--

CREATE TABLE `glr_student_klas` (
                                    `id` int(11) NOT NULL,
                                    `klas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_student_klas`
--

INSERT INTO `glr_student_klas` (`id`, `klas`) VALUES
                                                  (1, 'D3B'),
                                                  (2, 'D3C'),
                                                  (3, 'D3A'),
                                                  (4, 'D3D');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `glr_users`
--

CREATE TABLE `glr_users` (
                             `id` int(11) NOT NULL,
                             `username` varchar(50) NOT NULL,
                             `password` varchar(255) NOT NULL,
                             `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `glr_users`
--

INSERT INTO `glr_users` (`id`, `username`, `password`, `created_at`) VALUES
                                                                         (2, 'kiko', '$2y$10$ChO4AY/ACUxFex.q6SBDW.764JxPf1ja7bVLkT8JaHAm6m/ES0X.a', '2021-12-22 18:56:52'),
                                                                         (3, 'Sarah', '$2y$10$ATT52fGypsz2.JBA.xv9Ous8BVyjKKsog7oyrADnNAqHxJ.7JnG.K', '2021-12-23 09:37:19'),
                                                                         (4, '84648', '$2y$10$.z/LMqvK1ocmCuGqwWbll.xx4bw12CMq41KGln9NvwczDrIO7kTU6', '2022-02-21 11:02:26');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `per4_voetbalkaartjes`
--

CREATE TABLE `per4_voetbalkaartjes` (
                                        `id` int(11) NOT NULL,
                                        `first_name` varchar(255) NOT NULL,
                                        `last_name` varchar(255) NOT NULL,
                                        `birth_date` date NOT NULL,
                                        `telephone_number` int(11) NOT NULL,
                                        `email` varchar(255) NOT NULL,
                                        `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `per4_voetbalkaartjes`
--

INSERT INTO `per4_voetbalkaartjes` (`id`, `first_name`, `last_name`, `birth_date`, `telephone_number`, `email`, `code`) VALUES
                                                                                                                            (1, 'sarah', 'teixeira', '2000-09-11', 665239365, 'konaw66843@mykcloud.com', 0),
                                                                                                                            (2, 'Ingrid', 'Barroso', '2021-12-22', 655852363, 'sarah@thedarecompany.com', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `topics`
--

CREATE TABLE `topics` (
                          `id` int(11) NOT NULL,
                          `text` varchar(255) NOT NULL,
                          `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `topics`
--

INSERT INTO `topics` (`id`, `text`, `content`) VALUES
                                                   (1, 'Hi there', 'Sarah Testing!'),
                                                   (2, 'ewa', 'asdasd'),
                                                   (3, 'hasd', 'asdas');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
                         `id` int(11) NOT NULL,
                         `username` varchar(50) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
                                                                     (1, 'xcyph', '$2y$10$11R2MMMC4Ts7EeoxOS5X/.iHCFxFvYRw9q6xoaQ/UPvjswHg99t46', '2021-12-21 14:44:23'),
                                                                     (2, 'Ingrid', '$2y$10$StrsQxHsQMoupcEkURgTH.ywNi2zh7j9OYbUfGiK0H9qNHSpPgjRS', '2021-12-22 16:12:22'),
                                                                     (3, 'google', '$2y$10$Ik73ZubhZbp1.FTaVPYLNeWGBbwybDrC4OGbopNiOBcl/N2slbqMu', '2021-12-22 18:55:21'),
                                                                     (4, 'Barro', '$2y$10$XWcnFETLx/YWQQyzRMAqw.xgRgBqQQZlKSWTUFYx/N0GwEylfFsOS', '2022-01-25 11:24:22'),
                                                                     (5, 'examen', '$2y$10$6pYdAl8Rekj5iiiSvMFpkOkjE.n7hz1wQ9PbqN.w24zXCpUf7U02C', '2022-02-05 15:35:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users1`
--

CREATE TABLE `users1` (
                          `id` int(11) NOT NULL,
                          `name` varchar(30) NOT NULL,
                          `email` varchar(100) NOT NULL,
                          `password` varchar(250) NOT NULL,
                          `status` int(11) NOT NULL DEFAULT '0',
                          `email_verification_link` varchar(255) NOT NULL,
                          `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usertable`
--

CREATE TABLE `usertable` (
                             `id` int(11) NOT NULL,
                             `name` varchar(255) NOT NULL,
                             `email` varchar(255) NOT NULL,
                             `password` varchar(255) NOT NULL,
                             `code` mediumint(50) NOT NULL,
                             `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
                                                                                  (1, 'Sarah', 'sarah@thedarecompany.com', 'bda5301007b1946952e9c477c505f307a361e446', 0, 'Verified'),
                                                                                  (2, 'Test', 'test@glr.nl', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'Verified'),
                                                                                  (3, 'Rachel', 'rachneller@gmail.com', 'bda5301007b1946952e9c477c505f307a361e446', 0, 'Verified'),
                                                                                  (4, 'Bob', 'bob@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'Verified');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `booking`
--
ALTER TABLE `booking`
    ADD PRIMARY KEY (`id`),
  ADD KEY `fk_booking_employee` (`employeeName`),
  ADD KEY `name` (`name`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
    ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`(255)),
  ADD KEY `name_2` (`username`(255));

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `employee`
--
ALTER TABLE `employee`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `employees`
--
ALTER TABLE `employees`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Employees`
--
ALTER TABLE `Employees`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_enquete_antwoord`
--
ALTER TABLE `glr_enquete_antwoord`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_enquete_keus`
--
ALTER TABLE `glr_enquete_keus`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_enquete_keuze`
--
ALTER TABLE `glr_enquete_keuze`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_enquete_vraag`
--
ALTER TABLE `glr_enquete_vraag`
    ADD PRIMARY KEY (`vraag_id`);

--
-- Indexen voor tabel `glr_student`
--
ALTER TABLE `glr_student`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_student_adress`
--
ALTER TABLE `glr_student_adress`
    ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexen voor tabel `glr_student_klas`
--
ALTER TABLE `glr_student_klas`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `glr_users`
--
ALTER TABLE `glr_users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `per4_voetbalkaartjes`
--
ALTER TABLE `per4_voetbalkaartjes`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `topics`
--
ALTER TABLE `topics`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `users1`
--
ALTER TABLE `users1`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexen voor tabel `usertable`
--
ALTER TABLE `usertable`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `booking`
--
ALTER TABLE `booking`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `employee`
--
ALTER TABLE `employee`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `employees`
--
ALTER TABLE `employees`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `Employees`
--
ALTER TABLE `Employees`
    MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `gebruikers`
--
ALTER TABLE `gebruikers`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `glr_enquete_antwoord`
--
ALTER TABLE `glr_enquete_antwoord`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT voor een tabel `glr_enquete_keus`
--
ALTER TABLE `glr_enquete_keus`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `glr_enquete_keuze`
--
ALTER TABLE `glr_enquete_keuze`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `glr_enquete_vraag`
--
ALTER TABLE `glr_enquete_vraag`
    MODIFY `vraag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `glr_student`
--
ALTER TABLE `glr_student`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `glr_student_adress`
--
ALTER TABLE `glr_student_adress`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `glr_student_klas`
--
ALTER TABLE `glr_student_klas`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `glr_users`
--
ALTER TABLE `glr_users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `per4_voetbalkaartjes`
--
ALTER TABLE `per4_voetbalkaartjes`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `topics`
--
ALTER TABLE `topics`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `users1`
--
ALTER TABLE `users1`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `usertable`
--
ALTER TABLE `usertable`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `booking`
--
ALTER TABLE `booking`
    ADD CONSTRAINT `fk_booking_employee` FOREIGN KEY (`employeeName`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
