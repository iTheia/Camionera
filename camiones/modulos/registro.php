<?php
	$usuario = $_POST["user"];
	$password = $_POST["password"];
	$nombre = $_POST["nombre"];
	$apellido = $_POST["apellido"];
	$saldo = 1000;

	require ("conexion.php");

	$conn = conectar();
	$validacion = mysqli_query($conn,"select user from usuario where user like '". $usuario ."'");
	$user = mysqli_fetch_row($validacion);

	if($user[0] == $usuario){
		?>
			<script type="text/javascript">
				alert("El usuario ya esta registrado");
			</script>
			
		<?php
			header("Location: ../php/index.php");
	}else{
		$registro = mysqli_query($conn,"INSERT INTO usuario (usuario_id,user,password,nombre,apellido,saldo) VALUES (NULL,'$usuario','$password','$nombre','$apellido','$saldo')");
		if($registro){
			?>
			<script type="text/javascript">
				alert("Se ha registro usuario");
			</script>
			<?php
			header("Location: ../php/index.php");
		}else{
			?>
			<script type="text/javascript">
				alert("No se ha registro usuario, error!");
			</script>
			<?php
			header("Location: ../php/index.php");
		}
	}
	