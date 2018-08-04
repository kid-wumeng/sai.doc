module.exports =


   name: 'Tester@is'


   desc: """
      ```js
      sai.test('1').is(Number)  // fail
      sai.test('1').is(String)  // pass
      ```
   """


   signs: [{
      name: '@is( type, [error] )'
      desc: '是否为指定类型 ？'
      more: """
         使用 [sai.is](/is) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'type'
         type: '*'
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
         require('../../errors').INVALID_DATA
      ]
   }]