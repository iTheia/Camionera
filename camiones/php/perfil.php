<!DOCTYPE html>
<html lang="es">
  <head>

    <title>Mi perfil</title>


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
        <h1>Mis Tickets</h1>
        <p class="lead">
        </p>
        <div align="center">
          <?php 
            include('../modulos/conexion.php');
            $user = $_SESSION['dev'];
            $id = $user[0];
            $conn = conectar();
            $query = 'SELECT * FROM TICKET WHERE usuario_id = '. $id .' ';
            $consulta = mysqli_query($conn, $query);
          ?>

          <table class="table table-dark">
          <?php  while ($row = mysqli_fetch_array($consulta)) { ?>
            <tr>
              <th scope="col">numero de ticket <?php echo $row['ticket_id']; ?></th>
              <th scope="col">montoPagado <?php echo $row['montoPagado']; ?></th>
              <th scope="col">hora: <?php echo $row['fecha']; ?></th>
            </tr>
          <?php } ?>
          </table>
        </div>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>