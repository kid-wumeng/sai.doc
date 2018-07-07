module.exports =


   name: 'isDir'


   desc: """
      ```js
      result = await sai.isDir('/assets')
      ```
   """


   signs: [{
      name: 'isDir( path )'
      desc: '是目录吗 ？'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '目录路径'
      }]

      return:
         name: 'result'
         type: 'boolean'
         desc: """
            * 资源不存在，返回 false
            * 资源是文件，返回 false
         """
   }]