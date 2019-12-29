<!DOCTYPE html>
<html>
<head>
	<title>asientos</title>
	<script type="text/javascript" src="../js/asientos.js"></script>
	<?php 
		$autobus_id = $_POST['autobus_id'];
		$estudiante = $_POST['estudiante'.$autobus_id];
		$adulto = $_POST['adulto'.$autobus_id];
		$especial = $_POST['especial'.$autobus_id];
		$i = 1;
		$total = $estudiante + $adulto + $especial;
		include('../modulos/conexion.php');
	    $conn = conectar();
	    $query = 'SELECT * FROM asiento WHERE autobus_id = '. $autobus_id .' ';
	    $consulta = mysqli_query($conn, $query);
	 ?>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/index.css" rel="stylesheet">
    <link href="../css/starter-template.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/FormStyle.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
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
	    <section class="jumbotron text-center">
		    <div class="container">
		      <h1 class="jumbotron-heading">Seleccione sus asientos</h1>
		      </p>
		    </div>
	  	</section>
	<div align="center">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" href="#collapse2">Formularios</a>
			      </h4>
			    </div>
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" href="#collapse1">Asientos</a>
			      </h4>
			    </div>
			    <form action="ticket.php" method="post">
			    	<input type="hidden" name="total" value="<?php echo $total; ?>">
			    	<div id="collapse2" class="panel-collapse collapse">
			    		<div class="panel-body">
			    			<div class="container">
		    				<?php $intE = 1; while ($intE <= $estudiante) {?>
		    					<p></p>
			    				<label>nombre</label><input class="form-control" type="text" name="<?php echo 'nombre'.$total; ?>">
								<label>apellido</label><input class="form-control" type="text" name="<?php echo 'apellido'.$total; ?>">
								<label>precio a pagar <?php echo $_POST['precioEstudiante'.$autobus_id]; ?></label><input type="hidden" name="<?php echo 'totalES'.$autobus_id; ?>" value="<?php echo $_POST['precioEstudiante'.$autobus_id]; ?>">
			    			<?php $intE++; $total++; }?>
			    			<?php $intA = 1; while ($intE <= $adulto) {?>
			    				<p></p>
			    				<label>nombre</label><input class="form-control" type="text" name="<?php echo 'nombre'.$total; ?>">
								<label>apellido</label><input class="form-control" type="text" name="<?php echo 'apellido'.$total; ?>">
								<label>precio a pagar <?php echo $_POST['precioNormal'.$autobus_id]; ?></label><input type="hidden" name="<?php echo 'totalA'.$autobus_id; ?>" value=" <?php echo $_POST['precioNormal'.$autobus_id]; ?>">
								<?php  ?>
			    			<?php $intA++; $total++; }?>
			    			<?php $intEs = 1; while ($intE <= $especial) {?>
			    				<p></p>
			    				<label>nombre</label><input class="form-control" type="text" name="<?php echo 'nombre'.$total; ?>">
								<label>apellido</label><input class="form-control" type="text" name="<?php echo 'apellido'.$total; ?>">
								<label>precio a pagar <?php echo $_POST['precioEspecial'.$autobus_id]; ?></label><input type="hidden" name="<?php echo 'totalESP'.$autobus_id; ?>" value="<?php echo $_POST['precioEspecial'.$autobus_id]; ?>">
			    			<?php $intEs++; $total++; }?>
			    			</div>
			    			
			    		</div>
			    	</div>
		    		<div id="collapse1" class="panel-collapse collapse">
			    		<div class="panel-body">
						  	<div class="album py-5 bg-light">
							    <div class="container" align="center">
							    	<table >
							    		<tr class="info">
							    		<?php  while ($row = mysqli_fetch_array($consulta)) { ?>
							    			<?php if ($i % 7 != 0):?>
							    				<td width=10%>
							    				<?php if($row['ocupado'] == 0): ?>
								    				<input type="hidden" name="<?php echo $row['asiento']; ?>" id="<?php echo $row['asiento']; ?>" value="<?php echo $row['ocupado']; ?>">
								    				<img src="../fonts/asiento.png" onclick="cambiar(<?php echo $row['asiento']; ?>)" id="<?php echo 'img'.$row['asiento']; ?>">
							    				<?php elseif ($row['ocupado'] == 1): ?>
							    					<img src="../fonts/asiento2.png">
							    				<?php endif ?>
							    				</td>
							    				<?php $i++; ?>
							    				<?php if ($i == 7){echo '</td>';}?>
							    			<?php elseif($i % 7 == 0): ?>
							    				</tr>
							    				<?php $i++; ?>
							    			<?php endif ?>
						    			<?php } ?>
						    			</table>
				    			</div>
				    		</div>
			    		</div>
		    		</div>
			    <input type="hidden" name="autobus_id" value="<?php echo $autobus_id; ?>">
			    <input type="hidden" name="destino" value="<?php echo $_POST['destino']; ?>">
			    <section class="jumbotron text-center"> 
			    	<div lass="container">
			    		<input class="btn btn-primary" type="submit" name="enviar" value="confirmar">
			    	</div>
			    </section>
				    
			    </form>
			</div>
		</div>
	</div>
	
</body>
</html>