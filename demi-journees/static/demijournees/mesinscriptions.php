<?
//some includes
include("../common/dbConnection.php");
include("../common/fonctions.inc.php");
include("../common/header.inc.php");
checkserver(); //verifie ip - securité

$lutilisateur=$_GET['utilisateur'];
if($lutilisateur) {
	$utilisateur=$lutilisateur;
} else {
$utilisateur=preg_match_replace("/^.*utilisateur=/","",$referent);
}
#$utilisateur=""; //test
if(strlen($utilisateur)<1){
	echo "Sorry, this user is not allowed!";
	exit;
}
$sql="SELECT *
FROM `jos_users`
WHERE `username` LIKE '" .$utilisateur ."'";
$checkUser=mysql_query($sql);
if(!$checkUser) {
	echo "Sorry, this user is not allowed or doesn't exist!";
	exit;
}
$utilisateurName=mysql_result($checkUser,0,'name');
#ok l'utilisateur est bien enregistré, on peut continuer
echo "Bienvenue, " .utf8_encode($utilisateurName) ."<br>";
echo "Voici vos demi-journées prévues<br>";
###############################################################
/* Output a list of entries the user can choose (onclick=js submit) = default */
 

	$aujourdhui=date("Y-m-d");
	
$sqlUser="SELECT *
FROM `jos_demiejournees_details`
WHERE `date` >= '" .$aujourdhui ."'
AND `user` LIKE '".$utilisateur ."'
 ORDER BY `date`";

	$sqlUser=mysql_query($sqlUser);
	$sqlUserN=mysql_num_rows($sqlUser);

echo "<br><a href=\"http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=" .$utilisateur ."\">Retour aux inscriptions</a> | <A href=\"javascript:window.print()\">Imprimer mes inscriptions</A><br>";
	
if($sqlUserN>0) {
	echo "<table><tr><th>Date</th><th>Quand?</th><th>Remarques</th></tr>";
	$j=0;
	while($j<$sqlUserN){
		echo "<tr>";
		$date = mysql_result($sqlUser,$j,"date");
		$rem = mysql_result($sqlUser,$j,"rem");
$rem=utf8_encode($rem);


	if(preg_match("/ 08:00:00$/",$date))	{
		$heure="matin";
	}elseif(preg_match("/ 14:00:00$/",$date))	{
		$heure="après-midi";
	}	elseif(preg_match("/ 17:00:00$/",$date))	{
		$heure="soir";
		
	}elseif(preg_match("/ 18:00:00$/",$date))	{
				$heure="livraison";
		
	}else {
		$heure="";
	}

		echo "<td>" .datefr($date) ."</td><td>" .$heure ."</td><td>";
if(strlen($rem)>1){
echo "<em> (" .utf8_decode($rem) .")</em>";
}
echo "</td><td><a href=\"desinscription.php?user=".$utilisateur."&date=".$date."\">Désinscription</a></td>";
echo "</td></tr>";
		$j++;
	}
	echo "</table>";
}

echo "<br><a href=\"http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=" .$utilisateur ."\">Retour aux inscriptions</a> | <A href=\"javascript:window.print()\">Imprimer mes inscriptions</A>";

include("../common/footer.inc.php");
	
	?>
