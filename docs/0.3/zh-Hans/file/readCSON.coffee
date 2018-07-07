module.exports =


   name: 'readCSON'


   desc: """
      ```js
      cson = await sai.readCSON('/assets/test.cson')
      ```
   """


   signs: [{
      name: 'readCSON( path )'
      desc: '读取文件，返回 CSON 对象'
      more: '关于 [CoffeeScript-Object-Notation](https://www.npmjs.com/package/cson) 的介绍'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'cson'
         type: 'plain-object'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
         require('../errors').TEXT_PARSE_FAIL
      ]
   }]