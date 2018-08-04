module.exports =


   name: 'jwt.decode'


   desc: """
      ```js
      data = sai.jwt.decode(token)
      ```
   """


   signs: [{
      name: 'jwt.decode( token )'
      desc: '以 JSON Web Token 解码'

      params: [{
         name: 'token'
         type: 'string'
         desc: '令牌字符串'
      }]

      return:
         name: 'data'
         type: 'object'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]