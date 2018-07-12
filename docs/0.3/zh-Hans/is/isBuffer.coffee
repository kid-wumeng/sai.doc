module.exports =


   name: 'isBuffer'


   desc: """
      ```js
      sai.isBuffer(new Buffer('abc'))  // => true
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
      sai.isBuffer(new Buffer('abc'))  // => true
      sai.isBuffer(new String('abc'))  // => false
      ```
   """