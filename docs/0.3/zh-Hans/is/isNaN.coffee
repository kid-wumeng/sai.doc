module.exports =


   name: 'isNaN'


   desc: """
      ```js
      sai.isNaN(NaN)  // => true
      ```
   """


   signs: [{
      name: 'isNaN( value )'
      desc: '是否为 NaN ？'

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
      sai.isNaN(NaN)              // => true
      sai.isNaN(new Number(NaN))  // => true
      sai.isNaN(null)             // => false
      sai.isNaN(123)              // => false
      ```

      注意，JavaScript 原生的全局方法 isNaN 会视 undefined 和其它非数字类型为 NaN：

      ```js
      isNaN(undefined)  // => true
      isNaN('abc')      // => true
      ```

      而 sai.isNaN 基于 Number.isNaN 封装，只当 value 为 NaN 时才返回 true：

      ```js
      sai.isNaN(undefined)  // => false
      sai.isNaN('abc')      // => false
      ```
   """