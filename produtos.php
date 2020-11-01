<?php
   include_once('conexaoBd.php');
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/estilo.css">
    <script defer src="javascript/script.js"></script>
    <title>Produtos - Full stack Eletron</title>
</head>
<body>
     <!--Menu-->
     <?php
   include_once('menu.html');
   ?>
    <!--fim do menu-->
<div class="container">
    <header><h1>Produtos</h1></header>
    <hr>
    <section id="categorias">
        <h3>Categorias</h3>
        <ul>
            <li onclick="ExibirCategoria('geral')" class="categ">Geral (12)</li>
            <li onclick="ExibirCategoria('geladeira')" class="cateImp">Geladeiras (3)</li>
            <li onclick="ExibirCategoria('fogao')" class="catePar">Fogões (2)</li>
            <li onclick="ExibirCategoria('microondas')" class="cateImp">Microondas (3)</li>
            <li onclick="ExibirCategoria('lavaroupa')" class="catePar">Lavadoura de roupa (2)</li>
            <li onclick="ExibirCategoria('lavalouca')" class="cateImp">Lava-louça (2)</li>
            <p id="demo"></p>
        </ul>
    </section>
        <!-- onmousemove="ColoqueiMouse(Event)" -->
    <section id="produtos">
        <?php
            $sql = "select * from produtos";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){ 
            
        ?>


        <div class="box-produto" id="<?php echo $rows['categoria'];?>" onmousemove="ColoqueiMouse(this)" onmouseout="TireiMouse(this)" >
            <img src="<?php echo $rows["imagem"];?>" alt="Microondas number 01" >
            <br>
            <p class="descricao"><?php echo $rows["descricao"];?></p>
            <hr>
            <p class="descricao"><strike>R$ <?php echo $rows["preco"];?></strike></p>
            <p class="preco">R$ <?php echo $rows["precofinal"];?></p>
        </div>

        <?php
                }
            }else{
                echo "Nenhuma produto cadastrado!";
            }

        ?> 
    </section>
</div>

    <!-- <br><br><br><br><br><br> -->

     <!--Inicio - rodapé-->
     <footer id="rodape">
        <img src="./imagens/forma de pagamento daten - logos-cartoes_.jpg" alt="imagem de formas de pagamento">
        &copy;Cronos Uchoa
      </footer>
      <!--fim - rodapé-->
</body>
</html>