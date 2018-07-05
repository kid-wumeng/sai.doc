module.exports =

   name: 'isInt(...value)'

   desc: """
      是否为有效、有限的*整数*直接量 ？
   """

   text: """
      在 sai.isNumber 函数基础上，加入对整数的判断

      ```js
      sai.isInt(1)     // => true
      sai.isInt(0)     // => true
      sai.isInt(-1)    // => true
      sai.isInt(+0.1)  // => false
      sai.isInt(-0.1)  // => false
      sai.isInt(2e64)  // => true
      sai.isInt(0b10)  // => true
      sai.isInt(0o36)  // => true
      sai.isInt(0xFA)  // => true

      sai.isInt(new Number(1))  // => false
      sai.isInt('1')            // => false
      sai.isInt(10/0)           // => false
      sai.isInt(NaN)            // => false
      sai.isInt(Infinity)       // => false
      sai.isInt(-Infinity)      // => false

      sai.isInt(Number.MAX_VALUE)  // => true
      sai.isInt(Number.MIN_VALUE)  // => true

      // 支持多值检测
      sai.isInt(1,  2,  3)  // => true
      sai.isInt(1, 0.2, 3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isInt'
      type: 'boolean'