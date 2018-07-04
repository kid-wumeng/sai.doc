module.exports =

   name: 'isBuffer(...value)'

   desc: """
      是否为 Buffer 对象 ？
   """

   text: """
      ```js
      buffer = new Buffer('sai')
      string = new String('sai')

      sai.isBuffer( buffer )  // => true
      sai.isBuffer( string )  // => false

      // 支持多值检测
      sai.isBuffer( buffer1, buffer2 )  // => true
      sai.isBuffer( buffer1, string2 )  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'