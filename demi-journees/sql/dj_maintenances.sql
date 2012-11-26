-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Client: XXX
-- Généré le: Lun 26 Novembre 2012 à 08:46
-- Version du serveur: 5.0.67-log
-- Version de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `XXX`
--

-- --------------------------------------------------------

--
-- Structure de la table `dj_maintenances`
--

CREATE TABLE IF NOT EXISTS `dj_maintenances` (
  `id` int(12) NOT NULL auto_increment,
  `actif` int(1) NOT NULL,
  `stop` date NOT NULL,
  `start` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='dates désactivation/activation demi-journées' AUTO_INCREMENT=2 ;

--
-- Contenu de la table `dj_maintenances`
--

INSERT INTO `dj_maintenances` (`id`, `actif`, `stop`, `start`) VALUES
(1, 0, '2012-12-13', '2012-01-16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
