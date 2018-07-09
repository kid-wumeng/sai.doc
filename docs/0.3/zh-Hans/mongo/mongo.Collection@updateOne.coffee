module.exports =


   name: 'mongo.Collection@updateOne'


   desc: """
      ```js
      await db.col('users').updateOne(id, {
         name: 'kid',
         $inc: {
            age: 1
         }
      })
      ```
   """


   signs: [{
      async: true
      name: '@updateOne( id, modifier )'
      desc: '更新文档，依据 ID'

      params: [
         require('./params/id')
         require('./params/modifier')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '更新成功的条数'

   }, {

      async: true
      name: '@updateOne( query, modifier )'
      desc: '更新文档，依据 Query'

      params: [
         require('./params/query')
         require('./params/modifier')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '更新成功的条数'
   }]