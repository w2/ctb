<?php

/**
 * Visform table class
 * @author       Aicha Vack
 * @see          visforms is extended and rivised adaptation of ckforms from cookex (http://www.cookex.eu) for Joomla 2.5
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
 * Data Table class
 *
 * @package    Joomla.Administrator
 * @subpackage com_visforms
 * 
 */

class VisformsTableVisdata extends JTable 
{
    public function __construct(&$db) 
    {
        $id = JFactory::getApplication()->input->getInt('fid', -1);
        parent::__construct('#__visforms_' . $id, 'id', $db);
    }
    
}