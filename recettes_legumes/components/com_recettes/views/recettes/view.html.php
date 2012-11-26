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

jimport( 'joomla.application.component.view');

/**
 * HTML View class for the recettes Component
 *
 * @package    recettes
 * @subpackage Views
 */

class recettesViewrecettes extends JView
{
    /**
     * recettes view display method
     * @return void
     **/
	function display($tpl = null)
	{
		$greetings = $this->get( 'Greetings' );
		$this->assignRef( 'greetings',	$greetings );

		parent::display($tpl);
	}
}// class
