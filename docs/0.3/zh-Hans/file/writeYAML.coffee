module.exports =


   name: 'writeYAML'


   desc: """
      ```js
      await sai.writeYAML('/assets/test.yaml', data)
      ```
   """


   signs: [{
      async: true
      name: 'writeYAML( path, data, encoding )'
      desc: '写入文件'
      more: """
         * 若文件已存在，则*完全覆写*
         * 若文件不存在，则*自动创建* ( 包括上游路径 )

         关于 [YAML Ain\'t Markup Language](http://yaml.org) 的介绍
      """

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'data'
         type: 'object'
         desc: """
            要写入的 YAML 格式数据
         """
      },{
         name: 'encoding'
         type: 'string'
         desc: """
            字符编码格式
            可选值参考：[Node.js - Buffers and Character Encodings](https://nodejs.org/dist/latest-v10.x/docs/api/buffer.html#buffer_buffers_and_character_encodings)
         """
         default: 'utf8'
      }]

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').TEXT_PARSE_FAIL
      ]
   }]