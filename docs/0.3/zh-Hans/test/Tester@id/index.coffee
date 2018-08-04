module.exports =


   name: 'Tester@id'


   desc: """
      ```js
      sai.test(1).id()    // pass
      sai.test(1.2).id()  // fail
      sai.test(-1).id()   // fail
      sai.test(0).id()    // fail
      sai.test('1').id()  // fail
      ```
   """


   signs: [{
      name: '@id( [error] )'
      desc: '是否为有效、有穷的*非零自然数* ？'
      more: """
         使用 [sai.isID](/isID) 进行判定
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
         desc: 'this - 支持方法链'

      errors: [
         require('../../errors').INVALID_DATA
      ]
   }]