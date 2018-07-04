module.exports =

   name: 'isN(...value)'

   desc: """
      是否为有效、有限的*自然数*直接量 ？*默认 0 是自然数*
   """

   text: """
      在 sai.isNumber 函数基础上，加入对自然数的判断

      ```js
      sai.isN(1)                 // => true
      sai.isN(0)                 // => true
      sai.isN(-1)                // => false
      sai.isN(+0.1)              // => false
      sai.isN(-0.1)              // => false
      sai.isN(2e64)              // => true
      sai.isN(0b10)              // => true
      sai.isN(0o36)              // => true
      sai.isN(0xFA)              // => true
      sai.isN(Number.MAX_VALUE)  // => true
      sai.isN(Number.MIN_VALUE)  // => false

      sai.isN(new Number(1))     // => false
      sai.isN('1')               // => false
      sai.isN(10/0)              // => false
      sai.isN(NaN)               // => false
      sai.isN(Infinity)          // => false
      sai.isN(-Infinity)         // => false

      // 支持多值检测
      sai.isN(1,  2,  3)  // => true
      sai.isN(1, 0.2, 3)  // => false
      sai.isN(1, -2,  3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'