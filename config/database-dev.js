const chalk = require('chalk');

module.exports = {
  // Database connection options
  connection : {
    host     : '159.203.79.179',
    dialect  : 'postgres',
    username : 'postgres',
    schema   : 'historify_test',
    password : 'J32X5gKc73A851D',
    port     : 5432
  },

  // Models loading options
  models : {
    autoLoad : true,
    path     : '/models'
  },

  // Sequelize options passed directly to Sequelize constructor
  sequelizeOptions : {
    define : {
      freezeTableName : true,
      underscored     : true
    },
    omitNull : true,
    logging  : function(query) {
      var log    = chalk.cyan(query.replace('Executing (default): ', ''));
      var prefix = chalk.white.bold('Query => ');
      console.log(prefix, log);
    }
  }
};