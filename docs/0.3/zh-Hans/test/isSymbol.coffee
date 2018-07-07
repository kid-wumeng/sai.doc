module.exports =


   name: 'isSymbol'


   desc: """
      ```js
      sai.isSymbol(Symbol())
      ```
   """


   signs: [{
      name: 'isSymbol(value)'
      desc: '是否为 Symbol ？'

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
      sai.isSymbol(Symbol())  // => true
      sai.isSymbol(Symbol)    // => false
      ```
   """