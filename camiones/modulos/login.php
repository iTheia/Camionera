<?php  

	$usuario = $_POST['user'];
	$password = $_POST['password'];

	require ("conexion.php");

	echo $usuario;

	echo $password;
	$conn = conectar();

	$query = "SELECT usuario_id FROM usuario WHERE user = '$usuario' and password = '$password'";
	$consulta = mysqli_query($conn, $query);

	$data = mysqli_fetch_row($consulta); 
		if($data[0] > 0){
			session_start();
			$_SESSION['dev'] = $data;
			header("Location: ../php/index.php");
		}else{
			header("Location: ../php/index.php");
		}	
	
	