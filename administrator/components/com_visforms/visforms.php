<?php
/**
 * Form component for Joomla
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
defined('_JEXEC') or die('Restricted access');

// Register helper class
JLoader::register('VisformsHelper', __DIR__ . '/helpers/visforms.php');
JLoader::register('JHTMLVisforms', __DIR__ . '/helpers/html/visforms.php');


// Access check: is this user allowed to access the backend of this component?
if (!JFactory::getUser()->authorise('core.manage', 'com_visforms')) 
{
        return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

// Create the controller
JHtml::_('behavior.tabstate');
$controller = JControllerLegacy::getInstance('Visforms');
$controller->execute(JFactory::getApplication()->input->get('task'));


// Redirect if set by the controller
$controller->redirect();

?>