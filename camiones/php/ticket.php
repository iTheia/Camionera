<!DOCTYPE html>
<html>
<head>
	<title>ticket</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/starter-template.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/FormStyle.css">
</head>
<body>
	<?php 
		
		include('../modulos/conexion.php');
		session_start();
        $user = $_SESSION['dev'];
        $id = $user[0];
	    $conn = conectar();
	    $asientos = [];
	    for ($i=1; $i <= 28; $i++) {
	    	if (isset($_POST[$i])) {
				$query = 'UPDATE ASIENTO SET ocupado = '. $_POST[$i]  .' WHERE autobus_id = '. $_POST["autobus_id"].' AND asiento = '. $i .'';
				$asientos[] = $_POST[$i];
		    	$consulta = mysqli_query($conn, $query);		
	    	}
		}

		$totalP = 0;
		$autobus_id = $_POST['autobus_id'];
		$destino = $_POST['destino'];
		$total = $_POST['total'];
		for ($i=0; $i < $total; $i++) { 
			if (isset($_POST['totalES'.$autobus_id])) {
				$precioT = $_POST['totalES'.$autobus_id];
				$nombre =  $_POST['nombre'.$total];
				$apellido =  $_POST['apellido'.$total];
				$queryP = "INSERT INTO pasajero (pasajero_id, nombre, apellido, asiento, totalPagado) VALUES (NULL, '$nombre ','$apellido ',' $asientos[$i]','$precioT ')";
				$consultaP = mysqli_query($conn, $queryP);	
				$totalP = $totalP + $precioT;
			}
			if (isset($_POST['totalA'.$autobus_id])) {
				$precioT = $_POST['totalA'.$autobus_id];
				$nombre =  $_POST['nombre'.$total];
				$apellido =  $_POST['apellido'.$total];
				$queryP = "INSERT INTO pasajero (pasajero_id, nombre, apellido, asiento, totalPagado) VALUES (NULL, '$nombre ','$apellido ',' $asientos[$i]','$precioT ')";
				$consultaP = mysqli_query($conn, $queryP);
				$totalP = $totalP + $precioT;	
			}	
			if (isset($_POST['totalESP'.$autobus_id])) {
				$precioT = $_POST['totalESP'.$autobus_id];
				$nombre =  $_POST['nombre'.$total];
				$apellido =  $_POST['apellido'.$total];
				$queryP ="INSERT INTO pasajero (pasajero_id, nombre, apellido, asiento, totalPagado) VALUES (NULL, '$nombre','$apellido ','$asientos[$i]','$precioT')";
				$consultaP = mysqli_query($conn, $queryP);
				$totalP = $totalP + $precioT;	
			}

		}

		$queryH = "SELECT hora FROM destino_autobus WHERE autobus_id = '$autobus_id' and destino_id ='$destino'";

		$horaC = mysqli_query($conn, $queryH);
		$data = mysqli_fetch_row($horaC); 

		$lahora= $data[0];

		$queryT = "INSERT INTO ticket (ticket_id, usuario_id, montoPagado, fecha) VALUES (NULL, $id, $totalP, '$lahora')";

		mysqli_query($conn, $queryT);

	 ?>
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
		      <h1 class="jumbotron-heading">Gracias por su compra</h1>
		      <a href="index.php" class="btn btn-primary"> volver al inicio</a>
		      </p>
		    </div>
	  	</section>
</body>
</html>