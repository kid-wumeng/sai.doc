module.exports =


   name: 'readText'


   signs: [{
      name: 'readText( path )'
      desc: '读文件，返回 String'
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

            可选值参考：[Node.js - Buffers and Character Encodings](http://nodejs.cn/api/en/buffer.html#buffer_buffers_and_character_encodings)
         """
         optional: true
      }]

      return:
         name: 'text'
         type: 'string'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
      ]
   }]


   detail: """
      # 基本用法

      ```js
      text = await sai.readText('/assets/test.txt')
      ```
   """