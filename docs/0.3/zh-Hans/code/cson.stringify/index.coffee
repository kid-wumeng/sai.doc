module.exports =


   name: 'cson.stringify'


   desc: """
      ```js
      text = sai.cson.stringify({
         user: {
            name: 'kid',
            age: 18
         }
      })

      // => `
      // user:
      //     name: "kid"
      //     age: 18
      // `
      ```
   """


   signs: [{
      name: 'cson.stringify( data )'
      desc: '生成 CSON 文本'
      more: '关于 [CoffeeScript Object Notation](https://www.npmjs.com/package/cson) 的介绍'

      params: [{
         name: 'data'
         type: 'object|boolean|number|string'
      }]

      return:
         name: 'text'
         type: 'string'


      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]