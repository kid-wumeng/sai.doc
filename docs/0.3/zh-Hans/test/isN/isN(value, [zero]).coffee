module.exports =

   name: 'isN(value, [zero])'

   desc: """
      是否为有效、有穷的*自然数* ？*默认 0 是自然数*
   """

   detail: """
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

      # 0 判定

      若希望 0 不计入自然数：

      ```js
      sai.isN(0, zero = false)  // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望检测的值'
   },{
      name: 'zero'
      type: 'boolean'
      desc: '0 是不是自然数 ？默认值：true'
      optional: true
   }]

   return:
      name: 'result'
      type: 'boolean'