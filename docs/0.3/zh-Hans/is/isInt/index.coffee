module.exports =


   name: 'isInt'


   desc: """
      ```js
      sai.isInt(1)    // => true
      sai.isInt(0.1)  // => false
      ```
   """


   signs: [{
      name: 'isInt( value )'
      desc: '是否为有效、有穷的*整数* ？'

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

      本方法基于 isFinite 封装，在 [sai.isNumber](/isNumber) 之上加入对整数的判定

      ```js
      sai.isInt(1)                 // => true
      sai.isInt(0)                 // => true
      sai.isInt(-1)                // => true
      sai.isInt(+0.1)              // => false
      sai.isInt(-0.1)              // => false
      sai.isInt(2e64)              // => true
      sai.isInt(0b10)              // => true
      sai.isInt(0o36)              // => true
      sai.isInt(0xFA)              // => true
      sai.isInt(new Number(1))     // => true
      sai.isInt(Number.MIN_VALUE)  // => false
      sai.isInt(Number.MAX_VALUE)  // => true

      sai.isInt('1')               // => false
      sai.isInt(10/0)              // => false
      sai.isInt(NaN)               // => false
      sai.isInt(Infinity)          // => false
      sai.isInt(-Infinity)         // => false
      ```
   """