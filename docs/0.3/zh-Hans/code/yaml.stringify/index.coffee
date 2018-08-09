module.exports =


   name: 'yaml.stringify'


   desc: """
      ```js
      text = sai.yaml.stringify({
         user: {
            name: 'kid',
            age: 18
         }
      })

      // => `
      // user:
      //     name: kid
      //     age: 18
      // `
      ```
   """


   signs: [{
      name: 'yaml.stringify( data )'
      desc: '生成 YAML 文本'
      more: '关于 [YAML Ain\'t Markup Language](http://yaml.org) 的介绍'

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