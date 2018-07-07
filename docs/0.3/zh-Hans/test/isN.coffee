module.exports =


   name: 'isN'


   desc: """
      ```js
      sai.isN(1)
      ```
   """


   signs: [{
      name: 'isN( value )'
      desc: '是否为有效、有穷的*自然数* ？*默认 0 是自然数*'

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

      本函数基于`isFinite`封装，在 [sai.isInt](/isInt) 之上加入对自然数的判定

      ```js
      sai.isN(1)                 // => true
      sai.isN(0)                 // => true ( 默认 0 是自然数 )
      sai.isN(-1)                // => false
      sai.isN(+0.1)              // => false
      sai.isN(-0.1)              // => false
      sai.isN(2e64)              // => true
      sai.isN(0b10)              // => true
      sai.isN(0o36)              // => true
      sai.isN(0xFA)              // => true
      sai.isN(new Number(1))     // => false
      sai.isN(Number.MIN_VALUE)  // => false ( 假设最小值是负数 )
      sai.isN(Number.MAX_VALUE)  // => true

      sai.isN('1')               // => false
      sai.isN(10/0)              // => false
      sai.isN(NaN)               // => false
      sai.isN(Infinity)          // => false
      sai.isN(-Infinity)         // => false
      ```
   """