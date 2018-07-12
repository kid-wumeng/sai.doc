module.exports =


   name: 'isRegExp'


   desc: """
      ```js
      sai.isRegExp(/^abc/ig)  // => true
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
      sai.isRegExp(/^abc$/ig)                  // => true
      sai.isRegExp(new RegExp('^abc$', 'ig'))  // => true
      ```
   """