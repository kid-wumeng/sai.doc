module.exports =


   name: 'writeText'


   desc: """
      ```js
      await sai.writeText('/assets/test.txt', text)
      ```
   """


   signs: [{
      async: true
      name: 'writeText( path, text )'
      desc: '写入文本'
      more: """
         * 若文件已存在，则*完全覆写*
         * 若文件不存在，则*自动创建* ( 包括上游路径 )
      """

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'text'
         type: 'string'
         desc: """
            要写入的文本，仅支持字符串
            要写入 Buffer 可使用 [sai.writeFile](/writeFile)
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
      ]
   }]