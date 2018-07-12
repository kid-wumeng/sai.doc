module.exports =


   name: 'isArray'


   desc: """
      ```js
      sai.isArray([1, 2, 3])  // => true
      sai.isArray(arguments)  // => false
      sai.isArray('abc')      // => false
      ```
   """


   signs: [{
      name: 'isArray( value )'
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


   more: """
      # 基本用法

      ```js
      sai.isArray([1, 2, 3])               // => true
      sai.isArray(new Array)               // => true

      sai.isArray(arguments)               // => false
      sai.isArray('abc')                   // => false
      sai.isArray(new Buffer('abc'))       // => false
      sai.isArray(document.body.children)  // => false
      ```
   """