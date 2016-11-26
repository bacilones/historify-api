process.env['AZURE_STORAGE_ACCOUNT']    = 'historify';
process.env['AZURE_STORAGE_ACCESS_KEY'] = 'UWjx/b9ZfWV2VCrpmGZLttAfftqCr9c9GOZKlW9pZBp9mNuEfi1HawlzOLh71+q+qRVNXIasEECEYrYKXtBU4A==';

const azure = require('azure');
const fs    = require('fs');

module.exports = function(opts = {}) {
    const blobService = azure.createBlobService();
    return new Promise (resolve => {
        blobService.createBlockBlobFromStream(
            opts.container,
            opts.fileName,
            fs.createReadStream(opts.file),
            opts.size, function (err, result) {
                if (err) {
                    throw err;
                }
                resolve(result);
            });
    });
};