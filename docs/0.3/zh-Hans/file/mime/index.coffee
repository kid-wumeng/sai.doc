module.exports =


   name: 'mime'


   desc: """
      ```js
      sai.mime(await sai.readFile('/assets/test.jpg'))
      // => 'image/jpeg'
      ```
   """


   signs: [{

      name: 'mime( file )'
      desc: '获取文件的 MIME 类型'

      params: [{
         name: 'file'
         type: 'Buffer'
         desc: '文件缓存'
      }]

      return:
         name: 'mime'
         type: 'string'
         desc: '如果无法测定，则返回\'\''

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]