module.exports =


   name: 'yaml.parse'


   desc: """
      ```js
      data = sai.yaml.parse(`
         user:
            name: kid
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
      name: 'yaml.parse( text )'
      desc: '解析 YAML 文本'
      more: '关于 [YAML Ain\'t Markup Language](http://yaml.org) 的介绍'

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