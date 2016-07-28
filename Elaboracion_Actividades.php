
<?php
$titulo = $_POST['titulo'];
$descripcion = $_POST['descripcion'];
$lista = $_POST['lista_cotejo'];
$puntuacion = $_POST['puntuacion']; 
$corte = $_POST['corte'];
$asignatura = $_POST['asignatura'];
$cuatri = $_POST['cuatri'];
$grupo = $_POST['grupo'];
$fecha = $_POST['fecha'];

if(empty($titulo) || empty($descripcion)){
	header("Location: Elaboracion_Actividades.html");
	exit();
}
mysql_connect('localhost','root','root') 
	or die("Error al conectar " . mysql_error());
mysql_select_db('taller_scrum') 
	or die ("Error al seleccionar la Base de datos: " . mysql_error());

	$sql = "INSERT INTO `actividades`(`titulo`, `descripcion`, `lista`, `puntuacion`, `corte`, `asignatura`, `cuatri`, `grupo`, `fecha`) VALUES ('$titulo','$descripcion','$lista','$puntuacion','$corte','$asignatura','$cuatri','$grupo','$fecha')";//Se insertan los datos a la base de datos y el usuario ya fue registrado con exito.
        mysql_query($sql);
         echo '<script language="javascript">alert("La actividad se ha guardado");</script> ';
        echo "<script>location.href='Elaboracion_Actividades.html'</script>";
?>