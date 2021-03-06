module.exports =


   name: 'mongo.Collection@count'


   desc: """
      ```js
      count = await db.col('users').count({ name: 'kid' })
      ```
   """


   signs: [{
      async: true
      name: '@count( query )'
      desc: '统计文档条数'

      params: [
         require('../_params/query')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]