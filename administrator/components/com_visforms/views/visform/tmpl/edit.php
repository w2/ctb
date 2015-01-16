<?php
/**
 * Visform form view for Visforms
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

//no direct access
 defined('_JEXEC') or die('Restricted access'); ?>

<?php 
	jimport( 'joomla.html.editor' ); 
	JHtml::_('behavior.formvalidation');
    JHtml::_('behavior.keepalive');
    JHtml::_('formbehavior.chosen', 'select');
?>



<script type="text/javascript">
	Joomla.submitbutton = function(task) {
		if (task == 'visform.cancel' || document.formvalidator.isValid(document.id('item-form'))) {
			
			Joomla.submitform(task, document.getElementById('item-form'));
		} else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED'));?>');
		}
	}
</script>

<form id="item-form" class="form-validate" action="<?php echo JRoute::_('index.php?option=com_visforms&layout=edit&id='.(int) $this->item->id); ?>" method="post" name="adminForm">
    <?php if (!empty( $this->sidebar)) : ?>
<div id="j-sidebar-container" class="span2">
    <?php echo $this->sidebar; ?>
</div>
<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
    
    <div class="form-inline form-inline-header">
	<?php
	echo $this->form->getControlGroup('title');
	echo $this->form->getControlGroup('name');
	?>
</div>
    <div class="form-horizontal">
	<?php  $formFieldSets = $this->form->getFieldsets(); ?>
    <?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'visform-basic-details')); ?>
	<?php foreach ($formFieldSets as $name => $fieldSet) 
    { ?> 
        <?php if ($name === 'visform-basic-details') 
        { ?>
		<?php echo JHtml::_('bootstrap.addTab', 'myTab', $name, JText::_($fieldSet->label)); ?>
		<div class="row-fluid">
			<div class="span12">
				<fieldset class="adminform">				
					<?php foreach ($this->form->getFieldset($name) as $field) { ?>
                        <div class="control-group">
						<div class="control-label">
							<?php echo $field->label; ?>
						</div>
						<div class="controls">
							<?php echo $field->input; ?>
						</div>
					</div>
						
						<?php } ?>
			
				</fieldset>
			</div>
		</div>
		<?php echo JHtml::_('bootstrap.endTab'); ?>
			
        <?php 
        } ?>
    <?php 
    } ?>

	
	
		<?php foreach ($formFieldSets as $name => $fieldSet) { ?> 
			<?php if ( !($name === 'access-rules') && !($name === 'visform-basic-details') && !($name === 'form_title')) { ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', $name, JText::_($fieldSet->label)); ?>
			<div class="row-fluid form-horizontal-desktop">
                <div class="span12">
                <?php 
                if ($name === 'visform-advanced-details')
                {
                    foreach ($this->form->getGroup('exportsettings') as $field)
                    {
                        echo $field->getControlGroup();
                    }
                }
                ?>
                <?php foreach ($this->form->getFieldset($name) as $field) 
                { 
                    $uploadpath = ""; 
                ?>	
					<?php echo $field->getControlGroup(); ?>
                <?php } ?>
                </div>
			</div>
			<?php echo JHtml::_('bootstrap.endTab'); ?>				
			<?php } ?>
		<?php } ?>
			
			
		
	
		
		<div class="clr"></div>
		<?php foreach ($formFieldSets as $name => $fieldSet) 
        {  
			 if ($name === 'access-rules') 
            {
				 if ($this->canDo->get('core.admin')) 
                {
                 echo JHtml::_('bootstrap.addTab', 'myTab', 'permissions', JText::_('COM_VISFORMS_FIELDSET_FORM_RULES', true)); 
                 echo $this->form->getLabel('rules'); 
                 echo $this->form->getInput('rules'); 
                 echo JHtml::_('bootstrap.endTab'); 
                } 
            } 
        } 
         echo JHtml::_('bootstrap.endTabSet'); ?>
	</div>

<input type="hidden" name="task" value="" />

<?php echo JHtml::_('form.token'); ?>
    </div>
</div>
</form>

 <?php JHTML::_('visforms.creditsBackend'); ?>