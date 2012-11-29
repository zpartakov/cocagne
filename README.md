Outils informatiques pour la gestion d'une ACP (agriculture contractuelle de proximité) 

Ce dépôt comprend les outils informatiques de gestion de la coopérative agricole 
"Les Jardins de Cocagne", http://cocagne.ch

Tous ces outils sont libres, développés sous linux

Ils demandent AMP (Apache, MySQL et PHP) et cakePHP (required: cakePHP 1.3 https://github.com/cakephp/cakephp/tags); ils sont faits pour le CMS Joomla! mais devraient pouvoir assez facilement s'adapter à un autre CMS

Liste des outils

- admin/
L'outil général d'administration, accès réservé aux administrateurs du site, écrit avec CakePHP, et la structure complète de la base de données

- common/
un répertoire avec des outils communs

- demi-journees/
un outil pour la gestion des demi-journées des coopérateurs

- points2distribution/
un outil pour la gestion des points de distribution, affichant des informations plus ou moins détaillées si l'utilisateur est anonyme ou un membre enregistré de la coopérative

- recettes_legumes/
Gestion des recettes et de l'encyclopédie des légumes, soit

2 composants joomla liés:  
- les recettes de cuisine
- l'encyclopédie des légumes


@gitpackage cocagne

@version $Id: 1.10

@author Fred Radeff fradeff@akademia.ch

@copyright (c) 2012 Fred Radeff, akademia.ch

@license http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later

@required: cakePHP 1.3 https://github.com/cakephp/cakephp/tags