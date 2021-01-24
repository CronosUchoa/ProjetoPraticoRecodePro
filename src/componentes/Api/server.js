const express = require("express");
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();


const db = require("./connBD");
var conn = db();

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }))
 
// parse application/json
app.use(bodyParser.json())

app.use(cors());

//-- rotas usando commonjs 
//mostrar produtos
var rotaCommonjs = require('./rotasCommonjs/home')(app,conn);
 //salvar 
var rotaCommonjs = require('./rotasCommonjs/salva')(app,conn);

 //verificando a conexão com banco de dados
 conn.connect(function(err) {
    if (err){
      console.error('error de conexao: ;/ ' + err.stack);
      return;
    }
    console.log('conectado com sucesso ;D !! ' + conn.threadId);
  });


 console.log("servidor ta funcionando!");
 app.listen(8080);