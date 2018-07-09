module.exports =


   name: 'mongo.Collection@deleteOne'


   desc: """
      ```js
      await db.col('users').deleteOne(id)
      ```
   """


   signs: [{
      async: true
      name: '@deleteOne( id )'
      desc: '删除文档，依据 ID'

      params: [
         require('./params/id')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '删除成功的条数'

   }, {

      async: true
      name: '@deleteOne( query )'
      desc: '删除文档，依据 Query'

      params: [
         require('./params/query')
      ]

      return:
         name: 'count'
         type: 'int ≥ 0'
         desc: '删除成功的条数'
   }]