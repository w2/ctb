<?php
/**
* @version		1.0.0
* @package		MijoPolls
* @subpackage	MijoPolls
* @copyright	2009-2011 Mijosoft LLC, www.mijosoft.com
* @license		GNU/GPL http://www.gnu.org/copyleft/gpl.html
* @license		GNU/GPL based on AcePolls www.joomace.net
*
* Based on Apoll Component
* @copyright (C) 2009 - 2011 Hristo Genev All rights reserved
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* @link http://www.afactory.org
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

class MijopollsViewPolls extends MijopollsView {

	function display($tpl = null) {
		$document = JFactory::getDocument();
  		$document->addStyleSheet('components/com_mijopolls/assets/css/mijopolls.css');
		
		JToolBarHelper::title(JText::_('COM_MIJOPOLLS_POLLS'), 'mijopolls');
		JToolBarHelper::addNew();
		JToolBarHelper::editList();
		JToolBarHelper::deleteList();
		JToolBarHelper::divider();
		JToolBarHelper::publishList();
		JToolBarHelper::unpublishList();
		JToolBarHelper::divider();
		JToolBarHelper::custom('resetVotes', 'cancel.png', 'cancel.png', JText::_('COM_MIJOPOLLS_RESET_VOTES'), true, false);
		JToolBarHelper::preferences('com_mijopolls', 500);
	
		$this->mainframe = JFactory::getApplication();
		$this->option = JRequest::getWord('option');

		$filter_order		= $this->mainframe->getUserStateFromRequest($this->option.'.polls.filter_order',		'filter_order',		'm.title',	'string');
		$filter_order_Dir	= $this->mainframe->getUserStateFromRequest($this->option.'.polls.filter_order_Dir',	'filter_order_Dir',	'',			'word');
		$filter_state		= $this->mainframe->getUserStateFromRequest($this->option.'.polls.filter_state',		'filter_state',		'',			'word');
		$search				= $this->mainframe->getUserStateFromRequest($this->option.'.polls.search',				'search',			'',			'string');
		
		JHTML::_('behavior.tooltip');
		
		// state filter
		$lists['state']	= JHTML::_('grid.state', $filter_state);

		// table ordering
		$lists['order_Dir']	= $filter_order_Dir;
		$lists['order']		= $filter_order;

		// search filter
		$lists['search']= $search;

		$this->user = JFactory::getUser();
		$this->lists = $lists;
		$this->items = $this->get('Data');
		$this->pagination = $this->get('Pagination');
		
		if (MijopollsHelper::is30()) {
			$tpl = '30';
		}

		parent::display($tpl);
	}
}