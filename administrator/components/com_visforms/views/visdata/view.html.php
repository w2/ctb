<?php
/**
 * Visdata view for Visforms
 *
 * @author       Aicha Vack
 * @see           visforms is extended and rivised adaptation of ckforms from cookex (http://www.cookex.eu) for Joomla 2.5
 * @package      Joomla.Administrator
 * @subpackage   com_visforms
 * @link         http://www.vi-solutions.de 
 * @license      GNU General Public License version 2 or later; see license.txt
 * @copyright    2012 vi-solutions
 * @since        Joomla 1.6 
 */

// no direct access
defined('_JEXEC') or die( 'Restricted access' );

/**
 * visforms View
 *
 * @package    Joomla.Administratoar
 * @subpackage com_visforms
 * @since      Joomla 1.6
 */
class VisformsViewVisdata extends JViewLegacy
{
	protected $item;
	protected $canDo;
	
	/**
	 * visforms view display method
	 * @return void
	 **/
        
	function display($tpl = null)
	{  
        // Get data from the model
        VisformsHelper::addSubmenu('visforms');
        $this->sidebar = JHtmlSidebar::render();
        $this->item		= $this->get('Item');
        $fid = JFactory::getApplication()->input->getInt('fid', -1);
        $this->canDo = VisformsHelper::getActions($fid);
        $this->fields = $this->get('VisdatasModel')->getDatafields();
        $this->addTitle();
        $this->addToolbar();         
        parent::display($tpl);
	}
	
	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
            JToolbarHelper::back('COM_VISFORMS_DATA_LIST');
	}
        
        /**
	 * Add the page title.
	 *
	 * @since	1.6
	 */
	protected function addTitle()
	{
		$doc = JFactory::getDocument();
		$css = '.icon-visform {background:url(../administrator/components/com_visforms/images/visforms_logo_32.png) no-repeat;}'.
            ' [class^="icon-visform"] {display: block; float: left; height: 32px; line-height: 32px; width: 32px;}'.
           '  .visformbottom {	text-align: center;	padding-top: 15px;	color: #999;}';
   		$doc->addStyleDeclaration($css);
		$doc->addStyleSheet(JURI::root(true).'/administrator/components/com_visforms/css/visforms_min.css');	
		JToolbarHelper::title(JText::_( 'COM_VISFORMS_VISFORM_DATA' ), 'visform' );
	}
}
