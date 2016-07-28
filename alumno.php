<?php
session_start();
  if($_SESSION['user'] =="" && $_SESSION['cuatri'] ==""){
        echo "ENTRA AQUI";
        header("Location: login.html") ;
      }
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Alumnos</title>
      <meta charset="utf-8">""
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <?php $user = $_SESSION['user'];
      echo "<a class='navbar-brand' href='#''>$user</a>";
      ?>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="entregaEvidencias.php">Evidencias</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="valoracion_politicas.php">Politicas</a></li>
    </ul>
  </div>
</nav>

</body>
</html>