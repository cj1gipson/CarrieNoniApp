const http = require('http');
const hostname = '127.0.0.1';
const port = 3000;
const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello World\n');
});
server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});

var mysql = require('mysql');

////////////////////////////////////////////////////////////////////////////////
//THIS IS THE DATABASE CONNECTION!!!! YOUR MYSQL INFOMATION GOES HERE //////////////
////////////////////////////////////////////////////////////////////////////////

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "X35!SiCk"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected! to MySql");
  console.log("Running Query......");

    //////////////////////////////////////////////////////////
    //Query specific to my table. Change tto fit your table
    //////////////////////////////////////////////////////////
    
    var usesql = "USE DeTest";
    var sql = "Select * From Testusers";
    
    con.query(usesql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed Using db:");
      });
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed :");
      });
});
