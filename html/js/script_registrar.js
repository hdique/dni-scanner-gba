/* update grilla */
$(document).keypress(function(e) {
  if(e.which == 13) { /*si tocó enter */
    //var codigo = $("input").val();

    if ($("#codigoEntrada").val() != "") {
      var codigo = $("#codigoEntrada").val();
      var tipo = "e";
    } else 
      if ($("#codigoSalida").val() != "") {
        var codigo = $("#codigoSalida").val();
        var tipo = "s";
    }    
    
    $.post( "procesarDatosLectora.php", { "codigo": codigo, "tipo": tipo } , function( data ) {
		$("input").val("");
		if(data){
      /* estaria bueno preguntar: si es actualizacion de egreso, color amarillo. */
      Materialize.toast(data, 3000, 'green') ;
      //alert(data);
			$("div#listado").load("registro.php"); //actualiza la grilla
		} else {
      Materialize.toast('ERROR: Formato inválido', 3000, 'red') ;
		}
	});
  }
});