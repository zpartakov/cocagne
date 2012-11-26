<?
/**
 * Various useful fonctions for site cocagne
 */
 /* Don't change anything below this line                                                        */                                                   

function connect_db()
	{
		$login= "XXX";                              // user name for you database
$pass= "XXX";                             // pass word to the database if you dont have a password 
$database_name="XXX";                     //name of the database
		
	#global $pass,$login;
$referent=$_SERVER["HTTP_HOST"];
if(preg_match("/^localhost$/",$referent)){
$dbHostname = "localhost";
} else {
$dbHostname = "XXX";                       //your mysql webserver name
}

	$db=mysql_connect($dbHostname,$login,$pass) or  die("Unable  to  select  database");
		
	return $db;
	
	}

function db_name()
	{
	global $database_name;
	$db_name=$database_name;
	
	return $db_name;
	
	}
	
#class to compute unique random numbers, to move in an external file eg inc.classes.php
class UniqueRand{
  var $alreadyExists = array();
  function uRand($min = NULL, $max = NULL){
    $break='false';
    while($break=='false'){
      $rand=mt_rand($min,$max);

      if(array_search($rand,$this->alreadyExists)===false){
        $this->alreadyExists[]=$rand;
        $break='stop';
      }else{
        #echo " $rand already!  ";
        #print_r($this->alreadyExists);
      }
    }
    return $rand;
  }
}
$rand=new UniqueRand();

#nettoyer les mots pour le vocabulaire
function normaliserMot($mot) {
	$mot=trim($mot);
	$mot=preg_replace("/,/","",$mot);
	$mot=str_replace(",","",$mot);
	$mot=preg_replace("/\.*/","",$mot);
	$mot=str_replace("?","",$mot);
	return $mot;
}

#convertir date française DD-MM-YYYY au format MySQL YYYY-MM-DD
function datefr2mySQL($date) { 
$split = explode(".",$date); 
$annee = $split[2]; 
$mois = $split[1]; 
$jour = $split[0]; 
return "$annee"."-"."$mois"."-"."$jour"; 
} 

#convertir date MySQL YYYY-MM-DD  au format français DD-MM-YYYY
function datemySQL2fr($date) { 
$split = explode("-",$date); 
$annee = $split[0]; 
$mois = $split[1]; 
$jour = $split[2]; 
return "$jour"."-"."$mois"."-"."$annee"; 
} 

function date_mysql_to_timestamp($date) {
#if (!preg_match('/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/',$date,$r)){
#return false;
#}
$ladate=explode("-",$date);
return mktime(0, 0,0,$ladate[2],$ladate[3],$ladate[1] );
}
function verifieDate($date) {
#2007-06-22
#checkdate(m-d-y);
#note: for a strange reason you need firstly to reconstruct the format of date var
$ladate1=explode("-",$date);
$month=preg_replace("/^0/","",$ladate1[1]);
$day=preg_replace("/^0/","",$ladate1[2]);
$year=$ladate1[0];
return checkdate($month, $day, $year);
}

function testSql($sql) {
	if(!$sql) {
		echo "Error MySQL: " .mysql_error(); exit; //there is an error, notify and exit
	}
echo "<pre>" .$sql ."</pre>";
echo "Results items: " .mysql_num_rows(mysql_query($sql)); //how many items
exit;
}
/* VARIOUS SQL QUERIES
 */
function execute_sql($sql){
$result=mysql_query($sql);
	if(!$result) {
		echo "erreur mysql: " .mysql_error(); exit;
	}

	return ($result);
}
	
function probleme() {
echo 	"<br><input type=\"button\" name=\"cancel\" value=\"Retour\" onClick=\"javascript:history.back();\">";
	exit;
}

