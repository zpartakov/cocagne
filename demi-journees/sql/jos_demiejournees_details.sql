-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Client: XXX
-- Généré le: Lun 26 Novembre 2012 à 08:47
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
-- Structure de la table `jos_demiejournees_details`
--

CREATE TABLE IF NOT EXISTS `jos_demiejournees_details` (
  `id` int(12) NOT NULL auto_increment,
  `date` datetime NOT NULL,
  `user` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
  `npers` smallint(6) NOT NULL,
  `rem` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1010 ;

--
-- Contenu de la table `jos_demiejournees_details`
--

INSERT INTO `jos_demiejournees_details` (`id`, `date`, `user`, `npers`, `rem`) VALUES
(30, '2010-07-08 08:00:00', 'yoman', 1, 'coucou');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
