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
      desc: '查询文档数量'

      params: [
         require('./_query')
      ]

      return:
         name: 'count'
         type: 'number'
   }]