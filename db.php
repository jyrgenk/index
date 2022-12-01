<?php
if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
  header( 'HTTP/1.0 403 Forbidden', TRUE, 403 );
  die ("<h2>Access Denied!</h2> This file is protected and not available to public.");
}
$host = 'localhost';
$port = 3306;
$table = 'helmes';
$username = 'root';
$password = '';

try {
  $db = new mysqli($host, $username, $password, $table, $port);
}
catch(mysqli_sql_exception $e) {
  die($e);
}
