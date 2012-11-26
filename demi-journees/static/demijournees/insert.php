<?
//some includes
include("../common/dbConnection.php");
include("../common/fonctions.inc.php");
include("../common/header.inc.php");
checkserver(); //verifie ip - securité

//datas
$utilisateur=$_POST['utilisateur'];
$ladate=$_POST['ladate'];
$np=$_POST['np'];
$remarques=$_POST['remarques'];
$remarques=addslashes($remarques);
checkutilisateur($utilisateur);//security: check user


//mysql
$sql="SELECT *
FROM `jos_users`
WHERE `username` LIKE '" .$utilisateur ."'";
$checkUser=mysql_query($sql);
if(!$checkUser) {
	echo "Sorry, this user is not allowed or doesn't exist!";
	exit;
}

###### on ecrit dans la db #########
$query= "
		INSERT INTO `jos_demiejournees_details`
		(`id`, `date`, `user`, `npers`, `rem`)
		VALUES
		(NULL, '$ladate', '$utilisateur', '$np', '$remarques')
		";
		#echo $query; exit;//tests 
		$db=mysql_query($query);
		if(!$db){
			echo "error mysql: <br>";
			echo "<br>" .$query ."<br>"; //test debug
			echo mysql_error();
		}
		
###### on envoie le mail au membre #########
	$lemail=mysql_result($checkUser,0,'email');
	$lenom=mysql_result($checkUser,0,'name');
	$from="XXX@XXX.ch"; //mail administrateur demi-journéees
	$obj="Réservation demi-journée XXX pour ";
	
	if(preg_match("/18:00:00/",$ladate)) {
	$obj.= " une livraison " ;
}

	
	$obj.= " le " .datefr_short($ladate);
	//£$obj=utf8_decode($obj);
	$headers ='From: ' .$from ."\n";
	$headers .='Reply-To: ' .$from ."\n";
	#$headers .='Content-Type: text/plain; charset=UTF-8';
	$headers .='Content-Type: text/plain; charset=iso-8859-1\n';
	$lenom=utf8_encode($lenom);
	
	if(preg_match("/18:00:00/",$ladate)) {
		$ladatet=preg_replace("/18:00:00/","13:00", $ladate);
	} else {
		$ladatet=preg_replace("/00:00/","00", $ladate);
	}
	
	$txt="
Bonjour, $lenom

Vous avez réservé pour une demi-journée avec les informations suivantes: 

Date: " .datefr_short($ladatet) ."
Nombre de personnes: $np
Remarques: $remarques

A bientôt!
";
//£$txt=utf8_decode($txt);

$referent=$_SERVER["HTTP_HOST"];
	

		$couriel=mail($lemail, $obj , $txt, $headers);
 
		if(!$couriel) {
		echo "Il y a eu un probl&egrave;me lors de l'envoi du mail, merci de contacter <a href=\"mailto:" .$from ."?subject=" .$obj ."\">" .$from ."</a>";
		exit;
		}


##envoi mail notification admin demijournees@XXX.ch
$txt="Notification administration nouvelle DJ 
###################
" .$txt ."

email: " .$lemail;
		$couriel=mail("demijournees@XXX.ch", $obj ." - notification administration" , $txt, $headers);
		//$couriel=mail("fradeff@akademia.ch", $obj ." - notification administration" , $txt, $headers);
		
		if(!$couriel) {
		echo "Il y a eu un probl&egrave;me lors de l'envoi du mail, merci de contacter <a href=\"mailto:" .$from ."?subject=" .$obj ."\">" .$from ."</a>";
		exit;
		}

	
#on redirige l'usager sur la liste des demi-journées	


	header("Location: http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=" .$utilisateur);

		
include("../common/footer.inc.php");
	
	?>
