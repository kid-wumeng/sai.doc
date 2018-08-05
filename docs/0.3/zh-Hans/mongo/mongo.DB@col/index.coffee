module.exports =


   name: 'mongo.DB@col'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()

      userCollection = db.col('users')
      ```
   """


   signs: [{
      name: '@col( name )'
      desc: '返回 name 对应的 Collection 对象'

      params: [{
         name: 'name'
         type: 'string'
         desc: '集合名'
      }]

      return:
         name: 'collection'
         type: 'sai.mongo.Collection'
         desc: '集合'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]