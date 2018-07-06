module.exports =


   name: 'isRegExp'


   signs: [{
      name: 'isRegExp(value)'
      desc: '是否为 RegExp 对象 ？'
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
      sai.isRegExp(/^sai$/ig)                  // => true
      sai.isRegExp(new RegExp('^sai$', 'ig'))  // => true
      ```
   """