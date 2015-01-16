<?php
/**
 * Visformsdata view for Visforms
 *
 * @author       Aicha Vack
 * @see           visforms is extended and rivised adaptation of ckforms from cookex (http://www.cookex.eu) for Joomla 2.5
 * @package      Joomla.Site
 * @subpackage   com_visforms
 * @link         http://www.vi-solutions.de 
 * @license      GNU General Public License version 2 or later; see license.txt
 * @copyright    2012 vi-solutions
 * @since        Joomla 1.6 
 */
 
// no direct access
defined('_JEXEC') or die( 'Restricted access' );

jimport( 'joomla.application.component.view');
jimport( 'joomla.html.parameter' );
JHTML::_('behavior.framework');


/**
 * Visdata view class for Visforms
 *
 * @package      Joomla.Site
 * @subpackage   com_visforms
 *
 * @since        Joomla 1.6 
 */
class VisformsViewVisformsdata extends JViewLegacy
{
    /**
     *
     * @var object $form visforms formular object
     */
	protected $form;
    
    /**
     *
     * @var array $items array of form data from user input
     */
	protected $items;
    
    /**
     *
     * @var Object $state state
     */
	protected $state;
    
    /**
     *
     * @var object $menu_params Menu parameter
     */
    protected $menu_params;
    
    /**
     *
     * @var Object $field object of visforms fields
     */
	protected $fields;
    
    /**
     * 
     * @param integer  $itemid Menu Item id
     */
    protected $itemid;
	
	function display($tpl = null)
	{	
		/* get params from menu */
		$this->menu_params = $this->get('Menuparams');
		
		if ($this->menu_params->get('menu-meta_description'))
		{
			$this->document->setDescription($this->menu_params->get('menu-meta_description'));
		}

		if ($this->menu_params->get('menu-meta_keywords'))
		{
			$this->document->setMetadata('keywords', $this->menu_params->get('menu-meta_keywords'));
		}
		
		$this->show_tableborder = $this->menu_params->get('show_tableborder');
		
		$this->show_columnheader = $this->menu_params->get('show_columnheader');
		
				
		
		//get Item id
        $this->itemid = JFactory::getApplication()->input->getInt('Itemid', -1);
		
		//get form id
		$this->id = JFactory::getApplication()->input->getInt('id', -1);

		if ($this->_layout == "detail")
		{

			// Get data from the model
			$this->item = $this->get('Detail');	
		} 
		
		// Get data from the model
		$this->form	= $this->get('Form');
		$this->items = $this->get('Items');
		$this->state = $this->get('State');
		
		$this->pagination = $this->get('Pagination');	
		
		$this->fields = $this->get('Datafields');
		
		parent::display($tpl);
		
	}
}
?>