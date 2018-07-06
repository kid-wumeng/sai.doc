module.exports =


   name: 'isArray'


   signs: [{
      name: 'isArray(value)'
      desc: '是否为 Array ？'
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
      sai.isArray(new Array)               // => true
      sai.isArray([1, 2, 3])               // => true

      sai.isArray(arguments)               // => false
      sai.isArray('abc')                   // => false
      sai.isArray(new Buffer('abc'))       // => false
      sai.isArray(document.body.children)  // => false
      ```
   """