module.exports =


   name: 'isBoolean'


   desc: """
      ```js
      sai.isBoolean(true)  // => true
      sai.isBoolean(null)  // => false
      ```
   """


   signs: [{
      name: 'isBoolean( value )'
      desc: '是否为布尔量 ？'

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
      sai.isBoolean(true)                // => true
      sai.isBoolean(false)               // => true
      sai.isBoolean(new Boolean(true))   // => true
      sai.isBoolean(new Boolean(false))  // => true

      sai.isBoolean(undefined)           // => false
      sai.isBoolean(null)                // => false
      sai.isBoolean(1)                   // => false
      sai.isBoolean('true')              // => false
      ```
   """