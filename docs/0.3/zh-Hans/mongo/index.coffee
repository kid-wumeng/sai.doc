module.exports =

   path: 'mongo'
   name: 'MongoDB'
   desc: ''

   items: [
      require('./mongo.DB')
      require('./mongo.DB@uri')
      require('./mongo.DB@connect')
      require('./mongo.DB@close')
      require('./mongo.DB@drop')
      require('./mongo.DB@col')

      'Collection'
      require('./mongo.Collection')
      require('./mongo.Collection@insertOne')
   ]