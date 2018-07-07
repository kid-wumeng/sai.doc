module.exports =


   name: 'isFile'

   
   desc: """
      ```js
      result = await sai.isFile('/assets/test.jpg')
      ```
   """


   signs: [{
      name: 'isFile( path )'
      desc: '是文件吗 ？'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'result'
         type: 'boolean'
         desc: """
            * 资源不存在，返回 false
            * 资源是目录，返回 false
         """
   }]