module.exports =


   name: 'match'


   desc: """
      ```js
      sai.match('abc', /^ab/)  // => true
      sai.match('abc', '^ab')  // => true
      ```
   """


   signs: [{
      name: 'match( string, pattern, [flags] )'
      desc: '是否匹配正则表达式 ？'

      params: [{
         name: 'string'
         type: 'string'
      },{
         name: 'pattern'
         type: 'string, RegExp'
      },{
         name: 'flags'
         type: 'string'
         desc: """
            仅当 pattern 为字符串时有用，可选 'gimuy'，参考 [JavaScript RegExp](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp#Parameters)
         """
         default: ''
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      pattern 支持正则表达式与字符串两种模式，若是字符串，将被转为 RegExp 对象：

      ```js
      sai.match('abc', /b/)       // => true
      sai.match('abc', 'b')       // => true

      sai.match('abc', /B/i)      // => true
      sai.match('abc', 'B', 'i')  // => true
      ```

      # 斜杠问题

      注意，正则表达式的特殊字符，若要转义需要使用斜杠：

      ```js
      sai.match('[a]', /^\\[a\\]$/)  // => true
      ```

      然而字符串里，斜杠本身也是特殊字符，所以需要双重斜杠来转义：

      ```js
      sai.match('[a]', '^\\[a\\]$')    // => false
      sai.match('[a]', '^\\\\[a\\\\]$')  // => true
      ```

      # 与插值模板配合

      本方法支持 pattern 字符串，正是为了方便与 [ES6 插值模板](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals) 配合使用，一个例子：

      ```js
      protocol = 'http'

      sai.match('http://google.com', `^${protocol}://google.com$`)  // => true
      sai.match('file://google.com', `^${protocol}://google.com$`)  // => false
      ```
   """