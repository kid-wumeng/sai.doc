module.exports =

   name: 'isArray(value)'

   desc: """
      是否为 Array ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isArray(new Array)               // => true
      sai.isArray([1, 2, 3])               // => true

      sai.isArray(arguments)               // => false
      sai.isArray('abc')                   // => false
      sai.isArray(new Buffer('abc'))       // => false
      sai.isArray(document.body.children)  // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望判定的值'
   }]

   return:
      name: 'result'
      type: 'boolean'