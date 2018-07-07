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
      more: '**注意，即使目录不为空，也会删除**，类似`rm -rf`'

      params: [{
         name: 'path'
         type: 'string'
         desc: '要删除的资源路径'
      }]

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]