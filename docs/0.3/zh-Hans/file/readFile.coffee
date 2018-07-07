module.exports =


   name: 'readFile'


   desc: """
      ```js
      file = await sai.readFile('/assets/test.jpg')
      ```
   """


   signs: [{
      name: 'readFile( path )'
      desc: '读取文件，返回 Buffer'
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