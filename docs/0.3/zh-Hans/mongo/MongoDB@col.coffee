module.exports =


   name: 'MongoDB@col'


   desc: """
      ```js
      db = new sai.MongoDB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()

      userCollection = db.col('users')
      ```
   """


   signs: [{
      name: '@col( name )'

      params: [{
         name: 'name'
         type: 'string'
         desc: '集合名'
      }]

      return:
         name: 'collection'
         type: 'sai.MongoDB.Collection'
         desc: '集合'
   }]