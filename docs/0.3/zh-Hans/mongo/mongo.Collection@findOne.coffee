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
      desc: '查询文档'

      params: [
         require('./_id')
         require('./_queryOptions')([
            'pick'
            'omit'
            'hide'
            'rawOptions'
         ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#findOne')
      ]

      return:
         require('./_doc')

   },{

      async: true
      name: '@findOne( query, options )'
      desc: '查询文档'

      params: [
         require('./_query')
         require('./_queryOptions')([
            'pick'
            'omit'
            'hide'
            'rawOptions'
         ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#findOne')
      ]

      return:
         require('./_doc')
   }]