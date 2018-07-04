module.exports =

   name: 'isBoolean(...value)'

   desc: """
      是否为布尔直接量 ？
   """

   text: """
      ```js
      sai.isBoolean(true)               // => true
      sai.isBoolean(false)              // => true

      sai.isBoolean(new Boolean(true))  // => false
      sai.isBoolean(1)                  // => false

      // 支持多值检测
      sai.isBoolean(true, false)  // => true
      sai.isBoolean(true, 1)      // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'