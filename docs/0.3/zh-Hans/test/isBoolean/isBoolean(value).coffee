module.exports =

   name: 'isBoolean(value)'

   desc: """
      是否为布尔值，而且是字面量
   """

   text: """
      ```js
      sai.isBoolean(true)               // => true
      sai.isBoolean(false)              // => true
      sai.isBoolean(new Boolean(true))  // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'
      desc: ''