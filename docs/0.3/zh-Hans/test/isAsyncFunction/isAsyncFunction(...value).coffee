module.exports =

   name: 'isAsyncFunction(...value)'

   desc: """
      是否为异步函数 ？
   """

   text: """
      ```js
      sai.isAsyncFunction(function(){})        // => false
      sai.isAsyncFunction(async function(){})  // => true

      sai.isAsyncFunction(()=>{})              // => false
      sai.isAsyncFunction(async ()=>{})        // => true

      sai.isAsyncFunction(class{})             // => false

      sai.isAsyncFunction(String)              // => false
      sai.isAsyncFunction(Object)              // => false
      sai.isAsyncFunction(Function)            // => false

      // 支持多值检测
      sai.isAsyncFunction(af1, af2, af3)       // => true
      sai.isAsyncFunction(af1, af2,  f3)       // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isAsyncFunction'
      type: 'boolean'