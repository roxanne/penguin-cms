READ ME!

This package is for a basic CMS. It has no advanced features, those are still to come.

The file structure is as follows:

																	/includes/functions.php
							->	load.php - > config.php (or die) -> /includes/class/*.php
															 ->		db_connection variables
															 ->	template_dir/head.php
index.php -> cms-header.php ->  includes/template-loader.php -> get page content from database
															 ->	template_dir/foot.php

And that is about it.

You will need to create a database with the included penguin_cms.sql file. This will make the following tables:

options
pages
users
user_meta
