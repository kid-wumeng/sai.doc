module.exports =


   name: 'move'


   desc: """
      ```js
      await sai.move('/assets/test.jpg', '/images/logo.jpg')
      ```
   """


   signs: [{
      async: true
      name: 'move( srcPath, destPath )'
      desc: '移动文件或目录'

      params: [{
         name: 'srcPath'
         type: 'string'
         desc: '当前路径'
      },{
         name: 'destPath'
         type: 'string'
         desc: '新路径'
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]