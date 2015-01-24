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
defined('_JEXEC') or die('Restricted access');

class MijopollsViewVotes extends MijopollsView {

	function display($tpl = null) {
		$document = JFactory::getDocument();
  		$document->addStyleSheet('components/com_mijopolls/assets/css/mijopolls.css');
		
		$title = $this->get('Title');
		
		$t_title = ($title) ? JText::_('COM_MIJOPOLLS_VOTES_FOR').': '.$title : JText::_('COM_MIJOPOLLS_SELECT_POLL');
		JToolBarHelper::title($t_title, 'mijopolls');
		JToolBarHelper::deleteList(JText::_('COM_MIJOPOLLS_DELETE_CONFIRM'), "deleteVotes", JText::_('COM_MIJOPOLLS_DELETE'), true);
		JToolBarHelper::divider();
		JToolBarHelper::preferences('com_mijopolls', 500);

		$this->mainframe = JFactory::getApplication();
		$this->option = JRequest::getWord('option');

		$filter_order		= $this->mainframe->getUserStateFromRequest($this->option.'.votes.filter_order',		'filter_order',		'v.date',	'cmd');
		$filter_order_Dir	= $this->mainframe->getUserStateFromRequest($this->option.'.votes.filter_order_Dir',	'filter_order_Dir',	'',			'word');
		$search				= $this->mainframe->getUserStateFromRequest($this->option.'.votes.search',				'search',			'',			'string');
		
		// Get data from the model
		$lists = $this->get('List');
		
		// table ordering
		$lists['order_Dir']	= $filter_order_Dir;
		$lists['order']		= $filter_order;

		// search filter
		$lists['search']= $search;

		$this->title = $title;
		$this->lists = $lists;
		$this->votes = $this->get('Data');
		$this->pagination = $this->get('Pagination');
		$this->poll_id = JRequest::getInt('id', 0);
		
		parent::display($tpl);
	}
}
