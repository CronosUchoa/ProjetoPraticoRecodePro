<?php

$Hostname = "localhost";
$Username = "Cronos";
$Password = "Sama456123*";
$Database = "fseletro"; 

$conn = mysqli_connect($Hostname, $Username, $Password, $Database);

if(!$conn){
	die("A conexão ao BD falhou " . mysqli_connect_error());
}

?>