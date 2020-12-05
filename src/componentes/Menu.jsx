import React from 'react'
import { Link } from 'react-router'
import './Layout/Home.css'



const Menu = () => (
  // <!-- com bootstrap -->

  <nav className="nav bg-dark justify-content-end p-4">
    <Link to='/' className="nav-link text-light">Página inicial</Link>
    <Link to='/produtos' className="nav-link text-light">Produtos</Link>
    <Link to='/nossaslojas' className="nav-link text-light">Nossas lojas</Link>
    <Link to='/contatos' className="nav-link text-light">Contatos</Link>
  </nav>


)




export default Menu;    