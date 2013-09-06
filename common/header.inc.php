<?php
// Désactiver le rapport d'erreurs en prod
error_reporting(0);
//error_reporting(E_ALL ^ E_NOTICE);
###################################
#DON'T CHANGE ANYTHING BELOW THIS LINE, UNLESS YOU KNOW WHAT YOU'RE DOING!!!!
###################################
require_once("config.inc.php"); //variables to change for your site def
require_once("fonctions.inc.php"); //various classes & methods
$db=connect_db();//connect to MySQL DB
$db_name=db_name();
mysql_select_db($db_name,$db);
#mysql_query("SET NAMES 'utf8'");
#session_start( ); //demarrage de session
#$user=$_SESSION['user']; //recuperation du login
#begin HTML
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="ltr" xml:lang="fr" xmlns="http://www.w3.org/1999/xhtml" lang="fr"><head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title><? echo $titre_du_site ."s - " .$titre_de_la_page; ?></title>
<link rel="stylesheet" media="screen" type="text/css" href="<? echo $la_feuille_de_style; ?>">
<style type="text/css">
body {
	margin-left: 40px;
	margin-top: 30px;
	width: 600px;
}

td {
text-align: center;
padding: 3px;
border: thin solid;
vertical-align: baseline;
}
th {
background-color: #FCFFCD;
border: thin solid;

}
.jeudi {
background-color: #FCFFCD;
}
	* {
	font-family: "Trebuchet MS", "Segoe UI", Arial, Helvetica, sans-serif;
	font-size: 12px;
	}
</style>
  </head>
  <noscript><h1>VOUS DEVEZ ACTIVER JavaScript!</h1></noscript>
  <body>
  <!-- todo: include here joomlastyle like a frameset on production -->
  <!-- <h1><? echo $titre_du_site ."s - " .$titre_de_la_page; ?></h1> -->

