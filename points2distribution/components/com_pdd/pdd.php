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

// Require the base controller
require_once( JPATH_COMPONENT.DS.'controller.php' );

// Require specific controller if requested
if( $controller = JRequest::getWord('controller'))
{
   $path = JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php';
   if( file_exists($path))
	{
       require_once $path;
   } else
   {
       $controller = '';
   }
}

// Create the controller
$classname    = 'pddController'.$controller;
$controller   = new $classname( );

// Perform the Request task
$controller->execute( JRequest::getVar( 'task' ) );

// Redirect if set by the controller
$controller->redirect();