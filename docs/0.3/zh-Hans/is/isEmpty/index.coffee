module.exports =


   name: 'isEmpty'


   desc: """
      ```js
      sai.isEmpty({})  // => true
      sai.isEmpty([])  // => true
      sai.isEmpty('')  // => true
      ```
   """


   signs: [{
      name: 'isEmpty( value )'
      desc: '数据为空，无任何值 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望检测的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isEmpty({})             // => true
      sai.isEmpty([])             // => true
      sai.isEmpty('')             // => true

      sai.isEmpty({name: 'sai'})  // => false
      sai.isEmpty([1])            // => false
      sai.isEmpty('1')            // => false
      ```

      # 若不是对象，则一律返回 true ( 视为空值 )

      ```js
      sai.isEmpty(null)       // => true
      sai.isEmpty(undefined)  // => true
      sai.isEmpty(true)       // => true
      sai.isEmpty(1)          // => true
      sai.isEmpty(Symbol())   // => true
      ```
   """