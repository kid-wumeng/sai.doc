module.exports =


   name: 'remove'


   desc: """
      ```js
      await sai.remove('/assets/test.jpg')
      await sai.remove('/assets')
      ```
   """


   signs: [{
      async: true
      name: 'remove( path )'
      desc: '删除文件或目录'
      more: '*即使目录不为空也会被删除*，类似`rm -rf`'

      params: [{
         name: 'path'
         type: 'string'
         desc: '资源路径'
      }]

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]