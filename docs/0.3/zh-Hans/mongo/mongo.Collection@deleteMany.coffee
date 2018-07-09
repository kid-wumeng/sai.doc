module.exports =


   name: 'mongo.Collection@deleteMany'


   desc: """
      ```js
      await db.col('users').deleteMany({})
      ```
   """


   signs: [{
      async: true
      name: '@deleteMany( query )'
      desc: '删除文档，依据 Query ( 批量 )'

      params: [
         require('./params/query')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '删除成功的条数'
   }]