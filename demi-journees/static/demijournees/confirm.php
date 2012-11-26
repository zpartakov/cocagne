<?
include("../common/dbConnection.php");
include("../common/fonctions.inc.php");
include("../common/header.inc.php");
checkserver(); //verifie ip - securité

$utilisateur=$_POST['utilisateur'];
$ladate=$_POST['ladate'];
checkutilisateur($utilisateur);

#get the user name
$sql="SELECT *
FROM `jos_users`
WHERE `username` LIKE '" .$utilisateur ."'";
$utilisateurName=mysql_result($checkUser,0,'name');

#check if user is already registred
$sqlDoublon="
SELECT * FROM `jos_demiejournees_details` WHERE  
user LIKE '$utilisateur' AND 
date LIKE '$ladate'
";
$sqlDoublon=mysql_num_rows(mysql_query($sqlDoublon));
#echo "<hr>Recherche doublon: " .$sqlDoublon ."<hr>"; //tests
if($sqlDoublon>0){
echo "Vous êtes déjà inscrit pour cette demi-journée!<br>";
echo "<br><a href=\"desinscription.php?user=" .$utilisateur ."&date='" .$ladate ."'\">Me désinscrire</a>";
echo "<br><br><a href=\"http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=" .$utilisateur ."\">Retour aux inscriptions</a>";
exit;
}
#	echo "Utilisateur : " .$utilisateur ."<br>"; //tests
/*
 * Pour des inscriptions à moins de deux semaines, envoyez un message à <a href=\"mailto:jardin@Cocagne.ch\">
      Jardin@Cocagne.ch</a>.<br><br>
      *       
      Si vous vous êtes trompé ou si vous voulez annuler une inscription, vous pouvez envoyer un
      message à <a href=\"mailto:demijournees@Cocagne.ch\">DemiJournees@Cocagne.ch</a> ou,
       moins de 2 semaines avant le rendez-vous, à <a href=\"mailto:jardin@Cocagne.ch\">Jardin@Cocagne.ch</a>.
       */
	echo "
	  Si vous êtes plusieurs personnes à venir travailler, merci de spécifier combien.
      <br><br>

       Si vous vous êtes trompé ou si vous voulez annuler une inscription, vous
devez cliquer une nouvelle fois sur la case ou votre nom apparaît.
       
       <br><br><em>Dans le champs \"remarques\", vous pouvez dire à quelle heure vous venez et vos éventuels commentaires</em></br>";
	$date=$ladate; $mesheures="";
		if(preg_match("/ 08:00:00$/",$date))	{
		$heure="matin";
	}elseif(preg_match("/ 14:00:00$/",$date))	{
		$heure="après-midi";
	}	elseif(preg_match("/ 17:00:00$/",$date))	{
		$heure="soir";
		
	}elseif(preg_match("/ 18:00:00$/",$date))	{
				$heure="livraison";
		$mesheures="Merci de préciser dans les remarques quelle tranche horaire pour votre livraison:<br>
		12h30 -13h30, 13h30-14h30, 14h30-15h30<br>";
	}else {
		$heure="";
	}
	

	echo "<br>Je réserve pour le <strong>" .datefr($ladate) .", " .$heure."</strong><br>";
	echo $mesheures;
	echo "<form id=\"form1\" name=\"form1\" method=\"post\"
     action=\"insert.php\">";
	echo "<input type=\"hidden\" name=\"utilisateur\" value=\"" .$utilisateur ."\">";
	echo "<input type=\"hidden\" name=\"ladate\" value=\"" .$ladate ."\">";
	#todo: change date format for a human readable
	echo "<table><tr><th>Nombre de personnes</th><th>Remarques</th></tr>";
	echo "<tr><td>
<select name=\"np\" size=\"7\">
<option selected>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
</select>
</td><td>
<textarea name=\"remarques\"></textarea>
</td></tr>
<tr><td>
<input type=\"reset\">
</td><td>
<input type=\"submit\">
</td></tr>
</table>
</FORM>";
#exit;
include("../common/footer.inc.php");
	
	?>
