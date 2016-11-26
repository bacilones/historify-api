const express = require('express');
const app = express();

console.log('hello');

app.get('/', async (req, res) => {
    res.send({
        message : 'Hello from historify APO'
    });
});

app.listen(3000, () => {
    console.log('app started!');
});