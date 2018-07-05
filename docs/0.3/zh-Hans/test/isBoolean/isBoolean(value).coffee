module.exports =

   name: 'isBoolean(value)'

   desc: """
      是否为布尔量 ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isBoolean(true)                // => true
      sai.isBoolean(false)               // => true
      sai.isBoolean(new Boolean(true))   // => true
      sai.isBoolean(new Boolean(false))  // => true

      sai.isBoolean(1)                   // => false
      sai.isBoolean(null)                // => false
      sai.isBoolean('true')              // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望检测的值'
   }]

   return:
      name: 'result'
      type: 'boolean'