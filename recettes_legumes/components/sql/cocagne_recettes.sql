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
-- Structure de la table `cocagne_recettes`
--

CREATE TABLE IF NOT EXISTS `cocagne_recettes` (
  `id` int(11) NOT NULL auto_increment,
  `titre` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `ingredients` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `preparation` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `genre` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
  `image` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=208 ;

--
-- Contenu de la table `cocagne_recettes`
--

INSERT INTO `cocagne_recettes` (`id`, `titre`, `ingredients`, `preparation`, `date`, `genre`, `image`) VALUES
(1, 'Pleurottes sur lit de rampon', '400 g de pleurotes (champignons)\n200 g de rampon\n', 'Ail, persil et sauce à salade relevée.\nEmincez les pleurotes sans les laver. Faites revenir à feu vif dans très peu d''huile jusqu''à ce qu''ils commencent à dorer (env. 5min). Ajoutez l''ail coupé finement une minute avant la fin de la cuisson, puis le persil haché. Servez immédiatement au milieu d''une assiette de salade de rampon...un délice!', '0000-00-00 00:00:00', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
