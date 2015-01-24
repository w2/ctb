<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php

  // Layout configuration
  $layout_config = json_decode ('{
    "two_sidebars": {
      "default" : [ "span6 offset3" , "span3 offset-9"    , "span3"             ],
      "wide"    : [],
      "xtablet" : [],
      "tablet"  : [ "span12"        , "span6 spanfirst"   , "span6"             ]
    },
    "one_sidebar1": {
      "default" : [ "span9 pull-right"         , "span3"             ],
      "wide"    : [],
      "xtablet" : [ "span8 pull-right"         , "span4"             ],
      "tablet"  : [ "span12"        , "span12 spanfirst"  ]
    },
    "one_sidebar2": {
      "default" : [ "span9"         , "span3"             ],
      "wide"    : [],
      "xtablet" : [ "span8"         , "span4"             ],
      "tablet"  : [ "span12"        , "span12 spanfirst"  ]
    },
    "no_sidebar": {
      "default" : [ "span6 pull-right" ]
    }
  }');

  // positions configuration
  $sidebar1 = 'mainbody1';
  $sidebar2 = 'position-12';

  // Detect layout
  if ($this->countModules("$sidebar1 and $sidebar2")) {
   // echo "Dois";
    $layout = 'two_sidebars';
  } elseif ($this->countModules($sidebar1)) {
    echo "sidebar 1";
    $layout = 'one_sidebar1';
  } elseif ($this->countModules($sidebar2)) {
    echo "sidebar 2";
    $layout = 'one_sidebar2';
  } else {
  	echo "nenhum";
    $layout = 'no_sidebar';
  }
  $layout = $layout_config->$layout;

  $col = 0;
?>

<div id="t3-content" class="t3-content <?php echo $this->getClass($layout, $col) ?>" <?php echo $this->getData($layout, $col++) ?>>
 	<jdoc:include type="modules" name="<?php $this->_p('mainbody1') ?>" style="T3Xhtml" />
 </div>

 <div class="head-search<?php $this->_c('head-search')?>">     
       
        <jdoc:include type="modules" name="<?php $this->_p('head-search') ?>" style="raw" />
      </div>