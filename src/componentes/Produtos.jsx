import React, { Component } from 'react'
import Menu from './Menu'
import Footer from './Footer'
import './Layout/Produtos.css'

export default class Produtos extends Component {

    constructor(){
        super();
        this.state=({
            db: []
        });
        this.exibirCarros();
    }

    
    exibirCarros(){
        fetch("http://localhost/main/MY/meus%20projetos/ReactJs/dog/src/componentes/Api/ConectProdutos.php")
        .then((response)=>response.json())
        .then((responseJson)=>
        {
            this.setState({
                db: responseJson
                
            });
            // console.log(this.state.db);
            
            // let nomes = ['maria', 'josé', 'joão'];

            // this.db.map(function(nome) {
            // console.log(nome);
            // });

        })
    }

    render() {
        const {db} = this.state
        console.log(db);
        
        return (
            <div>
                <Menu></Menu>
                <div className="containe">
                   {/* <section id="categorias">
                       
                        <ul>
                            <li  className="categ">Geral (12)</li>
                            <li  className="cateImp">Geladeiras (3)</li>
                            <li  className="catePar">Fogões (2)</li>
                            <li  className="cateImp">Microondas (3)</li>
                            <li  className="catePar">Lavadoura de roupa (2)</li>
                            <li  className="cateImp">Lava-louça (2)</li>
                            <p id="demo"></p>
                        </ul>
                    </section>
                    */}
                    <section id="produtos">
                    
                    {db?
                    
     <div>
       {db.map((item, index) =>
         <span key={index}>
              <div className="box-produto" id="{item.categoria}">
              {/* <img src="{item.imagem}" alt="imagem" /> */}
              <img src={require(`${item.imagem}`).default} alt="imagem" />
              
              <p className="descricao">{item.descricao}</p>
              <p className="descricao"><strike>R$ {item.precofinal}</strike></p>
              <p className="preco">R$ {item.preco}</p>
              
              </div>
         </span>
       )}
     </div>
    :null}
                         
                                          
                    </section>

                </div>
                <Footer></Footer>
            </div>

        );
    }
}

