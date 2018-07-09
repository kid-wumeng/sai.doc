module.exports =


   name: 'isBuffer'


   desc: """
      ```js
      sai.isBuffer(file)
      ```
   """


   signs: [{
      name: 'isBuffer( value )'
      desc: '是否为 Buffer 对象 ？'

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
      buffer = new Buffer('sai')
      string = new String('sai')

      sai.isBuffer( buffer )  // => true
      sai.isBuffer( string )  // => false
      ```
   """