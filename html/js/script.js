/* form_modificar.php */
function limpiar_fecha(tipo){
  if (confirm('¿Está seguro que desea limpiar la fecha y hora?')) {

    if (tipo == 'e'){ //limpiar campo fecha y hora entrada
      document.getElementById('fecha_ingreso').value = '';
      document.getElementById('hora_ingreso').value = '';
    } else { //limpiar campo fecha y hora salida
      document.getElementById('fecha_egreso').value = '';
      document.getElementById('hora_egreso').value = '';
    }
  }
}
/* */

/*registro manual*/
function modificar(){

    var msj_error = "";

    if ($("#nombre").val() != "") {
      var nombre = $("#nombre").val();
    } 

    if ($("#apellido").val() != "") {
      var apellido = $("#apellido").val();
    }

    if ($("#dni").val() != "") {
      var dni = $("#dni").val();
    }

    if ( ($("#fecha_ingreso").val() == '') && ($("#fecha_egreso").val() == '') ) {
      msj_error += "Debe completar la fecha y hora de entrada o la de salida. <br>";
    }

    if ($("#fecha_ingreso").val() != '') {//completo fecha ingreso
      if ($("#hora_ingreso").val() == '') { //no completo hora ingreso
        msj_error += "Debe completar la hora de entrada. <br>";
      }
    }

    if ($("#hora_ingreso").val() != '') {//completo hora ingreso
      if ($("#fecha_ingreso").val() == '') { //no completo fecha ingreso
        msj_error += "Debe completar la fecha de entrada. <br>";
      }
    }


    if ($("#fecha_egreso").val() != '') {//completo fecha egreso
      if ($("#hora_egreso").val() == '') { //no completo hora egreso
        msj_error += "Debe completar la hora de salida. <br>";
      }
    }

    if ($("#hora_egreso").val() != '') {//completo hora egreso
      if ($("#fecha_egreso").val() == '') { //no completo fecha egreso
        msj_error += "Debe completar la fecha de salida. <br>";
      }
    }

    if(msj_error != ""){
      Materialize.toast(msj_error, 3000, 'rounded');
    } else {

    var fecha_ingreso = $("#fecha_ingreso").val();
    var fecha_egreso = $("#fecha_egreso").val();
    var hora_ingreso = $("#hora_ingreso").val();
    var hora_egreso = $("#hora_egreso").val();
    var registro = $("#registro").val();

    $.post("modificar_consulta.php", { "nombre": nombre, "apellido": apellido, "dni": dni, "fecha_ingreso": fecha_ingreso, "hora_ingreso": hora_ingreso, "fecha_egreso": fecha_egreso, "hora_egreso": hora_egreso, "registro": registro} , function( data ) {
    if(data){
    Materialize.toast(data, 2000, 'green rounded');  
  } else {
    Materialize.toast('ERROR: Formato inválido', 3000, 'red rounded');
  }
});
  }
}


function edit(id, nombre, apellido){
  $("form#form_modificar input[name='registro']").val(id);
  $("form#form_modificar input[name='nombre']").val(nombre);
  $("form#form_modificar input[name='apellido']").val(apellido);
  $("form#form_modificar").submit();
}

/* estaba en manual.php */
  $(document).ready(function(){
    $('select').formSelect();
  });
  /* */

/* registro manual */
function registrar_manual(){

    var msj_error = "";

    if ($("#tipo").val() != "0") {
      var tipo = $("#tipo").val();
    } else {
      msj_error += "Debe seleccionar Entrada/Salida.<br>";
    }

    if ($("#nombre").val() != "") {
      var nombre = $("#nombre").val();
    } else {
      msj_error += " Debe completar el nombre.<br>";
    }

    if ($("#apellido").val() != "") {
      var apellido = $("#apellido").val();
    } else{
      msj_error += "Debe completar el apellido. <br>";
    }

    if ($("#dni").val() != "") {
      var dni = $("#dni").val();
    } else {
      msj_error += "Debe completar el DNI.<br>";
    }

    if ($("#fecha").val() != "") { //completo fecha
      var fecha = $("#fecha").val();
    } else {
       msj_error += "Debe completar la fecha. <br>";
    }

    if ($("#hora").val() != "") { //completo hora
      var hora = $("#hora").val();
    } else {
       msj_error += "Debe completar la hora. <br>";
    }

    if(msj_error != ""){
      Materialize.toast(msj_error, 3000, 'rounded');
    } else {
        $.post( "procesarDatosManual.php", { "nombre": nombre, "apellido": apellido, "dni": dni, "fecha": fecha, "hora": hora, "tipo": tipo } , function( data ) {
          if(data){
          Materialize.toast(data, 2000, 'green rounded',function(){ location.reload(true); });
          
        } else {
          Materialize.toast('ERROR: Formato inválido', 3000, 'red rounded');
        }
      }
    )};
}


