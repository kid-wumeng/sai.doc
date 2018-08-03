module.exports =


   name: 'emptyDir'


   desc: """
      ```js
      await sai.emptyDir('/assets/images')
      ```
   """


   signs: [{
      async: true
      name: 'emptyDir( path )'
      desc: '清空目录'
      more: """
         * 目录已存在：清空所有子资源
         * 目录不存在：什么也不做
      """

      params: [{
         name: 'path'
         type: 'string'
         desc: '目录路径'
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]