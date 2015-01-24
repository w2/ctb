<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div class="com-content <?php echo $this->params->get('pageclass_sfx') ?>">
<div class="archived-article-list">
<?php if ($this->params->get('show_page_title', 1)) : ?>
	<h1 class="componentheading"><?php echo $this->escape($this->params->get('page_title')); ?></h1>
<?php endif; ?>
<form id="jForm" action="<?php JRoute::_('index.php')?>" method="post">
	<div class="jsn-infofilter">
		<?php if ($this->params->get('filter')) : ?>
		<?php echo JText::_('Filter').'&nbsp;'; ?>
		<input type="text" name="filter" value="<?php echo $this->escape($this->filter); ?>" class="inputbox" onchange="document.jForm.submit();" />
		<?php endif; ?>
		<?php echo $this->form->monthField; ?>
		<?php echo $this->form->yearField; ?>
		<?php echo $this->form->limitField; ?>
		<button type="submit" class="button"><?php echo JText::_('Filter'); ?></button>
	</div>
<?php echo $this->loadTemplate('items'); ?>
	<input type="hidden" name="view" value="archive" />
	<input type="hidden" name="option" value="com_content" />
</form></div></div>
