-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Client: XXX
-- Généré le: Lun 26 Novembre 2012 à 08:45
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
-- Structure de la table `cocagne_defaults`
--

CREATE TABLE IF NOT EXISTS `cocagne_defaults` (
  `id` int(12) NOT NULL auto_increment,
  `lib` varchar(255) collate utf8_unicode_ci NOT NULL,
  `n` int(9) NOT NULL,
  `rem1` varchar(255) collate utf8_unicode_ci NOT NULL,
  `rem2` text collate utf8_unicode_ci NOT NULL,
  `datemod` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table des valeurs défaut pour les DJ' AUTO_INCREMENT=5 ;

--
-- Contenu de la table `cocagne_defaults`
--

INSERT INTO `cocagne_defaults` (`id`, `lib`, `n`, `rem1`, `rem2`, `datemod`) VALUES
(1, 'def_jours_affiches', 90, 'nombre de jours affichÃ©s par dÃ©faut dans les demi-journÃ©es (interface cocagnard/e/s)', '', '2010-10-20 07:21:00'),
(2, 'DJ_delai_minimum_inscription', 2, 'on peut s''inscrire n... jours Ã  l''avance mais pas plus tard', '', '2010-10-21 04:08:00'),
(3, 'DJ_def_n_jours_initialiser', 90, 'le nombre de jours gÃ©nÃ©rÃ©s lorsqu''on initialise les demies-journÃ©es', '', '2010-11-09 17:00:00'),
(4, 'DJ_delai_minimum_inscription_livraison', 3, 'on peut s''inscrire pour une livraison n... jours Ã  l''avance mais pas plus tard ', '', '2010-11-09 17:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
