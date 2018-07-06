module.exports =


   name: 'isURL'


   signs: [{
      name: 'isURL(string)'
      desc: '是否为 URL 的格式 ？'

      params: [{
         name: 'string'
         type: 'string'
         desc: '期望判定的字符串'
      }]

      return:
         name: 'result'
         type: 'boolean'

      throws: [{
         name: 'INVALID_TYPE'
         desc: '参数必须是字符串'
      }]
   }]


   detail: """
      # 基本用法
      
      ```js
      sai.isURL('http://google.com')  // => true
      sai.isURL('sai@gmail.com')      // => false
      ```
   """