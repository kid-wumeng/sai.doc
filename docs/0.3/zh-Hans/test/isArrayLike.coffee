module.exports =


   name: 'isArrayLike'


   signs: [{
      name: 'isArrayLike(value)'
      desc: '是否为 Array-like ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]
      
      return:
         name: 'result'
         type: 'boolean'
   }]


   detail: """
      # 基本用法

      ```js
      sai.isArrayLike(new Array)               // => true
      sai.isArrayLike([1, 2, 3])               // => true

      sai.isArrayLike(arguments)               // => true
      sai.isArrayLike('abc')                   // => true
      sai.isArrayLike(new Buffer('abc'))       // => true
      sai.isArrayLike(document.body.children)  // => true
      ```
   """