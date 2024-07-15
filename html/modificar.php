<?php 
include("encabezado.php");
date_default_timezone_set('America/Argentina/Buenos_Aires'); 
require("connectBD.php");
include("obtenerRegistro.php");
require("disconnectBD.php");
?>

<body>

<main>
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <h4 align="center">
            <b> Modificar registro de: <?php echo $nombre; echo ', '; echo $apellido ?> </b>
        </h4>
    </div>
  </div>

    <div class="container">
    <br><br>
    <div class="row">
      <form class="col s12">
        <input type="hidden" id="registro" name="registro" value="<?= $id_registro;?>">

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">account_circle</i> 
                    <input id="nombre" required name="nombre" type="text" value="<?php echo $nombre;?>" class="validate" disabled readonly>
 					<label for="nombre">Nombre</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix" >account_circle</i>
                    <?php $apellido = str_replace('{', "'", $row['apellido']); ?>
                    <input id="apellido" required name="apellido" type="text" value="<?php echo $apellido;?>" class="validate" disabled readonly>
                    <label for="nombre">Apellido</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">featured_play_list</i>
                    <input id="dni" required name="dni" type="text" value="<?php echo $dni;?>" class="validate" disabled readonly>
                    <label for="dni">DNI</label>
                </div>
            </div>

            <div class="row col s6 offset-m3"> 
                <p class="lightBlue"><b>Entrada</b> </p> <br>
            </div> 
           <a class="btn-floating btn-small waves-effect waves-light" title="¿Desea limpiar la fecha y hora de entrada?" 
                onclick="limpiar_fecha('e');"> <i class="material-icons">delete</i></a>
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix icon-lightBlue">date_range</i>
                    <input id="fecha_ingreso" name="fecha_ingreso" type="text" value="<?php echo $fecha_ingreso;?>" class="validate fecha">
                    <label for="fecha_ingreso"> Fecha de entrada</label> 
                </div>
         
            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix icon-lightBlue">watch_later</i>
                    <input id="hora_ingreso" name="hora_ingreso" type="text" value="<?php echo $hora_ingreso;?>" class="validate hora">
                    <label for="hora_ingreso">Hora de entrada</label>
                </div>
            </div>


               <div class="row col s6 offset-m3"> 
                <p class="darkGrey"><b>Salida</b> </p> <br>
               </div>
                <a class="btn-floating btn-small waves-effect waves-light"  title="¿Desea limpiar la fecha y hora de salida?" 
                    onclick="limpiar_fecha('s');"> <i class="material-icons">delete</i></a>
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix icon-darkGrey">date_range</i>
                    <input id="fecha_egreso" name="fecha_egreso" type="text" value="<?= $fecha_egreso;?>" class="validate fecha2">
                    <label for="fecha_egreso"> Fecha de salida </label>
                </div>
          

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix icon-darkGrey">watch_later</i>
                    <input id="hora_egreso" name="hora_egreso" type="text" value="<?= $hora_egreso?>" class="validate hora2">
                    <label for="hora_egreso">Hora de salida</label>
                </div>
            </div>

        </main>
        <div class="row">
                <a class="waves-effect waves-light btn" href="<?= $_SERVER['HTTP_REFERER']?>">
                    <i class="material-icons left">keyboard_return</i>Volver
               </a>
            <a class="waves-effect waves-light btn" onclick="modificar();">
                <i class="material-icons right">send</i>Modificar
            </a>
        </div>   

        </form>

<?php include("footer.html"); ?>

</body>
</html>
