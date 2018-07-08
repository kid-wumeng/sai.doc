module.exports =


   name: 'MongoDB@close'


   desc: """
      ```js
      db = new sai.MongoDB({
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