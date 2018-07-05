module.exports =

   name: 'isFunction(...value)'

   desc: """
      是否为函数 ？*包括异步函数*
   """

   text: """
      ```js
      sai.isFunction(function(){})        // => true
      sai.isFunction(async function(){})  // => true

      sai.isFunction(()=>{})              // => true
      sai.isFunction(async ()=>{})        // => true

      sai.isFunction(class{})             // => true

      sai.isFunction(String)              // => true
      sai.isFunction(Object)              // => true
      sai.isFunction(Function)            // => true

      // 支持多值检测
      sai.isFunction(f1, f2, f3)          // => true
      sai.isFunction(f1, {}, f3)          // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isFunction'
      type: 'boolean'