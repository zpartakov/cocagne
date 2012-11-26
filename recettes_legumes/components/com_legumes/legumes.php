
<?php
/**
 * @version $Id: header.php $
 * @package    Joomla1.5
 * @subpackage inscriptions
 * @author     Fred Radeff {@link http://www.akademia.ch}
 * @author     Created on 18-Nov-2009
 */

// no direct access
defined( '_JEXEC' ) or die( ';)' );

jimport('joomla.application.helper');
require_once('legumes.html.php');
JTable::addIncludePath(JPATH_ADMINISTRATOR.DS.'components'.DS.com_cocagne_legumes.DS.'tables');

$task=$_GET['task'];
//	echo "blabla: " .$task; exit;

switch($task) {
	case 'view':
		viewLegume($option);
		break;
	default:
		showLegumes($option);
		break;
}

function showLegumes($option) {
	$db =& JFactory::GETDBO();
	$query = ' SELECT * '
        . ' FROM  cocagne_legumes ' 
        . ' WHERE  legume NOT LIKE "-%" ' 
        . ' ORDER BY legume';
	$db->setQuery($query);
	$rows = $db->loadObjectList();
	if($db->getErrorNum()) {	
		echo $db->stderr();
	return false;	
	}
	HTML_legumes::showLegumes($rows, $option);
}
 
function viewLegume($option) {
$id=$_GET['id'];
	$db =& JFactory::GETDBO();
	$query = ' SELECT * '
        . ' FROM  cocagne_legumes ' 
        . ' WHERE id = ' .$id;
#echo "SQL: " .$query; //tests
	$db->setQuery($query);
	$legumes = $db->loadObjectList();
	if($db->getErrorNum()) {	
		echo $db->stderr();
	return false;	
	}
	HTML_legumes::showLegume($legumes, $option);
} 

