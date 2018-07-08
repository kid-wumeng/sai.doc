module.exports =


   name: 'mongo.DB@close'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()
      await db.close()
      ```
   """


   signs: [{
      async: true
      name: '@close()'
   }]