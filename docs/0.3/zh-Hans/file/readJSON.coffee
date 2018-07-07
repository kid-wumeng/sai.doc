module.exports =


   name: 'readJSON'


   desc: """
      ```js
      data = await sai.readJSON('/assets/test.json')
      ```
   """


   signs: [{
      async: true
      name: 'readJSON( path, [encoding] )'
      desc: '读取文件，返回 JSON 对象'

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
         name: 'data'
         type: 'plain-object'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
         require('../errors').TEXT_PARSE_FAIL
      ]
   }]