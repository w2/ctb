<?php // no direct access
	defined('_JEXEC') or die('Restricted access');
	$cparams =& JComponentHelper::getParams('com_media');
?>
<div class="com-content <?php echo $this->params->get('pageclass_sfx') ?>">
	<div class="category-list">
	<?php if ($this->params->get('show_page_title', 1)) : ?>
		<h1 class="componentheading">
			<?php echo $this->escape($this->params->get('page_title')); ?>
		</h1>
	<?php endif; ?>
	<div class="contentdescription clearafter">
		<?php if ($this->category->image) : ?>
			<img src="<?php echo $this->baseurl . '/' . $cparams->get('image_path') . '/'. $this->category->image;?>" align="<?php echo $this->category->image_position;?>" hspace="6" alt="						<?php echo $this->category->image;?>" />
		<?php endif; ?>
		<?php echo $this->category->description; ?>
     </div>
	<?php
		$this->items =& $this->getItems();
		echo $this->loadTemplate('items');
	?>
	<?php if ($this->access->canEdit || $this->access->canEditOwn) :
			echo JHTML::_('icon.create', $this->category  , $this->params, $this->access);
	endif; ?>
</div></div>