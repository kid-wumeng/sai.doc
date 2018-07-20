module.exports =


   name: 'isURL'


   desc: """
      ```js
      sai.isURL('https://google.com')
      // => true
      ```
   """


   signs: [{
      name: 'isURL( string )'
      desc: '是否为 URL 的格式 ？'

      params: [{
         name: 'string'
         type: '*'
         desc: '期望判定的字符串'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isURL('https://google.com')  // => true
      sai.isURL('abc')                 // => false
      ```
   """