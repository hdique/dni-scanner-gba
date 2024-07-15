<?php
$tabla='
        <table class="highlight" id="registros">
          <thead>
            <tr>
			  <th id="columnaAmarilla"> </th>	            
              <th onclick="sortTable(1)">Apellido / Nombre</th>
              <th onclick="sortTable(2)">DNI</th>
              <th onclick="sortTable(3)">Entrada</th>
              <th onclick="sortTable(4)">Salida</th>
              <th> </th>
            </tr>
          </thead>
          <tbody>
          ';

while ($row = mysqli_fetch_assoc($result)) {
    $fondo="";

    if ($row['fecha_ingreso'] != NULL) {
        if ($paginaInicio) $fecha_ingreso = date_format(date_create($row['fecha_ingreso']),"H:i:s");
        else $fecha_ingreso = date_format(date_create($row['fecha_ingreso']),"d/m/Y H:i:s");
    } else {
        $fecha_ingreso = "-";
        $fondo="fondo_warnning";
    }

    if ($row['fecha_egreso'] != NULL) {
        if ($paginaInicio) $fecha_egreso = date_format(date_create($row['fecha_egreso']),"H:i:s");
        else $fecha_egreso = date_format(date_create($row['fecha_egreso']),"d/m/Y H:i:s");
    } else {
        $fecha_egreso = "-";
        $fondo="fondo_warnning";
    }

    $apellido = str_replace('{', "'", $row['apellido']);

    $tabla .= '<tr>
				<td class="'.$fondo.'"></td>
				<td>'.$apellido.', '.$row['nombre'].'</td>
				<td>'.$row['dni'].'</td>
				<td>'.$fecha_ingreso.'</td>
				<td>'.$fecha_egreso.'</td>
				<td onclick="edit(\''.$row['id_registro'].'\', \''.$row['nombre'].'\', \''.$row['apellido'].'\');">   <a class="btn-floating btn-small waves-effect waves-light "><i class="material-icons">edit</i></a> </td>
			   </tr>';

}

$tabla .='
</tbody>
</table>';

$tabla .= "<div><b>Total: ".mysqli_num_rows($result)."</b></div> ";

echo $tabla;
?>