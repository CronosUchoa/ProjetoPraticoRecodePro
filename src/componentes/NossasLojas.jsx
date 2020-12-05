import React from 'react'
import Menu from './Menu'
import Footer from './Footer'
import './Layout/NossasLojas.css'

const Nlojas = () => {

    return (
        <div>
            <Menu></Menu>
            <div className="container">
                <header>
                    <h2>Nossas Lojas</h2>
                </header>

                <main>
                    <table className="TabPLoja">
                        <tr>
                            <td className="bg-primary">
                                <h3>Rio de Janeiro</h3>
                                <p>Avenida Presidente Bargas, 5000</p>
                                <p>10 &ordm; andar</p>
                                <p>Centro</p>
                                <p>(21) 0000-0000</p>
                            </td>
                            <td className="text-light bg-dark">
                                <h3>São Paulo</h3>
                                <p>Avenida Paulista</p>
                                <p>10 &ordm; andar</p>
                                <p>Jardins</p>
                                <p>(11) 1111-1111</p>
                            </td>
                            <td className="bg-primary">
                                <h3>Santa Catarina</h3>
                                <p>Rua Major &Aacute; vila, 370</p>
                                <p>Vila mariana</p>
                                <p>(47) 2222-2222</p>
                            </td>
                        </tr>
                    </table>
                </main>
            </div>

            <Footer></Footer>
        </div>

    )

}
export default Nlojas;