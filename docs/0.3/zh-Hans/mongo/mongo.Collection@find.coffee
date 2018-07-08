module.exports =


   name: 'mongo.Collection@find'


   desc: """
      ```js
      users = await db.col('users').find()
      ```
   """


   signs: [{
      async: true
      name: '@find( [query], [options] )'
      desc: '查找文档 ( 批量 )'

      params: [
         require('./_query')
         require('./_queryOptions')([
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
         require('./_docs')
   }]