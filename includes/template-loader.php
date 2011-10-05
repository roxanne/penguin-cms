<?php

	include ( ABSPATH . getOption('template_dir') . '/head.php' );
	
	if (!isset($_GET['pid'])) { $pid = '1'; } else { $pid = $_GET['pid']; }
	print getPage($pid);
	
	include ( ABSPATH . getOption('template_dir') . '/foot.php' );
	
?>