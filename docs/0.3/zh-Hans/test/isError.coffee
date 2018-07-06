module.exports =


   name: 'isError'


   signs: [{
      name: 'isError(value)'
      desc: '是否为 Error 对象 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]
      
      return:
         name: 'result'
         type: 'boolean'
   }]


   detail: """
      # 基本用法

      ```js
      function f1(){ throw new Error("an error !") }
      function f2(){ throw           "an error !"  }

      try { f1() } catch(error) { sai.isError(error) }  // => true
      try { f2() } catch(error) { sai.isError(error) }  // => false
      ```
   """