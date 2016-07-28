<?php
if(!empty($_POST['nombre'])){
        $nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $pass = $_POST['pass'];
        $email = $_POST['email'];
        $tipoUsuario = $_POST['TipoUsuario'];
        $cuatrimestre = $_POST['cuatrimestre'];
        mysql_connect('localhost','root','root')
        or die("Error al conectar " . mysql_error());
        mysql_select_db('taller_scrum') //aca era proyecto
        or die ("Error al seleccionar la Base de datos: " . mysql_error());
        if($tipoUsuario == "PTC"){
            mysql_query("INSERT INTO usuario (nombre,apellidos,contrasena,correo) VALUES('$nombre', '$apellidos', '$pass', '$email')");
            $id = mysql_query("SELECT LAST_INSERT_ID()");
            $idUsuario = mysql_fetch_array($id);
            $clave = 1000;
            $c = mysql_query("SELECT  COUNT(*) from ptc");
            $count = mysql_fetch_array($c);
            $clave = $clave + $count[0];
            //echo $idUsuario[0];
            mysql_query("INSERT INTO ptc(idUsuario, clave) VALUES('$idUsuario[0]', '$clave')");
        }else{
            mysql_query("INSERT INTO usuario (nombre,apellidos,contrasena,correo) VALUES('$nombre', '$apellidos', '$pass', '$email')");
            $id = mysql_query("SELECT LAST_INSERT_ID()");
            $idUsuario = mysql_fetch_array($id);
            $matricula = 14000;
            $c = mysql_query("SELECT  COUNT(*) from alumno");
            $count = mysql_fetch_array($c);
            $matricula= $matricula + $count[0];
            mysql_query("INSERT INTO alumno (idUsuario, matricula, cuatrimestre) VALUES('$idUsuario[0]', '$matricula', '$cuatrimestre')");
        }
    }
?>
<!DOCTYPE HTML>
<HTML>
    <HEAD>
        <meta charset="utf-8">
        <script type="text/javascript">
        function habilitar(value)
        {
          if(value=="Alumno" || value==true)
          {
            // habilitamos
            document.getElementById("cuatri").hidden=false;
          }else if(value=="PTC" || value==false){
            // deshabilitamos
            document.getElementById("cuatri").hidden=true;
          }
        }
        </script>
        <link rel="stylesheet" href="registroUsuario.css">
    </HEAD>
    <BODY>
        <form action="registroUsuario.php" method="post">
            <input type= "text" placeholder="Nombre" name="nombre">
            <input type= "text" placeholder="Apellidos" name="apellidos">
            <input type= "password" placeholder="Contraseña" name="pass">
            <input type= "email" placeholder="Correo" name="email">
            <select name="TipoUsuario" id="usuarioT" onchange="habilitar(this.value);">
                <option value="Alumno">Alumno</option>
                <option value="PTC">PTC</option>

            </select>
            <select name="cuatrimestre" id="cuatri">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
            </select>
            <input type="submit">
        </form>
    </BODY>
</HTML>
