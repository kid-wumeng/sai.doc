module.exports =


   name: 'isSpace'


   desc: """
      ```js
      sai.isSpace('  ')  // => true
      sai.isSpace('\\n')  // => true
      ```
   """


   signs: [{
      name: 'isSpace( value )'
      desc: '是否为连续的空白符 ？'

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
      sai.isSpace('')     // => true
      sai.isSpace(' ')    // => true，一个半角空格
      sai.isSpace('  ')   // => true，两个半角空格
      sai.isSpace('　')   // => true，一个全角空格
      sai.isSpace('\\t')  // => true
      sai.isSpace('\\r')  // => true
      sai.isSpace('\\n')  // => true

      sai.isSpace('abc')  // => false
      ```
   """