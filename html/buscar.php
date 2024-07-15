<?php include("encabezado.php"); ?>

<body>
  <main>
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <h4 align="center"> <b> Búsqueda de externos registrados </b></h4>
    </div>
  </div>

  <div class="container">
  <br><br>
    <div class="row">
      <form class="col s12" name="formBusqueda" method="get" id="formBusqueda">
        <div class="row">
            <div class="input-field col s6">
              <i class="material-icons prefix">account_circle</i>
              <input id="nombre" name="nombre" type="text" placeholder="JUAN PÉREZ / JUAN / PÉREZ" class="validate">
              <label for="nombre">Apellido / Nombre </label>
            </div>

            <div class="input-field col s6">
              <i class="material-icons prefix">featured_play_list</i>
              <input id="dni" name="dni" type="number" placeholder="20123456" class="validate">
              <label for="dni">DNI</label>
            </div>

            <div class="input-field col s6">
              <i class="material-icons prefix">date_range</i>
              <input id="desde" name="desde" type="text" class="fecha" value="<?= date("m/d/Y");?>">
              <label for="desde">Fecha desde</label>
            </div>

            <div class="input-field col s6">
              <i class="material-icons prefix">date_range</i>
              <input id="hasta" name="hasta" type="text" class="fecha2" value="<?= date("m/d/Y");?>">
              <label for="hasta">Fecha hasta</label>
            </div>

            <left>
              <div class="col s6 offset-m5">
              <button class="waves-effect waves-light btn" type="button" name="action" onclick="buscar();">Buscar
                <i class="material-icons right">send</i>
              </button>
           </left>
        </div>
      </form>
    </div>

<br>
<br>
<div id="resultados" hidden="true">
  <h5>Resultados de la búsqueda</h5> 
    <div id="listado">
      <?php include("buscar_consulta.php"); ?>
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



