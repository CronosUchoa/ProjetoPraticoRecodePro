import React from 'react'
import './Layout/Home.css'
import ImgFoot from './imagens/forma de pagamento daten - logos-cartoes_.jpg'

const Footer = () => (
    <div className="">
        <footer className="rodape">
            <img src={ImgFoot   } alt="imagem de formas de pagamento"/>
                <div className="footCronos">
                &copy;Cronos Uchoa<iframe src="https://giphy.com/embed/l0NwxZvb1b54Xq7w4" width="20px" height="20px" frameBorder="0" allowFullScreen></iframe>
                </div>
		</footer>
    </div>
  
)
    


export default Footer;