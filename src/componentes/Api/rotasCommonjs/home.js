
module.exports = function (app,conn) {
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
      
      })
}

