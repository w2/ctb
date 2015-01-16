<?php
/**
 * Visfield view for Visforms
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

defined('_JEXEC') or die( 'Restricted access' );

/**
 * visfield view to show a singl field
 *
 * @package      Joomla.Administrator
 * @subpackage   com_visforms
 * @since        Joomla 1.6 
 */
class VisformsViewVisfield extends JViewLegacy
{
	/**
	 * Visfield view display method
	 *
	 * @return void
	 **/
	 
	protected $form;
	protected $item;
	//protected $state;
	protected $canDo;
	
	public function display($tpl = null)
	{
		$app=JFactory::getApplication();
		
		//get the field data
		//$visfield 	= $this->get('Data');
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		//$this->state	= $this->get('State');
		$isNew  	= ($this->item->id < 1);
		$this->canDo = VisformsHelper::getActions($this->item->fid, $this->item->id);
                $user		= JFactory::getUser();
		$userId		= $user->get('id');
                $checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $userId);
		
		$document = JFactory::getDocument();
		$css = '.icon-visform {background:url(../administrator/components/com_visforms/images/visforms_logo_32.png) no-repeat;}'.
            ' [class^="icon-visform"] {display: block; float: left; height: 32px; line-height: 32px; width: 32px;}'.
           '  .visformbottom {	text-align: center;	padding-top: 15px;	color: #999;}';
   		$document->addStyleDeclaration($css);
	
		$text = $isNew ? JText::_( 'COM_VISFORMS_FIELD_NEW' ) : JText::_( 'COM_VISFORMS_FIELD_EDIT' );
		JToolbarHelper::title(JText::_( 'COM_VISFORMS_VISFORM_FIELDS' ).': <small><small>[ ' . $text.' ]</small></small>' , 'visform' );
		
		if ($isNew)  
        {
			if ($this->canDo->get('core.create')) {
				JToolbarHelper::apply('visfield.apply');
				JToolbarHelper::save('visfield.save');
				JToolbarHelper::save2new('visfield.save2new');
			}
			JToolbarHelper::cancel('visfield.cancel');
		} 
        else 
        {
			// Can't save the record if it's checked out.
			if (!$checkedOut) 
            {
				if ($this->canDo->get('core.edit') || ($canDo->get('core.edit.own') && $this->item->created_by == $userId)) 
                {
					JToolbarHelper::apply('visfield.apply');
					JToolbarHelper::save('visfield.save');
					if ($this->canDo->get('core.create')) {
						JToolbarHelper::save2new('visfield.save2new');
					}
				}
			}

			if ($this->canDo->get('core.create')) 
            {
				JToolbarHelper::save2copy('visfield.save2copy');
			}
			
		
			// for existing items the button is renamed `close`
			JToolbarHelper::cancel( 'visfield.cancel', 'COM_VISFORMS_CLOSE' );
		}

		$app->input->set( 'hidemainmenu', 1 );
		//JHtml::_('behavior.framework');
		$document->addScript(JURI::root(true).'/administrator/components/com_visforms/js/visforms.js');
		$document->addStyleSheet(JURI::root(true).'/administrator/components/com_visforms/css/visforms.css');		
		
		$this->fid = $app->input->getInt( 'fid', -1 );		
		parent::display($tpl);
	}
}
