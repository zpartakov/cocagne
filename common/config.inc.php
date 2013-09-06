<?php
/*
 * config values for your system
 * #adapt the following datas to your need
 */

/*
 * secret informations for your eyes only
 */
$zedbHostname = "localhost";                       //your mysql webserver name, usually localhost
$login= "username";                              // username for you database
$pass= "password";                             // password to the database if you dont have a password
$database_name="database_name";                     //database_name

###### OTHER CONF ##########
$titre_du_site="réservation"; //main title of your website system
$la_feuille_de_style="http://xxxyourserver/cms/templates/cocagne/css/template.css"; //your css
$table_joomla_users="jos_users"; //the joomla table for users
$sender_admin_email="admin@xxxyourserver"; //the email of the cooperative's administrator for demi-journees
$receiver_admin_email="demijournees@xxxyourserver";//email of the cooperative's administrator notified for demi-journees
$title_email="Réservation demi-journée pour ";//email title
$la_feuille_de_style="/cms/templates/cocagne/css/template.css"; //votre css
$server_dns_regexp="/^http:\/\/www\.xxxyourserver\.ch\/"; //the regexp to identify servername dns
$referent=$_SERVER["HTTP_REFERER"];


/*
 * configuration demi-journées
 */

$def_new="3"; //valeur défaut pour le nombre de mois ajoutés
$nbplacesDef="6"; //valeur par défaut pour le nombre maximum de places

/*
 * heures standard pour les demi-journées
*/

$heures=array(
"08",
"14",
"17",
"18"
);

/*
 * libellés heures standards
 */
$heures_libelle=array(
"matin",
"après-midi",
"soir",
"livraison"
);

$size=count($heures);

//jours interdits
$jours_no=";Tuesday;Friday;Sunday;";
# jours et heures#
$aujourdhui=date("Y-m-d 08:00"); //calcule la date courante
$aujourdhuipm=date("Y-m-d 14:00"); //calcule la date courante
$aujourdhuisoir=date("Y-m-d 17:00"); //calcule la date courante
$aujourdhuilivraison=date("Y-m-d 18:00"); //calcule la date courante
$def_jours_affiches=60; //nombre de jours à venir affichés dans les réservations

#compatibility var names for PCG, do not change anything     
      $dbUsername = $login;
      $dbPassword = $pass;
      $dbName     = $database_name;   

?>

