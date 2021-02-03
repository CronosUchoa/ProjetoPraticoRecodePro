import React, {lazy,Suspense} from 'react'
import './Layout/Home.css'
// import Menu from './Menu'
const Menu = lazy(()=> import('./Menu'));
// import Footer from './Footer'
const Footer = lazy(()=> import('./Footer'));

const Paginicial = () => (
    <div className="">
        <Suspense fallback={<p>Carregando Menu...</p>}>
            <Menu></Menu>
        </Suspense>
        
        <main className="noMeio">
            <h1> Seja bem vindo(a)!</h1>
            <p>Aqui em nossa loja, <em>programadores</em>, tem desconto nos produtos para sua casa!</p>
        </main>
        <Suspense fallback={<p>Carregando footer...</p>}>
            <Footer/>
        </Suspense>
        
    </div>

)



export default Paginicial;