module.exports =

   name: 'isDate(value)'

   desc: """
      是否为 Date 对象 ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isDate(new Date(2018, 6, 5))  // => true
      sai.isDate('2018-07-05')          // => false
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