module.exports =


   name: 'isMax'


   desc: """
      ```js
      sai.isMax(2, 3)     // => true
      sai.isMax('ab', 3)  // => true
      ```
   """


   signs: [{
      name: 'isMax( value, max )'
      desc: 'value 或 value 的长度是否不超过 max ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望检测的值'
      },{
         name: 'max'
         type: 'number'
         desc: """
            number - 最大值
            string - 最大长度
            buffer - 最大长度
         """
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isMax(2, 1)                 // => false
      sai.isMax(2, 2)                 // => true
      sai.isMax(2, 3)                 // => true

      sai.isMax('ab', 1)              // => false
      sai.isMax('ab', 2)              // => true
      sai.isMax('ab', 3)              // => true

      sai.isMax(new Buffer('ab'), 1)  // => false
      sai.isMax(new Buffer('ab'), 2)  // => true
      sai.isMax(new Buffer('ab'), 3)  // => true
      ```
   """