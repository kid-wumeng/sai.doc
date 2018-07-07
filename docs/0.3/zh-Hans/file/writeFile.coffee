module.exports =


   name: 'writeFile'


   desc: """
      ```js
      await sai.writeFile('/assets/test.jpg', file)
      ```
   """


   signs: [{
      async: true
      name: 'writeFile( path, file )'
      desc: '写入文件'
      more: """
         * 若文件已存在，则*完全覆写*
         * 若文件不存在，则*自动创建* ( 包括上游路径 )
      """

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'file'
         type: 'Buffer'
         desc: """
            要写入的数据，仅支持 Buffer
            要写入文本可使用 [sai.writeText](/writeText)
         """
      }]

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]