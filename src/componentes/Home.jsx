import React from 'react'
import './Layout/Home.css'
import Menu from './Menu'
import Footer from './Footer'

const Paginicial = () => (
    <div className="">
        <Menu></Menu>
        <main className="noMeio">
            <h1> Seja bem vindo(a)!</h1>
            <p>Aqui em nossa loja, <em>programadores</em>, tem desconto nos produtos para sua casa!</p>
        </main>
        <Footer></Footer>
    </div>

)



export default Paginicial;