module.exports =


   name: 'Tester@max'


   desc: """
      ```js
      sai.test(2).max(1)     // fail，数字应该 ≤ 1
      sai.test(2).max(2)     // pass
      sai.test(2).max(3)     // pass

      sai.test('ab').max(1)  // fail，长度应该 ≤ 1
      sai.test('ab').max(2)  // pass
      sai.test('ab').max(3)  // pass
      ```
   """


   signs: [{
      name: '@max( max, [error] )'
      desc: '*数据*或者*数据长度*是否不超过 max ？'
      more: """
         使用 [sai.isMax](/isMax) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'max'
         type: 'number'
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