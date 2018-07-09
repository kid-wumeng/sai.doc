module.exports =


   name: 'jwt.decode'


   desc: """
      ```js
      data = sai.jwt.decode('token', 'secret')
      ```
   """


   signs: [{
      name: 'jwt.decode( token, secret )'
      desc: '以 JSON Web Token 解码'

      params: [{
         name: 'token'
         type: 'string'
         desc: '令牌字符串'
      },{
         name: 'secret'
         type: 'object'
         desc: '密钥'
      }]

      return:
         name: 'data'
         type: 'object'
   }]