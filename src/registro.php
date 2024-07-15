<?php
date_default_timezone_set('America/Argentina/Buenos_Aires');

require("connectBD.php");
$fechaDesde = date('Y-m-d') . " 00:00:00";
$fechaHasta = date('Y-m-d') . " 23:59:59";


// devuelve las personas que ingresaron el día de hoy, ordenado por fecha y hora de ingreso	
$query = "SELECT * 
		  FROM persona p INNER JOIN registro r ON p.id_persona = r.id_persona
		  WHERE(fecha_ingreso between '$fechaDesde' and '$fechaHasta') OR (fecha_egreso between '$fechaDesde' and '$fechaHasta')
		  ORDER BY fecha_ingreso DESC";
				
				
$result = mysqli_query($dbconn,$query);

$paginaInicio = true;
require("grilla_listado.php");

require("disconnectBD.php");
?>

