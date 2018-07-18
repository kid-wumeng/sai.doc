module.exports =


   name: 'isNil'


   desc: """
      ```js
      sai.isNil(undefined)  // => true
      sai.isNil(null)       // => true
      ```
   """


   signs: [{
      name: 'isNil( value )'
      desc: '是否为 undefined 或 null ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isNil(undefined)  // => true
      sai.isNil(null)       // => true
      sai.isNil(void 0)     // => true

      sai.isNil(false)      // => false
      sai.isNil(0)          // => false
      sai.isNil(NaN)        // => false
      sai.isNil('')         // => false
      ```
   """