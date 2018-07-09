module.exports =


   name: 'isMatch'


   desc: """
      ```js
      sai.isMatch('kid', /^kid$/)  // => true
      ```
   """


   signs: [{
      name: 'isMatch( string, regExp )'
      desc: '是否匹配正则表达式 ？'

      params: [{
         name: 'string'
         type: 'string'
      },{
         name: 'regExp'
         type: 'RegExp'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]