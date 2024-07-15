<?php include("encabezado.php");
date_default_timezone_set('America/Argentina/Buenos_Aires'); ?>

<body>

<main>
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <h4 align="center"> <b> Registro de externos manual </b></h4>
    </div>
  </div>
  
  <div class="container">
    <br>
    <br>
    <div class="row">
      <form class="col s12">
          <div class="row">
            <div class="input-field col s6 offset-m3">
                <i class="material-icons prefix">directions_walk</i>
                <select id="tipo" required name="tipo">
                  <option select value="0">Elegir una opción</option>
                  <option value="e">Entrada</option>
                  <option value="s">Salida</option>
                </select>
              </div> 
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="nombre" required name="nombre" type="text" class="validate">
                    <label for="nombre">Nombre</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix" >account_circle</i>
                    <input id="apellido" required name="apellido" type="text" class="validate">
                    <label for="apellido">Apellido</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">featured_play_list</i>
                    <input id="dni" required name="dni" type="text" class="validate">
                    <label for="dni">DNI</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">date_range</i>
                    <input id="fecha" name="fecha" type="text" value="<?= date("m/d/Y");?>" class="validate fecha">
                    <label for="fecha">Fecha</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 offset-m3">
                    <i class="material-icons prefix">watch_later</i>
                    <input id="hora" name="hora" type="text" value="<?= date('H:i:s');?>" class="validate hora">
                    <label for="hora">Hora</label>
                </div>
            </div>

            <div class="row">
                <div class="col s6 offset-m5">
                    <a class="waves-effect waves-light btn" onclick="registrar_manual();">
                      <i class="material-icons right">send</i>
                      Registrar persona
                    </a>
                </div>
            </div>
        </form>
    </div>
	   
  </div> 
  <br>
  <br>
  
</main>

<?php include("footer.html"); ?>

</body>
</html>

<script> /* no funciona al colocarlo en script.js*/

    $( "#tipo" ).change(function() {
        if ($("#tipo" ).val() == 'e'){
            $(".prefix ~ .select-wrapper").css('background-color','#009aae');
        }
        else {
          if ($("#tipo" ).val() == 's'){
            $(".prefix ~ .select-wrapper").css('background-color','#414042');
            }
            else {
                $(".prefix ~ .select-wrapper").css('background-color','#fff');
            }
        }
    });
    
</script>