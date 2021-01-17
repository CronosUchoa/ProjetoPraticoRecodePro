import React, { Component } from 'react'
import Menu from './Menu'
import Footer from './Footer'
import './Layout/Contatos.css'
import './Layout/Home.css'



// let localdaApiPHP = "http://localhost/main/MY/meus%20projetos/ReactJs/dog/src/componentes/Api/ConectContatos.php";


export default class Contador extends Component {
   
    
    render()
    {
        return(
            <div>
            <Menu></Menu>
            <div className="containe">
                

                <form id="formM" name="contato" action="http://localhost:8080/salvar" method="post">
                
                    <div className="form-group">
                        <label for="nomeUsuario">Seu nome:</label>
                        <input type="text" class="form-control" id="nomeUsuario" name="nome" placeholder="Nome" />
                    </div>

                    <div class="form-group">
                        <label for="MensagemUsuario">Mensagem:</label>
                        <textarea class="form-control" id="MensagemUsuario" name="mensagem" placeholder="Fale Conosco" rows="5"></textarea>
                    </div>

                    <button type="submit" id="mensagem-sucesso" className="btn btn-primary">Enviar</button>
                </form>
            </div>
            <Footer></Footer>
        </div>
        )
        
    }

}










