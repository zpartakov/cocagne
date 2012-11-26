<?php
/**
* @version        $Id: index.php v1.0 12.02.2010 18:30:08 CET $
* @package        Cocagne / Demi-journees
* @copyright    Copyright (C) 2009 - 2013 Open Source Matters. All rights reserved.
* @license        GNU/GPL, see LICENSE.php
* webmaster fradeff@akademia.ch
*/
$titre_de_la_page=" demi-journées";

error_reporting(E_ALL ^ E_NOTICE); //test
//error_reporting(0); //todo on prod
include("../common/dbConnection.php"); //connection mysql
include("../common/fonctions.inc.php");//fonctions utiles
include("../common/header.inc.php");//haut de page
//some vars
$lurl=$_SERVER["HTTP_REFERER"];
$lutilisateur=$_GET['utilisateur'];
if($lutilisateur) {
	$utilisateur=$lutilisateur;
} else {
$utilisateur=preg_replace("/^.*utilisateur=/","",$lurl);
}
//security
checkserver(); //verifie ip - securité
checkutilisateur($utilisateur);

echo "<strong><a href=\"http://" .$_SERVER["HTTP_HOST"] ."\">Retour" ."</a></strong><br>";
###############################################################
/* Output a list of entries the user can choose (onclick=js submit) = default */
	$aujourdhui=date("Y-m-d"); $aujourdhuinix=date("U"); 
	//fonctions ds ../common/fonctions.inc.php
	njoursaffiches(); //nombre de jour affichés, définis dans les configurations par défaut
	delaiinscription(); //nombre de jours minimum pour s'inscrire
	delaiinscriptionlivraison(); //nombre de jours minimum pour s'inscrire

/*modif ad hoc pour mat a reprendre*/


#maintenance
$sqlmaintenance="SELECT * FROM dj_maintenances ORDER BY id desc";
$sqlmaintenance=mysql_query($sqlmaintenance);
if(!$sqlmaintenance) {
	echo "SQL error: " .mysql_error(); exit;
}

	$date_stop=mysql_result($sqlmaintenance,0,'stop');
	$actif=mysql_result($sqlmaintenance,0,'actif');
//echo "actif?: " .$actif; exit; //tests
//on est en maintenance
if($actif=="1") {
	$query  = "
    SELECT * FROM jos_demiejournees
	WHERE jos_demiejournees.date >'" .$aujourdhui ." 18:00:00' 
	AND jos_demiejournees.date < '" .$date_stop ."' 
	AND statut=1 
	ORDER BY jos_demiejournees.date LIMIT 0," .(def_jours_affiches*4); //on multiplie le nbre de jours par 4 (am-pm-soir-livr), changer cette constante dans les defaults
//normal
} else {
	//requete principale: le plus grand (>) et 18h pour obliger à chercher à partir du lendemain
	$query  = "
    SELECT * FROM jos_demiejournees
	WHERE jos_demiejournees.date >'" .$aujourdhui ." 18:00:00'
	AND statut=1 
	ORDER BY jos_demiejournees.date LIMIT 0," .(def_jours_affiches*4); //on multiplie le nbre de jours par 4 (am-pm-soir-livr), changer cette constante dans les defaults

}
//echo $query; exit; //tests
	$result=mysql_query($query);
	$numberOfRows = MYSQL_NUM_ROWS($result);
	$letexte="
	 <b>Cliquez avec votre souris sur la petite case blanche qui vous intéresse</b>, puis suivez les indications. 
	 Vous aurez un message de confirmation dans votre boîte aux lettres.<br>
	   <table border=\"0\">
		   <tr>
			   <td>        <em>S'il n'y a pas de petite case à cocher, il n'est pas ou plus possible de s'inscrire</em>
</td>
<td>       <div style=\"" .$mesinscriptions ."\"><form id=\"form2\" name=\"form2\" method=\"post\" action=\"mesinscriptions.php?utilisateur=" .$utilisateur ."\"><input type=\"submit\" value=\"Mes inscriptions\" style=\"" .$mesinscriptions ."\"></form></div>
</td>
		   </tr>
	   </table>

       
	<strong>Je m'inscris pour le...</strong>
	<br>
	<form id=\"form1\" action=\"confirm.php\" name=\"form1\" method=\"post\">
<input type=\"hidden\" name=\"utilisateur\" value=\"" .$utilisateur."\">
	<TABLE>
     <TR>
      <th><B>Date</B></th><th>Matin</th><th>Apr&egrave;s-midi</th><th>Livraison</th>
   </TR>
";
echo $letexte;

