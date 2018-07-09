module.exports =


   name: 'bcrypt.encode'


   desc: """
      ```js
      hash = await sai.bcrypt.encode('myPass')
      ```
   """


   signs: [{
      async: true
      name: 'bcrypt.encode( data )'
      desc: '以 Bcrypt 编码'

      params: [{
         name: 'data'
         type: 'string'
      }]

      return:
         name: 'hash'
         type: 'string'
   }]