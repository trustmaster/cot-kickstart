<?php
/* ====================
[BEGIN_COT_THEME]
Name=HTML KickStart
Schemes=cotonti:Cotonti
[END_COT_THEME]
==================== */

/**
 * HTML KickStart theme
 *
 * @package kickstart
 * @version 1.0
 * @author Vladimir Sibirov
 * @copyright Copyright (c) Vladimir Sibirov 2012
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

/*
 * Resource overrides
 */

$R['code_catpath'] = '<li>{$title}</li>';
$R['link_catpath'] = '<li><a href="{$url}" title="{$title}">{$title}</a></li>';

$R['breadcrumbs_container'] = '<ul class="breadcrumbs alt1">{$crumbs}</ul>';
$R['breadcrumbs_separator'] = '';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_crumb'] = '<li>{$crumb}</li>';
$R['breadcrumbs_first'] = '<li>{$crumb}</li>';
$R['breadcrumbs_last'] = '<li>{$crumb}</li>';

/*
 * Helper functions
 */

/**
 * Inserts or modifies tag attribute
 * @param  string $tag   HTML/TPL tag
 * @param  string $attr  Attribute name
 * @param  string $value Attribute value
 * @return string        HTML with the attribute inserted/modified
 */
function kick_attr($tag, $attr, $value)
{
	if (preg_match('#'.$attr.'="(.*?)"#', $tag, $m))
	{
		return str_replace($m[0], $attr.'="'.$value.'"', $tag);
	}	
	else
	{
		return preg_replace('#(/?>)#', ' '.$attr.'="'.$value.'" $1', $tag, 1);
	}
}

/**
 * Inserts/updates class attribute of the tag
 * @param  string $tag   HTML/TPL tag
 * @param  string $class Class or classes space separated
 * @return string        HTML with class attribute inserted/modified
 */
function kick_class($tag, $class)
{
	if (preg_match('#class="(.*?)"#', $tag, $m))
	{
		return str_replace($m[0], 'class="'.$m[1].' '.$class.'"', $tag);
	}
	else
	{
		return preg_replace('#(/?>)#', ' class="'.$class.'" $1', $tag, 1);
	}
}

/**
 * Inserts an ID attribute into the tag
 * @param  string $tag HTML/TPL tag
 * @param  string $id  DOM ID
 * @return string      HTML with id attribute inserted
 */
function kick_id($tag, $id)
{
	return kick_attr($tag, 'id', $id);
}

?>