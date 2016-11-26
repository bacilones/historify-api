const express          = require('express');
const app              = express();
const SequelizeModels  = require('sequelize-models');
const dbConfig         = require('./config/database-dev.js');
const router           = express.Router();

var seqModels  = new SequelizeModels(dbConfig);

async function startup () {

    let schema = await seqModels.getSchema();
    let models = schema.models;
    let db = schema.db;

    app.get('/users', async (req, res) => {
        let users = await models.User.findAll();
        res.send(users);
    });


    app.listen(3000, () => {
        console.log('app started at http://127.0.0.1:3000');
    });
};


startup().catch(err => {
    console.log(err);
});

