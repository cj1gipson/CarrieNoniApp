const http = require('http');
const hostname = "127.0.0.1";
const port = 3000;
//http server
//const server = http.createServer((req, res) => {
//    res.statusCode = 200;
//    res.setHeader('Content-Type', 'text/plain');
//    res.end('Carrie says hello\n');
//});

//express server
//var displaying on the site page when you start server and go there.
const express = require('express');
const app = express();
var CDMessage = "Gonna get it!!";
app.get('/', (req,res)=>{
    //200 code means it is ok
    //res.sendStatus(200);
    res.send(CDMessage);
})

app.listen(4000, ()=>{
    console.log("express server running")
    console.log(`Server running at http://${hostname}:4000/`);
})

var mysql = require('mysql2');

//////////////////////////////////////////////////////////////////////////////
//THIS IS THE DATABASE CONNECTION!!!! YOUR MYSQL INFOMATION GOES HERE ///
////////////////////////////////////////////////////////////////////////////////

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Password7Des",
  database: "NewDb"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected! to MySql");
  console.log("Running Query......");

    //////////////////////////////////////////////////////////
    //Query specific to my table. Change to fit your table
    //////////////////////////////////////////////////////////
    
    var sql = "Select * From NewTable";
  
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed : "+ JSON.stringify(result));

      });
});


function AddUser(String){
    
    var sql = "Select * From NewTable";
  
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Query Completed : "+ JSON.stringify(result));

      });
}



//server.listen(port, hostname, () => {
  //  console.log(`Server running at http://${hostname}:${port}/`);
//});
