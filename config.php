<?php

// Database connection info
define ( 'DB_HOST', 'localhost' );
define ( 'DB_USER', 'test_user' );
define ( 'DB_PASSWORD', 'test_pass' );
define ( 'DB_DB', 'test_db' );

// Define the absolute path to directory installation
if ( !defined('ABSPATH') )

	define('ABSPATH', dirname(__FILE__) . '/');
	
// Include all the files in the class directory
if (is_dir( ABSPATH . '/includes/class' )) {
	
	foreach (glob( ABSPATH . "/includes/class/*.php" ) as $filename)
{
    include $filename;
}	
}
else {
	print '<strong>The class directory is non-existant</strong>';	
}

require ( ABSPATH . '/includes/functions.php' );

?>
