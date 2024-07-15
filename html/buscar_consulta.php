<?php
date_default_timezone_set('America/Argentina/Buenos_Aires');

require("connectBD.php");

 //cambiamos formato de la fecha acorde a la base
if (isset($_GET["desde"])){
	$fechaDesde = str_replace("/","-",$_GET["desde"]);
	$fechaDesde = date_format(date_create($fechaDesde." 00:00:00"),'Y-m-d H:i:s');
} else {
	$hoy= date_create("Y-m-d/");
	$fechaDesde = date_format(date_create($hoy." 00:00:00"),'Y-m-d H:i:s');
}
	
if (isset($_GET["hasta"])){
	$fechaHasta = str_replace("/","-",$_GET["hasta"]);
	$fechaHasta = date_format(date_create($fechaHasta." 23:59:59"),'Y-m-d H:i:s');
} else {
	$hoy= date_create("Y-m-d/");
	$fechaHasta = date_format(date_create($hoy." 23:59:59"),'Y-m-d H:i:s');
}

if (isset($_GET["nombre"])) {
	$nombre = $_GET["nombre"];
	$nombre = str_replace("'", "{", $nombre);
	$nombre = trim($nombre);
}
else {
	$nombre = "";
}


if (isset($_GET["dni"]) && !empty($_GET["dni"])) {

	$dni = $_GET["dni"];

	$where = "WHERE (  
	(fecha_ingreso between '$fechaDesde' and '$fechaHasta' or isnull(fecha_ingreso) ) 
	AND 
	(fecha_egreso between '$fechaDesde' and '$fechaHasta' or isnull(fecha_egreso))  	
	AND 
	(dni = $dni) 
	AND 
	(nombre LIKE upper('%$nombre%') or apellido LIKE upper('%$nombre%'))
	)";

	} else {
		$where = "WHERE ( 
		(fecha_ingreso between '$fechaDesde' and '$fechaHasta' or isnull(fecha_ingreso) )
		AND 
		(fecha_egreso between '$fechaDesde' and '$fechaHasta' or isnull(fecha_egreso)) 
		AND 
		(nombre LIKE upper('%$nombre%') or apellido LIKE upper('%$nombre%')) 
		)";
	}

	$query = "SELECT * 	FROM persona p INNER JOIN registro r ON p.id_persona = r.id_persona $where ORDER BY fecha_ingreso DESC, apellido ASC";
	$result = mysqli_query($dbconn,$query);

$paginaInicio = false;
require("grilla_listado.php");
require("disconnectBD.php");
?>