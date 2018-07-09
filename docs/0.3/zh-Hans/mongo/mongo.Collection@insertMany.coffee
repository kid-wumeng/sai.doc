module.exports =


   name: 'mongo.Collection@insertMany'


   desc: """
      ```js
      users = await db.col('users').insertMany(users)
      ```
   """


   signs: [{
      async: true
      name: '@insertMany( docs )'
      desc: '插入文档 ( 批量 )'

      params: [{
         name: 'docs'
         type: 'Array[object]'
      }]

      return:
         require('./return/docs')
   }]