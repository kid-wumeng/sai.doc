module.exports =

   name: 'isString(value)'

   desc: """
      是否为字符串 ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isString('sai')              // => true
      sai.isString(new String('sai'))  // => true
      sai.isString(new Buffer('sai'))  // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望检测的值'
   }]

   return:
      name: 'result'
      type: 'boolean'