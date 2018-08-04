module.exports =


   name: 'Tester@string'


   desc: """
      ```js
      sai.test('abc').string()  // pass
      ```
   """


   signs: [{
      name: '@string( [error] )'
      desc: '是否为字符串 ？'
      more: """
         使用 [sai.isString](/isString) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'error'
         type: '*'
         optional: true
      }]

      return:
         name: 'tester'
         type: 'sai.Tester'
         desc: '支持方法链'

      errors: [
         require('../../errors').INVALID_DATA
      ]
   }]