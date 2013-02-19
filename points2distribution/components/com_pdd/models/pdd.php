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

jimport( 'joomla.application.component.model' );

/**
 * pdd Model
 *
 * @package    pdd
 * @subpackage Models
 */
class pddModelpdd extends JModel
{
    
    /**
    * Retrieves the data
    * @return string the greeting
    */
   function getGreeting()
   {
      $db =& JFactory::getDBO();
    
      $query = 'SELECT * FROM PDDDistr';
      $db->setQuery( $query );
      $greeting = $db->loadResult();
    
      return $greeting.' (model) !';
   }// function
}// class