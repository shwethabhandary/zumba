<?php
$DATABASE_HOST = 'localhost';

// $DATABASE_USER = 'root';
// $DATABASE_PASS = '';
// $DATABASE_NAME = 'babytoys';

$DATABASE_USER = 'shwethas_root';
$DATABASE_PASS = 'root123';
$DATABASE_NAME = 'shwethas_babytoys';
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
?>
