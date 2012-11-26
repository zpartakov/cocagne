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
-- Structure de la table `jos_demiejournees_default_schedules`
--

CREATE TABLE IF NOT EXISTS `jos_demiejournees_default_schedules` (
  `id` int(12) NOT NULL auto_increment,
  `jourheure` varchar(255) collate utf8_unicode_ci NOT NULL,
  `npers` int(2) NOT NULL,
  `rem1` varchar(255) collate utf8_unicode_ci NOT NULL,
  `rem2` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table des valeurs défaut pour les DJ' AUTO_INCREMENT=29 ;

--
-- Contenu de la table `jos_demiejournees_default_schedules`
--

INSERT INTO `jos_demiejournees_default_schedules` (`id`, `jourheure`, `npers`, `rem1`, `rem2`) VALUES
(1, 'LundiMatin', 10, ' ', ' '),
(2, 'LundiApresMidi', 10, ' ', ' '),
(3, 'LundiSoir', 0, ' ', ' '),
(4, 'LundiLivraison', 0, ' ', ' '),
(5, 'MardiMatin', 0, ' ', ' '),
(6, 'MardiApresMidi', 0, ' ', ' '),
(7, 'MardiSoir', 0, ' ', ' '),
(8, 'MardiLivraison', 0, ' ', ' '),
(9, 'MercrediMatin', 10, ' ', ' '),
(10, 'MercrediApresMidi', 10, ' ', ' '),
(11, 'MercrediSoir', 0, ' ', ' '),
(12, 'MercrediLivraison', 0, ' ', ' '),
(13, 'JeudiMatin', 10, ' ', ' '),
(14, 'JeudiApresMidi', 10, ' ', ' '),
(15, 'JeudiSoir', 0, ' ', ' '),
(16, 'JeudiLivraison', 3, ' ', ' '),
(17, 'VendrediMatin', 0, ' ', ' '),
(18, 'VendrediApresMidi', 0, ' ', ' '),
(19, 'VendrediSoir', 0, ' ', ' '),
(20, 'VendrediLivraison', 0, ' ', ' '),
(21, 'SamediMatin', 10, ' ', ' '),
(22, 'SamediApresMidi', 10, ' ', ' '),
(23, 'SamediSoir', 0, ' ', ' '),
(24, 'SamediLivraison', 0, ' ', ' '),
(25, 'DimancheMatin', 0, ' ', ' '),
(26, 'DimancheApresMidi', 0, ' ', ' '),
(27, 'DimancheSoir', 0, ' ', ' '),
(28, 'DimancheLivraison', 0, ' ', ' ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
