import './index.css'
import React from 'react'
import ReactDOM from 'react-dom'
import App from './app.jsx'
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NossasLojas from './componentes/NossasLojas'
import Contatos from './componentes/Contatos'
import Produtos from './componentes/Produtos'
import Home from './componentes/Home'


ReactDOM.render(
    <Router history={hashHistory}>
        <Route path='/' component={App}>
            <IndexRoute component={Home} />
            <Route path='/nossaslojas' component={NossasLojas} />
            <Route path='/contatos' component={Contatos} />
            <Route path='/produtos' component={Produtos} />
        </Route>
    </Router>,
    document.getElementById('root')
)