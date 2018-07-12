module.exports =


   name: 'isString'


   desc: """
      ```js
      sai.isString('abc')  // => true
      ```
   """


   signs: [{
      name: 'isString( value )'
      desc: '是否为字符串 ？'

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
      sai.isString('abc')              // => true
      sai.isString(new String('abc'))  // => true
      sai.isString(new Buffer('abc'))  // => false
      ```
   """