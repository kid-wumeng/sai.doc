module.exports =

   name: 'isSymbol(value)'

   desc: """
      是否为 Symbol ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isSymbol(Symbol())  // => true
      sai.isSymbol(Symbol)    // => false
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