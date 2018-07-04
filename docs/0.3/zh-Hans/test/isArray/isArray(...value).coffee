module.exports =

   name: 'isArray(...value)'

   desc: """
      是否为 Array 对象或数组直接量 ？
   """

   text: """
      ```js
      sai.isArray(new Array)               // => true
      sai.isArray([])                      // => true
      sai.isArray([1, 2, 3])               // => true

      sai.isArray(arguments)               // => false
      sai.isArray('abc')                   // => false
      sai.isArray(new Buffer('abc'))       // => false
      sai.isArray(document.body.children)  // => false
      sai.isArray(Array)                   // => false

      // 支持多值检测
      sai.isArray(array1, array2,  array3 )  // => true
      sai.isArray(array1, array2, 'array3')  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isArray'
      type: 'boolean'