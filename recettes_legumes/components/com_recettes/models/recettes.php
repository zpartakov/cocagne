<?php
/**
 * @version $Id: header.php $
 * @package    Joomla1.5
 * @subpackage inscriptions
 * @author     Fred Radeff {@link http://www.akademia.ch}
 * @author     Created on 13-Sep-2009
 */

// no direct access
defined( '_JEXEC' ) or die( ';)' );

jimport( 'joomla.application.component.model' );

/**
 * recettes Model
 *
 * @package    recettes
 * @subpackage Models
 */
class recettesModelrecettes extends JModel
{
	/**
	 * Gets the greetings
	 * @return string The greeting to be displayed to the user
	 */
	function getGreetings()
	{
		$db =& JFactory::getDBO();

		$query = 'SELECT greeting FROM #__recettes';
		$db->setQuery( $query );
		$greetings = $db->loadObjectList();

		return $greetings;
	}// function
}// class
