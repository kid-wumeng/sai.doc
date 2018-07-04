module.exports =

   name: 'isArrayLike(...value)'

   desc: """
      是否为 Array-like ？
   """

   text: """
      ```js
      sai.isArrayLike(new Array)               // => true
      sai.isArrayLike([])                      // => true
      sai.isArrayLike([1, 2, 3])               // => true

      sai.isArrayLike(arguments)               // => true
      sai.isArrayLike('abc')                   // => true
      sai.isArrayLike(new Buffer('abc'))       // => true
      sai.isArrayLike(document.body.children)  // => true
      sai.isArrayLike(Array)                   // => false

      // 支持多值检测
      sai.isArrayLike(array1, array2,  array3 )  // => true
      sai.isArrayLike(array1, array2, 'array3')  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isArrayLike'
      type: 'boolean'