module.exports =


   name: 'isBooleanString'


   desc: """
      ```js
      sai.isBooleanString('true')  // => true
      sai.isBooleanString(true)    // => false
      ```
   """


   signs: [{
      name: 'isBooleanString( value )'
      desc: '是否为布尔量字符串 ？'

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
      sai.isBooleanString('true')   // => true
      sai.isBooleanString('false')  // => true
      
      sai.isBooleanString(true)     // => false
      sai.isBooleanString(false)    // => false
      ```
   """