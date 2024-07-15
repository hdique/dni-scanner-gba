<?php
date_default_timezone_set('America/Argentina/Buenos_Aires');

if (isset($_POST["codigo"])) {
	$codigo = $_POST["codigo"];
	$tipo = $_POST["tipo"];
	$arreglo = explode('"',$codigo);
	$size = sizeof($arreglo);
	$dni = "";
	$apellido = "";
	$nombre = "";
	
	switch($size){
		case 8: 
		case 9:
				$dni = trim($arreglo[4]);
				$apellido = trim($arreglo[1]);
				$nombre = trim($arreglo[2]);
				break;

		case 17: 
				$dni = trim($arreglo[1]);
				$apellido = trim($arreglo[4]);
				$nombre = trim($arreglo[5]);
				break;	

		case 15: 
				$dni = trim($arreglo[1]);
				$apellido = trim($arreglo[4]);
				$nombre = trim($arreglo[5]);
				break;		
	}


$fecha = date('Y-m-d H:i:s');

include("registro_consulta.php");
} 
?>