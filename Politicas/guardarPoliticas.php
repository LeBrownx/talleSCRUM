<?php
  $materia = $_POST['materia'];
  $cuatrimestre = $_POST['cuatrimestre'];
  $politicas = $_POST['politicas'];
  $ptc="idPol";

  // echo $materia;
  // echo $cuatrimestre;
  // echo $politicas;

  //Conexion a BD
  $conexion = mysql_connect('localhost', 'root', '')  or die('No se pudo conectar: ' . mysql_error());
  //SELECCIONANDO DB
  mysql_select_db('taller_scrum') or die('No se pudo seleccionar la base de datos');
  //SOLICTUD A BD
  $query = "INSERT INTO  politicas ( idMateria, idPTC, Ncuatrimestre, PoliticasURL) VALUES ('$materia','$ptc','$cuatrimestre','$politicas')";
  $result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());
  echo '<script language="javascript">alert("Politicas Agregadas");</script>';
  echo '<script language="javascript">window.location="politicasFormulario.php";</script>';
 ?>
