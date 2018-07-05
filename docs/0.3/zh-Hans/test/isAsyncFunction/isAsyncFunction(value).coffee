module.exports =

   name: 'isAsyncFunction(value)'

   desc: """
      是否为异步函数 ？
   """

   detail: """
      # 基本用法

      ```js
      sai.isAsyncFunction(()=>{})              // => false
      sai.isAsyncFunction(function(){})        // => false
      sai.isAsyncFunction(async ()=>{})        // => true
      sai.isAsyncFunction(async function(){})  // => true

      sai.isAsyncFunction(class{})             // => false
      sai.isAsyncFunction(String)              // => false
      sai.isAsyncFunction(Object)              // => false
      sai.isAsyncFunction(Function)            // => false
      ```
   """

   params: [{
      name: 'value'
      type: '*'
      desc: '希望判定的值'
   }]

   return:
      name: 'result'
      type: 'boolean'