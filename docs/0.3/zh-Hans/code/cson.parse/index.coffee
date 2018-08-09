module.exports =


   name: 'cson.parse'


   desc: """
      ```js
      data = sai.cson.parse(`
         user:
            name: "kid"
            age: 18
      `)

      // => {
      //    user: {
      //       name: 'kid',
      //       age: 18
      //    }
      // }
      ```
   """


   signs: [{
      name: 'cson.parse( text )'
      desc: '解析 CSON 文本'
      more: '关于 [CoffeeScript Object Notation](https://www.npmjs.com/package/cson) 的介绍'

      params: [{
         name: 'text'
         type: 'string'
      }]

      return:
         name: 'data'
         type: 'object|boolean|number|string'

      errors: [
         require('../../errors').INVALID_PARAMS
         require('../../errors').TEXT_PARSE_FAIL
      ]
   }]