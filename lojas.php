<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="./css/estilo.css">
        <script defer src="javascript/script.js"></script>
        <title>Nossas lojas - Full stack Eletron</title>
    </head>
    <body>

	<!--Menu-->
    <?php
   include_once('menu.html'); 
   ?>
    <!--fim do menu-->
    <header>
        <h2>Nossas Lojas</h2>
    </header>
    
        <hr>
    <main>
        <table  border=0 class="TabPLoja">
            <tr>
                <td  onmousemove="aumentar(this)" onmouseout="normal(this)" >
                    <h3>Rio de Janeiro</h3>
                    <p>Avenida Presidente Bargas, 5000</p>
                    <p>10 &ordm; andar</p>
                    <p>Centro</p>
                    <p>(21) 0000-0000</p>
                </td>
                <td  onmousemove="aumentar(this)" onmouseout="normal(this)">
                    <h3>São Paulo</h3>
                    <p>Avenida Paulista</p>
                    <p>10 &ordm; andar</p>
                    <p>Jardins</p>
                    <p>(11) 1111-1111</p>
                </td>
                <td onmousemove="aumentar(this)" onmouseout="normal(this)">
                    <h3>Santa Catarina</h3>
                    <p>Rua Major &Aacute; vila, 370</p>
                    <p>Vila mariana</p>
                    <p>(47) 2222-2222</p>
                </td>
            </tr>
        </table>
    </main>
        

        <br><br><br><br><br> <br><br><br><br><br>
        <br><br>

        <!--Inicio - rodapé-->
        <footer id="rodape">
            <img src="./imagens/forma de pagamento daten - logos-cartoes_.jpg" alt="imagem de formas de pagamento">
            &copy;Cronos Uchoa
        </footer>
      <!--fim - rodapé-->
    </body>
</html>