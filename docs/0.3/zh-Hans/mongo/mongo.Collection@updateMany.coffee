module.exports =


   name: 'mongo.Collection@updateMany'


   desc: """
      ```js
      await db.col('users').updateMany({}, {
         name: 'kid',
         $inc: {
            age: 1
         }
      })
      ```
   """


   signs: [{
      async: true
      name: '@updateMany( query, modifier )'
      desc: '更新多条文档 ( 批量 )'

      params: [
         require('./params/query')
         require('./params/modifier')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '更新成功的条数'
   }]