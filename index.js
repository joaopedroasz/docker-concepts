const express = require('express');

const PORT = 8000;
const HOST = '0.0.0.0';

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World tesste');
});

app.listen(PORT, HOST);