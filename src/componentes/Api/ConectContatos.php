<?php
include_once('ConectBD.php');

if(isset($_POST['nome']) && isset($_POST['mensagem'])){

$nome = $_POST['nome'];
$mensagem = $_POST['mensagem'];

}

// inserir dados no BD
$sql = "insert into mensagem (nome, mensagem) values ('$nome','$mensagem')";

$result = $conn->query($sql);

if($result){
// echo "Inserido com sucesso!" . "<hr>";

// header("Refresh:3;http://localhost:3000/#/contatos");
header("Location:http://localhost:3000/#/contatos" );

}

else {
echo "Houve um erro ao salva...";
}

//conceito de INNER JOIN
function PesquisarEmDuasTabela ()
{  
    require('ConectBD.php');
   $sqll = "select nomeCliente from pedidos INNER JOIN produtos on pedidos.nomeCliente = pedidos.categoria";
   
   $resul = $conn->query($sqll);
   return $resul;
   
}

?>