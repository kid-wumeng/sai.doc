module.exports =


   name: 'isNumber'


   desc: """
      ```js
      sai.isNumber(1)
      ```
   """


   signs: [{
      name: 'isNumber(value)'
      desc: '是否为有效、有穷的数 ？'

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

      本函数基于`isFinite`封装

      ```js
      sai.isNumber(1)                 // => true
      sai.isNumber(0)                 // => true
      sai.isNumber(-1)                // => true
      sai.isNumber(+0.1)              // => true
      sai.isNumber(-0.1)              // => true
      sai.isNumber(2e64)              // => true
      sai.isNumber(0b10)              // => true
      sai.isNumber(0o36)              // => true
      sai.isNumber(0xFA)              // => true
      sai.isNumber(new Number(1))     // => true
      sai.isNumber(Number.MIN_VALUE)  // => true
      sai.isNumber(Number.MAX_VALUE)  // => true

      sai.isNumber('1')               // => false
      sai.isNumber(10/0)              // => false
      sai.isNumber(NaN)               // => false
      sai.isNumber(Infinity)          // => false
      sai.isNumber(-Infinity)         // => false
      ```
   """