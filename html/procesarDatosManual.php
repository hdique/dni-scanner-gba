<?php
date_default_timezone_set('America/Argentina/Buenos_Aires');

if (isset($_POST["nombre"]))
	$nombre = $_POST["nombre"];
else
	$nombre = "";


if (isset($_POST["apellido"])) {
	$apellido = $_POST["apellido"];

	$apellido = str_replace("'", "{", $apellido);
}
else {
	$apellido = "";
}


if (isset($_POST["dni"]))
	$dni = str_replace('.', '', $_POST["dni"]);
else
	$dni = "";


 //cambiamos formato de la hora acorde a la base
if (isset($_POST["hora"])){
	$hora = $_POST["hora"];
}

 //cambiamos formato de la fecha acorde a la base
if (isset($_POST["fecha"])){
	$fecha = str_replace("/","-",$_POST["fecha"]);
	$fecha = date_format(date_create($fecha . $hora),'Y-m-d H:i:s');
}

include("registro_consulta.php");
?>