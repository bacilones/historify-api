const express = require('express');
const app = express();

app.get('/', async (req, res) => {
    res.send('hello');
});

app.listen(3000, () => {
    console.log('app started!');
});
