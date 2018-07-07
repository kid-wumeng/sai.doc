module.exports =


   name: 'isString'


   desc: """
      ```js
      sai.isString('abc')
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
      sai.isString('sai')              // => true
      sai.isString(new String('sai'))  // => true
      sai.isString(new Buffer('sai'))  // => false
      ```
   """