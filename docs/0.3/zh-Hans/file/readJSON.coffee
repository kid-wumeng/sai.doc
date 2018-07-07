module.exports =


   name: 'readJSON'


   desc: """
      ```js
      json = await sai.readJSON('/assets/test.json')
      ```
   """


   signs: [{
      name: 'readJSON( path )'
      desc: '读取文件，返回 JSON 对象'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'json'
         type: 'plain-object'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
         require('../errors').TEXT_PARSE_FAIL
      ]
   }]