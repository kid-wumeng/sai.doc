module.exports =


   name: 'Tester@check'


   desc: """
      ```js
      isName = (data) => /^\w+$/.test(data)

      sai.test('abc').check(isName)  // pass
      sai.test('---').check(isName)  // fail
      ```
   """


   signs: [{
      name: '@check( check, [error] )'
      desc: '灵活的自定义校验'
      more: """
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'check'
         type: 'function'
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