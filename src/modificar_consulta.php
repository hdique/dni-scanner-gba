<?php 
require("connectBD.php");

//var_dump($_POST["fecha_ingreso"]); die;

if (isset($_POST["registro"]))
	$registro = $_POST["registro"];
else
	$registro = "";


 //cambiamos formato de la hora acorde a la base
if (isset($_POST["hora_ingreso"])) {
	$hora_ingreso = $_POST["hora_ingreso"];
}

 //cambiamos formato de la fecha acorde a la base
if ( (isset($_POST["fecha_ingreso"])) && ($_POST["fecha_ingreso"] != "") ) {
	$fecha_ingreso = str_replace("/","-",$_POST["fecha_ingreso"]);
	$fecha_ingreso = date_format(date_create($fecha_ingreso . $hora_ingreso),'Y-m-d H:i:s');
} else {
	$fecha_ingreso = null;
}

 //cambiamos formato de la hora acorde a la base
if (isset($_POST["hora_egreso"])){
	$hora_egreso = $_POST["hora_egreso"];
}

 //cambiamos formato de la fecha acorde a la base
if ( (isset($_POST["fecha_egreso"]))  && ($_POST["fecha_egreso"] != "") ){
	$fecha_egreso = str_replace("/","-",$_POST["fecha_egreso"]);
	$fecha_egreso = date_format(date_create($fecha_egreso . $hora_egreso),'Y-m-d H:i:s');
} else {
	$fecha_egreso = null;
}


$query = "UPDATE registro SET fecha_ingreso =  ". ($fecha_ingreso==NULL ? "NULL" : "'$fecha_ingreso'") ." , fecha_egreso = ". ($fecha_egreso==NULL ? "NULL" : "'$fecha_egreso'") ." WHERE id_registro = $registro ";


    //echo $query;die;

    if(mysqli_query($dbconn,$query))
        echo "Registro modificado correctamente";
    else
        echo "error en la modificación";

require("disconnectBD.php");
?>