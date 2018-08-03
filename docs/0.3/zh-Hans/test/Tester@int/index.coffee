module.exports =


   name: 'Tester@int'


   desc: """
      ```js
      sai.test(1).int()    // pass
      sai.test(1.2).int()  // fail
      sai.test('1').int()  // fail
      ```
   """


   signs: [{
      name: '@int( [error] )'
      desc: '是否为有效、有穷的*整数* ？'
      more: """
         使用 [sai.isInt](/isInt) 进行判定
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