function ajustar(tam, num) {
if (num.toString().length < tam) return ajustar(tam, "0" + num)
else return num;
}


function registrarEntrada(){

  var esVisible = $("#registroEntrada").is(":visible"); 
  if (esVisible) {
    $("div#registroEntrada").hide();
  } else 
  {
    $("div#registroEntrada").show();
    $("div#registroSalida").hide();
    document.getElementById("codigoEntrada").focus();
  }
}

function registrarSalida(){

  var esVisible = $("#registroSalida").is(":visible"); 
  if (esVisible) {
    $("div#registroSalida").hide();
  } else 
  {
    $("div#registroSalida").show();
    $("div#registroEntrada").hide();
    document.getElementById("codigoSalida").focus();
  }
}

//sort table
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("registros");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc"; 
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;      
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}


/* load grilla */
function buscar(){
  $("div#resultados").show();
  $("div#btnGuardar").hide();

  $("div#listado").load("buscar_consulta.php",  $("#formBusqueda").serialize());   
  };

/* datepicker */
  $(document).ready(function() {
      
  $('.modal').modal();
  $('.datepicker').pickadate({
    selectMonths: true,//Creates a dropdown to control month
    selectYears: 10,//Creates a dropdown of 15 years to control year
    //The title label to use for the month nav buttons
    labelMonthNext: 'Siguiente',
    labelMonthPrev: 'Anterior',
    //The title label to use for the dropdown selectors
    labelMonthSelect: 'Mes',
    labelYearSelect: 'Año',
    //Months and weekdays
    monthsFull: [ 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre' ],
    monthsShort: [ 'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic' ],
    weekdaysFull: [ 'Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado' ],
    weekdaysShort: [ 'Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sab' ],
    //Materialize modified
    weekdaysLetter: [ 'D', 'L', 'M', 'M', 'J', 'V', 'S' ],
    //Today and clear
    today: 'Hoy',
    close: 'Cerrar',
    clear:'',
    //The format to show on the `input` element
    format: 'dd/mm/yyyy',
    /*onSet: function () {
      this.close();
    }*/
  });
  });


/* toast button close */
  $(document).on('click', '#toast-container .toast', function() {
    $(this).fadeOut(function(){
        $(this).remove();
    });
});


$(document).ready(function(){
  //$('.hora').timepicker();


  inter_es = {
    cancel: 'Cancelar',
    clear: 'Limpiar',
    done:    'Ok',
    previousMonth:    '‹',
    nextMonth:    '›',
    months:    [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ],
    monthsShort:    [
      'Ene',
      'Feb',
      'Mar',
      'Abr',
      'May',
      'Jun',
      'Jul',
      'Ago',
      'Sep',
      'Oct',
      'Nov',
      'Dic'
    ],

    weekdays:    [
      'Domingo',
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado'
    ],

    weekdaysShort:    [
      'Dom',
      'Lun',
      'Mar',
      'Mié',
      'Jue',
      'Vie',
      'Sáb'
    ],

    weekdaysAbbrev:    ['D', 'L', 'M', 'M', 'J', 'V', 'S']

  };

  var Doptions = {
    i18n: inter_es,
    format: 'dd/mm/yyyy',
    autoClose: true,
    setDefaultDate: true,
  };
  var elem = document.querySelector('.fecha');
  var instance = M.Datepicker.init(elem, Doptions);

  var elem = document.querySelector('.fecha2');
  var instance = M.Datepicker.init(elem, Doptions);

  var elem = document.querySelector('.fecha3');
  var instance = M.Datepicker.init(elem, Doptions);

  var Toptions = {
    i18n: inter_es,
    default: 'now', // Set default time,
    twelveHour: false,
    autoClose: true,
  };

  var elem = document.querySelector('.hora');
  var instance = M.Timepicker.init(elem, Toptions);

  var elem = document.querySelector('.hora2');
  var instance = M.Timepicker.init(elem, Toptions);

});