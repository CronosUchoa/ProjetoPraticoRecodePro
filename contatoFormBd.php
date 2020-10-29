<?php
//inclui um arquvio dentro de outro
include_once('conexaoBd.php');

// A função require() faz exatamente o mesmo que a função include(). A diferença é que a função include(), caso o arquivo não seja encontrado, o programa segue seu fluxo de funcionamento. Porém, a função require(), como o nome diz, é requerida ou necessária, então, na ausência do arquivo ou erro de leitura, o programa é interrompido com erro.


// existem as funções include_once() e require_once(), que, como o nome diz (once significa "uma vez")

/*********************************************************/

// inserir dados no BD
//verificar se tem dado sendo recibido pelo método Post
//nome e mensagem existe ?
if(isset($_POST['nome']) && isset($_POST['mensagem'])){

	$nome = $_POST['nome'];
	$mensagem = $_POST['mensagem'];

}

// inserir dados no BD
$sql = "insert into Contatos (nome, mensagem) values ('$nome','$mensagem')";

$result = $conn->query($sql);

if($result){
	echo "Inserido com sucesso!" . "<hr>";
	header("Refresh:3;contatos.php");
}
else {
	echo "Houve um erro ao salva...";
}



//mostra a tabela

// $sql = "select * from produtos";

// $result = $conn->query($sql);

// print_r($result);

// while($row = $result->fetch_assoc()){
// 	print_r($row);
// 	echo "<hr>";
// }




?>