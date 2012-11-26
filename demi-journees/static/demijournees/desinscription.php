<?
/* desinscription d'un membre à une demi-journée
 * */
include("../common/dbConnection.php");
include("../common/fonctions.inc.php");
include("../common/header.inc.php");
checkserver(); //verifie ip - securité
$utilisateur=$_GET['user'];
$ladate=$_GET['date'];
$ladate=preg_replace("/'/","",$ladate);
$ladate=stripslashes($ladate);
#checkutilisateur($utilisateur);
$query="
DELETE FROM `jos_demiejournees_details` WHERE  
user LIKE '$utilisateur' AND 
date LIKE '$ladate'
";
#echo $query; exit;
$db=mysql_query($query);
		if(!$db){
			echo "error mysql: <br>";
			echo "<br>" .$query ."<br>"; //test debug
			echo mysql_error();
		} else {
			
			
					###### on envoie le mail de notification à l'administrateur #########
			$from="XXX"; //your email
			$obj="Désinscription demi-journée XXX pour " .$utilisateur ." - date: " .$ladate;
			$obj=utf8_decode($obj);
			$headers ='From: ' .$from ."\n";
			$headers .='Reply-To: ' .$from ."\n";
			#$headers .='Content-Type: text/plain; charset=UTF-8';
			$headers .='Content-Type: text/plain; charset=iso-8859-1\n';
			$lenom=utf8_encode($lenom);
			$txt="
		Bonjour, " .$utilisateur ." ###

		S'est désinscrit/e pour la demi-journée: 

		Date: $ladate
		";
		$txt=utf8_decode($txt);

			

				$couriel=mail($from, $obj , $txt, $headers);
		 
				if(!$couriel) {
				echo "Il y a eu un probl&egrave;me lors de l'envoi du mail, merci de contacter <a href=\"mailto:" .$from ."?subject=" .$obj ."\">" .$from ."</a>";
				exit;
				}
		
	
			
			echo "Votre désinscription a bien été enregistrée";
			echo "<br><br><a href=\"http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=" .$utilisateur ."\">Retour aux inscriptions</a>";
}
?>
