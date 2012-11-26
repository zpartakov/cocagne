<?php
/**
* @version        $Id: home.ctp v1.0 28.05.2010 05:13:25 CEST $
* @package        Cocagne
* @copyright      Copyright (C) 2010 - 2014 Open Source Matters. All rights reserved.
* @license        GNU/GPL, see LICENSE.php
* Cocagne is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
$this->pageTitle = 'Accueil'; 
?>
<h1>Administration base de données Cocagne</h1>
<h2>Configuration générale</h2>
<li><a href="<? echo RACINEDIR;?>/cocagne_defaults/">Valeurs par défaut</a></li>

<h2>Demi-journées</h2>
<!--<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/liste">Programmation des demi-journées</a></li>-->
<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/correction">Correction des demi-journées</a></li>
<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_default_schedules/">Valeurs par défaut</a></li>

<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/export">Exporter tableau des demi-journées</a></li>
<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/intialiser">Initialisation des demi-journées</a></li>
<li><a href="<? echo RACINEDIR;?>/jos_demiejournees/ajustements">Ajustements du nombre de personnes pour les demi-journées</a></li>

<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/archiver">Archiver les demi-journées</a></li>

<h2>Points de distribution</h2>
<li><a href="<? echo RACINEDIR;?>/jos_pdds">Points de distribution</a></li>

<h2>Cocagnard/e/s</h2>
<li><a href="<? echo RACINEDIR;?>/jos_users">Cocagnard/e/s</a></li>




<br><br>
<hr>
<h2>Autres ressources</h2>
<h3>Demi-journées</h3>
<li><a href="<? echo RACINEDIR;?>/jos_demiejournees">Demi-journées</a></li>

<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details">Détails demi-journées</a></li>
