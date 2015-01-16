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
 * Dataview to show data of a single form
 *
 * @package		Joomla.Administrator
 * @subpackage	com_visforms
 * @since		1.6
 */
class VisformsViewVisdatas extends JViewLegacy
{
	protected $items;
	protected $state;
    protected $canDo;
	
	
	/**
	 * Visdata view display method
	 *
	 * @return void
	 **/
	public function display($tpl = null)
	{
        if ($this->getLayout() !== 'modal')
		{
			VisformsHelper::addSubmenu('visforms');
            $this->sidebar = JHtmlSidebar::render();
        }
        
        $fid = JFactory::getApplication()->input->getInt('fid', 0);
        $this->canDo = VisformsHelper::getActions($fid);
          
        // We don't need toolbar and title in the modal window.
        if ($this->getLayout() !== 'modal') {
            $this->addTitle();
            $this->addToolbar();
        }

        // Get data from the model
        $this->items = $this->get('Items');
        $this->state = $this->get('State');		
        $this->fields = $this->get('Datafields');
        $this->filterForm    = $this->get('FilterForm');
		$this->activeFilters = $this->get('ActiveFilters');
        $this->pagination = $this->get('Pagination');
        

        parent::display($tpl);
	}
	
	/**
	 * Add the page toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{	
            if ($this->canDo->get('core.edit.state')) 
            {
                JToolbarHelper::publishList('visdatas.publish');
                JToolbarHelper::unpublishList('visdatas.unpublish');
            }
            if ($this->canDo->get('core.export.data')) 
            {
                JToolbarHelper::custom('visdatas.export','export.png','export.png','Export', false) ;
            }
            if ($this->canDo->get('core.delete.data')) 
            {
                JToolbarHelper::deleteList('COM_VISFORMS_DELETE_DATASET_TRUE','visdatas.delete', 'COM_VISFORMS_DELETE');
            }
            JToolbarHelper::custom('visdatas.forms','forms','forms',JText::_('COM_VISFORMS_SUBMENU_FORMS'), false) ;
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
    
     /**
	 * Returns an array of fields the table can be sorted by
	 *
	 * @return  array  Array containing the field name to sort by as the key and display text as value
	 *
	 * @since   3.0
	 */
	protected function getSortFields()
	{
		return array(
            'a.created'    => JText::_('COM_VISFORMS_DATE'),
			'a.published'   => JText::_('COM_VISFORMS_PUBLISHED'),
			'a.ipaddress'    => JText::_('COM_VISFORMS_IP'),
			'a.id'           => JText::_('COM_VISFORMS_ID'),
		);
	}
}
