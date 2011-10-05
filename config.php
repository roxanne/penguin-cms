<?php

// Database connection info
define ( 'DB_HOST', 'localhost' );
define ( 'DB_USER', 'mytriba1' );
define ( 'DB_PASSWORD', 'Titus01*' );
define ( 'DB_DB', 'mytriba1_inrefco' );

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
