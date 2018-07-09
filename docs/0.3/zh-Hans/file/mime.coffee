module.exports =


   name: 'mime'


   desc: """
      ```js
      await sai.mime('/assets/test.jpg')
      // => 'image/jpeg'

      file = await sai.readFile('/assets/test.jpg')
      sai.mime(file)
      // => 'image/jpeg'
      ```
   """


   signs: [{
      async: true
      name: 'mime( path )'
      desc: '获取文件的 MIME 类型'

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'mime'
         type: 'string'

      errors: [
         require('../errors').INVALID_PARAMS
      ]

   },{

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

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]