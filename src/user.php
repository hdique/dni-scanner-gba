<?php
if (isset($_SERVER['REMOTE_USER']))
    $user = $_SERVER['REMOTE_USER'];
else
    $user = "localhost";
?>