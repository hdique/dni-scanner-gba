<?php
const PORT ="3306";
const HOST ="localhost";
const DATABASE ="acceso_externos";
const USER ="root";
const PASSWORD ="";

$dbconn = mysqli_connect(HOST,USER,PASSWORD,DATABASE, PORT)
or die('Could not connect: ' . mysqli_error());

mysqli_set_charset($dbconn,"utf8");

include("user.php");

?>