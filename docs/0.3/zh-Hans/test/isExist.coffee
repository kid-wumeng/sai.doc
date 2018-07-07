module.exports =


   name: 'isExist'


   desc: """
      ```js
      sai.isExist({})
      sai.isExist([])
      sai.isExist('')
      ```
   """


   signs: [{
      name: 'isExist(data)'
      desc: '数据中至少有一个值 ？'

      params: [{
         name: 'data'
         type: '*'
         desc: '期望检测的数据，类型参考 [sai.len](/len)'
      }]

      return:
         name: 'result'
         type: 'boolean'

      errors: [{
         name: 'INVALID_TYPE'
         desc: '参考 [sai.len](/len)'
      }]
   }]


   detail: """
      # 基本用法

      本质上是`sai.len(data) > 0`的语法糖，data 类型与 [sai.len](/len) 一致

      ```js
      sai.isExist({name: 'sai'})  // => true
      sai.isExist([1])            // => true
      sai.isExist('1')            // => true

      sai.isExist({})             // => false
      sai.isExist([])             // => false
      sai.isExist('')             // => false
      sai.isExist(null)           // => false
      sai.isExist(undefined)      // => false
      ```
   """