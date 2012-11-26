-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Client: XXX
-- Généré le: Lun 26 Novembre 2012 à 09:10
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
-- Structure de la table `jos_pdds`
--

CREATE TABLE IF NOT EXISTS `jos_pdds` (
  `id` int(12) NOT NULL auto_increment,
  `PDDINo` int(4) default NULL,
  `PDDTexte` varchar(255) default NULL,
  `PDDNom` varchar(255) default NULL,
  `PDDAdr` varchar(255) default NULL,
  `PDDNoRue` varchar(255) default NULL,
  `PDDTele` varchar(255) default NULL,
  `PDDLieu` varchar(255) default NULL,
  `PDDEmail` varchar(255) default NULL,
  `PDDRem` text,
  `PDDGP` int(4) default NULL,
  `PDDPP` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `jos_pdds`
--

INSERT INTO `jos_pdds` (`id`, `PDDINo`, `PDDTexte`, `PDDNom`, `PDDAdr`, `PDDNoRue`, `PDDTele`, `PDDLieu`, `PDDEmail`, `PDDRem`, `PDDGP`, `PDDPP`) VALUES
(1, 110, 'Jardin', 'Jardin', 'ch. des Plantées', '66', '022 756 34 45', '1285 Sézegnin', 'john.doe@gmail.com ', 'Hangar', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
