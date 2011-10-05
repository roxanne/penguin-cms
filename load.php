<?php
/** Define ABSPATH as this files directory */
define( 'ABSPATH', dirname(__FILE__) . '/' );

error_reporting( E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_ERROR | E_WARNING | E_PARSE | E_USER_ERROR | E_USER_WARNING | E_RECOVERABLE_ERROR );

if ( file_exists( ABSPATH . 'config.php') ) {

	/** The config file resides in ABSPATH */
	require_once( ABSPATH . 'config.php' );

} else {

	print '<strong>No Config File Found In ' . $_SERVER['PHP_SELF'] . '</strong>';

}


?>