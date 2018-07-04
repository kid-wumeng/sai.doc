module.exports =

   name: 'isString(...value)'

   desc: """
      是否为字符串直接量 ？
   """

   text: """
      ```js
      sai.isString('sai')              // => true
      sai.isString('1')                // => true
      sai.isString('')                 // => true

      sai.isString(new String('sai'))  // => false
      sai.isString(new Buffer('sai'))  // => false

      // 支持多值检测
      sai.isString('sai', '123', 'kid')  // => true
      sai.isString('sai',  123,  'kid')  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'