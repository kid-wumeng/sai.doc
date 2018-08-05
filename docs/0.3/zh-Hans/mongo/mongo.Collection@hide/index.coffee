module.exports =


   name: 'mongo.Collection@hide'


   desc: """
      ```js
      await db.col('users').hide('password')
      ```
   """


   signs: [{
      name: '@hide( name )'
      desc: '隐藏某个字段，使其在查找时默认被忽略'

      params: [{
         name: 'name'
         type: 'string'
         desc: '要隐藏的字段名'
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]