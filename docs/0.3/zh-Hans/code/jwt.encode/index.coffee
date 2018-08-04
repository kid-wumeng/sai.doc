module.exports =


   name: 'jwt.encode'


   desc: """
      ```js
      token = sai.jwt.encode({ id: 1 }, 'secret', sai.ms('6', 'months'))
      ```
   """


   signs: [{
      name: 'jwt.encode( data, secret, [maxAge] )'
      desc: '以 JSON Web Token 编码'

      params: [{
         name: 'data'
         type: 'object'
         desc: '有效荷载'
      },{
         name: 'secret'
         type: 'object'
         desc: '密钥'
      },{
         name: 'maxAge'
         type: 'int'
         desc: '有效期 ( 毫秒 )'
         default: 0
      }]

      return:
         name: 'token'
         type: 'string'
         desc: '令牌字符串'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]