<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>POLITICAS</title>
  </head>
  <body>
    <h2>Elaboracion de Politicas</h2>
    <form class="" action="guardarPoliticas.php" method="post">
      <input type="text" name="materia" value="" placeholder="Materia">
      <p>
        Cuatrimestre
      </p>
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
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
      </select>
      <br>
      <p>
        Politicas
      </p>
      <textarea name="politicas" rows="8" cols="40" placeholder="Politicas..."></textarea>
      <input type="submit" name="name" value="Guardar">
    </form>


  </body>
</html>
