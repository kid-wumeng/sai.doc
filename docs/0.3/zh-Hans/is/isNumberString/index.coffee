module.exports =


   name: 'isNumberString'


   desc: """
      ```js
      sai.isNumberString('1.2')  // => true
      sai.isNumberString(1.2)    // => false
      ```
   """


   signs: [{
      name: 'isNumberString( value )'
      desc: '是否为数字字符串 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的字符串'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]

   more: """
      # 基本用法

      ```js
      sai.isNumberString('1')     // => true
      sai.isNumberString('1.2')   // => true
      sai.isNumberString('-1.2')  // => true
      
      sai.isNumberString(1)       // => false
      sai.isNumberString(1.2)     // => false
      sai.isNumberString(-1.2)    // => false
      ```
   """