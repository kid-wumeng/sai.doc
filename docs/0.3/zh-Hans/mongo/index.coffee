module.exports =

   path: 'mongo'
   name: 'MongoDB'
   desc: ''

   items: [
      require('./MongoDB')
      require('./MongoDB@uri')
      require('./MongoDB@connect')
      require('./MongoDB@close')
      require('./MongoDB@drop')
      require('./MongoDB@col')

      'Collection'
      require('./MongoDB.Collection@insertOne')
   ]