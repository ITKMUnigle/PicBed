
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: '192.168.102.110',
    user: 'mod',
    password: '123456',
    port: '3306',
    database: 'Mods'
});

connection.connect();

var sql = 'SELECT * FROM Modinfo';
//查
connection.query(sql, function (err, result) {
    if (err) {
        console.log('[SELECT ERROR] - ', err.message);
        return;
    }

    console.log('--------------------------SELECT----------------------------');
    console.log(result);
    console.log('------------------------------------------------------------\n\n');
});

connection.end();