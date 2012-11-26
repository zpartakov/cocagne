<?php 

/*
 * this joomla component requires joomla authentication 
 * and redirect to an url with the email of the authenticated user
 * 
 * todo: add a hash key
 */

// no direct access
defined('_JEXEC') or die('Restricted access'); ?>
 
<?
/*
 * get the infos from logged joomla user
 */
$user =& JFactory::getUser();
 
$utilisateur=$user->username;
$uid=$user->id;
/*
 * get task from url variable
 */
$latache=$_GET['latache'];
//echo "Utilisateur: " .$utilisateur; exit;
if(isset($latache)) {
	if($latache=="commande") {
		header("Location: http://" .$_SERVER["HTTP_HOST"] ."/commandes/index.php?utilisateur=".$utilisateur."&uid=".$uid);
	}elseif($latache=="plantons") {
		header("Location: http://" .$_SERVER["HTTP_HOST"] ."/plantons/index.php?utilisateur=".$utilisateur."&uid=".$uid);
	} elseif($latache=="monjardin") {
		header("Location: http://" .$_SERVER["HTTP_HOST"] ."/cms/static/utilisateurs/index.php?utilisateur=".$utilisateur);
	}
} else {
header("Location: http://" .$_SERVER["HTTP_HOST"] ."/cms/static/demijournees/index.php?utilisateur=".$utilisateur);
}
exit();
?>
