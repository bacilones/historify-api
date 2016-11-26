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




    app.get('/user/:id', async (req, res) => {
        let user = await models.User.findById(req.params.id);
        res.send(user);
    });

    app.get('/mediatype', async (req, res) => {
        let types  = await models.MediaType.findAll();
        res.send(types);
    });

    app.get('/tag', async (req, res) => {
        let tags = await models.Tag.findAll();
        res.send(tags);
    });

    app.get('/category', async (req, res) => {
        let categories = await models.Category.findAll();
        res.send(categories);
    });

    app.get('/historicalevent', async (req, res) => {
        let events = await models.HistoricalEvent.findAll();
        res.send(events);
    });

    app.get('/historicalevent/:id', async (req, res) => {
        let event = await models.HistoricalEvent.findById(req.params.id, {include : models.PointOfView});
        res.send(event);
    });

    app.listen(3000, () => {
        console.log('app started at http://127.0.0.1:3000');
    });
};


startup().catch(err => {
    console.log(err);
});

