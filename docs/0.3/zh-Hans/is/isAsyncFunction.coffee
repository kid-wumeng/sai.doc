module.exports =


   name: 'isAsyncFunction'


   desc: """
      ```js
      sai.isAsyncFunction(async()=>{})  // => true
      ```
   """


   signs: [{
      name: 'isAsyncFunction( value )'
      desc: '是否为异步函数 ？'

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
      sai.isFunction(()=>{})       // => false
      sai.isFunction(async()=>{})  // => true

      sai.isFunction(class{})      // => false
      sai.isFunction(String)       // => false
      sai.isFunction(Object)       // => false
      sai.isFunction(Function)     // => false
      ```
   """