module.exports =

   name: 'isNumber(...value)'

   desc: """
      是否为有效、有限的数字直接量 ？
   """

   text: """
      本函数基于 isFinite 方法

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
      sai.isNumber(Number.MAX_VALUE)  // => true
      sai.isNumber(Number.MIN_VALUE)  // => true

      sai.isNumber(new Number(1))     // => false
      sai.isNumber('1')               // => false
      sai.isNumber(10/0)              // => false
      sai.isNumber(NaN)               // => false
      sai.isNumber(Infinity)          // => false
      sai.isNumber(-Infinity)         // => false

      // 支持多值检测
      sai.isNumber(1,  2,  3)  // => true
      sai.isNumber(1, '2', 3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'