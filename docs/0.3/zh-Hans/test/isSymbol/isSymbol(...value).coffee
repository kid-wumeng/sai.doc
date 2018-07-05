module.exports =

   name: 'isSymbol(...value)'

   desc: """
      是否为 Symbol ？
   """

   text: """
      ```js
      sai.isSymbol(Symbol())  // => true
      sai.isSymbol(Symbol)    // => false

      // 支持多值检测
      sai.isSymbol(sb1, sb2, sb3)  // => true
      sai.isSymbol(sb1, 's', sb3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'