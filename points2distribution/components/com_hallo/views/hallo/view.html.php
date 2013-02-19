<?php
jimport( 'joomla.application.component.view');

class HalloViewHallo extends JView
{
	function display($tpl = null)
	{		
		$greeting = "Hallo Welt!";
		$this->assignRef( 'greeting',	$greeting );
		parent::display($tpl);
	}
}
?>
