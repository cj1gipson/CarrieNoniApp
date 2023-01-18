const http = require('http');
const hostname = '127.0.0.1';
const port = 3000;
const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello World\n');
});

var mysql = require('mysql2');

//////////////////////////////////////////////////////////////////////////////
//THIS IS THE DATABASE CONNECTION!!!! YOUR MYSQL INFOMATION GOES HERE ///
////////////////////////////////////////////////////////////////////////////////

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "MoneyTeam",
  database: "test2"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected! to MySql");
  console.log("Running Query......");

    //////////////////////////////////////////////////////////
    //Query specific to my table. Change to fit your table
    //////////////////////////////////////////////////////////
    
    var sql = "Select * From users";
  
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed : "+ JSON.stringify(result));

      });
});

function AddUser(){
    
    var sql = "Select * From users";
  
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed : "+ JSON.stringify(result));

      });
}



server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});