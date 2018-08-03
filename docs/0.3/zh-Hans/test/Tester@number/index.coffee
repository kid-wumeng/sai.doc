module.exports =


   name: 'Tester@number'


   desc: """
      ```js
      sai.test(1).number()    // pass
      sai.test('1').number()  // fail
      ```
   """


   signs: [{
      name: '@number( [error] )'
      desc: '是否为有效、有穷的数 ？'
      more: """
         使用 [sai.isNumber](/isNumber) 进行判定
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