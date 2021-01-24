
module.exports = function (app,conn){
    app.post('/salvar', (req, res) => {


        conn.query('INSERT INTO mensagem SET ?', {nome: req.body.nome, mensagem:req.body.mensagem}, function (error, results, fields) {
         if (error) throw error;
         console.log(results.insertId);
       });
       
       res.redirect('http://localhost:3000/#/contatos');
       
    
      
     })
    

}

