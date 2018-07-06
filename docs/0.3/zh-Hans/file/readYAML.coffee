module.exports =


   name: 'readYAML'


   signs: [{
      name: 'readYAML( path )'
      desc: '读取文件，返回 YAML 对象'
      more: '关于 [YAML Ain\'t Markup Language](http://yaml.org/) 的介绍'
      async: true

      params: [{
         name: 'path'
         type: 'string'
         desc: '文件路径'
      }]

      return:
         name: 'yaml'
         type: 'plain-object'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').FILE_NOT_FOUND
         require('../errors').TEXT_PARSE_FAIL
      ]
   }]


   detail: """
      # 基本用法

      ```js
      yaml = await sai.readYAML('/assets/test.yaml')
      ```
   """