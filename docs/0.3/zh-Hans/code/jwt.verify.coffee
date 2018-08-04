module.exports =


   name: 'jwt.verify'


   desc: """
      ```js
      data = sai.jwt.verify(token, 'secret')
      ```
   """


   signs: [{
      name: 'jwt.verify( token, secret )'
      desc: '以 JSON Web Token 验证令牌是否有效'

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
         name: 'isValid'
         type: 'boolean'
         desc: '若令牌解码失败，或令牌已过期，则视为无效'
   }]