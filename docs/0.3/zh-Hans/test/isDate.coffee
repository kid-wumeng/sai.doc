module.exports =


   name: 'isDate'


   desc: """
      ```js
      sai.isDate(create_at)
      ```
   """


   signs: [{
      name: 'isDate(value)'
      desc: '是否为 Date 对象 ？'

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
      sai.isDate(new Date(2018, 6, 5))  // => true
      sai.isDate('2018-07-05')          // => false
      ```
   """