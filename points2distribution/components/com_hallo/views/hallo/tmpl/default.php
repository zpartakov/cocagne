<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<h1><?php echo $this->greeting; ?></h1>
 
<?
#echo phpinfo(); exit;
#tests radeff 2008.09.30
$user =& JFactory::getUser();
# echo "<p>Your name is {$user->name}<BR>, your email is {$user->email}<BR>your username is {$user->username}<BR>registration {$user->registerDate}<BR>last visit {$user->lastvisitDate}<BR>id {$user->id}</p>";
#  echo "<p>Your usertype is {$user->usertype} which has a group id of {$user->gid}.</p>";
 
$utilisateur=$user->username;
$uid=$user->id;
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
