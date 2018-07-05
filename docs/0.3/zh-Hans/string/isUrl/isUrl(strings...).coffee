module.exports =

   name: 'isUrl(strings...)'

   desc: """
      是否为 Url 的格式 ？
   """

   detail: """
      ```js
      sai.isUrl('c')   // => true
      sai.isUrl('ch')  // => false
      sai.isUrl('嗯')  // => false

      // 支持多值检测
      sai.isUrl('sai@gmail.com', 'kid@gmail.com')  // => true
      sai.isUrl('sai@gmail.com', 'kid#gmail.com')  // => false
      ```
   """

   params: [{
      name: 'strings...'
      type: 'string'
      desc: '希望检测的字符串'
   }]

   return:
      name: 'isUrl'
      type: 'boolean'

   throws: [{
      name: 'INVALID_TYPE'
      desc: '参数应该是字符串'
   }]