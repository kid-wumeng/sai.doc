module.exports =

   name: 'isRegExp(...value)'

   desc: """
      是否为 RegExp 对象或正则表达式直接量 ？
   """

   text: """
      ```js
      sai.isRegExp(new RegExp('^sai$', 'ig'))  // => true
      sai.isRegExp(/^sai$/ig)                  // => true

      // 支持多值检测
      sai.isRegExp(reg1, /sai/, reg3)  // => true
      sai.isRegExp(reg1, 'sai', reg3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'