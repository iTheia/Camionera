<!DOCTYPE html>
<html>
<head>
	<title>destinos</title>
	<?php 
		$destino = $_POST["destino"];
		include('../modulos/conexion.php');
	    $conn = conectar();
	    $query = 'SELECT * FROM destino_autobus WHERE destino_id = '. $destino .' ';
	    $consulta = mysqli_query($conn, $query);
	 ?>
	<script type="text/javascript" src="../js/destinos.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/starter-template.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/FormStyle.css">
</head>
<body>
	<div id="app">
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.php">Inicio</a></li>
              <li><a href="yo.php">Acerca de Mi</a></li>
              <li><a href="sesion.php">Sesion</a></li>
            </ul>
          </div>
        </div>
      </div>
	<form action="asientos.php" method="post" class="jumbotron">
    	<div class="container">
<div>
		<?php while ($row = mysqli_fetch_array($consulta)) { ?>

			<div class="panel panel-primary">

		      <div class="panel-heading">Viaja conmigo <label>hora <?php echo $row["hora"];?></label> </div>
		      <div class="panel-body">
		    	<span align="center">TABLA DE PRECIOS</span>
				<div align="center">
			<input type="hidden" name="bus" id="bus" value="<?php echo $row['autobus_id']; ?>">
			<label >estudiante <?php echo $row["precioEstudiante"]; ?></label>
			<input type="hidden" name="precioEstudiante<?php echo $row["autobus_id"]; ?>" value="<?php echo $row["precioEstudiante"]; ?>">
			<select class="form-control" name="estudiante<?php echo $row['autobus_id']; ?>">
				<?php 
					for ($i=0; $i < 5; $i++) { 
						echo '<option value='. $i .'> '. $i .'</option>';
					}
				 ?>
			</select>
			<p>	</p>
			<label >adulto <?php echo $row["precioNormal"]; ?></label>
			<input type="hidden" name="precioNormal<?php echo $row["autobus_id"]; ?>" value="<?php echo $row["precioNormal"]; ?>">
			<select class="form-control" name="adulto<?php echo $row['autobus_id']; ?>">
				<?php 
					for ($i=0; $i < 28; $i++) { 
						echo '<option value='. $i .'> '. $i .'</option>';
					}
				 ?>
			</select>
			<p>	</p>
			<label>especial <?php echo $row["precioEspecial"]; ?></label>
			<input type="hidden" name="precioEspecial<?php echo $row["autobus_id"]; ?>" value="<?php echo $row["precioEspecial"]; ?>">
			<select class="form-control" name="especial<?php echo $row['autobus_id']; ?>">
				<?php 
					for ($i=0; $i < 28; $i++) { 
						echo '<option value='. $i .'> '. $i .'</option>';
					}
				 ?>
			</select>
			<p>	</p>
			<input type="button" class="btn btn-primary" onclick="opcion(<?php echo $row['autobus_id']; ?>)" value="Confirmar Opcion"></input>

			</div>
			</div>
		</div>
    	<?php }?>
    </div>
		</div>
			<input type="hidden" name="autobus_id" value="0" id="autobus_id">
    		<input type="hidden" name="destino" value="<?php echo $destino; ?>">
    		<input type="submit" name="enviar" value="ver asientos" class="btn btn-primary">
    	</form>

	</div>
</body>
</html>