<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="">

    <title>Autobuses</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/starter-template.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/FormStyle.css">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.php">Inicio</a></li>
              <li><a href="yo.php">Acerca de Mi</a></li>
              <li><a href="sesion.php">Sesion</a></li>
              <li><a href="perfil.php">Perfil</a></li>
            </ul>
            <?php 
              require_once('../modulos/islogin.php');
              if (!$estado) { ?>
              <form class="navbar-form navbar-right" method="post" action="../modulos/login.php" role="form">
                <input type="text" name="user" class="form-control" placeholder="correo@ejemplo.com" required="">
                <input type="password" name="password" class="form-control" placeholder="contraseña" required="">
                <button  type="submit" class="btn btn-primary">Login</button>
              </form>
            <?php }else{ ?>
              <form class="navbar-form navbar-right" method="post" action="../modulos/logOut.php" role="form">
                <button type="submit" class="btn btn-warning">Cerrar Sesion</button>
              </form>
              
            <?php }?>
          </div>
        </div>
    </div>
    <div class="container">
      <div class="starter-template">
        <p class="lead">
          Registrate
        </p>
        <div align="center">
          <form class="form" role="form" method="post" action="../modulos/registro.php">
            <div class="form-group">
              <label>Ingresa usuario</label>
              <input type="text" name="user" class="form-control" required="" placeholder="">
            </div>
            <div class="form-group">
              <label for="nombre">Nombre</label>
              <input type="text" name="nombre" class="form-control" required="" placeholder="">
            </div>
            <div class="form-group">
              <label for="apellido">Apellido</label>
              <input type="text" name="apellido" class="form-control" required="" placeholder="">
            </div>
            <div class="form-group">
              <label>Ingresa contraseña</label>
              <input type="password" name="password" class="form-control" required="" placeholder="">
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Registrarse</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>