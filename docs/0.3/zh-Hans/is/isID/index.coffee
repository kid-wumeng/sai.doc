module.exports =


   name: 'isID'


   desc: """
      ```js
      sai.isID(1)   // => true
      sai.isID(0)   // => false
      sai.isID(-1)  // => false
      ```
   """


   signs: [{
      name: 'isID( value )'
      desc: '是否为有效、有穷的*非零自然数* ？'

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

      本方法基于 isFinite 封装，在 [sai.isN](/isN) 之上加入对非零的判定

      ```js
      sai.isID(1)                 // => true
      sai.isID(0)                 // => false
      sai.isID(-1)                // => false
      sai.isID(+0.1)              // => false
      sai.isID(-0.1)              // => false
      sai.isID(2e64)              // => true
      sai.isID(0b10)              // => true
      sai.isID(0o36)              // => true
      sai.isID(0xFA)              // => true
      sai.isID(new Number(1))     // => true
      sai.isID(Number.MIN_VALUE)  // => false
      sai.isID(Number.MAX_VALUE)  // => true

      sai.isID('1')               // => false
      sai.isID(10/0)              // => false
      sai.isID(NaN)               // => false
      sai.isID(Infinity)          // => false
      sai.isID(-Infinity)         // => false
      ```
   """