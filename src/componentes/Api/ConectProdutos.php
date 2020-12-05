<?php
include_once('ConectBD.php');


// $tabela = $_GET['table'];

$sql = "select * from produtos";
$result = $conn->query($sql);

header("Access-Control-Allow-Origin:*");
header("Content-type: application/json");
echo (json_encode($result->fetch_all(MYSQLI_ASSOC)));

?>
