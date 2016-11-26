module.exports = {
  tableName : 'historical_event',
  attributes : {
    name : {
      type : 'string'
    },
    event_date : {
      type : 'date'
    },
    lat : {
      type: 'string'
    },
    long : {
      type : 'string'
    },
    large_description : {
      type : 'string'
    },
    short_description : {
      type : 'string'
    }
  },
  associations : [{
    type : 'belongsTo',
    target : 'User',
    options : {
      foreignKey : 'user_id'
    }
  }, {
    type  : 'hasMany',
    target : 'Media',
    options : {
      foreignKey: 'historical_event_id'
    }
  } ,{
    type : 'hasMany',
    target : 'PointOfView',
    options : {
      foreignKey: 'historical_event_id'
    }
  }, {
    type : 'belongsToMany',
    target : 'Category',
    options : {
      foreignKey: 'historical_event_id',
      through : 'category_historical_event'
    }
  }]
};
