<?php

//Conexão com o banco de dados
// PDO 
// $pdo = new PDO( "mysql:" . "host=localhost;" . "dbname=database",
//     'username', 'password');
 
// // mysqli, procedural way 
// $mysqli = mysqli_connect( 'localhost', 'username', 'password', 'database');
 
// // mysqli, object oriented way 
// $mysqli = new mysqli( 'localhost', 'username', 'password', 'database');


$hostName = "LocalHost";
$username = "EuSouOAdm";
$password = "essaSenhaEhMuitoForte";
$database = "fseletro";

//criando a conexão 
$conn = mysqli_connect($hostName, $username, $password, $database);

if(!$conn){
	die("A conexão ao BD falhou " . mysqli_connect_error());
}
// else{
// 	echo "conectado ao banco de dados - Mysql !" . "<br>";
// }

?>