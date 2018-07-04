module.exports =

   name: 'isTrue(value)'

   desc: """
      是否为 true ？
   """

   text: """
      ```js
      sai.isTrue(true)               // => true
      sai.isTrue(false)              // => false
      sai.isTrue(new Boolean(true))  // => false
      sai.isTrue(1)                  // => false
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