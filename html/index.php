<?php include("encabezado.php"); ?>
<!-- REGISTRO AUTOMÁTICO -->
<script src="js/script_registrar.js"></script>
<body>

  <main>
      <div class="section no-pad-bot" id="index-banner">     
        <h4 align="center"> <b> Registro de externos por código de barras </b></h4>    
      </div>

      <br><br>
      <div class="container">
      <div class="row">
          <form method="post">

              <div class="input-field col s6 center-align">          
                <a class="waves-effect botonGris btn-large" onclick="registrarEntrada();">
                  <i class="material-icons left">input</i>Registrar Entrada
                </a>
                <div class="input-field col s12" hidden="true" id="registroEntrada">
                    <i class="material-icons prefix">portrait</i> 
                    <input name="codigoEntrada" id="codigoEntrada" type="text" class="validate" 
                          required autofocus onblur="this.focus()" autocomplete="off" >
                    <label class="label_1" for="serie">Código</label>
                </div>
              </div>

              <div class="input-field col s6 center-align">
                <a class="waves-effect waves-light btn-large grey darken-3" onclick="registrarSalida();">
                  <i class="material-icons left">directions_walk</i>Registrar Salida
                </a>        
                <div class="input-field col s12" hidden="true" id="registroSalida">
                    <i class="material-icons prefix">portrait</i>
                    <input name="codigoSalida" id="codigoSalida" type="text" class="validate" 
                          required autofocus onblur="this.focus()" autocomplete="off" >
                    <label class="label_1" for="serie">Código</label>
                </div>
              </div>

          </form>
      </div>
      <br>
      <br>
      <br>

      <div>
        <h5 class=lightBlue>Registro <?php date_default_timezone_set('America/Argentina/Buenos_Aires'); echo date("d/m/Y");?></h5>
        <div id="listado">
          <?php include("registro.php"); ?>
        </div>
      </div>

      <br><br>
      <form id="form_modificar" method="post" action="modificar.php">
        <input type="hidden" id="registro" name="registro">
      </form>
  </main>

  <?php include("footer.html"); ?>

</body>
</html>