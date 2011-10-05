<?php

function getOption($optionName) {
	$mysqli = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DB);
		if($result = $mysqli->query('SELECT option_value from options WHERE option_name = "'.$optionName.'"')) {
			while ($row = $result->fetch_object()) {
				return $row->option_value;
			}
		}
		else {
			echo $mysqli->error;
		}
	$mysqli->close;
}
function getPage($slug,$type='content') {
	$mysqli = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DB);
		if($result = $mysqli->query('SELECT ' . $type . ' from pages WHERE slug = "'.$slug.'"')) {
			while ($row = $result->fetch_object()) {
				return $row->$type;
			}
		}
		else {
			echo $mysqli->error;
		}
	$mysqli->close;
}
function curDir() {
	$path = dirname($_SERVER['PHP_SELF']);
	$position = strpos($path,'/') + 1;
	return ( '../' .substr($path,$position) );
}
define (TEMPDIR, curDir() . getOption('template_dir'));

function insertLogo($width="300",$height="150") {
	$url = getOption('logo_url');
	return print '<img src='.$url.' width="'.$width.'" height="'.$height.'" />';
}

function getSidebar() {
	if (getOption('sidebar_active') == TRUE) {
		include (TEMPDIR . '/sidebar.php');
	}
	else {
		
	}
}
?>