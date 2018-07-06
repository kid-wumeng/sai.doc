module.exports =


   name: 'isFunction'


   signs: [{
      name: 'isFunction(value)'
      desc: '是否为函数 ？*包括异步函数*'
      params: [{
         name: 'value'
         type: '*'
         desc: '希望判定的值'
      }]
      return:
         name: 'result'
         type: 'boolean'
   }]


   detail: """
      # 基本用法

      ```js
      sai.isFunction(()=>{})              // => true
      sai.isFunction(function(){})        // => true
      sai.isFunction(async ()=>{})        // => true
      sai.isFunction(async function(){})  // => true

      sai.isFunction(class{})             // => true
      sai.isFunction(String)              // => true
      sai.isFunction(Object)              // => true
      sai.isFunction(Function)            // => true
      ```
   """