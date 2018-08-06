module.exports =


   name: 'mongo.DB@connect'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()
      ```
   """


   signs: [{
      async: true
      name: '@connect()'
      desc: '连接'

      errors: [
         require('../../errors').MONGO_DB_CONNECT_FAIL
      ]
   }]