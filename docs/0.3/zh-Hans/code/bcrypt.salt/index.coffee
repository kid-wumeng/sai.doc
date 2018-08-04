module.exports =


   name: 'bcrypt.salt'


   desc: """
      ```js
      salt = await sai.bcrypt.salt(10)
      ```
   """


   signs: [{
      async: true
      name: 'bcrypt.salt( rounds )'
      desc: '生成随机盐'

      params: [{
         name: 'rounds'
         type: 'int ( 0 - 31 )'
         default: 10
      }]

      return:
         name: 'salt'
         type: 'string'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]