<?php
/**
* @author    JoomlaShine.com http://www.joomlashine.com
* @copyright Copyright (C) 2008 - 2009 JoomlaShine.com. All rights reserved.
* @license   Copyrighted Commercial Software
* This file may not be redistributed in whole or significant part.
*/

// The data bellow goes between the <head></head> tags of the template

// CSS inclusion
//$doc				= JFactory::getDocument();
/*
$doc->addStyleSheet(JUri::base() . 'templates/system/css/system.css');
$doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/position.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/layout.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/print.css', $type = 'text/css', $media = 'print');
$doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/general.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/' . htmlspecialchars($color) . '.css', $type = 'text/css', $media = 'screen,projection');
*/

$this->addStylesheet(JUri::base() . '/templates/system/css/system.css');
$this->addStylesheet(JUri::base() . '/templates/system/css/general.css');
$this->addStylesheet(JUri::base() . '/templates/' . $this->template . '/css/template.css', $type = 'text/css', $media = 'screen,projection');
$this->addStylesheet(JUri::base() . '/templates/' . $this->template . '/css/jsn_jcore.css', $type = 'text/css', $media = 'screen,projection');

/*$this->addStylesheet($this->baseurl."/templates/system/css/system.css");
$this->addStylesheet($this->baseurl."/templates/system/css/general.css");
$this->addStylesheet($this->baseurl."/templates/<?php echo $this->template ?>/css/template.css");
$this->addStylesheet($this->baseurl."/templates/<?php echo $this->template ?>/css/jsn_jcore.css");
*/
// Load specific CSS file for template color
$this->addStylesheet(JUri::base() . '/templates/' . $this->template . '/css/template_' . $template_color . '.css');

if($template_direction == "rtl") { $this->addStylesheet(JUri::base() . '/templates/' . $this->template . '/css/template_rtl.css'); }
// JS inclusion
$this->addScript(JUri::base() . '/templates/'. $this->template . '/js/jsn_utils.js');
?>

<!--[if IE 6]>
<link href="<?php echo $template_path; ?>/css/jsn_fixie6.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $template_path; ?>/js/jsn_fixpng.js"></script>
<script>
  DD_belatedPNG.fix('#jsn-logo img, #base-mainmenu ul, #base-mainmenu a, #base-mainmenu span, ul.menu-treemenu a, span.breadcrumbs a, span.breadcrumbs span, .author, .createdate, ul.list-arrow-red li, ul.list-arrow-blue li, ul.list-arrow-green li, .jsn-top, .jsn-top_inner, .jsn-middle, .jsn-middle_inner, .jsn-bottom, .jsn-bottom_inner, a.readon, a.readon span');
</script>
<![endif]-->

<!--[if IE 7]>
<link href="<?php echo $template_path; ?>/css/jsn_fixie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<?php
	// Inline CSS styles for template layout
	echo '<style type="text/css">';

	// Setup template width parameter
	$twidth = 0;
	switch ($template_width) {
		case 'narrow':
			$twidth = $narrow_width;
			break;
		
		case 'wide':
			$twidth = $wide_width;
			break;

		case 'float':
			$twidth = $float_width;
			break;
	}
	
	if ($twidth > 100) {
		echo '
		#jsn-page {
			width: '.$twidth.'px;
		}
		';
	} else {
		echo '
		#jsn-page {
			width: '.$twidth.'%;
		}
		';
	}

	// Setup width of content area
	$tw = 100;
	if ($has_left) {
		$tw -= $left_width;
	}
	if ($has_right) {
		$tw -= $right_width;
	}

	echo '
	#jsn-leftsidecontent {
		float: left;
		width: '.$left_width.'%;
		left: -'.($tw-$ieoffset).'%;
	}
	#jsn-maincontent {
		float: left;
		width: '.($tw-$ieoffset).'%;
		left: '.(($has_left)?$left_width.'%':0).';
	}
	#jsn-rightsidecontent {
		float: right;
		width: '.$right_width.'%;
	}
	#jsn-maincontent_inner {
		margin: 0;
		'.(($has_left)?'margin-left: 9px;':'').'
		'.(($has_right)?'margin-right: 9px;':'').'
	}
	';
	
	$tw = 100;
	if ($has_innerleft) {
		$tw -= $innerleft_width;
		echo '
		#jsn-maincontent_inner1 {
			background: url('.$template_path.'/images/border-dot.png) '.$innerleft_width.'% top repeat-y;
		}
		';
	}
	if ($has_innerright) {
		$tw -= $innerright_width;
		echo '
		#jsn-maincontent_inner2 {
			background: url('.$template_path.'/images/border-dot.png) '.(100 - $innerright_width).'% top repeat-y;
		}
		';
	}

	echo '
	#jsn-pinnerleft {
		float: left;
		width: '.$innerleft_width.'%;
		left: -'.($tw-$ieoffset).'%;
	}
	#jsn-pcentercol {
		float: left;
		width: '.($tw-$ieoffset).'%;
		left: '.(($has_innerleft)?$innerleft_width.'%':0).';
	}
	#jsn-pinnerright {
		float: right;
		width: '.$innerright_width.'%;
	}
	';
	
	echo '</style>';
?>

<!-- JS Includes -->
<?php
	echo '<script type="text/javascript"><!--'."\n";
	echo 'var templatePath = "'.$template_path.'";'."\n";
	echo 'var enableRTL = '.(($template_direction == "rtl")?'true':'false').';'."\n";
	echo 'var rspAlignment = "'.$rsp_alignment.'";'."\n";
	echo 'var lspAlignment = "'.$lsp_alignment.'";'."\n";
	echo '--></script>'."\n";
	echo '<script type="text/javascript" src="'.$template_path.'/js/jsn_template.js"></script>';
?>
