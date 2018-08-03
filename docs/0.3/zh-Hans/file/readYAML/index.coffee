module.exports =


   name: 'readYAML'


   desc: """
      ```js
      data = await sai.readYAML('/assets/test.yaml')
      ```
   """


   signs: [{
      async: true
      name: 'readYAML( path, encoding )'
      desc: '读取文件，返回 YAML 对象'
      more: '关于 [YAML Ain\'t Markup Language](http://yaml.org) 的介绍'

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'encoding'
         type: 'string'
         desc: """
            字符编码格式
            可选值参考：[Node.js - Buffers and Character Encodings](https://nodejs.org/dist/latest-v10.x/docs/api/buffer.html#buffer_buffers_and_character_encodings)
         """
         default: 'utf8'
      }]

      return:
         name: 'data'
         type: 'object'

      errors: [
         require('../../errors').INVALID_PARAMS
         require('../../errors').FILE_NOT_FOUND
         require('../../errors').TEXT_PARSE_FAIL
      ]
   }]