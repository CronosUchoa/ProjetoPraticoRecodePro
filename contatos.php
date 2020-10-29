<?php include_once('conexaoBd.php');?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="./css/estilo.css">
		<script defer src="javascript/script.js"></script>
        <title>Contatos - Full stack Eletron</title>
    </head>
    <body>
	<!--Menu-->
	<?php
	include_once('menu.html');
	?>
	  <!--fim do menu-->
		<header>
			<h2>Contatos</h2>
		</header>
		<hr>
	
		<section id="contatos">
					<div class="contato">
						<img src="./imagens/gmail.png" alt="email">
						<p>contato@fullstack.com</p>
					</div>
						
					
					<div class="contato">
						<img src="./imagens/zap.jpeg" alt="cel">
						<p>(21) 90000-1111</p>
					</div>				
		</section>

		<section id="formulario">
			<form name="contato" action="contatoFormBd.php" method="post">
				<h4>Nome:</h4>
				<input type="text" name="nome">
				<h4>Mensagem:</h4>
				<textarea  name="mensagem" id="" cols="30" rows="10"></textarea><br>
				<input id="botao" type="submit" value="Enviar">
	
			</form>
		</section>

		<br><br><br><hr>

		<?php

            $sql = "select * from Contatos";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){
					echo $rows[data] . "<br>";
					echo $rows[nome] . "<br>";
					echo $rows[mensagem] . "<br>" . "<hr>" . "<hr>";
					// print_r($rows);
					
				}
			}
            
		?>
		

	<!--Inicio - rodapé-->
		<footer id="rodape">
			<img src="./imagens/forma de pagamento daten - logos-cartoes_.jpg" alt="imagem de formas de pagamento">
			&copy;Cronos Uchoa
		</footer>
	<!--fim - rodapé-->
			    
    </body>
</html>