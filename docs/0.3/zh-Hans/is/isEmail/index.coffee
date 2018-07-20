module.exports =


   name: 'isEmail'


   desc: """
      ```js
      sai.isEmail('sai@gmail.com')
      // => true
      ```
   """


   signs: [{
      name: 'isEmail( value )'
      desc: '是否为 Email 地址的格式 ？'

      params: [{
         name: 'value'
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
      sai.isEmail('sai@gmail.com')  // => true
      sai.isEmail('sai#gmail.com')  // => false
      ```
   """