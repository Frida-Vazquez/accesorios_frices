const express = require('express');
const mysql = require('mysql');
const myconnection = require('express-myconnection');

const app = express();

app.use (myconnection(mysql, {
  host: 'localhost',
  user: 'frices',
  password: 'frida',
  port: 3307,
  database: 'accesorios_frices'
}, 'single'));  

app.get('/', (_req, res) => {
  res.send('Hello World!');
});

app.listen(8085, () => {
  console.log('Server is running on port 8085');
});