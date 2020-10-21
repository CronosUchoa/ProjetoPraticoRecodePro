function ExibirCategoria(categoria){
    let elemento = document.getElementsByClassName("box-produto");
    console.log(categoria);
    console.log(elemento);
    if(categoria == "geral"){
        for(let i = 0; i < elemento.length; i++){ 
                elemento[i].style = "display:block";
        }
    }
    else {
        for(let i = 0; i < elemento.length; i++){
        
            if(categoria == elemento[i].id){
                elemento[i].style = "display:block";
            }
            else{
                elemento[i].style = "display:none";
            }
    
        }
    }  

};



function ColoqueiMouse(produto) {
   
    produto.style= "background-color:rgba(000, 000, 88, 0.8)";

  }
  

function TireiMouse  (produto)  {   
            
    produto.style= "background-color:white";
    
}

function aumentar(local){
    local.style = "width:44%; color:rgba(000, 000, 88, 0.8); font-size:20px;";
}

function normal(local){
    local.style = "width:33%; color:black; font-size:15px";
    local
}