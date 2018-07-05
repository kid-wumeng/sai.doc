module.exports =

   name: 'isBuffer(value)'

   desc: """
      是否为 Buffer 对象 ？
   """

   detail: """
      # 基本用法

      ```js
      buffer = new Buffer('sai')
      string = new String('sai')

      sai.isBuffer( buffer )  // => true
      sai.isBuffer( string )  // => false
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