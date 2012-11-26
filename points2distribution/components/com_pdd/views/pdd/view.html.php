<?php
/**
 * @version $Id: header.php $
 * @package    Joomla1.5
 * @subpackage inscriptions
 * @author     Fred Radeff {@link http://www.akademia.ch}
 * @author     Created on 27-Feb-2009
 */

// no direct access
defined( '_JEXEC' ) or die( ';)' );

jimport( 'joomla.application.component.view');

/**
 * HTML View class for the pdd Component
 *
 * @package    pdd
 */

class pddViewpdd extends JView
{
    function display($tpl = null)
    {
$user =& JFactory::getUser();
$utilisateur=$user->username;
#echo "Utilisateur: " .$utilisateur . " l = " .strlen($utilisateur); //tests
echo "<h1>Points de distribution</h1><table style=\"padding: 3px\">";
$db=& JFactory::getDBO();
$query="SELECT * FROM `jos_pdds` ORDER BY `PDDINo`";
//echo $query;
$db->setQuery($query);
$pdds=$db->loadObjectList();
if(count($pdds)){
$i=0;
foreach($pdds as $pdd) {
if(($i/2)==intval($i/2)){
echo "<tr style=\"background-color: lightgrey\">";
}else{
echo "<tr style=\"background-color: white\">";
}
echo JText::_('<td>' .$pdd->PDDTexte);
echo "</td><td>";
/* utilisateur enregistre on montre la liste complete*/
if(strlen($utilisateur)>0) {
 if(strlen($pdd->PDDNoRue)>0){
  echo $pdd->PDDNoRue .", ";
 }
}
echo $pdd->PDDAdr;
echo "<br />";
echo $pdd->PDDLieu;
echo "</td>";
/* utilisateur enregistre on montre la liste complete*/
if(strlen($utilisateur)>0) {
echo "<td>";
echo $pdd->PDDNom;
echo "</td>";
echo "<td>";
echo preg_replace("/ /","&nbsp;",$pdd->PDDTele);
echo "</td>";
echo "<td>";
echo "<a href=\"mailto:" .$pdd->PDDEmail ."\">" .$pdd->PDDEmail ."</a>";
echo "<td>";
echo $pdd->PDDRem;
echo "</td>";



}
echo "</tr>";
$i++;
}
}
#echo $query;
echo "</table>";
if(strlen($utilisateur)<1) {
echo "<hr /><em>Pour voir le détail des points de distribution, il faut <a href=\"/cms/login-logout\">XXXvous enregistrer</a></em>";
} else {
echo '
<hr /><a href="XXX">XXXCahier de charge de la/du responsable de point de distribution</a></p>
';
}
    }
}
