<?php
/**
 * JavaScript and CSS loader for Kickstart theme
 *
 * @package kickstart
 * @version 1.0
 * @author Vladimir Sibirov
 * @copyright Copyright (c) Vladimir Sibirov 2012
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/kickstart.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/style.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/prettify.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/kickstart.js');

?>
