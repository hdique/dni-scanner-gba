<?php
//obtener los datos del registro a modificar
if (isset($_POST['registro'])) 
    $id_registro = $_POST['registro'];

$query = "  SELECT * 
            FROM persona p INNER JOIN registro r ON p.id_persona = r.id_persona
            WHERE r.id_registro = '$id_registro'";

$result = mysqli_query($dbconn,$query);
$row = mysqli_fetch_assoc($result);

$dni = $row["dni"];
$nombre =  $row["nombre"];
$apellido = $row["apellido"];
$fecha_ingreso = $row["fecha_ingreso"];
$fecha_egreso = $row["fecha_egreso"];

if($fecha_ingreso != "") {
    $hora_ingreso = date("H:i:s", strtotime($fecha_ingreso));

}else{
    $hora_ingreso = "";
}

if($fecha_egreso!= "") {
    $hora_egreso = date("H:i:s", strtotime($fecha_egreso));
}else{
    $hora_egreso = "";
}

?>