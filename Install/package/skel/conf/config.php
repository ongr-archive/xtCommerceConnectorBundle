<?php
date_default_timezone_set('Europe/Berlin');defined('_VALID_CALL') or die('Direct Access is not allowed.');
define('_SYSTEM_DATABASE_HOST', '{{INSTALL_MYSQL_HOST}}');
define('_SYSTEM_DATABASE_USER', '{{INSTALL_MYSQL_USER}}');
define('_SYSTEM_DATABASE_PWD', '{{INSTALL_MYSQL_PASSWORD}}');
define('_SYSTEM_DATABASE_DATABASE', '{{INSTALL_MYSQL_DATABASE}}');
define('DB_PREFIX','{{INSTALL_DB_PREFIX}}');
define('_CORE_DEBUG_MAIL_ADDRESS','{{INSTALL_DEBUG_ADDRESS}}');
$_SYSTEM_INSTALL_SUCCESS = 'true';
?>
