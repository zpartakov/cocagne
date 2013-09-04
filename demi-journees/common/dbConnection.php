<?php

###### RESERVATIONS ##########
 $titre_du_site="réservation"; //titre général du site / du système
$la_feuille_de_style="XXX"; //votre css, eg /cms/templates/cocagne/css/template.css 


$def_new="3"; //valeur défaut pour le nombre de mois ajoutés
$nbplacesDef="6"; //valeur par défaut pour le nombre maximum de places

# jours et heures#
$aujourdhui=date("Y-m-d 08:00"); //calcule la date courante
$aujourdhuipm=date("Y-m-d 14:00"); //calcule la date courante
$aujourdhuisoir=date("Y-m-d 17:00"); //calcule la date courante
$aujourdhuilivraison=date("Y-m-d 18:00"); //calcule la date courante
#$def_jours_affiches=60; //nombre de jours à venir affichés dans les réservations
//heures
$heures=array(
"08",
"14",
"17",
"18"
);
$heures_libelle=array(
"matin",
"après-midi",
"soir",
"livraison"
);
$size=count($heures);
//Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday
//lundi, mercredi, jeudi, samedi
//jours interdits
$jours_no=";Tuesday;Friday;Sunday;";


########## MYSQL #########

$referent=$_SERVER["HTTP_REFERER"];
#echo $referent; #tests
/*
 * 1st line: //put here your DNS, eg. http:\/\/www\.cocagne\.ch\ - be carefull escaping all special chars!
 */
if(preg_match("/^XXX/",$referent)){ 
$dbHostname = "XXX";                       //your mysql webserver name, usually localhost
#echo $dbHostname; exit;
} else {
$dbHostname = "localhost";
}

$login= "XXX";                              // user name for you database
$pass= "XXX";                             // pass word to the database if you dont have a password 
$database_name="XXX";                     //name of the database

######### DON'T CHANGE ANYTHING BELOW UNLESS YOU KNOW WHAT YOU'RE DOING!!! #########
#compatibility var names for PCG     
      $dbUsername = $login;
      $dbPassword = $pass;
      $dbName     = $database_name;   


  ?>
