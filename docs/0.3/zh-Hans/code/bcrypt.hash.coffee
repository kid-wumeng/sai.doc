module.exports =


   name: 'bcrypt.hash'


   desc: """
      ```js
      salt = await sai.bcrypt.salt(10)
      hash = await sai.bcrypt.hash('myPass')
      ```
   """


   signs: [{
      async: true
      name: 'bcrypt.hash( data, [salt] )'
      desc: '以 Bcrypt 编码'

      params: [{
         name: 'data'
         type: 'string'
      },{
         name: 'salt'
         type: 'string'
         optional: true
         desc: '若不传，会自动生成一个 rounds = 10 的随机盐'
      }]

      return:
         name: 'hash'
         type: 'string'
   }]