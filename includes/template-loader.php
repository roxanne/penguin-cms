<?php

	include ( ABSPATH . getOption('template_dir') . '/head.php' );
	
	$slug = isset($_GET['slug']) ? $_GET['slug'] : '1';
	print getPage($slug);
	
	include ( ABSPATH . getOption('template_dir') . '/foot.php' );
	
?>