/****
 * Titre: Date format MySQL en date Francaise 
 * Auteur: FreeCreator 
 * Email: freecreator59@hotmail.com
 * Url: 
 * Description: Cette fonction permet de convertir une date au format MySQL en date Francaise.

Elle retourne la date en francais avec heures et minutes
****/
function datefr($date_sql){
// Declaration du tableau des noms de jours en Francais 
  //-------- ici 
  
  
  $j_fr[Sunday]     = "Dimanche"; 
  $j_fr[Monday]     = "Lundi"; 
  $j_fr[Tuesday]     = "Mardi"; 
  $j_fr[Wednesday]    = "Mercredi"; 
  $j_fr[Thursday]    = "Jeudi";
  $j_fr[Friday]     = "Vendredi"; 
  $j_fr[Saturday]     = "Samedi"; 
  
  // Declaration du tableau des noms de jours en Francais 
  $m_fr[1]    = "Janvier"; 
  $m_fr[2]    = "Fevrier"; 
  $m_fr[3]    = "Mars"; 
  $m_fr[4]    = "Avril"; 
  $m_fr[5]    = "Mai"; 
  $m_fr[6]    = "Juin"; 
  $m_fr[7]    = "Juillet"; 
  $m_fr[8]    = "Aout"; 
  $m_fr[9]    = "Septembre"; 
  $m_fr[10] = "Octobre"; 
  $m_fr[11] = "Novembre"; 
  $m_fr[12] = "Decembre"; 
  
  $la_date    = explode(' ', $date_sql); // on decompose la date SQL
  $heure_sql= explode(':',$la_date[1]); // On prend la partie heure
  $date_sql    = explode('-',$la_date[0]); // On prend la partie date
  
  
  if (substr($date_sql[1],0,1) == '0' ) // On verifie si le 1er caractere est 0 dans le numero du mois
    {
    // si oui alors on supprime le 1er caractere
    $date_sql[1] = substr($date_sql[1],1,strlen($date_sql[1]) -1);
    }

  $heure = $heure_sql[0]; // La variable de l'heure
  $minutes = $heure_sql[1]; // La variable des minutes
  $secondes = $heure_sql[2]; // la variable des secondes
  
  $annee = $date_sql[0]; // La variable des annees
  $num_mois = $date_sql[1]; // La variable du numero du mois
  $nom_mois = $m_fr[$num_mois]; // La variable du mois en francais
  $num_jour = $date_sql[2]; // Le numero du jour
  $nom_jour = $j_fr[date("l", mktime(0,0,0,$num_mois,$num_jour,$annee))]; // Le nom du jour en francais

#  $date = "Le $nom_jour $num_jour $nom_mois $annee"; // On forme la date
  $date = "$nom_jour $num_jour $nom_mois $annee"; // On forme la date
  $heure = "$heure:$minutes:$secondes"; // On forme l'heure
  
  #$date_fr= $date.' à '.$heure;
  $date_fr= $date;
  
  //retour de cette variable 
  return $date_fr; 
}

/* ######### AJOUTS fradeff www.akademia.ch lundi 11 juin 2007, 21:09:59 (UTC+0200) ###### */

#renvoyer la date complète mais pas les heures et minutes
function datefr_short($date_sql){
// Declaration du tableau des noms de jours en Francais 
  //-------- ici 
  $j_fr[Sunday]     = "dimanche"; 
  $j_fr[Monday]     = "lundi"; 
  $j_fr[Tuesday]     = "mardi"; 
  $j_fr[Wednesday]    = "mercredi"; 
  $j_fr[Thursday]    = "jeudi"; 
  $j_fr[Friday]     = "vendredi"; 
  $j_fr[Saturday]     = "samedi"; 
  
  // Declaration du tableau des noms de jours en Francais 
  $m_fr[1]    = "janvier"; 
  $m_fr[2]    = "février"; 
  $m_fr[3]    = "mars"; 
  $m_fr[4]    = "avril"; 
  $m_fr[5]    = "mai"; 
  $m_fr[6]    = "juin"; 
  $m_fr[7]    = "juillet"; 
  $m_fr[8]    = "août"; 
  $m_fr[9]    = "septembre"; 
  $m_fr[10] = "octobre"; 
  $m_fr[11] = "novembre"; 
  $m_fr[12] = "décembre"; 
  
  $la_date    = explode(' ', $date_sql); // on decompose la date SQL
  $heure_sql= explode(':',$la_date[1]); // On prend la partie heure
  $date_sql    = explode('-',$la_date[0]); // On prend la partie date
  
  
  if (substr($date_sql[1],0,1) == '0' ) // On verifie si le 1er caractere est 0 dans le numero du mois
    {
    // si oui alors on supprime le 1er caractere
    $date_sql[1] = substr($date_sql[1],1,strlen($date_sql[1]) -1);
    }

  $heure = $heure_sql[0]; // La variable de l'heure
  $minutes = $heure_sql[1]; // La variable des minutes
  $secondes = $heure_sql[2]; // la variable des secondes
  
  $annee = $date_sql[0]; // La variable des annees
  $num_mois = $date_sql[1]; // La variable du numero du mois
  $nom_mois = $m_fr[$num_mois]; // La variable du mois en francais
  $num_jour = $date_sql[2]; // Le numero du jour
  $nom_jour = $j_fr[date("l", mktime(0,0,0,$num_mois,$num_jour,$annee))]; // Le nom du jour en francais

#  $date = "Le $nom_jour $num_jour $nom_mois $annee"; // On forme la date
  $date = "$nom_jour $num_jour $nom_mois $annee"; // On forme la date  
  $date_fr= $date;
  
  //retour de cette variable 
  return $date_fr; 
}

