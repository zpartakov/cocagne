<?php
#adapt the following datas to your need
###### RESERVATIONS ##########
$titre_du_site="réservation"; //titre général du site / du système
$la_feuille_de_style="XXX"; //votre css, eg http://www.les-jardins-de-cocagne.ch/cms/templates/cocagne/css/template.css


$def_new="3"; //valeur défaut pour le nombre de mois ajoutés
$nbplacesDef="6"; //valeur par défaut pour le nombre maximum de places

# jours et heures#
$aujourdhui=date("Y-m-d 08:00"); //calcule la date courante
$aujourdhuipm=date("Y-m-d 14:00"); //calcule la date courante
$aujourdhuisoir=date("Y-m-d 17:00"); //calcule la date courante
$def_jours_affiches=60; //nombre de jours à venir affichés dans les réservations
//heures
$heures=array(
"08",
"14",
"17"
);
$heures_libelle=array(
"matin",
"après-midi",
"soir"
);
$size=count($heures);
//Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday
//lundi, mercredi, jeudi, samedi
//jours interdits
$jours_no=";Tuesday;Friday;Sunday;";

######### DON'T CHANGE ANYTHING BELOW UNLESS YOU KNOW WHAT YOU'RE DOING!!! #########
#compatibility var names for PCG     
      $dbUsername = $login;
      $dbPassword = $pass;
      $dbName     = $database_name;   

?>

