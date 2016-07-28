<?php
  $materia = $_POST['materia'];
  $cuatrimestre = $_POST['cuatrimestre'];
  $politicas = $_POST['politicas'];

  echo $materia;
  echo $cuatrimestre;
  echo $politicas;

  $con = mysql_connect('localhost','root','root');
  mysql_select_db('analisis');

 ?>
