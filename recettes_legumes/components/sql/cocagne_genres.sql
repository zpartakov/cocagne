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
-- Structure de la table `cocagne_genres`
--

CREATE TABLE IF NOT EXISTS `cocagne_genres` (
  `id` int(12) NOT NULL auto_increment,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `cocagne_genres`
--

INSERT INTO `cocagne_genres` (`id`, `genre`) VALUES
(1, 'Bases'),
(2, 'Sauces chaudes'),
(3, 'Sauces froides'),
(4, 'Salades'),
(5, 'Potages'),
(6, 'Entrées'),
(7, 'Poissons'),
(8, 'Viandes'),
(9, 'Plats principaux'),
(10, 'Accompagnements'),
(11, 'Céréales'),
(12, 'Pâtes'),
(13, 'Desserts'),
(14, 'Légumineuses'),
(15, 'Tartes salées'),
(16, 'Tartes sucrées'),
(17, 'Boissons'),
(18, 'Conserves et Confitures');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
