module.exports =


   name: 'isDir'


   signs: [{
      name: 'isDir( path )'
      desc: '是目录吗 ？'
      async: true

      params: [{
         name: 'path'
         type: 'string'
      }]

      return:
         name: 'result'
         type: 'boolean'
         desc: """
            * 资源不存在，返回 false
            * 资源是文件，返回 false
         """
   }]


   detail: """
      # 基本用法

      ```js
      result = await sai.isDir('/assets/images')
      ```
   """