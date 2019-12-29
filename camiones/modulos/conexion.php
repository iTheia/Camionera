<?php
	function conectar(){
		$servername = "localhost";
		$database = "camionera";
		$username = "root";
		$password = "";

		$conn = mysqli_connect($servername, $username, $password, $database);

		return $conn;
	}
	
?>
		
	