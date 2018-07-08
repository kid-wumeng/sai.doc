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
         require('./_queryOptions')
      ]

      return:
         require('./_docs')
   }]