//now loop on dates

	$i=0; $icell=1; $iligne=1;
	$lastrecord=mysql_num_rows($result)-1;
	while($i<mysql_num_rows($result)){
			$x="";
			$thisId = mysql_result($result,$i,"id");
			$thisDate = mysql_result($result,$i,"date");
			$dateCourt=datefr_short(preg_replace("/ .*/","",$thisDate));
			$thisDatenix=strtotime($thisDate); //date au format unix pour calculs sur les dates			
			$thisREMARQUES = mysql_result($result,$i,"REMARQUES");
			$nplaces=mysql_result($result,$i,"nplaces");
			$statut=mysql_result($result,$i,"statut");
			$motif=str_replace("-",".",$thisDate);
			$motif=str_replace(":",".",$motif);
			$motif=str_replace(" ",".",$motif);
			 if($statut==1){ //on affiche que si le flag statut = 1
			#newline
			#matin
			if(preg_match("/08:00:00$/",$thisDate))	{
				//calcul nplace + date pm
				$nplacespm=mysql_result($result,$i+1,"nplaces");
				$thisDatepm = mysql_result($result,$i+1,"date");

			$debut="";
			$iligne++; #on incrémente la nouvelle ligne

			if (($iligne%2)==0) { $bgColor = "#FFFFFF"; } else { $bgColor = "#D4FF8F"; }
			if (($iligne%9)==0) { //on ajoute un entete toutes les N lignes
			$debut.= "     <TR>
				  <th><B>Date</B></th><th>Matin</th><th>Apr&egrave;s-midi</th><th>Livraison</th>
					</TR>";
			}

			$debut.= "<tr><td style=\"background-color: " .$bgColor ."\">".$dateCourt;

			$debut.="<br>
			<td  style=\"background-color: " .$bgColor ."\">";

			if($thisREMARQUES){
				$debut.= "<em>" .$thisREMARQUES ."</em>";
			}
			$fin='</td>';
				}elseif(preg_match("/14:00:00$/",$thisDate))	{ //apres-midi
					
				//calcul nplace + date pm
				$nplacesam=mysql_result($result,$i-1,"nplaces");
				$thisDateam = mysql_result($result,$i-1,"date");
					
			$debut ="<td style=\"background-color: " .$bgColor ."\">";
			$fin='</td>';
			
				}elseif(preg_match("/17:00:00$/",$thisDate))	{
			$debut ="<td style=\"background-color: " .$bgColor ."\">";
			$fin='</td>';
			$debut="";
			$fin="";
				}elseif(preg_match("/18:00:00$/",$thisDate))	{

			echo "";
			$debut ="<td style=\"background-color: " .$bgColor ."\">";

			if(preg_match("/jeudi/",$dateCourt)){ #on affiche pas les livraisons si pas jeudi
		}
			$fin="</td></tr>";
		}



	if(preg_match("/18:00:00$/",$thisDate)&&!preg_match("/jeudi/",$dateCourt)||preg_match("/17:00:00$/",$thisDate)||preg_match("/08:00:00$/",$thisDate)&&preg_match("/vendredi/",$dateCourt)){ //on affiche pas les livraisons si pas jeudi; on affiche pas les soirs si pas mercredi
	$cocagnardes="";
	} else {
	$cocagnardes=""; #initialisation de la variable
	$sqlUser="SELECT *
	FROM `jos_demiejournees_details`
	WHERE `date` = '".$thisDate ."' ORDER BY user";
	$sqlUser=mysql_query($sqlUser);
	$sqlUserN=mysql_num_rows($sqlUser);

	if(!$sqlUserN){
		$sqlUserN=0;
	} 

	#calcul du vrai nombre de places
	$sqlUser2="SELECT SUM(npers) AS np 
	FROM `jos_demiejournees_details`
	WHERE `date` = '".$thisDate ."' ORDER BY user";
	$sqlUser2=mysql_query($sqlUser2);
	$sqlUserN2=mysql_result($sqlUser2,0,'np');
	$montre=1;
		
	########## finally print every cell ###############
	if(preg_match("/08:00:00$/",$thisDate))	{ //matin, ajout heures pm
	$sqlUser3="SELECT SUM(npers) AS np 
	FROM `jos_demiejournees_details`
	WHERE `date` = '".$thisDatepm ."' ORDER BY user";

	$sqlUser3=mysql_query($sqlUser3);
	$sqlUserN3=mysql_result($sqlUser3,0,'np');
		$totalplacesampmdispo=$nplaces+$nplacespm;
		$totalplacesampmprises=$sqlUserN2+$sqlUserN3;

		if($totalplacesampmprises>=$totalplacesampmdispo){ //le compte est bon ou plus
			$color="#00FF00";
			$montre=0;
		}
				if(!preg_match("/jeudi/",$dateCourt)) { //n jours à l'avance si pas jeudi
					if($thisDatenix-(DJ_delai_minimum_inscription*24*2600)<$aujourdhuinix) {
						$montre=0;
					}
		} else { //livraisonjeudi
			if($thisDatenix-(DJ_delai_minimum_inscription_livraison*24*2600)<$aujourdhuinix) {
						$montre=0;
					}
			
			
		}
		
	} elseif(preg_match("/14:00:00$/",$thisDate))	{ //après-midi, ajout heures am
	$sqlUser4="SELECT SUM(npers) AS np 
	FROM `jos_demiejournees_details`
	WHERE `date` = '".$thisDateam ."' ORDER BY user";

	$sqlUser4=mysql_query($sqlUser4);
	$sqlUserN4=mysql_result($sqlUser4,0,'np');
		$totalplacesampmdispo=$nplaces+$nplacesam;
		$totalplacesampmprises=$sqlUserN2+$sqlUserN4;

		if($totalplacesampmprises>=$totalplacesampmdispo){ //le compte est bon ou plus
			$color="#00FF00";
			$montre=0;
		}
				if(!preg_match("/jeudi/",$dateCourt)) { //n jours à l'avance si pas jeudi
					if($thisDatenix-(DJ_delai_minimum_inscription*24*2600)<$aujourdhuinix) {
						$montre=0;
					}
				}
	} else { //pas un matin ni après-midi
		if($sqlUserN2>=$nplaces){ //le compte est bon ou plus
			$color="#00FF00";
			$montre=0;
			}elseif(($nplaces-$sqlUserN)==1){ //manque un
			$color="#99ff00";
			}elseif(($nplaces-$sqlUserN)==2){ //manque 2
			$color="3ff9900";
			$color="#99ff00";
			}elseif(($nplaces-$sqlUserN)>=3){ //manque 2
			$color="#FF0000";	//rouge
			$color="3ff9900";
			$color="#99ff00";
		}

				if(!preg_match("/jeudi/",$dateCourt)) { //n jours à l'avance si pas jeudi£
					if($thisDatenix-(DJ_delai_minimum_inscription*24*2600)<$aujourdhuinix) {
						$montre=0;
					}
				}  else { //livraisonjeudi
			if($thisDatenix-(DJ_delai_minimum_inscription_livraison*24*2600)<$aujourdhuinix) {
							$montre=0;
					
					}
					}
	}
			$color="#99ff00";
	if($sqlUserN>0) {
		$juser="";
		$j=0;
		while($j<$sqlUserN){
			$thisUser = mysql_result($sqlUser,$j,"user");
			$thisNote = mysql_result($sqlUser,$j,"rem");
			
			$username="SELECT * FROM jos_users WHERE username LIKE '" .$thisUser ."'";
			$usernameQ=mysql_query($username);
			if(!$usernameQ) {
				echo "<br>SQL error:<br>" .mysql_error() ."<br>";
			} 	
			$username=mysql_result($usernameQ,0,'name');
			$useremail=mysql_result($usernameQ,0,'email');
			
			#$juser.=$thisUser;
			if($username=="Administrator") {
				$juser.=$thisNote;
			} else {
			$juser.="<a title=\"envoyer un email\" href=\"mailto:" .$useremail ."\">" .utf8_encode($username) ."</a>";
			}
			
			$juser.=", ";
			$j++;
			}
		$cocagnardes.= preg_replace("/, $/","",$juser);
		}
	#on affiche les remarques seulement si pas vide
		if($thisREMARQUES){
		$cocagnardes.= "<br>";
		$cocagnardes.= "<em>Remarques: ";
		$cocagnardes.= $thisREMARQUES;
		$cocagnardes.= "</em><br>";
		}
	if($montre==1){
						 $x="<input type=\"hidden\" name=\"utilisateur\" value=\"" .$utilisateur ."\">";
						$x.="<input type=\"checkbox\" name=\"ladate\" value=\"" .$thisDate ."\" ";
						 
						$x.= "title=\"Je m'inscris pour le " .jourfr_short($thisDate) .", " .datemySQL2fr(preg_replace("/ .*/","",$thisDate)) ." ".preg_replace("/:/","h",preg_replace("/...$/","",preg_replace("/^.* /","",$thisDate))) ."\"";
						$x.= " onclick=\"document.form1.submit()\"><br>";
						$x.=$debug;
			}
		}
				echo $debut;
	echo $cocagnardes .$x .$fin;
			 }
		$i++;
}

	echo "</table>";
	
		echo "<h1><a href=\"http://" .$_SERVER["HTTP_HOST"] ."\">Retour" ."</a></h1>";

		
	include("../common/footer.inc.php");
	
	?>
