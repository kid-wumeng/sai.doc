module.exports =


   name: 'readFile'


   signs: [{
      name: 'readFile( path )'
      desc: '读文件，返回 Buffer'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'file'
         type: 'Buffer'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
      ]
   }]


   detail: """
      # 基本用法

      ```js
      file = await sai.readFile('/assets/test.jpg')
      ```
   """