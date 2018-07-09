module.exports =


   name: 'isMime'


   desc: """
      ```js
      await sai.isMime('/assets/test.jpg', 'image/jpeg')
      // => true

      file = await sai.readFile('/assets/test.jpg', 'image/jpeg')
      sai.isMime(file, 'image/jpeg')
      // => true
      ```
   """


   signs: [{
      async: true
      name: 'isMime( path, mime )'
      desc: '文件是否为指定的 MIME 类型 ？'

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      },{
         name: 'mime'
         type: 'string'
      }]

      return:
         name: 'result'
         type: 'boolean'

      errors: [
         require('../errors').INVALID_PARAMS
      ]

   },{

      name: 'isMime( file, mime )'
      desc: '文件是否为指定的 MIME 类型 ？'

      params: [{
         name: 'file'
         type: 'Buffer'
         desc: '文件缓存'
      }]

      return:
         name: 'result'
         type: 'boolean'

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]