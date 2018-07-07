module.exports =


   name: 'copy'


   desc: """
      ```js
      await sai.copy('/assets/test.jpg', '/assets/images/logo.jpg')
      ```
   """


   signs: [{
      async: true
      name: 'copy( srcPath, destPath )'
      desc: '拷贝文件或目录'

      params: [{
         name: 'srcPath'
         type: 'string'
         desc: '原始资源路径'
      },{
         name: 'destPath'
         type: 'string'
         desc: '新资源路径'
      }]

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]