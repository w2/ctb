<?php
/**
 * Visformsdata data view for Visforms
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
defined('_JEXEC') or die('Restricted access'); 
	
	$listOrder	= $this->escape($this->state->get('list.ordering'));
	$listDirn	= $this->escape($this->state->get('list.direction'));
	
	if ($this->form->published != '1') return;
	$document = JFactory::getDocument();
	$document->addCustomTag('<style type="text/css"><!-- #maincolumn  {	overflow:auto !important;} --></style>');
	$document->addCustomTag('<link type="text/css" href="' . JURI::root(true) . '/media/com_visforms/css/visforms.css" rel="stylesheet">');

?>

<div class="visforms-form<?php echo $this->menu_params->get( 'pageclass_sfx' ); ?>">
<?php if ($this->menu_params->get('show_page_heading') == 1) { 
		if (!$this->menu_params->get('page_heading') == "") { ?>
			<h1><?php echo $this->menu_params->get('page_heading'); ?></h1>
	<?php }
		else { 
			if (isset($this->form->fronttitle) == false || strcmp ($this->form->fronttitle, "") == 0)
			{
			echo '<h1>' . $this->form->title . '</h1>';
			} 
			else {
			echo '<h1>' . $this->form->fronttitle . '</h1>'; 
			}
		}
	}?>


<?php 
	if (isset($this->form->frontdescription) == false || strcmp($this->form->frontdescription, "") == 0) 
	{ 
		echo '<div class="category-desc">' . $this->form->description . '</div>';
	} else {
		echo '<div class="category-desc">' . $this->form->frontdescription.'</div>';
	}
?>

<form action="<?php echo JRoute::_('index.php?option=com_visforms&view=visformsdata&layout=data&id=' . $this->id);?>" method="post" name="adminForm" id="adminForm">

<table class="visdatatable jlist-table<?php if (isset($this->show_tableborder) && $this->show_tableborder == 1) {echo " visdatatableborder";} ?>">

<?php if (isset($this->show_columnheader) && $this->show_columnheader == 1)
{
?>	

<thead>
    <tr>
<?php $k = 0;
	$n=count( $this->fields );
	if ($n > 0) {
?>
		 <th >
			<?php echo JHtml::_('grid.sort', 'COM_VISFORMS_ID', 'a.id', $listDirn, $listOrder, 'visformsdata.display'); 
			?>
		</th>
<?php }
	for ($i=0; $i < $n; $i++)
	{
		$rowField = $this->fields[$i];
		
		if (isset($rowField->frontdisplay) && ($rowField->frontdisplay == 1 || $rowField->frontdisplay == 2))
		{			
?>
			<th>
				<?php echo JHtml::_('grid.sort', $rowField->label, 'a.F'. $rowField->id, $listDirn, $listOrder, 'visformsdata.display'); ?>
			</th>
<?php	
		}
	}
 	
    if ($this->form->displayip == '1') 
    {
 ?>
		<th >
			<?php echo JHtml::_('grid.sort', 'COM_VISFORMS_IP', 'a.ipaddress', $listDirn, $listOrder, 'visformsdata.display'); ?>
		</th>
<?php
	} 
?>

	</tr>			
</thead>
<?php	} ?>

<?php
	
	$k = 0;
	$n=count( $this->items );
	for ($i=0; $i < $n; $i++)
	{	
	
		$row = &$this->items[$i];
		$link = JRoute::_( 'index.php?option=com_visforms&view=visformsdata&layout=detail&id='.$this->id.'&cid='.$row->id.'&Itemid='.$this->itemid );

?>
		<tr class="sectiontableentry1">
		

 
	<td>
<?php 
	if (isset($row->id))
	{
		if (isset($this->form->displaydetail) == false || $this->form->displaydetail == true)
		{
			echo "<a href=\"".$link."\">".$row->id."</a>"; 
		} else {
			echo $row->id; 
		}
	} else { 
		?> &nbsp; <?php 
	} ?>
	</td>
    

         
<?php
	$z=count( $this->fields );
	for ($j=0; $j < $z; $j++)
	{
		$rowField = $this->fields[$j];
		
		if (isset($rowField->frontdisplay) && ($rowField->frontdisplay == 1 || $rowField->frontdisplay == 2))
		{			
			$prop="F".$rowField->id;

			if (isset($row->$prop) == false)
			{
				$prop=$rowField->name;
			}
			if (isset($row->$prop))
			{
				$texte = $row->$prop;
			} else {
				$texte = "&nbsp;";
			}
			
			if ($rowField->typefield == 'file' && isset($row->$prop))
			{
                             //info about uploaded files are stored in a JSON Object. Earlier versions just have a string.
                            if (isset($rowField->showlink) && $rowField->showlink == true)
                            {
                                $texte = JHTML::_('visforms.getUploadFileLink', $texte);
                            }
                            else
                            {
                                $texte = JHTML::_('visforms.getUploadFileName', $texte);
                            }
			}
			
			else if ($rowField->typefield == 'email') {				
                            $texte = '<a href="mailto:'.$texte.'">'.$texte.'</a>';
			}

			else
			{
                            if (strlen($texte) > 255) {
				$texte = substr($texte,0,255)."...";
                            }
			}

 ?>
 
	<td>
<?php 
	
			echo $texte; 
	?>
	</td> 
    
<?php	
		}
	}

    if ($this->form->displayip == '1') 
    {
 ?>
			<td>
				<?php 
					echo $row->ipaddress; 
				?>
			</td>
<?php } ?>
		</tr>
		<?php
		$k = 1 - $k;
	}
	?>


</table> 
<div class="pagination">
	<p class="counter">
		<?php echo $this->pagination->getPagesCounter(); ?>
	</p>
	<?php echo $this->pagination->getPagesLinks(); ?>
</div>

<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
<?php if ($this->form->poweredby == '1') { ?>
	<div id="vispoweredby"><a href="http://vi-solutions.de" target="_blank"><?php echo JText::_( 'COM_VISFORMS_POWERED_BY' ); ?></a></div>
<?php } ?>
</div>