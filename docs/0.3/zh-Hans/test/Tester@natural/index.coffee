module.exports =


   name: 'Tester@natural'


   desc: """
      ```js
      sai.test(1).natural()    // pass
      sai.test(1.2).natural()  // fail
      sai.test(-1).natural()   // fail
      sai.test('1').natural()  // fail
      ```
   """


   signs: [{
      name: '@natural( [error] )'
      desc: '是否为有效、有穷的*自然数* ？*默认 0 是自然数*'
      more: """
         使用 [sai.isNatural](/isNatural) 进行判定
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