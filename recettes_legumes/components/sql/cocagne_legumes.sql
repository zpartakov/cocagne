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

--
-- Contenu de la table `cocagne_legumes`
--

INSERT INTO `cocagne_legumes` (`id`, `legume`, `printemps`, `ete`, `automne`, `hiver`, `generalite`, `origine`, `choix`, `preparation`, `conservation`, `conseils`, `conseils_sante`, `remarques`) VALUES
(1, 'Ail des ours (Allium ursinum)', 1, 0, 0, 0, 'L''Ail des ours (Allium ursinum ; du celtique all : brûlant et du latin ursus : ours) est une plante herbacée vivace de la famille des Alliacées.\r\n\r\nC''est une plante de sous-bois frais et ombragés, à fleurs blanches de 20 à 50 cm de hauteur. Lorsque son feuillage est légèrement froissé, elle dégage une forte odeur - caractéristique - d''ail. C''est une plante sociale qui forme parfois de vastes colonies dans les sous-bois frais ou le long des ruisseaux. Les feuilles apparaissent en février-mars et les fleurs d''avril à juin. La période de la récolte se termine avec les premières fleurs.\r\n\r\nL''odeur et/ou le goût dégoûterait les herbivores de la manger.', 'Dans le temps, l''ail des Ours a été consommé en grosses quantités. En effet, on a retrouvé énormément de pollens d''ail des ours, parfois plus que ceux de céréales dans les études sur l''alimentation dans les temps préhistoriques. Donc, c''est que la fleur était aussi consommée…\r\n\r\nAu début du 20e siècle les Bruxellois avaient l''habitude, le dimanche après- midi, d''aller se promener dans la foret de Soigne, et de déguster une tartine de fromage blanc aromatisée de feuilles d''ail des ours avec une bonne Gueuze. \r\n\r\n(source: http://www.toildepices.com/index.php?url=/fr/plantes/angio_mon/liliacee/allium/ursinum.php)', 'Prenez votre ail d''ours bien frais, si vous n''avez pas le temps de l''utiliser immédiatement mettez-le au frigo', 'Il a été très utilisé en Europe et en Asie. On peut manger son bulbe et ses feuilles comme légume ou condiment. Il est excellent cru dans les salades[2]. Ses feuilles se préparent sous forme de pesto, soupe ou comme épice dans des salades, des tisanes. On peut le cuire comme des épinards, le consommer sur des tartines avec du séré, ou encore dans du yaourt nature. On peut aussi en faire des "chips" pour les apéros en passant simplement les feuilles (préalablement frottée avec un peu d''huile d''olive)au four, sur une plaque. On en fait enfin un beurre assaisonné pour les grillades.', 'Faites des pesto d''ail d''ours (voir recettes)', 'Attention : Avant floraison, l''ail des ours peut être confondu avec le muguet de mai ou le Colchique d''automne, qui sont tous deux très toxiques (éventuellement mortels). La distinction peut facilement se faire grâce à l''odeur aillée dégagée par les feuilles froissées de l''ail des ours uniquement.', 'L''ail des ours est une plante médicinale très ancienne connue des Celtes et des Germains. On en a retrouvé des restes dans des habitations du Néolithique. Depuis quelques années, il a retrouvé une popularité du fait de sa haute teneur en vitamine C et de ses propriétés amaigrissantes.\r\n\r\nIl est très riche en une huile essentielle sulfurée[1] et également en vitamine C[1]. Autres composants : sulfure de vinyle, sels, aldéhyde instable.\r\n\r\nPropriétés:\r\ndépuratif[1], rubéfiant, hypotenseur, antiseptique, anthelminthique\r\n\r\nModes d''emploi:\r\nOn utilise le bulbe dans des  : teintures, sirops, décoctions, jus, cataplasme de pulpe, essences. Il est conseillé de l''utiliser de préférence cru pour préserver la vitamine C. L''essence est utilisée comme rubéfiant en cas de rhumatismes et comme désinfectant de l''atmosphère intérieure.', 'Source principale des informations de cette page :\r\nhttp://fr.wikipedia.org/wiki/Ail_des_ours\r\n\r\n\r\nEn Russie, l''ail des ours est apprécié et s''appelle Черемша (tcheremcha), ce qui n''a rien à voir avec les ours alors que la Russie en regorge. Encore une légende qui s''envole...');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
