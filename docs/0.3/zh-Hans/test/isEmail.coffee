module.exports =


   name: 'isEmail'


   signs: [{
      name: 'isEmail(string)'
      desc: '是否为 Email 地址的格式 ？'

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
      sai.isEmail('sai@gmail.com')  // => true
      sai.isEmail('sai#gmail.com')  // => false
      ```
   """