<?php
//Conexion a BD
$conexion = mysql_connect('localhost', 'root', '')  or die('No se pudo conectar: ' . mysql_error());
//SELECCIONANDO DB
mysql_select_db('taller_scrum') or die('No se pudo seleccionar la base de datos');
//PETICION DB
// $query="SELECT * FROM materias WHERE idAlumno=$idAlumno";
// $result = mysql_query($query);
 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>EVIDENCIAS</title>
    <script type="text/javascript">
      function mostrarArchivo() {
        var documento=document.getElementById('archivo').value;
        alert("nombre"+documento);
        // var carpetaDestino=companyhome.childByNamePath("C:\xampp\htdocs\tallerSCRUM\evidencias");
        // document.move(carpetaDestino);
        // document.save();
      }
    </script>
  </head>
  <body>
      <table>
        <tr>
          <td>
            Materia
          </td>
          <td>
            Subir Evidencias
          </td>
          <td>
            Mis Evidencias
          </td>
        </tr>
        <tr>
          <td>
            <?php
            // echo $result;
            echo "MATERIAS CARGADAS";
            ?>

          </td>
          <td>
            <form class="" action="index.html" method="post">
              <input type="file" name="name" value="" id="archivo">
              <input type="texts" name="name" value="" placeholder="Evidencia">
              <p>
                Cuatrimestre
              </p>
              <select class="" name="">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
            </form>
          </td>
          <td>
            <button type="mostrar" name="button" onclick="mostrarArchivo()">Mostrar</button>
          </td>
        </tr>
      </table>
  </body>
</html>
