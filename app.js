const express          = require('express');
const app              = express();
const SequelizeModels  = require('sequelize-models');
const dbConfig         = require('./config/database-dev.js');
const router           = express.Router();
const azureUpload           = require('./lib/azure-upload');

const bodyParser       = require('body-parser');
const logger           = require('morgan');
const cors             = require('cors');
const multer           = require('multer');
const uploader         = multer({ dest: 'uploads/'});

var seqModels  = new SequelizeModels(dbConfig);

app.use(logger('dev'));
app.use(cors());

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

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


    app.post('/historicalevent', async (req, res) => {
        // @TODO - add authentication
        // @TODO - user token.id must be = to user_id
        console.log(req.body);
        let event = await models.HistoricalEvent.create(req.body);
        res.send(event);
    });


    app.post('/historicalevent/:id/pov', async (req, res) => {
        // @TODO - add authentication
        // @TODO - user token.id must be = to user_id
        console.log('he id -->', req.params.id);
        console.log('pov data -->', req.body);

        let eventId = req.params.id;
        let pov = req.body;
        pov.historical_event_id = eventId;

        console.log('pov final -->', pov);
        let createdPov = await models.PointOfView.create(pov);
        res.send(createdPov);
    });


    app.post('/pointofview/:id/media', uploader.single('media'), async(req, res) => {
        let uploaded = await azureUpload({
            fileName  : req.body.fileName,
            container : 'images',
            file      : req.file.path,
            size      : req.file.size
        });

        let media = await models.Media.create({
            point_of_view_id : req.body.pointOfViewId,
            media_url : `https://historify.blob.core.windows.net/images/${req.body.fileName}`,
            media_type_id : 1
        });

        res.send(media);
    });


    app.post('/historicalevent/:id/media', uploader.single('media'), async (req, res) => {
        console.log('file --> ', req.file);
        console.log('body --> ', req.body);

        let uploaded = await azureUpload({
            fileName  : req.body.fileName,
            container : 'images',
            file      : req.file.path,
            size      : req.file.size
        });

        let media = await models.Media.create({
            historical_event_id : req.body.historicalEventId,
            media_url : `https://historify.blob.core.windows.net/images/${req.body.fileName}`,
            media_type_id : 1
        });


        res.send(media);
    });

    app.listen(3000, () => {
        console.log('app started at http://127.0.0.1:3000');
    });
};


startup().catch(err => {
    console.log(err);
});

