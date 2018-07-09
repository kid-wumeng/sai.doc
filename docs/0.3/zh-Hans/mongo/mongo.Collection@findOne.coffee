module.exports =


   name: 'mongo.Collection@findOne'


   desc: """
      ```js
      user = await db.col('users').findOne(1)
      ```
   """


   signs: [{
      async: true
      name: '@findOne( id, options )'
      desc: '查找文档，依据 ID'

      params: [
         require('./params/id')
         require('./params/queryOptions')([
            'pick'
            'omit'
            'hide'
            'rawOptions'
         ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#findOne')
      ]

      return:
         require('./return/doc')

   },{

      async: true
      name: '@findOne( query, options )'
      desc: '查找文档，依据 Query'

      params: [
         require('./params/query')
         require('./params/queryOptions')([
            'pick'
            'omit'
            'hide'
            'rawOptions'
         ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#findOne')
      ]

      return:
         require('./return/doc')
   }]