<?php

if ($dni && $apellido && $nombre){
	require("connectBD.php");

	//la conexion queda en $dbconn

	$fechaDesde = date('Y-m-d') . " 00:00:00";
	$fechaHasta = date('Y-m-d') . " 23:59:59";

    $todoOK = false;

    mysqli_query($dbconn,"BEGIN");

	$query = "SELECT *
			  FROM persona 
			  WHERE(dni = '$dni' and nombre = '$nombre' and apellido = '$apellido')";


    $apellido_msj = str_replace('{', "'", $apellido);

	$result = mysqli_query($dbconn,$query);
		
	//pregunto si existe la persona
	if (mysqli_num_rows($result)){

        $row = mysqli_fetch_assoc($result);
        //obtengo id_persona
        $id_persona = $row["id_persona"];

        $todoOK = true;

    }

    //si no existe la persona
	else {

        //agrego la nueva persona
        if (isset($_POST["codigo"])) {
            $codigo = addslashes($codigo);

            $query = "INSERT INTO persona (dni, nombre, apellido, datos, user) 
                    VALUES ('$dni', '$nombre', '$apellido', '$codigo','$user')";     

        } else  {
            $query = "INSERT INTO persona (dni, nombre, apellido, user) 
                    VALUES ('$dni', '$nombre', '$apellido','$user')";
        }        
        /*---*/

        if (mysqli_query($dbconn,$query)){
            //obtengo id_persona
            $id_persona = mysqli_insert_id($dbconn);
            $todoOK = true;
        }
        else {
            mysqli_query($dbconn,"ROLLBACK");
            echo "Error en el registro de la persona: $apellido_msj, $nombre.".mysqli_error();
        }
    }

	//una vez que existe la persona , buscar SI EXISTE UN REGISTRO PARA EL DÍA DE HOY. SI NO EXISTE, CREARLO.
    //$fecha = date('Y-m-d H:i:s');

    $query = "  SELECT *
                FROM registro r
                WHERE(id_persona = '$id_persona' and fecha_ingreso between '$fechaDesde' and '$fechaHasta')
                ORDER BY fecha_ingreso DESC";


    $result = mysqli_query($dbconn,$query);

    ////////EXISTE REGISTRO DE ESA PERSONA PARA EL DÍA DE HOY////////
    if (mysqli_num_rows($result)) {  
        $row = mysqli_fetch_assoc($result);

        $id_registro = $row["id_registro"];


/*
        //obtengo fecha actual
        if (!isset($fecha)) {
            $fecha = date('Y-m-d H:i:s');
        }
*/

        if ( ($_POST["tipo"] =='s') && ($row['fecha_egreso'] == NULL) ) { //REGISTRAR SALIDA .
            $query = "UPDATE registro
                      SET fecha_egreso = '$fecha'
                      WHERE registro.id_registro = '$id_registro' ";
        }    //REGISTRAR ENTRADA
            if ( ($_POST["tipo"] =='s') && ($row['fecha_egreso'] != NULL) ) {
                $query = "INSERT INTO registro (id_persona, fecha_egreso, user)
                      VALUES ($id_persona,'$fecha','$user')";
        }  
            if ($_POST["tipo"] =='e') { //REGISTRAR ENTRADA .
                $query = "INSERT INTO registro (id_persona, fecha_ingreso, user)
                      VALUES ($id_persona,'$fecha','$user')";
              }
 
    } else { 
    //////// NO EXISTE REGISTRO DE ESA PERSONA PARA EL DÍA DE HOY. CREARLO////////

        if ($_POST["tipo"] =='e') { //SI ES ENTRADA
             $query = "INSERT INTO registro (id_persona, fecha_ingreso, user)
                      VALUES ($id_persona,'$fecha','$user')";
        } else {
            if ($_POST["tipo"] =='s') { //SI ES SALIDA. NO DEBERIAN REGISTRAR UNA SALIDA SIN HABER REGISTRADO UNA ENTRADA.
                $query = "INSERT INTO registro (id_persona, fecha_egreso, user)
                      VALUES ($id_persona,'$fecha','$user')";
            }
        }
    }

	if($todoOK){             

        if (mysqli_query($dbconn, $query)) {
            mysqli_query($dbconn, "COMMIT");
            echo "Persona registrada: $apellido_msj, $nombre.";
        } else {
            mysqli_query($dbconn,"ROLLBACK");
            echo "Error en el registro de la persona: $apellido_msj, $nombre".mysqli_error();
        }
    } else {
        mysqli_query($dbconn,"ROLLBACK");
        echo "Error en el registro de la persona: $apellido_msj, $nombre".mysqli_error();
    }
	
	require("disconnectBD.php");
	
	} else {
		echo "";
	}