module.exports =


   name: 'isMin'


   desc: """
      ```js
      sai.isMin(2, 1)     // => true
      sai.isMin('ab', 1)  // => true
      ```
   """


   signs: [{
      name: 'isMin( value, min )'
      desc: 'value 或 value 的长度是否不低于 min ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望检测的值'
      },{
         name: 'min'
         type: 'number'
         desc: """
            number - 最小值
            string - 最小长度
            buffer - 最小长度
         """
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isMin(2, 1)                 // => true
      sai.isMin(2, 2)                 // => true
      sai.isMin(2, 3)                 // => false

      sai.isMin('ab', 1)              // => true
      sai.isMin('ab', 2)              // => true
      sai.isMin('ab', 3)              // => false

      sai.isMin(new Buffer('ab'), 1)  // => true
      sai.isMin(new Buffer('ab'), 2)  // => true
      sai.isMin(new Buffer('ab'), 3)  // => false
      ```
   """