<?php

define('WP_HOME', getenv('WP_HOME'));
define('WP_SITEURL', getenv('WP_SITEURL'));
define('DB_NAME', getenv('MYSQL_NAME'));
define('DB_USER', getenv('MYSQL_USER'));
define('DB_PASSWORD', getenv('MYSQL_PASSWORD'));
define('DB_HOST', getenv('MYSQL_HOST'));
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

define('AUTH_KEY',         getenv('AUTH_KEY'));
define('SECURE_AUTH_KEY',  getenv('SECURE_AUTH_KEY'));
define('LOGGED_IN_KEY',    getenv('LOGGED_IN_KEY'));
define('NONCE_KEY',        getenv('NONCE_KEY'));
define('AUTH_SALT',        getenv('AUTH_SALT'));
define('SECURE_AUTH_SALT', getenv('SECURE_AUTH_SALT'));
define('LOGGED_IN_SALT',   getenv('LOGGED_IN_SALT'));
define('NONCE_SALT',       getenv('NONCE_SALT'));

$table_prefix  = 'wp_';

define('WPLANG', '');
define('WP_DEBUG', getenv('DEBUG'));

$_SERVER['HTTPS'] = getenv('SERVER_HTTPS');
$_SERVER['HTTP_HOST'] = getenv('SERVER_HTTP_HOST');
$_SERVER['SERVER_NAME'] = getenv('SERVER_NAME');

if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');
