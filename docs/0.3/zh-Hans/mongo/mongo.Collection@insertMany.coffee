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
      desc: '插入多条文档'

      params: [{
         name: 'docs'
         type: 'plain-object[]'
      }]

      return:
         require('./return/docs')
   }]