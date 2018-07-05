module.exports =

   name: 'isEmail(strings...)'

   desc: """
      是否为 Email 地址的格式 ？
   """

   detail: """
      ```js
      sai.isEmail('sai@gmail.com')  // => true
      sai.isEmail('sai#gmail.com')  // => false

      // 支持多值检测
      sai.isEmail('sai@gmail.com', 'kid@gmail.com')  // => true
      sai.isEmail('sai@gmail.com', 'kid#gmail.com')  // => false
      ```
   """

   params: [{
      name: 'strings...'
      type: 'string'
      desc: '希望检测的字符串'
   }]

   return:
      name: 'isEmail'
      type: 'boolean'

   throws: [{
      name: 'INVALID_TYPE'
      desc: '参数应该是字符串'
   }]