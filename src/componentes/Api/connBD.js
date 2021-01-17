const mysql = require('mysql');
module.exports = function(){
    return mysql.createConnection({
            host:'localhost',
            user:'gabu',
            password:'123456',
            database:'fseletro'
        }
    )
};