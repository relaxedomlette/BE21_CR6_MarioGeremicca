-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Apr 2024 um 14:55
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be21-cr6-mariogeremicca`
--
CREATE DATABASE IF NOT EXISTS `be21-cr6-mariogeremicca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be21-cr6-mariogeremicca`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240419152115', '2024-04-19 17:21:47', 28);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` decimal(10,0) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `street_name` varchar(150) NOT NULL,
  `street_number` varchar(10) NOT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `event_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone_number`, `street_name`, `street_number`, `zip`, `city`, `url`, `event_type`) VALUES
(6, 'Marathon Race', '2024-04-27 13:23:00', 'Annual marathon is in New York.', 'running-1944798-1280-6623a4ac3e202.jpg', 1000, 'info@marathon.com', 'info@marathon.com', 'Main Street', '123', '10001', 'New York', 'http://www.marathon.com', 'Sport'),
(7, 'Soccer Championship', '2024-05-26 14:19:00', 'Final match of the soccer championship.', 'bleachers-1867992-1280-6623a52bf21bd.jpg', 5000, 'info@soccerchampionship.com', '+1 (123) 456-7890', 'Stadium Avenue', '456', '20001', 'Los Angeles', 'http://www.soccerchampionship.com', 'Sport'),
(8, 'Tennis Tournament', '2024-05-12 14:01:00', 'International tennis tournament.', 'tennis-2100437-1280-6623ae817473e.jpg', 2000, 'info@tennistournament.com', '+1 (123) 456-7890', 'Court Street', '789', '30001', 'Miami', 'http://www.tennistournament.com', 'Sport'),
(9, 'Romeo and Juliet', '2024-05-01 14:19:00', 'Classic Shakespeare play performed live.', 'event.jpg', 800, 'info@theatre.com', '+1 (123) 456-7890', 'Theatre Lane', '321', '40001', 'Chicago', 'http://www.theatre.com', 'Theatre'),
(10, 'The Phantom of the Opera', '2024-05-31 14:11:00', 'Musical drama by Andrew Lloyd Webber.', 'phantom-4577790-1280-6623b0fdc4fcd.jpg', 1200, 'info@opera.com', '+1 (123) 456-7890', 'Opera Street', '654', '50001', 'San Francisco', 'http://www.opera.com', 'Theatre'),
(11, 'Hamlet', '2024-06-20 14:12:00', 'Another classic Shakespeare play performed live.', 'hamlet-3381673-1280-6623b14457df1.jpg', 1000, 'info@hamlet.com', '+1 (123) 456-7890', 'Drama Boulevard', '987', '60001', 'Boston', 'http://www.hamlet.com', 'Theatre'),
(12, 'Jazz Festival', '2024-04-27 14:13:00', 'Annual jazz music festival featuring various artists.', 'jazz-1658886-1280-6623b16ec7ee7.jpg', 3000, 'info@jazzfestival.com', '+1 (123) 456-7890', 'Jazz Street', '135', '70001', 'New Orleans', 'http://www.jazzfestival.com', 'Music'),
(13, 'Rock Concert', '2024-05-11 14:14:00', 'Live performance by popular rock bands.', 'concert-2565099-1280-6623b1b38c8b9.jpg', 5000, 'info@rockconcert.com', '+1 (123) 456-7890', 'Rock Road', '246', '80001', 'Seattle', 'http://www.rockconcert.com', 'Music'),
(14, 'Classical Music Gala', '2024-04-25 14:15:00', 'Gala event featuring classical music performances.', 'violins-1838390-1280-6623b1e4977cb.jpg', 1500, 'info@classicalmusicgala.com', '+1 (123) 456-7890', 'Symphony Avenue', '753', '90001', 'Vienna', 'http://www.classicalmusicgala.com', 'Music'),
(15, 'Film Festival', '2024-05-19 14:18:00', 'International film festival showcasing diverse films.', 'columbus-1936633-1280-6623b2ad4564b.jpg', 2000, 'info@filmfestival.com', '+1 (123) 456-7890', 'Film Street', '369', '100001', 'Cannes', 'http://www.filmfestival.com', 'Movie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
