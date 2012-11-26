-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Généré le: Lun 26 Novembre 2012 à 09:41
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
-- Structure de la table `ADRESSES_old`
--

CREATE TABLE IF NOT EXISTS `ADRESSES_old` (
  `id` int(4) NOT NULL default '0',
  `NOM1` varchar(100) default NULL,
  `NOM2` varchar(100) default NULL,
  `NOM3` varchar(100) default NULL,
  `ABREVIATION` varchar(32) default NULL,
  `CONTACT` varchar(40) default NULL,
  `PRENOM` varchar(36) default NULL,
  `TITRE` varchar(52) default NULL,
  `ADRESSE` varchar(100) default NULL,
  `ADRESSE2` varchar(100) default NULL,
  `NO_POSTAL` varchar(20) default NULL,
  `LIEU` varchar(48) default NULL,
  `PAYS` varchar(40) default NULL,
  `Etage` int(1) default NULL,
  `CodePorteEntree` varchar(20) default NULL,
  `NO_TEL1` varchar(36) default NULL,
  `NO_TEL2` varchar(36) default NULL,
  `NO_TEL3` varchar(36) default NULL,
  `NO_NATEL` varchar(36) default NULL,
  `NO_FAX` varchar(36) default NULL,
  `E_MAIL` varchar(100) default NULL,
  `E_MAIL2` varchar(100) default NULL,
  `EmailTo` varchar(100) default NULL,
  `EmailTo2` varchar(100) default NULL,
  `FONCTION` varchar(70) default NULL,
  `ACTIVITE` varchar(36) default NULL,
  `NAISSANCE` varchar(36) default NULL,
  `SEXE` varchar(2) default NULL,
  `LANGUE` varchar(6) default NULL,
  `CODE1` varchar(24) default NULL,
  `CODE2` varchar(24) default NULL,
  `CODE3` varchar(24) default NULL,
  `CODE4` varchar(24) default NULL,
  `CODE5` varchar(24) default NULL,
  `CODE6` varchar(24) default NULL,
  `VALEUR1` float default NULL,
  `VALEUR2` float default NULL,
  `DATE1` varchar(100) default NULL,
  `DATE2` varchar(100) default NULL,
  `SiteWeb` varchar(100) default NULL,
  `PourFacturation` varchar(100) default NULL,
  `eMAILMailto` varchar(100) default NULL,
  `idPoint` int(4) default NULL,
  `ResponsablePoint` varchar(100) default NULL,
  `NTaillePart` int(4) default NULL,
  `NClassePart` int(4) default NULL,
  `RemarquePart` varchar(100) default NULL,
  `CocagneDateEntree` varchar(100) default NULL,
  `CocagneDateSortie` varchar(100) default NULL,
  `NomFichierSource` varchar(100) default NULL,
  `NoFicheSource` int(4) default NULL,
  `RepertoireDocuments` varchar(100) default NULL,
  `C_IMPOT` varchar(2) default NULL,
  `NO_COMPTE` varchar(28) default NULL,
  `SELECTION` varchar(2) default NULL,
  `NOTES` text,
  `D_CREATION` varchar(100) default NULL,
  `H_CREATION` varchar(10) default NULL,
  `USER_CREATION` varchar(24) default NULL,
  `D_MODIF` varchar(100) default NULL,
  `H_MODIF` varchar(10) default NULL,
  `USER_MODIF` varchar(24) default NULL,
  `D_RAPPEL` varchar(100) default NULL,
  `H_RAPPEL` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `NOM1` (`NOM1`),
  KEY `NOM2` (`NOM2`),
  KEY `NOM3` (`NOM3`),
  KEY `E_MAIL` (`E_MAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='adresses pas à jour';

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

-- --------------------------------------------------------

--
-- Structure de la table `cocagne_genres`
--

CREATE TABLE IF NOT EXISTS `cocagne_genres` (
  `id` int(12) NOT NULL auto_increment,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Structure de la table `cocagne_legumes`
--

CREATE TABLE IF NOT EXISTS `cocagne_legumes` (
  `id` int(12) NOT NULL auto_increment,
  `legume` varchar(255) NOT NULL,
  `printemps` int(1) NOT NULL,
  `ete` int(1) NOT NULL,
  `automne` int(1) NOT NULL,
  `hiver` int(1) NOT NULL,
  `generalite` text NOT NULL,
  `origine` text NOT NULL,
  `choix` text NOT NULL,
  `preparation` text NOT NULL,
  `conservation` text NOT NULL,
  `conseils` text NOT NULL,
  `conseils_sante` text NOT NULL,
  `remarques` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `FestivalFilmAide`
--

CREATE TABLE IF NOT EXISTS `FestivalFilmAide` (
  `id` int(12) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL,
  `hdep` varchar(255) NOT NULL,
  `hfin` varchar(255) NOT NULL,
  `jour` varchar(12) NOT NULL,
  `np` int(1) NOT NULL,
  `qui1` varchar(255) NOT NULL,
  `qui2` varchar(255) NOT NULL,
  `qui3` varchar(255) NOT NULL,
  `rem` text NOT NULL,
  `nom1` text NOT NULL,
  `tel1` text NOT NULL,
  `mel1` text NOT NULL,
  `nom2` text NOT NULL,
  `tel2` text NOT NULL,
  `mel2` text NOT NULL,
  `nom3` text NOT NULL,
  `tel3` text NOT NULL,
  `mel3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_adresses`
--

CREATE TABLE IF NOT EXISTS `jos_adresses` (
  `id` int(4) NOT NULL default '0',
  `NOM1` varchar(100) default NULL,
  `NOM2` varchar(100) default NULL,
  `NOM3` varchar(100) default NULL,
  `ABREVIATION` varchar(32) default NULL,
  `CONTACT` varchar(40) default NULL,
  `PRENOM` varchar(36) default NULL,
  `TITRE` varchar(52) default NULL,
  `ADRESSE` varchar(100) default NULL,
  `ADRESSE2` varchar(100) default NULL,
  `NO_POSTAL` varchar(20) default NULL,
  `LIEU` varchar(48) default NULL,
  `PAYS` varchar(40) default NULL,
  `Etage` int(1) default NULL,
  `CodePorteEntree` varchar(20) default NULL,
  `NO_TEL1` varchar(36) default NULL,
  `NO_TEL2` varchar(36) default NULL,
  `NO_TEL3` varchar(36) default NULL,
  `NO_NATEL` varchar(36) default NULL,
  `NO_FAX` varchar(36) default NULL,
  `E_MAIL` varchar(100) default NULL,
  `E_MAIL2` varchar(100) default NULL,
  `EmailTo` varchar(100) default NULL,
  `EmailTo2` varchar(100) default NULL,
  `FONCTION` varchar(70) default NULL,
  `ACTIVITE` varchar(36) default NULL,
  `NAISSANCE` varchar(36) default NULL,
  `SEXE` varchar(2) default NULL,
  `LANGUE` varchar(6) default NULL,
  `CODE1` varchar(24) default NULL,
  `CODE2` varchar(24) default NULL,
  `CODE3` varchar(24) default NULL,
  `CODE4` varchar(24) default NULL,
  `CODE5` varchar(24) default NULL,
  `CODE6` varchar(24) default NULL,
  `VALEUR1` float default NULL,
  `VALEUR2` float default NULL,
  `DATE1` varchar(100) default NULL,
  `DATE2` varchar(100) default NULL,
  `SiteWeb` varchar(100) default NULL,
  `PourFacturation` varchar(100) default NULL,
  `eMAILMailto` varchar(100) default NULL,
  `idPoint` int(4) default NULL,
  `ResponsablePoint` varchar(100) default NULL,
  `NTaillePart` int(4) default NULL,
  `NClassePart` int(4) default NULL,
  `RemarquePart` varchar(100) default NULL,
  `CocagneDateEntree` varchar(100) default NULL,
  `CocagneDateSortie` varchar(100) default NULL,
  `NomFichierSource` varchar(100) default NULL,
  `NoFicheSource` int(4) default NULL,
  `RepertoireDocuments` varchar(100) default NULL,
  `C_IMPOT` varchar(2) default NULL,
  `NO_COMPTE` varchar(28) default NULL,
  `SELECTION` varchar(2) default NULL,
  `NOTES` text,
  `D_CREATION` varchar(100) default NULL,
  `H_CREATION` varchar(10) default NULL,
  `USER_CREATION` varchar(24) default NULL,
  `D_MODIF` varchar(100) default NULL,
  `H_MODIF` varchar(10) default NULL,
  `USER_MODIF` varchar(24) default NULL,
  `D_RAPPEL` varchar(100) default NULL,
  `H_RAPPEL` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `NOM1` (`NOM1`),
  KEY `NOM2` (`NOM2`),
  KEY `NOM3` (`NOM3`),
  KEY `E_MAIL` (`E_MAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jos_assets`
--

CREATE TABLE IF NOT EXISTS `jos_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=510 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_associations`
--

CREATE TABLE IF NOT EXISTS `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_banners`
--

CREATE TABLE IF NOT EXISTS `jos_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jos_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_cms_app`
--

CREATE TABLE IF NOT EXISTS `jos_cms_app` (
  `app_id` smallint(6) unsigned NOT NULL auto_increment,
  `app_name` varchar(50) NOT NULL,
  `app_data` text,
  `app_cdate` int(10) unsigned NOT NULL default '0',
  `app_mdate` int(10) unsigned default '0',
  PRIMARY KEY  (`app_id`),
  UNIQUE KEY `idx_name` USING BTREE (`app_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=426 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_demiejournees`
--

CREATE TABLE IF NOT EXISTS `jos_demiejournees` (
  `id` int(12) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` varchar(255) NOT NULL,
  `nplaces` int(3) NOT NULL,
  `statut` smallint(1) NOT NULL default '1',
  `REMARQUES` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9875 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_demiejournees00`
--

CREATE TABLE IF NOT EXISTS `jos_demiejournees00` (
  `id` int(12) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` varchar(255) NOT NULL,
  `nplaces` int(3) NOT NULL,
  `statut` smallint(1) NOT NULL default '1',
  `REMARQUES` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8087 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_demiejournees_archives`
--

CREATE TABLE IF NOT EXISTS `jos_demiejournees_archives` (
  `id` int(12) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` varchar(255) NOT NULL,
  `nplaces` int(3) NOT NULL,
  `statut` smallint(1) NOT NULL default '1',
  `REMARQUES` text character set latin1 collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8688 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `jos_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10037 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_extensions20120212`
--

CREATE TABLE IF NOT EXISTS `jos_extensions20120212` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10014 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_common`
--

CREATE TABLE IF NOT EXISTS `jos_finder_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_map`
--

CREATE TABLE IF NOT EXISTS `jos_finder_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20840 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_finder_types`
--

CREATE TABLE IF NOT EXISTS `jos_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_faq_cat`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_faq_cat` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `image` varchar(250) default NULL,
  `published` tinyint(3) unsigned default NULL,
  `ordering` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_faq_faq`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_faq_faq` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `faq_cat_id` int(10) unsigned NOT NULL,
  `question` text,
  `answer` text,
  `fullanswer` text,
  `published` tinyint(3) unsigned default NULL,
  `ordering` int(10) unsigned default NULL,
  `author` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `jos_fss_faq_faq_FKIndex1` (`faq_cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_faq_tags`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_faq_tags` (
  `faq_id` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY  (`faq_id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_glossary`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_glossary` (
  `id` int(11) NOT NULL auto_increment,
  `word` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `longdesc` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_settings`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_settings` (
  `setting` varchar(50) NOT NULL,
  `value` varchar(250) NOT NULL,
  PRIMARY KEY  (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_settings_big`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_settings_big` (
  `setting` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_templates`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_templates` (
  `template` varchar(50) NOT NULL,
  `tpltype` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`template`,`tpltype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_fsf_user`
--

CREATE TABLE IF NOT EXISTS `jos_fsf_user` (
  `id` int(11) NOT NULL auto_increment,
  `mod_kb` int(11) NOT NULL,
  `mod_test` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seeownonly` int(11) NOT NULL,
  `autoassignexc` int(11) NOT NULL,
  `allprods` int(11) NOT NULL,
  `allcats` int(11) NOT NULL,
  `alldepts` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `signature` text NOT NULL,
  `artperm` int(11) NOT NULL,
  `groups` int(11) NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_chat`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_chat` (
  `chat_session_id` int(10) unsigned NOT NULL auto_increment,
  `chat_alt_id` varchar(7) NOT NULL,
  `chat_session_content` text NOT NULL,
  `chat_session_params` text,
  `cdate` int(11) NOT NULL default '0',
  `mdate` int(10) unsigned NOT NULL default '0',
  `is_active` tinyint(1) unsigned NOT NULL default '0',
  `is_multimember` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`chat_session_id`),
  UNIQUE KEY `uniq_alt_id` (`chat_alt_id`),
  KEY `chat_index` (`chat_session_id`,`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_chat_member`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_chat_member` (
  `member_id` int(10) unsigned NOT NULL auto_increment,
  `chat_session_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `member_display_name` varchar(50) NOT NULL,
  `member_ip_address` varchar(15) character set latin1 NOT NULL,
  `member_web_browser` varchar(255) character set latin1 default NULL,
  `member_city` varchar(150) default NULL,
  `member_country` varchar(150) default NULL,
  `member_country_code` char(2) default NULL,
  `is_accepted` tinyint(1) unsigned default NULL,
  `is_gone` tinyint(1) NOT NULL default '0',
  `is_typing` tinyint(1) unsigned NOT NULL default '0',
  `cdate` int(10) unsigned NOT NULL default '0',
  `mdate` int(10) unsigned NOT NULL default '0',
  `member_params` text,
  `expire_time` int(10) unsigned default NULL,
  PRIMARY KEY  (`member_id`),
  UNIQUE KEY `uniq_operator` (`chat_session_id`,`operator_id`),
  KEY `chat_index` (`chat_session_id`),
  KEY `expire_time_index` (`expire_time`),
  KEY `active_operators_index` USING BTREE (`operator_id`,`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_chat_proactive`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_chat_proactive` (
  `row_id` int(10) unsigned NOT NULL auto_increment,
  `visitor_id` char(32) NOT NULL,
  `chat_session_id` int(10) unsigned NOT NULL,
  `cdate` int(10) unsigned NOT NULL,
  `mdate` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`row_id`),
  UNIQUE KEY `uniq_chat` (`visitor_id`,`chat_session_id`),
  KEY `chat_index` (`chat_session_id`),
  KEY `visitor_index` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_ipblocker`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_ipblocker` (
  `rule_id` int(10) unsigned NOT NULL auto_increment,
  `operator_id` int(10) unsigned NOT NULL,
  `source_ip` varchar(15) NOT NULL,
  `rule_desc` varchar(250) default NULL,
  `rule_action` enum('block_from_website','block_from_livechat','send_to_url') NOT NULL default 'block_from_website',
  `rule_params` text,
  `cdate` int(10) unsigned NOT NULL,
  `mdate` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`rule_id`),
  UNIQUE KEY `uniq_ip` (`operator_id`,`source_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_message`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_message` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `operator_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `registered_name` varchar(255) default NULL,
  `registered_email` varchar(100) default NULL,
  `message_name` varchar(50) NOT NULL,
  `message_email` varchar(100) NOT NULL,
  `message_phone` varchar(20) default NULL,
  `message_txt` text NOT NULL,
  `guest_city` varchar(150) default NULL,
  `guest_country` varchar(150) default NULL,
  `guest_country_code` char(2) default NULL,
  `guest_web_browser` varchar(250) default NULL,
  `guest_ip_address` varchar(15) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL default '0',
  `params` text,
  `cdate` int(10) unsigned NOT NULL,
  `mdate` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `operator_index` (`operator_id`),
  KEY `operator_message_index` (`message_id`,`operator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_operator`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_operator` (
  `operator_id` int(10) unsigned NOT NULL auto_increment,
  `operator_name` varchar(50) default NULL,
  `alt_name` varchar(150) default NULL,
  `department` varchar(150) default NULL,
  `accept_chat_timeout` mediumint(8) unsigned NOT NULL,
  `sort_order` int(10) unsigned NOT NULL,
  `operator_params` text character set latin1 NOT NULL,
  `is_enabled` tinyint(1) unsigned NOT NULL default '1',
  `cdate` int(10) unsigned NOT NULL default '0',
  `mdate` int(10) unsigned NOT NULL default '0',
  `last_auth_date` int(11) default NULL,
  `auth_key` char(64) NOT NULL,
  PRIMARY KEY  (`operator_id`),
  UNIQUE KEY `uniq_key` (`auth_key`),
  KEY `department_index` (`department`),
  KEY `operators_online_index` (`is_enabled`,`last_auth_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_operator_sync`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_operator_sync` (
  `sync_id` int(10) unsigned NOT NULL auto_increment,
  `operator_id` int(10) unsigned NOT NULL,
  `sync_mode` enum('push','poll') NOT NULL default 'push',
  `operator_ip` varchar(15) default NULL,
  `operator_port` mediumint(8) unsigned default NULL,
  `system_uuid` varchar(36) NOT NULL,
  `settings_checksum` int(10) unsigned default NULL,
  `chat_checksum` bigint(20) unsigned default NULL,
  `operators_checksum` bigint(20) unsigned default NULL,
  `responses_checksum` bigint(20) unsigned default NULL,
  `messages_checksum` bigint(20) unsigned default NULL,
  `visitors_checksum` bigint(20) unsigned default NULL,
  `ipblocker_checksum` bigint(20) unsigned default NULL,
  `cdate` int(10) unsigned NOT NULL,
  `mdate` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`sync_id`),
  UNIQUE KEY `operator_uuid_uniq_index` (`operator_id`,`system_uuid`),
  KEY `sync_index` (`operator_id`,`sync_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_response`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_response` (
  `response_id` int(10) unsigned NOT NULL auto_increment,
  `response_category` varchar(150) default NULL,
  `response_name` varchar(150) NOT NULL,
  `response_txt` text NOT NULL,
  `response_cdate` int(10) unsigned NOT NULL,
  `response_mdate` int(10) unsigned NOT NULL default '0',
  `response_enabled` tinyint(1) unsigned NOT NULL default '1',
  `response_sort_order` mediumint(8) unsigned NOT NULL default '1',
  `response_params` text NOT NULL,
  PRIMARY KEY  (`response_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_route`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_route` (
  `route_id` int(10) unsigned NOT NULL auto_increment,
  `route_name` varchar(150) default NULL,
  `route_source_data` text NOT NULL,
  `route_action` varchar(50) NOT NULL default 'send_to_all_operators',
  `route_enabled` tinyint(1) unsigned NOT NULL default '1',
  `route_cdate` int(10) unsigned NOT NULL,
  `route_mdate` int(10) unsigned default NULL,
  `route_params` text,
  `route_sort_order` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`route_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jlc_visitor`
--

CREATE TABLE IF NOT EXISTS `jos_jlc_visitor` (
  `visitor_id` char(32) NOT NULL,
  `visitor_name` varchar(255) default NULL,
  `visitor_username` varchar(150) default NULL,
  `visitor_email` varchar(100) default NULL,
  `visitor_ip_address` varchar(15) NOT NULL,
  `visitor_browser` varchar(255) NOT NULL,
  `visitor_city` varchar(150) NOT NULL,
  `visitor_country` varchar(150) NOT NULL,
  `visitor_country_code` char(2) NOT NULL,
  `visitor_referrer` varchar(255) default NULL,
  `visitor_cdate` int(10) unsigned NOT NULL,
  `visitor_mdate` int(10) unsigned NOT NULL,
  `visitor_params` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL default '0',
  `visitor_operating_system` varchar(50) NOT NULL,
  `visitor_last_uri` varchar(255) NOT NULL,
  `is_spider` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`visitor_id`),
  KEY `mdate_index` (`visitor_mdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_languages`
--

CREATE TABLE IF NOT EXISTS `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=336 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_overrider`
--

CREATE TABLE IF NOT EXISTS `jos_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `jos_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1710 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_schemas`
--

CREATE TABLE IF NOT EXISTS `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_template_styles`
--

CREATE TABLE IF NOT EXISTS `jos_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_updates`
--

CREATE TABLE IF NOT EXISTS `jos_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=9160 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_update_categories`
--

CREATE TABLE IF NOT EXISTS `jos_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_update_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_update_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- --------------------------------------------------------

--
-- Structure de la table `jos_update_sites`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=593 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_user_notes`
--

CREATE TABLE IF NOT EXISTS `jos_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Structure de la table `jos_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_wf_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `jos__fb_contact_sample`
--

CREATE TABLE IF NOT EXISTS `jos__fb_contact_sample` (
  `id` int(6) NOT NULL auto_increment,
  `date_time` datetime default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `message` text,
  `tel` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jupgrade_categories`
--

CREATE TABLE IF NOT EXISTS `jupgrade_categories` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL,
  `section` varchar(255) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jupgrade_menus`
--

CREATE TABLE IF NOT EXISTS `jupgrade_menus` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jupgrade_modules`
--

CREATE TABLE IF NOT EXISTS `jupgrade_modules` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jupgrade_steps`
--

CREATE TABLE IF NOT EXISTS `jupgrade_steps` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `extension` int(1) NOT NULL default '0',
  `state` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `liste_attentes`
--

CREATE TABLE IF NOT EXISTS `liste_attentes` (
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pdd` varchar(255) NOT NULL,
  `cocagne` varchar(255) NOT NULL,
  `part` varchar(255) NOT NULL,
  `classe` varchar(255) NOT NULL,
  `commentaires` varchar(255) NOT NULL,
  `date` timestamp NULL default CURRENT_TIMESTAMP,
  `id` int(12) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `livreurs`
--

CREATE TABLE IF NOT EXISTS `livreurs` (
  `id` int(4) NOT NULL auto_increment,
  `jos_user_id` int(12) NOT NULL,
  `rem` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_user_id` (`jos_user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='livreurs et livreuses' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_cart`
--

CREATE TABLE IF NOT EXISTS `plantons_cart` (
  `ct_id` int(10) unsigned NOT NULL auto_increment,
  `pd_id` int(10) unsigned NOT NULL default '0',
  `ct_qty` mediumint(8) unsigned NOT NULL default '1',
  `ct_session_id` char(32) collate utf8_unicode_ci NOT NULL default '',
  `ct_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ct_id`),
  KEY `pd_id` (`pd_id`),
  KEY `ct_session_id` (`ct_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=578 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_category`
--

CREATE TABLE IF NOT EXISTS `plantons_category` (
  `cat_id` int(10) unsigned NOT NULL auto_increment,
  `cat_parent_id` int(11) NOT NULL default '0',
  `cat_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `cat_description` text collate utf8_unicode_ci NOT NULL,
  `cat_image` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`),
  KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_order`
--

CREATE TABLE IF NOT EXISTS `plantons_order` (
  `od_id` int(10) unsigned NOT NULL auto_increment,
  `od_date` datetime default NULL,
  `od_last_update` datetime NOT NULL default '0000-00-00 00:00:00',
  `od_status` enum('Nouveau','Payé','Envoyé','Terminé','Supprimé') collate utf8_unicode_ci NOT NULL default 'Nouveau',
  `od_memo` text collate utf8_unicode_ci NOT NULL,
  `od_shipping_user` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `date_livraison` date NOT NULL,
  PRIMARY KEY  (`od_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_product`
--

CREATE TABLE IF NOT EXISTS `plantons_product` (
  `pd_id` int(10) unsigned NOT NULL auto_increment,
  `cat_id` int(10) unsigned NOT NULL default '0',
  `pd_name` varchar(100) collate utf8_unicode_ci NOT NULL default '',
  `pd_description` text collate utf8_unicode_ci NOT NULL,
  `pd_price` decimal(9,2) NOT NULL default '0.00',
  `pd_qty` smallint(5) unsigned NOT NULL default '0',
  `pd_image` varchar(200) collate utf8_unicode_ci default NULL,
  `pd_thumbnail` varchar(200) collate utf8_unicode_ci default NULL,
  `pd_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `pd_last_update` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`pd_id`),
  KEY `cat_id` (`cat_id`),
  KEY `pd_name` (`pd_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_shop_config`
--

CREATE TABLE IF NOT EXISTS `plantons_shop_config` (
  `id` int(12) NOT NULL auto_increment,
  `sc_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `sc_address` varchar(100) collate utf8_unicode_ci NOT NULL default '',
  `sc_phone` varchar(30) collate utf8_unicode_ci NOT NULL default '',
  `sc_email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `sc_shipping_cost` decimal(5,2) NOT NULL default '0.00',
  `sc_currency` int(10) unsigned NOT NULL default '1',
  `sc_order_email` enum('y','n') collate utf8_unicode_ci NOT NULL default 'n',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_titre`
--

CREATE TABLE IF NOT EXISTS `plantons_titre` (
  `id` int(12) NOT NULL auto_increment,
  `titre` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_user`
--

CREATE TABLE IF NOT EXISTS `plantons_user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(20) collate utf8_unicode_ci NOT NULL default '',
  `user_password` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `user_regdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structure de la table `plantons_vacances`
--

CREATE TABLE IF NOT EXISTS `plantons_vacances` (
  `id` int(12) NOT NULL auto_increment,
  `date` varchar(255) collate utf8_unicode_ci NOT NULL,
  `actif` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='vacances commandes' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_cocagnard`
--

CREATE TABLE IF NOT EXISTS `reg_cocagnard` (
  `id` int(11) NOT NULL auto_increment,
  `date_time` datetime default NULL,
  `Adresse` varchar(255) default NULL,
  `CommuneVille` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `PDD` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `nom` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `ct_id` int(10) unsigned NOT NULL auto_increment,
  `pd_id` int(10) unsigned NOT NULL default '0',
  `ct_qty` mediumint(8) unsigned NOT NULL default '1',
  `ct_session_id` char(32) collate utf8_unicode_ci NOT NULL default '',
  `ct_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ct_id`),
  KEY `pd_id` (`pd_id`),
  KEY `ct_session_id` (`ct_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1021 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cat_id` int(10) unsigned NOT NULL auto_increment,
  `cat_parent_id` int(11) NOT NULL default '0',
  `cat_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `cat_description` text collate utf8_unicode_ci NOT NULL,
  `cat_image` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`),
  KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_cocagnards`
--

CREATE TABLE IF NOT EXISTS `tbl_cocagnards` (
  `PersNo` int(20) NOT NULL auto_increment,
  `PersPDDDistrNo` int(20) default NULL,
  `PersLogin` text collate utf8_unicode_ci,
  `PersPasswd` text collate utf8_unicode_ci,
  `PersNom` text collate utf8_unicode_ci,
  `PersPrenom` text collate utf8_unicode_ci,
  `PersAdresse` text collate utf8_unicode_ci,
  `PersTelephone` text collate utf8_unicode_ci,
  `PersNPA` text collate utf8_unicode_ci,
  `PersLocalite` text collate utf8_unicode_ci,
  `PersAdresseEmail` varchar(255) collate utf8_unicode_ci default NULL,
  `jos_user_id` int(12) NOT NULL,
  PRIMARY KEY  (`PersNo`),
  UNIQUE KEY `PersAdresseEmail` (`PersAdresseEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1074 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_currency`
--

CREATE TABLE IF NOT EXISTS `tbl_currency` (
  `cy_id` int(10) unsigned NOT NULL auto_increment,
  `cy_code` char(3) collate utf8_unicode_ci NOT NULL default '',
  `cy_symbol` varchar(8) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`cy_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customers`
--

CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `PersNo` int(20) NOT NULL auto_increment,
  `PersPDDDistrNo` int(20) default NULL,
  `PersNom` text collate utf8_unicode_ci,
  `PersPrenom` text collate utf8_unicode_ci,
  `PersAdresse` text collate utf8_unicode_ci,
  `PersTelephone` text collate utf8_unicode_ci,
  `PersNPA` text collate utf8_unicode_ci,
  `PersLocalite` text collate utf8_unicode_ci,
  `PersAdresseEmail` varchar(255) collate utf8_unicode_ci default NULL,
  `jos_user_id` int(12) NOT NULL,
  `date_last_mod` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PersNo`),
  UNIQUE KEY `jos_user_id` (`jos_user_id`),
  UNIQUE KEY `PersAdresseEmail` (`PersAdresseEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=376 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customers00`
--

CREATE TABLE IF NOT EXISTS `tbl_customers00` (
  `PersNo` int(20) NOT NULL auto_increment,
  `PersPDDDistrNo` int(20) default NULL,
  `PersNom` text collate utf8_unicode_ci,
  `PersPrenom` text collate utf8_unicode_ci,
  `PersAdresse` text collate utf8_unicode_ci,
  `PersTelephone` text collate utf8_unicode_ci,
  `PersNPA` text collate utf8_unicode_ci,
  `PersLocalite` text collate utf8_unicode_ci,
  `PersAdresseEmail` varchar(255) collate utf8_unicode_ci default NULL,
  `jos_user_id` int(12) NOT NULL,
  `date_last_mod` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PersNo`),
  UNIQUE KEY `jos_user_id` (`jos_user_id`),
  UNIQUE KEY `PersAdresseEmail` (`PersAdresseEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=295 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customers_backup`
--

CREATE TABLE IF NOT EXISTS `tbl_customers_backup` (
  `PersNo` int(20) NOT NULL,
  `PersPDDDistrNo` int(20) default NULL,
  `PersNom` text collate utf8_unicode_ci,
  `PersPrenom` text collate utf8_unicode_ci,
  `PersAdresse` text collate utf8_unicode_ci,
  `PersTelephone` text collate utf8_unicode_ci,
  `PersNPA` text collate utf8_unicode_ci,
  `PersLocalite` text collate utf8_unicode_ci,
  `PersAdresseEmail` varchar(255) collate utf8_unicode_ci default NULL,
  `jos_user_id` int(12) NOT NULL,
  `date_last_mod` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `od_id` int(10) unsigned NOT NULL auto_increment,
  `od_date` datetime default NULL,
  `od_last_update` datetime NOT NULL default '0000-00-00 00:00:00',
  `od_status` enum('Nouveau','Payé','Envoyé','Terminé','Supprimé') collate utf8_unicode_ci NOT NULL default 'Nouveau',
  `od_memo` text collate utf8_unicode_ci NOT NULL,
  `od_shipping_user` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `date_livraison` date NOT NULL,
  PRIMARY KEY  (`od_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=211 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order_item`
--

CREATE TABLE IF NOT EXISTS `tbl_order_item` (
  `od_id` int(10) unsigned NOT NULL default '0',
  `pd_id` int(10) unsigned NOT NULL default '0',
  `od_qty` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`od_id`,`pd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `pd_id` int(10) unsigned NOT NULL auto_increment,
  `cat_id` int(10) unsigned NOT NULL default '0',
  `pd_name` varchar(100) collate utf8_unicode_ci NOT NULL default '',
  `pd_description` text collate utf8_unicode_ci NOT NULL,
  `pd_price` decimal(9,2) NOT NULL default '0.00',
  `pd_qty` smallint(5) unsigned NOT NULL default '0',
  `pd_image` varchar(200) collate utf8_unicode_ci default NULL,
  `pd_thumbnail` varchar(200) collate utf8_unicode_ci default NULL,
  `pd_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `pd_last_update` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`pd_id`),
  KEY `cat_id` (`cat_id`),
  KEY `pd_name` (`pd_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1103 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shop_config`
--

CREATE TABLE IF NOT EXISTS `tbl_shop_config` (
  `sc_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `sc_address` varchar(100) collate utf8_unicode_ci NOT NULL default '',
  `sc_phone` varchar(30) collate utf8_unicode_ci NOT NULL default '',
  `sc_email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `sc_shipping_cost` decimal(5,2) NOT NULL default '0.00',
  `sc_currency` int(10) unsigned NOT NULL default '1',
  `sc_order_email` enum('y','n') collate utf8_unicode_ci NOT NULL default 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_titre`
--

CREATE TABLE IF NOT EXISTS `tbl_titre` (
  `id` int(12) NOT NULL auto_increment,
  `titre` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(20) collate utf8_unicode_ci NOT NULL default '',
  `user_password` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `user_regdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_vacances`
--

CREATE TABLE IF NOT EXISTS `tbl_vacances` (
  `id` int(12) NOT NULL auto_increment,
  `date` varchar(255) collate utf8_unicode_ci NOT NULL,
  `actif` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='vacances commandes' AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
