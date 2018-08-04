module.exports =


   name: 'Tester@format'


   desc: """
      ```js
      sai.test('sai@gmail.com').format('email')  // pass
      sai.test('sai#gmail.com').format('email')  // fail
      ```
   """


   signs: [{
      name: '@format( format, [error] )'
      desc: '是否为指定格式 ？'
      more: """
         若值是必需的，请加上 [required()](/Tester@required)

         默认预设了一些格式：
         * `email` - [sai.isEmail](isEmail)
         * `url`   - [sai.isUrl](isUrl)
         * `space` - [sai.isSpace](isSpace)

         若想自定义格式，请使用 [sai.Schema](/Schema)
      """

      params: [{
         name: 'format'
         type: 'string'
      },{
         name: 'error'
         type: '*'
         optional: true
      }]

      return:
         name: 'tester'
         type: 'sai.Tester'
         desc: 'this - 支持方法链'

      errors: [
         require('../../errors').INVALID_PARAMS
         require('../../errors').INVALID_DATA
      ]
   }]