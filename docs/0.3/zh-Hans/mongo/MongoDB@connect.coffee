module.exports =


   name: 'MongoDB@connect'


   desc: """
      ```js
      db = new sai.MongoDB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()
      ```
   """


   signs: [{
      async: true
      name: '@connect()'
   }]