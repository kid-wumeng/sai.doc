module.exports =


   name: 'readCSON'


   desc: """
      ```js
      cson = await sai.readCSON('/assets/test.cson')
      ```
   """


   signs: [{
      name: 'readCSON( path, [encoding] )'
      desc: '读取文件，返回 CSON 对象'
      more: '关于 [CoffeeScript-Object-Notation](https://www.npmjs.com/package/cson) 的介绍'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'encoding'
         type: 'string'
         desc: """
            字符编码格式，默认值：*utf8*

            可选值参考：[Node.js - Buffers and Character Encodings](https://nodejs.org/dist/latest-v10.x/docs/api/buffer.html#buffer_buffers_and_character_encodings)
         """
         optional: true
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