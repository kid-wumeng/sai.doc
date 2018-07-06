module.exports =


   name: 'isSymbol'


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


   detail: """
      # 基本用法

      ```js
      sai.isSymbol(Symbol())  // => true
      sai.isSymbol(Symbol)    // => false
      ```
   """