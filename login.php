<?php 
$usuario = $_POST['usuario'];
$pass = $_POST['contra'];
$opcion = $_POST['opcion'];
session_destroy();
session_start();
$_SESSION['user'] ="";

 echo "bienvenido" . $usuario . $pass. $opcion;
if(empty($usuario) || empty($pass)){
header("Location: login.html");
exit();
}


mysql_connect('localhost','root','root') 
	or die("Error al conectar " . mysql_error());
mysql_select_db('taller_scrum') 
	or die ("Error al seleccionar la Base de datos: " . mysql_error());

if ($opcion == 'Profesor') {
	$result = mysql_query("SELECT * from ptc where clave='" . $usuario . "'");
	if($row = mysql_fetch_array($result)){
		$id = $row['idUsuario'];
		$res = mysql_query("SELECT * from usuario where idUsuario='" . $id . "'");
		if($r = mysql_fetch_array($res)){
			if($r['contrasena'] == $pass){
				session_start();
				$_SESSION['user'] = $usuario;
				header("Location: ptc.php");
			}else{
				header("Location: login.html");
				exit();
			}
		}
	}
	else{
		header("Location: login.html");
		exit();
	}
}

if ($opcion == 'Alumno') {
	$result = mysql_query("SELECT * from alumno where matricula='" . $usuario . "'");
	if($row = mysql_fetch_array($result)){
		$id = $row['idUsuario'];
		$res = mysql_query("SELECT * from usuario where idUsuario='" . $id . "'");
		if($r = mysql_fetch_array($res)){
			if($r['contrasena'] == $pass){
				session_start();
				$_SESSION['user'] = $usuario;
				header("Location: alumno.php");
			}else{
				header("Location: login.html");
				exit();
			}
		}
	}
	else{
		header("Location: login.html");
		exit();
	}
}

?>