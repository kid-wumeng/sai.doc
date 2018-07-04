module.exports =

   name: 'isError(...value)'

   desc: """
      是否为 Error 对象 ？
   """

   text: """
      ```js
      function f1(){ throw new Error("an error !") }
      function f2(){ throw           "an error !"  }

      try { f1() } catch(error) { sai.isError(error) }  // => true
      try { f2() } catch(error) { sai.isError(error) }  // => false

      // 支持多值检测
      sai.isError(error1,  error2,  error3)  // => true
      sai.isError(error1, 'error2', error3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'