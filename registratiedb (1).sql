-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 03 dec 2014 om 15:31
-- Serverversie: 5.6.13
-- PHP-versie: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `registratiedb`
--
CREATE DATABASE IF NOT EXISTS `registratiedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registratiedb`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_cursist`
--

CREATE TABLE IF NOT EXISTS `tbl_cursist` (
  `CursistId` int(11) NOT NULL AUTO_INCREMENT,
  `Naam` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  PRIMARY KEY (`CursistId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `tbl_cursist`
--

INSERT INTO `tbl_cursist` (`CursistId`, `Naam`, `Email`, `Phone`) VALUES
(1, 'Robin', 'ikke@gmail.com', '0486.13.25.65');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_docent`
--

CREATE TABLE IF NOT EXISTS `tbl_docent` (
  `DocentId` int(11) NOT NULL AUTO_INCREMENT,
  `Naam` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  PRIMARY KEY (`DocentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_lokaal`
--

CREATE TABLE IF NOT EXISTS `tbl_lokaal` (
  `LokaalId` int(11) NOT NULL AUTO_INCREMENT,
  `Nummer` int(11) NOT NULL,
  PRIMARY KEY (`LokaalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_module`
--

CREATE TABLE IF NOT EXISTS `tbl_module` (
  `ModuleId` int(11) NOT NULL AUTO_INCREMENT,
  `Naam` varchar(250) NOT NULL,
  `LokaalId` int(11) NOT NULL,
  `DocentId` int(11) NOT NULL,
  `CursistId` int(11) NOT NULL,
  PRIMARY KEY (`ModuleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
