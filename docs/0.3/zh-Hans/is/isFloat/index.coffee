module.exports =


   name: 'isFloat'


   desc: """
      ```js
      sai.isFloat(1)    // => false
      sai.isFloat(0.1)  // => true
      ```
   """


   signs: [{
      name: 'isFloat( value )'
      desc: '是否为有效、有穷的*浮点数* ？'

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

      本方法在 [sai.isNumber](/isNumber) 之上加入对浮点数的判定

      ```js
      sai.isFloat(1)                 // => false
      sai.isFloat(0)                 // => false
      sai.isFloat(-1)                // => false
      sai.isFloat(+0.1)              // => true
      sai.isFloat(-0.1)              // => true
      sai.isFloat(2e64)              // => false
      sai.isFloat(0b10)              // => false
      sai.isFloat(0o36)              // => false
      sai.isFloat(0xFA)              // => false
      sai.isFloat(new Number(1))     // => false
      sai.isFloat(Number.MIN_VALUE)  // => true
      sai.isFloat(Number.MAX_VALUE)  // => false

      sai.isFloat('1')               // => false
      sai.isFloat(10/0)              // => false
      sai.isFloat(NaN)               // => false
      sai.isFloat(Infinity)          // => false
      sai.isFloat(-Infinity)         // => false
      ```
   """