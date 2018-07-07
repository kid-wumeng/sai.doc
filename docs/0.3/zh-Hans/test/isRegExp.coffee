module.exports =


   name: 'isRegExp'


   desc: """
      ```js
      sai.isRegExp(/^sai/g)
      ```
   """


   signs: [{
      name: 'isRegExp( value )'
      desc: '是否为 RegExp 对象 ？'

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
      sai.isRegExp(/^sai$/ig)                  // => true
      sai.isRegExp(new RegExp('^sai$', 'ig'))  // => true
      ```
   """