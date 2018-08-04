module.exports =


   name: 'bcrypt.compare'


   desc: """
      ```js
      isMatched = await sai.bcrypt.compare('myPass', hash)
      ```
   """


   signs: [{
      async: true
      name: 'bcrypt.compare( data, hash )'
      desc: '以 Bcrypt 比较 data 与 hash'

      params: [{
         name: 'data'
         type: 'string'
      },{
         name: 'hash'
         type: 'string'
      }]

      return:
         name: 'isMatched'
         type: 'boolean'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]