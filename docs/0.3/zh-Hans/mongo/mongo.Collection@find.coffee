module.exports =


   name: 'mongo.Collection@find'


   desc: """
      ```js
      users = await db.col('users').find()
      ```
   """


   signs: [{
      async: true
      name: '@find( query, options )'
      desc: '查找文档，依据 Query ( 批量 )'

      params: [
         require('./params/query')
         require('./params/queryOptions')([
            'sort'
            'desc'
            'skip'
            'page'
            'size'
            'pick'
            'omit'
            'hide'
            'rawOptions'
         ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#find')
      ]

      return:
         require('./return/docs')
   }]