#renvoyer le nom du jour
function jourfr_short($date_sql){
// Declaration du tableau des noms de jours en Francais 
  //-------- ici 
  $j_fr[Sunday]     = "Dimanche"; 
  $j_fr[Monday]     = "Lundi"; 
  $j_fr[Tuesday]     = "Mardi"; 
  $j_fr[Wednesday]    = "Mercredi"; 
  $j_fr[Thursday]    = "Jeudi"; 
  $j_fr[Friday]     = "Vendredi"; 
  $j_fr[Saturday]     = "Samedi"; 
  
  #$la_date    = explode(' ', $date_sql); // on decompose la date SQL
  $date_sql    = explode('-',$date_sql); // On prend la partie date
    $annee = $date_sql[0]; // La variable des annees
  $num_mois = $date_sql[1]; // La variable du numero du mois

  $num_jour = $date_sql[2]; // Le numero du jour
  $nom_jour = $j_fr[date("l", mktime(0,0,0,$num_mois,$num_jour,$annee))]; // Le nom du jour en francais
  
  //retour de cette variable 
  return $nom_jour; 
}


#renvoyer l'heure seulement
function datefr_hour($date_sql){
    $la_date    = explode(' ', $date_sql); // on decompose la date SQL
  $heure_sql= explode(':',$la_date[1]); // On prend la partie heure
 $heure = $heure_sql[0]; // La variable de l'heure
  $minutes = $heure_sql[1]; // La variable des minutes
  $heure = "$heure:$minutes"; // On forme l'heure<
  //retour de cette variable 
  return $heure; 
}

# une fonction pour verifier d'ou vient la requete: on éjecte les pirates qui viendraient d'ailleurs
function checkserver() {
	$referent=$_SERVER["HTTP_HOST"];
if(!preg_match("/^XXX$/",$referent)){ //your dns, eg XXX_yourDNS
	if(!preg_match("/^XXX_yourDNS$/",$referent)){
			echo "Sorry, your request must belongs within our main domain server!"; exit;
}}

}

# verifie si l'utilisateur est autorise dans la base
function checkutilisateur($utilisateur) {
	$sql="SELECT *
	FROM `jos_users`
	WHERE `username` LIKE '" .$utilisateur ."'";
	#echo $sql;
	#on refuse si l'utilisateur joomla n'existe pas
	$checkUser=mysql_query($sql);
	if(mysql_num_rows($checkUser)!=1) {
		echo "Cet utilisateur n'est pas autorisé!";
	echo '<br />Veuillez vous <a href="/cms/login-logout">enregistrer</a>';
		exit;
	}
	#ok l'utilisateur est bien enregistré, on peut continuer	
}

//calcule le nombre de jours à afficher; à modifier dans cake si nécessaire
function njoursaffiches() {
	$njoursaffiches="SELECT n FROM cocagne_defaults WHERE lib LIKE 'def_jours_affiches'";
	$njoursaffiches=mysql_query($njoursaffiches);
	$def_jours_affiches=mysql_result($njoursaffiches,0,'n');
	define("def_jours_affiches", $def_jours_affiches); //on definit une constante globale
}

//calcule le nombre de jours minimum pour s'inscrire; à modifier dans cake si nécessaire
function delaiinscription() {
	$njoursaffiches="SELECT n FROM cocagne_defaults WHERE lib LIKE 'DJ_delai_minimum_inscription'";
	$njoursaffiches=mysql_query($njoursaffiches);
	$def_jours_affiches=mysql_result($njoursaffiches,0,'n');
	define("DJ_delai_minimum_inscription", $def_jours_affiches); //on definit une constante globale
}
//calcule le nombre de jours minimum pour s'inscrire; à modifier dans cake si nécessaire
function delaiinscriptionlivraison() {
	$njoursaffiches="SELECT n FROM cocagne_defaults WHERE lib LIKE 'DJ_delai_minimum_inscription_livraison'";
	$njoursaffiches=mysql_query($njoursaffiches);
	$def_jours_affiches=mysql_result($njoursaffiches,0,'n');
	define("DJ_delai_minimum_inscription_livraison", $def_jours_affiches); //on definit une constante globale
}

 
 ?>
