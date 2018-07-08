module.exports =


   name: 'mongo.DB@drop'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()
      await db.drop()
      ```
   """


   signs: [{
      async: true
      name: '@drop()'
   }]