module.exports =


   name: 'isEmpty'


   desc: """
      ```js
      sai.isEmpty({})
      sai.isEmpty([])
      sai.isEmpty('')
      ```
   """


   signs: [{
      name: 'isEmpty( data )'
      desc: '数据为空，无任何值 ？'

      params: [{
         name: 'data'
         type: 'object, Array-like'
         desc: '期望检测的数据，类型参考 [sai.len](/len)'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      本质上是`sai.len(data) === 0`的语法糖，data 类型与 [sai.len](/len) 一致

      ```js
      sai.isEmpty({})             // => true
      sai.isEmpty([])             // => true
      sai.isEmpty('')             // => true

      sai.isEmpty({name: 'sai'})  // => false
      sai.isEmpty([1])            // => false
      sai.isEmpty('1')            // => false
      ```
   """