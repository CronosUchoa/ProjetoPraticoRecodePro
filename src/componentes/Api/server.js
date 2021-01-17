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

app.get('/', function(req, res){

    // res.send("olá");
    // conn.query('select * from produtos', function(err,result){
    //     if(!err){
    //         console.log('resultado: ', result);
    //     }else{
    //         console.log("erroR ::: ", err);
    //     }
    // })  
   

   conn.query('select * from produtos', function(err,result){
        if(!err){
            res.send(result);
        }
    })

 });

 //verificando a conexão com banco de dados
 conn.connect(function(err) {
    if (err){
      console.error('error de conexao: ;/ ' + err.stack);
      return;
    }
    console.log('conectado com sucesso ;D !! ' + conn.threadId);
  });


  //salvar 
  app.post('/salvar', (req, res) => {


     conn.query('INSERT INTO mensagem SET ?', {nome: req.body.nome, mensagem:req.body.mensagem}, function (error, results, fields) {
      if (error) throw error;
      console.log(results.insertId);
    });
    
    res.redirect('http://localhost:3000/#/contatos');
    

   
  })

    
  
  
  

 console.log("servidor ta funcionando!");
 app.listen(8080);