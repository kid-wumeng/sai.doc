module.exports =


   name: 'isFunction'


   desc: """
      ```js
      sai.isFunction(()=>{})  // => true
      ```
   """


   signs: [{
      name: 'isFunction( value )'
      desc: '是否为函数 ？*包括异步函数*'

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
      sai.isFunction(()=>{})       // => true
      sai.isFunction(async()=>{})  // => true

      sai.isFunction(class{})      // => true
      sai.isFunction(String)       // => true
      sai.isFunction(Object)       // => true
      sai.isFunction(Function)     // => true
      ```
   """