module.exports =

   path: 'mongo'
   name: 'MongoDB'
   desc: ''

   items: [
      'DB'
      require('./mongo.DB')
      require('./mongo.DB@uri')
      require('./mongo.DB@connect')
      require('./mongo.DB@close')
      require('./mongo.DB@drop')
      require('./mongo.DB@col')

      'Collection'
      require('./mongo.Collection@findOne')
      require('./mongo.Collection@find')
      require('./mongo.Collection@count')
      require('./mongo.Collection@insertOne')
      require('./mongo.Collection@insertMany')
      require('./mongo.Collection@updateOne')
      require('./mongo.Collection@updateMany')
      require('./mongo.Collection@deleteOne')
      require('./mongo.Collection@deleteMany')
      require('./mongo.Collection@aggregate')
   ]