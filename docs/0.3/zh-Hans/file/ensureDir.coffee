module.exports =


   name: 'ensureDir'


   desc: """
      ```js
      await sai.ensureDir('/assets/images')
      ```
   """


   signs: [{
      async: true
      name: 'ensureDir( path, file )'
      desc: '确保目录存在'
      more: """
         * 若目录已存在，则什么也不做
         * 若目录不存在，则自动创建新目录 ( 包括上游路径 )
      """

      params: [{
         name: 'path'
         type: 'string'
         desc: '目录路径'
      }]

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]