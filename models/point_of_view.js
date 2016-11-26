module.exports = {
  tableName : 'point_of_view',
  attributes : {
    content : {
      type : 'string'
    },
    title : {
      type : 'string'
    },
    lat : {
      type: 'string'
    },
    long : {
      type : 'string'
    }
  },

  associations : [{
    type    : 'belongsToMany',
    target  : 'Tag',
    options : {
      foreignKey : 'pov_id',
      through    : 'tag_pov'
    }
  }, {
    type  : 'hasMany',
    target : 'Media',
    options : {
      foreignKey: 'pov_id'
    }
  }, {
    type : 'belongsTo',
    target : 'User',
    options : {
      foreignKey: 'user_id'
    }
  }, {
    type : 'belongsTo',
    target : 'HistoricalEvent',
    options : {
      foreignKey : 'historical_event_id'
    }
  }]


};
