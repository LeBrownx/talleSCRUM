<?php
if(!empty($_POST['nombre'])){
        $nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $pass = $_POST['pass'];
        $email = $_POST['email'];
        $tipoUsuario = $_POST['TipoUsuario'];
    
        mysql_connect('localhost','root','root')
        or die("Error al conectar " . mysql_error());
        mysql_select_db('taller_scrum') //aca era proyecto
        or die ("Error al seleccionar la Base de datos: " . mysql_error());
        if(tipoUsuario == "PTC"){
            mysql_query();
            $informacion = mysql_query("INSERT INTO ptc");
        }else{
            
        }
    }
?>
<!DOCTYPE HTML>
<HTML>
    <HEAD>
        <meta charset="utf-8">
    </HEAD>
    <BODY>
        <form action="registroUsuario.php" method="post">
            <input type= "text" placeholder="Nombre" name="nombre">
            <input type= "text" placeholder="Apellidos" name="apellidos">
            <input type= "password" placeholder="Contraseña" name="pass">
            <input type= "email" placeholder="Correo" name="email">
            <select name="TipoUsuario">
                <option value="PTC">PTC</option>
                <option value="Alumno">Alumno</option>
            </select>
            <select name="cuatrimestre">
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