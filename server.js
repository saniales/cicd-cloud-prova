const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});

console.log("Partima...");
app.listen(3000);