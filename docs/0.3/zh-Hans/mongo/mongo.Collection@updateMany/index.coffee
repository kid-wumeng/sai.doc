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
      desc: '更新文档，依据 Query ( 批量 )'

      params: [
         require('../_params/query')
         require('../_params/modifier')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '更新成功的条数'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]