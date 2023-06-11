<?php
define('DB_SERVER','naz-db.c5tsce7xtv8b.eu-west-3.rds.amazonaws.com');
define('DB_USER','root');
define('DB_PASS' ,'bjit1234');
define('DB_NAME', 'hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
