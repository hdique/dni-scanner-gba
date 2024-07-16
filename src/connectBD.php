<?php
const PORT ="3306";
const HOST ="db";
const DATABASE ="dni_scanner_gba";
const USER ="my_user";
const PASSWORD ="my_password";

$dbconn = mysqli_connect(HOST,USER,PASSWORD,DATABASE, PORT)
or die('Could not connect: ' . mysqli_error($dbconn));

mysqli_set_charset($dbconn,"utf8");

include("user.php");

?>